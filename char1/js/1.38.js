const cont_frac = function (n, d, k) {
    const loop_iter = function (result, idx) {
        console.log(`${idx}, result: ${result}`);
        return idx === 0 ? result : loop_iter(n(idx) / (d(idx) + result), idx - 1);
    };

    return loop_iter(0.0, k);
};


let exp_value = cont_frac((x) => { return 1.0; },
    (x) => { return x % 3 === 2 ? (x + 1) / 1.5 : 1.0; },
    100) + 2.0;

console.log(exp_value);