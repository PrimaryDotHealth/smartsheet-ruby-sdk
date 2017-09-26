module Smartsheet
  class Sights
    attr_reader :client
    private :client

    def initialize(client)
      @client = client
    end

    def copy(sight_id:, body:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:post, ['sights', :sight_id, 'copy'], body_type: :json)
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          body: body,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def delete(sight_id:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:delete, ['sights', :sight_id])
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def get(sight_id:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:get, ['sights', :sight_id])
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def list(params: {}, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:get, ['sights'])
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          params: params
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def move(sight_id:, body:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:post, ['sights', :sight_id, 'move'], body_type: :json)
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          body: body,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def get_publish_status(sight_id:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:get, ['sights', :sight_id, 'publish'])
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def set_publish_status(sight_id:, body:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:put, ['sights', :sight_id, 'publish'], body_type: :json)
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          body: body,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end

    def update(sight_id:, body:, header_overrides: {})
      endpoint_spec = Smartsheet::API::EndpointSpec.new(:put, ['sights', :sight_id], body_type: :json)
      request_spec = Smartsheet::API::RequestSpec.new(
          header_overrides: header_overrides,
          body: body,
          sight_id: sight_id
      )
      client.make_request(endpoint_spec, request_spec)
    end
  end
end