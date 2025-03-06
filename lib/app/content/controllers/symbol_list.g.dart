// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$symbolListHash() => r'6dc52759c9c3218f8be57d574edb29cde81c1066';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [symbolList].
@ProviderFor(symbolList)
const symbolListProvider = SymbolListFamily();

/// See also [symbolList].
class SymbolListFamily
    extends Family<AsyncValue<(String, int, List<AACSymbol>)>> {
  /// See also [symbolList].
  const SymbolListFamily();

  /// See also [symbolList].
  SymbolListProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) {
    return SymbolListProvider(
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    );
  }

  @override
  SymbolListProvider getProviderOverride(
    covariant SymbolListProvider provider,
  ) {
    return call(
      provider.searchTerm,
      page: provider.page,
      taxonomyTerms: provider.taxonomyTerms,
      orders: provider.orders,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'symbolListProvider';
}

/// See also [symbolList].
class SymbolListProvider
    extends AutoDisposeFutureProvider<(String, int, List<AACSymbol>)> {
  /// See also [symbolList].
  SymbolListProvider(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) : this._internal(
          (ref) => symbolList(
            ref as SymbolListRef,
            searchTerm,
            page: page,
            taxonomyTerms: taxonomyTerms,
            orders: orders,
          ),
          from: symbolListProvider,
          name: r'symbolListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$symbolListHash,
          dependencies: SymbolListFamily._dependencies,
          allTransitiveDependencies:
              SymbolListFamily._allTransitiveDependencies,
          searchTerm: searchTerm,
          page: page,
          taxonomyTerms: taxonomyTerms,
          orders: orders,
        );

  SymbolListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchTerm,
    required this.page,
    required this.taxonomyTerms,
    required this.orders,
  }) : super.internal();

  final String searchTerm;
  final int page;
  final List<String>? taxonomyTerms;
  final List<(String, String)>? orders;

  @override
  Override overrideWith(
    FutureOr<(String, int, List<AACSymbol>)> Function(SymbolListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SymbolListProvider._internal(
        (ref) => create(ref as SymbolListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchTerm: searchTerm,
        page: page,
        taxonomyTerms: taxonomyTerms,
        orders: orders,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<(String, int, List<AACSymbol>)>
      createElement() {
    return _SymbolListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SymbolListProvider &&
        other.searchTerm == searchTerm &&
        other.page == page &&
        other.taxonomyTerms == taxonomyTerms &&
        other.orders == orders;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchTerm.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, taxonomyTerms.hashCode);
    hash = _SystemHash.combine(hash, orders.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SymbolListRef
    on AutoDisposeFutureProviderRef<(String, int, List<AACSymbol>)> {
  /// The parameter `searchTerm` of this provider.
  String get searchTerm;

  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `taxonomyTerms` of this provider.
  List<String>? get taxonomyTerms;

  /// The parameter `orders` of this provider.
  List<(String, String)>? get orders;
}

class _SymbolListProviderElement
    extends AutoDisposeFutureProviderElement<(String, int, List<AACSymbol>)>
    with SymbolListRef {
  _SymbolListProviderElement(super.provider);

  @override
  String get searchTerm => (origin as SymbolListProvider).searchTerm;
  @override
  int get page => (origin as SymbolListProvider).page;
  @override
  List<String>? get taxonomyTerms =>
      (origin as SymbolListProvider).taxonomyTerms;
  @override
  List<(String, String)>? get orders => (origin as SymbolListProvider).orders;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
