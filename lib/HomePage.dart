import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  final _controller = PageController();
  String gender = "Male";
  int discount = 10;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  bool status6 = false;
  bool status7 = false;
  bool status8 = false;
  List x = ["1", "2", "3", "4", "5"];
  int qty1 = 0;
  int qty2 = 0;
  int qty3 = 0;
  int qty4 = 0;
  int qty5 = 0;
  int qty6 = 0;
  int qty7 = 0;
  int qty8 = 0;
  int qty9 = 0;
  int qty10 = 0;
  int qty11 = 0;
  int qty12 = 0;
  int total = 1;
  int fqty = 1;
  int val = 0;
  double discounttt = 0;
  double gst = 0;
  double famount = 0;
  String folderpath = "";
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    total = 0;
    discounttt = 0;
    gst = 0;
    famount = 0;
    // getpermission();
    // _createFolder();
  }

  void disc(int d) {
    discount = d;
  }

  void Tamount(bool statusssx, int price, int qt) {
    setState(() {
      if (statusssx == true) {
        total += price;
      } else {
        total -= price;
      }

      gst = total * 18 / 100;

      if (discount == 10) {
        discounttt = (((total + gst) * discount) / 100);
      }
      if (discount == 5) {
        discounttt = (((total + gst) * discount) / 100);
      }

      famount = (total + gst) - discounttt;
    });
  }

  void qtycount(bool st, int qty) {
    if (st == true) {
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SideMenu(
            key: _endSideMenuKey,
            inverse: true,
            // end side menu
            background: Colors.green[700],
            type: SideMenuType.slideNRotate,
            menu: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: buildMenu(),
            ),
            onChange: (_isOpened) {
              setState(() => isOpened = _isOpened);
            },
            child: SideMenu(
                key: _sideMenuKey,
                menu: buildMenu(),
                background: Color(0xFF3D8361),
                type: SideMenuType.slideNRotate,
                onChange: (_isOpened) {
                  setState(() => isOpened = _isOpened);
                },
                child: IgnorePointer(
                  ignoring: isOpened,
                  child: Scaffold(
                    body: Container(
                      color: Color(0xFF9DAD7F),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 0,
                              child: Card(
                                color: Colors.transparent,
                                elevation: 30,

                                margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
                                // margin: EdgeInsets.fromLTRB(10, 10, 10, 800),
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Color(0xFF557174)),
                                  // padding: EdgeInsets.all(1),
                                  // margin: EdgeInsets.all(50),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              toggleMenu();
                                            });
                                          },
                                          icon: Icon(Icons.menu)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Burger King",
                                          style: TextStyle(
                                              color: Color(0xFFEEF2E6),
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.search))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              flex: 3,
                              child:
                                  PageView(controller: _controller, children: [
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty1 != 0) {
                                                  qty1--;

                                                  Tamount(false, 240, qty1);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty1',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty1++;
                                                Tamount(true, 240, qty1);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Browniee",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 240rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(130, 0, 50, 180),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/brownie.png"),
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty2 != 0) {
                                                  qty2--;

                                                  Tamount(false, 150, qty2);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty2',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty2++;
                                                Tamount(true, 150, qty2);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Burger",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 150rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 185),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 80,
                                      child: Image(
                                        image: AssetImage("Photos/burgger.png"),
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty3 != 0) {
                                                  qty3--;

                                                  Tamount(false, 200, qty3);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty3',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty3++;
                                                Tamount(true, 200, qty3);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Chessy 7 Pizza",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 200rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(120, 0, 50, 180),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/pizza.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty4 != 0) {
                                                  qty4--;

                                                  Tamount(false, 100, qty4);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty4',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty4++;
                                                Tamount(true, 100, qty4);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Garlic Bred",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 100rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 180),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image:
                                            AssetImage("Photos/garlicbred.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty5 != 0) {
                                                  qty5--;

                                                  Tamount(false, 100, qty5);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty5',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty5++;
                                                Tamount(true, 100, qty5);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Fries",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 100rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 180),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/fries.png"),
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty6 != 0) {
                                                  qty6--;

                                                  Tamount(false, 200, qty6);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty6',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty6++;
                                                Tamount(true, 200, qty6);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "SandWich",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 200rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 180),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image:
                                            AssetImage("Photos/sandwich.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty7 != 0) {
                                                  qty7--;

                                                  Tamount(false, 200, qty7);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty7',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty7++;
                                                Tamount(true, 200, qty7);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "ThikShake",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 200rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 160),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image:
                                            AssetImage("Photos/thickshake.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty8 != 0) {
                                                  qty8--;

                                                  Tamount(false, 40, qty8);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty8',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty8++;
                                                Tamount(true, 40, qty8);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "CokoCola",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 40rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 160),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image:
                                            AssetImage("Photos/cococoal.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty9 != 0) {
                                                  qty9--;

                                                  Tamount(false, 40, qty9);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty9',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty9++;
                                                Tamount(true, 40, qty9);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sprite",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 40rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 160),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/sprite.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty10 != 0) {
                                                  qty10--;

                                                  Tamount(false, 40, qty10);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty10',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty10++;
                                                Tamount(true, 40, qty10);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sting",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 40rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 160),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/sting.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ]),
                                Stack(children: [
                                  Container(
                                    decoration: ShapeDecoration(
                                        color: Color(0xFF7D8A65),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    margin: EdgeInsets.fromLTRB(50, 50, 50, 0),

                                    // margin: EdgeInsets.all(50),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(150, 250, 150, 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                if (qty11 != 0) {
                                                  qty11--;

                                                  Tamount(false, 40, qty11);
                                                }
                                              });
                                            },
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 3),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 2),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.lightGreen),
                                            child: Text(
                                              '$qty11',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                            onTap: () {
                                              setState(() {
                                                qty11++;
                                                Tamount(true, 40, qty11);
                                              });
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 25,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.fromLTRB(80, 100, 80, 50),
                                    child: Column(children: [
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "ThumbsUp",
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Only 40rs",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 5),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    color: Colors.transparent,
                                  ),
                                  Container(
                                    height: 180,
                                    width: 180,
                                    color: Colors.transparent,
                                    margin:
                                        EdgeInsets.fromLTRB(110, 0, 50, 160),
                                    child: Card(
                                      color: Colors.transparent,
                                      elevation: 50,
                                      child: Image(
                                        image: AssetImage("Photos/thumsup.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ]),
                              ]),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: ShapeDecoration(
                                    color: Color(0xFF7D8A65),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                margin: EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("Total Ordered Value : ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 15)),
                                            Text("GST 18 %  :",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 15)),
                                            Text("Discount $discount % :",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 15)),
                                            Text("Total Ammount :",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 15)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        color: Colors.transparent,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                                "${total.toStringAsPrecision(5)}         ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 20)),
                                            Text(
                                                "${gst.toStringAsPrecision(5)}    [+]",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 20)),
                                            Text(
                                                "${discounttt.toStringAsPrecision(5)}    [-]",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 20)),
                                            Text(
                                                "${famount.toStringAsPrecision(5)}        ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 1,
                                                    fontSize: 20)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.red),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(5)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                  side: BorderSide(
                                                      color: Colors.red)))),
//                                       onPressed: () {
//                                         capturePng().then((value) async {
//                                           String pdfname =
//                                               "menu${Random().nextInt(10000)}${Random().nextInt(10000)}.jpg";
//                                           String pdfpath = "$folderpath/$pdfname";
//                                           File file = File(pdfpath);
//                                           file.writeAsBytes(value);
//
//                                           final pdf = pw.Document();
//
//                                           final image = pw.MemoryImage(
//                                             File(pdfpath).readAsBytesSync(),
//                                           );
//
//                                           pdf.addPage(pw.Page(build: (pw.Context context) {
//                                             return pw.Center(
//                                               child: pw.Image(image),
//                                             ); // Center
//                                           }));
//                                           Share.shareFiles(['${pdf}'],
//                                               text: 'Today`s Menu '); // Page // Page
//                                           // On Flutter, use the [path_provider](https://pub.dev/packages/path_provider) library:
// //   final output = await getTemporaryDirectory();
// //   final file = File("${output.path}/example.pdf");
//                                         });
//                                       },
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.save_alt),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Save as PDF"),
                                        ],
                                      )),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green),
                                          padding: MaterialStateProperty.all(
                                              EdgeInsets.all(5)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                  side: BorderSide(
                                                      color: Colors.red)))),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.fastfood_outlined),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text("Order Now !"),
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                ))));
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  backgroundImage: AssetImage("Photos/profile.jpg"),
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Umang",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text("Home"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: const Text("Profile"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.monetization_on,
                size: 20.0, color: Colors.white),
            title: const Text("Wallet"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.shopping_cart,
                size: 20.0, color: Colors.white),
            title: const Text("Cart"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.star_border, size: 20.0, color: Colors.white),
            title: const Text("Favorites"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
