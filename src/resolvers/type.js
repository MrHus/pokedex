const { db } = require('../db');

const { getOffset, getLimit, createPage } = require('../utils/page');

const Type = {
  pokemon(type, args) {
    const { page, size } = args;

    const countQuery = `
      SELECT count(t.id) FROM "type" AS t
      JOIN pokemon_type AS pt ON (pt.type_id = t.id)
      WHERE t.id = $1
    `;
    const count = db.query(countQuery, [type.id]).then(res => res.rows[0].count);

    const limit = getLimit(size);
    const offset = getOffset(page, size);

    const pokemonQuery = `
      SELECT p.* FROM pokemon AS p
      JOIN pokemon_type AS pt ON (pt.pokemon_id = p.id)
      WHERE pt.type_id = $1
      LIMIT $2 OFFSET $3
    `;
    const pokemon = db.query(pokemonQuery, [type.id, limit, offset]).then(res => res.rows);

    return Promise.all([count, pokemon]).then(([totalElements, content]) => {
      return createPage({ 
        totalElements, 
        content,
        page,
        size
      });
    });
  },
}

module.exports = { Type };