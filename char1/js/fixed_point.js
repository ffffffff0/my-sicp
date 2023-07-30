const TOLERANCE = 0.000001;

const close_enough = function(v1, v2) {
    return Math.abs(v1 - v2) < TOLERANCE;
};

const fixed_point = function(f, guess) {
    const next_value = f(guess);
    
    if (close_enough(next_value, guess)) {
        return next_value;
    } else {
        return fixed_point(f, next_value);
    }
};

// test
console.log(fixed_point(Math.cos, 1.0));