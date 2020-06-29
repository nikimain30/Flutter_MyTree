import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketapp/models/tutorial/tutorial_model.dart';
import 'package:pocketapp/widgets/tutorial/page_indicator_view.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff97bf97),
      body: TutorialView(),
    );
  }
}

class TutorialView extends StatefulWidget {
  TutorialView({Key key}) : super(key: key);

  @override
  TutorialViewState createState() => TutorialViewState();
}

class TutorialViewState extends State<TutorialView> {
  PageController _pageController;
  CrossFadeState _bottomState = CrossFadeState.showFirst;
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_pageListener);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
  }

  void _pageListener() {
    if (_pageController.hasClients) {
      double page = _pageController.page ?? _pageController.initialPage;
      setState(() {
        if (page >= 1.5) {
          _bottomState = CrossFadeState.showSecond;
        } else {
          _bottomState = CrossFadeState.showFirst;
        }
      });
    }
  }

  void navigateLogin () {
    Navigator.of(context).pushNamed("/register");
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
//                SizedBox(height: 150.0),
//                Padding(padding: const EdgeInsets.only(
//                    top: 0, left: 20.0, right: 0, bottom: 0),
//                child: new  CircleAvatar(
//                  backgroundColor: Color(0xFFf7fbff),
//                  backgroundImage: AssetImage(pages[index].assetImagePath),
//                  radius: 100.0,
//                ),
//                ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: navigateLogin,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
                          child: Text(
                            'Log in >',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w900,
                                fontSize: 19.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 150.0, left: 30.0, right: 0, bottom: 0),
                      child: Text(
                        pages[index].titleText,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: pages[index].dividerColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 40.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 30.0, right: 250.0, bottom: 0),
                      child: Expanded(
                          child: Divider(
                        thickness: 5.0,
                        color: pages[index].dividerColor,
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 30.0, right: 0, bottom: 0),
                      child: Text(
                        pages[index].subtitleText,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 10.0, right: 0, bottom: 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: 50.0,
                          width: 100.0,
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            child: PageViewIndicator(
                              controller: _pageController,
                              pageCount: 3,
                              color: pages[index].dividerColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 0.0, right: 0, bottom: 0),
                      child: FlatButton(
                        color: pages[index].dividerColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                        ),
                        onPressed: navigateLogin,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 30.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                                color: pages[index].textColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
