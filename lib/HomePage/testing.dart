// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
// import 'package:flutter/material.dart';

// class ConvexAppExample extends StatefulWidget {
//   // const ConvexAppExample({Key key}) : super(key: key);

//   static const routename = '/Convex';

//   @override
//   _ConvexAppExampleState createState() => _ConvexAppExampleState();
// }

// class _ConvexAppExampleState extends State<ConvexAppExample> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 70,
//         automaticallyImplyLeading: false,
//         actions: <Widget>[
//           Column(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(
//                   Icons.group,
//                 ),
//                 onPressed: () {},
//                 color: Colors.red,
//               ),
//               Text(
//                 'Refer',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),
//           Column(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(
//                   Icons.card_giftcard,
//                 ),
//                 onPressed: () {},
//                 color: Colors.red,
//               ),
//               Text(
//                 '5000 [Silver]',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),
//           Column(
//             children: <Widget>[
//               IconButton(
//                 icon: Icon(Icons.all_inbox),
//                 onPressed: () {},
//                 color: Colors.red,
//               ),
//               Text(
//                 'Inbox',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ],
//           ),
//         ],
//         backgroundColor: Colors.white,
//         title: Container(
//           width: 150,
//           child: Image.asset(
//             'assets/images/logo.png',
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       body: Center(
//           child: TextButton(
//               child: Text('Click to show full example'),
//               onPressed: () => Navigator.of(context).pushNamed('/mypageView'))),
//       bottomNavigationBar: ConvexAppBar(
//         style: TabStyle.reactCircle,
//         backgroundColor: Colors.red,
//         items: [
//           TabItem(
//             icon: Icons.home,
//             title: 'Accounts',
//           ),
//           TabItem(icon: Icons.help, title: 'Help'),
//           TabItem(
//             icon: Icons.supervisor_account_sharp,
//             title: 'Home',
//           ),
//         ],
//         initialActiveIndex: 2,
//         onTap: (int i) => print('click index=$i'),
//       ),
//     );
//   }
// }

//
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyBottomBarDemo extends StatefulWidget {
  static const routename = '/mybottom';
  @override
  _MyBottomBarDemoState createState() => new _MyBottomBarDemoState();
}

class _MyBottomBarDemoState extends State<MyBottomBarDemo> {
  int _pageIndex = 0;
  PageController _pageController;

  List<Widget> tabPages = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.group,
                ),
                onPressed: () {},
                color: Colors.red,
              ),
              Text(
                'Refer',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.card_giftcard,
                ),
                onPressed: () {},
                color: Colors.red,
              ),
              Text(
                '5000 [Silver]',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.all_inbox),
                onPressed: () {},
                color: Colors.red,
              ),
              Text(
                'Inbox',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        title: Container(
          width: 150,
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        initialActiveIndex: _pageIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.red,
        items: [
          TabItem(
            icon: Icons.home,
            title: 'Accounts',
          ),
          TabItem(icon: Icons.help, title: 'Help'),
          TabItem(
            icon: Icons.supervisor_account_sharp,
            title: 'Home',
          ),
        ],
      ),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("Screen 1")),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text("Screen 2")),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _pageIndex = 0;
  PageController _pagescreenController;
  List<Widget> screen2pages = [
    // Container(
    //     height: 50,
    //     width: double.infinity,
    //     child: Image.asset('assets/images/slider1.jpg')),
    // Container(
    //     height: 50,
    //     width: double.infinity,
    //     child: Image.asset('assets/images/slider2.jpg')),
    // Container(
    //     height: 50,
    //     width: double.infinity,
    //     child: Image.asset('assets/images/slider3.jpg')),
  ];
  @override
  void initState() {
    super.initState();
    _pagescreenController = PageController(initialPage: _pageIndex);
  }

  @override
  void dispose() {
    _pagescreenController.dispose();
    super.dispose();
  }

  void onScreenPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onScreenTabTapped(int index) {
    this._pagescreenController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // PageView(
      //   children: screen2pages,
      //   onPageChanged: onScreenPageChanged,
      //   controller: _pagescreenController,
      // ),
      SizedBox(height: 20),
      Row(
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                // maxRadius: 30,
                backgroundColor: Colors.white,
                child: IconButton(
                  iconSize: 40,
                  color: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, '/qrcode');
                  },
                  icon: Icon(Icons.qr_code),
                ),
                radius: 30,
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: CircleAvatar(
                maxRadius: 30,
              )),
          Expanded(
              flex: 2,
              child: CircleAvatar(
                maxRadius: 30,
              )),
          Expanded(
              flex: 2,
              child: CircleAvatar(
                maxRadius: 30,
              )),
          Expanded(
              flex: 2,
              child: CircleAvatar(
                maxRadius: 30,
              )),
        ],
      )
    ]);
  }
}
