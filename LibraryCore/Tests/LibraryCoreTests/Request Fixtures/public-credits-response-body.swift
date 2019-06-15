let publicCreditsResponseBody = """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <GetBorrowerCreditsResponse xmlns="http://bibliomondo.com/websevices/webuser">
            <GetBorrowerCreditsResult>
                <userId>A123456789</userId>
                <record>
                    <GetBorrowerCreditsResult xmlns="http://bibliomondo.com/webservices/webuser">
                        <CreditDetails></CreditDetails>
                    </GetBorrowerCreditsResult>
                </record>
            </GetBorrowerCreditsResult>
        </GetBorrowerCreditsResponse>
    </soap:Body>
</soap:Envelope>
"""
