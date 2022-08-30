const coins = [1, 5, 10, 25, 50];

function countChange(amount, kinds) {
  if (amount==0) {
    return 1;
  }

  if ((amount<0) || (kinds==0)) {
    return 0;
  }

  return countChange(amount, kinds-1) + countChange(amount - coins[kinds-1], kinds);
}

console.log(countChange(100, 5));
