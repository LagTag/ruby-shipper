module RubyShipper
    module API
        class UPS
            def ship(shipping_address: nil, billing_address: nil, return_address: nil, package: nil, payment: nil, options: nil)
                packages = "" 
                package[:items_array].each do |i|
                  descr = i[:contents]
                  packages += "<Product><Description>#{descr}</Description>"\
                  "<Unit>"\
                    "<Number>#{i[:quantity]}</Number>"\
                    "<Value>#{i[:value]}</Value>"\
                        "<UnitOfMeasurement>"\
                            "<Code>OTH</Code>"\
                            "<Description>UOM</Description>"\
                        "</UnitOfMeasurement>"\
                    "</Unit>"\
                    "<CommodityCode>#{i[:tariff_code]}</CommodityCode>"\
                    "<OriginCountryCode>#{i[:manufacture_country]}</OriginCountryCode>"\
                    "</Product>"
                end
            end

            def rate(destination: nil, origin: nil)
            end
        end
    end
end
  