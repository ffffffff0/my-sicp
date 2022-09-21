const cube = (x) => {
  return x * x * x;
};


const sumFunc = (term, a, next, b) => {
    if (a > b) {
        return 0;
    }

    return term(a) + sumFunc(term, next(a), next, b);
};

const isEven = (n) => {
  return n % 2 === 0;
};

const simpsonIntegral = (func, a, b, n) => {
  const h = (b - a) / n;

  const yF = (k) => {
    return func(a + k*h);
  };

  const factor = (k)  => {
    if (k===0 && k===n) {
      return 1;
    } else if (isEven(k)) {
      return 2;
    } else {
      return 4;
    }
  };

  const term = (k) => {
    return factor(k) * yF(k);
  };

  const next = (k) => {
    return k + 1;
  };

  return (h/3) * sumFunc(term, 0, next, n);
};


