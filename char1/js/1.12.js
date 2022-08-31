function funcPascal(row, col) {
  if (row===col || col===0) {
    return 1;
  }

  return funcPascal(row-1, col-1) + funcPascal(row-1, col);
}

console.log('funcPascal: ' + funcPascal(4, 2));
