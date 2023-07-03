// Auto-generated. Do not edit!

// (in-package co_coverage.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SubteamParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lid = null;
      this.lambda = null;
      this.tau_delta = null;
      this.mu = null;
      this.gamma = null;
      this.angle_desired = null;
      this.curve = null;
      this.order_inv = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lid')) {
        this.lid = initObj.lid
      }
      else {
        this.lid = 0.0;
      }
      if (initObj.hasOwnProperty('lambda')) {
        this.lambda = initObj.lambda
      }
      else {
        this.lambda = 0.0;
      }
      if (initObj.hasOwnProperty('tau_delta')) {
        this.tau_delta = initObj.tau_delta
      }
      else {
        this.tau_delta = 0.0;
      }
      if (initObj.hasOwnProperty('mu')) {
        this.mu = initObj.mu
      }
      else {
        this.mu = 0.0;
      }
      if (initObj.hasOwnProperty('gamma')) {
        this.gamma = initObj.gamma
      }
      else {
        this.gamma = 0.0;
      }
      if (initObj.hasOwnProperty('angle_desired')) {
        this.angle_desired = initObj.angle_desired
      }
      else {
        this.angle_desired = 0.0;
      }
      if (initObj.hasOwnProperty('curve')) {
        this.curve = initObj.curve
      }
      else {
        this.curve = 0;
      }
      if (initObj.hasOwnProperty('order_inv')) {
        this.order_inv = initObj.order_inv
      }
      else {
        this.order_inv = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubteamParameters
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lid]
    bufferOffset = _serializer.float64(obj.lid, buffer, bufferOffset);
    // Serialize message field [lambda]
    bufferOffset = _serializer.float64(obj.lambda, buffer, bufferOffset);
    // Serialize message field [tau_delta]
    bufferOffset = _serializer.float64(obj.tau_delta, buffer, bufferOffset);
    // Serialize message field [mu]
    bufferOffset = _serializer.float64(obj.mu, buffer, bufferOffset);
    // Serialize message field [gamma]
    bufferOffset = _serializer.float64(obj.gamma, buffer, bufferOffset);
    // Serialize message field [angle_desired]
    bufferOffset = _serializer.float64(obj.angle_desired, buffer, bufferOffset);
    // Serialize message field [curve]
    bufferOffset = _serializer.uint8(obj.curve, buffer, bufferOffset);
    // Serialize message field [order_inv]
    bufferOffset = _arraySerializer.int32(obj.order_inv, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubteamParameters
    let len;
    let data = new SubteamParameters(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lid]
    data.lid = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lambda]
    data.lambda = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tau_delta]
    data.tau_delta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mu]
    data.mu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gamma]
    data.gamma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_desired]
    data.angle_desired = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curve]
    data.curve = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [order_inv]
    data.order_inv = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.order_inv.length;
    return length + 53;
  }

  static datatype() {
    // Returns string type for a message object
    return 'co_coverage/SubteamParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9c99d86e077aca9b38aebac11d6f8df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 lid
    float64 lambda
    float64 tau_delta
    float64 mu
    float64 gamma
    float64 angle_desired
    uint8 curve
    int32[] order_inv
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubteamParameters(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lid !== undefined) {
      resolved.lid = msg.lid;
    }
    else {
      resolved.lid = 0.0
    }

    if (msg.lambda !== undefined) {
      resolved.lambda = msg.lambda;
    }
    else {
      resolved.lambda = 0.0
    }

    if (msg.tau_delta !== undefined) {
      resolved.tau_delta = msg.tau_delta;
    }
    else {
      resolved.tau_delta = 0.0
    }

    if (msg.mu !== undefined) {
      resolved.mu = msg.mu;
    }
    else {
      resolved.mu = 0.0
    }

    if (msg.gamma !== undefined) {
      resolved.gamma = msg.gamma;
    }
    else {
      resolved.gamma = 0.0
    }

    if (msg.angle_desired !== undefined) {
      resolved.angle_desired = msg.angle_desired;
    }
    else {
      resolved.angle_desired = 0.0
    }

    if (msg.curve !== undefined) {
      resolved.curve = msg.curve;
    }
    else {
      resolved.curve = 0
    }

    if (msg.order_inv !== undefined) {
      resolved.order_inv = msg.order_inv;
    }
    else {
      resolved.order_inv = []
    }

    return resolved;
    }
};

module.exports = SubteamParameters;
