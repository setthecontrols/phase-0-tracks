var phrases = ["long phrase","longest phrase","longer phrase"];
var frases = ["this thing on?  hello?  anyone out there?","feeling like a kite in space","three are better than what"];

function find_longest(array){
  var longest_phrase = "";
  for(var i = 0; i < array.length; i++){
    
    if(longest_phrase.length < array[i].length){
      longest_phrase = array[i];
      //console.log("working");

    }
    
  }
  return console.log(longest_phrase)
}

find_longest(frases)
