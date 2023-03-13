// Generated by gencpp from file ros_broker/GSDFPacket.msg
// DO NOT EDIT!


#ifndef ROS_BROKER_MESSAGE_GSDFPACKET_H
#define ROS_BROKER_MESSAGE_GSDFPACKET_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_broker
{
template <class ContainerAllocator>
struct GSDFPacket_
{
  typedef GSDFPacket_<ContainerAllocator> Type;

  GSDFPacket_()
    : data()  {
    }
  GSDFPacket_(const ContainerAllocator& _alloc)
    : data(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::ros_broker::GSDFPacket_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_broker::GSDFPacket_<ContainerAllocator> const> ConstPtr;

}; // struct GSDFPacket_

typedef ::ros_broker::GSDFPacket_<std::allocator<void> > GSDFPacket;

typedef boost::shared_ptr< ::ros_broker::GSDFPacket > GSDFPacketPtr;
typedef boost::shared_ptr< ::ros_broker::GSDFPacket const> GSDFPacketConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_broker::GSDFPacket_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_broker::GSDFPacket_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ros_broker::GSDFPacket_<ContainerAllocator1> & lhs, const ::ros_broker::GSDFPacket_<ContainerAllocator2> & rhs)
{
  return lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ros_broker::GSDFPacket_<ContainerAllocator1> & lhs, const ::ros_broker::GSDFPacket_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ros_broker

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::ros_broker::GSDFPacket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_broker::GSDFPacket_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_broker::GSDFPacket_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_broker::GSDFPacket_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_broker::GSDFPacket_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_broker::GSDFPacket_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_broker::GSDFPacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f43a8e1b362b75baa741461b46adc7e0";
  }

  static const char* value(const ::ros_broker::GSDFPacket_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf43a8e1b362b75baULL;
  static const uint64_t static_value2 = 0xa741461b46adc7e0ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_broker::GSDFPacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_broker/GSDFPacket";
  }

  static const char* value(const ::ros_broker::GSDFPacket_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_broker::GSDFPacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] data\n"
;
  }

  static const char* value(const ::ros_broker::GSDFPacket_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_broker::GSDFPacket_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GSDFPacket_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_broker::GSDFPacket_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_broker::GSDFPacket_<ContainerAllocator>& v)
  {
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_BROKER_MESSAGE_GSDFPACKET_H