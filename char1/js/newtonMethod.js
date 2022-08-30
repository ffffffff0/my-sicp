function newtonSqrt(x) {
  return sqrt_iter(1.0, x);
}

function sqrt_iter(guess, x) {
  if (good_enough(guess, x)) {
    return guess;
  }

  return sqrt_iter(improve(guess, x), x);
}

function square(x) {
  return x * x;
}

function abs(x) {
  return x < 0 ? -x : x;
}

function good_enough(guess, x) {
  return abs(square(guess) - x) <= 0.001;
}

function improve(guess, x) {
  return (guess + (x/guess)) / 2;
}


console.log(newtonSqrt(2));
