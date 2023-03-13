// Generated by gencpp from file gsdf_msgs/VirtualStigmergyQuery.msg
// DO NOT EDIT!


#ifndef GSDF_MSGS_MESSAGE_VIRTUALSTIGMERGYQUERY_H
#define GSDF_MSGS_MESSAGE_VIRTUALSTIGMERGYQUERY_H


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
struct VirtualStigmergyQuery_
{
  typedef VirtualStigmergyQuery_<ContainerAllocator> Type;

  VirtualStigmergyQuery_()
    : vstig_id(0)
    , key()
    , value()
    , lamport_clock(0)
    , robot_id(0)  {
    }
  VirtualStigmergyQuery_(const ContainerAllocator& _alloc)
    : vstig_id(0)
    , key(_alloc)
    , value(_alloc)
    , lamport_clock(0)
    , robot_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _vstig_id_type;
  _vstig_id_type vstig_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _key_type;
  _key_type key;

   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _value_type;
  _value_type value;

   typedef int32_t _lamport_clock_type;
  _lamport_clock_type lamport_clock;

   typedef int32_t _robot_id_type;
  _robot_id_type robot_id;





  typedef boost::shared_ptr< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> const> ConstPtr;

}; // struct VirtualStigmergyQuery_

typedef ::gsdf_msgs::VirtualStigmergyQuery_<std::allocator<void> > VirtualStigmergyQuery;

typedef boost::shared_ptr< ::gsdf_msgs::VirtualStigmergyQuery > VirtualStigmergyQueryPtr;
typedef boost::shared_ptr< ::gsdf_msgs::VirtualStigmergyQuery const> VirtualStigmergyQueryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator1> & lhs, const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator2> & rhs)
{
  return lhs.vstig_id == rhs.vstig_id &&
    lhs.key == rhs.key &&
    lhs.value == rhs.value &&
    lhs.lamport_clock == rhs.lamport_clock &&
    lhs.robot_id == rhs.robot_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator1> & lhs, const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gsdf_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d6c30261bb290fcc59b5c1ccb2f34b3";
  }

  static const char* value(const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d6c30261bb290fcULL;
  static const uint64_t static_value2 = 0xc59b5c1ccb2f34b3ULL;
};

template<class ContainerAllocator>
struct DataType< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gsdf_msgs/VirtualStigmergyQuery";
  }

  static const char* value(const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 vstig_id\n"
"string key\n"
"uint8[] value\n"
"int32 lamport_clock\n"
"int32 robot_id\n"
;
  }

  static const char* value(const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vstig_id);
      stream.next(m.key);
      stream.next(m.value);
      stream.next(m.lamport_clock);
      stream.next(m.robot_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VirtualStigmergyQuery_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gsdf_msgs::VirtualStigmergyQuery_<ContainerAllocator>& v)
  {
    s << indent << "vstig_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.vstig_id);
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.key);
    s << indent << "value[]" << std::endl;
    for (size_t i = 0; i < v.value.size(); ++i)
    {
      s << indent << "  value[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.value[i]);
    }
    s << indent << "lamport_clock: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lamport_clock);
    s << indent << "robot_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.robot_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GSDF_MSGS_MESSAGE_VIRTUALSTIGMERGYQUERY_H
