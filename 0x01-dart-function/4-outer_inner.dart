void outer(String name, String id){
 String inner() {
    var list = name.split(" ");
    var res = list[1].substring(0, 1) + "." + list[0];
    return "Hello Agent $res your id is $id";
  }
  print(inner());
}
