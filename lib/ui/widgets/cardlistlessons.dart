part of 'widgets.dart';

class CardListLessons extends StatelessWidget {
  final Lessons lessons;

  CardListLessons({@required this.lessons});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 34,
            height: 34,
            margin: EdgeInsets.only(left: 26),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(lessons.picturePath),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 250,
            child: Text(
              lessons.description,
              style: fonttitlecard,
            ),
          ),
        ],
      ),
      elevation: 3,
    );
  }
}
