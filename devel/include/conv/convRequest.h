// Generated by gencpp from file conv/convRequest.msg
// DO NOT EDIT!


#ifndef CONV_MESSAGE_CONVREQUEST_H
#define CONV_MESSAGE_CONVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace conv
{
template <class ContainerAllocator>
struct convRequest_
{
  typedef convRequest_<ContainerAllocator> Type;

  convRequest_()
    : srcmatrix_A_rownum(0)
    , srcmatrix_A_colnum(0)
    , srcmatrix_A()
    , srcmatrix_B_rownum(0)
    , srcmatrix_B_colnum(0)
    , srcmatrix_B()  {
    }
  convRequest_(const ContainerAllocator& _alloc)
    : srcmatrix_A_rownum(0)
    , srcmatrix_A_colnum(0)
    , srcmatrix_A(_alloc)
    , srcmatrix_B_rownum(0)
    , srcmatrix_B_colnum(0)
    , srcmatrix_B(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _srcmatrix_A_rownum_type;
  _srcmatrix_A_rownum_type srcmatrix_A_rownum;

   typedef int32_t _srcmatrix_A_colnum_type;
  _srcmatrix_A_colnum_type srcmatrix_A_colnum;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _srcmatrix_A_type;
  _srcmatrix_A_type srcmatrix_A;

   typedef int32_t _srcmatrix_B_rownum_type;
  _srcmatrix_B_rownum_type srcmatrix_B_rownum;

   typedef int32_t _srcmatrix_B_colnum_type;
  _srcmatrix_B_colnum_type srcmatrix_B_colnum;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _srcmatrix_B_type;
  _srcmatrix_B_type srcmatrix_B;





  typedef boost::shared_ptr< ::conv::convRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::conv::convRequest_<ContainerAllocator> const> ConstPtr;

}; // struct convRequest_

typedef ::conv::convRequest_<std::allocator<void> > convRequest;

typedef boost::shared_ptr< ::conv::convRequest > convRequestPtr;
typedef boost::shared_ptr< ::conv::convRequest const> convRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::conv::convRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::conv::convRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::conv::convRequest_<ContainerAllocator1> & lhs, const ::conv::convRequest_<ContainerAllocator2> & rhs)
{
  return lhs.srcmatrix_A_rownum == rhs.srcmatrix_A_rownum &&
    lhs.srcmatrix_A_colnum == rhs.srcmatrix_A_colnum &&
    lhs.srcmatrix_A == rhs.srcmatrix_A &&
    lhs.srcmatrix_B_rownum == rhs.srcmatrix_B_rownum &&
    lhs.srcmatrix_B_colnum == rhs.srcmatrix_B_colnum &&
    lhs.srcmatrix_B == rhs.srcmatrix_B;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::conv::convRequest_<ContainerAllocator1> & lhs, const ::conv::convRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace conv

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::conv::convRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::conv::convRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conv::convRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::conv::convRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conv::convRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::conv::convRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::conv::convRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b69413d1c5fc23dea379049f7250e8aa";
  }

  static const char* value(const ::conv::convRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb69413d1c5fc23deULL;
  static const uint64_t static_value2 = 0xa379049f7250e8aaULL;
};

template<class ContainerAllocator>
struct DataType< ::conv::convRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "conv/convRequest";
  }

  static const char* value(const ::conv::convRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::conv::convRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 srcmatrix_A_rownum\n"
"int32 srcmatrix_A_colnum\n"
"int8[] srcmatrix_A\n"
"int32 srcmatrix_B_rownum\n"
"int32 srcmatrix_B_colnum\n"
"uint8[] srcmatrix_B\n"
;
  }

  static const char* value(const ::conv::convRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::conv::convRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.srcmatrix_A_rownum);
      stream.next(m.srcmatrix_A_colnum);
      stream.next(m.srcmatrix_A);
      stream.next(m.srcmatrix_B_rownum);
      stream.next(m.srcmatrix_B_colnum);
      stream.next(m.srcmatrix_B);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct convRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::conv::convRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::conv::convRequest_<ContainerAllocator>& v)
  {
    s << indent << "srcmatrix_A_rownum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.srcmatrix_A_rownum);
    s << indent << "srcmatrix_A_colnum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.srcmatrix_A_colnum);
    s << indent << "srcmatrix_A[]" << std::endl;
    for (size_t i = 0; i < v.srcmatrix_A.size(); ++i)
    {
      s << indent << "  srcmatrix_A[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.srcmatrix_A[i]);
    }
    s << indent << "srcmatrix_B_rownum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.srcmatrix_B_rownum);
    s << indent << "srcmatrix_B_colnum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.srcmatrix_B_colnum);
    s << indent << "srcmatrix_B[]" << std::endl;
    for (size_t i = 0; i < v.srcmatrix_B.size(); ++i)
    {
      s << indent << "  srcmatrix_B[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.srcmatrix_B[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONV_MESSAGE_CONVREQUEST_H