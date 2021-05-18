module Memorable
  module ClassMethods
    def reset_all
      self.class.all.clear
    end

    def count
      self.class.all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
