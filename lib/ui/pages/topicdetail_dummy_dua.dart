part of 'pages.dart';

class TopicDetailDua extends StatefulWidget {
  @override
  _TopicDetailDuaState createState() => _TopicDetailDuaState();
}

class _TopicDetailDuaState extends State<TopicDetailDua> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Topic Detail ',
      onBackButtonPressed: () {},
      backColor: maincolor,
      child: Column(
        children: [
          ////!!!!Body
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 800,
            padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Grammar 101",
                          style: titletopic,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "8 Lesson",
                          style: yellowsubtopic,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: new BoxConstraints(
                            minHeight: 45.0,
                            minWidth: 45.0,
                            maxHeight: 100.0,
                            maxWidth: 100.0,
                          ),
                          child: new DecoratedBox(
                            decoration: new BoxDecoration(color: maincolor),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Topic Details",
                          style: subtitletopic,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. /n Aliquam tincidunt diam vel velit commodo",
                            style: fontnormal,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
                // List Education
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      CustomTabBar(
                        titles: ['Lessons', 'Quizzes'],
                        selectedIndex: selectedIndex,
                        onTap: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Builder(builder: (_) {
                        List<Lessons> listlessons =
                            (selectedIndex == 0) ? mockLessons : [];

                        return Column(
                          children: listlessons
                              .map(
                                (e) => Container(
                                  height: 80,
                                  child: CardListLessons(
                                    lessons: e,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      }),
                      Builder(builder: (_) {
                        List<Quizz> listquizz =
                            (selectedIndex == 1) ? mockQuizz : [];

                        return Column(
                          children: listquizz
                              .map(
                                (e) => Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  height: 80,
                                  child: CardQuizz(
                                    quiz: e,
                                  ),
                                ),
                              )
                              .toList(),
                        );
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
