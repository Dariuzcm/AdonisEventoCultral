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
    async addRol({request}){
        const size = request.input('size')
        var content

        switch (size) {
            case 8:
                content={
                    grupoA: {   
                        A1: request.input("A1"),
                        A2: request.input("A2"),
                        A3: request.input("A3"),
                        A4: request.input("A4")
                            },
                    grupoB: {    
                        B1: request.input("B1"),
                        B2: request.input("B2"),
                        B3: request.input("B3"),
                        B4: request.input("B4")
                    }
                }
                break;
            case 7:
                content={
                    grupoA: {   
                        A1: request.input("A1"),
                        A2: request.input("A2"),
                        A3: request.input("A3"),
                        A4: request.input("A4")
                            },
                    grupoB: {    
                        B1: request.input("B1"),
                        B2: request.input("B2"),
                        B3: request.input("B3"),
                            }
                    }
                break;
            case 6:
                content={
                    grupoA: {   
                        A1: request.input("A1"),
                        A2: request.input("A2"),
                        A3: request.input("A3"),
                            },
                    grupoB: {    
                        B1: request.input("B1"),
                        B2: request.input("B2"),
                        B3: request.input("B3"),
                            }
                    }
                break;
            case 5:
                break;
            case 4:
                content={
                    grupoA: {   
                        A1: request.input("A1"),
                        A2: request.input("A2"),
                        A3: request.input("A3"),
                        A4: request.input("A4")
                            },
                        }
                break;
            case 3:
                content={
                    grupoA: {   
                        A1: request.input("A1"),
                        A2: request.input("A2"),
                        A3: request.input("A3"),
                            },
                    }
                break;                    
            default:
                break;
        }


    }
}

module.exports = PartidoController
