// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(symbolList)
const symbolListProvider = SymbolListFamily._();

final class SymbolListProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, int, List<AACSymbol>)>,
          (String, int, List<AACSymbol>),
          FutureOr<(String, int, List<AACSymbol>)>
        >
    with
        $FutureModifier<(String, int, List<AACSymbol>)>,
        $FutureProvider<(String, int, List<AACSymbol>)> {
  const SymbolListProvider._({
    required SymbolListFamily super.from,
    required (
      String, {
      int page,
      List<String>? taxonomyTerms,
      List<(String, String)>? orders,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'symbolListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$symbolListHash();

  @override
  String toString() {
    return r'symbolListProvider'
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
    return symbolList(
      ref,
      argument.$1,
      page: argument.page,
      taxonomyTerms: argument.taxonomyTerms,
      orders: argument.orders,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SymbolListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$symbolListHash() => r'7b9b4f1ea2ed883415fed2c2c2e1a9a9d8c3662e';

final class SymbolListFamily extends $Family
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
  const SymbolListFamily._()
    : super(
        retry: null,
        name: r'symbolListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SymbolListProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) => SymbolListProvider._(
    argument: (
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    ),
    from: this,
  );

  @override
  String toString() => r'symbolListProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
