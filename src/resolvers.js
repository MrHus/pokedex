const { db } = require('./db');

const { Query } = require('./resolvers/query');
const { Pokemon } = require('./resolvers/pokemon');
const { Type } = require('./resolvers/type');

const { news } = require('./subscriptions/news');

const resolvers = {
  Query,
  Pokemon,
  Type,
  Subscription: {
    news
  }
};

module.exports = { resolvers };