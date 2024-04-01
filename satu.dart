import 'dart:io';

int countChar(String str, String charToFind) {
  RegExp regExp = RegExp(charToFind);
  Iterable<RegExpMatch> matches = regExp.allMatches(str);
  return matches.length;
}

void main() {
  stdout.write("Masukkan kalimat: ");
  String? kalimat = stdin.readLineSync();

  stdout.write("Masukkan kata atau karakter yang ingin dihitung: ");
  String? input = stdin.readLineSync();

  int count = countChar(kalimat!, input!);
  print("kalimat = $kalimat");
  print("input = $input");
  print("Jumlah karakter $input = $count");
}
