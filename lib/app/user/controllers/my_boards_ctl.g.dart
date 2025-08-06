// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_boards_ctl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(myBoards)
const myBoardsProvider = MyBoardsFamily._();

final class MyBoardsProvider
    extends
        $FunctionalProvider<
          AsyncValue<(String, int, List<MyBoard>)>,
          (String, int, List<MyBoard>),
          FutureOr<(String, int, List<MyBoard>)>
        >
    with
        $FutureModifier<(String, int, List<MyBoard>)>,
        $FutureProvider<(String, int, List<MyBoard>)> {
  const MyBoardsProvider._({
    required MyBoardsFamily super.from,
    required (
      String, {
      int page,
      List<String>? taxonomyTerms,
      List<(String, String)>? orders,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'myBoardsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$myBoardsHash();

  @override
  String toString() {
    return r'myBoardsProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<(String, int, List<MyBoard>)> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<(String, int, List<MyBoard>)> create(Ref ref) {
    final argument =
        this.argument
            as (
              String, {
              int page,
              List<String>? taxonomyTerms,
              List<(String, String)>? orders,
            });
    return myBoards(
      ref,
      argument.$1,
      page: argument.page,
      taxonomyTerms: argument.taxonomyTerms,
      orders: argument.orders,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyBoardsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$myBoardsHash() => r'7be9be150fd3b49a84c34c6f5805d8b4c1ae4f86';

final class MyBoardsFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<(String, int, List<MyBoard>)>,
          (
            String, {
            int page,
            List<String>? taxonomyTerms,
            List<(String, String)>? orders,
          })
        > {
  const MyBoardsFamily._()
    : super(
        retry: null,
        name: r'myBoardsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MyBoardsProvider call(
    String searchTerm, {
    required int page,
    List<String>? taxonomyTerms,
    List<(String, String)>? orders,
  }) => MyBoardsProvider._(
    argument: (
      searchTerm,
      page: page,
      taxonomyTerms: taxonomyTerms,
      orders: orders,
    ),
    from: this,
  );

  @override
  String toString() => r'myBoardsProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
