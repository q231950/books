let publicRenewRequestBody = """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
    <soap:Body>
        <RenewItem xmlns="http://bibliomondo.com/websevices/webuser">
            <sessionId>35B893D356E3353DA5F67DA0FAFCEEA7</sessionId>
            <itemNumber>M59 581 999 1</itemNumber>
        </RenewItem>
    </soap:Body>
</soap:Envelope>
"""
