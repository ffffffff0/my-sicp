const TOLERANCE = 0.000001;

const close_enough = function(v1, v2) {
    return Math.abs(v1 - v2) < TOLERANCE;
};

const fixed_point = function(f, guess) {
    console.log('next guess: ', guess);
    const next_value = (f(guess) + guess) / 2;
    
    if (close_enough(next_value, guess)) {
        return next_value;
    } else {
        return fixed_point(f, next_value);
    }
};

// test
console.log(fixed_point(Math.cos, 1.0));
// golden ratio, 1.35
console.log(fixed_point((x)=>{return 1+(1.0/x)}, 1.0));
// 1.36, average damp
console.log(fixed_point((x)=>{return Math.log(1000) / Math.log(x)}, 2.0));