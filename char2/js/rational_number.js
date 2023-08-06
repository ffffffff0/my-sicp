const gcd = function(a, b) {
    return b === 0 ? a : gcd(b, (a % b));
};

const car = function(rational) {
    return rational[0];
};

const cdr = function(rational) {
    return rational[1];
};

const make_rat = function(numer, denom) {
    const gNum = gcd(numer, denom);
    return [numer / gNum, denom / gNum];
};

const print_rat = function(listNumber) {
    const ret_string = `${car(listNumber)}/${cdr(listNumber)}`;
    return ret_string;
};

// method

const add_rat = function(x, y) {
    return make_rat(car(x) * cdr(y) + car(y) * cdr(x), cdr(x) * cdr(y));
};

const sub_rat = function(x, y) {
    return make_rat(car(x) * cdr(y) - car(y) * cdr(x), cdr(x) * cdr(y));
};

const mul_rat = function(x, y) {
    return make_rat(car(x) * car(y), cdr(x) * cdr(y));
};

const div_rat = function(x, y) {
    return make_rat(car(x) * cdr(y), car(y) * cdr(x));
};

// test
const one_half = make_rat(1, 2);
const one_third = make_rat(1, 3);

console.log(`1/2 + 1/3 = ${print_rat(add_rat(one_half, one_third))}`);
console.log(`1/2 - 1/3 = ${print_rat(sub_rat(one_half, one_third))}`);
console.log(`1/2 * 1/3 = ${print_rat(mul_rat(one_half, one_third))}`);
console.log(`1/2 / 1/3 = ${print_rat(div_rat(one_half, one_third))}`);

