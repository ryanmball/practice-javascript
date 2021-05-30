/* eslint-disable semi */
/* eslint-disable no-redeclare */
// Exercise: (work in pairs)
// Solve the following problems first in Ruby, then convert the solution to JavaScript.
// 1. Write a function that takes in an array of numbers and returns its' sum.
var nums = [10, 15, 20, 30, 5, 8, 15];
function sum(numbers) {
  var sum = 0;
  numbers.forEach(num => {
    sum += num;
  });
  return sum;
}
console.log(sum(nums));

console.log(nums.reduce((num1, num2) => num1 + num2));

// 2. Write a function that takes in an array of strings and returns the smallest string.
var strings = ["this", "aunt", "array", "pencil", "buy"];
let smallestString = strings => {
  var string = strings[0];
  strings.forEach(word => {
    if (word.length < string.length) {
      string = word;
    }
  });
  return string;
};
console.log(smallestString(strings));

// 3. Write a function that takes in an array of numbers and returns a new array with the numbers in reverse order.
var nums = [10, 15, 20, 30, 5, 8, 15];
let reverse = numbers => {
  return numbers.reverse();
}
console.log(reverse(nums));

// 4. Write a function that takes in an array of words and returns the number of words that begin with the letter “a”.
var words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"];
// function aWords(words) {
//   var count = 0;
//   words.forEach(function(word) {
//     if (word[0] === "a") {
//       count++;
//     }
//   });
//   return count;
// }
function aWords(words) {
  return words.filter(word => word[0] === "a");
}
console.log(aWords(words).length);

// 5. Write a function that takes in an array of strings and joins them together to make a single string separated by commas.
var words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"];
// function stringle(strings){
//   var single_string = "";
//   strings.forEach(function(string) {
//     single_string += `${string},`;
//   });
//   return single_string;
// }
// console.log(stringle(words));
function stringle(strings) {
  return strings.join(",");
}
console.log(stringle(words));

// 6. Write a function that takes in an array of numbers and returns the product of all the numbers (each number multiplied by each other).
var nums = [10, 15, 20, 30, 5, 8, 15];
// function product(nums) {
//   var product = 1;
//   nums.forEach(function(num) {
//     product *= num;
//   });
//   return product;
// }
// console.log(product(nums));
function product(nums) {
  return nums.reduce( (a, b) => a * b );
}
console.log(product(nums));

// 7. Write a function that takes in an array of numbers and returns the two smallest numbers.
var nums = [10, 15, 20, 30, 5, 8, 15];
function twoSmallest(nums) {
  // eslint-disable-next-line brace-style
  return nums.sort((a, b) => { return a - b }).slice(0, 2);
}
console.log(twoSmallest(nums));

// 8. Write a function that takes in an array of numbers and returns a count of how many zeros are in the array.
var nums = [10, 15, 20, 30, 5, 8, 15, 100, 5002];
function numberZeros(nums) {
  var count = 0;
  var i = 0;
  nums = nums.join("");
  while (i < nums.length) {
    if (nums[i] === "0") {
      count ++;
    }
    i++;
  }
  return count;
}
console.log(numberZeros(nums));

// 9. Write a function that takes in an array of numbers and returns true if all the numbers are bigger than 10, otherwise returns false.
var nums = [11, 15, 20, 30, 15, 100, 5002, 5];
var greater = true;
var greaterThan10 = nums => {
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] <= 10) {
      greater = false;
      break;
    }
  }
  return greater;
};
console.log(greaterThan10(nums));

// 10. Write a function that takes in an array of words and returns the number of times the letter “a” appeared in total.
var words = ["shoe", "egg", "ant", "arm", "antarctica", "lamp"];
var numOfA = words => {
  return words.join("").split("a").length - 1
};
// OR
var numOfA2 = words => {
  return words.join("").match(/a/g).length // need to get better understanding of Regex
};

console.log(numOfA(words));
console.log(numOfA2(words));

// BONUS PROBLEMS
// Write a function that accepts a string and returns whether it’s a palindrome. 
var palindrome = string => {
  // var revString = "";
  // for (var i = string.length - 1; i >= 0; i--) {
  //   revString += string[i];
  // }
  // return (string === revString ? true : false)
  // OR
  return (string.split("").reverse().join("") === string ? true : false);
  // OR
  // if (string === "") {
  //   return "";
  // }
  // else
  //   return palindrome(string.substr(1)) + string.charAt(0);
};
console.log(palindrome("kayak")); //=>true

// Write a function to generate/print/store the first "n" prime numbers.


// Given a tic-tac-toe board (matrix of 3 x 3), write a function that can check to see whether X or O won.

// DOUBLE BONUS:
// Use the Ruby .map/.select/.reduce shortcuts to rewrite some of the Ruby problems!
// Use the JavaScript .map/.filter/.reduce shortcuts to rewrite some of the JavaScript problems!