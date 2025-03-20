import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'portal_controller.g.dart';

@riverpod
class PortalController extends _$PortalController {
  @override
  (bool, bool, bool, bool, bool) build() {
    return (false, false, false, false, false);
  }

  void toggleVisibility(int number) {
    var previousState = state;
    if (number == 0) {
      state = (
        !previousState.$1,
        !previousState.$2,
        !previousState.$3,
        !previousState.$4,
        !previousState.$5
      );
    }
    if (number == 1) {
      state = (
        !previousState.$1,
        previousState.$2,
        previousState.$3,
        previousState.$4,
        previousState.$5
      );
    } else if (number == 2) {
      state = (
        previousState.$1,
        !previousState.$2,
        previousState.$3,
        previousState.$4,
        previousState.$5
      );
    } else if (number == 3) {
      state = (
        previousState.$1,
        previousState.$2,
        !previousState.$3,
        previousState.$4,
        previousState.$5
      );
    } else if (number == 4) {
      state = (
        previousState.$1,
        previousState.$2,
        previousState.$3,
        !previousState.$4,
        previousState.$5
      );
    } else {
      state = (
        previousState.$1,
        previousState.$2,
        previousState.$3,
        previousState.$4,
        !previousState.$5
      );
    }
  }

  void makeAllInvisible() {
    state = (false, false, false, false, false);
  }
}
