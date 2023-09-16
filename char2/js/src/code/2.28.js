const x = [[1, 2], [3, 4]];

function car(aList) {
  return aList[0];
}
function cdr(aList) {
  return aList.length === 0 ? aList[0] : aList.slice(1);
}

// fringe return leaves
const fringe = function(aList) {
    // recursion
    if (!Array.isArray(aList) || aList.length === 0) {
        return [];
    }

    const first = car(aList);
    return Array.isArray(first) ? fringe(first).concat(fringe(cdr(aList))) :
                                  [first].concat(fringe(cdr(aList)))
};

const fringe_iter = function(aList, ret) {
    if (!Array.isArray(aList) || aList.length === 0) {
        return ret;
    }
};

console.log(fringe(x, 0));

module.exports = fringe;