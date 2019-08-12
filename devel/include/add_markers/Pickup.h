// Generated by gencpp from file add_markers/Pickup.msg
// DO NOT EDIT!


#ifndef ADD_MARKERS_MESSAGE_PICKUP_H
#define ADD_MARKERS_MESSAGE_PICKUP_H

#include <ros/service_traits.h>


#include <add_markers/PickupRequest.h>
#include <add_markers/PickupResponse.h>


namespace add_markers
{

struct Pickup
{

typedef PickupRequest Request;
typedef PickupResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Pickup
} // namespace add_markers


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::add_markers::Pickup > {
  static const char* value()
  {
    return "97fe84cd0a5806c89272852f77d29a02";
  }

  static const char* value(const ::add_markers::Pickup&) { return value(); }
};

template<>
struct DataType< ::add_markers::Pickup > {
  static const char* value()
  {
    return "add_markers/Pickup";
  }

  static const char* value(const ::add_markers::Pickup&) { return value(); }
};


// service_traits::MD5Sum< ::add_markers::PickupRequest> should match 
// service_traits::MD5Sum< ::add_markers::Pickup > 
template<>
struct MD5Sum< ::add_markers::PickupRequest>
{
  static const char* value()
  {
    return MD5Sum< ::add_markers::Pickup >::value();
  }
  static const char* value(const ::add_markers::PickupRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::add_markers::PickupRequest> should match 
// service_traits::DataType< ::add_markers::Pickup > 
template<>
struct DataType< ::add_markers::PickupRequest>
{
  static const char* value()
  {
    return DataType< ::add_markers::Pickup >::value();
  }
  static const char* value(const ::add_markers::PickupRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::add_markers::PickupResponse> should match 
// service_traits::MD5Sum< ::add_markers::Pickup > 
template<>
struct MD5Sum< ::add_markers::PickupResponse>
{
  static const char* value()
  {
    return MD5Sum< ::add_markers::Pickup >::value();
  }
  static const char* value(const ::add_markers::PickupResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::add_markers::PickupResponse> should match 
// service_traits::DataType< ::add_markers::Pickup > 
template<>
struct DataType< ::add_markers::PickupResponse>
{
  static const char* value()
  {
    return DataType< ::add_markers::Pickup >::value();
  }
  static const char* value(const ::add_markers::PickupResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ADD_MARKERS_MESSAGE_PICKUP_H
