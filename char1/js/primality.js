// prime test
function squre(num) {
    return num * num;
}

function isDivide(a, b) {
    return b % a === 0;
}

function findDivisor(num, testDivisor) {
    if (squre(testDivisor) > num) {
        return true;
    } else if (isDivide(testDivisor, num)) {
        if (testDivisor === num) {
            return true;
        }
        return false;
    } else {
        return findDivisor(num, testDivisor + 1);
    }
}

function isPrim(num) {
    return findDivisor(num, 2);
}

console.log("isPrim(4): " + isPrim(4));
console.log("isPrim(5): " + isPrim(5));
console.log("isPrim(6): " + isPrim(6));
console.log("isPrim(7): " + isPrim(7));
console.log("isPrim(8): " + isPrim(8));

// fast prime base on fermat test 
function isEven(num) {
    return num % 2 === 0;
}

function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}

function expMod(base, exp, m) {
    if (exp === 0) {
        return 1;
    } else if (isEven(exp)) {
        return squre(expMod(base, exp/2, m)) % m;
    }
    return (base * expMod(base, exp-1, m)) % m;
}

function fermatTest(num) {
    // random [0, num-1]
    let tmp = getRandomInt(num);
    let tmpRet = expMod(tmp, num, num) === tmp;
    return tmpRet;
}

function fastIsPrim(num, times) {
    if (times === 0) {
        return true;
    } 
    
    if (fermatTest(num)) {
        return fastIsPrim(num, times-1);
    } else {
        return false;
    }
}

console.log("fastIsPrim(4): " + fastIsPrim(4, 10));
console.log("fastIsPrim(5): " + fastIsPrim(5, 10));
console.log("fastIsPrim(6): " + fastIsPrim(6, 10));
console.log("fastIsPrim(7): " + fastIsPrim(7, 10));
console.log("fastIsPrim(8): " + fastIsPrim(8, 10));

