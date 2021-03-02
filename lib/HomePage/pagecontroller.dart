import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  static const routename = '/mypageView';
  createState() {
    return StateKeeper();
  }
}

class StateKeeper extends State<MyPageView> {
  PageController controller =
      PageController(viewportFraction: 1, keepPage: true);
  var currentPageValue = 0.0;
  var mItemCount = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  void changePageViewPostion(int whichPage) {
    if (controller != null) {
      whichPage = whichPage + 1; // because position will start from 0
      double jumpPosition = MediaQuery.of(context).size.width / 2;
      double orgPosition = MediaQuery.of(context).size.width / 2;
      for (int i = 0; i < mItemCount; i++) {
        controller.jumpTo(jumpPosition);
        if (i == whichPage) {
          break;
        }
        jumpPosition = jumpPosition + orgPosition;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageView position change'),
        ),
        body: PageView.builder(
          controller: controller,
          itemBuilder: (context, position) {
            return Container(
              color: position % 2 == 0 ? Colors.blue : Colors.pink,
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "Page " + (position + 1).toString(),
                      style: TextStyle(color: Colors.white, fontSize: 22.0),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: FloatingActionButton(
                          elevation: 0.0,
                          child: new Icon(Icons.check),
                          backgroundColor: new Color(0xFFE57373),
                          onPressed: () {
                            changePageViewPostion(5);
                          }),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: mItemCount,
        ));
  }
}
