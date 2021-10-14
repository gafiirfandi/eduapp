part of 'models.dart';

class Quizz extends Equatable {
  final int id;
  final String picturePath;
  final String jenisquiz;
  final String durasiwaktu;
  final String jenisoption;
  final String hargapts;

  Quizz(
      {this.id,
      this.picturePath,
      this.jenisquiz,
      this.durasiwaktu,
      this.jenisoption,
      this.hargapts});

  @override
  List<Object> get props =>
      [id, picturePath, jenisquiz, durasiwaktu, jenisoption, hargapts];
}

List<Quizz> mockQuizz = [
  Quizz(
    id: 1,
    picturePath: "https://i.postimg.cc/pLT34m57/btn-play.png",
    jenisquiz: "Quiz 1",
    durasiwaktu: "8 min",
    jenisoption: "multiple choice",
    hargapts: "80pts",
  ),
  Quizz(
    id: 1,
    picturePath: "https://i.postimg.cc/pLT34m57/btn-play.png",
    jenisquiz: "Quiz 2",
    durasiwaktu: "8 min",
    jenisoption: "multiple choice",
    hargapts: "80pts",
  ),
  Quizz(
    id: 1,
    picturePath: "https://i.postimg.cc/pLT34m57/btn-play.png",
    jenisquiz: "Quiz 1",
    durasiwaktu: "8 min",
    jenisoption: "multiple choice",
    hargapts: "80pts",
  ),
  Quizz(
    id: 1,
    picturePath: "https://i.postimg.cc/pLT34m57/btn-play.png",
    jenisquiz: "Quiz 2",
    durasiwaktu: "8 min",
    jenisoption: "multiple choice",
    hargapts: "80pts",
  ),
];
