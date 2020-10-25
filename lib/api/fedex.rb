module RubyShipper
    module API
        class FEDEX
            def ship(shipping_address: nil, billing_address: nil, return_address: nil, package: nil, payment: nil, options: nil)
                "<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:v22="http://fedex.com/ws/ship/v22">
 <soapenv:Header/>
 <soapenv:Body>
 <v22:ProcessShipmentRequest>
 <v22:WebAuthenticationDetail>
 <v22:ParentCredential>
 <v22:Key>INPUT YOUR INFORMATION</v22:Key>
 <v22:Password>INPUT YOUR INFORMATION</v22:Password>
 </v22:ParentCredential>
 <v22:UserCredential>
 <v22:Key>INPUT YOUR INFORMATION</v22:Key>
 <v22:Password>INPUT YOUR INFORMATION</v22:Password>
 </v22:UserCredential>
 </v22:WebAuthenticationDetail>
 <v22:ClientDetail>
 <v22:AccountNumber>XXXXXXXXX</v22:AccountNumber>
 <v22:MeterNumber>XXXXXXX</v22:MeterNumber>
 </v22:ClientDetail>
 <v22:TransactionDetail>
 <v22:CustomerTransactionId>WSVC01</v22:CustomerTransactionId>
 </v22:TransactionDetail>
 <v22:Version>
 <v22:ServiceId>ship</v22:ServiceId>
 <v22:Major>22</v22:Major>
 <v22:Intermediate>0</v22:Intermediate>
 <v22:Minor>0</v22:Minor>
 </v22:Version>
 <v22:RequestedShipment>
 <v22:ShipTimestamp>2018-01-15T09:30:47-05:00</v22:ShipTimestamp>
 <v22:DropoffType>REGULAR_PICKUP</v22:DropoffType>
 <v22:ServiceType>SMART_POST</v22:ServiceType>
 <v22:PackagingType>YOUR_PACKAGING</v22:PackagingType>
 <v22:TotalWeight>
 <v22:Units>LB</v22:Units>
 <v22:Value>.35</v22:Value>
 </v22:TotalWeight>
 <v22:Shipper>
 <v22:AccountNumber>XXXXXXXXXXX</v22:AccountNumber>
 <v22:Contact>
 <v22:CompanyName>WSVC01</v22:CompanyName>
<v22:PhoneNumber>XXXXXXXXXX</v22:PhoneNumber>
 </v22:Contact>
 <v22:Address>
 <v22:StreetLines>IMpb Large Shipper 8.5 x 11png</v22:StreetLines>
<v22:StreetLines>100000 FedEx Gnd Drive fourth a</v22:StreetLines>
<v22:City>Pittsburgh</v22:City>
<v22:StateOrProvinceCode>PA</v22:StateOrProvinceCode>
<v22:PostalCode>15108</v22:PostalCode>
<v22:CountryCode>US</v22:CountryCode>
 </v22:Address>
 </v22:Shipper>
 <v22:Recipient>
 <v22:AccountNumber>XXXXXXXXXXX</v22:AccountNumber>
 <v22:Contact>
 <v22:PersonName>SSGT Kevin Taylor</v22:PersonName>
<v22:CompanyName>FDX SMARTPOST LABEL VALIDATION</v22:CompanyName>
<v22:PhoneNumber>XXXXXXXXX</v22:PhoneNumber>
 </v22:Contact>
 <v22:Address>
 <v22:StreetLines>Unit 2050 Box 4190</v22:StreetLines>
FedEx SmartPost Shipping
FedEx Web Services, Developer Guide 2020 238
 <v22:StreetLines>Mess Hall #6</v22:StreetLines>
<v22:City>APO</v22:City>
<v22:StateOrProvinceCode>AP</v22:StateOrProvinceCode>
<v22:PostalCode>XXXXXX</v22:PostalCode>
<v22:CountryCode>US</v22:CountryCode>
 </v22:Address>
 </v22:Recipient>
 <v22:ShippingChargesPayment>
 <v22:PaymentType>SENDER</v22:PaymentType>
 <v22:Payor>
 <v22:ResponsibleParty>
 <v22:AccountNumber>XXXXXXXXXXX</v22:AccountNumber>
<v22:Contact>
 <v22:PersonName>WSVC01</v22:PersonName>
<v22:CompanyName>Barcode department XXXXXXXXXXX</v22:CompanyName>
<v22:PhoneNumber>XXXXXXXXX</v22:PhoneNumber>
 </v22:Contact>
<v22:Address>
 <v22:StreetLines>IMpb Large Shipper 8.5 x 11pdf</v22:StreetLines>
<v22:StreetLines>100000 FedEx Gnd Drive fourth a</v22:StreetLines>
<v22:City>Pittsburgh</v22:City>
 <v22:StateOrProvinceCode>PA</v22:StateOrProvinceCode>
 <v22:PostalCode>15108</v22:PostalCode>
<v22:CountryCode>US</v22:CountryCode>
 </v22:Address>
 </v22:ResponsibleParty>
 </v22:Payor>
 </v22:ShippingChargesPayment>
 <v22:SmartPostDetail>
 <v22:Indicia>PRESORTED_BOUND_PRINTED_MATTER</v22:Indicia>
 <v22:AncillaryEndorsement>RETURN_SERVICE</v22:AncillaryEndorsement>
 <v22:HubId>5751</v22:HubId>
 <v22:CustomerManifestId>MANIFSETID</v22:CustomerManifestId>
 </v22:SmartPostDetail>
 <v22:LabelSpecification>
 <v22:LabelFormatType>COMMON2D</v22:LabelFormatType>
 <v22:ImageType>PDF</v22:ImageType>
 <v22:LabelStockType>PAPER_8.5X11_TOP_HALF_LABEL</v22:LabelStockType>
 </v22:LabelSpecification>
 <v22:RateRequestTypes>LIST</v22:RateRequestTypes>
 <v22:PackageCount>1</v22:PackageCount>
 <v22:RequestedPackageLineItems>
 <v22:SequenceNumber>1</v22:SequenceNumber>
 <v22:InsuredValue>
 <v22:Currency>USD</v22:Currency>
<v22:Amount>0.00</v22:Amount>
 </v22:InsuredValue>
 <v22:Weight>
 <v22:Units>LB</v22:Units>
<v22:Value>.35</v22:Value>
 </v22:Weight>
 <v22:CustomerReferences>
 <v22:CustomerReferenceType>CUSTOMER_REFERENCE</v22:CustomerReferenceType>
<v22:Value>WSVC02 - NO 2D - 20C</v22:Value>
 </v22:CustomerReferences>
 </v22:RequestedPackageLineItems>
 </v22:RequestedShipment>
 </v22:ProcessShipmentRequest>
 </soapenv:Body>
</soapenv:Envelope>"
            end
        end
    end
end
  