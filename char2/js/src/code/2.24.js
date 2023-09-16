const x = [[1, 2], [3, 4]];
console.log(x.length);

function car(aList) {
  return aList[0];
}
function cdr(aList) {
  return aList.length === 0 ? aList[0] : aList.slice(1);
}
function isPair(aList) {
  return Array.isArray(aList);
}

// count leaves
const countLeaves = function(aList) {
  if (!aList) {
    return 0;
  }

  return isPair(aList) ? countLeaves(car(aList)) + countLeaves(cdr(aList)) : 1;
}
console.log('countLeaves(aList): ' + countLeaves(x));





