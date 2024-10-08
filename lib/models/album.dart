import 'package:app/constants/constants.dart';
import 'package:app/models/models.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Album {
  int id;
  String name;
  String? cover;
  int artistId;
  String artistName;
  int playCount = 0;
  ImageProvider? _image;

  Album({
    required this.id,
    required this.name,
    required this.cover,
    required this.artistId,
    required this.artistName,
  });

  ImageProvider get image {
    var image = _image;
    final cover = this.cover;

    if (image == null) {
      _image = image = cover == null
          ? AppImages.defaultImage.image
          : CachedNetworkImageProvider(cover);
    }

    return image;
  }

  bool get isStandardAlbum => !isUnknownAlbum;

  bool get isUnknownAlbum => id == 1;

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      id: json['id'],
      name: json['name'],
      cover: json['cover'],
      artistId: json['artist_id'],
      artistName: json['artist_name'],
    );
  }

  factory Album.fake({
    int? id,
    String? name,
    String? cover,
    int? playCount,
    Artist? artist,
  }) {
    Faker faker = Faker();

    artist ??= Artist.fake();

    return Album(
      id: id ?? faker.randomGenerator.integer(1000, min: 1),
      name: name ?? faker.lorem.words(3).join(' '),
      cover: cover ?? faker.image.image(width: 192, height: 192),
      artistId: artist.id,
      artistName: artist.name,
    )..playCount = playCount ?? faker.randomGenerator.integer(1000);
  }

  Album merge(Album remote) {
    this
      ..artistName = remote.artistName
      ..artistId = remote.artistId
      ..cover = remote.cover
      ..name = remote.name
      ..playCount = remote.playCount;

    _image = null;

    return this;
  }
}
