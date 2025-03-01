import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portal_controller.g.dart';

@riverpod
class PortalController extends _$PortalController {
  @override
  (bool, bool) build() {
    return (false, false);
  }

  void toggleVisibility(int number) {
    var previousState = state;
    if (number == 0) {
      state = (!previousState.$1, !previousState.$2);
    }
    if (number == 1) {
      state = (!previousState.$1, previousState.$2);
    } else {
      state = (previousState.$1, !previousState.$2);
    }
  }

  void makeAllInvisible() {
    state = (false, false);
  }
}
