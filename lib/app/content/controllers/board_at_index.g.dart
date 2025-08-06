// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_at_index.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(boardAtIndex)
const boardAtIndexProvider = BoardAtIndexFamily._();

final class BoardAtIndexProvider
    extends
        $FunctionalProvider<
          AsyncValue<AsyncValue<ESBoard>>,
          AsyncValue<ESBoard>,
          FutureOr<AsyncValue<ESBoard>>
        >
    with
        $FutureModifier<AsyncValue<ESBoard>>,
        $FutureProvider<AsyncValue<ESBoard>> {
  const BoardAtIndexProvider._({
    required BoardAtIndexFamily super.from,
    required (int, {String searchTerm}) super.argument,
  }) : super(
         retry: null,
         name: r'boardAtIndexProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boardAtIndexHash();

  @override
  String toString() {
    return r'boardAtIndexProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<AsyncValue<ESBoard>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AsyncValue<ESBoard>> create(Ref ref) {
    final argument = this.argument as (int, {String searchTerm});
    return boardAtIndex(ref, argument.$1, searchTerm: argument.searchTerm);
  }

  @override
  bool operator ==(Object other) {
    return other is BoardAtIndexProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boardAtIndexHash() => r'b558b59775fb303259c2f212b29cdf32e66a2a1f';

final class BoardAtIndexFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AsyncValue<ESBoard>>,
          (int, {String searchTerm})
        > {
  const BoardAtIndexFamily._()
    : super(
        retry: null,
        name: r'boardAtIndexProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoardAtIndexProvider call(int index, {required String searchTerm}) =>
      BoardAtIndexProvider._(
        argument: (index, searchTerm: searchTerm),
        from: this,
      );

  @override
  String toString() => r'boardAtIndexProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
