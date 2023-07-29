// recursive
// const product = function(term, a, next, b) {
//   return a > b ? 1 : term(a) * product(term, next(a), next, b);
// };

// iterative
const product = function (term, a, next, b) {
  const product_item = function (a, result) {
    return a > b ? result : product_item(next(a), result * term(a));
  };
  
  return product_item(a, 1);
};

const number_item = function (index) {
  if (index === 1) {
    return 2;
  } else if (index % 2 === 0) {
    return index + 2;
  } else {
    return index + 1;
  }
};

const deno_item = function (index) {
  return index % 2 !== 0 ? index + 2 : index + 1;
};

const next_number = function (x) {
  return x + 1;
}

const pi = function (n) {
  let fz = product(number_item, 1, next_number, n);
  let fm = product(deno_item, 1, next_number, n);

  console.log('fz: ', fz);
  console.log('fm: ', fm);
  return 4 * fz / fm;
};

// test
console.log('pi(10): ', pi(10));
console.log('pi(100): ', pi(100));
console.log('pi(1000): ', pi(1000));
// console.log('pi(10000): ', pi(10000));