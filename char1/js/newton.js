const TOLERANCE = 0.001;
const dx = 0.001;

const close_enough = function(v1, v2) {
    return Math.abs(v1 - v2) < TOLERANCE;
};

const deriv = function(g) {
    return (x)=>{
        return (g(x+dx) - g(x)) / dx;
    };
};

const fixed_point = function(f, guess) {
    console.log('next guess: ', guess);
    const next_value = (f(guess) + guess) / 2;
    
    return close_enough(next_value, guess) ? next_value : fixed_point(f, next_value);
};

const newton_method = function(g, guess) {
    return fixed_point((x)=>{
        return x - (g(x) / deriv(g)(x));
    }, guess)
};

// sqrt x
const sqrt_func = function(x) {
    return newton_method((y)=>{return y*y - x}, 1.0);
};

console.log('sqrt(2): ', sqrt_func(2));
console.log('sqrt(3): ', sqrt_func(3));
console.log('sqrt(4): ', sqrt_func(4));
console.log('sqrt(5): ', sqrt_func(5));
