'use strict'
const Notices = use('App/Models/Notice')
const Helpers = use('Helpers')


class NoticeController {
    async getDetails({ view, params }) {
        const notice = await Notices.query().where('id', params.id).fetch()
        return view.render('notice.details', {
            notice: notice.toJSON()
        })

    }
    async addNotice({ request, session, response }) {

        const profilePic = request.file('profile_pic', {
            types: ['image'],
        })

        const name_img = `${new Date().getTime()}.${profilePic.subtype}`
        await profilePic.move(Helpers.publicPath('notices'), {
            name: name_img,
            overwrite: true
        })

        if (!profilePic.moved()) {
            return profilePic.error()
        }
        const notice = await Notices.create({
            name: request.input('name'),
            content: request.input('content'),
            autor: request.input('autor'),
            image: 'notices/' + name_img
        })
        try {
            notice.save()
            session.flash({
                notification: {
                    type: 'success',
                    message: '<strong>Sucess!:</strong> Noticia Registrada .'
                }
            })
        } catch (error) {
            session.flash({
                notification: {
                    type: 'danger',
                    message: '<striog>Error!:</strong>Noticia no registrada en la base de datos .' + error
                }
            })

            return response.redirect('/addNotice')
        }
        return response.redirect('/journal')
    }

    async getForm({ view, session }) {
        try {
            //auth.checkout()
            return view.render('notice.noticeForm')
        } catch (error) {
            session.flash({
                notification: {
                    type: 'danger',
                    message: "<strong>Advertencia</strong>: No has iniciado sesion.",
                }
            })
            return view.render('auth.login')
        }

    }

    async getJournal({ view }) {
        const notice = await Notices.query()
            .table('notices')
            .orderBy('id', 'desc')
            .fetch()

        return view.render('notice.journal', {
            notices: notice.toJSON()
        })
    }
    async edit({ request, response, auth, params }) {
        try {
            const notice = await Notices.find(params.id)
            const flag = request.input('flag_modif')
            console.log(flag=='on')
            if (flag=='on') {
                const profilePic = request.file('profile_pic', {
                    types: ['image'],
                })
                console.log(notice.image)
                const name_img = notice.image
                await profilePic.move(Helpers.publicPath(''), {
                    name: name_img,
                    overwrite: true
                })

                if (!profilePic.moved()) {
                    return profilePic.error()
                }

            }

            notice.name= request.input('name')
            notice.content=request.input('content')
            notice.autor=request.input('autor')

            notice.save()

        } catch (err) {
            console.log(err)
            return response.redirect('back')
        }
            return response.redirect('/notice/editar/'+params.id)
    }
    async getEdit({ params, view, auth, response, session }) {
        try {
            //auth.check()
            const notice = await Notices.query().where('id', params.id).fetch()
            return view.render('notice.edit', { notice: notice.toJSON() })

        } catch (err) {
            console.log(err)
            return response.redirect('/')
        }
    }
}

module.exports = NoticeController
