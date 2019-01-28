int [] numberArray = {17,12,5,9,27,31,6};
String [] animalArray = {"dolphin", "cat", "dog", "zebra"};
                //index:     0        1      2       3
                //length:    1        2      3       4
String [] plantArray = {"fern", "pine tree", "ivy", "aloe"};
boolean [] boolsArray = {true, false, true, true, false};

//a custom function definition
//this function takes in any string array
//and return its first value --> the value of index 0
String returnFirstString(String [] stringArray) {
 return stringArray[0];
}

String returnLastString(String [] stringArray) {
 //Method One
  //return stringArray [stringArray.length - 1]; 
 //Method Two
 //getting the length of the array -1 and setting it to a variable
 int lastindex = stringArray.length - 1;
 //use the above variable  to bracket into your array
 return stringArray [lastindex];
}

void printIntegerArray (int[] intArray) {
  for (int i = 0; i < intArray.length; i++){
    //i = 0; i < intArray.length; i++
    println("i:"+ i + " value:" +intArray[i]);
    println(intArray[i]);
  }
}

void printBooleanArray (boolean[] boolsArray ) {
  for (int i = 0; i < boolsArray.length; i++){
  println(!boolsArray[i]); }
}

void setup () {
  //returnFirstString(animalArray) returns to String "dolphin"
  // println "dolphin"
  println(returnFirstString(animalArray));
  println(returnFirstString(plantArray));
  println(returnLastString(animalArray));
  printIntegerArray(numberArray);
  printBooleanArray(boolsArray);
  
}
