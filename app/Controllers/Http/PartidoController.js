'use strict'
const Partidos = use('App/Models/Partido')
const Disc = use('App/Models/Disciplina')

class PartidoController {
    async PartGen({ view }) {
        const disc = await Disc.query().where('clase', 'deportivo').fetch()
        return view.render('partidos.principal', {
            disc: disc.toJSON()
        })
    }
    async begin({ view, request }) {
        const n_equip = request.input('nEquipo')
        const disc = request.input('disciplina')

        if (n_equip == 8) {
            return view.render('partidos.size8')
        } else
            if (n_equip == 7) {
                return view.render('partidos.size7')

            } else
                if (n_equip == 6) {
                    return view.render('partidos.size6')
                } else
                    if (n_equip == 5) {
                        return view.render('partidos.size5')
                    } else
                        if (n_equip == 4) {
                            return view.render('partidos.size4')
                        } else
                            if (n_equip == 3) {
                                return view.render('partidos.size3')
                            }
    }
}

module.exports = PartidoController
