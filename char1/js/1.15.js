let count = 0;

function sinCalc(num) {
  if (Math.abs(num)<=0.1) {
    return num;
  }

  return sinF(sinCalc(num/3));
}

function sinF(num) {
  count++;
  return 3 * num - 4 * num * num * num;
}

let ret = sinCalc(12.15);
console.log("count: " + count);
console.log("ret: " + ret);


