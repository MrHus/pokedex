const { db } = require('../db');

const { getOffset, getLimit, createPage } = require('../utils/page');

const Query = {
  pokemon(obj, args) {
    const query = `SELECT * FROM pokemon WHERE id = $1`

    return db.query(query, [args.id]).then(res => res.rows[0]);
  },
  allPokemon(obj, args) {
    const { page, size, query } = args;

    const countQuery = `SELECT COUNT(id) FROM pokemon`;
    const count = db.query(countQuery).then(res => res.rows[0].count);

    const limit = getLimit(size);
    const offset = getOffset(page, size);
    const pokemonQuery = query
      ? `SELECT * FROM pokemon WHERE name ILIKE $1 LIMIT $2 OFFSET $3`
      : `SELECT * FROM pokemon LIMIT $1 OFFSET $2`;
    
    const params = query ? [`%${query}%`, limit, offset] : [limit, offset];

    const pokemon = db.query(pokemonQuery, params).then(res => res.rows);

    return Promise.all([count, pokemon]).then(([totalElements, content]) => {
      return createPage({ 
        totalElements, 
        content,
        page,
        size
      });
    });
  },
  type(obj, args) {
    const query = `SELECT * FROM "type" WHERE id = $1`

    return db.query(query, [args.id]).then(res => res.rows[0]);
  },
  allTypes(obj, args) {
    const { page, size } = args;

    const countQuery = `SELECT COUNT(id) FROM "type"`;
    const count = db.query(countQuery).then(res => res.rows[0].count);

    const limit = getLimit(size);
    const offset = getOffset(page, size);

    const typeQuery = `SELECT * FROM "type" LIMIT $1 OFFSET $2`;
    const types = db.query(typeQuery, [limit, offset]).then(res => res.rows);

    return Promise.all([count, types]).then(([totalElements, content]) => {
      return createPage({ 
        totalElements, 
        content,
        page,
        size
      });
    });
  }
};

module.exports = { Query };