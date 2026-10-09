import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? sex = 'male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gender Selection Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Gender: '),
            const SizedBox(width: 8),
            Row(
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val;
                    });
                  },
                ),
                const Text('Male'),
              ],
            ),
            const SizedBox(width: 16),
            Row(
              children: [
                Radio<String>(
                  value: 'female',
                  groupValue: sex,
                  onChanged: (String? val) {
                    setState(() {
                      sex = val;
                    });
                  },
                ),
                const Text('Female'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/* ------------------------------------------------------------------
 * Versi terbaru (Flutter 3.35+) memakai RadioGroup. Ganti Row di dalam
 * body dengan potongan berikut jika ingin menghilangkan warning:
 *
 * RadioGroup<String>(
 *   groupValue: sex,
 *   onChanged: (String? val) {
 *     setState(() {
 *       sex = val;
 *     });
 *   },
 *   child: Row(
 *     mainAxisAlignment: MainAxisAlignment.center,
 *     children: const [
 *       Text('Gender: '),
 *       SizedBox(width: 8),
 *       Radio<String>(value: 'male'),
 *       Text('Male'),
 *       SizedBox(width: 16),
 *       Radio<String>(value: 'female'),
 *       Text('Female'),
 *     ],
 *   ),
 * ),
 * ------------------------------------------------------------------ */
