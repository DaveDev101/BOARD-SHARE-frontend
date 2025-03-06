// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_at_index.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$aacSymbolAtIndexHash() => r'fe0d8c9449b19cfbdff59d716c038c2d0ab9db96';

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

/// See also [aacSymbolAtIndex].
@ProviderFor(aacSymbolAtIndex)
const aacSymbolAtIndexProvider = AacSymbolAtIndexFamily();

/// See also [aacSymbolAtIndex].
class AacSymbolAtIndexFamily extends Family<AsyncValue<AsyncValue<AACSymbol>>> {
  /// See also [aacSymbolAtIndex].
  const AacSymbolAtIndexFamily();

  /// See also [aacSymbolAtIndex].
  AacSymbolAtIndexProvider call(
    int index, {
    required String searchTerm,
  }) {
    return AacSymbolAtIndexProvider(
      index,
      searchTerm: searchTerm,
    );
  }

  @override
  AacSymbolAtIndexProvider getProviderOverride(
    covariant AacSymbolAtIndexProvider provider,
  ) {
    return call(
      provider.index,
      searchTerm: provider.searchTerm,
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
  String? get name => r'aacSymbolAtIndexProvider';
}

/// See also [aacSymbolAtIndex].
class AacSymbolAtIndexProvider
    extends AutoDisposeFutureProvider<AsyncValue<AACSymbol>> {
  /// See also [aacSymbolAtIndex].
  AacSymbolAtIndexProvider(
    int index, {
    required String searchTerm,
  }) : this._internal(
          (ref) => aacSymbolAtIndex(
            ref as AacSymbolAtIndexRef,
            index,
            searchTerm: searchTerm,
          ),
          from: aacSymbolAtIndexProvider,
          name: r'aacSymbolAtIndexProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$aacSymbolAtIndexHash,
          dependencies: AacSymbolAtIndexFamily._dependencies,
          allTransitiveDependencies:
              AacSymbolAtIndexFamily._allTransitiveDependencies,
          index: index,
          searchTerm: searchTerm,
        );

  AacSymbolAtIndexProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
    required this.searchTerm,
  }) : super.internal();

  final int index;
  final String searchTerm;

  @override
  Override overrideWith(
    FutureOr<AsyncValue<AACSymbol>> Function(AacSymbolAtIndexRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AacSymbolAtIndexProvider._internal(
        (ref) => create(ref as AacSymbolAtIndexRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
        searchTerm: searchTerm,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AsyncValue<AACSymbol>> createElement() {
    return _AacSymbolAtIndexProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AacSymbolAtIndexProvider &&
        other.index == index &&
        other.searchTerm == searchTerm;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);
    hash = _SystemHash.combine(hash, searchTerm.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AacSymbolAtIndexRef
    on AutoDisposeFutureProviderRef<AsyncValue<AACSymbol>> {
  /// The parameter `index` of this provider.
  int get index;

  /// The parameter `searchTerm` of this provider.
  String get searchTerm;
}

class _AacSymbolAtIndexProviderElement
    extends AutoDisposeFutureProviderElement<AsyncValue<AACSymbol>>
    with AacSymbolAtIndexRef {
  _AacSymbolAtIndexProviderElement(super.provider);

  @override
  int get index => (origin as AacSymbolAtIndexProvider).index;
  @override
  String get searchTerm => (origin as AacSymbolAtIndexProvider).searchTerm;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
