'use strict';

/**
 * @author Stive_99 | Anchoys
 * @version 1.0.0
 */

(async () => {
    let i = 0;
    let n = 1000;

    while (await new Promise(resolve => setTimeout(() => resolve(i++), 200)) < 143) {
        if (n <= 6) return console.log('Я гуль!');
        console.log(`${n} - ${7} = ${n - 7}`);
        n -= 7;
    }
})();