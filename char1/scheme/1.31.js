const product = (func, a, b) => {
  let ret = 1;
  for (let i=a; i<b; i++) {
    ret = ret * func(i);
  }

  return ret;
};

const func = (x) => {
  return x;
}

console.log(product(func, 1, 10));
