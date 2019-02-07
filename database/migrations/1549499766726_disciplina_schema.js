'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class DisciplinaSchema extends Schema {
  up () {
    this.createIfNotExists('disciplinas', (table) => {
      table.increments()
      table.string('name',30).unique()
      table.enu('class',['deportivo','cultural'])
      table.timestamps()
    })
  }

  down () {
    this.drop('disciplinas')
  }
}

module.exports = DisciplinaSchema
