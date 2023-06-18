// Auto-generated. Do not edit!

// (in-package billing.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class inc_invRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.qty = null;
      this.total = null;
    }
    else {
      if (initObj.hasOwnProperty('qty')) {
        this.qty = initObj.qty
      }
      else {
        this.qty = 0;
      }
      if (initObj.hasOwnProperty('total')) {
        this.total = initObj.total
      }
      else {
        this.total = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inc_invRequest
    // Serialize message field [qty]
    bufferOffset = _serializer.int32(obj.qty, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.int32(obj.total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inc_invRequest
    let len;
    let data = new inc_invRequest(null);
    // Deserialize message field [qty]
    data.qty = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'billing/inc_invRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efb79c982100d13d404de53583444bca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 qty
    int32 total
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inc_invRequest(null);
    if (msg.qty !== undefined) {
      resolved.qty = msg.qty;
    }
    else {
      resolved.qty = 0
    }

    if (msg.total !== undefined) {
      resolved.total = msg.total;
    }
    else {
      resolved.total = 0
    }

    return resolved;
    }
};

class inc_invResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type inc_invResponse
    // Serialize message field [success]
    bufferOffset = _serializer.string(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type inc_invResponse
    let len;
    let data = new inc_invResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.success);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'billing/inc_invResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6563811f75f3715f19a981f2cc0a3560';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new inc_invResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: inc_invRequest,
  Response: inc_invResponse,
  md5sum() { return '31f8c6a2c4eb0a57e12824b70548dc9d'; },
  datatype() { return 'billing/inc_inv'; }
};
