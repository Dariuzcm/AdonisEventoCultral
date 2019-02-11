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
//----------------Disciples routes-------------------
Route.group(()=>{
    Route.get('/addDisciple','DisciplinaController.getForm')
    Route.post('/addDisciple','DisciplinaController.addDisciple')
    Route.get('/details/:id','DisciplinaController.getDetails')
    Route.get('/editar/:id','DisciplinaController.getEdit')
    Route.put('/editar/:id','DisciplinaController.edit')
    Route.delete('/delete/:id','DisciplinaController.destroy')
    Route.get('/showAll','DisciplinaController.getList')
}).prefix('disciplina')
//----------------Admin Routes ----------------------
Route.post("/registrar", "UserController.registrar");
Route.post("/login", "UserController.login");
Route.get("/admin", "UserController.showPage");

Route.group(() => {
    //Route.get("/cp", "UserController.showAdminPage");
}).prefix("admin")
//....................Partidos.....................
Route.group(()=>{
    Route.get("/GenerarPartido","PartidoController.PartGen")
    Route.post("/begin","PartidoController.begin")
    Route.post("/rol-reg","PartidoController.addRol")
}).prefix("partido")
//....................Universidad.....................
Route.group(()=>{
    Route.get('add','UniversidadController.getForm')
    Route.post('add','UniversidadController.addUniv')
    Route.get('editar-lista','UniversidadController.getList')
    Route.put('editar/:id','UniversidadController.update')
    Route.delete('delete/:id',"UniversidadController.getEdit")
}).prefix("univ")

Route.get('/deportes','IndexController.goToSports')
