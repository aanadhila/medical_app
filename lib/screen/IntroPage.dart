import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '/model/intro.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final List<Intro> introList = [
    Intro(
      image: "assets/images/walkthrough1.png",
      title: "View and buy Medicine online",
      description: "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    ),
    Intro(
      image: "assets/images/walkthrough2.png",
      title: "Online medical & Healthcare",
      description: "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    ),
    Intro(
      image: "assets/images/walkthrough3.png",
      title: "Get Delivery on Time",
      description: "Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.",
    ),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Swiper.children(
        index: 0,
        autoplay: false,
        loop: false,
        pagination: SwiperPagination(
          margin: EdgeInsets.only(bottom: 20.0),
          builder: DotSwiperPaginationBuilder(
            color: Colors.grey,
            activeColor: Colors.blue,
            size: 10.0,
            activeSize: 10.0,
          ),
        ),
        control: SwiperControl(
          iconNext: null,
          iconPrevious: null
        ),
        children: _buildPage(context),
      ),
    );
  }

  List<Widget> _buildPage(BuildContext context) {
    List<Widget> widgets = [];
    for(int i=0; i<introList.length; i++) {
      Intro intro = introList[i];
      widgets.add(
        Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height/6,
          ),
          child: ListView(
            children: <Widget>[
              Image.asset(
                intro.image!,
                height: MediaQuery.of(context).size.height/3.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height/12.0,
                ),
              ),
              Center(
                child: Text(
                  intro.title!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height/20.0,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.height/20.0,
                ),
                child: Text(
                  intro.description!,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return widgets;
  }
}