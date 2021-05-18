module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect{|o| o.name == name}
    end
  end

  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end
