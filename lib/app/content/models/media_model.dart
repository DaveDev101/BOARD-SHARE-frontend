// lib/models/symbol_model.dart
import 'dart:ui';

import 'package:boardshare/app/content/models/aac_post.dart';

enum MediumType { hanspeakSymbol, image, text, space }

class MediaModel {
  final int mediumId;
  final String title;
  final MediumType type;
  final String imageUrl;
  String? localPath;

  MediaModel({
    required this.mediumId,
    required this.title,
    required this.type,
    required this.imageUrl,
    this.localPath,
  });

  MediaModel copyWith({
    int? mediumId,
    String? title,
    MediumType? type,
    String? imageUrl,
    String? localPath,
  }) => MediaModel(
    mediumId: mediumId ?? this.mediumId,
    title: title ?? this.title,
    type: type ?? this.type,
    imageUrl: imageUrl ?? this.imageUrl,
    localPath: localPath ?? this.localPath,
  );
}

class PostModel {
  final int id;
  final int postAuthorId;
  final int postAuthorOrgId;
  final String postTitle;
  String? postExcerpt;
  String? description;
  final AACPostStatus status;
  final List<MediaModel?> media;
  Color? bgColor;
  String? gridSize;
  Color? mBgColor;
  double? mFontSize;

  PostModel({
    required this.id,
    required this.postAuthorId,
    required this.postAuthorOrgId,
    required this.postTitle,
    this.postExcerpt,
    this.description,
    required this.status,
    required this.media,
    this.bgColor,
    this.gridSize,
    this.mBgColor,
    this.mFontSize,
  });

  PostModel copyWith({
    int? id,
    int? postAuthorId,
    int? postAuthorOrgId,
    String? postTitle,
    String? postExcerpt,
    String? description,
    AACPostStatus? status,
    List<MediaModel?>? media,
    Color? bgColor,
    String? gridSize,
    Color? mBgColor,
    double? mFontSize,
  }) => PostModel(
    id: id ?? this.id,
    postAuthorId: postAuthorId ?? this.postAuthorId,
    postAuthorOrgId: postAuthorOrgId ?? this.postAuthorOrgId,
    postTitle: postTitle ?? this.postTitle,
    postExcerpt: postExcerpt ?? this.postExcerpt,
    description: description ?? this.description,
    status: status ?? this.status,
    media: media ?? this.media,
    bgColor: bgColor ?? this.bgColor,
    gridSize: gridSize ?? this.gridSize,
    mBgColor: mBgColor ?? this.mBgColor,
    mFontSize: mFontSize ?? this.mFontSize,
  );
}
