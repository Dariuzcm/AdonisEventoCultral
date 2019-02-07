'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UniversidadSchema extends Schema {
  up () {
    this.create('universidads', (table) => {
      table.increments()
      table.string('name',30)
      table.string('img_route',50)
      table.timestamps()
    })
  }

  down () {
    this.drop('universidads')
  }
}

module.exports = UniversidadSchema
