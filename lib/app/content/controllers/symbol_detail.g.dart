// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(symbolDetail)
const symbolDetailProvider = SymbolDetailFamily._();

final class SymbolDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, AACSymbol?)>,
          (String, AACSymbol?),
          FutureOr<(String, AACSymbol?)>
        >
    with
        $FutureModifier<(String, AACSymbol?)>,
        $FutureProvider<(String, AACSymbol?)> {
  const SymbolDetailProvider._({
    required SymbolDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'symbolDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$symbolDetailHash();

  @override
  String toString() {
    return r'symbolDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<(String, AACSymbol?)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, AACSymbol?)> create(Ref ref) {
    final argument = this.argument as int;
    return symbolDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SymbolDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$symbolDetailHash() => r'c50e93b1ee4b24c69edd8fdc719f9c70ddd765b0';

final class SymbolDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<(String, AACSymbol?)>, int> {
  const SymbolDetailFamily._()
    : super(
        retry: null,
        name: r'symbolDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SymbolDetailProvider call(int id) =>
      SymbolDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'symbolDetailProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
