import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';
import 'package:maze/theme/coreimport.dart';


class LearningLevelScreen extends StatefulWidget {
  const LearningLevelScreen({Key? key}) : super(key: key);

  @override
  State<LearningLevelScreen> createState() => _LearningLevelScreenState();
}

class _LearningLevelScreenState extends State<LearningLevelScreen> {
  @override
  Widget build(BuildContext context) {
    bool isSmall = MediaQuery.of(context).size.width < 350;
    return Scaffold(
      body: Container(
          margin:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 3.h),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical:2.h,horizontal: 4.w),
                      child: Image.asset("assets/images/learningScreen/mapSvg/mapVertical.png")),
                  Positioned(
                      bottom: 0,
                      left: 35.w,
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                  Positioned(
                      bottom: 18.h,
                      right: 10.w,
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                  Positioned(
                      bottom: 21.h,
                      left: 10.w,
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                  Positioned(
                      bottom: 39.h,
                      left: 50.w,
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                  Positioned(
                      bottom: 60.h,
                      left: 35.w,
                      child: const CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                  Positioned(
                      bottom: 86.h,
                      right: 18.w,
                      child: CircleAvatar(backgroundColor: Colors.white,radius: 32.0)),
                ],
              ),
            ],
          )),   // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void initState() {
    fillTestData();
  }

  List<PointModel> points = [];

  void fillTestData() {
    for(int i = 0; i<100 ; i++){
      points.add(PointModel(100,testWidget(i)));
    }
  }


  Widget testWidget(int order) {
    return InkWell(
      child: Text("$order",
          style: const TextStyle(color: Colors.black,
              fontSize: 15)),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Text("Point $order"),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("OK"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
