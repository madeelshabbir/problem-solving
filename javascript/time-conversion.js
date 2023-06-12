'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

const convertToTwoDigitString = (num) => {
    const str = num.toString();
    return str.length !== 2 ? '0' + str : str;
};

function timeConversion(s) {
    const time = s.split(':');
    const hours = parseInt(time[0]);
    if (s[8] === 'P' && hours < 12) {
        time[0] = convertToTwoDigitString(hours + 12);
        s = time.join(':');
    }
    else if (s[8] === 'A' && hours >= 12) {
        time[0] = convertToTwoDigitString(hours - 12);
        s = time.join(':');
    }

    return s.slice(0, 8);
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const s = readLine();

    const result = timeConversion(s);

    ws.write(result + '\n');

    ws.end();
}
