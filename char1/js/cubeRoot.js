function cubeRoot(x) {
  return cube_iter(1.0, x);
}

function improve(guess, x) {
  return ((x / (guess * guess)) + 2*guess) / 3;
}
function good_enough(guess, x) {
  let nextX = improve(guess, x);
  let nextChage = Math.abs(nextX - guess) / guess;

  return nextChage < 0.01;
}
function cube_iter(guess, x) {

  if (good_enough(guess, x)) {
    return improve(guess, x);
  }

  return cube_iter(improve(guess, x), x);
}

console.log(cubeRoot( 3 * 3 * 3 ));
