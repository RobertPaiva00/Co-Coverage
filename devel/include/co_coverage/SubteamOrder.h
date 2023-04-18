// Generated by gencpp from file co_coverage/SubteamOrder.msg
// DO NOT EDIT!


#ifndef CO_COVERAGE_MESSAGE_SUBTEAMORDER_H
#define CO_COVERAGE_MESSAGE_SUBTEAMORDER_H


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
struct SubteamOrder_
{
  typedef SubteamOrder_<ContainerAllocator> Type;

  SubteamOrder_()
    : header()
    , order()
    , num_robots(0)
    , subteamstampid(0)  {
    }
  SubteamOrder_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , order(_alloc)
    , num_robots(0)
    , subteamstampid(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _order_type;
  _order_type order;

   typedef int32_t _num_robots_type;
  _num_robots_type num_robots;

   typedef int32_t _subteamstampid_type;
  _subteamstampid_type subteamstampid;





  typedef boost::shared_ptr< ::co_coverage::SubteamOrder_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::co_coverage::SubteamOrder_<ContainerAllocator> const> ConstPtr;

}; // struct SubteamOrder_

typedef ::co_coverage::SubteamOrder_<std::allocator<void> > SubteamOrder;

typedef boost::shared_ptr< ::co_coverage::SubteamOrder > SubteamOrderPtr;
typedef boost::shared_ptr< ::co_coverage::SubteamOrder const> SubteamOrderConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::co_coverage::SubteamOrder_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::co_coverage::SubteamOrder_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::co_coverage::SubteamOrder_<ContainerAllocator1> & lhs, const ::co_coverage::SubteamOrder_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.order == rhs.order &&
    lhs.num_robots == rhs.num_robots &&
    lhs.subteamstampid == rhs.subteamstampid;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::co_coverage::SubteamOrder_<ContainerAllocator1> & lhs, const ::co_coverage::SubteamOrder_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace co_coverage

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::co_coverage::SubteamOrder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::co_coverage::SubteamOrder_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::SubteamOrder_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::SubteamOrder_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::SubteamOrder_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::SubteamOrder_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::co_coverage::SubteamOrder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e9a5ecf0642328cf77124695091810b";
  }

  static const char* value(const ::co_coverage::SubteamOrder_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e9a5ecf0642328cULL;
  static const uint64_t static_value2 = 0xf77124695091810bULL;
};

template<class ContainerAllocator>
struct DataType< ::co_coverage::SubteamOrder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "co_coverage/SubteamOrder";
  }

  static const char* value(const ::co_coverage::SubteamOrder_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::co_coverage::SubteamOrder_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int32[] order\n"
"int32 num_robots\n"
"int32 subteamstampid\n"
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

  static const char* value(const ::co_coverage::SubteamOrder_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::co_coverage::SubteamOrder_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.order);
      stream.next(m.num_robots);
      stream.next(m.subteamstampid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SubteamOrder_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::co_coverage::SubteamOrder_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::co_coverage::SubteamOrder_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "order[]" << std::endl;
    for (size_t i = 0; i < v.order.size(); ++i)
    {
      s << indent << "  order[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.order[i]);
    }
    s << indent << "num_robots: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_robots);
    s << indent << "subteamstampid: ";
    Printer<int32_t>::stream(s, indent + "  ", v.subteamstampid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CO_COVERAGE_MESSAGE_SUBTEAMORDER_H
