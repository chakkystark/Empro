import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routename = '/HomePage';

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  static const _kTabPages = <Widget>[
    Center(
        child: Text(
      'Screen-1',
      style: TextStyle(color: Colors.red),
    )),
    Center(
        child: Text(
      'Screen-1',
      style: TextStyle(color: Colors.green),
    )),
    Center(
        child: Text(
      'Screen-1',
      style: TextStyle(color: Colors.teal),
    )),
  ];
  static const _kTabs = <Tab>[
    Tab(icon: Icon(Icons.home), text: 'Accounts'),
    Tab(icon: Icon(Icons.help), text: 'Help'),
    Tab(icon: Icon(Icons.supervisor_account_sharp), text: 'Home'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
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
      body: TabBarView(
        controller: _tabController,
        children: _kTabPages,
      ),
      bottomNavigationBar: Material(
        color: Colors.red[900],
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}
