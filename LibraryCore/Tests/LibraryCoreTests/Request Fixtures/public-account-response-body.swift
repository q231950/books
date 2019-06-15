let publicAccountResponseBody = """
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <GetBorrowerAccountResponse xmlns="http://bibliomondo.com/websevices/webuser">
            <GetBorrowerAccountResult>
                <userId>123456789</userId>
                <record>
                    <GetBorrowerAccountResult xmlns="http://bibliomondo.com/webservices/webuser">
                        <AccountDetails>
                            <AccountDetail>
                                <RecNo>251822</RecNo>
                                <Auth>0</Auth>
                                <BrwrRecNo>870062</BrwrRecNo>
                                <Credit>€ 1,00</Credit>
                                <Debit>€ 2,00</Debit>
                                <CreditNonZero>0</CreditNonZero>
                                <DebitNonZero>1</DebitNonZero>
                                <CreditDebitEqual>0</CreditDebitEqual>
                                <CreditDebitCompare>0</CreditDebitCompare>
                                <Highlight>0</Highlight>
                                <TransactionID>22</TransactionID>
                                <TransactionIDName>Vormerkgebühr</TransactionIDName>
                                <HaveC200Fields>1</HaveC200Fields>
                                <TransactionIDAsPF>22</TransactionIDAsPF>
                                <CreationLocation>WWW-OPAC</CreationLocation>
                                <Owner>69</Owner>
                                <Flag>0</Flag>
                                <Created>20/09/2018</Created>
                                <Method>0</Method>
                                <Record>
                                    <IsDefault>0</IsDefault>
                                    <LastChange>20/09/2018</LastChange>
                                    <Owner>69</Owner>
                                    <CreationDate>20/09/2018</CreationDate>
                                    <IssueTime>0</IssueTime>
                                    <Brwr>A12 345 678 9</Brwr>
                                    <ReturnTime>0</ReturnTime>
                                    <Status>0</Status>
                                    <StatusName>Outstanding</StatusName>
                                    <Item></Item>
                                    <DueBackTime>0</DueBackTime>
                                    <Source>0</Source>
                                    <Bacn>T015597352</Bacn>
                                    <Debit>€ 2,00</Debit>
                                    <Credit>€ 0,00</Credit>
                                    <HaveC200Fields>1</HaveC200Fields>
                                    <InCredit>0</InCredit>
                                    <InDebit>1</InDebit>
                                    <CreditDebitEqual>0</CreditDebitEqual>
                                    <Balance>€ 2,00</Balance>
                                    <BalanceAmount>€ 2,00</BalanceAmount>
                                    <TransactionID>22</TransactionID>
                                    <TransactionIDName>Vormerkgebühr</TransactionIDName>
                                    <TransactionIDAsPF>22</TransactionIDAsPF>
                                    <StatusChange>
                                        <Date>20/09/2018</Date>
                                        <Locn>69</Locn>
                                    </StatusChange>
                                    <OldFineReminderLevel>0</OldFineReminderLevel>
                                    <ItemIssue>
                                        <Date></Date>
                                        <Locn>0</Locn>
                                    </ItemIssue>
                                    <ItemReturn>
                                        <Date></Date>
                                        <Locn>0</Locn>
                                    </ItemReturn>
                                    <DueBack></DueBack>
                                    <Reference></Reference>
                                    <AuthorTitle>Kein Autor/Game of Thrones - Die komplette 1. St</AuthorTitle>
                                    <ResNum>R000118248</ResNum>
                                    <HaveReservationNumber>1</HaveReservationNumber>
                                    <TaxAmountOwed>€ 0,00</TaxAmountOwed>
                                    <TaxAmountPaid>€ 0,00</TaxAmountPaid>
                                    <TaxRate>0</TaxRate>
                                    <IsItemChargeTransaction>0</IsItemChargeTransaction>
                                    <IsResnChargeTransaction>1</IsResnChargeTransaction>
                                    <RecordNum>251822</RecordNum>
                                    <CreatedInFallback>0</CreatedInFallback>
                                    <LoanOrReturnUndone>0</LoanOrReturnUndone>
                                    <AuthorTitleForReceipt>Kein Autor / Game of Thrones - Die komplette 1. Staffel</AuthorTitleForReceipt>
                                    <DateAccountRecordFetched>20/09/2018</DateAccountRecordFetched>
                                    <TimeAccountRecordFetched>19:04</TimeAccountRecordFetched>
                                    <BranchName>WWW-APP</BranchName>
                                </Record>
                            </AccountDetail>
                        </AccountDetails>
                    </GetBorrowerAccountResult>
                </record>
            </GetBorrowerAccountResult>
        </GetBorrowerAccountResponse>
    </soap:Body>
</soap:Envelope>
"""
