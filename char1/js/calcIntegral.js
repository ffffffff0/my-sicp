const cube = (x) => {
    return x * x * x;
};


const sumFunc = (term, a, next, b) => {
    if (a > b) {
        return 0;
    }

    return term(a) + sumFunc(term, next(a), next, b);
};

const integral = (func, a, b, dx) => {
    const addDx = (x) => {
        return x + dx;
    };
    
    return dx * sumFunc(func, (a + (dx / 2.0)), addDx, b);
};

console.log('cube, dx=0.01: ' + integral(cube, 0, 1, 0.01))
console.log('cube, dx=0.001: ' + integral(cube, 0, 1, 0.001))