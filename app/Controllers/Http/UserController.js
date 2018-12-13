"use strict";

const User = use("App/Models/User");
const Hash = use("Hash");

class UserController {

    async showPage({ view }) {

        const users = await User.all()
        return view.render('login', {
            title: 'Inicia Sesión',
            users: users.toJSON()
        })
    }

    async registrar({ request, auth, response }) {
        const userData = request.only(["name", "username", "email", "password"
        ]);

        try {
            const user = await User.create(userData);

            const token = await auth.generate(user);

            return response.status(201).json({
                mensaje: "El registro fue un éxito",
                data: token
            });

        } catch (error) {
            return response.status(400).json({
                error: true,
                mensaje:
                    "Hubo un problema al crear tu usuario, por favor inténtalo más tarde"
            });
        }
    }

    async login({ request, auth, response }) {
        try {
            const token = await auth.attempt(
                request.input("email"),
                request.input("password")
            );

            return response.status(200).json({
                mensaje: "Bienvenido",
                data: token
            }); ﬁ

        } catch (error) {
            return response.status(401).json({
                error: true,
                mensaje: "Email o contraseña incorrectos"
            });
        }
    }

    async misDatos({ auth, response }) {
        const user = await User.query()
            .where("id", auth.current.user.id)
            .firstOrFail();

        return response.status(200).json({
            error: 0,
            data: user
        });
    }
    async actualizarPerfil({ request, auth, response }) {
        try {
            const user = auth.current.user;

            user.name = request.input("name");
            user.username = request.input("username");
            user.email = request.input("email");

            await user.save();

            return response.status(200).json({
                mensaje: "Perfil actualizado",
                data: user
            });

        } catch (error) {
            return response.status(400).json({
                error: true,
                mensaje:
                    "Hubo un problema al actualizar tu usuario, por favor inténtalo más tarde"
            });
        }
    }
    async cambiarContrasena({ request, auth, response }) {
        const user = auth.current.user;

        const verifyPassword = await Hash.verify(
            request.input("password"),
            user.password
        );

        if (!verifyPassword) {
            return response.status(400).json({
                error: true,
                message:
                    "Tu contraseña no puede ser verificada. Por favor inténtalo otra vez"
            });
        }

        user.password = await Hash.make(request.input("newPassword"));
        await user.save();

        return response.status(200).json({
            message: "Contraseña actualizada"
        });
    }
    async miPerfil({ request, params, response }) {
        try {
            const user = await User.query()
                .where('username', params.username)
                .firstOrFail()

            return response.status(200).json({
                mensaje: "Perfil encontrado",
                data: user
            });

        } catch (error) {
            return response.status(401).json({
                error: true,
                mensaje: "Usuario no encontrado"
            });
        }
    }

}

module.exports = UserController;
