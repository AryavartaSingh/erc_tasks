// Generated by gencpp from file billing/billmsg.msg
// DO NOT EDIT!


#ifndef BILLING_MESSAGE_BILLMSG_H
#define BILLING_MESSAGE_BILLMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace billing
{
template <class ContainerAllocator>
struct billmsg_
{
  typedef billmsg_<ContainerAllocator> Type;

  billmsg_()
    : bill_no(0)
    , tstamp()
    , qty(0)
    , price(0)
    , total(0)  {
    }
  billmsg_(const ContainerAllocator& _alloc)
    : bill_no(0)
    , tstamp(_alloc)
    , qty(0)
    , price(0)
    , total(0)  {
  (void)_alloc;
    }



   typedef int32_t _bill_no_type;
  _bill_no_type bill_no;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _tstamp_type;
  _tstamp_type tstamp;

   typedef int32_t _qty_type;
  _qty_type qty;

   typedef int32_t _price_type;
  _price_type price;

   typedef int32_t _total_type;
  _total_type total;





  typedef boost::shared_ptr< ::billing::billmsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::billing::billmsg_<ContainerAllocator> const> ConstPtr;

}; // struct billmsg_

typedef ::billing::billmsg_<std::allocator<void> > billmsg;

typedef boost::shared_ptr< ::billing::billmsg > billmsgPtr;
typedef boost::shared_ptr< ::billing::billmsg const> billmsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::billing::billmsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::billing::billmsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::billing::billmsg_<ContainerAllocator1> & lhs, const ::billing::billmsg_<ContainerAllocator2> & rhs)
{
  return lhs.bill_no == rhs.bill_no &&
    lhs.tstamp == rhs.tstamp &&
    lhs.qty == rhs.qty &&
    lhs.price == rhs.price &&
    lhs.total == rhs.total;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::billing::billmsg_<ContainerAllocator1> & lhs, const ::billing::billmsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace billing

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::billing::billmsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::billing::billmsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::billing::billmsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::billing::billmsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::billing::billmsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::billing::billmsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::billing::billmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "259d452ae106b356db3c6533589d546e";
  }

  static const char* value(const ::billing::billmsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x259d452ae106b356ULL;
  static const uint64_t static_value2 = 0xdb3c6533589d546eULL;
};

template<class ContainerAllocator>
struct DataType< ::billing::billmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "billing/billmsg";
  }

  static const char* value(const ::billing::billmsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::billing::billmsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 bill_no\n"
"string tstamp\n"
"int32 qty\n"
"int32 price\n"
"int32 total\n"
;
  }

  static const char* value(const ::billing::billmsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::billing::billmsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bill_no);
      stream.next(m.tstamp);
      stream.next(m.qty);
      stream.next(m.price);
      stream.next(m.total);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct billmsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::billing::billmsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::billing::billmsg_<ContainerAllocator>& v)
  {
    s << indent << "bill_no: ";
    Printer<int32_t>::stream(s, indent + "  ", v.bill_no);
    s << indent << "tstamp: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.tstamp);
    s << indent << "qty: ";
    Printer<int32_t>::stream(s, indent + "  ", v.qty);
    s << indent << "price: ";
    Printer<int32_t>::stream(s, indent + "  ", v.price);
    s << indent << "total: ";
    Printer<int32_t>::stream(s, indent + "  ", v.total);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BILLING_MESSAGE_BILLMSG_H