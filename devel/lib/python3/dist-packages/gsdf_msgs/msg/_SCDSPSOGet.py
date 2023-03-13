# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gsdf_msgs/SCDSPSOGet.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SCDSPSOGet(genpy.Message):
  _md5sum = "4df795d490b81d6e66669b482531c966"
  _type = "gsdf_msgs/SCDSPSOGet"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string key
float32[] pos
float32 val
int32 robot_id
int32 gen
int32 timestamp
"""
  __slots__ = ['key','pos','val','robot_id','gen','timestamp']
  _slot_types = ['string','float32[]','float32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       key,pos,val,robot_id,gen,timestamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SCDSPSOGet, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.key is None:
        self.key = ''
      if self.pos is None:
        self.pos = []
      if self.val is None:
        self.val = 0.
      if self.robot_id is None:
        self.robot_id = 0
      if self.gen is None:
        self.gen = 0
      if self.timestamp is None:
        self.timestamp = 0
    else:
      self.key = ''
      self.pos = []
      self.val = 0.
      self.robot_id = 0
      self.gen = 0
      self.timestamp = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.pos)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.pos))
      _x = self
      buff.write(_get_struct_f3i().pack(_x.val, _x.robot_id, _x.gen, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.key = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.pos = s.unpack(str[start:end])
      _x = self
      start = end
      end += 16
      (_x.val, _x.robot_id, _x.gen, _x.timestamp,) = _get_struct_f3i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.pos)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.pos.tostring())
      _x = self
      buff.write(_get_struct_f3i().pack(_x.val, _x.robot_id, _x.gen, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.key = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.pos = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 16
      (_x.val, _x.robot_id, _x.gen, _x.timestamp,) = _get_struct_f3i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f3i = None
def _get_struct_f3i():
    global _struct_f3i
    if _struct_f3i is None:
        _struct_f3i = struct.Struct("<f3i")
    return _struct_f3i
