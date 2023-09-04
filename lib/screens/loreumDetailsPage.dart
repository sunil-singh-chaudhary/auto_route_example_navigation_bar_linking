import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoreumDetailsPage extends StatefulWidget {
  int? index;
  LoreumDetailsPage({super.key, required int this.index});

  @override
  State<LoreumDetailsPage> createState() => _LoreumDetailsPageState();
}

class _LoreumDetailsPageState extends State<LoreumDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        alignment: Alignment.topCenter,
        child: Center(
          child: Text(
            '${widget.index} Loren ipsum Loren ipsum Loren ipsum Loren ipsumLoren ipsum Loren ipsum',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
