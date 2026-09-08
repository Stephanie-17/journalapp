import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/views/widget_tree.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/splashImg.png",
                fit: BoxFit.cover,
                height: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topStart,
                    end: AlignmentGeometry.bottomEnd,
                    colors: [
                      Colors.transparent,
                      Colors.white.withValues(alpha: 0.5),
                      Colors.white,
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: .center,
                  
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Image.asset("assets/images/logo.png", height: 80,),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Terra Narratives",
                    style: GoogleFonts.merriweather(
                      fontSize: 25,
                      color: Color.fromARGB(255, 169, 76, 0),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Your story. preserved in warmth.",
                    style: GoogleFonts.karla(
                      color: Color.fromARGB(255, 84, 77, 71),
                    ),
                  ),

                  SizedBox(height: 15),
                  Center(
                    child: SizedBox(
                      width: 350,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return WidgetTree();
                              },
                            ),
                          );
                        },
                        child: Text('Get Started', style: GoogleFonts.karla(fontWeight: FontWeight.bold, fontSize: 18),),
                      ),
                    ),
                  ),

                  SizedBox(height: 55),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
