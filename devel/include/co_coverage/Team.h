// Generated by gencpp from file co_coverage/Team.msg
// DO NOT EDIT!


#ifndef CO_COVERAGE_MESSAGE_TEAM_H
#define CO_COVERAGE_MESSAGE_TEAM_H


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
struct Team_
{
  typedef Team_<ContainerAllocator> Type;

  Team_()
    : header()
    , team_id()
    , team_num(0)  {
      team_id.assign(0);
  }
  Team_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , team_id()
    , team_num(0)  {
  (void)_alloc;
      team_id.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<uint16_t, 100>  _team_id_type;
  _team_id_type team_id;

   typedef uint16_t _team_num_type;
  _team_num_type team_num;





  typedef boost::shared_ptr< ::co_coverage::Team_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::co_coverage::Team_<ContainerAllocator> const> ConstPtr;

}; // struct Team_

typedef ::co_coverage::Team_<std::allocator<void> > Team;

typedef boost::shared_ptr< ::co_coverage::Team > TeamPtr;
typedef boost::shared_ptr< ::co_coverage::Team const> TeamConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::co_coverage::Team_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::co_coverage::Team_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::co_coverage::Team_<ContainerAllocator1> & lhs, const ::co_coverage::Team_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.team_id == rhs.team_id &&
    lhs.team_num == rhs.team_num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::co_coverage::Team_<ContainerAllocator1> & lhs, const ::co_coverage::Team_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace co_coverage

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::co_coverage::Team_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::co_coverage::Team_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::Team_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::co_coverage::Team_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::Team_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::co_coverage::Team_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::co_coverage::Team_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd22fca32791e7894505069c9143e854";
  }

  static const char* value(const ::co_coverage::Team_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd22fca32791e789ULL;
  static const uint64_t static_value2 = 0x4505069c9143e854ULL;
};

template<class ContainerAllocator>
struct DataType< ::co_coverage::Team_<ContainerAllocator> >
{
  static const char* value()
  {
    return "co_coverage/Team";
  }

  static const char* value(const ::co_coverage::Team_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::co_coverage::Team_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint16[100] team_id\n"
"uint16 team_num\n"
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

  static const char* value(const ::co_coverage::Team_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::co_coverage::Team_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.team_id);
      stream.next(m.team_num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Team_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::co_coverage::Team_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::co_coverage::Team_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "team_id[]" << std::endl;
    for (size_t i = 0; i < v.team_id.size(); ++i)
    {
      s << indent << "  team_id[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.team_id[i]);
    }
    s << indent << "team_num: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.team_num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CO_COVERAGE_MESSAGE_TEAM_H
