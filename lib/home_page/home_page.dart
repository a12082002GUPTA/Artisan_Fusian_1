import 'package:ar_code/svgimages/svg_images.dart';
import 'package:ar_code/widget/show_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/home_page_data.dart';
import '../style/home_page_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar(){
    return AppBar(
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent,
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelColor: Colors.black,
        labelColor: Colors.pink,
        tabs: [
          Text("All"),
          Text("Tables"),
          Text("Chairs"),
          Text("Sofas"),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Column(
        children: [
          Text("Welcome",
          style: HomeScreenStyles.appBaruppertitleStyles,),
          Text("Shopping",
          style: HomeScreenStyles.appBarbottomtitleStyles,),
        ],
      ),
      actions: [
        Text('Filter\t\t\t\t\t\t'),
        Text('Search....\t\t\t\t\t\t\t\t\t\t\t\t\t\t')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(children: [
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              ShowAllWidget(leftText: "New Arrival"),
              Padding(padding: EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(shrinkWrap: true,
                  primary: true,
                  itemCount: sigleProductData.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                  childAspectRatio: 0.7),
                  itemBuilder: (context,index){
                    return Container(

                    );
                  }),),
            ],
          ),
          Center(child: Text("2Page")),
          Center(child: Text("3Page")),
          Center(child: Text("4Page")),
        ],)
      ),
    );
  }
}
