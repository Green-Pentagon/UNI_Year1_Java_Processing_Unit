import java.util.Arrays;

public void setup(){
  String[] fileIn;
  try{
    fileIn = loadStrings("file.txt");
  }catch(NullPointerException e){
    fileIn = new String[1];
  }
  
  OutputArray(fileIn);
  Arrays.sort(fileIn);
  OutputArray(fileIn);
}

public void OutputArray(String[] fileIn){
  println("---------");
  for (String item : fileIn){
    println(item);
  }
  saveStrings("data/fileSorted.txt", fileIn);
}

public void draw(){
  ;
}
