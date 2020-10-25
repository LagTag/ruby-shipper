module RubyShipper
    module Builder
        class Address
            attr_reader :name, :attention, :address1, :address2, :city, :state, :zip, :country
            attr_writer :name, :attention, :address1, :address2, :city, :state, :zip, :country
        end
    end
end
  