import 'package:flutter/material.dart';
import 'package:my_first_app/utils/app_state.dart';

import 'catalog.dart';

class Renderer {
  static Widget build(
    Map<String, dynamic>? node,
    Map<String, Map<String, dynamic>> registry,
    AppState state,
  ) {
    /// Safety check
    if (node == null) {
      return const SizedBox();
    }

    /// Extract type
    final String type = node["type"];

    /// Check if type exists in catalog
    if (!AppCatalog.map.containsKey(type)) {
      return Text("Unknown type: $type");
    }

    /// Get builder function from catalog
    final builder = AppCatalog.map[type]!;

    /// Call builder and return widget
    return builder(node, registry, state);
  }
}
