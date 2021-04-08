let anagram = ['kita', 'atik', 'tika', 'aku', 'kia', 'makan', 'kua'];
let arrResult = [];
let unique;
console.log(getAnagram(anagram))

function getAnagram(word) {
    let sorted = [];
    word.forEach(element => {
        let sortedStr = splitStr(element)
        sorted.push(sortedStr)
        unique = Array.from(new Set(sorted))
    });
    for (let val = 0; val < unique.length; val++) {
        let arr=[];
        for (let i = 0; i < word.length; i++) {
        let sortedStr = word[i].split("").sort().join("")
        if(unique[val] == sortedStr){
            arr.push(word[i])
        }
        }
        arrResult.push(arr)  
        
    }
    return arrResult
        
    }