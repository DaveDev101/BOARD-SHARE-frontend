// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_symbol_at_index_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoriteSymbolAtIndexCtl)
const favoriteSymbolAtIndexCtlProvider = FavoriteSymbolAtIndexCtlFamily._();

final class FavoriteSymbolAtIndexCtlProvider
    extends
        $FunctionalProvider<
          AsyncValue<AsyncValue<AACSymbol>>,
          AsyncValue<AACSymbol>,
          FutureOr<AsyncValue<AACSymbol>>
        >
    with
        $FutureModifier<AsyncValue<AACSymbol>>,
        $FutureProvider<AsyncValue<AACSymbol>> {
  const FavoriteSymbolAtIndexCtlProvider._({
    required FavoriteSymbolAtIndexCtlFamily super.from,
    required (int, {String searchTerm}) super.argument,
  }) : super(
         retry: null,
         name: r'favoriteSymbolAtIndexCtlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteSymbolAtIndexCtlHash();

  @override
  String toString() {
    return r'favoriteSymbolAtIndexCtlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<AsyncValue<AACSymbol>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AsyncValue<AACSymbol>> create(Ref ref) {
    final argument = this.argument as (int, {String searchTerm});
    return favoriteSymbolAtIndexCtl(
      ref,
      argument.$1,
      searchTerm: argument.searchTerm,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteSymbolAtIndexCtlProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteSymbolAtIndexCtlHash() =>
    r'95e6bf9202c488e9c2f7eb20e04768e6e72b8c62';

final class FavoriteSymbolAtIndexCtlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AsyncValue<AACSymbol>>,
          (int, {String searchTerm})
        > {
  const FavoriteSymbolAtIndexCtlFamily._()
    : super(
        retry: null,
        name: r'favoriteSymbolAtIndexCtlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteSymbolAtIndexCtlProvider call(
    int index, {
    required String searchTerm,
  }) => FavoriteSymbolAtIndexCtlProvider._(
    argument: (index, searchTerm: searchTerm),
    from: this,
  );

  @override
  String toString() => r'favoriteSymbolAtIndexCtlProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
