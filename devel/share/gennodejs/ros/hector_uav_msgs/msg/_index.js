
"use strict";

let MotorCommand = require('./MotorCommand.js');
let YawrateCommand = require('./YawrateCommand.js');
let RC = require('./RC.js');
let RawMagnetic = require('./RawMagnetic.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let ThrustCommand = require('./ThrustCommand.js');
let RawRC = require('./RawRC.js');
let RawImu = require('./RawImu.js');
let HeadingCommand = require('./HeadingCommand.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let MotorPWM = require('./MotorPWM.js');
let Altimeter = require('./Altimeter.js');
let Supply = require('./Supply.js');
let MotorStatus = require('./MotorStatus.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let RuddersCommand = require('./RuddersCommand.js');
let ControllerState = require('./ControllerState.js');
let HeightCommand = require('./HeightCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let ServoCommand = require('./ServoCommand.js');
let Compass = require('./Compass.js');
let TakeoffAction = require('./TakeoffAction.js');
let TakeoffResult = require('./TakeoffResult.js');
let PoseActionResult = require('./PoseActionResult.js');
let PoseFeedback = require('./PoseFeedback.js');
let TakeoffActionFeedback = require('./TakeoffActionFeedback.js');
let LandingFeedback = require('./LandingFeedback.js');
let TakeoffActionResult = require('./TakeoffActionResult.js');
let PoseActionFeedback = require('./PoseActionFeedback.js');
let TakeoffFeedback = require('./TakeoffFeedback.js');
let LandingActionGoal = require('./LandingActionGoal.js');
let PoseAction = require('./PoseAction.js');
let LandingActionResult = require('./LandingActionResult.js');
let PoseResult = require('./PoseResult.js');
let LandingResult = require('./LandingResult.js');
let PoseGoal = require('./PoseGoal.js');
let LandingAction = require('./LandingAction.js');
let LandingActionFeedback = require('./LandingActionFeedback.js');
let PoseActionGoal = require('./PoseActionGoal.js');
let TakeoffActionGoal = require('./TakeoffActionGoal.js');
let TakeoffGoal = require('./TakeoffGoal.js');
let LandingGoal = require('./LandingGoal.js');

module.exports = {
  MotorCommand: MotorCommand,
  YawrateCommand: YawrateCommand,
  RC: RC,
  RawMagnetic: RawMagnetic,
  VelocityZCommand: VelocityZCommand,
  ThrustCommand: ThrustCommand,
  RawRC: RawRC,
  RawImu: RawImu,
  HeadingCommand: HeadingCommand,
  VelocityXYCommand: VelocityXYCommand,
  MotorPWM: MotorPWM,
  Altimeter: Altimeter,
  Supply: Supply,
  MotorStatus: MotorStatus,
  AttitudeCommand: AttitudeCommand,
  RuddersCommand: RuddersCommand,
  ControllerState: ControllerState,
  HeightCommand: HeightCommand,
  PositionXYCommand: PositionXYCommand,
  ServoCommand: ServoCommand,
  Compass: Compass,
  TakeoffAction: TakeoffAction,
  TakeoffResult: TakeoffResult,
  PoseActionResult: PoseActionResult,
  PoseFeedback: PoseFeedback,
  TakeoffActionFeedback: TakeoffActionFeedback,
  LandingFeedback: LandingFeedback,
  TakeoffActionResult: TakeoffActionResult,
  PoseActionFeedback: PoseActionFeedback,
  TakeoffFeedback: TakeoffFeedback,
  LandingActionGoal: LandingActionGoal,
  PoseAction: PoseAction,
  LandingActionResult: LandingActionResult,
  PoseResult: PoseResult,
  LandingResult: LandingResult,
  PoseGoal: PoseGoal,
  LandingAction: LandingAction,
  LandingActionFeedback: LandingActionFeedback,
  PoseActionGoal: PoseActionGoal,
  TakeoffActionGoal: TakeoffActionGoal,
  TakeoffGoal: TakeoffGoal,
  LandingGoal: LandingGoal,
};
