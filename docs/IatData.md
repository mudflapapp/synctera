# Synctera::IatData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **foreign_payment_amount** | **Integer** | For inbound IAT payments this field should contain the USD amount or may be blank. Amount is in cents ($100 would be 10000). |  |
| **foreign_trace_number** | **String** |  |  |
| **name** | **String** | Receiving Company Name/Individual Name |  |
| **odfi_branch_country_code** | **String** | For Inbound IATs: This 3 position field contains a 2-character code as approved by the International Organization for Standardization (ISO) used to identify the country in which the branch of the bank that originated the entry is located. Values for other countries can be found on the International Organization for Standardization website: www.iso.org.  |  |
| **odfi_id_number_qualifier** | **String** | For Inbound IATs: The 2-digit code that identifies the numbering scheme used in the Foreign DFI Identification Number field: 01 &#x3D; National Clearing System 02 &#x3D; BIC Code 03 &#x3D; IBAN Code  |  |
| **odfi_identification** | **String** | For Inbound IATs: This field contains the bank ID number of the Foreign Bank providing funding for the payment transaction.  |  |
| **odfi_name** | **String** | For Inbound IATs: The name of the foreign bank providing funding for the payment transaction  |  |
| **originator_address** | [**IatAddress**](IatAddress.md) |  |  |
| **originator_name** | **String** | The originators name |  |
| **rdfi_branch_country_code** | **String** | This 3 position field contains a 2-character code as approved by the International Organization for Standardization (ISO) used to identify the country in which the branch of the bank that receives the entry is located. Values for other countries can be found on the International Organization for Standardization website: www.iso.org  |  |
| **rdfi_id_number_qualifier** | **String** | The 2-digit code that identifies the numbering scheme used in the Receiving DFI Identification Number field: 01 &#x3D; National Clearing System 02 &#x3D; BIC Code 03 &#x3D; IBAN Code  |  |
| **rdfi_identification** | **String** | The bank identification number of the DFI at which the Receiver maintains his account. |  |
| **rdfi_name** | **String** | Name of the Receiver&#39;s bank |  |
| **receiver_address** | [**IatAddress**](IatAddress.md) |  |  |
| **receiver_id_number** | **String** | The accounting number by which the Originator is known to the Receiver for descriptive purposes. |  |
| **transaction_type_code** | **String** | Transaction Type Code Describes the type of payment ANN &#x3D; Annuity, BUS &#x3D; Business/Commercial, DEP &#x3D; Deposit, LOA &#x3D; Loan, MIS &#x3D; Miscellaneous, MOR &#x3D; Mortgage PEN &#x3D; Pension, RLS &#x3D; Rent/Lease, REM &#x3D; Remittance2, SAL &#x3D; Salary/Payroll, TAX &#x3D; Tax, TEL &#x3D; Telephone-Initiated Transaction WEB &#x3D; Internet-Initiated Transaction, ARC &#x3D; Accounts Receivable Entry, BOC &#x3D; Back Office Conversion Entry, POP &#x3D; Point of Purchase Entry, RCK &#x3D; Re-presented Check Entry  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::IatData.new(
  foreign_payment_amount: null,
  foreign_trace_number: null,
  name: null,
  odfi_branch_country_code: null,
  odfi_id_number_qualifier: null,
  odfi_identification: null,
  odfi_name: null,
  originator_address: null,
  originator_name: null,
  rdfi_branch_country_code: null,
  rdfi_id_number_qualifier: null,
  rdfi_identification: null,
  rdfi_name: null,
  receiver_address: null,
  receiver_id_number: null,
  transaction_type_code: null
)
```

