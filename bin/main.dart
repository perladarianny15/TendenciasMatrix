import 'dart:convert';

import 'dart:io';
final File file = File("TimeRelease.txt");
final stopwatch = new Stopwatch();
main() async{
  //await FirtPractice();
  await SecondPractice();
  
}

Future FirtPractice() async{
  var arr = await new List(500000);
  var num = 50; 
  var firstloop = 0;

  stopwatch.start();
  for(var i = arr.length -1 ; i >= 0; i-- ) { 
      arr[i] = num;
      print(arr[i]); 
   } 
  firstloop = stopwatch.elapsedMilliseconds;
  stopwatch.stop();

  
  print('Tiempo primer loop: ${firstloop}');

  await file.writeAsString('Primer Loop: ' + firstloop.toString() + '\n',
        mode: FileMode.append, flush: true);

  await MultipleTen(arr);
  await MultipleCien(arr);
  await MultipleMil(arr);

}

Future MultipleTen(List<dynamic> arr) async{
  var value = 0;
  var secondloop = 0;
  stopwatch.start();
  for(var j = 0; j < arr.length; j++){
    value = arr[j];
    if(arr[j] % 10 == 0){
      print('Multiplos de 10: ${value}');
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  
  stopwatch.stop();
  await file.writeAsString('Multiple de 10: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}

Future MultipleCien(List<dynamic> arr) async{
  var value = 0;
  var secondloop = 0;
  stopwatch.start();
  for(var j = 0; j < arr.length; j++){
    value = arr[j];
    if(arr[j] % 10 == 0){
      print('Multiplos de 100: ${value}');
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  stopwatch.stop();
  await file.writeAsString('Multiple de 100: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}
Future MultipleMil(List<dynamic> arr) async{
  var value = 0;
  var secondloop = 0;
  stopwatch.start();
  for(var j = 0; j < arr.length; j++){
    value = arr[j];
    if(arr[j] % 10 == 0){
      print('Multiplos de 1000: ${value}');
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  stopwatch.stop();
  await file.writeAsString('Multiple de 1000: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}

Future SecondPractice() async{

  var num = 50; 
  var size = 200;
  
  //await RowToColumn(size, num);
  await ColumnToRow(size, num);
}

Future ColumnToRow(int size, int num) async{
  var firstloop = 0;
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
  firstloop = stopwatch.elapsedMilliseconds;
  print('Tiempo primer loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Primer Loop: ' + firstloop.toString() + '\n',
        mode: FileMode.append, flush: true);

  await ColumnToRowTen(size, matrix);
  await ColumnToRowCien(size, matrix);
  await ColumnToRowMil(size, matrix);
}

Future ColumnToRowTen(int size, List<List<int>> matrix) async
{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[i][j] %10 == 0){
        print('Multiplos de 10: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de CR 10: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}

Future ColumnToRowCien(int size, List<List<int>> matrix) async
{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[i][j] %10 == 0){
        print('Multiplos de 100: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de CR 100: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}
Future ColumnToRowMil(int size, List<List<int>> matrix) async
{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[i][j] %10 == 0){
        print('Multiplos de 1000: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de CR 1000: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}
Future RowToColumn(int size, int num) async{
  var firstloop = 0;
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
  firstloop = stopwatch.elapsedMilliseconds;
  print('Tiempo primer loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Primer Loop: ' + firstloop.toString() + '\n',
        mode: FileMode.append, flush: true);
  await RowToColumnTen(size, matrix);
  await RowToColumnCien(size, matrix);
  await RowToColumnMil(size, matrix);
}


Future RowToColumnTen(int size, List<List<int>> matrix) async
{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[j][i] %10 == 0){
        print('Multiplos de 10: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de RC 10: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}
Future RowToColumnCien(int size, List<List<int>> matrix) async{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[j][i] %10 == 0){
        print('Multiplos de 100: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de RC 100: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}
Future RowToColumnMil(int size, List<List<int>> matrix) async{
  var secondloop = 0;
  stopwatch.start();
  for(var i = 0; i < size; i++){
    for (var j = 0; j < size; j++) {
      if(matrix[j][i] %10 == 0){
        print('Multiplos de 1000: ${matrix[i][j]}');
      }
    }
  }
  secondloop = stopwatch.elapsedMilliseconds;
  print('Tiempo segundo Loop: ${stopwatch.elapsedMilliseconds}');
  stopwatch.stop();

  await file.writeAsString('Multiple de RC 1000: ' + secondloop.toString() + '\n',
        mode: FileMode.append, flush: true);
}