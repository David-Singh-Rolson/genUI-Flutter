import 'package:my_first_app/data/initial_json.dart';

import 'app_state.dart';

void handleEvent(String eventName, AppState state) {
  switch (eventName) {
    case "showParis":
      state.updateUI(parisJson);
      break;

    case "showTokyo":
      state.updateUI(tokyoJson);
      break;

    case "showNY":
      state.updateUI(nyJson);
      break;

    default:
      break;
  }
}
