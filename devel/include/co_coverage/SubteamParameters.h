// Generated by gencpp from file co_coverage/SubteamParameters.msg
// DO NOT EDIT!


#ifndef CO_COVERAGE_MESSAGE_SUBTEAMPARAMETERS_H
#define CO_COVERAGE_MESSAGE_SUBTEAMPARAMETERS_H


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
struct SubteamParameters_
{
  typedef SubteamParameters_<ContainerAllocator> Type;

  SubteamParameters_()
    : header()
    , inlid(0.0)
    , inlambda(0.0)
    , intau_delta(0.0)
    , inmu(0.0)
    , ingamma(0.0)
    , inangle_desired(0.0)  {
    }
  SubteamParameters_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , inlid(0.0)
    , inlambda(0.0)
    , intau_delta(0.0)
    , inmu(0.0)
    , ingamma(0.0)
    , inangle_desired(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _inlid_type;
  _inlid_type inlid;

   typedef double _inlambda_type;
  _inlambda_type inlambda;

   typedef double _intau_delta_type;
  _intau_delta_type intau_delta;

   typedef double _inmu_type;
  _inmu_type inmu;

   typedef double _ingamma_type;
  _ingamma_type ingamma;

   typedef double _inangle_desired_type;
  _inangle_desired_type inangle_desired;





  typedef boost::shared_ptr< ::co_coverage::SubteamParameters_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::co_coverage::SubteamParameters_<ContainerAllocator> const> ConstPtr;

}; // struct SubteamParameters_

typedef ::co_coverage::SubteamParameters_<std::allocator<void> > SubteamParameters;

typedef boost::shared_ptr< ::co_coverage::SubteamParameters > SubteamParametersPtr;
typedef boost::shared_ptr< ::co_coverage::SubteamParameters const> SubteamParametersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::co_coverage::SubteamParameters_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::co_coverage::SubteamParameters_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::co_coverage::SubteamParameters_<ContainerAllocator1> & lhs, const ::co_coverage::SubteamParameters_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.inlid == rhs.inlid &&
    lhs.inlambda == rhs.inlambda &&
    lhs.intau_delta == rhs.intau_delta &&
    lhs.inmu == rhs.inmu &&
    lhs.ingamma == rhs.ingamma &&
    lhs.inangle_desired == rhs.inangle_desired;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::co_coverage::SubteamParameters_<ContainerAllocator1> & lhs, const ::co_coverage::SubteamParameters_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace co_coverage

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::co_coverage::SubteamParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::co_coverage::SubteamParameters_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::SubteamParameters_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::SubteamParameters_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::SubteamParameters_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::SubteamParameters_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::co_coverage::SubteamParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3960caeb2a960469bd33c37683b0c1f3";
  }

  static const char* value(const ::co_coverage::SubteamParameters_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3960caeb2a960469ULL;
  static const uint64_t static_value2 = 0xbd33c37683b0c1f3ULL;
};

template<class ContainerAllocator>
struct DataType< ::co_coverage::SubteamParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "co_coverage/SubteamParameters";
  }

  static const char* value(const ::co_coverage::SubteamParameters_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::co_coverage::SubteamParameters_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 inlid\n"
"float64 inlambda\n"
"float64 intau_delta\n"
"float64 inmu\n"
"float64 ingamma\n"
"float64 inangle_desired\n"
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

  static const char* value(const ::co_coverage::SubteamParameters_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::co_coverage::SubteamParameters_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.inlid);
      stream.next(m.inlambda);
      stream.next(m.intau_delta);
      stream.next(m.inmu);
      stream.next(m.ingamma);
      stream.next(m.inangle_desired);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SubteamParameters_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::co_coverage::SubteamParameters_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::co_coverage::SubteamParameters_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "inlid: ";
    Printer<double>::stream(s, indent + "  ", v.inlid);
    s << indent << "inlambda: ";
    Printer<double>::stream(s, indent + "  ", v.inlambda);
    s << indent << "intau_delta: ";
    Printer<double>::stream(s, indent + "  ", v.intau_delta);
    s << indent << "inmu: ";
    Printer<double>::stream(s, indent + "  ", v.inmu);
    s << indent << "ingamma: ";
    Printer<double>::stream(s, indent + "  ", v.ingamma);
    s << indent << "inangle_desired: ";
    Printer<double>::stream(s, indent + "  ", v.inangle_desired);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CO_COVERAGE_MESSAGE_SUBTEAMPARAMETERS_H