const x = [[1, 2], 3, [4, 5], [8, 9, 10], [6, 7], 10];

function car(aList) {
    return Array.isArray(aList) ? aList[0] : null
}
function cdr(aList) {
  return aList.length === 0 ? aList[0] : aList.slice(1);
}
function isPair(aList) {
  return Array.isArray(aList);
}

const reverse_iter = function(aList, ret) {
    console.log('ret: ' + JSON.stringify(ret));
    console.log('aList: ' + JSON.stringify(aList));
    if (aList.length === 0) {
        return ret;
    }

    return reverse_iter(cdr(aList), [car(aList)].concat(ret));
};

const reverse = function(aList) {
    return reverse_iter(aList, []);
};

console.log('x: ' + JSON.stringify(x));
console.log('reverse(x): ' + JSON.stringify(reverse(x)));
