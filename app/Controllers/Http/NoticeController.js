'use strict'
const Notices= use('App/Models/Notice')
const Database = use('Database')
const Helpers= use('Helpers')


class NoticeController {
    async addNotice(request,session,response){
        const notice_ref= Database.select('id').from('notices').orderBy('id', 'desc')
        const profilePic = request.file('profile_pic', {
            types: ['image']
          })
          
          const name_img=(notice_ref+1)+`${new Date().getTime()}.${file.subtype}`
          await profilePic.move(Helpers.tmpPath('notices'), {
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

}

module.exports = NoticeController
