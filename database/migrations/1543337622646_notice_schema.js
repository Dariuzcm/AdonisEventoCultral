'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class NoticeSchema extends Schema {
  up () {
    this.createIfNotExists('notices', (table) => {
      table.increments()
      table.string('name')
      table.text('content','longtext')
      table.string('image')
      table.string('autor')
      table.timestamps()
    })
  }

  down () {
    this.drop('notices')
  }
}

module.exports = NoticeSchema
