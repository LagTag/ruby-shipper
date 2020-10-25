module RubyShipper
    module API
        class USPS
            def ship(shipping_address: nil, billing_address: nil, return_address: nil, package: nil, payment: nil, options: nil)
            "<LabelRequest>
                    <MailClass>Priority</MailClass>
                    <WeightOz>16</WeightOz>
                    <RequesterID>[RequesterID]</RequesterID>
                    <AccountID>9999999</AccountID>
                    <PassPhrase>ABCDEFGHIJK</PassPhrase>
                    <PartnerCustomerID>100</PartnerCustomerID>
                    <PartnerTransactionID>200</PartnerTransactionID>
                    <ToName>Jane Doe</ToName>
                    <ToAddress1>278 Castro Street</ToAddress1>
                    <ToCity>Mountain View</ToCity>
                    <ToState>CA</ToState>
                    <ToPostalCode>94041</ToPostalCode>
                    <FromCompany>Endicia, Inc.</FromCompany>
                    <FromName>John Doe</FromName>
                    <ReturnAddress1>1990 Grand Ave</ReturnAddress1>
                    <FromCity>El Segundo</FromCity>
                    <FromState>CA</FromState>
                    <FromPostalCode>90245</FromPostalCode>
                    </LabelRequest>
                    Sample Domestic GetPostageLabel Response

                    <GetPostageLabelResponse xmlns=\"www.envmgr.com/LabelService\">
                    <LabelRequestResponse>
                        <Status>0</Status>
                        <Base64LabelImage>iVBORw0KGgoAAAANSUhEUgAABLAAAAcICAIA...</Base64LabelImage>
                        <PIC>0405510200881102197293</PIC>
                        <TrackingNumber>0405510200881102197293</TrackingNumber>
                        <FinalPostage>6.56</FinalPostage>
                        <TransactionID>9</TransactionID>
                        <TransactionDateTime>20171110195015</TransactionDateTime>
                        <PostmarkDate>20171110</PostmarkDate>
                        <PostageBalance>237.86</PostageBalance>
                        <CostCenter>0</CostCenter>
                        <RequesterID>[RequesterID]</RequesterID>
                        <ReferenceID2/>
                        <ReferenceID3/>
                        <ReferenceID4/>
                        <SDRValue/>
                    </LabelRequestResponse>
            </GetPostageLabelResponse>"
            end
        end
    end
end
  