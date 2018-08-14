module findable
  module ClassMethods

    def self.find_by_name(name)
      self.all.detect{|a| a.name == name}
    end
  end

  module InstanceMethods

    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end
