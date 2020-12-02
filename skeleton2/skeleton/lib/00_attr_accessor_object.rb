class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |name|
        self.define_method(name.to_s) do
            self.instance_variable_get("@#{name}")
        end

        self.define_method(name.to_s + '=') do |val|
            self.instance_variable_set("@#{name}", val)
        end
    end   
  end
end
