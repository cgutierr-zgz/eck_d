import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: EckD()),
      ),
    );
  }
}

class EckD extends StatefulWidget {
  const EckD({super.key});

  @override
  State<EckD> createState() => _EckDState();
}

class _EckDState extends State<EckD> {
  late Timer _timer;
  String _cC = "";

  @override
  void initState() {
    super.initState();
    _uEckD();
    _timer = Timer.periodic(const Duration(minutes: 5), (_) => _uEckD());
  }

  void _uEckD() => setState(() => _cC = gDSC());

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String gDSC() {
    final now = DateTime.now();
    final fMB = (now.minute ~/ 5) * 5;

    final y = (now.year % 100) + 7;
    final m = (now.month * 3) % 12 + 1;
    final d = (now.day * 5) % 31 + 1;
    final h = (now.hour + d) % 24;
    final mb = (fMB * 7) % 60;

    final dsc = '$y${m.toString().padLeft(2, '0')}'
        '${d.toString().padLeft(2, '0')}${h.toString().padLeft(2, '0')}'
        '${mb.toString().padLeft(2, '0')}';

    return dsc;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _cC,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
