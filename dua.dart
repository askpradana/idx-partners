import 'dart:io';

String capitalizeSentence(String sentence) {
  List<String> words = sentence.split(" ");

  for (int i = 0; i < words.length; i++) {
    if (words[i].isNotEmpty) {
      words[i] =
          words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
    }
  }

  return words.join(" ");
}

void main() {
  // String sentence = "hello world";
  stdout.write("Masukkan kalimat: ");
  String? kalimat = stdin.readLineSync();
  String processedSentence = capitalizeSentence(kalimat!);
  print(processedSentence);
}
