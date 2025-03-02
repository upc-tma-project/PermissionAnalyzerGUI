
import 'package:permission_analyzer_gui/common/keys.dart';
import 'package:permission_analyzer_gui/features/analysis/models/models.dart';

import 'models.dart';

class TrafficGroupVertex extends GraphVertex {
  TrafficGroupVertex({required super.id, required this.group});

  TrafficGroup group;

  @override
  List<String> get tags => [
    ...group.graphTags,
    if (unique) tUnique,
    if (common) tCommon,
    tGroup,
  ];

  @override
  get data => group;

  @override
  String get name => group.name;
}
