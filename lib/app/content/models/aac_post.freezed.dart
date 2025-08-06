// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aac_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AACPost {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) int? get postAuthorId;@JsonKey(includeIfNull: false) int? get postAuthorOrgId;@JsonKey(includeIfNull: false) String? get postAuthor;@JsonKey(includeIfNull: false) String? get postAuthorOrg;@JsonKey(includeIfNull: false) int? get postType;@JsonKey(includeIfNull: false) String? get postPassword;@JsonKey(includeIfNull: false) String? get postTitle;@JsonKey(includeIfNull: false) String? get postExcerpt;@JsonKey(includeIfNull: false) AACPostStatus? get postStatus;@JsonKey(includeIfNull: false) bool? get isCommentOpen;@JsonKey(includeIfNull: false) int? get commentCount;@JsonKey(includeIfNull: false) int? get likeCount;@JsonKey(includeIfNull: false) int? get postParent;@JsonKey(includeIfNull: false) String? get postContent;@JsonKey(includeIfNull: false) String? get description;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;@JsonKey(includeIfNull: false) String? get bgColor;@JsonKey(includeIfNull: false) String? get gridSize;@JsonKey(includeIfNull: false) String? get mBgColor;@JsonKey(includeIfNull: false) String? get mFontSize;@JsonKey(includeIfNull: false) List<AACPostMedia>? get postMedia;
/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACPostCopyWith<AACPost> get copyWith => _$AACPostCopyWithImpl<AACPost>(this as AACPost, _$identity);

  /// Serializes this AACPost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACPost&&(identical(other.id, id) || other.id == id)&&(identical(other.postAuthorId, postAuthorId) || other.postAuthorId == postAuthorId)&&(identical(other.postAuthorOrgId, postAuthorOrgId) || other.postAuthorOrgId == postAuthorOrgId)&&(identical(other.postAuthor, postAuthor) || other.postAuthor == postAuthor)&&(identical(other.postAuthorOrg, postAuthorOrg) || other.postAuthorOrg == postAuthorOrg)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.postPassword, postPassword) || other.postPassword == postPassword)&&(identical(other.postTitle, postTitle) || other.postTitle == postTitle)&&(identical(other.postExcerpt, postExcerpt) || other.postExcerpt == postExcerpt)&&(identical(other.postStatus, postStatus) || other.postStatus == postStatus)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.postParent, postParent) || other.postParent == postParent)&&(identical(other.postContent, postContent) || other.postContent == postContent)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor)&&(identical(other.gridSize, gridSize) || other.gridSize == gridSize)&&(identical(other.mBgColor, mBgColor) || other.mBgColor == mBgColor)&&(identical(other.mFontSize, mFontSize) || other.mFontSize == mFontSize)&&const DeepCollectionEquality().equals(other.postMedia, postMedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,postAuthorId,postAuthorOrgId,postAuthor,postAuthorOrg,postType,postPassword,postTitle,postExcerpt,postStatus,isCommentOpen,commentCount,likeCount,postParent,postContent,description,createdAt,updatedAt,bgColor,gridSize,mBgColor,mFontSize,const DeepCollectionEquality().hash(postMedia)]);

@override
String toString() {
  return 'AACPost(id: $id, postAuthorId: $postAuthorId, postAuthorOrgId: $postAuthorOrgId, postAuthor: $postAuthor, postAuthorOrg: $postAuthorOrg, postType: $postType, postPassword: $postPassword, postTitle: $postTitle, postExcerpt: $postExcerpt, postStatus: $postStatus, isCommentOpen: $isCommentOpen, commentCount: $commentCount, likeCount: $likeCount, postParent: $postParent, postContent: $postContent, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, bgColor: $bgColor, gridSize: $gridSize, mBgColor: $mBgColor, mFontSize: $mFontSize, postMedia: $postMedia)';
}


}

/// @nodoc
abstract mixin class $AACPostCopyWith<$Res>  {
  factory $AACPostCopyWith(AACPost value, $Res Function(AACPost) _then) = _$AACPostCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) int? postAuthorId,@JsonKey(includeIfNull: false) int? postAuthorOrgId,@JsonKey(includeIfNull: false) String? postAuthor,@JsonKey(includeIfNull: false) String? postAuthorOrg,@JsonKey(includeIfNull: false) int? postType,@JsonKey(includeIfNull: false) String? postPassword,@JsonKey(includeIfNull: false) String? postTitle,@JsonKey(includeIfNull: false) String? postExcerpt,@JsonKey(includeIfNull: false) AACPostStatus? postStatus,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) int? postParent,@JsonKey(includeIfNull: false) String? postContent,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt,@JsonKey(includeIfNull: false) String? bgColor,@JsonKey(includeIfNull: false) String? gridSize,@JsonKey(includeIfNull: false) String? mBgColor,@JsonKey(includeIfNull: false) String? mFontSize,@JsonKey(includeIfNull: false) List<AACPostMedia>? postMedia
});


$AACPostStatusCopyWith<$Res>? get postStatus;

}
/// @nodoc
class _$AACPostCopyWithImpl<$Res>
    implements $AACPostCopyWith<$Res> {
  _$AACPostCopyWithImpl(this._self, this._then);

  final AACPost _self;
  final $Res Function(AACPost) _then;

/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? postAuthorId = freezed,Object? postAuthorOrgId = freezed,Object? postAuthor = freezed,Object? postAuthorOrg = freezed,Object? postType = freezed,Object? postPassword = freezed,Object? postTitle = freezed,Object? postExcerpt = freezed,Object? postStatus = freezed,Object? isCommentOpen = freezed,Object? commentCount = freezed,Object? likeCount = freezed,Object? postParent = freezed,Object? postContent = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? bgColor = freezed,Object? gridSize = freezed,Object? mBgColor = freezed,Object? mFontSize = freezed,Object? postMedia = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,postAuthorId: freezed == postAuthorId ? _self.postAuthorId : postAuthorId // ignore: cast_nullable_to_non_nullable
as int?,postAuthorOrgId: freezed == postAuthorOrgId ? _self.postAuthorOrgId : postAuthorOrgId // ignore: cast_nullable_to_non_nullable
as int?,postAuthor: freezed == postAuthor ? _self.postAuthor : postAuthor // ignore: cast_nullable_to_non_nullable
as String?,postAuthorOrg: freezed == postAuthorOrg ? _self.postAuthorOrg : postAuthorOrg // ignore: cast_nullable_to_non_nullable
as String?,postType: freezed == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as int?,postPassword: freezed == postPassword ? _self.postPassword : postPassword // ignore: cast_nullable_to_non_nullable
as String?,postTitle: freezed == postTitle ? _self.postTitle : postTitle // ignore: cast_nullable_to_non_nullable
as String?,postExcerpt: freezed == postExcerpt ? _self.postExcerpt : postExcerpt // ignore: cast_nullable_to_non_nullable
as String?,postStatus: freezed == postStatus ? _self.postStatus : postStatus // ignore: cast_nullable_to_non_nullable
as AACPostStatus?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,postParent: freezed == postParent ? _self.postParent : postParent // ignore: cast_nullable_to_non_nullable
as int?,postContent: freezed == postContent ? _self.postContent : postContent // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,bgColor: freezed == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String?,gridSize: freezed == gridSize ? _self.gridSize : gridSize // ignore: cast_nullable_to_non_nullable
as String?,mBgColor: freezed == mBgColor ? _self.mBgColor : mBgColor // ignore: cast_nullable_to_non_nullable
as String?,mFontSize: freezed == mFontSize ? _self.mFontSize : mFontSize // ignore: cast_nullable_to_non_nullable
as String?,postMedia: freezed == postMedia ? _self.postMedia : postMedia // ignore: cast_nullable_to_non_nullable
as List<AACPostMedia>?,
  ));
}
/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACPostStatusCopyWith<$Res>? get postStatus {
    if (_self.postStatus == null) {
    return null;
  }

  return $AACPostStatusCopyWith<$Res>(_self.postStatus!, (value) {
    return _then(_self.copyWith(postStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [AACPost].
extension AACPostPatterns on AACPost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACPost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACPost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACPost value)  $default,){
final _that = this;
switch (_that) {
case _AACPost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACPost value)?  $default,){
final _that = this;
switch (_that) {
case _AACPost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  int? postAuthorId, @JsonKey(includeIfNull: false)  int? postAuthorOrgId, @JsonKey(includeIfNull: false)  String? postAuthor, @JsonKey(includeIfNull: false)  String? postAuthorOrg, @JsonKey(includeIfNull: false)  int? postType, @JsonKey(includeIfNull: false)  String? postPassword, @JsonKey(includeIfNull: false)  String? postTitle, @JsonKey(includeIfNull: false)  String? postExcerpt, @JsonKey(includeIfNull: false)  AACPostStatus? postStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? postParent, @JsonKey(includeIfNull: false)  String? postContent, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  String? mFontSize, @JsonKey(includeIfNull: false)  List<AACPostMedia>? postMedia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACPost() when $default != null:
return $default(_that.id,_that.postAuthorId,_that.postAuthorOrgId,_that.postAuthor,_that.postAuthorOrg,_that.postType,_that.postPassword,_that.postTitle,_that.postExcerpt,_that.postStatus,_that.isCommentOpen,_that.commentCount,_that.likeCount,_that.postParent,_that.postContent,_that.description,_that.createdAt,_that.updatedAt,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.postMedia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  int? postAuthorId, @JsonKey(includeIfNull: false)  int? postAuthorOrgId, @JsonKey(includeIfNull: false)  String? postAuthor, @JsonKey(includeIfNull: false)  String? postAuthorOrg, @JsonKey(includeIfNull: false)  int? postType, @JsonKey(includeIfNull: false)  String? postPassword, @JsonKey(includeIfNull: false)  String? postTitle, @JsonKey(includeIfNull: false)  String? postExcerpt, @JsonKey(includeIfNull: false)  AACPostStatus? postStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? postParent, @JsonKey(includeIfNull: false)  String? postContent, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  String? mFontSize, @JsonKey(includeIfNull: false)  List<AACPostMedia>? postMedia)  $default,) {final _that = this;
switch (_that) {
case _AACPost():
return $default(_that.id,_that.postAuthorId,_that.postAuthorOrgId,_that.postAuthor,_that.postAuthorOrg,_that.postType,_that.postPassword,_that.postTitle,_that.postExcerpt,_that.postStatus,_that.isCommentOpen,_that.commentCount,_that.likeCount,_that.postParent,_that.postContent,_that.description,_that.createdAt,_that.updatedAt,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.postMedia);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  int? postAuthorId, @JsonKey(includeIfNull: false)  int? postAuthorOrgId, @JsonKey(includeIfNull: false)  String? postAuthor, @JsonKey(includeIfNull: false)  String? postAuthorOrg, @JsonKey(includeIfNull: false)  int? postType, @JsonKey(includeIfNull: false)  String? postPassword, @JsonKey(includeIfNull: false)  String? postTitle, @JsonKey(includeIfNull: false)  String? postExcerpt, @JsonKey(includeIfNull: false)  AACPostStatus? postStatus, @JsonKey(includeIfNull: false)  bool? isCommentOpen, @JsonKey(includeIfNull: false)  int? commentCount, @JsonKey(includeIfNull: false)  int? likeCount, @JsonKey(includeIfNull: false)  int? postParent, @JsonKey(includeIfNull: false)  String? postContent, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt, @JsonKey(includeIfNull: false)  String? bgColor, @JsonKey(includeIfNull: false)  String? gridSize, @JsonKey(includeIfNull: false)  String? mBgColor, @JsonKey(includeIfNull: false)  String? mFontSize, @JsonKey(includeIfNull: false)  List<AACPostMedia>? postMedia)?  $default,) {final _that = this;
switch (_that) {
case _AACPost() when $default != null:
return $default(_that.id,_that.postAuthorId,_that.postAuthorOrgId,_that.postAuthor,_that.postAuthorOrg,_that.postType,_that.postPassword,_that.postTitle,_that.postExcerpt,_that.postStatus,_that.isCommentOpen,_that.commentCount,_that.likeCount,_that.postParent,_that.postContent,_that.description,_that.createdAt,_that.updatedAt,_that.bgColor,_that.gridSize,_that.mBgColor,_that.mFontSize,_that.postMedia);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACPost implements AACPost {
  const _AACPost({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.postAuthorId, @JsonKey(includeIfNull: false) this.postAuthorOrgId, @JsonKey(includeIfNull: false) this.postAuthor, @JsonKey(includeIfNull: false) this.postAuthorOrg, @JsonKey(includeIfNull: false) this.postType, @JsonKey(includeIfNull: false) this.postPassword, @JsonKey(includeIfNull: false) this.postTitle, @JsonKey(includeIfNull: false) this.postExcerpt, @JsonKey(includeIfNull: false) this.postStatus, @JsonKey(includeIfNull: false) this.isCommentOpen, @JsonKey(includeIfNull: false) this.commentCount, @JsonKey(includeIfNull: false) this.likeCount, @JsonKey(includeIfNull: false) this.postParent, @JsonKey(includeIfNull: false) this.postContent, @JsonKey(includeIfNull: false) this.description, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt, @JsonKey(includeIfNull: false) this.bgColor, @JsonKey(includeIfNull: false) this.gridSize, @JsonKey(includeIfNull: false) this.mBgColor, @JsonKey(includeIfNull: false) this.mFontSize, @JsonKey(includeIfNull: false) final  List<AACPostMedia>? postMedia}): _postMedia = postMedia;
  factory _AACPost.fromJson(Map<String, dynamic> json) => _$AACPostFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  int? postAuthorId;
@override@JsonKey(includeIfNull: false) final  int? postAuthorOrgId;
@override@JsonKey(includeIfNull: false) final  String? postAuthor;
@override@JsonKey(includeIfNull: false) final  String? postAuthorOrg;
@override@JsonKey(includeIfNull: false) final  int? postType;
@override@JsonKey(includeIfNull: false) final  String? postPassword;
@override@JsonKey(includeIfNull: false) final  String? postTitle;
@override@JsonKey(includeIfNull: false) final  String? postExcerpt;
@override@JsonKey(includeIfNull: false) final  AACPostStatus? postStatus;
@override@JsonKey(includeIfNull: false) final  bool? isCommentOpen;
@override@JsonKey(includeIfNull: false) final  int? commentCount;
@override@JsonKey(includeIfNull: false) final  int? likeCount;
@override@JsonKey(includeIfNull: false) final  int? postParent;
@override@JsonKey(includeIfNull: false) final  String? postContent;
@override@JsonKey(includeIfNull: false) final  String? description;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;
@override@JsonKey(includeIfNull: false) final  String? bgColor;
@override@JsonKey(includeIfNull: false) final  String? gridSize;
@override@JsonKey(includeIfNull: false) final  String? mBgColor;
@override@JsonKey(includeIfNull: false) final  String? mFontSize;
 final  List<AACPostMedia>? _postMedia;
@override@JsonKey(includeIfNull: false) List<AACPostMedia>? get postMedia {
  final value = _postMedia;
  if (value == null) return null;
  if (_postMedia is EqualUnmodifiableListView) return _postMedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACPostCopyWith<_AACPost> get copyWith => __$AACPostCopyWithImpl<_AACPost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACPostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACPost&&(identical(other.id, id) || other.id == id)&&(identical(other.postAuthorId, postAuthorId) || other.postAuthorId == postAuthorId)&&(identical(other.postAuthorOrgId, postAuthorOrgId) || other.postAuthorOrgId == postAuthorOrgId)&&(identical(other.postAuthor, postAuthor) || other.postAuthor == postAuthor)&&(identical(other.postAuthorOrg, postAuthorOrg) || other.postAuthorOrg == postAuthorOrg)&&(identical(other.postType, postType) || other.postType == postType)&&(identical(other.postPassword, postPassword) || other.postPassword == postPassword)&&(identical(other.postTitle, postTitle) || other.postTitle == postTitle)&&(identical(other.postExcerpt, postExcerpt) || other.postExcerpt == postExcerpt)&&(identical(other.postStatus, postStatus) || other.postStatus == postStatus)&&(identical(other.isCommentOpen, isCommentOpen) || other.isCommentOpen == isCommentOpen)&&(identical(other.commentCount, commentCount) || other.commentCount == commentCount)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount)&&(identical(other.postParent, postParent) || other.postParent == postParent)&&(identical(other.postContent, postContent) || other.postContent == postContent)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.bgColor, bgColor) || other.bgColor == bgColor)&&(identical(other.gridSize, gridSize) || other.gridSize == gridSize)&&(identical(other.mBgColor, mBgColor) || other.mBgColor == mBgColor)&&(identical(other.mFontSize, mFontSize) || other.mFontSize == mFontSize)&&const DeepCollectionEquality().equals(other._postMedia, _postMedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,postAuthorId,postAuthorOrgId,postAuthor,postAuthorOrg,postType,postPassword,postTitle,postExcerpt,postStatus,isCommentOpen,commentCount,likeCount,postParent,postContent,description,createdAt,updatedAt,bgColor,gridSize,mBgColor,mFontSize,const DeepCollectionEquality().hash(_postMedia)]);

@override
String toString() {
  return 'AACPost(id: $id, postAuthorId: $postAuthorId, postAuthorOrgId: $postAuthorOrgId, postAuthor: $postAuthor, postAuthorOrg: $postAuthorOrg, postType: $postType, postPassword: $postPassword, postTitle: $postTitle, postExcerpt: $postExcerpt, postStatus: $postStatus, isCommentOpen: $isCommentOpen, commentCount: $commentCount, likeCount: $likeCount, postParent: $postParent, postContent: $postContent, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, bgColor: $bgColor, gridSize: $gridSize, mBgColor: $mBgColor, mFontSize: $mFontSize, postMedia: $postMedia)';
}


}

/// @nodoc
abstract mixin class _$AACPostCopyWith<$Res> implements $AACPostCopyWith<$Res> {
  factory _$AACPostCopyWith(_AACPost value, $Res Function(_AACPost) _then) = __$AACPostCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) int? postAuthorId,@JsonKey(includeIfNull: false) int? postAuthorOrgId,@JsonKey(includeIfNull: false) String? postAuthor,@JsonKey(includeIfNull: false) String? postAuthorOrg,@JsonKey(includeIfNull: false) int? postType,@JsonKey(includeIfNull: false) String? postPassword,@JsonKey(includeIfNull: false) String? postTitle,@JsonKey(includeIfNull: false) String? postExcerpt,@JsonKey(includeIfNull: false) AACPostStatus? postStatus,@JsonKey(includeIfNull: false) bool? isCommentOpen,@JsonKey(includeIfNull: false) int? commentCount,@JsonKey(includeIfNull: false) int? likeCount,@JsonKey(includeIfNull: false) int? postParent,@JsonKey(includeIfNull: false) String? postContent,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt,@JsonKey(includeIfNull: false) String? bgColor,@JsonKey(includeIfNull: false) String? gridSize,@JsonKey(includeIfNull: false) String? mBgColor,@JsonKey(includeIfNull: false) String? mFontSize,@JsonKey(includeIfNull: false) List<AACPostMedia>? postMedia
});


@override $AACPostStatusCopyWith<$Res>? get postStatus;

}
/// @nodoc
class __$AACPostCopyWithImpl<$Res>
    implements _$AACPostCopyWith<$Res> {
  __$AACPostCopyWithImpl(this._self, this._then);

  final _AACPost _self;
  final $Res Function(_AACPost) _then;

/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? postAuthorId = freezed,Object? postAuthorOrgId = freezed,Object? postAuthor = freezed,Object? postAuthorOrg = freezed,Object? postType = freezed,Object? postPassword = freezed,Object? postTitle = freezed,Object? postExcerpt = freezed,Object? postStatus = freezed,Object? isCommentOpen = freezed,Object? commentCount = freezed,Object? likeCount = freezed,Object? postParent = freezed,Object? postContent = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? bgColor = freezed,Object? gridSize = freezed,Object? mBgColor = freezed,Object? mFontSize = freezed,Object? postMedia = freezed,}) {
  return _then(_AACPost(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,postAuthorId: freezed == postAuthorId ? _self.postAuthorId : postAuthorId // ignore: cast_nullable_to_non_nullable
as int?,postAuthorOrgId: freezed == postAuthorOrgId ? _self.postAuthorOrgId : postAuthorOrgId // ignore: cast_nullable_to_non_nullable
as int?,postAuthor: freezed == postAuthor ? _self.postAuthor : postAuthor // ignore: cast_nullable_to_non_nullable
as String?,postAuthorOrg: freezed == postAuthorOrg ? _self.postAuthorOrg : postAuthorOrg // ignore: cast_nullable_to_non_nullable
as String?,postType: freezed == postType ? _self.postType : postType // ignore: cast_nullable_to_non_nullable
as int?,postPassword: freezed == postPassword ? _self.postPassword : postPassword // ignore: cast_nullable_to_non_nullable
as String?,postTitle: freezed == postTitle ? _self.postTitle : postTitle // ignore: cast_nullable_to_non_nullable
as String?,postExcerpt: freezed == postExcerpt ? _self.postExcerpt : postExcerpt // ignore: cast_nullable_to_non_nullable
as String?,postStatus: freezed == postStatus ? _self.postStatus : postStatus // ignore: cast_nullable_to_non_nullable
as AACPostStatus?,isCommentOpen: freezed == isCommentOpen ? _self.isCommentOpen : isCommentOpen // ignore: cast_nullable_to_non_nullable
as bool?,commentCount: freezed == commentCount ? _self.commentCount : commentCount // ignore: cast_nullable_to_non_nullable
as int?,likeCount: freezed == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int?,postParent: freezed == postParent ? _self.postParent : postParent // ignore: cast_nullable_to_non_nullable
as int?,postContent: freezed == postContent ? _self.postContent : postContent // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,bgColor: freezed == bgColor ? _self.bgColor : bgColor // ignore: cast_nullable_to_non_nullable
as String?,gridSize: freezed == gridSize ? _self.gridSize : gridSize // ignore: cast_nullable_to_non_nullable
as String?,mBgColor: freezed == mBgColor ? _self.mBgColor : mBgColor // ignore: cast_nullable_to_non_nullable
as String?,mFontSize: freezed == mFontSize ? _self.mFontSize : mFontSize // ignore: cast_nullable_to_non_nullable
as String?,postMedia: freezed == postMedia ? _self._postMedia : postMedia // ignore: cast_nullable_to_non_nullable
as List<AACPostMedia>?,
  ));
}

/// Create a copy of AACPost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACPostStatusCopyWith<$Res>? get postStatus {
    if (_self.postStatus == null) {
    return null;
  }

  return $AACPostStatusCopyWith<$Res>(_self.postStatus!, (value) {
    return _then(_self.copyWith(postStatus: value));
  });
}
}


/// @nodoc
mixin _$AACPostStatus {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get status;
/// Create a copy of AACPostStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACPostStatusCopyWith<AACPostStatus> get copyWith => _$AACPostStatusCopyWithImpl<AACPostStatus>(this as AACPostStatus, _$identity);

  /// Serializes this AACPostStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACPostStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACPostStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class $AACPostStatusCopyWith<$Res>  {
  factory $AACPostStatusCopyWith(AACPostStatus value, $Res Function(AACPostStatus) _then) = _$AACPostStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class _$AACPostStatusCopyWithImpl<$Res>
    implements $AACPostStatusCopyWith<$Res> {
  _$AACPostStatusCopyWithImpl(this._self, this._then);

  final AACPostStatus _self;
  final $Res Function(AACPostStatus) _then;

/// Create a copy of AACPostStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AACPostStatus].
extension AACPostStatusPatterns on AACPostStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACPostStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACPostStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACPostStatus value)  $default,){
final _that = this;
switch (_that) {
case _AACPostStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACPostStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AACPostStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACPostStatus() when $default != null:
return $default(_that.id,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)  $default,) {final _that = this;
switch (_that) {
case _AACPostStatus():
return $default(_that.id,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AACPostStatus() when $default != null:
return $default(_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACPostStatus implements AACPostStatus {
  const _AACPostStatus({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.status});
  factory _AACPostStatus.fromJson(Map<String, dynamic> json) => _$AACPostStatusFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? status;

/// Create a copy of AACPostStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACPostStatusCopyWith<_AACPostStatus> get copyWith => __$AACPostStatusCopyWithImpl<_AACPostStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACPostStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACPostStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACPostStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AACPostStatusCopyWith<$Res> implements $AACPostStatusCopyWith<$Res> {
  factory _$AACPostStatusCopyWith(_AACPostStatus value, $Res Function(_AACPostStatus) _then) = __$AACPostStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class __$AACPostStatusCopyWithImpl<$Res>
    implements _$AACPostStatusCopyWith<$Res> {
  __$AACPostStatusCopyWithImpl(this._self, this._then);

  final _AACPostStatus _self;
  final $Res Function(_AACPostStatus) _then;

/// Create a copy of AACPostStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_AACPostStatus(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AACPostMedia {

@JsonKey(includeIfNull: false) int? get postId;@JsonKey(includeIfNull: false) int? get sequence;@JsonKey(includeIfNull: false) int? get mediumId;@JsonKey(includeIfNull: false) Medium? get medium;@JsonKey(includeIfNull: false) bool? get isMain;@JsonKey(includeIfNull: false) double? get screenX;@JsonKey(includeIfNull: false) double? get screenY;@JsonKey(includeIfNull: false) String? get customTitle;@JsonKey(includeIfNull: false) AACPostMediaStatus? get status;@JsonKey(includeIfNull: false) String? get description;@JsonKey(includeIfNull: false) DateTime? get createdAt;@JsonKey(includeIfNull: false) DateTime? get updatedAt;
/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACPostMediaCopyWith<AACPostMedia> get copyWith => _$AACPostMediaCopyWithImpl<AACPostMedia>(this as AACPostMedia, _$identity);

  /// Serializes this AACPostMedia to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACPostMedia&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.mediumId, mediumId) || other.mediumId == mediumId)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.isMain, isMain) || other.isMain == isMain)&&(identical(other.screenX, screenX) || other.screenX == screenX)&&(identical(other.screenY, screenY) || other.screenY == screenY)&&(identical(other.customTitle, customTitle) || other.customTitle == customTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,sequence,mediumId,medium,isMain,screenX,screenY,customTitle,status,description,createdAt,updatedAt);

@override
String toString() {
  return 'AACPostMedia(postId: $postId, sequence: $sequence, mediumId: $mediumId, medium: $medium, isMain: $isMain, screenX: $screenX, screenY: $screenY, customTitle: $customTitle, status: $status, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AACPostMediaCopyWith<$Res>  {
  factory $AACPostMediaCopyWith(AACPostMedia value, $Res Function(AACPostMedia) _then) = _$AACPostMediaCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? postId,@JsonKey(includeIfNull: false) int? sequence,@JsonKey(includeIfNull: false) int? mediumId,@JsonKey(includeIfNull: false) Medium? medium,@JsonKey(includeIfNull: false) bool? isMain,@JsonKey(includeIfNull: false) double? screenX,@JsonKey(includeIfNull: false) double? screenY,@JsonKey(includeIfNull: false) String? customTitle,@JsonKey(includeIfNull: false) AACPostMediaStatus? status,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


$MediumCopyWith<$Res>? get medium;$AACPostMediaStatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$AACPostMediaCopyWithImpl<$Res>
    implements $AACPostMediaCopyWith<$Res> {
  _$AACPostMediaCopyWithImpl(this._self, this._then);

  final AACPostMedia _self;
  final $Res Function(AACPostMedia) _then;

/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = freezed,Object? sequence = freezed,Object? mediumId = freezed,Object? medium = freezed,Object? isMain = freezed,Object? screenX = freezed,Object? screenY = freezed,Object? customTitle = freezed,Object? status = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,mediumId: freezed == mediumId ? _self.mediumId : mediumId // ignore: cast_nullable_to_non_nullable
as int?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as Medium?,isMain: freezed == isMain ? _self.isMain : isMain // ignore: cast_nullable_to_non_nullable
as bool?,screenX: freezed == screenX ? _self.screenX : screenX // ignore: cast_nullable_to_non_nullable
as double?,screenY: freezed == screenY ? _self.screenY : screenY // ignore: cast_nullable_to_non_nullable
as double?,customTitle: freezed == customTitle ? _self.customTitle : customTitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AACPostMediaStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $MediumCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACPostMediaStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AACPostMediaStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AACPostMedia].
extension AACPostMediaPatterns on AACPostMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACPostMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACPostMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACPostMedia value)  $default,){
final _that = this;
switch (_that) {
case _AACPostMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACPostMedia value)?  $default,){
final _that = this;
switch (_that) {
case _AACPostMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? postId, @JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  AACPostMediaStatus? status, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACPostMedia() when $default != null:
return $default(_that.postId,_that.sequence,_that.mediumId,_that.medium,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.status,_that.description,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? postId, @JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  AACPostMediaStatus? status, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AACPostMedia():
return $default(_that.postId,_that.sequence,_that.mediumId,_that.medium,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.status,_that.description,_that.createdAt,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? postId, @JsonKey(includeIfNull: false)  int? sequence, @JsonKey(includeIfNull: false)  int? mediumId, @JsonKey(includeIfNull: false)  Medium? medium, @JsonKey(includeIfNull: false)  bool? isMain, @JsonKey(includeIfNull: false)  double? screenX, @JsonKey(includeIfNull: false)  double? screenY, @JsonKey(includeIfNull: false)  String? customTitle, @JsonKey(includeIfNull: false)  AACPostMediaStatus? status, @JsonKey(includeIfNull: false)  String? description, @JsonKey(includeIfNull: false)  DateTime? createdAt, @JsonKey(includeIfNull: false)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AACPostMedia() when $default != null:
return $default(_that.postId,_that.sequence,_that.mediumId,_that.medium,_that.isMain,_that.screenX,_that.screenY,_that.customTitle,_that.status,_that.description,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACPostMedia implements AACPostMedia {
  const _AACPostMedia({@JsonKey(includeIfNull: false) this.postId, @JsonKey(includeIfNull: false) this.sequence, @JsonKey(includeIfNull: false) this.mediumId, @JsonKey(includeIfNull: false) this.medium, @JsonKey(includeIfNull: false) this.isMain, @JsonKey(includeIfNull: false) this.screenX, @JsonKey(includeIfNull: false) this.screenY, @JsonKey(includeIfNull: false) this.customTitle, @JsonKey(includeIfNull: false) this.status, @JsonKey(includeIfNull: false) this.description, @JsonKey(includeIfNull: false) this.createdAt, @JsonKey(includeIfNull: false) this.updatedAt});
  factory _AACPostMedia.fromJson(Map<String, dynamic> json) => _$AACPostMediaFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? postId;
@override@JsonKey(includeIfNull: false) final  int? sequence;
@override@JsonKey(includeIfNull: false) final  int? mediumId;
@override@JsonKey(includeIfNull: false) final  Medium? medium;
@override@JsonKey(includeIfNull: false) final  bool? isMain;
@override@JsonKey(includeIfNull: false) final  double? screenX;
@override@JsonKey(includeIfNull: false) final  double? screenY;
@override@JsonKey(includeIfNull: false) final  String? customTitle;
@override@JsonKey(includeIfNull: false) final  AACPostMediaStatus? status;
@override@JsonKey(includeIfNull: false) final  String? description;
@override@JsonKey(includeIfNull: false) final  DateTime? createdAt;
@override@JsonKey(includeIfNull: false) final  DateTime? updatedAt;

/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACPostMediaCopyWith<_AACPostMedia> get copyWith => __$AACPostMediaCopyWithImpl<_AACPostMedia>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACPostMediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACPostMedia&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.mediumId, mediumId) || other.mediumId == mediumId)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.isMain, isMain) || other.isMain == isMain)&&(identical(other.screenX, screenX) || other.screenX == screenX)&&(identical(other.screenY, screenY) || other.screenY == screenY)&&(identical(other.customTitle, customTitle) || other.customTitle == customTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,postId,sequence,mediumId,medium,isMain,screenX,screenY,customTitle,status,description,createdAt,updatedAt);

@override
String toString() {
  return 'AACPostMedia(postId: $postId, sequence: $sequence, mediumId: $mediumId, medium: $medium, isMain: $isMain, screenX: $screenX, screenY: $screenY, customTitle: $customTitle, status: $status, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AACPostMediaCopyWith<$Res> implements $AACPostMediaCopyWith<$Res> {
  factory _$AACPostMediaCopyWith(_AACPostMedia value, $Res Function(_AACPostMedia) _then) = __$AACPostMediaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? postId,@JsonKey(includeIfNull: false) int? sequence,@JsonKey(includeIfNull: false) int? mediumId,@JsonKey(includeIfNull: false) Medium? medium,@JsonKey(includeIfNull: false) bool? isMain,@JsonKey(includeIfNull: false) double? screenX,@JsonKey(includeIfNull: false) double? screenY,@JsonKey(includeIfNull: false) String? customTitle,@JsonKey(includeIfNull: false) AACPostMediaStatus? status,@JsonKey(includeIfNull: false) String? description,@JsonKey(includeIfNull: false) DateTime? createdAt,@JsonKey(includeIfNull: false) DateTime? updatedAt
});


@override $MediumCopyWith<$Res>? get medium;@override $AACPostMediaStatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$AACPostMediaCopyWithImpl<$Res>
    implements _$AACPostMediaCopyWith<$Res> {
  __$AACPostMediaCopyWithImpl(this._self, this._then);

  final _AACPostMedia _self;
  final $Res Function(_AACPostMedia) _then;

/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = freezed,Object? sequence = freezed,Object? mediumId = freezed,Object? medium = freezed,Object? isMain = freezed,Object? screenX = freezed,Object? screenY = freezed,Object? customTitle = freezed,Object? status = freezed,Object? description = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AACPostMedia(
postId: freezed == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as int?,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,mediumId: freezed == mediumId ? _self.mediumId : mediumId // ignore: cast_nullable_to_non_nullable
as int?,medium: freezed == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as Medium?,isMain: freezed == isMain ? _self.isMain : isMain // ignore: cast_nullable_to_non_nullable
as bool?,screenX: freezed == screenX ? _self.screenX : screenX // ignore: cast_nullable_to_non_nullable
as double?,screenY: freezed == screenY ? _self.screenY : screenY // ignore: cast_nullable_to_non_nullable
as double?,customTitle: freezed == customTitle ? _self.customTitle : customTitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AACPostMediaStatus?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediumCopyWith<$Res>? get medium {
    if (_self.medium == null) {
    return null;
  }

  return $MediumCopyWith<$Res>(_self.medium!, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of AACPostMedia
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AACPostMediaStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AACPostMediaStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// @nodoc
mixin _$AACPostMediaStatus {

@JsonKey(includeIfNull: false) int? get id;@JsonKey(includeIfNull: false) String? get status;
/// Create a copy of AACPostMediaStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AACPostMediaStatusCopyWith<AACPostMediaStatus> get copyWith => _$AACPostMediaStatusCopyWithImpl<AACPostMediaStatus>(this as AACPostMediaStatus, _$identity);

  /// Serializes this AACPostMediaStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AACPostMediaStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACPostMediaStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class $AACPostMediaStatusCopyWith<$Res>  {
  factory $AACPostMediaStatusCopyWith(AACPostMediaStatus value, $Res Function(AACPostMediaStatus) _then) = _$AACPostMediaStatusCopyWithImpl;
@useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class _$AACPostMediaStatusCopyWithImpl<$Res>
    implements $AACPostMediaStatusCopyWith<$Res> {
  _$AACPostMediaStatusCopyWithImpl(this._self, this._then);

  final AACPostMediaStatus _self;
  final $Res Function(AACPostMediaStatus) _then;

/// Create a copy of AACPostMediaStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AACPostMediaStatus].
extension AACPostMediaStatusPatterns on AACPostMediaStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AACPostMediaStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AACPostMediaStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AACPostMediaStatus value)  $default,){
final _that = this;
switch (_that) {
case _AACPostMediaStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AACPostMediaStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AACPostMediaStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AACPostMediaStatus() when $default != null:
return $default(_that.id,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)  $default,) {final _that = this;
switch (_that) {
case _AACPostMediaStatus():
return $default(_that.id,_that.status);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(includeIfNull: false)  int? id, @JsonKey(includeIfNull: false)  String? status)?  $default,) {final _that = this;
switch (_that) {
case _AACPostMediaStatus() when $default != null:
return $default(_that.id,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AACPostMediaStatus implements AACPostMediaStatus {
  const _AACPostMediaStatus({@JsonKey(includeIfNull: false) this.id, @JsonKey(includeIfNull: false) this.status});
  factory _AACPostMediaStatus.fromJson(Map<String, dynamic> json) => _$AACPostMediaStatusFromJson(json);

@override@JsonKey(includeIfNull: false) final  int? id;
@override@JsonKey(includeIfNull: false) final  String? status;

/// Create a copy of AACPostMediaStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AACPostMediaStatusCopyWith<_AACPostMediaStatus> get copyWith => __$AACPostMediaStatusCopyWithImpl<_AACPostMediaStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AACPostMediaStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AACPostMediaStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status);

@override
String toString() {
  return 'AACPostMediaStatus(id: $id, status: $status)';
}


}

/// @nodoc
abstract mixin class _$AACPostMediaStatusCopyWith<$Res> implements $AACPostMediaStatusCopyWith<$Res> {
  factory _$AACPostMediaStatusCopyWith(_AACPostMediaStatus value, $Res Function(_AACPostMediaStatus) _then) = __$AACPostMediaStatusCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(includeIfNull: false) int? id,@JsonKey(includeIfNull: false) String? status
});




}
/// @nodoc
class __$AACPostMediaStatusCopyWithImpl<$Res>
    implements _$AACPostMediaStatusCopyWith<$Res> {
  __$AACPostMediaStatusCopyWithImpl(this._self, this._then);

  final _AACPostMediaStatus _self;
  final $Res Function(_AACPostMediaStatus) _then;

/// Create a copy of AACPostMediaStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,}) {
  return _then(_AACPostMediaStatus(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
