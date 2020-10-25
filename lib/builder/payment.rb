module RubyShipper
    module Builder
        class Payment
            attr_reader :accountno, :shipping_type, :zip, :state, :country, :city, :address1, :address2
            attr_writer :accountno, :shipping_type, :zip, :state, :country, :city, :address1, :address2
        end
    end
end
  