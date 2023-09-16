function listNode(val, next) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
};

const for_each = function(proc, aList) {
    if (aList) {
        proc(aList);
        for_each(proc, aList.next);
    }
};

const demo_func = function(node) {
    console.log(`this val: ${node.val}`);
}

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

// test listNode
let testList = new listNode(1);
testList.next = new listNode(4);
testList.next.next = new listNode(9);
testList.next.next.next = new listNode(16);
testList.next.next.next.next = new listNode(25);

console.log(`before testList: ${printList(testList)}`);
for_each(demo_func, testList);

