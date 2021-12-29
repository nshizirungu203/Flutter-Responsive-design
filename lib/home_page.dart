import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/responsive_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Flutter App"),
      ),
      body: SafeArea(
        child: ResponsiveWidget(

          mobile: Column(
            children: [
              buildBannerSlider(),
              
              buildIntroText(),
            ],
          ),
          tab: Row(
            children: [
              buildBannerSlider(),
              SizedBox(width: 20,),
              Expanded(child: buildIntroText()),
            ],
          ),
          ),
        ),
        /* LayoutBuilder(

          builder: (context, constraints) {
            if(constraints.maxWidth < 480){
              return Column(
                children: [
                  buildBannerSlider(),
                  buildIntroText()
                ],
              );
            }else{
              return Row(
                children: [
                  buildBannerSlider(),
                  SizedBox(width: 20,),
                  Expanded(child: buildIntroText())
                ],
              );
            }
          }
        ),*/
      );
  }

  Text buildIntroText() {
    return Text(
                  'Hey there, Dodods\n\Repo is an ecosystem of practical resources, we want to \nbuild high-quality mobile apps',
                  style: TextStyle(fontSize: 22),
                );
  }

  Container buildBannerSlider() {
    return Container(
                  width: 320,
                  height: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
                    borderRadius: BorderRadius.circular(12),
                  ),
                );
  }
}
