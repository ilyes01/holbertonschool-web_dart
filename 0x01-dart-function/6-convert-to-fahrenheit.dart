List<double> convertToF(List<double> temperaturesInC){
List<double> res = [];
for (int i = 0; i < temperaturesInC.length; i++){
    res.add((temperaturesInC[i] * (9 / 5)) + 32).round());
}
return res;
}

