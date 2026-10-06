import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:journalapp/data/journal_store.dart';
import 'package:journalapp/models/journal_app_models.dart';

class NewJournalEntryPage extends StatefulWidget {
  const NewJournalEntryPage({super.key});

  @override
  State<NewJournalEntryPage> createState() => _NewJournalEntryPageState();
}

final _entryTitleController = TextEditingController();
final _entryBodyController = TextEditingController();

class _NewJournalEntryPageState extends State<NewJournalEntryPage> {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.now().toString();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: const Color.fromARGB(255, 221, 220, 220),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$date ",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 4,
                    fontSize: 10,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _entryTitleController,
                  cursorColor: const Color.fromARGB(255, 85, 85, 85),
                  style: GoogleFonts.merriweather(
                    color: const Color.fromARGB(255, 85, 85, 85),
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                  ),

                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 224, 224, 224),
                      ),
                    ),
                    hintStyle: GoogleFonts.merriweather(
                      color: const Color.fromARGB(255, 224, 224, 224),
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),

                    hintText: "Title your entry...",
                  ),
                ),

                SizedBox(height: 35),

                Text(
                  "How are you feeling?",
                  style: GoogleFonts.karla(
                    fontWeight: FontWeight.w400,

                    color: const Color.fromARGB(255, 80, 58, 42),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    MoodButton(
                      icon: Icons.sentiment_very_satisfied,
                      label: "Great",
                      iconBackgroundColor: const Color.fromARGB(
                        255,
                        152,
                        111,
                        94,
                      ),
                      iconColor: Colors.white,
                      onPressed: () {},
                    ),

                    MoodButton(
                      icon: Icons.sentiment_satisfied,
                      label: "Good",
                      iconBackgroundColor: const Color.fromARGB(
                        255,
                        4,
                        228,
                        228,
                      ),
                      iconColor: Colors.black,
                      onPressed: () {},
                    ),

                    MoodButton(
                      icon: Icons.sentiment_neutral,
                      label: "Neutral",
                      iconBackgroundColor: const Color.fromARGB(
                        255,
                        218,
                        190,
                        179,
                      ),
                      iconColor: Colors.black,
                      onPressed: () {},
                    ),
                    MoodButton(
                      icon: Icons.sentiment_dissatisfied,
                      label: "Rough",
                      iconBackgroundColor: const Color.fromARGB(
                        255,
                        249,
                        189,
                        165,
                      ),
                      iconColor: Colors.black,
                      onPressed: () {},
                    ),
                    MoodButton(
                      icon: Icons.sentiment_very_dissatisfied,
                      label: "Hard",
                      iconBackgroundColor: const Color.fromARGB(
                        255,
                        181,
                        55,
                        6,
                      ),
                      iconColor: Colors.white,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 35),

                TextField(
                  controller: _entryBodyController,
                  maxLines: 20,
                  minLines: 5,
                  cursorColor: Colors.black,
                  style: GoogleFonts.karla(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Write your thoughts...",
                    hintStyle: GoogleFonts.karla(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 189, 188, 188),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 189, 188, 188),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "Tags",
                  style: GoogleFonts.karla(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromARGB(255, 80, 58, 42),
                  ),
                ),

                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  children: [
                    Chip(
                      label: Text("Personal"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                    Chip(
                      label: Text(
                        "Work",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Color.fromARGB(255, 169, 76, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                    Chip(
                      label: Text("Gratitude"),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),

                    Chip(
                      label: Icon(Icons.add, size: 20),
                      padding: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(100),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FilledButton(
                      onPressed: () {
                        if (_entryTitleController.text.isNotEmpty &&
                            _entryBodyController.text.isNotEmpty) {
                          journalStore.addEntry(
                            Journal(
                              id: DateTime.now().second,
                              title: _entryTitleController.text,
                              mood: "angry",
                              body: _entryBodyController.text,
                              isPinned: false,
                              tags: ['Work'],
                            ),
                          );

                          setState(() {
                            _entryTitleController.clear();
                            _entryBodyController.clear();
                          });
                        }
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(0),
                          ),
                        ),
                      ),
                      child: Text("Save Entry", style: TextStyle(fontSize: 16)),
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

class MoodButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconBackgroundColor;
  final Color iconColor;
  final VoidCallback onPressed;
  const MoodButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.all(2)),
        backgroundColor: WidgetStateProperty.all(
          Color.fromARGB(255, 255, 255, 255),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
      ),

      child: Column(
        children: [
          IconButton.filled(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(iconBackgroundColor),
            ),

            onPressed: onPressed,
            icon: Icon(icon),
            color: iconColor,
            iconSize: 25,
          ),
          Text(
            label,
            style: GoogleFonts.karla(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: const Color.fromARGB(255, 107, 107, 107),
            ),
          ),
        ],
      ),
    );
  }
}
