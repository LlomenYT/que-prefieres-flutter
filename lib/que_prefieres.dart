import 'package:flutter/material.dart';

class QuePrefieresPage extends StatefulWidget {
  final String opcion1;
  final String opcion2;
  final String foto1;
  final String foto2;
  final Function() enAcierto;
  final Function() enFallo;

  const QuePrefieresPage({
    Key? key,
    required this.opcion1,
    required this.opcion2,
    required this.foto1,
    required this.foto2,
    required this.enAcierto,
    required this.enFallo,
  }) : super(key: key);

  @override
  _QuePrefieresPageState createState() => _QuePrefieresPageState();
}

class _QuePrefieresPageState extends State<QuePrefieresPage> {
  bool option1Selected = false;
  bool option2Selected = false;

  void _selectOption1() {
    if (!option1Selected && !option2Selected) {
      setState(() {
        option1Selected = true;
        option2Selected = false;
      });
      widget.enAcierto();
    }
  }

  void _selectOption2() {
    if (!option1Selected && !option2Selected) {
      setState(() {
        option1Selected = false;
        option2Selected = true;
      });
      widget.enFallo();
    }
  }

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile layout
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: _selectOption1,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: fullWidth,
                      height:
                          (option1Selected == false && option2Selected == false)
                              ? fullHeight * 0.5
                              : option1Selected
                                  ? fullHeight * 0.75
                                  : fullHeight * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.foto1),
                            fit: BoxFit.cover,
                            colorFilter: (option1Selected == false &&
                                    option2Selected == false)
                                ? ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.luminosity)
                                : option1Selected
                                    ? ColorFilter.mode(
                                        Colors.transparent, BlendMode.color)
                                    : ColorFilter.mode(
                                        Colors.black, BlendMode.color)),
                      ),
                      child: SizedBox(
                        width: fullWidth * 0.75,
                        child: Center(
                          child: Text(
                              widget.opcion1
                                  .toUpperCase(), // Convert text to uppercase
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight:
                                    FontWeight.bold, // Make the text bold
                                shadows: [
                                  Shadow(color: Colors.black, blurRadius: 2)
                                ], // Add black shadow
                              )),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _selectOption2,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: fullWidth,
                      height:
                          (option1Selected == false && option2Selected == false)
                              ? fullHeight * 0.5
                              : option2Selected
                                  ? fullHeight * 0.75
                                  : fullHeight * 0.25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.foto2),
                            fit: BoxFit.cover,
                            colorFilter: (option1Selected == false &&
                                    option2Selected == false)
                                ? ColorFilter.mode(
                                    Colors.black.withOpacity(0.3),
                                    BlendMode.luminosity)
                                : option2Selected
                                    ? ColorFilter.mode(
                                        Colors.transparent, BlendMode.color)
                                    : ColorFilter.mode(
                                        Colors.black, BlendMode.color)),
                      ),
                      child: SizedBox(
                        width: fullWidth * 0.75,
                        child: Center(
                          child: Text(
                              widget.opcion2
                                  .toUpperCase(), // Convert text to uppercase
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight:
                                    FontWeight.bold, // Make the text bold
                                shadows: [
                                  Shadow(color: Colors.black, blurRadius: 2)
                                ], // Add black shadow
                              )),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // Web layout
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: _selectOption1,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width:
                          (option1Selected == false && option2Selected == false)
                              ? fullWidth * 0.5
                              : option1Selected
                                  ? fullWidth * 0.75
                                  : fullWidth * 0.25,
                      height: fullHeight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.foto1),
                            fit: BoxFit.cover,
                            colorFilter: option1Selected
                                ? ColorFilter.mode(
                                    Colors.black, BlendMode.lighten)
                                : ColorFilter.mode(
                                    Colors.transparent, BlendMode.multiply)),
                      ),
                      child: Center(
                        child: Text(
                          widget.opcion1,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _selectOption2,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width:
                          (option1Selected == false && option2Selected == false)
                              ? fullWidth * 0.5
                              : option2Selected
                                  ? fullWidth * 0.75
                                  : fullWidth * 0.25,
                      height: fullHeight,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(widget.foto2),
                            fit: BoxFit.cover,
                            colorFilter: option1Selected
                                ? ColorFilter.mode(
                                    Colors.black, BlendMode.lighten)
                                : ColorFilter.mode(
                                    Colors.transparent, BlendMode.multiply)),
                      ),
                      child: Center(
                        child: Text(
                          widget.opcion2,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
