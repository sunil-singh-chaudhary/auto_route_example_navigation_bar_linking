import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _ScreenCState();
}

class _ScreenCState extends State<DashBoard> {
  int currentindex = 0;
  final controller = PageController(initialPage: 0);
  List<List<String>> pageData = [
    ['Text 0', 'Text 1', 'Text 2'],
    ['Item 0', 'Item 4', 'Item 5'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.backspace_sharp, color: Colors.black),
        title: const Text('LeaderBoard', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProfilewidget(),
          _buildButtonItems(),
          _builderpageView(),
        ],
      ),
    );
  }

  Container _buildProfilewidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      height: 30.h,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.w),
              bottomRight: Radius.circular(10.w))),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
            width: double.infinity,
            child: const CircleAvatar(child: Icon(Icons.abc_rounded)),
          ),
          Text(
            'Satayam',
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
          ),
          buttonsInfowidget(),
        ],
      ),
    );
  }

  Container _buildButtonItems() {
    return Container(
      margin: EdgeInsets.only(top: 2.h),
      height: 7.h,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: currentindex == 0 ? Colors.amber : Colors.pink,
            height: 6.h,
            width: 30.w,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        currentindex == 0 ? Colors.green : Colors.pink),
                onPressed: () {
                  gotonextpage(0);
                },
                child: const Text(
                  "ONE",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
              height: 6.h,
              width: 30.w,
              color: currentindex == 0 ? Colors.pink : Colors.green,
              child: TextButton(
                  onPressed: () {
                    gotonextpage(1);
                  },
                  child: const Text("TWO",
                      style: TextStyle(color: Colors.white)))),
        ],
      ),
    );
  }

  Expanded _builderpageView() {
    return Expanded(
      //use expanded here so it will work on bottomnavigationbar and overflow errro not shown
      child: Container(
        color: Colors.white30,
        child: PageView.builder(
          onPageChanged: pageChanged,
          controller: controller,
          itemCount: pageData.length,
          itemBuilder: (context, outerindex) {
            return ListView.builder(
              itemCount: pageData[outerindex].length,
              itemBuilder: (context, innerindex) {
                return ListTile(
                  leading: CircleAvatar(child: Text('$innerindex')),
                  title: Text('Text ${pageData[outerindex][innerindex]}'),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Container buttonsInfowidget() {
    return Container(
      height: 14.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(2.h))),
            height: 7.h,
            width: 30.w,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                )),
                SizedBox(
                    child: Text(
                  'Download',
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.all(Radius.circular(2.h))),
            height: 7.h,
            width: 30.w,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: Text(
                  'Second',
                  style: TextStyle(color: Colors.white),
                )),
                SizedBox(
                    child: Text(
                  'Download',
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void pageChanged(int value) {
    setState(() {
      currentindex = value;
    });
  }

  void gotonextpage(int currentindex) {
    controller.animateToPage(currentindex,
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
