void FirtPractice(){
var arr = new List(500000);
  int i = 0, j = 0;
  int value = 0;

  var num = 50; 

  var stopwatch = new Stopwatch();
  stopwatch.start();
  for(i = arr.length -1 ; i >= 0; i-- ) { 
      arr[i] = num;
      print(arr[i]); 
   } 
  
  print('Tiempo primer loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  stopwatch.start();
  for(j = 0; j < arr.length; j++){
    value = arr[j];
    if(arr[j] % 10 == 0){
      print('Multiplos de 10: ${value}');
    }else if(arr[j] & 100 == 0){
        print('Multiplos de 100: ${value}');
    }else if(arr[j] % 1000 == 0){
        print('Multiplos de 100: ${value}');

    }
  }
  print('Tiempo de segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();
}
void SecondPractice(){

  var num = 50; 
  int size = 100;
  
  RowToColumn(size, num);
  ColumnToRow(size, num);
}

void ColumnToRow(int size, int num){
  var stopwatch = new Stopwatch();
  List<List<int>> matrix = new List<List<int>>(size);
  List<int> list = new List<int>(size);
  
  stopwatch.start();
  for (var i = 0; i < size; i++) {
    for (var j = 0; j < size; j++) {
      list[j] = num;
    }
    matrix[i] = list;
  }
  print(matrix);

  print('Tiempo primer loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[i][j] %10 == 0){
        print('Multiplos de 10: ${matrix[i][j]}');
      }else if(matrix[i][j] % 100 == 0){
        print('Multiplos de 100: ${matrix[i][j]}');
      }else if(matrix[i][j] % 1000 == 0){
        print('Multiplos de 1000: ${matrix[i][j]}');
      }
    }
  }
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();
  
}

RowToColumn(int size, int num){
  var stopwatch = new Stopwatch();
  List<List<int>> matrix = new List<List<int>>(size);
  List<int> list = new List<int>(size);
  
  stopwatch.start();
  for (var i = 0; i < size; i++) {
    for (var j = 0; j < size; j++) {
      list[i] = num;
      matrix[j] = list;
    }
  }
  print(matrix);

  print('Tiempo primer loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[j][i] %10 == 0){
        print('Multiplos de 10: ${matrix[i][j]}');
      }else if(matrix[j][i] % 100 == 0){
        print('Multiplos de 100: ${matrix[i][j]}');
      }else if(matrix[j][i] % 1000 == 0){
        print('Multiplos de 1000: ${matrix[i][j]}');
      }
    }
  }
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();
  
}