'use strict'
const Notices = use('App/Models/Notice')
const Hospital = use('App/Models/Hospital')
const Hotel = use('App/Models/Hotel')
const Restaurant = use('App/Models/Restaurant')

class IndexController {
    async getIndex({view}){
        const notice = await Notices.query()
        .table('notices')
        .orderBy('id', 'desc')
        .fetch()
        const hospitals = await Hospital.all()
        const hotels = await Hotel.all()
        const restaurant= await Restaurant.all()
        return view.render('index', {
            notices: notice.toJSON(),
            title: 'Hotels list',
            hotels: hotels.toJSON(),
            title2: 'Hospitals list',
            hospitals: hospitals.toJSON(),
            restaurants: restaurant.toJSON()
        })
    }

    async goToSports({view}){
        return view.render('deportes')
    }
}

module.exports = IndexController
