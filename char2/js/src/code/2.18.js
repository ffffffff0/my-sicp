const listNode = function(val, next) {
    this.val = (val === undefined ? 0 : val)
    this.next = (next === undefined ? null : next)
};

const reverseItem = function(aList, result) {
    if (aList === null) {
        return result;
    }

    return reverseItem(aList.next, new listNode(aList.val, result));
};

const reverseList = function(aList) {
    return reverseItem(aList, new listNode(null));
};

const printList = function(aList) {
    let retString = '';
    while (aList) {
        if (retString) {
            retString = retString + '->' + aList.val;
        } else {
            retString = aList.val;
        }

        aList = aList.next;
    }

    return retString;
};

let testList = new listNode(1);
testList.next = new listNode(4);
testList.next.next = new listNode(9);
testList.next.next.next = new listNode(16);
testList.next.next.next.next = new listNode(25);

console.log(`origin testList: ${printList(testList)}`);
let retList = reverseList(testList);
console.log(`reverse testList: ${printList(retList)}`);