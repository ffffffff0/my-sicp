// list subsets
const subsetsIter = function(aList, index) {
    if (index >= aList.length) {
        return [[]];
    }

    const ele = aList[index];
    const nextList = subsetsIter(aList, index + 1);
    return nextList.concat(nextList.map((x)=>{
        return Array.isArray(x) ? [ele].concat(x) : [ele, x];
    }));
};

const subsets = function(aList) {
    return subsetsIter(aList, 0);
};

module.exports = subsets;
