module RubyShipper
    module Builder
        class Address
            attr_reader :name, :attention, :address1, :address2, address3, :city, :state, :zip, :country
            attr_writer :name, :attention, :address1, :address2, address3, :city, :state, :country
            
            def zip=
                raise "Zip code for US must be over 4 digits" if self.country == "US" && self.zip.length < 5
            end

            def initialize
                raise "Name or attention must be present" if self.name.nil? && self.attention.nil?
                raise "Must have a street address" if self.address1.nil? && self.address2.nil? && self.adress3.nil?
            end
        end
    end
end
  