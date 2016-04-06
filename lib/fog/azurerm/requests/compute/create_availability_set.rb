module Fog
  module Compute
    class AzureRM
      # This class provides the actual implemention for service calls.
      class Real
        def create_availability_set(resource_group, name, params)
          @compute_mgmt_client.availability_sets
                              .create_or_update(resource_group,
                                                name,
                                                params)
        end
      end
      # This class provides the mock implementation for unit tests.
      class Mock
        def create_availability_set(resource_group, name, params)
        end
      end
    end
  end
end
