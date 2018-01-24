public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String smush = new String(reverse(word));
  String flip = new String(reverse(smush));
  if(flip.equals(word))
    return true;
  return false;
}
public String reverse(String str)
{
  ArrayList<String> bits = new ArrayList<String>();
  String product= new String();
  for(int i=0; i<str.length();i++){
    bits.add(str.substring(i,i+1));
  }
  for(int a=bits.size(); a>0;a--){
    product = product+bits.get(a-1);
  }
    return product;
}
public String noSpaces(String sWord){
    String whole= new String();
    String piece= new String();
  for(int i=0; i<sWord.length();i++){
    piece = sWord.substring(i,i+1);
    if (!piece.equals(" "))
    whole=whole+piece;
  }
 return whole;
}
