import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/views/widgets/journal_card_widget.dart';

class JournalFeedPage extends StatelessWidget {
  const JournalFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Journal',
                style: GoogleFonts.merriweather(fontSize: 25, fontWeight: FontWeight.w500,),
              ),
              SizedBox(height: 5),
              Text(
                'A quiet place for your thoughts.',
                style: GoogleFonts.karla(color: const Color.fromARGB(149, 0, 0, 0)),
              ),
              
              SizedBox(height: 20),
              
             JournalCardWidget(),
             SizedBox(height: 20,),
             JournalCardWidget()
            ],
          ),
        ),
      ),
    );
  }
}
