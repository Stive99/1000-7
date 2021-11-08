'use strict';

/**
 * @author Stive_99 | Anchoys
 * @version 1.0.1
 */

(async () => {
    const delay = 50;
    let i = 0;
    let n = 1000;

    while (await new Promise(resolve => setTimeout(() => resolve(i++), delay)) < 143) {
        if (n <= 6) return console.log('Я гуль!');
        console.log(`${n} - ${7} = ${n - 7}`);
        n -= 7;
    }
})();