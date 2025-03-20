// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$symbolDetailHash() => r'7e167228a263c1bc14728a67e2f90ca895d84615';

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

/// See also [symbolDetail].
@ProviderFor(symbolDetail)
const symbolDetailProvider = SymbolDetailFamily();

/// See also [symbolDetail].
class SymbolDetailFamily extends Family<AsyncValue<(String, AACSymbol?)>> {
  /// See also [symbolDetail].
  const SymbolDetailFamily();

  /// See also [symbolDetail].
  SymbolDetailProvider call(
    int id,
  ) {
    return SymbolDetailProvider(
      id,
    );
  }

  @override
  SymbolDetailProvider getProviderOverride(
    covariant SymbolDetailProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'symbolDetailProvider';
}

/// See also [symbolDetail].
class SymbolDetailProvider
    extends AutoDisposeFutureProvider<(String, AACSymbol?)> {
  /// See also [symbolDetail].
  SymbolDetailProvider(
    int id,
  ) : this._internal(
          (ref) => symbolDetail(
            ref as SymbolDetailRef,
            id,
          ),
          from: symbolDetailProvider,
          name: r'symbolDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$symbolDetailHash,
          dependencies: SymbolDetailFamily._dependencies,
          allTransitiveDependencies:
              SymbolDetailFamily._allTransitiveDependencies,
          id: id,
        );

  SymbolDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<(String, AACSymbol?)> Function(SymbolDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SymbolDetailProvider._internal(
        (ref) => create(ref as SymbolDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<(String, AACSymbol?)> createElement() {
    return _SymbolDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SymbolDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SymbolDetailRef on AutoDisposeFutureProviderRef<(String, AACSymbol?)> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SymbolDetailProviderElement
    extends AutoDisposeFutureProviderElement<(String, AACSymbol?)>
    with SymbolDetailRef {
  _SymbolDetailProviderElement(super.provider);

  @override
  int get id => (origin as SymbolDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
