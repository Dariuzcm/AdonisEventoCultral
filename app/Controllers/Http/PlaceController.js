'use strict'

const Hospital = use('App/Models/Hospital')
const Hotel = use('App/Models/Hotel')

class PlaceController {
    async showLugares({ view }){

        const hospitals = await Hospital.all()
        const hotels = await Hotel.all()

        return view.render('lugares', {
            title: 'Hotels list',
            hotels: hotels.toJSON(),
            title2: 'Hospitals list',
            hospitals: hospitals.toJSON()
        })
        // {
        //     title: 'Hospitals list',
        //     hospitals: hospitals.toJSON()
        // },
    }

    async showHotel({ params, view }){
        const hotel = await Hotel.find(params.id)

        return view.render('hotels.details', {
            hotel:hotel
        })
    }
}

module.exports = PlaceController
