'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class HospitalsSchema extends Schema {
  up () {
    this.create('hospitals', (table) => {
      table.increments()
      table.string('name')
      table.string('description')
      table.string('image')
      table.string('address')
      table.string('telephone')
      table.string('website')
      table.string('mapa',1000)
      table.timestamps()
    })
  }

  down () {
    this.drop('hospitals')
  }
}

module.exports = HospitalsSchema
