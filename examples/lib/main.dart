import 'package:examples/platform/stub_provider.dart'
    if (dart.library.html) 'platform/web_provider.dart';
import 'package:examples/stories/animations/benchmark_example.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/constant_volume_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/distance_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/friction_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/gear_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/motor_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/mouse_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/prismatic_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/pulley_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/revolute_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/rope_joint.dart';
import 'package:examples/stories/bridge_libraries/flame_forge2d/joints/weld_joint.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final page = PageProviderImpl().getPage();

  final routes = <String, FlameGame Function()>{
    'constant_volume_joint': ConstantVolumeJointExample.new,
    'distance_joint': DistanceJointExample.new,
    'friction_joint': FrictionJointExample.new,
    'gear_joint': GearJointExample.new,
    'motor_joint': MotorJointExample.new,
    'mouse_joint': MouseJointExample.new,
    'pulley_joint': PulleyJointExample.new,
    'prismatic_joint': PrismaticJointExample.new,
    'revolute_joint': RevoluteJointExample.new,
    'rope_joint': RopeJointExample.new,
    'weld_joint': WeldJointExample.new,
  };
  final game = routes[page]?.call();
  if (game != null) {
    runApp(GameWidget(game: game));
  } else {
    runAsDashbook();
  }
}

void runAsDashbook() {
  runApp(GameWidget(game: BenchmarkExample()));
}
