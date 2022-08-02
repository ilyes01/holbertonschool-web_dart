int add(int a, int b){
return a + b; 
}
int sub(int a, int b){
return a - b;
}
String showFunc(int a, int b){
int i = add(a, b);
int j = sub(a, b);
return("Add $a + $b = $i\nSub $a - $b = $j");
}
