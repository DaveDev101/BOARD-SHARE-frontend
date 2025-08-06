// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_symbols_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(favoriteSymbolsCtl)
const favoriteSymbolsCtlProvider = FavoriteSymbolsCtlFamily._();

final class FavoriteSymbolsCtlProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, int, List<AACSymbol>)>,
          (String, int, List<AACSymbol>),
          FutureOr<(String, int, List<AACSymbol>)>
        >
    with
        $FutureModifier<(String, int, List<AACSymbol>)>,
        $FutureProvider<(String, int, List<AACSymbol>)> {
  const FavoriteSymbolsCtlProvider._({
    required FavoriteSymbolsCtlFamily super.from,
    required (
      String, {
      int page,
      List<String>? taxonomyTerms,
      List<(String, String)>? orders,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'favoriteSymbolsCtlProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$favoriteSymbolsCtlHash();

  @override
  String toString() {
    return r'favoriteSymbolsCtlProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<(String, int, List<AACSymbol>)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, int, List<AACSymbol>)> create(Ref ref) {
    final argument =
        this.argument
            as (
              String, {
              int page,
              List<String>? taxonomyTerms,
              List<(String, String)>? orders,
            });
    return favoriteSymbolsCtl(
      ref,
      argument.$1,
      page: argument.page,
      taxonomyTerms: argument.taxonomyTerms,
      orders: argument.orders,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteSymbolsCtlProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$favoriteSymbolsCtlHash() =>
    r'90c12d047a8a32a940a5b99f1803b37a0892997a';

final class FavoriteSymbolsCtlFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(String, int, List<AACSymbol>)>,
          (
            String, {
            int page,
            List<String>? taxonomyTerms,
            List<(String, String)>? orders,
          })
        > {
  const FavoriteSymbolsCtlFamily._()
    : super(
        retry: null,
        name: r'favoriteSymbolsCtlProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FavoriteSymbolsCtlProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) => FavoriteSymbolsCtlProvider._(
    argument: (
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    ),
    from: this,
  );

  @override
  String toString() => r'favoriteSymbolsCtlProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
