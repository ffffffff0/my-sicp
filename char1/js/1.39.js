
const cont_frac = function (n, d, k) {
    const loop_iter = function (result, idx) {
        return idx === 0 ? result : loop_iter((n(idx) / (d(idx) + result)), idx - 1);
    };

    return loop_iter(0, k);
};

const tan_cf = function (x, k) {
    return cont_frac((i) => { return i === 1 ? x : -x * x; },
        (i) => { return 2 * i - 1; },
        k)
};

console.log(tan_cf(1.0, 100));