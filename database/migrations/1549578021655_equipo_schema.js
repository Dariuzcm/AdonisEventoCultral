'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EquipoSchema extends Schema {
  up () {
    this.create('equipos', (table) => {
      table.increments()
      table.integer('id_disc',11).unsigned()
      table.foreign('id_disc').references('disciplinas.id')
      table.integer('id_part').unsigned()
      table.foreign('id_part').references('partidos.id')
      table.integer('score')
      table.timestamps()
    })
  }

  down () {
    this.drop('equipos')
  }
}

module.exports = EquipoSchema
