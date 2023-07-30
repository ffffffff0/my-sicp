const MIN_INTERVAL = 0.0001;

const good_enough = function (a, b) {
    return Math.abs(a - b) < MIN_INTERVAL;
}
const search = function (f, a, b) {
    const mid_point = (a + b) / 2.0;
    if (good_enough(a, b)) {
        return mid_point;
    }

    const guess = f(mid_point);
    if (guess > 0) {
        return search(f, a, mid_point);
    } else if (guess < 0) {
        return search(f, mid_point, b);
    } else {
        return mid_point;
    }
};

const half_interval_method = function (f, a, b) {
    const fa = f(a);
    const fb = f(b);

    if (fa < 0 && fb > 0) {
        return search(f, a, b);
    } else if (fa > 0 && fb < 0) {
        return search(f, b, a);
    } else {
        console.log('error, Value are not of opposite sign');
    }
};

// test
const test_func = function (x) {
    return x * x * x - 2 * x - 3;
};

console.log(half_interval_method(test_func, 1.0, 2.0));