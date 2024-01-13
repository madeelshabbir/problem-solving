/**
 * @param {number} n
 * @return {number}
 */
var fib = function(n) {
    if (n < 2) {
        return n;
    }

    let last = 1;
    let secondLast = 0;

    for (let i = 2; i <= n; i++) {
        const current = last + secondLast;
        secondLast = last;
        last = current;
    }

    return last;
};
