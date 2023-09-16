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

const reverse_iter = function (aList, ret) {
    if (aList.length === 0) {
        return ret;
    }

    return reverse_iter(cdr(aList), [car(aList)].concat(ret));
};

const reverse = function (aList) {
    return isPair(aList) ? reverse_iter(aList, []) : aList;
};

const deep_reverse_iter = function (aList, ret) {
    if (aList.length === 0) {
        return ret;
    }

    return deep_reverse_iter(cdr(aList), [reverse(car(aList))].concat(ret));

};

const deep_reverse = function (aList) {
    return deep_reverse_iter(aList, []);
};

console.log('x: ' + JSON.stringify(x));
console.log('reverse(x): ' + JSON.stringify(reverse(x)));
console.log('deep_reverse(x): ' + JSON.stringify(deep_reverse(x)));
