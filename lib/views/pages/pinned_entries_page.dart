import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/views/widgets/pinned_journal_card_widget.dart';

class PinnedEntriesPage extends StatelessWidget {
  const PinnedEntriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pinned Entries",
                        style: GoogleFonts.merriweather(fontSize: 22),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Your most cherished reflections",
                        style: GoogleFonts.karla(fontSize: 15),
                      ),
                    ],
                  ),
        
                  Icon(Icons.bookmark, color: Color.fromARGB(255, 169, 76, 0)),
                ],
              ),
              SizedBox(height: 35),
              PinnedJournalCardWidget(),
              SizedBox(height: 15,),
              PinnedJournalCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
