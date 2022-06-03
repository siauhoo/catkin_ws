// Generated by gencpp from file beginner_tutorials/EventResponse.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_EVENTRESPONSE_H
#define BEGINNER_TUTORIALS_MESSAGE_EVENTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct EventResponse_
{
  typedef EventResponse_<ContainerAllocator> Type;

  EventResponse_()
    : content()  {
    }
  EventResponse_(const ContainerAllocator& _alloc)
    : content(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _content_type;
  _content_type content;





  typedef boost::shared_ptr< ::beginner_tutorials::EventResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::EventResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EventResponse_

typedef ::beginner_tutorials::EventResponse_<std::allocator<void> > EventResponse;

typedef boost::shared_ptr< ::beginner_tutorials::EventResponse > EventResponsePtr;
typedef boost::shared_ptr< ::beginner_tutorials::EventResponse const> EventResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::EventResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::EventResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::EventResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::EventResponse_<ContainerAllocator2> & rhs)
{
  return lhs.content == rhs.content;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::EventResponse_<ContainerAllocator1> & lhs, const ::beginner_tutorials::EventResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::EventResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::EventResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::EventResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2e84951ee6d0addf437bfddd5b19734";
  }

  static const char* value(const ::beginner_tutorials::EventResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2e84951ee6d0addULL;
  static const uint64_t static_value2 = 0xf437bfddd5b19734ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/EventResponse";
  }

  static const char* value(const ::beginner_tutorials::EventResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string content\n"
;
  }

  static const char* value(const ::beginner_tutorials::EventResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.content);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EventResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::EventResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::EventResponse_<ContainerAllocator>& v)
  {
    s << indent << "content: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.content);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_EVENTRESPONSE_H
