// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_board_at_index_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(myBoardAtIndex)
const myBoardAtIndexProvider = MyBoardAtIndexFamily._();

final class MyBoardAtIndexProvider
    extends
        $FunctionalProvider<
          AsyncValue<AsyncValue<MyBoard>>,
          AsyncValue<MyBoard>,
          FutureOr<AsyncValue<MyBoard>>
        >
    with
        $FutureModifier<AsyncValue<MyBoard>>,
        $FutureProvider<AsyncValue<MyBoard>> {
  const MyBoardAtIndexProvider._({
    required MyBoardAtIndexFamily super.from,
    required (int, {String searchTerm}) super.argument,
  }) : super(
         retry: null,
         name: r'myBoardAtIndexProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myBoardAtIndexHash();

  @override
  String toString() {
    return r'myBoardAtIndexProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<AsyncValue<MyBoard>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AsyncValue<MyBoard>> create(Ref ref) {
    final argument = this.argument as (int, {String searchTerm});
    return myBoardAtIndex(ref, argument.$1, searchTerm: argument.searchTerm);
  }

  @override
  bool operator ==(Object other) {
    return other is MyBoardAtIndexProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myBoardAtIndexHash() => r'4e100f828b359a7963ce10d3bad2f1550d2526ad';

final class MyBoardAtIndexFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AsyncValue<MyBoard>>,
          (int, {String searchTerm})
        > {
  const MyBoardAtIndexFamily._()
    : super(
        retry: null,
        name: r'myBoardAtIndexProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyBoardAtIndexProvider call(int index, {required String searchTerm}) =>
      MyBoardAtIndexProvider._(
        argument: (index, searchTerm: searchTerm),
        from: this,
      );

  @override
  String toString() => r'myBoardAtIndexProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
