let publicIncorrectLoginSessionIdentifierRequestBody = """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <CheckBorrowerResponse xmlns="http://bibliomondo.com/websevices/webuser">
            <CheckBorrowerResult>
                <userId>A123456789</userId>
                <record>
                    <CheckBorrowerResult xmlns="http://bibliomondo.com/webservices/webuser">
                        <IgnorePin>0</IgnorePin>
                        <WantUserDetails>0</WantUserDetails>
                        <Brwr>A12 345 678 9</Brwr>
                        <Pin>demo</Pin>
                        <IsEncrypted>0</IsEncrypted>
                        <TapNo>0</TapNo>
                        <LRB>INCORRECT_PASSWORD</LRB>
                        <Validated>0</Validated>
                        <IsInvalidBrwrNum>0</IsInvalidBrwrNum>
                        <InvalidBorrower>0</InvalidBorrower>
                        <InvalidPin>1</InvalidPin>
                        <Category>24</Category>
                        <CategoryCode>LE</CategoryCode>
                        <UserId>870062</UserId>
                        <FSK>18</FSK>
                        <Status>Active</Status>
                        <TrapType></TrapType>
                    </CheckBorrowerResult>
                </record>
            </CheckBorrowerResult>
        </CheckBorrowerResponse>
    </soap:Body>
</soap:Envelope>
"""
