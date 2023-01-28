import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final _font = GoogleFonts.roboto();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Text(
              'Introducing Communities',
              style: _font,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 350,
              child: Text(
                '    Easily Organise your related groups amd send announcements.',
                style: _font,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 350,
              child: Text(
                '  Now, your communities, like neighbourhoods or schools, can have',
                style: _font,
              ),
            ),
            Text(
              'their own space.',
              style: _font,
            ),
            const SizedBox(
              height: 35,
            ),
            InkWell(
              enableFeedback: false,
              child: Container(
                width: 300,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Text(
                  'Start your community',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
