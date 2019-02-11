'use strict'
const Univ=use('App/Models/Universidad')
const Helpers = use('Helpers')

class UniversidadController {

    async getForm({view}){
        return view.render('admin.uni.adduniv')
    }

    async addUniv({request, session,response}){
        console.log(request)
        const profilePic = request.file('profile_pic', {
            types: ['image'],
        })

        const name_img = `${new Date().getTime()}.${profilePic.subtype}`
        await profilePic.move(Helpers.publicPath('univ_profiles'), {
            name: name_img,
            overwrite: true
        })

        if (!profilePic.moved()) {
            return profilePic.error()
        }
        
        const univ = await Univ.create({
            name: request.input('nombre'),
            img_route: 'univ_profiles'+name_img
        })
        try {
            await univ.save()
            session.flash({
                notification: {
                    type: 'success',
                    message: '<strong>Sucess!:</strong> Registro Realizado.'
                }
            })
        } catch (error) {
            session.flash({
                notification: {
                    type: 'danger',
                    message: '<striog>Error!:</strong>Univercidad no registrada en la base de datos .' + error
                }
            })

            return response.redirect('/univ/Añadir')
        }
        return response.redirect('/univ/editar-lista')

    }
    async getList({view}){
        const univ = await Univ.all()

        return view.render('uni.elist',{univ : univ.toJSON()})
    }
        
    async update(request, response) {
        
    }
    
    async getEdit(){

    }
}

module.exports = UniversidadController
