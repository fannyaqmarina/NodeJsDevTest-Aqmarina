function findFirstStringInBracket(str){
 if(str.length < 0)return '';
 let indexFirstBracketFound = str.indexOf("(");
 if(indexFirstBracketFound <= 0) return '';
 let wordsAfterFirstBracket = str.substr( indexFirstBracketFound );
 if(!wordsAfterFirstBracket)return'';
 wordsAfterFirstBracket = wordsAfterFirstBracket.substr(1);
 let indexClosingBracketFound = wordsAfterFirstBracket.indexOf(")");
 if(indexClosingBracketFound <= 0) return '';
 return wordsAfterFirstBracket.substring(0,indexClosingBracketFound);
 }

let sentence = 'Mencari Kata dalam kurung (Ini Sebuah Kalimat)'
console.log(findFirstStringInBracket(sentence))
