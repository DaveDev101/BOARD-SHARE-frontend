// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(boardDetail)
const boardDetailProvider = BoardDetailFamily._();

final class BoardDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, AACPost?)>,
          (String, AACPost?),
          FutureOr<(String, AACPost?)>
        >
    with
        $FutureModifier<(String, AACPost?)>,
        $FutureProvider<(String, AACPost?)> {
  const BoardDetailProvider._({
    required BoardDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'boardDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boardDetailHash();

  @override
  String toString() {
    return r'boardDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<(String, AACPost?)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, AACPost?)> create(Ref ref) {
    final argument = this.argument as int;
    return boardDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is BoardDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boardDetailHash() => r'1de2dac73a523125861b0c2546be672294c0003f';

final class BoardDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<(String, AACPost?)>, int> {
  const BoardDetailFamily._()
    : super(
        retry: null,
        name: r'boardDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoardDetailProvider call(int id) =>
      BoardDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'boardDetailProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
