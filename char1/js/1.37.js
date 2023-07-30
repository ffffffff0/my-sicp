
const cont_frac = function(n, d, k) {
    if (k === 0) {
        return 0;
    }

    return n / (d + cont_frac(n, d, k-1));
};

console.log(cont_frac((x)=>{return 1.0}, (x)=>{return 1.0}, 10));