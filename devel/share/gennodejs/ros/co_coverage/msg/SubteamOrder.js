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

class SubteamOrder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.order = null;
      this.num_robots = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('order')) {
        this.order = initObj.order
      }
      else {
        this.order = [];
      }
      if (initObj.hasOwnProperty('num_robots')) {
        this.num_robots = initObj.num_robots
      }
      else {
        this.num_robots = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubteamOrder
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [order]
    bufferOffset = _arraySerializer.int32(obj.order, buffer, bufferOffset, null);
    // Serialize message field [num_robots]
    bufferOffset = _serializer.int32(obj.num_robots, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubteamOrder
    let len;
    let data = new SubteamOrder(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [order]
    data.order = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [num_robots]
    data.num_robots = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.order.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'co_coverage/SubteamOrder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5287d70d5cae641d69251c73b5adda1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[] order
    int32 num_robots
    
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
    const resolved = new SubteamOrder(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.order !== undefined) {
      resolved.order = msg.order;
    }
    else {
      resolved.order = []
    }

    if (msg.num_robots !== undefined) {
      resolved.num_robots = msg.num_robots;
    }
    else {
      resolved.num_robots = 0
    }

    return resolved;
    }
};

module.exports = SubteamOrder;
