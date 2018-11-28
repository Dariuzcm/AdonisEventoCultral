'use strict'
const Notices= use('App/Models/Notice')
const Database = use('Database')
const Helpers= use('Helpers')


class NoticeController {
    async addNotice({request,session,response}){

        const profilePic = request.file('profile_pic', {
            types: ['image'],
          })
          
          const name_img=`${new Date().getTime()}.${profilePic.subtype}`
          await profilePic.move(Helpers.publicPath('notices'), {
            name: name_img,
            overwrite: true
          })
        
          if (!profilePic.moved()) {
            return profilePic.error()
          }
        const notice= Notices.create({
            name: request.input('name'),
            content: request.input('content'),
            image: 'notices/'+name_img
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
                    message: '<striog>Error!:</strong>Noticia no registrada en la base de datos .'
                }
            })
        }
        return response.redirect('/journal')

    }

    async getForm({view,session}){
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

    async getJournal({view}){
        const notice = await Notices.all()
        
        return view.render('notice.journal',{
            notices: notice.toJSON()
        })
    }

}

module.exports = NoticeController
