// Auto-generated. Do not edit!

// (in-package billing.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class billmsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bill_no = null;
      this.tstamp = null;
      this.qty = null;
      this.price = null;
      this.total = null;
    }
    else {
      if (initObj.hasOwnProperty('bill_no')) {
        this.bill_no = initObj.bill_no
      }
      else {
        this.bill_no = 0;
      }
      if (initObj.hasOwnProperty('tstamp')) {
        this.tstamp = initObj.tstamp
      }
      else {
        this.tstamp = '';
      }
      if (initObj.hasOwnProperty('qty')) {
        this.qty = initObj.qty
      }
      else {
        this.qty = 0;
      }
      if (initObj.hasOwnProperty('price')) {
        this.price = initObj.price
      }
      else {
        this.price = 0;
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
    // Serializes a message object of type billmsg
    // Serialize message field [bill_no]
    bufferOffset = _serializer.int32(obj.bill_no, buffer, bufferOffset);
    // Serialize message field [tstamp]
    bufferOffset = _serializer.string(obj.tstamp, buffer, bufferOffset);
    // Serialize message field [qty]
    bufferOffset = _serializer.int32(obj.qty, buffer, bufferOffset);
    // Serialize message field [price]
    bufferOffset = _serializer.int32(obj.price, buffer, bufferOffset);
    // Serialize message field [total]
    bufferOffset = _serializer.int32(obj.total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type billmsg
    let len;
    let data = new billmsg(null);
    // Deserialize message field [bill_no]
    data.bill_no = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tstamp]
    data.tstamp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qty]
    data.qty = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [price]
    data.price = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [total]
    data.total = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.tstamp);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'billing/billmsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '259d452ae106b356db3c6533589d546e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 bill_no
    string tstamp
    int32 qty
    int32 price
    int32 total
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new billmsg(null);
    if (msg.bill_no !== undefined) {
      resolved.bill_no = msg.bill_no;
    }
    else {
      resolved.bill_no = 0
    }

    if (msg.tstamp !== undefined) {
      resolved.tstamp = msg.tstamp;
    }
    else {
      resolved.tstamp = ''
    }

    if (msg.qty !== undefined) {
      resolved.qty = msg.qty;
    }
    else {
      resolved.qty = 0
    }

    if (msg.price !== undefined) {
      resolved.price = msg.price;
    }
    else {
      resolved.price = 0
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

module.exports = billmsg;
