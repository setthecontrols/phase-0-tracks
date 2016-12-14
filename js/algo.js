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
  console.log("And here is the longest word: " + longest_phrase)
}

data1 = {name: "Steven", age: 3};
data2 = {name: "Tamir", age: 6};
var match = "";
function value_match(hash1,hash2){
    if (hash1.age != hash2.age){
      match = false;
    } else {
      match = true;
    }
console.log(match)
}


function gen_array(int){
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  var phrases = [];
  
  
  for(var i = 0; i < int; i++){
    var word = ""
    var num = (Math.random()*10+1) 
      for(var n = 0; n < num; n++ )
      word += alpha.charAt(Math.floor(Math.random()*alpha.length));
      phrases.push(word);
  }
  console.log("There are " + phrases.length + " words to sort through")
  console.log("Here they are:")
  for (w = 0; w < phrases.length; w++){
    console.log(phrases[w])
  }
  return phrases
}
find_longest(gen_array(10))

// find_longest(frases)
// find_longest(phrases)
// value_match(data1,data2)



// var phrases = [];
// var alpha = "abcdefghijklmnopqrstuvwxyz";
// function gen_arr_ate(int){
// var num = Math.floor(Math.random()*10 + 1);
// var word = "";
   
//     for(var t = 0; t < int; t++ ){
//   console.log(t+1 + " out of " + int + " times")
   
// for(var i = 0; i < num; i++ )

//   word += alpha.charAt(Math.floor(Math.random()*alpha.length));

//   console.log("adding " + word + " " + word.length + " letters long")}

//   phrases.push(word);

//   var word = "";
     
//   console.log(phrases);

  
// }
// gen_arr_ate(10);




