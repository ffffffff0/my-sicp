const TOLERANCE = 0.00000000001;

const close_enough = function (v1, v2) {
    return Math.abs(v1 - v2) < TOLERANCE;
};

const iterative_improve = function (good_enough, improve) {
    return (guess) => {
        console.log(`guess: ${guess}`);
        return good_enough(guess) ? guess : iterative_improve(good_enough, improve)(improve(guess));
    };
};

const fixed_point = function (func, first_guess) {
    return iterative_improve(close_enough, func)(first_guess);
};

const sqrt = function (x) {
    return iterative_improve((y) => { return Math.abs(y * y - x) < TOLERANCE; },
        (y) => { return (y + (x / y)) / 2.0; })(1.0);
};

// test sqrt
// for (let i=1; i<=1000; i++) {
//     console.log(`sqrt(${i}): ${sqrt(i)}`);
// }
console.log(sqrt(55));

