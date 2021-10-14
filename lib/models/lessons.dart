part of 'models.dart';

class Lessons extends Equatable {
  final int id;
  final String picturePath;
  final String description;

  Lessons({
    this.id,
    this.picturePath,
    this.description,
  });

  @override
  List<Object> get props => [id, picturePath, description];
}

List<Lessons> mockLessons = [
  Lessons(
    id: 1,
    picturePath: "https://i.postimg.cc/pLT34m57/btn-play.png",
    description: "1. Introduction to Grammar 101",
  ),
  Lessons(
    id: 2,
    picturePath: "https://i.postimg.cc/26K1dbvD/btn-lock.png",
    description: "2. Introduction to Grammar 101",
  ),
];
