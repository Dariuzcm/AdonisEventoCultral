'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class HotelsSchema extends Schema {
  up () {
    this.create('hotels', (table) => {
      table.increments()
      table.string('name')
      table.decimal('price',7,2)
      table.string('description')
      table.string('image')
      table.string('map',1000)
      table.timestamps()
    })
  }

  down () {
    this.drop('hotels')
  }
}

module.exports = HotelsSchema
