// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_board_at_index_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoriteBoardAtIndexCtl)
const favoriteBoardAtIndexCtlProvider = FavoriteBoardAtIndexCtlFamily._();

final class FavoriteBoardAtIndexCtlProvider
    extends
        $FunctionalProvider<
          AsyncValue<AsyncValue<AACPost>>,
          AsyncValue<AACPost>,
          FutureOr<AsyncValue<AACPost>>
        >
    with
        $FutureModifier<AsyncValue<AACPost>>,
        $FutureProvider<AsyncValue<AACPost>> {
  const FavoriteBoardAtIndexCtlProvider._({
    required FavoriteBoardAtIndexCtlFamily super.from,
    required (int, {String searchTerm}) super.argument,
  }) : super(
         retry: null,
         name: r'favoriteBoardAtIndexCtlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteBoardAtIndexCtlHash();

  @override
  String toString() {
    return r'favoriteBoardAtIndexCtlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<AsyncValue<AACPost>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AsyncValue<AACPost>> create(Ref ref) {
    final argument = this.argument as (int, {String searchTerm});
    return favoriteBoardAtIndexCtl(
      ref,
      argument.$1,
      searchTerm: argument.searchTerm,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteBoardAtIndexCtlProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteBoardAtIndexCtlHash() =>
    r'fe51158ac2a8a5e80cf06e88579bb02ab7cbf6b7';

final class FavoriteBoardAtIndexCtlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AsyncValue<AACPost>>,
          (int, {String searchTerm})
        > {
  const FavoriteBoardAtIndexCtlFamily._()
    : super(
        retry: null,
        name: r'favoriteBoardAtIndexCtlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteBoardAtIndexCtlProvider call(
    int index, {
    required String searchTerm,
  }) => FavoriteBoardAtIndexCtlProvider._(
    argument: (index, searchTerm: searchTerm),
    from: this,
  );

  @override
  String toString() => r'favoriteBoardAtIndexCtlProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
