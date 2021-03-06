# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
import grpc

import demo_pb2 as demo__pb2


class RecommendationServiceStub(object):
  """---------------Recommendation service----------

  """

  def __init__(self, channel):
    """Constructor.

    Args:
      channel: A grpc.Channel.
    """
    self.ListRecommendations = channel.unary_unary(
        '/RecommendationService/ListRecommendations',
        request_serializer=demo__pb2.RecommendationsRequest.SerializeToString,
        response_deserializer=demo__pb2.ListRecommendationsResponse.FromString,
        )


class RecommendationServiceServicer(object):
  """---------------Recommendation service----------

  """

  def ListRecommendations(self, request, context):
    # missing associated documentation comment in .proto file
    pass
    context.set_code(grpc.StatusCode.UNIMPLEMENTED)
    context.set_details('Method not implemented!')
    raise NotImplementedError('Method not implemented!')


def add_RecommendationServiceServicer_to_server(servicer, server):
  rpc_method_handlers = {
      'ListRecommendations': grpc.unary_unary_rpc_method_handler(
          servicer.ListRecommendations,
          request_deserializer=demo__pb2.RecommendationsRequest.FromString,
          response_serializer=demo__pb2.ListRecommendationsResponse.SerializeToString,
      ),
  }
  generic_handler = grpc.method_handlers_generic_handler(
      'RecommendationService', rpc_method_handlers)
  server.add_generic_rpc_handlers((generic_handler,))
