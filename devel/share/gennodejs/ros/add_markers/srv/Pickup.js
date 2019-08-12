// Auto-generated. Do not edit!

// (in-package add_markers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PickupRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_order = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_order')) {
        this.goal_order = initObj.goal_order
      }
      else {
        this.goal_order = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickupRequest
    // Serialize message field [goal_order]
    bufferOffset = _serializer.int64(obj.goal_order, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickupRequest
    let len;
    let data = new PickupRequest(null);
    // Deserialize message field [goal_order]
    data.goal_order = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/PickupRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd39719e593fe79a365ea049ae38077e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 goal_order
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickupRequest(null);
    if (msg.goal_order !== undefined) {
      resolved.goal_order = msg.goal_order;
    }
    else {
      resolved.goal_order = 0
    }

    return resolved;
    }
};

class PickupResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PickupResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PickupResponse
    let len;
    let data = new PickupResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.feedback.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'add_markers/PickupResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c14cdf907e5c7c7fd47292add15660f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PickupResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: PickupRequest,
  Response: PickupResponse,
  md5sum() { return '97fe84cd0a5806c89272852f77d29a02'; },
  datatype() { return 'add_markers/Pickup'; }
};
