import 'dart:async';

import 'package:flutter_application_httptest/models/picsum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final picsumProvider = AsyncNotifierProvider<PicsumViewModel, Picsum>(
  () => PicsumViewModel(),
);

class PicsumViewModel extends AsyncNotifier<Picsum> {
  @override
  FutureOr<Picsum> build() {
    return Picsum(
        id: "id",
        author: "author",
        width: 100,
        height: 100,
        url: "url",
        download_url: "download_url");
  }
}
