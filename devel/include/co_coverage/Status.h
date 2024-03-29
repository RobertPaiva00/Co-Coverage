// Generated by gencpp from file co_coverage/Status.msg
// DO NOT EDIT!


#ifndef CO_COVERAGE_MESSAGE_STATUS_H
#define CO_COVERAGE_MESSAGE_STATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace co_coverage
{
template <class ContainerAllocator>
struct Status_
{
  typedef Status_<ContainerAllocator> Type;

  Status_()
    : header()
    , status(0)
    , subteam(0)
    , following(0)
    , leading(0)  {
    }
  Status_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(0)
    , subteam(0)
    , following(0)
    , leading(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint32_t _status_type;
  _status_type status;

   typedef uint32_t _subteam_type;
  _subteam_type subteam;

   typedef uint32_t _following_type;
  _following_type following;

   typedef uint32_t _leading_type;
  _leading_type leading;





  typedef boost::shared_ptr< ::co_coverage::Status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::co_coverage::Status_<ContainerAllocator> const> ConstPtr;

}; // struct Status_

typedef ::co_coverage::Status_<std::allocator<void> > Status;

typedef boost::shared_ptr< ::co_coverage::Status > StatusPtr;
typedef boost::shared_ptr< ::co_coverage::Status const> StatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::co_coverage::Status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::co_coverage::Status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::co_coverage::Status_<ContainerAllocator1> & lhs, const ::co_coverage::Status_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.subteam == rhs.subteam &&
    lhs.following == rhs.following &&
    lhs.leading == rhs.leading;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::co_coverage::Status_<ContainerAllocator1> & lhs, const ::co_coverage::Status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace co_coverage

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::co_coverage::Status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::co_coverage::Status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::Status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::Status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::Status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::Status_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::co_coverage::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "73b0293d22aae890e0abda96fec4ba83";
  }

  static const char* value(const ::co_coverage::Status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x73b0293d22aae890ULL;
  static const uint64_t static_value2 = 0xe0abda96fec4ba83ULL;
};

template<class ContainerAllocator>
struct DataType< ::co_coverage::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "co_coverage/Status";
  }

  static const char* value(const ::co_coverage::Status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::co_coverage::Status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint32 status\n"
"uint32 subteam\n"
"uint32 following\n"
"uint32 leading\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::co_coverage::Status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::co_coverage::Status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.subteam);
      stream.next(m.following);
      stream.next(m.leading);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::co_coverage::Status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::co_coverage::Status_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.status);
    s << indent << "subteam: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.subteam);
    s << indent << "following: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.following);
    s << indent << "leading: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.leading);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CO_COVERAGE_MESSAGE_STATUS_H
