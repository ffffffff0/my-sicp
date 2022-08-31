function funcRecr(n) {
  if (n < 3) {
    return n;
  }

  return funcRecr(n-1) + 2 * funcRecr(n-2) + 3 * funcRecr(n-3);
}

console.log("funcRecr: " + funcRecr(6));

function funcIter(n) {
  return funcIterImpl(2, 1, 0, 0, n);
}

function funcIterImpl(a, b, c, i, n) {
  if (n===i) {
    return c;
  }

  return funcIterImpl(a+2*b+3*c, a, b, i+1, n);
}

console.log("funcIter: " + funcIter(6));
