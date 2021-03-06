import 'dart:typed_data';

import 'package:flutter/services.dart';

dynamic buildThumbnailRequest({
  String protocol = 'https://',
  String homeserver = 'matrix.org',
  String accessToken,
  String serverName,
  String mediaUri,
  int size = 52,
  String method = 'crop',
}) {
  List<String> mediaUriParts = mediaUri.split('/');

  // Parce the mxc uri for the server location and id
  String mediaId = mediaUriParts[mediaUriParts.length - 1];
  String mediaServer = serverName ?? mediaUriParts[mediaUriParts.length - 2];

  String url =
      '$protocol$homeserver/_matrix/media/r0/thumbnail/${mediaServer ?? homeserver}/$mediaId';

  // Params
  url += '?height=${size}&width=${size}&method=${method}';

  Map<String, String> headers = {
    'Authorization': 'Bearer $accessToken',
  };

  return {
    'url': url,
    'headers': headers,
  };
}

dynamic buildMediaDownloadRequest({
  String protocol = 'https://',
  String homeserver = 'matrix.org',
  String accessToken,
  String serverName,
  String mediaUri,
}) {
  final List<String> mediaUriParts = mediaUri.split('/');
  final String mediaId = mediaUriParts[mediaUriParts.length - 1];
  final String mediaOrigin = serverName ?? homeserver;
  final String url =
      '$protocol$homeserver/_matrix/media/r0/download/$mediaOrigin/$mediaId';

  Map<String, String> headers = {
    'Authorization': 'Bearer $accessToken',
  };

  return {
    'url': url,
    'headers': headers,
  };
}

/**
 * https://matrix.org/docs/spec/client_server/latest#id392
 * 
 * Upload some content to the content repository.
 */
dynamic buildMediaUploadRequest({
  String protocol = 'https://',
  String homeserver = 'matrix.org',
  String accessToken,
  String fileName,
  String fileType = 'application/jpeg', // Content-Type: application/pdf
  int fileLength,
}) {
  String url = '$protocol$homeserver/_matrix/media/r0/upload';

  // Params
  url += fileName != null ? '?filename=$fileName' : '';

  Map<String, String> headers = {
    'Authorization': 'Bearer $accessToken',
    'Content-Type': '$fileType',
    'Content-Length': '$fileLength',
  };

  return {
    'url': url,
    'headers': headers,
  };
}
