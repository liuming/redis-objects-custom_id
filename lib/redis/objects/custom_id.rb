require 'redis'
require 'redis-objects'

require "redis/objects/custom_id/version"

class Redis
  module Objects
    module CustomId
    end

    module ClassMethods
      def redis_object_id_field(new_id_field=nil)
        @redis_object_id_field = new_id_field || @redis_object_id_field || :id
      end
    end

    module InstanceMethods
      def redis_field_key(name)
        self.class.redis_field_key(name, send(self.class.redis_object_id_field))
      end
    end
  end
end
