module RubyShipper
    module Builder
        class Package
            attr_reader :length, :width, :height, :weight, :contents, :tariff_code, :quantity
            attr_writer :length, :width, :height, :weight, :contents, :tariff_code, :quantity
        end
    end
end
  