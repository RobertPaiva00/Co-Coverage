// Generated by gencpp from file gsdf_msgs/BlackBoardQuery.msg
// DO NOT EDIT!


#ifndef GSDF_MSGS_MESSAGE_BLACKBOARDQUERY_H
#define GSDF_MSGS_MESSAGE_BLACKBOARDQUERY_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gsdf_msgs
{
template <class ContainerAllocator>
struct BlackBoardQuery_
{
  typedef BlackBoardQuery_<ContainerAllocator> Type;

  BlackBoardQuery_()
    : bb_id(0)
    , on_robot_id(0)
    , key()
    , timestamp()
    , robot_id(0)  {
    }
  BlackBoardQuery_(const ContainerAllocator& _alloc)
    : bb_id(0)
    , on_robot_id(0)
    , key(_alloc)
    , timestamp()
    , robot_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _bb_id_type;
  _bb_id_type bb_id;

   typedef int32_t _on_robot_id_type;
  _on_robot_id_type on_robot_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _key_type;
  _key_type key;

   typedef ros::Time _timestamp_type;
  _timestamp_type timestamp;

   typedef int32_t _robot_id_type;
  _robot_id_type robot_id;





  typedef boost::shared_ptr< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> const> ConstPtr;

}; // struct BlackBoardQuery_

typedef ::gsdf_msgs::BlackBoardQuery_<std::allocator<void> > BlackBoardQuery;

typedef boost::shared_ptr< ::gsdf_msgs::BlackBoardQuery > BlackBoardQueryPtr;
typedef boost::shared_ptr< ::gsdf_msgs::BlackBoardQuery const> BlackBoardQueryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator1> & lhs, const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator2> & rhs)
{
  return lhs.bb_id == rhs.bb_id &&
    lhs.on_robot_id == rhs.on_robot_id &&
    lhs.key == rhs.key &&
    lhs.timestamp == rhs.timestamp &&
    lhs.robot_id == rhs.robot_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator1> & lhs, const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gsdf_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e75d8a9b1cec0501e53c7955617b4403";
  }

  static const char* value(const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe75d8a9b1cec0501ULL;
  static const uint64_t static_value2 = 0xe53c7955617b4403ULL;
};

template<class ContainerAllocator>
struct DataType< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gsdf_msgs/BlackBoardQuery";
  }

  static const char* value(const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 bb_id\n"
"int32 on_robot_id\n"
"string key\n"
"time timestamp\n"
"int32 robot_id\n"
;
  }

  static const char* value(const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bb_id);
      stream.next(m.on_robot_id);
      stream.next(m.key);
      stream.next(m.timestamp);
      stream.next(m.robot_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BlackBoardQuery_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gsdf_msgs::BlackBoardQuery_<ContainerAllocator>& v)
  {
    s << indent << "bb_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.bb_id);
    s << indent << "on_robot_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.on_robot_id);
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.key);
    s << indent << "timestamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.timestamp);
    s << indent << "robot_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GSDF_MSGS_MESSAGE_BLACKBOARDQUERY_H