import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/views/pages/journal_entry_page.dart';

class JournalCardWidget extends StatelessWidget {
  const JournalCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => JournalEntryPage()),
          );
        },
        child: Ink(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(166, 233, 233, 233),
            // borderRadius: BorderRadius.circular(10.0),
            border: BoxBorder.fromLTRB(
              bottom: BorderSide(width: 0),
              right: BorderSide(width: 0),
              top: BorderSide(width: 0),
              left: BorderSide(
                width: 4,
                color: const Color.fromARGB(255, 255, 162, 128),
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'A Morning of Reflection',
                      style: GoogleFonts.sourceSerif4(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 50),
                    Text(
                      'Oct 10',
                      style: GoogleFonts.karla(color: Colors.black54),
                    ),
                  ],
                ),
                Divider(height: 40),
                Text(
                  'Woke up to hear the sound filtering through the forest, I lay awake in bed enjoying the view from...',
                  style: GoogleFonts.karla(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 123, 122, 122),
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Text(
                        '#morning',
                        style: GoogleFonts.karla(fontWeight: FontWeight.w500),
                      ),
                    ),

                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      child: Text(
                        '#clarity',
                        style: GoogleFonts.karla(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
