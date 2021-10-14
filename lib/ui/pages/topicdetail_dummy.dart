part of 'pages.dart';

class TopicDetailDummy extends StatefulWidget {
  @override
  _TopicDetailDummyState createState() => _TopicDetailDummyState();
}

class _TopicDetailDummyState extends State<TopicDetailDummy> {
  int _currentSelection = 1;
  double _selectorPositonX = 16.0;

  //need key
  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();

  _selectedItem(int id) {
    _currentSelection = id;
    //setup key
    GlobalKey selectedGlobalKey;

    switch (id) {
      case 1:
        selectedGlobalKey = _key1;
        break;
      case 2:
        selectedGlobalKey = _key2;
        break;
      default:
    }

    //need function

    setState(() {});
  }

  _setWidgetPositionX(GlobalKey selectedKey) {
    final RenderBox widgetRenderBox =
        selectedKey.currentContext.findRenderObject();
    final widgetPositon = widgetRenderBox.localToGlobal(Offset.zero);

    //need variables
    _selectorPositonX = widgetPositon.dx;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _setWidgetPositionX(_key1));
  }

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
                        Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 16.0, bottom: 12.0),
                              child: Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    key: _key1,
                                    onTap: () => _selectedItem(1),
                                    child: Text(
                                      "Lessons",
                                      style: _currentSelection == 1
                                          ? greysubtopic
                                          : yellowsubtopic,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  InkWell(
                                    key: _key2,
                                    onTap: () => _selectedItem(2),
                                    child: Text(
                                      "Quizzes",
                                      style: _currentSelection == 2
                                          ? greysubtopic
                                          : yellowsubtopic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.fastOutSlowIn,
                              left: _selectorPositonX,
                              bottom: 5.0,
                              child: Container(
                                width: 30.0,
                                height: 4.0,
                                decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    color: Colors.orange[200]),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
