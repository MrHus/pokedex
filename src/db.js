const fs = require('fs');
const { Pool } = require('pg')

const connectionString = 'postgres://postgres:password@db:5432/pokedex'

const db = new Pool({
  connectionString
});

function setupDatabase() {
  db.query(`SELECT 1 AS result FROM pg_database WHERE datname='pokedex'`)
  .then(res => {
    if(res.rowCount === 0) {
      insertPokemon();
    }
    
  }).catch(e => console.error(e.stack));
}

function insertPokemon() {
  console.log('filling database');
  const sql = fs.readFileSync(__dirname + '/data/database.sql').toString();

  db.query(sql)
   .then(res => console.log('finished filling database'))
   .catch(e => console.error(e.stack));
}

module.exports = { db, setupDatabase };