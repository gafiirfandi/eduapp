part of 'widgets.dart';

class CardQuizz extends StatelessWidget {
  final Quizz quiz;

  CardQuizz({@required this.quiz});

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
                    image: NetworkImage(quiz.picturePath), fit: BoxFit.cover)),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Container(
                  width: 100,
                  child: Text(
                    quiz.jenisquiz,
                    style: fonttitlecard,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    quiz.durasiwaktu,
                    style: yellowfontnormal,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    quiz.jenisoption,
                    style: greyfontnormal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 150, maxWidth: 200),
            margin: EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  quiz.hargapts,
                  style: yellowachieve,
                )
              ],
            ),
          ),
        ],
      ),
      elevation: 3,
    );
  }
}
