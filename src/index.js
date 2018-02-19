const express = require('express');
const bodyParser = require('body-parser');
const { graphqlExpress, graphiqlExpress } = require('apollo-server-express');
const { makeExecutableSchema } = require('graphql-tools');
const { execute, subscribe } = require('graphql');
const { createServer } = require('http');
const { SubscriptionServer } = require('subscriptions-transport-ws');

const { typeDefs } = require('./types.graphqls');
const { resolvers } = require('./resolvers.js');
 
const { setupDatabase } = require('./db');

setupDatabase();

const executableSchema = makeExecutableSchema({
  typeDefs,
  resolvers,
});

const PORT = 3000;

const app = express();

app.use('/graphql', bodyParser.json(), graphqlExpress({ schema: executableSchema }));
app.get('/graphiql', graphiqlExpress({ 
  endpointURL: '/graphql',
  subscriptionsEndpoint: `ws://localhost:${PORT}/subscriptions`
}));

const server = createServer(app);
server.listen(PORT, () => {
  new SubscriptionServer({
    execute,
    subscribe,
    schema: executableSchema
  }, {
    server,
    path: '/subscriptions',
  });
});