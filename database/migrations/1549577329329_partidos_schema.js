'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class PartidosSchema extends Schema {
  up () {
    this.create('partidos', (table) => {
      table.increments()
      table.dateTime('fecha')
      table.time('hora')
      table.string('lugar',30)
      table.timestamps()
    })
  }

  down () {
    this.drop('partidos')
  }
}

module.exports = PartidosSchema
