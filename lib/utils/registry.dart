Map<String, Map<String, dynamic>> buildRegistry(List data) {
  final map = <String, Map<String, dynamic>>{};

  for (var item in data) {
    map[item["id"]] = item;
  }

  return map;
}
