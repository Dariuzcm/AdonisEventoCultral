'use strict'
const Disc= use('App/Models/Disciplina')
class DisciplinaController {
    async addDisciple({request, session, response}){
        const disc= await Disc.create({
            name: request.input('name'),
            clase: request.input('clase'),
        })
        try {
            await disc.save()
            session.flash({
                notification: {
                    type: 'success',
                    message: '<strong>Sucess!:</strong> Disciplina Registrada .'
                }
            })
        } catch (error) {
            session.flash({
                notification: {
                    type: 'danger',
                    message: '<striog>Error!:</strong>Disciplina no registrada en la base de datos .' + error
                }
            })
            return response.redirect('disciplina/addDisciple')
        }
        return response.redirect('/disciplina/showAll')
    }
    async getForm({view, session}){
        try {
            //auth.checkout()
            return view.render('disciplinas.add_disciplina')
        } catch (error) {
            session.flash({
                notification: {
                    type: 'danger',
                    message: "<strong>Advertencia</strong>: No tienes permiso para estar aqui.",
                }
            })
            return (error)
        }
    }
    async getList({view}){
        const disc = await Disc.all()
        return view.render('disciplinas.list',{
            disc: disc.toJSON()
        })
    }
    async destroy({params, auth, response}){
        //auth.check()
        const disc = await Disc.find(params.id)
        await disc.delete()
        return response.redirect('back')

    }
}

module.exports = DisciplinaController
