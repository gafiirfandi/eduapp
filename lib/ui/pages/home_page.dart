part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  final maxProgress = 100.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));

    _animation =
        Tween<double>(begin: 0, end: maxProgress).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return GeneralPage(
      title: 'Home',
      backColor: maincolor,
      child: Column(
        children: [
          ////!!!!Body
          Container(
            margin: EdgeInsets.only(top: 30),
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
                          "Topics",
                          style: topicsfont,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Beginner A1",
                          style: bluesubtopic,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: CircleProgressWid(
                              animation: _animation,
                              maxProgress: maxProgress,
                              animationController: _animationController,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleProgressWid(
                              animation: _animation,
                              maxProgress: maxProgress,
                              animationController: _animationController,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: CircleProgressWid(
                              animation: _animation,
                              maxProgress: maxProgress,
                              animationController: _animationController,
                            ),
                          ),
                        ],
                      ),
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

class CircleProgressWid extends StatelessWidget {
  const CircleProgressWid({
    Key key,
    @required Animation<double> animation,
    @required this.maxProgress,
    @required AnimationController animationController,
  })  : _animation = animation,
        _animationController = animationController,
        super(key: key);

  final Animation<double> _animation;
  final double maxProgress;
  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        foregroundPainter: CircleProgress(_animation.value),
        child: Container(
          width: 150,
          height: 200,
          child: GestureDetector(
            onTap: () {
              if (_animation.value == maxProgress) {
                _animationController.reverse();
              } else {
                _animationController.forward();
              }
            },
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 7),
                      child: Text(
                        "Word",
                        style: titletopic,
                      ),
                    ),
                    Text(
                      "25 Lesson",
                      style: fontgreynormal,
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        "10 Quiz",
                        style: fontgreynormal,
                      ),
                    ),
                    Text(
                      '${_animation.value.toInt()}%',
                      style: fontpersen,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
