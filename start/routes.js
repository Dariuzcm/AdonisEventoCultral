'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.on('/').render('index')
//---------------notice routes-----------------
Route.group(()=>{
    Route.get('/addNotice','NoticeController.getForm')
    Route.get('/journal','NoticeController.getJournal')
    Route.post('/addNotice','NoticeController.addNotice')
    Route.get('/details/:id','NoticeController.getDetails')
    Route.get('/editar/:id','NoticeController.getEdit')
    Route.put('/editar/:id','NoticeController.edit')
}).prefix('notice')