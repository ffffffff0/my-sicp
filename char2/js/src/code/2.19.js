const us_coin_list = [1, 5, 10, 25, 50];

const cc = function(amount, coin_list, index) {
    if (amount == 0) {
        return 1;
    }

    if (amount < 0 || index >= coin_list.length) {
        return 0;
    }

    return cc(amount, coin_list, index+1) + cc(amount - coin_list[index], coin_list, index);
};

console.log(`cc(100, us_coin_list, 0)=${cc(100, us_coin_list, 0)}`);