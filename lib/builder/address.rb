module RubyShipper
    module Builder
        class Address
            attr_reader :name, :attention, :address1, :address2, :city, :state, :zip, :country
            attr_writer :name, :attention, :address1, :address2, :city, :state, :zip, :country
            
            def zip=
                raise "Zip code for US must be over 4 digits" if self.country == "US" && self.zip.length < 5
            end
        end
    end
end
  