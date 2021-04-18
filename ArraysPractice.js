// *------------------------------------------insert(push)--------------------------------------//
//push: This method can be used when you want to add one or more items to the end of an array. The original array will be transformed with the addition of the new item. The method itself will return the new length of the array.

// const pushArr = ['banana', 'apple'];
// const lengthOfPushArr = pushArr.push('mango');
// console.log(lengthOfPushArr);
// console.log(pushArr);

//*---------------------------------------insert(unshift)---------------------------------------//
// unshift: This method adds one or more items to the beginning of an array. Same as 'push', the array in place will be modified and the function itself returns the new length of the array.

// const unshiftArr = ['banana', 'apple'];
// const lengthOfUnshiftArr = unshiftArr.unshift('mango');
// console.log(lengthOfUnshiftArr);
// console.log(unshiftArr);

//*---------------------------------------remove(pop)-------------------------------------------//
// pop: It removes the last item from an array. The original array will be transformed with the removal of the last item. The function itself returns the deleted item.

// const popArr = ['banana', 'apple'];
// const deletedItem = popArr.pop();
// console.log(deletedItem);
// console.log(popArr);

//*---------------------------------------remove(shift)-----------------------------------------//
// shift: This removes the first element from an array. Again, the array in place will be changed and the function returns the deleted element.

// const removeArr = ['banana', 'apple'];
// const deletedItem = removeArr.shift();
// console.log(deletedItem);
// console.log(removeArr);

//*-------------------------------Remove/ replace / insert - splice-----------------------------//
// splice: This method modifies the content of an array by removing or replacing existing elements and/or adding new elements. The original array will be changed.

// const spliceArr = ['banana', 'apple'];
// console.log(spliceArr);
// spliceArr.splice(1, 0, 'mango');
// console.log(spliceArr);

//*-----------------------------Slice (returns a part of the array)-----------------------------//
// slice: This method returns a desired portion of an array from your specified start point and before your specified end point. Negative index can be passed in and it will count backwards from the end of an array. If the end point is not specified, the rest of the array will be returned. If the start point and end point are not specified, it returns a copy of the whole array. One thing to note - it does not modify the original array but returns the desired portion.

// const sliceArr = ['banana', 'apple', 'mango', 'karpouzi'];
// const newSliceArr = sliceArr.slice(1, 2);
// console.log(sliceArr);
// console.log(newSliceArr);

//*-------------------------------Merge (concat)------------------------------------------------//
// concat: This method is used to merge two or more arrays. The original arrays will not be changed. The function itself returns a new array.

// const arr = ['banana', 'apple'];
// const arr2 = ['karpouzi', 'peponi'];
// const arr3 = arr.concat(arr2);
// console.log(arr);
// console.log(arr2);
// console.log(arr3);

//*---------------------------Search - includes, find, findIndex, indexOf-----------------------//

//*--------------------------------------------includes-----------------------------------------//
//includes: This methods returns a boolean whether an array contains an element we are looking for. The second argument, which indicates the index to start searching at, is optional.

// const includesArr = ['banana', 'apple'];
// console.log(includesArr.includes('banana', 1));
// const arr = [1,2,3,4];
// console.log(arr.includes(2));

//*--------------------------------------------find---------------------------------------------//
//find: If you have a search criteria, you may consider using this method. This returns the first item which satisfies the criteria specified by you. If the item cannot be found, undefined is returned.

// const findArr = [1, 2, 3, 4, 5, 6];
// console.log(findArr.find(x => x > 5));

//*--------------------------------------------find index---------------------------------------//
//findIndex: This method is almost the same as find. Find returns the first matching item as per the specified criteria, whereas findIndex returns the index of first matching item. It returns -1 if no matching item is found.

// const findIndexArr = [1, 2, 3, 4, 5, 6];
// console.log(findIndexArr.findIndex(x => x > 3));

//*---------------------------------------------index of----------------------------------------//
//indexOf: This method is almost the same as findIndex, but instead of taking a function as the search criteria and argument, this takes a value. The second argument, which indicates the index to start searching at , is optional.

// const indexOfArr = ['banana', 'apple'];
// console.log(indexOfArr.indexOf('apple'));

//*-------------------------------------------reverse-------------------------------------------//
//reverse: This method reverses an array by modifying the original array.

// const reverseArr = ['banana', 'apple']
// console.log(reverseArr);
// reverseArr.reverse();
// console.log(reverseArr);

//*----------------------------------------forEach (callback)-----------------------------------//
// const restaurants =[{
//     name: 'Tasca da Avenida',
//     cuisine:'Mediterranean',
//     rating: 4.3
//    },
//    {
//     name:'Decor & Salteado',
//     cuisine:'European',
//     rating: 4.6
//    },
//    {
//     name:'Carnes do Convento',
//     cuisine:'Mediterranean',
//     rating: 4.8
//    }
//   ]

//printing all restaurants' names
//   restaurants.forEach(r => {
//     console.log(r.name);
//   });

// restaurants.forEach( (r, ind) => {
//     console.log(`the ${r.cuisine} is in index of: ${ind}`);
// });

//*----------------------------------------map--------------------------------------------------//
//map: it returns values after manipulating data of the original array and those values are saved in a new array which can be used later.
// forEach: There is no return value from the method. It only manipulates the data of the original array without creating a new array.

// Therefore if we simply want to do something with the array without creating a new array, we can use .forEach(). But if we want to capture the result of data manipulation in a new array, we should go for .map().

// const originalArr = [1, 2, 3, 4, 5, 6];

// const mapedArr = originalArr.map(x => x > 2);

// console.log(originalArr);
// console.log(mapedArr);

// const fruitArr = ['banana', 'apple'];

// const capitalArr = fruitArr.map(x => x.toUpperCase());

// console.log(fruitArr);
// console.log(capitalArr);

//*--------------------------------------filter-------------------------------------------------//
//returns a new array with elements which fulfils a condition specified by you. It works like this:

// It loops over each element of an existing array.
// If the element fulfils a testing function specified by you, the result will be true and that element will be included in the new array.
// If the element does not pass the testing function, the result will be false and that element will be excluded from the new array.
// The original array will not be changed.

// const numbersArr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
// const filteredArr = numbersArr.filter(x => x > 4);
// console.log(numbersArr); 
// console.log(filteredArr);

// const restaurants = [{
//     name: 'Tasca da Avenida',
//     cuisine: ['Mediterranean', 'Seafood'],
//     rating: 4.3
//   },
//   {
//     name: 'Decor & Salteado',
//     cuisine: ['European', 'International'],
//     rating: 4.6
//   },
//   {
//     name: 'Carnes do Convento',
//     cuisine: ['Mediterranean', 'Steakhouse'],
//     rating: 4.8
//   }];

//   const searchResult = restaurants.filter(x => x.cuisine.includes('Mediterranean'));
//   console.log(searchResult);

//   const sResult = restaurants.filter(r => r.rating > 4.7);
//   console.log(sResult);

//*------------------------------------Query - every, some--------------------------------------//
//.every() is used when we want to see if all the elements in an array passes a condition defined by us. It returns a boolean value. In other words, if all the elements passes the condition, it will return true. Otherwise, it will return false.

// const numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
// const checkAllNumbers = numbersArray.every(n => n > 4);
// console.log(checkAllNumbers);

//.some() is similar to .every(). The only difference is, instead of checking if all array elements fulfil the condition, .some() only checks if at least one array element passes the test function.
// In other words, if one or more elements passes the test function, it will return true. If none of the elements fulfils the condition, it will return false.

// const checkIfAnyNumber = numbersArray.some(n => n > 4);
// console.log(checkIfAnyNumber);
// numbersArray.


// const arr1 = [7, 2, 9];
// const arr2 = [4, 2, 9];

// function arrayDiff(a, b) {
//     let result = [];
//     for(let i = 0; i < a.length; i++) {
//         if(a[i] === b[i])
//         {
//             console.log(a[i]);
//             a.shift(a[i]);
//             // console.log('dubplicate');

//         }
//         // else {
//         //     result.unshift(a[i] - b[i]);
//         // }
//         // console.log(result);
//     }
//     // return result;

//   }

// function arrayDiff(a, b) {
//     a.map(function (element) {
//         for (var i = 0; i < b.length; i++) {
//             if (element === b[i]) {
//                 a[a.indexOf(element)] = null;
//                 break;
//             }
//         }
//     });
//     a = a.filter(function (n) { return n != null });

//     return a;
// }

// console.log(arrayDiff(arr1, arr2));

// function arrayDiff2(a, b) {
//     for (let i = 0; i < a.length; i++) {
//         for (let j = 0; j < b.length; j++) {
//             if (a[i] === b[j]) {
//                 console.log(`dublicate is ${a[i]} and ${b[j]}`);
//                 a.splice(a.indexOf(a[i]), 1);
//                 // b.splice(b.indexOf(b[j]), 1);
//                 // console.log(a);
//             }
//         }
//     }
// };

// arrayDiff2(arr1, arr2);
// console.log(arr1);
// console.log(arr2);





