let anagram = ['kita', 'atik', 'tika', 'aku', 'kia', 'makan', 'kua'];
let arrResult = [];
const resAnagram = anagram.reduce((val, str) => {
        const sortedStr = splitStr(str);
        if(!val[sortedStr]) {
            val[sortedStr] = [];
        }
        val[sortedStr].push(str);
        return val;
    }, {});
console.log(Object.keys(resAnagram).map(key => resAnagram[key]))
function splitStr(str) {
    return str.split("").sort().join("")
}