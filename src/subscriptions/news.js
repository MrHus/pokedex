const { PubSub } = require('graphql-subscriptions');

const pubsub = new PubSub();

// Show a sighting of a legendary pokemon in a region every second.
setInterval(() => {
  const pokemon = randomLegendary();
  const region = randomRegion();

  const news = `${pokemon} sighted in: ${region}!`;

  pubsub.publish('news', { news });
}, 5000);

const news = {
  subscribe: () => pubsub.asyncIterator('news')
}

module.exports = { news };

// Helpers

const regions = [
  "Kanto",
  "Johto",
  "Hoenn",
  "Sinnoh",
  "Unova",
  "Kalos",
  "Alola"
];

function randomRegion() {
  const index = Math.floor(Math.random() * regions.length - 1) + 1; 

  return regions[index];
}

const legendary = [
  'Mewto',
  'Articuno',
  'Zapdos',
  'Moltres'
];

function randomLegendary() {
  const index = Math.floor(Math.random() * legendary.length - 1) + 1; 

  return legendary[index];
}