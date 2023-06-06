import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class Voucher extends HookWidget {
  const Voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: HeaderText(
          text: 'Voucher',
        ),
      ),
    );
  }
}
