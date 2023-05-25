import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MembersPage extends ConsumerStatefulWidget {
  const MembersPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MembersPageState();
}

class _MembersPageState extends ConsumerState<MembersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: Text(
          "Demo Name App",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
