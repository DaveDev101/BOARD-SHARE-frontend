// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_at_index.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(aacSymbolAtIndex)
const aacSymbolAtIndexProvider = AacSymbolAtIndexFamily._();

final class AacSymbolAtIndexProvider
    extends
        $FunctionalProvider<
          AsyncValue<AsyncValue<AACSymbol>>,
          AsyncValue<AACSymbol>,
          FutureOr<AsyncValue<AACSymbol>>
        >
    with
        $FutureModifier<AsyncValue<AACSymbol>>,
        $FutureProvider<AsyncValue<AACSymbol>> {
  const AacSymbolAtIndexProvider._({
    required AacSymbolAtIndexFamily super.from,
    required (int, {String searchTerm}) super.argument,
  }) : super(
         retry: null,
         name: r'aacSymbolAtIndexProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$aacSymbolAtIndexHash();

  @override
  String toString() {
    return r'aacSymbolAtIndexProvider'
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
    return aacSymbolAtIndex(ref, argument.$1, searchTerm: argument.searchTerm);
  }

  @override
  bool operator ==(Object other) {
    return other is AacSymbolAtIndexProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$aacSymbolAtIndexHash() => r'fe0d8c9449b19cfbdff59d716c038c2d0ab9db96';

final class AacSymbolAtIndexFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<AsyncValue<AACSymbol>>,
          (int, {String searchTerm})
        > {
  const AacSymbolAtIndexFamily._()
    : super(
        retry: null,
        name: r'aacSymbolAtIndexProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AacSymbolAtIndexProvider call(int index, {required String searchTerm}) =>
      AacSymbolAtIndexProvider._(
        argument: (index, searchTerm: searchTerm),
        from: this,
      );

  @override
  String toString() => r'aacSymbolAtIndexProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
