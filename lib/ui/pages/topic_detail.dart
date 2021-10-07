part of 'pages.dart';

class TopicDetail extends StatefulWidget {
  @override
  _TopicDetailState createState() => _TopicDetailState();
}

class _TopicDetailState extends State<TopicDetail> {
  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Topic Detail',
      onBackButtonPressed: () {},
      backColor: maincolor,
      child: Column(
        children: [
          ////!!!!Body
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 600,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lessons",
                              style: yellowsubtopic,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Quizzes",
                              style: greysubtopic,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                        height: 80,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                margin: EdgeInsets.only(left: 26),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_play.png'))),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "1. Introduction to Grammar 101",
                                  style: fonttitlecard,
                                ),
                              ),
                            ],
                          ),
                          elevation: 3,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 80,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                margin: EdgeInsets.only(left: 26),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_lock.png'))),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "1. Introduction to Grammar 101",
                                  style: fonttitlecard,
                                ),
                              ),
                            ],
                          ),
                          elevation: 3,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 80,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                margin: EdgeInsets.only(left: 26),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_lock.png'))),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "1. Introduction to Grammar 101",
                                  style: fonttitlecard,
                                ),
                              ),
                            ],
                          ),
                          elevation: 3,
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        height: 80,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 34,
                                height: 34,
                                margin: EdgeInsets.only(left: 26),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_lock.png'))),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 250,
                                child: Text(
                                  "1. Introduction to Grammar 101",
                                  style: fonttitlecard,
                                ),
                              ),
                            ],
                          ),
                          elevation: 3,
                        )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
