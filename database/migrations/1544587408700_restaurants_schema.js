'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class RestaurantsSchema extends Schema {
  up () {
    this.create('restaurants', (table) => {
      table.increments()
      table.string('name')
      table.string('description')
      table.string('image')
      table.biginteger('telephone')
      table.string('mapa',1000)
      table.timestamps()
    })
  }

  down () {
    this.drop('restaurants')
  }
}

module.exports = RestaurantsSchema
