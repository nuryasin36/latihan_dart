import 'package:flutter/material.dart';

class IconGridView extends StatelessWidget {
  final List<IconData> icons = [
    Icons.pets,
    Icons.pregnant_woman_rounded,
    Icons.record_voice_over_rounded,
    Icons.rounded_corner,
    Icons.rowing_rounded,
    Icons.timeline,
    Icons.update_outlined,
    Icons.access_time_filled_sharp,
    Icons.pan_tool_rounded,
    Icons.euro,
    Icons.g_translate,
    Icons.remove_shopping_cart,
    Icons.restore_page,
    Icons.speaker_notes_off,
    Icons.delete_forever,
    Icons.accessibility_new,
    Icons.check_circle_outline,
    Icons.delete_outline_rounded,
    Icons.done_outline_rounded,
    Icons.maximize_rounded,
    Icons.minimize_rounded,
    Icons.offline_bolt_rounded,
    Icons.swap_horizontal_circle,
    Icons.accessible_forward_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icons GridView'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
        ),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          final icon = icons[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                padding: EdgeInsets.all(12.0),
                child: Icon(icon, size: 36.0, color: Colors.white),
              ),
              SizedBox(height: 8.0),
            ],
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IconGridView(),
  ));
}
