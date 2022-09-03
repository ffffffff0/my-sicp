function bigger(x, y) {
    return x > y ? x : y;
};

function smaller(x, y) {
    return x < y ? x : y;
}

function sum_of_squares(x, y) {
    return x * x + y * y;
}

function find(x, y, z) {
    return sum_of_squares(bigger(x, y), bigger(smaller(x, y), z));
}

console.log(find(1, 2, 3));