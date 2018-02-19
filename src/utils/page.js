
function getOffset(page, size) {
  return (page - 1) * size;
}

function getLimit(size) {
  return Math.min(size, 100);
}

function createPage({ totalElements, content, page, size }) {
  const totalPages = parseInt(totalElements / size, 10);

  return {
    content,
    last: totalPages === page || totalPages === 0,
    first: page === 1,
    totalElements,
    totalPages,
    size,
    number: page
  };
}

module.exports = { getOffset, getLimit, createPage };