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

class Team {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.team_id = null;
      this.team_num = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('team_id')) {
        this.team_id = initObj.team_id
      }
      else {
        this.team_id = [];
      }
      if (initObj.hasOwnProperty('team_num')) {
        this.team_num = initObj.team_num
      }
      else {
        this.team_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Team
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [team_id]
    bufferOffset = _arraySerializer.int32(obj.team_id, buffer, bufferOffset, null);
    // Serialize message field [team_num]
    bufferOffset = _serializer.uint32(obj.team_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Team
    let len;
    let data = new Team(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [team_id]
    data.team_id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [team_num]
    data.team_num = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.team_id.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'co_coverage/Team';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08b1997128770891cd099f21d0aa94e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32[] team_id
    uint32 team_num
    
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
    const resolved = new Team(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.team_id !== undefined) {
      resolved.team_id = msg.team_id;
    }
    else {
      resolved.team_id = []
    }

    if (msg.team_num !== undefined) {
      resolved.team_num = msg.team_num;
    }
    else {
      resolved.team_num = 0
    }

    return resolved;
    }
};

module.exports = Team;
