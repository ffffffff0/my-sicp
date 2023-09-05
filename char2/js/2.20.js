function listNode(val, next){
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
};

const appendList = function(list1, list2) {
    if (list1 === null) {
        return list2;
    }
    return new listNode(list1.val, appendList(list1.next, list2));
};

const sameParityIter = function(aList, ret, mod) {
    if (aList === null) {
        return ret;
    }

    if (aList.val % 2 === mod) {
        ret = appendList(ret, new listNode(aList.val));
    }

    return sameParityIter(aList.next, ret, mod);
}

const sameParity = function(first, aList) {
    return sameParityIter(aList, new listNode(first), first % 2);
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

let testList = new listNode(1);
testList.next = new listNode(4);
testList.next.next = new listNode(9);
testList.next.next.next = new listNode(16);
testList.next.next.next.next = new listNode(25);

// test 
let ret = printList(sameParity(2, testList));
console.log('ret: ' + ret);
