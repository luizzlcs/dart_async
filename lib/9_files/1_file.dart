import 'dart:io';

Future<void> main() async {
  var file = File('lib/9_files/files/file.txt');

  // Leitura Sincrona
  /*  var fileData = file.readAsStringSync();
  print(fileData); */

  // Leitura Asincrona
  /* var fileData = await file.readAsString();
  print(fileData); */

  // Leitura Linha Sincrona
  /* var fileDate = file.readAsLinesSync();
  print(fileDate[2]); */ // Pegou a linha dois

  // Leitura Linha Assicrona
  var fileDate = await file.readAsLines();
  print(fileDate[4]); // Pegou a linha dois

  // ESCRITA

  var file2 = File('lib/9_files/files/file2.txt');
  //await file2.writeAsString('Lucicleide Oliveira5\n', mode: FileMode.append);
  //file2.writeAsStringSync('Luiz Carlos da Silva\n', mode: FileMode.append);

  // INCLUÍNDO VÁRIAS LINHAS NO ARQUIVO

  var listaNomes = [
    'Luiz Carlos',
    'Lucicleide Oliveira',
    'Thiago Pereira',
    'Maria lucia',
    'Laíze Priscila',
    'Manoel',
    'Antônia'
  ];

  var file3 = File('lib/9_files/files/file3.txt');
  var writhFile = file3.openWrite(mode: FileMode.append);

  listaNomes.forEach((nome) => writhFile.write('$nome\n'));
}
