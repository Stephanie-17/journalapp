import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JournalEntryPage extends StatelessWidget {
  const JournalEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.bookmark, color: Colors.grey,)
          ),
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.delete))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(children: [
              Container(
                padding: EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text("October 24, 2026", style: GoogleFonts.karla(fontSize: 12),),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(100)

                          ),
                          child: Icon(Icons.spa,color: Colors.white, ),
                        )
                      ],
                    ),
                     SizedBox(
                      height: 20,
                     ),
                      Text("Morning Reflections by the coast", style: GoogleFonts.merriweather(fontSize: 24),),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        spacing: 5,
                        children: [
                          Chip(label: Text("#reflection"), shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(20)), padding: EdgeInsets.all(0),),
                          Chip(label: Text("#travel"), shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(20)), padding: EdgeInsets.all(0),)
                        ],
                      ),
                      SizedBox(
                      height: 20,
                     ),
                     Text("Woke up early today before the sun was fully up. The air was crisp, carrying that distinct saltiness that immediately clears the mind. Sitting on the porch with a hot cup of coffee, watching the horizon slowly turn from deep charcoal to soft lavender, I felt a profound sense of stillness. Lately, the noise of daily obligations has felt overwhelming, like a constant hum in the background. But here, the rhythm of the waves seems to sync up with my breathing, slowing everything down. It’s strange how a change in physical environment can so drastically shift internal perspective. I spent some time thinking about the project I've been avoiding. The resistance isn't about the work itself, but fear of it not being perfect. I realized that trying to control every outcome is what's paralyzing me. The goal for today is just to start. No expectations, just movement. The rest of the morning is open. I might walk down to the beach, or perhaps just stay here and read. The important thing is that I feel present, grounded in this specific moment, rather than mentally living in tomorrow's anxieties.", style: GoogleFonts.karla(fontSize: 17),)
                  ],
                ),
              ),
             ]),
          ),
        ),
      ),
    );
  }
}
