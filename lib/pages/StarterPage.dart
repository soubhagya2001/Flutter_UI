import 'package:day1/main.dart';
import 'package:day1/pages/MyHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> with TickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation<double> _animation;



  bool _textVisible = true;
  @override
  void initState() {
  super.initState();
    // TODO: implement initState
    _animationController = AnimationController(vsync: this,
    duration: Duration(milliseconds: 100));

    _animation = Tween<double>(
      begin: 1.0,
      end: 25.0
    ).animate(_animationController);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  void _onTap(){
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((f) => Navigator.push(context, PageTransition(child: MyHomePage(),
        type: PageTransitionType.fade)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/food0.jpg'),
          fit: BoxFit.cover)
        ),

        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),

                ]
              )
            ),

          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Taking Order For Delivery',
                  style: TextStyle(color: Colors.white,
                  fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text("See restaurant nearby by \nadding location",
                  style: TextStyle(color: Colors.white , height: 1.4 ,
                  fontSize: 18) ,),
                SizedBox(height: 15,),
                ScaleTransition(scale: _animation,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(colors: [
                        Colors.yellow,
                        Colors.orange
                      ]

                      )
                  ),
                  child: AnimatedOpacity(
                    opacity: _textVisible?1.0:0.0,
                    duration: Duration(milliseconds: 50),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () => _onTap(),
                      child: Text('Start' ,
                        style: TextStyle(color: Colors.white ),),
                    ),
                  )
                ),),
                SizedBox(height: 30,),
                Align(
                  child: Text("Now Deliver To Your Door 24/7 ",
                  style: TextStyle(color: Colors.white , fontSize: 15),),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
