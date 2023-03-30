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
      this.inlid = null;
      this.inlambda = null;
      this.intau_delta = null;
      this.inmu = null;
      this.ingamma = null;
      this.inangle_desired = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('inlid')) {
        this.inlid = initObj.inlid
      }
      else {
        this.inlid = 0.0;
      }
      if (initObj.hasOwnProperty('inlambda')) {
        this.inlambda = initObj.inlambda
      }
      else {
        this.inlambda = 0.0;
      }
      if (initObj.hasOwnProperty('intau_delta')) {
        this.intau_delta = initObj.intau_delta
      }
      else {
        this.intau_delta = 0.0;
      }
      if (initObj.hasOwnProperty('inmu')) {
        this.inmu = initObj.inmu
      }
      else {
        this.inmu = 0.0;
      }
      if (initObj.hasOwnProperty('ingamma')) {
        this.ingamma = initObj.ingamma
      }
      else {
        this.ingamma = 0.0;
      }
      if (initObj.hasOwnProperty('inangle_desired')) {
        this.inangle_desired = initObj.inangle_desired
      }
      else {
        this.inangle_desired = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubteamParameters
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [inlid]
    bufferOffset = _serializer.float64(obj.inlid, buffer, bufferOffset);
    // Serialize message field [inlambda]
    bufferOffset = _serializer.float64(obj.inlambda, buffer, bufferOffset);
    // Serialize message field [intau_delta]
    bufferOffset = _serializer.float64(obj.intau_delta, buffer, bufferOffset);
    // Serialize message field [inmu]
    bufferOffset = _serializer.float64(obj.inmu, buffer, bufferOffset);
    // Serialize message field [ingamma]
    bufferOffset = _serializer.float64(obj.ingamma, buffer, bufferOffset);
    // Serialize message field [inangle_desired]
    bufferOffset = _serializer.float64(obj.inangle_desired, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubteamParameters
    let len;
    let data = new SubteamParameters(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [inlid]
    data.inlid = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inlambda]
    data.inlambda = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [intau_delta]
    data.intau_delta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inmu]
    data.inmu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ingamma]
    data.ingamma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [inangle_desired]
    data.inangle_desired = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'co_coverage/SubteamParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3960caeb2a960469bd33c37683b0c1f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 inlid
    float64 inlambda
    float64 intau_delta
    float64 inmu
    float64 ingamma
    float64 inangle_desired
    
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

    if (msg.inlid !== undefined) {
      resolved.inlid = msg.inlid;
    }
    else {
      resolved.inlid = 0.0
    }

    if (msg.inlambda !== undefined) {
      resolved.inlambda = msg.inlambda;
    }
    else {
      resolved.inlambda = 0.0
    }

    if (msg.intau_delta !== undefined) {
      resolved.intau_delta = msg.intau_delta;
    }
    else {
      resolved.intau_delta = 0.0
    }

    if (msg.inmu !== undefined) {
      resolved.inmu = msg.inmu;
    }
    else {
      resolved.inmu = 0.0
    }

    if (msg.ingamma !== undefined) {
      resolved.ingamma = msg.ingamma;
    }
    else {
      resolved.ingamma = 0.0
    }

    if (msg.inangle_desired !== undefined) {
      resolved.inangle_desired = msg.inangle_desired;
    }
    else {
      resolved.inangle_desired = 0.0
    }

    return resolved;
    }
};

module.exports = SubteamParameters;