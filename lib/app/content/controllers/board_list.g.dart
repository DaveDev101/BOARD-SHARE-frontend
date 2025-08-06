// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(boardList)
const boardListProvider = BoardListFamily._();

final class BoardListProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, int, List<ESBoard>)>,
          (String, int, List<ESBoard>),
          FutureOr<(String, int, List<ESBoard>)>
        >
    with
        $FutureModifier<(String, int, List<ESBoard>)>,
        $FutureProvider<(String, int, List<ESBoard>)> {
  const BoardListProvider._({
    required BoardListFamily super.from,
    required (
      String, {
      int page,
      List<String>? taxonomyTerms,
      List<(String, String)>? orders,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'boardListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$boardListHash();

  @override
  String toString() {
    return r'boardListProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<(String, int, List<ESBoard>)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, int, List<ESBoard>)> create(Ref ref) {
    final argument =
        this.argument
            as (
              String, {
              int page,
              List<String>? taxonomyTerms,
              List<(String, String)>? orders,
            });
    return boardList(
      ref,
      argument.$1,
      page: argument.page,
      taxonomyTerms: argument.taxonomyTerms,
      orders: argument.orders,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is BoardListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$boardListHash() => r'b765f75c15d27d051509e178dedea3a2a48686a2';

final class BoardListFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(String, int, List<ESBoard>)>,
          (
            String, {
            int page,
            List<String>? taxonomyTerms,
            List<(String, String)>? orders,
          })
        > {
  const BoardListFamily._()
    : super(
        retry: null,
        name: r'boardListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  BoardListProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) => BoardListProvider._(
    argument: (
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    ),
    from: this,
  );

  @override
  String toString() => r'boardListProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
