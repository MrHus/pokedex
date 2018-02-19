const { db } = require('../db');

const { getOffset, getLimit, createPage } = require('../utils/page');

const Pokemon = {
  evolutions(pokemon) {
    const query = `
      SELECT p.* FROM pokemon AS p
      JOIN evolution as e ON e.id = p.evolution_id
      WHERE e.tier = $1
    `;

    return db.query(query, [pokemon.id]).then((res) => res.rows);
  },
  stats(pokemon) {
    const query = `SELECT * FROM stat WHERE pokemon_id = $1`;

    return db.query(query, [pokemon.id]).then((res) => res.rows);
  },
  sprites(pokemon) {
    const query = `SELECT * FROM sprite WHERE pokemon_id = $1`;

    return db.query(query, [pokemon.id]).then((res) => res.rows[0]);
  },
  types(pokemon) {
    const query = `
      SELECT t.* FROM "type" AS t
      JOIN pokemon_type AS pt ON (pt.type_id = t.id)
      WHERE pt.pokemon_id = $1
    `;

    return db.query(query, [pokemon.id]).then((res) => res.rows);
  },
  height(pokemon, args) {
    if (args.unit === "METER") {
      return pokemon.height / 10;
    } else {
      return pokemon.height;
    }
  },
  weight(pokemon, args) {
    if (args.unit === "KILOGRAM") {
      return pokemon.weight / 10;
    } else {
      return pokemon.weight;
    }
  }
};

module.exports = { Pokemon };