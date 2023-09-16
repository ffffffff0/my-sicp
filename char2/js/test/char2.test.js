const codeInstance = require('../src');

test('subsets([1,2,3])=', ()=>{
    expect(JSON.stringify(codeInstance.subsets([1, 2, 3]))).toBe('[[],[3],[2],[2,3],[1],[1,3],[1,2],[1,2,3]]');
});

test('subsets([1, 2, 3, 4])=', ()=>{
    expect(JSON.stringify(codeInstance.subsets([1, 2, 3, 4]))).toBe('[[],[4],[3],[3,4],[2],[2,4],[2,3],[2,3,4],[1],[1,4],[1,3],[1,3,4],[1,2],[1,2,4],[1,2,3],[1,2,3,4]]');
});