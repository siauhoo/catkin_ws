// Auto-generated. Do not edit!

// (in-package conv.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class convRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.srcmatrix_A_rownum = null;
      this.srcmatrix_A_colnum = null;
      this.srcmatrix_A = null;
      this.srcmatrix_B_rownum = null;
      this.srcmatrix_B_colnum = null;
      this.srcmatrix_B = null;
    }
    else {
      if (initObj.hasOwnProperty('srcmatrix_A_rownum')) {
        this.srcmatrix_A_rownum = initObj.srcmatrix_A_rownum
      }
      else {
        this.srcmatrix_A_rownum = 0;
      }
      if (initObj.hasOwnProperty('srcmatrix_A_colnum')) {
        this.srcmatrix_A_colnum = initObj.srcmatrix_A_colnum
      }
      else {
        this.srcmatrix_A_colnum = 0;
      }
      if (initObj.hasOwnProperty('srcmatrix_A')) {
        this.srcmatrix_A = initObj.srcmatrix_A
      }
      else {
        this.srcmatrix_A = [];
      }
      if (initObj.hasOwnProperty('srcmatrix_B_rownum')) {
        this.srcmatrix_B_rownum = initObj.srcmatrix_B_rownum
      }
      else {
        this.srcmatrix_B_rownum = 0;
      }
      if (initObj.hasOwnProperty('srcmatrix_B_colnum')) {
        this.srcmatrix_B_colnum = initObj.srcmatrix_B_colnum
      }
      else {
        this.srcmatrix_B_colnum = 0;
      }
      if (initObj.hasOwnProperty('srcmatrix_B')) {
        this.srcmatrix_B = initObj.srcmatrix_B
      }
      else {
        this.srcmatrix_B = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type convRequest
    // Serialize message field [srcmatrix_A_rownum]
    bufferOffset = _serializer.int32(obj.srcmatrix_A_rownum, buffer, bufferOffset);
    // Serialize message field [srcmatrix_A_colnum]
    bufferOffset = _serializer.int32(obj.srcmatrix_A_colnum, buffer, bufferOffset);
    // Serialize message field [srcmatrix_A]
    bufferOffset = _arraySerializer.int8(obj.srcmatrix_A, buffer, bufferOffset, null);
    // Serialize message field [srcmatrix_B_rownum]
    bufferOffset = _serializer.int32(obj.srcmatrix_B_rownum, buffer, bufferOffset);
    // Serialize message field [srcmatrix_B_colnum]
    bufferOffset = _serializer.int32(obj.srcmatrix_B_colnum, buffer, bufferOffset);
    // Serialize message field [srcmatrix_B]
    bufferOffset = _arraySerializer.uint8(obj.srcmatrix_B, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type convRequest
    let len;
    let data = new convRequest(null);
    // Deserialize message field [srcmatrix_A_rownum]
    data.srcmatrix_A_rownum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [srcmatrix_A_colnum]
    data.srcmatrix_A_colnum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [srcmatrix_A]
    data.srcmatrix_A = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [srcmatrix_B_rownum]
    data.srcmatrix_B_rownum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [srcmatrix_B_colnum]
    data.srcmatrix_B_colnum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [srcmatrix_B]
    data.srcmatrix_B = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.srcmatrix_A.length;
    length += object.srcmatrix_B.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conv/convRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b69413d1c5fc23dea379049f7250e8aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 srcmatrix_A_rownum
    int32 srcmatrix_A_colnum
    int8[] srcmatrix_A
    int32 srcmatrix_B_rownum
    int32 srcmatrix_B_colnum
    uint8[] srcmatrix_B
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new convRequest(null);
    if (msg.srcmatrix_A_rownum !== undefined) {
      resolved.srcmatrix_A_rownum = msg.srcmatrix_A_rownum;
    }
    else {
      resolved.srcmatrix_A_rownum = 0
    }

    if (msg.srcmatrix_A_colnum !== undefined) {
      resolved.srcmatrix_A_colnum = msg.srcmatrix_A_colnum;
    }
    else {
      resolved.srcmatrix_A_colnum = 0
    }

    if (msg.srcmatrix_A !== undefined) {
      resolved.srcmatrix_A = msg.srcmatrix_A;
    }
    else {
      resolved.srcmatrix_A = []
    }

    if (msg.srcmatrix_B_rownum !== undefined) {
      resolved.srcmatrix_B_rownum = msg.srcmatrix_B_rownum;
    }
    else {
      resolved.srcmatrix_B_rownum = 0
    }

    if (msg.srcmatrix_B_colnum !== undefined) {
      resolved.srcmatrix_B_colnum = msg.srcmatrix_B_colnum;
    }
    else {
      resolved.srcmatrix_B_colnum = 0
    }

    if (msg.srcmatrix_B !== undefined) {
      resolved.srcmatrix_B = msg.srcmatrix_B;
    }
    else {
      resolved.srcmatrix_B = []
    }

    return resolved;
    }
};

class convResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type convResponse
    // Serialize message field [result]
    bufferOffset = _arraySerializer.uint8(obj.result, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type convResponse
    let len;
    let data = new convResponse(null);
    // Deserialize message field [result]
    data.result = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'conv/convResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b7ed20811caa3db643b4512e66e3f767';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new convResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = []
    }

    return resolved;
    }
};

module.exports = {
  Request: convRequest,
  Response: convResponse,
  md5sum() { return '8a5391416c94b934abefe3529f6e4d67'; },
  datatype() { return 'conv/conv'; }
};
