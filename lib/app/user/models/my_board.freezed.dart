// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyBoard {

@JsonKey(includeIfNull: false) int? get boardId;@JsonKey(includeIfNull: false) int? get boardAuthorId;@JsonKey(includeIfNull: false) int? get boardAuthorOrgId;@JsonKey(includeIfNull: false) String? get author;@JsonKey(includeIfNull: false) String? get authorOrg;@JsonKey(includeIfNull: false) bool? get boardProtected;@JsonKey(includeIfNull: false) String? get boardTitle;@JsonKey(includeIfNull: false) String? get boardExcerpt;@JsonKey(includeIfNull: false) List<MyMedium>? get media;@JsonKey(includeIfNull: false) bool? get isCommentOpen;@JsonKey(includeIfNull: false) int? get likeCount;@JsonKey(includeIfNull: false) int? get commentCount;@JsonKey(includeIfNull: false) String? get bgColor;@JsonKey(includeIfNull: false) String? get gridSize;@JsonKey(includeIfNull: false) String? get mBgColor;@JsonKey(includeIfNull: false) double? get mFontSize;@JsonKey(includeIfNull: false) List<String>? get taxonomy;@JsonKey(includeIfNull: false) String? get taxonomyPath;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of MyBoard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyBoardCopyWith<MyBoard> get copyWith => _$MyBoardCopyWithImpl<MyBoard>(this as MyBoard, _$identity);

  /// Serializes this MyBoard to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyBoard&&(identical(other.boardId, boardId) || other.boardId == boardId)&&(identical(other.boardAuthorId, boardAuthorId) || other.boardAuthorId == boardAuthorId)&&(identical(other.boardAuthorOrgId, boardAuthorOrgId) || other.boardAuthorOrgId == boardAuthorOrgId)&&(identical(other.author, author) || other.author == author)&&(identical(other.authorOrg, authorOrg) || other.authorOrg == authorOrg)&&(identical(other.boardProtected, boardProtected) || other.boardProtected == boardProtected)&&(identical(other.boardTitle, boardTitle) || other.boardTitle == boardTitle)&&(identical(other.boardExcerpt, boardExcerpt) || other.boardExcerpt == boardExcerpt)&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor)&&(identical(other.gridSize, gridSize) || other.gridSize == gridSize)&&(identical(other.mBgColor, mBgColor) || other.mBgColor == mBgColor)&&(identical(other.mFontSize, mFontSize) || other.mFontSize == mFontSize)&&const DeepCollectionEquality().equals(other.taxonomy, taxonomy)&&(identical(other.taxonomyPath, taxonomyPath) || other.taxonomyPath == taxonomyPath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,boardId,boardAuthorId,boardAuthorOrgId,author,authorOrg,boardProtected,boardTitle,boardExcerpt,const DeepCollectionEquality().hash(media),isCommentOpen,likeCount,commentCount,bgColor,gridSize,mBgColor,mFontSize,const DeepCollectionEquality().hash(taxonomy),taxonomyPath,createdAt,updatedAt]);

@override
String toString() {
  return 'MyBoard(boardId: $boardId, boardAuthorId: $boardAuthorId, boardAuthorOrgId: $boardAuthorOrgId, author: $author, authorOrg: $authorOrg, boardProtected: $boardProtected, boardTitle: $boardTitle, boardExcerpt: $boardExcerpt, media: $media, isCommentOpen: $isCommentOpen, likeCount: $likeCount, commentCount: $commentCount, bgColor: $bgColor, gridSize: $gridSize, mBgColor: $mBgColor, mFontSize: $mFontSize, taxonomy: $taxonomy, taxonomyPath: $taxonomyPath, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MyBoardCopyWith<$Res>  {
  factory $MyBoardCopyWith(MyBoard value, $Res Function(MyBoard) _then) = _$MyBoardCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? boardId,@JsonKey(includeIfNull: false) int? boardAuthorId,@JsonKey(includeIfNull: false) int? boardAuthorOrgId,@JsonKey(includeIfNull: false) String? author,@JsonKey(includeIfNull: false) String? authorOrg,@JsonKey(includeIfNull: false) bool? boardProtected,@JsonKey(includeIfNull: false) String? boardTitle,@JsonKey(includeIfNull: false) String? boardExcerpt,@JsonKey(includeIfNull: false) List<MyMedium>? media,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) String? bgColor,@JsonKey(includeIfNull: false) String? gridSize,@JsonKey(includeIfNull: false) String? mBgColor,@JsonKey(includeIfNull: false) double? mFontSize,@JsonKey(includeIfNull: false) List<String>? taxonomy,@JsonKey(includeIfNull: false) String? taxonomyPath,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class _$MyBoardCopyWithImpl<$Res>
    implements $MyBoardCopyWith<$Res> {
  _$MyBoardCopyWithImpl(this._self, this._then);

  final MyBoard _self;
  final $Res Function(MyBoard) _then;

/// Create a copy of MyBoard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? boardId = freezed,Object? boardAuthorId = freezed,Object? boardAuthorOrgId = freezed,Object? author = freezed,Object? authorOrg = freezed,Object? boardProtected = freezed,Object? boardTitle = freezed,Object? boardExcerpt = freezed,Object? media = freezed,Object? isCommentOpen = freezed,Object? likeCount = freezed,Object? commentCount = freezed,Object? bgColor = freezed,Object? gridSize = freezed,Object? mBgColor = freezed,Object? mFontSize = freezed,Object? taxonomy = freezed,Object? taxonomyPath = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
boardId: freezed == boardId ? _self.boardId : boardId // ignore: cast_nullable_to_non_nullable
as int?,boardAuthorId: freezed == boardAuthorId ? _self.boardAuthorId : boardAuthorId // ignore: cast_nullable_to_non_nullable
as int?,boardAuthorOrgId: freezed == boardAuthorOrgId ? _self.boardAuthorOrgId : boardAuthorOrgId // ignore: cast_nullable_to_non_nullable
as int?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,authorOrg: freezed == authorOrg ? _self.authorOrg : authorOrg // ignore: cast_nullable_to_non_nullable
as String?,boardProtected: freezed == boardProtected ? _self.boardProtected : boardProtected // ignore: cast_nullable_to_non_nullable
as bool?,boardTitle: freezed == boardTitle ? _self.boardTitle : boardTitle // ignore: cast_nullable_to_non_nullable
as String?,boardExcerpt: freezed == boardExcerpt ? _self.boardExcerpt : boardExcerpt // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<MyMedium>?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,bgColor: freezed == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String?,gridSize: freezed == gridSize ? _self.gridSize : gridSize // ignore: cast_nullable_to_non_nullable
as String?,mBgColor: freezed == mBgColor ? _self.mBgColor : mBgColor // ignore: cast_nullable_to_non_nullable
as String?,mFontSize: freezed == mFontSize ? _self.mFontSize : mFontSize // ignore: cast_nullable_to_non_nullable
as double?,taxonomy: freezed == taxonomy ? _self.taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as List<String>?,taxonomyPath: freezed == taxonomyPath ? _self.taxonomyPath : taxonomyPath // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyBoard].
extension MyBoardPatterns on MyBoard {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyBoard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyBoard() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyBoard value)  $default,){
final _that = this;
switch (_that) {
case _MyBoard():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyBoard value)?  $default,){
final _that = this;
switch (_that) {
case _MyBoard() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? boardId, @JsonKey(includeIfNull: false)  int? boardAuthorId, @JsonKey(includeIfNull: false)  int? boardAuthorOrgId, @JsonKey(includeIfNull: false)  String? author, @JsonKey(includeIfNull: false)  String? authorOrg, @JsonKey(includeIfNull: false)  bool? boardProtected, @JsonKey(includeIfNull: false)  String? boardTitle, @JsonKey(includeIfNull: false)  String? boardExcerpt, @JsonKey(includeIfNull: false)  List<MyMedium>? media, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  double? mFontSize, @JsonKey(includeIfNull: false)  List<String>? taxonomy, @JsonKey(includeIfNull: false)  String? taxonomyPath, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyBoard() when $default != null:
return $default(_that.boardId,_that.boardAuthorId,_that.boardAuthorOrgId,_that.author,_that.authorOrg,_that.boardProtected,_that.boardTitle,_that.boardExcerpt,_that.media,_that.isCommentOpen,_that.likeCount,_that.commentCount,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.taxonomy,_that.taxonomyPath,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? boardId, @JsonKey(includeIfNull: false)  int? boardAuthorId, @JsonKey(includeIfNull: false)  int? boardAuthorOrgId, @JsonKey(includeIfNull: false)  String? author, @JsonKey(includeIfNull: false)  String? authorOrg, @JsonKey(includeIfNull: false)  bool? boardProtected, @JsonKey(includeIfNull: false)  String? boardTitle, @JsonKey(includeIfNull: false)  String? boardExcerpt, @JsonKey(includeIfNull: false)  List<MyMedium>? media, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  double? mFontSize, @JsonKey(includeIfNull: false)  List<String>? taxonomy, @JsonKey(includeIfNull: false)  String? taxonomyPath, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _MyBoard():
return $default(_that.boardId,_that.boardAuthorId,_that.boardAuthorOrgId,_that.author,_that.authorOrg,_that.boardProtected,_that.boardTitle,_that.boardExcerpt,_that.media,_that.isCommentOpen,_that.likeCount,_that.commentCount,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.taxonomy,_that.taxonomyPath,_that.createdAt,_that.updatedAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? boardId, @JsonKey(includeIfNull: false)  int? boardAuthorId, @JsonKey(includeIfNull: false)  int? boardAuthorOrgId, @JsonKey(includeIfNull: false)  String? author, @JsonKey(includeIfNull: false)  String? authorOrg, @JsonKey(includeIfNull: false)  bool? boardProtected, @JsonKey(includeIfNull: false)  String? boardTitle, @JsonKey(includeIfNull: false)  String? boardExcerpt, @JsonKey(includeIfNull: false)  List<MyMedium>? media, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  double? mFontSize, @JsonKey(includeIfNull: false)  List<String>? taxonomy, @JsonKey(includeIfNull: false)  String? taxonomyPath, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _MyBoard() when $default != null:
return $default(_that.boardId,_that.boardAuthorId,_that.boardAuthorOrgId,_that.author,_that.authorOrg,_that.boardProtected,_that.boardTitle,_that.boardExcerpt,_that.media,_that.isCommentOpen,_that.likeCount,_that.commentCount,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.taxonomy,_that.taxonomyPath,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyBoard implements MyBoard {
  const _MyBoard({@JsonKey(includeIfNull: false) this.boardId, @JsonKey(includeIfNull: false) this.boardAuthorId, @JsonKey(includeIfNull: false) this.boardAuthorOrgId, @JsonKey(includeIfNull: false) this.author, @JsonKey(includeIfNull: false) this.authorOrg, @JsonKey(includeIfNull: false) this.boardProtected, @JsonKey(includeIfNull: false) this.boardTitle, @JsonKey(includeIfNull: false) this.boardExcerpt, @JsonKey(includeIfNull: false) final  List<MyMedium>? media, @JsonKey(includeIfNull: false) this.isCommentOpen, @JsonKey(includeIfNull: false) this.likeCount, @JsonKey(includeIfNull: false) this.commentCount, @JsonKey(includeIfNull: false) this.bgColor, @JsonKey(includeIfNull: false) this.gridSize, @JsonKey(includeIfNull: false) this.mBgColor, @JsonKey(includeIfNull: false) this.mFontSize, @JsonKey(includeIfNull: false) final  List<String>? taxonomy, @JsonKey(includeIfNull: false) this.taxonomyPath, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt}): _media = media,_taxonomy = taxonomy;
  factory _MyBoard.fromJson(Map<String, dynamic> json) => _$MyBoardFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? boardId;
@override@JsonKey(includeIfNull: false) final  int? boardAuthorId;
@override@JsonKey(includeIfNull: false) final  int? boardAuthorOrgId;
@override@JsonKey(includeIfNull: false) final  String? author;
@override@JsonKey(includeIfNull: false) final  String? authorOrg;
@override@JsonKey(includeIfNull: false) final  bool? boardProtected;
@override@JsonKey(includeIfNull: false) final  String? boardTitle;
@override@JsonKey(includeIfNull: false) final  String? boardExcerpt;
 final  List<MyMedium>? _media;
@override@JsonKey(includeIfNull: false) List<MyMedium>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(includeIfNull: false) final  bool? isCommentOpen;
@override@JsonKey(includeIfNull: false) final  int? likeCount;
@override@JsonKey(includeIfNull: false) final  int? commentCount;
@override@JsonKey(includeIfNull: false) final  String? bgColor;
@override@JsonKey(includeIfNull: false) final  String? gridSize;
@override@JsonKey(includeIfNull: false) final  String? mBgColor;
@override@JsonKey(includeIfNull: false) final  double? mFontSize;
 final  List<String>? _taxonomy;
@override@JsonKey(includeIfNull: false) List<String>? get taxonomy {
  final value = _taxonomy;
  if (value == null) return null;
  if (_taxonomy is EqualUnmodifiableListView) return _taxonomy;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(includeIfNull: false) final  String? taxonomyPath;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of MyBoard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyBoardCopyWith<_MyBoard> get copyWith => __$MyBoardCopyWithImpl<_MyBoard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyBoardToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyBoard&&(identical(other.boardId, boardId) || other.boardId == boardId)&&(identical(other.boardAuthorId, boardAuthorId) || other.boardAuthorId == boardAuthorId)&&(identical(other.boardAuthorOrgId, boardAuthorOrgId) || other.boardAuthorOrgId == boardAuthorOrgId)&&(identical(other.author, author) || other.author == author)&&(identical(other.authorOrg, authorOrg) || other.authorOrg == authorOrg)&&(identical(other.boardProtected, boardProtected) || other.boardProtected == boardProtected)&&(identical(other.boardTitle, boardTitle) || other.boardTitle == boardTitle)&&(identical(other.boardExcerpt, boardExcerpt) || other.boardExcerpt == boardExcerpt)&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor)&&(identical(other.gridSize, gridSize) || other.gridSize == gridSize)&&(identical(other.mBgColor, mBgColor) || other.mBgColor == mBgColor)&&(identical(other.mFontSize, mFontSize) || other.mFontSize == mFontSize)&&const DeepCollectionEquality().equals(other._taxonomy, _taxonomy)&&(identical(other.taxonomyPath, taxonomyPath) || other.taxonomyPath == taxonomyPath)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,boardId,boardAuthorId,boardAuthorOrgId,author,authorOrg,boardProtected,boardTitle,boardExcerpt,const DeepCollectionEquality().hash(_media),isCommentOpen,likeCount,commentCount,bgColor,gridSize,mBgColor,mFontSize,const DeepCollectionEquality().hash(_taxonomy),taxonomyPath,createdAt,updatedAt]);

@override
String toString() {
  return 'MyBoard(boardId: $boardId, boardAuthorId: $boardAuthorId, boardAuthorOrgId: $boardAuthorOrgId, author: $author, authorOrg: $authorOrg, boardProtected: $boardProtected, boardTitle: $boardTitle, boardExcerpt: $boardExcerpt, media: $media, isCommentOpen: $isCommentOpen, likeCount: $likeCount, commentCount: $commentCount, bgColor: $bgColor, gridSize: $gridSize, mBgColor: $mBgColor, mFontSize: $mFontSize, taxonomy: $taxonomy, taxonomyPath: $taxonomyPath, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MyBoardCopyWith<$Res> implements $MyBoardCopyWith<$Res> {
  factory _$MyBoardCopyWith(_MyBoard value, $Res Function(_MyBoard) _then) = __$MyBoardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? boardId,@JsonKey(includeIfNull: false) int? boardAuthorId,@JsonKey(includeIfNull: false) int? boardAuthorOrgId,@JsonKey(includeIfNull: false) String? author,@JsonKey(includeIfNull: false) String? authorOrg,@JsonKey(includeIfNull: false) bool? boardProtected,@JsonKey(includeIfNull: false) String? boardTitle,@JsonKey(includeIfNull: false) String? boardExcerpt,@JsonKey(includeIfNull: false) List<MyMedium>? media,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) String? bgColor,@JsonKey(includeIfNull: false) String? gridSize,@JsonKey(includeIfNull: false) String? mBgColor,@JsonKey(includeIfNull: false) double? mFontSize,@JsonKey(includeIfNull: false) List<String>? taxonomy,@JsonKey(includeIfNull: false) String? taxonomyPath,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});




}
/// @nodoc
class __$MyBoardCopyWithImpl<$Res>
    implements _$MyBoardCopyWith<$Res> {
  __$MyBoardCopyWithImpl(this._self, this._then);

  final _MyBoard _self;
  final $Res Function(_MyBoard) _then;

/// Create a copy of MyBoard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? boardId = freezed,Object? boardAuthorId = freezed,Object? boardAuthorOrgId = freezed,Object? author = freezed,Object? authorOrg = freezed,Object? boardProtected = freezed,Object? boardTitle = freezed,Object? boardExcerpt = freezed,Object? media = freezed,Object? isCommentOpen = freezed,Object? likeCount = freezed,Object? commentCount = freezed,Object? bgColor = freezed,Object? gridSize = freezed,Object? mBgColor = freezed,Object? mFontSize = freezed,Object? taxonomy = freezed,Object? taxonomyPath = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_MyBoard(
boardId: freezed == boardId ? _self.boardId : boardId // ignore: cast_nullable_to_non_nullable
as int?,boardAuthorId: freezed == boardAuthorId ? _self.boardAuthorId : boardAuthorId // ignore: cast_nullable_to_non_nullable
as int?,boardAuthorOrgId: freezed == boardAuthorOrgId ? _self.boardAuthorOrgId : boardAuthorOrgId // ignore: cast_nullable_to_non_nullable
as int?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,authorOrg: freezed == authorOrg ? _self.authorOrg : authorOrg // ignore: cast_nullable_to_non_nullable
as String?,boardProtected: freezed == boardProtected ? _self.boardProtected : boardProtected // ignore: cast_nullable_to_non_nullable
as bool?,boardTitle: freezed == boardTitle ? _self.boardTitle : boardTitle // ignore: cast_nullable_to_non_nullable
as String?,boardExcerpt: freezed == boardExcerpt ? _self.boardExcerpt : boardExcerpt // ignore: cast_nullable_to_non_nullable
as String?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<MyMedium>?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,bgColor: freezed == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String?,gridSize: freezed == gridSize ? _self.gridSize : gridSize // ignore: cast_nullable_to_non_nullable
as String?,mBgColor: freezed == mBgColor ? _self.mBgColor : mBgColor // ignore: cast_nullable_to_non_nullable
as String?,mFontSize: freezed == mFontSize ? _self.mFontSize : mFontSize // ignore: cast_nullable_to_non_nullable
as double?,taxonomy: freezed == taxonomy ? _self._taxonomy : taxonomy // ignore: cast_nullable_to_non_nullable
as List<String>?,taxonomyPath: freezed == taxonomyPath ? _self.taxonomyPath : taxonomyPath // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
