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

Route.get('/','IndexController.getIndex')

//---------------notice routes-----------------
Route.group(()=>{
    Route.get('/addNotice','NoticeController.getForm')
    Route.get('/journal','NoticeController.getJournal')
    Route.post('/addNotice','NoticeController.addNotice')
    Route.get('/details/:id','NoticeController.getDetails')
    Route.get('/editar/:id','NoticeController.getEdit')
    Route.put('/editar/:id','NoticeController.edit')
    Route.get('/editar-lista','NoticeController.eList')
    Route.delete('/delete/:id','NoticeController.destroy')
    Route.get('/showAll','NoticeController.getList')
}).prefix('notice')

Route.get('/places','PlaceController.showLugares')
Route.get('/places/hotel/:id', 'PlaceController.showHotel')

//----------------Admin Routes ----------------------
Route.post("/registrar", "UserController.registrar");
Route.post("/login", "UserController.login");
Route.get("/admin", "UserController.showPage");

Route.group(() => {
    //Route.get("/cp", "UserController.showAdminPage");
}).prefix("admin").middleware(["auth:jwt"]);

Route.get('/deportes','IndexController.goToSports')
