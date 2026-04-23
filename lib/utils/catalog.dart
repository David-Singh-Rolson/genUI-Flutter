import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_state.dart';
import 'package:my_first_app/utils/event_handler.dart';

import 'renderer.dart';

typedef WidgetBuilderFn =
    Widget Function(
      Map<String, dynamic> data,
      Map<String, Map<String, dynamic>> registry,
      AppState state,
    );

class AppCatalog {
  static final Map<String, WidgetBuilderFn> map = {
    "text": TextComponent.build,
    "column": ColumnComponent.build,
    "button": ButtonComponent.build,
    "card": CardComponent.build,
  };
}

class TextComponent {
  static Widget build(
    Map<String, dynamic> data,
    Map<String, Map<String, dynamic>> registry,
    AppState state,
  ) {
    return Text(data["value"] ?? "", style: const TextStyle(fontSize: 18));
  }
}

class ColumnComponent {
  static Widget build(
    Map<String, dynamic> data,
    Map<String, Map<String, dynamic>> registry,
    AppState state,
  ) {
    final childrenIds = data["children"] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: childrenIds.map<Widget>((id) {
        final child = registry[id];
        return Renderer.build(child, registry, state);
      }).toList(),
    );
  }
}

class ButtonComponent {
  static Widget build(
    Map<String, dynamic> data,
    Map<String, Map<String, dynamic>> registry,
    AppState state,
  ) {
    return ElevatedButton(
      onPressed: () {
        final eventName = data["action"]?["event"]?["name"];
        if (eventName != null) {
          handleEvent(eventName, state);
        }
      },
      child: Text(data["text"] ?? "Click"),
    );
  }
}

class CardComponent {
  static Widget build(
    Map<String, dynamic> data,
    Map<String, Map<String, dynamic>> registry,
    AppState state,
  ) {
    final title = data["title"] ?? "";
    final image = data["image"] ?? "";
    final eventName = data["action"]?["event"]?["name"];

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          /// Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          /// Title
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          /// Button
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                if (eventName != null) {
                  handleEvent(eventName, state);
                }
              },
              child: const Text("Show"),
            ),
          ),
        ],
      ),
    );
  }
}
