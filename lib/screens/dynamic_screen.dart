import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_state.dart';
import 'package:my_first_app/utils/registry.dart';
import 'package:my_first_app/utils/renderer.dart';
import 'package:provider/provider.dart';

class DynamicScreen extends StatelessWidget {
  const DynamicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppState(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Dynamic UI")),
        body: Consumer<AppState>(
          builder: (_, state, child) {
            final registry = buildRegistry(state.currentJson);
            final root = registry["root"];

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Renderer.build(root, registry, state),
              ),
            );
          },
        ),
      ),
    );
  }
}
