=begin
#Synctera API

#This is the official reference documentation for Synctera APIs. If you need something specific or have a question, <a class='text-blue-600' href='https://synctera.com/contact-us' target='_blank' rel='noreferrer'>contact us</a>.</p>

The version of the OpenAPI document: 0.147.0

Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

# Common files
require 'synctera/api_client'
require 'synctera/api_error'
require 'synctera/version'
require 'synctera/configuration'

# Models
require 'synctera/models/account'
require 'synctera/models/account_access_status'
require 'synctera/models/account_base'
require 'synctera/models/account_charge_secured'
require 'synctera/models/account_charge_unsecured'
require 'synctera/models/account_closure'
require 'synctera/models/account_closure_reason'
require 'synctera/models/account_closure_validation_response'
require 'synctera/models/account_creation'
require 'synctera/models/account_depository'
require 'synctera/models/account_general_ledger'
require 'synctera/models/account_generic_response'
require 'synctera/models/account_identifiers'
require 'synctera/models/account_line_of_credit'
require 'synctera/models/account_list'
require 'synctera/models/account_product'
require 'synctera/models/account_product_list'
require 'synctera/models/account_relationship'
require 'synctera/models/account_relationship_type'
require 'synctera/models/account_restrictions'
require 'synctera/models/account_routing'
require 'synctera/models/account_status'
require 'synctera/models/account_summary'
require 'synctera/models/account_summary_balance_ceiling'
require 'synctera/models/account_summary_balance_floor'
require 'synctera/models/account_template'
require 'synctera/models/account_template_response'
require 'synctera/models/account_type'
require 'synctera/models/account_verification'
require 'synctera/models/accrual_payout_schedule'
require 'synctera/models/ach_instruction'
require 'synctera/models/ach_request_hold_data'
require 'synctera/models/ach_return_simulation_request'
require 'synctera/models/ach_transaction_simulation_request'
require 'synctera/models/action'
require 'synctera/models/add_accounts_request'
require 'synctera/models/add_accounts_request_account_identifiers'
require 'synctera/models/add_accounts_request_routing_identifiers'
require 'synctera/models/add_vendor_account_failure'
require 'synctera/models/add_vendor_accounts_error_reason'
require 'synctera/models/add_vendor_accounts_request'
require 'synctera/models/add_vendor_accounts_response'
require 'synctera/models/additional_data'
require 'synctera/models/additional_owner_data'
require 'synctera/models/address'
require 'synctera/models/address1'
require 'synctera/models/address2'
require 'synctera/models/address3'
require 'synctera/models/address_base'
require 'synctera/models/address_lines'
require 'synctera/models/address_post'
require 'synctera/models/address_response'
require 'synctera/models/address_response_base'
require 'synctera/models/addresses_list'
require 'synctera/models/adhoc_verification_request'
require 'synctera/models/adhoc_verification_response'
require 'synctera/models/apple_digital_wallet_provision_request'
require 'synctera/models/apple_digital_wallet_provision_response'
require 'synctera/models/application_type'
require 'synctera/models/auth_request_model'
require 'synctera/models/authenticate3ds_request'
require 'synctera/models/authenticate3ds_response'
require 'synctera/models/authorization_advice_model'
require 'synctera/models/balance'
require 'synctera/models/balance_ceiling'
require 'synctera/models/balance_floor'
require 'synctera/models/balance_inquiry_request_model'
require 'synctera/models/balance_type'
require 'synctera/models/ban_status'
require 'synctera/models/base'
require 'synctera/models/base_account_verification'
require 'synctera/models/base_card'
require 'synctera/models/base_customer'
require 'synctera/models/base_disclosure'
require 'synctera/models/base_person'
require 'synctera/models/base_statement'
require 'synctera/models/base_template_fields'
require 'synctera/models/billing_address'
require 'synctera/models/billing_frequency'
require 'synctera/models/billing_period'
require 'synctera/models/business'
require 'synctera/models/business1'
require 'synctera/models/business_business_owner_relationship'
require 'synctera/models/business_list'
require 'synctera/models/bypass_errors'
require 'synctera/models/bypassable_errors'
require 'synctera/models/bypassable_errors1'
require 'synctera/models/calculation_method'
require 'synctera/models/card_acceptor_model'
require 'synctera/models/card_activation_request'
require 'synctera/models/card_brand'
require 'synctera/models/card_category'
require 'synctera/models/card_change'
require 'synctera/models/card_change_state'
require 'synctera/models/card_changes_list'
require 'synctera/models/card_edit_request'
require 'synctera/models/card_format'
require 'synctera/models/card_fulfillment_provider'
require 'synctera/models/card_fulfillment_status'
require 'synctera/models/card_image_details'
require 'synctera/models/card_image_details_list'
require 'synctera/models/card_image_mode'
require 'synctera/models/card_image_rejection_reason'
require 'synctera/models/card_image_status'
require 'synctera/models/card_issuance_request'
require 'synctera/models/card_list_response'
require 'synctera/models/card_options'
require 'synctera/models/card_pin_status'
require 'synctera/models/card_product'
require 'synctera/models/card_product_list_response'
require 'synctera/models/card_product_response'
require 'synctera/models/card_program_type'
require 'synctera/models/card_response'
require 'synctera/models/card_status'
require 'synctera/models/card_status_object'
require 'synctera/models/card_status_pending_reasons'
require 'synctera/models/card_status_reason_code'
require 'synctera/models/card_status_request'
require 'synctera/models/card_type'
require 'synctera/models/card_widget_url_response'
require 'synctera/models/cash_authorization_base'
require 'synctera/models/cash_authorization_post'
require 'synctera/models/cash_authorization_response'
require 'synctera/models/cash_authorization_response_list'
require 'synctera/models/cash_authorization_type'
require 'synctera/models/cash_base'
require 'synctera/models/cash_list'
require 'synctera/models/cash_network_status'
require 'synctera/models/cash_order_authorization_patch'
require 'synctera/models/cash_order_authorization_post'
require 'synctera/models/cash_order_authorization_response'
require 'synctera/models/cash_patch'
require 'synctera/models/cash_response'
require 'synctera/models/cash_status'
require 'synctera/models/change_channel'
require 'synctera/models/change_type'
require 'synctera/models/clearing_model'
require 'synctera/models/client_token'
require 'synctera/models/correspondent_bank_details'
require 'synctera/models/create_card_image_request'
require 'synctera/models/create_edd_request'
require 'synctera/models/create_edd_response'
require 'synctera/models/create_gateway_request'
require 'synctera/models/create_secret201_response'
require 'synctera/models/customer'
require 'synctera/models/customer_in_body'
require 'synctera/models/customer_kyc_status'
require 'synctera/models/customer_list'
require 'synctera/models/customer_service_details'
require 'synctera/models/customer_type'
require 'synctera/models/customer_verification'
require 'synctera/models/customer_verification_result'
require 'synctera/models/customer_verification_result_list'
require 'synctera/models/customer_verify_response'
require 'synctera/models/dc_sign'
require 'synctera/models/delete_response'
require 'synctera/models/deposit'
require 'synctera/models/deposit_get'
require 'synctera/models/deposit_list'
require 'synctera/models/deposit_post'
require 'synctera/models/deposit_request'
require 'synctera/models/detail'
require 'synctera/models/device_details'
require 'synctera/models/device_type'
require 'synctera/models/digital_wallet_token_address_verification'
require 'synctera/models/digital_wallet_token_edit_request'
require 'synctera/models/digital_wallet_token_response'
require 'synctera/models/digital_wallet_token_state'
require 'synctera/models/digital_wallet_tokenization'
require 'synctera/models/disclosure'
require 'synctera/models/disclosure1'
require 'synctera/models/disclosure_list'
require 'synctera/models/disclosure_response'
require 'synctera/models/disclosure_type'
require 'synctera/models/document_encryption'
require 'synctera/models/document_encryption_version_post'
require 'synctera/models/document_list'
require 'synctera/models/document_patch'
require 'synctera/models/document_response'
require 'synctera/models/document_type'
require 'synctera/models/document_version_info'
require 'synctera/models/edd_account'
require 'synctera/models/edd_account_response'
require 'synctera/models/edd_base_report'
require 'synctera/models/edd_base_response'
require 'synctera/models/edd_business'
require 'synctera/models/edd_business_response'
require 'synctera/models/edd_customer'
require 'synctera/models/edd_customer_response'
require 'synctera/models/edd_list'
require 'synctera/models/edd_transaction'
require 'synctera/models/edd_transaction_response'
require 'synctera/models/eft_ca_base'
require 'synctera/models/eft_ca_create'
require 'synctera/models/eft_ca_list'
require 'synctera/models/eft_ca_patch'
require 'synctera/models/eft_ca_response'
require 'synctera/models/eft_ca_status'
require 'synctera/models/emboss_name'
require 'synctera/models/error'
require 'synctera/models/estimated_revenue'
require 'synctera/models/event'
require 'synctera/models/event_list'
require 'synctera/models/event_trigger'
require 'synctera/models/event_type'
require 'synctera/models/event_type_explicit'
require 'synctera/models/event_type_wildcard'
require 'synctera/models/ext_account_customer_type'
require 'synctera/models/external_account'
require 'synctera/models/external_account_access_token'
require 'synctera/models/external_account_balance'
require 'synctera/models/external_account_language'
require 'synctera/models/external_account_link_token'
require 'synctera/models/external_account_transaction'
require 'synctera/models/external_account_transaction_refresh_response'
require 'synctera/models/external_account_vendor_data'
require 'synctera/models/external_account_vendor_values'
require 'synctera/models/external_accounts_list'
require 'synctera/models/external_accounts_transaction_list'
require 'synctera/models/external_card_list_response'
require 'synctera/models/external_card_product_type'
require 'synctera/models/external_card_request'
require 'synctera/models/external_card_response'
require 'synctera/models/external_card_status'
require 'synctera/models/external_card_update_request'
require 'synctera/models/external_card_verifications'
require 'synctera/models/external_cards_funds_availability'
require 'synctera/models/fee'
require 'synctera/models/financial'
require 'synctera/models/financial_institution'
require 'synctera/models/financial_institution1'
require 'synctera/models/financial_request_model'
require 'synctera/models/finicity_account_verification'
require 'synctera/models/fleets'
require 'synctera/models/fleets_emv'
require 'synctera/models/form'
require 'synctera/models/frequency'
require 'synctera/models/fulfillment_details'
require 'synctera/models/funds_ownership'
require 'synctera/models/gateway_config'
require 'synctera/models/gateway_list_response'
require 'synctera/models/gateway_patch'
require 'synctera/models/gateway_post'
require 'synctera/models/gateway_response'
require 'synctera/models/gateway_standin'
require 'synctera/models/general_ledger_category'
require 'synctera/models/general_ledger_type'
require 'synctera/models/get_card_barcode200_response'
require 'synctera/models/google_digital_wallet_provision_request'
require 'synctera/models/google_digital_wallet_provision_response'
require 'synctera/models/hold_data'
require 'synctera/models/iat_address'
require 'synctera/models/iat_data'
require 'synctera/models/in_app_provisioning'
require 'synctera/models/income'
require 'synctera/models/incoming_ach'
require 'synctera/models/incoming_ach_list'
require 'synctera/models/incoming_wire'
require 'synctera/models/incoming_wire_list'
require 'synctera/models/incoming_wire_patch'
require 'synctera/models/industry_type'
require 'synctera/models/initialize3ds_request'
require 'synctera/models/initialize3ds_response'
require 'synctera/models/institution'
require 'synctera/models/institution_list'
require 'synctera/models/interest'
require 'synctera/models/internal_account'
require 'synctera/models/internal_account_patch'
require 'synctera/models/internal_account_post'
require 'synctera/models/internal_account_purpose'
require 'synctera/models/internal_account_response'
require 'synctera/models/internal_account_type'
require 'synctera/models/internal_accounts_list'
require 'synctera/models/internal_transfer'
require 'synctera/models/internal_transfer_instruction'
require 'synctera/models/internal_transfer_patch'
require 'synctera/models/internal_transfer_response'
require 'synctera/models/internal_transfer_response_status'
require 'synctera/models/international_wire_details'
require 'synctera/models/inventory_details'
require 'synctera/models/item_detail_taxes'
require 'synctera/models/kyc_verification_type'
require 'synctera/models/l2l3_model'
require 'synctera/models/legal_address'
require 'synctera/models/license_list'
require 'synctera/models/license_patch'
require 'synctera/models/license_type'
require 'synctera/models/lookup3ds_request'
require 'synctera/models/lookup3ds_request_base'
require 'synctera/models/lookup3ds_request_browser'
require 'synctera/models/lookup3ds_request_sdk'
require 'synctera/models/lookup3ds_response'
require 'synctera/models/manual_account_verification'
require 'synctera/models/manual_entry'
require 'synctera/models/merchant'
require 'synctera/models/merchant_response'
require 'synctera/models/minimum_payment'
require 'synctera/models/minimum_payment_full'
require 'synctera/models/minimum_payment_partial'
require 'synctera/models/minimum_payment_type'
require 'synctera/models/minimum_payment_type_full'
require 'synctera/models/minimum_payment_type_rate_or_amount'
require 'synctera/models/modelcase'
require 'synctera/models/monitoring_alert'
require 'synctera/models/monitoring_alert_list'
require 'synctera/models/monitoring_status'
require 'synctera/models/monitoring_subscription'
require 'synctera/models/monitoring_subscription_list'
require 'synctera/models/network_fee_model'
require 'synctera/models/noc_data'
require 'synctera/models/non_fuel_item_details'
require 'synctera/models/note_create'
require 'synctera/models/note_list'
require 'synctera/models/note_response'
require 'synctera/models/note_status'
require 'synctera/models/notification_language'
require 'synctera/models/original_credit_request_model'
require 'synctera/models/original_credit_sender_data'
require 'synctera/models/outgoing_ach'
require 'synctera/models/outgoing_ach_list'
require 'synctera/models/outgoing_ach_patch'
require 'synctera/models/outgoing_ach_request'
require 'synctera/models/paginated_response'
require 'synctera/models/party'
require 'synctera/models/patch_account'
require 'synctera/models/patch_account_charge_secured'
require 'synctera/models/patch_account_charge_unsecured'
require 'synctera/models/patch_account_depository'
require 'synctera/models/patch_account_general_ledger'
require 'synctera/models/patch_account_line_of_credit'
require 'synctera/models/patch_account_product'
require 'synctera/models/patch_accounts_request_account_identifiers'
require 'synctera/models/patch_accounts_request_routing_identifiers'
require 'synctera/models/patch_business'
require 'synctera/models/patch_business_business_owner_relationship'
require 'synctera/models/patch_customer'
require 'synctera/models/patch_external_account'
require 'synctera/models/patch_interest'
require 'synctera/models/patch_international_wire_details'
require 'synctera/models/patch_note'
require 'synctera/models/patch_payer_payee_relationship'
require 'synctera/models/patch_payment_schedule'
require 'synctera/models/patch_person'
require 'synctera/models/patch_person_business_owner_relationship'
require 'synctera/models/patch_person_business_relationship'
require 'synctera/models/patch_personal_id'
require 'synctera/models/patch_relationship_in'
require 'synctera/models/payer_payee_additional_data'
require 'synctera/models/payer_payee_relationship'
require 'synctera/models/payment'
require 'synctera/models/payment_date'
require 'synctera/models/payment_error_details'
require 'synctera/models/payment_instruction'
require 'synctera/models/payment_list'
require 'synctera/models/payment_schedule'
require 'synctera/models/payment_schedule_list'
require 'synctera/models/payment_schedule_status'
require 'synctera/models/payment_status'
require 'synctera/models/payment_sub_type'
require 'synctera/models/payment_type'
require 'synctera/models/pending_transaction'
require 'synctera/models/pending_transaction_data'
require 'synctera/models/pending_transaction_history'
require 'synctera/models/pending_transaction_history_data'
require 'synctera/models/pending_transactions'
require 'synctera/models/person'
require 'synctera/models/person_business_owner_relationship'
require 'synctera/models/person_business_relationship'
require 'synctera/models/person_list'
require 'synctera/models/person_status'
require 'synctera/models/personal_id_base'
require 'synctera/models/personal_id_country_code_post'
require 'synctera/models/personal_id_country_code_response'
require 'synctera/models/personal_id_customer_id'
require 'synctera/models/personal_id_type'
require 'synctera/models/physical_card'
require 'synctera/models/physical_card_format'
require 'synctera/models/physical_card_issuance_request'
require 'synctera/models/physical_card_plus_status'
require 'synctera/models/physical_card_response'
require 'synctera/models/physical_card_response_status'
require 'synctera/models/plaid_account_verification'
require 'synctera/models/post_license'
require 'synctera/models/post_person'
require 'synctera/models/post_personal_id'
require 'synctera/models/post_personal_id_w_cust'
require 'synctera/models/post_personal_ids_array'
require 'synctera/models/posted_transaction'
require 'synctera/models/posted_transaction_data'
require 'synctera/models/posted_transactions'
require 'synctera/models/prospect'
require 'synctera/models/provider_type'
require 'synctera/models/provisioning_controls'
require 'synctera/models/pull_details'
require 'synctera/models/push_details'
require 'synctera/models/push_tokenize_request_data'
require 'synctera/models/question'
require 'synctera/models/rails_charge_secured'
require 'synctera/models/rails_charge_unsecured'
require 'synctera/models/rails_depository'
require 'synctera/models/rails_general_ledger'
require 'synctera/models/rails_loc'
require 'synctera/models/rate_details'
require 'synctera/models/raw_response'
require 'synctera/models/recipient_name'
require 'synctera/models/related_resource_type'
require 'synctera/models/related_resource_type1'
require 'synctera/models/related_resource_type2'
require 'synctera/models/relationship'
require 'synctera/models/relationship_in'
require 'synctera/models/relationship_list'
require 'synctera/models/relationship_response'
require 'synctera/models/relationship_role'
require 'synctera/models/relationship_types'
require 'synctera/models/relationships_list'
require 'synctera/models/replace_secret200_response'
require 'synctera/models/replace_secret_request'
require 'synctera/models/residential_expense'
require 'synctera/models/response_history_item'
require 'synctera/models/response_license'
require 'synctera/models/response_person'
require 'synctera/models/response_personal_id'
require 'synctera/models/response_personal_id_w_cust'
require 'synctera/models/response_personal_ids_array'
require 'synctera/models/return_data'
require 'synctera/models/return_data1'
require 'synctera/models/reversal_model'
require 'synctera/models/risk_data'
require 'synctera/models/routing_identifier'
require 'synctera/models/savings_summary'
require 'synctera/models/schedule_config'
require 'synctera/models/schemas_bypassable_errors'
require 'synctera/models/security'
require 'synctera/models/shipping'
require 'synctera/models/shipping_address'
require 'synctera/models/simulate_card_fulfillment'
require 'synctera/models/single_use_token_request'
require 'synctera/models/single_use_token_response'
require 'synctera/models/source_of_wealth'
require 'synctera/models/specific_involvement'
require 'synctera/models/spend_control'
require 'synctera/models/spend_control_direction'
require 'synctera/models/spend_control_response'
require 'synctera/models/spend_control_response_list'
require 'synctera/models/spend_control_rolling_window_days'
require 'synctera/models/spend_control_single_transaction'
require 'synctera/models/spend_control_time_range'
require 'synctera/models/spend_control_time_range_type'
require 'synctera/models/spend_control_update_request'
require 'synctera/models/spending_limit_with_time'
require 'synctera/models/spending_limits'
require 'synctera/models/spending_limits_transaction'
require 'synctera/models/ssn_source'
require 'synctera/models/statement'
require 'synctera/models/statement_list'
require 'synctera/models/statement_summary'
require 'synctera/models/stop_payment'
require 'synctera/models/stop_payment_list'
require 'synctera/models/stop_payment_response_w_account'
require 'synctera/models/template_fields'
require 'synctera/models/template_fields_charge_secured'
require 'synctera/models/template_fields_charge_unsecured'
require 'synctera/models/template_fields_depository'
require 'synctera/models/template_fields_general_ledger'
require 'synctera/models/template_fields_generic_response'
require 'synctera/models/template_fields_line_of_credit'
require 'synctera/models/template_list'
require 'synctera/models/three_ds_policy'
require 'synctera/models/token_list'
require 'synctera/models/token_list_response'
require 'synctera/models/transaction'
require 'synctera/models/transaction_data'
require 'synctera/models/transaction_dispute'
require 'synctera/models/transaction_line'
require 'synctera/models/transaction_line1'
require 'synctera/models/transaction_list'
require 'synctera/models/transaction_options'
require 'synctera/models/transaction_volume'
require 'synctera/models/transfer_list_response'
require 'synctera/models/transfer_request'
require 'synctera/models/transfer_request_base'
require 'synctera/models/transfer_request_pull'
require 'synctera/models/transfer_request_push'
require 'synctera/models/transfer_response'
require 'synctera/models/transfer_response_base'
require 'synctera/models/transfer_response_pull'
require 'synctera/models/transfer_response_push'
require 'synctera/models/transfer_reversal_request'
require 'synctera/models/transfer_type'
require 'synctera/models/transfer_type_request'
require 'synctera/models/trigger_event_request'
require 'synctera/models/txn_enhancer'
require 'synctera/models/type'
require 'synctera/models/update_account'
require 'synctera/models/update_card_image_request'
require 'synctera/models/update_gateway_request'
require 'synctera/models/update_transfer'
require 'synctera/models/vendor_info'
require 'synctera/models/vendor_json'
require 'synctera/models/vendor_xml'
require 'synctera/models/verification'
require 'synctera/models/verification_list'
require 'synctera/models/verification_request'
require 'synctera/models/verification_result'
require 'synctera/models/verification_status'
require 'synctera/models/verification_type'
require 'synctera/models/verification_vendor_info'
require 'synctera/models/verification_vendor_info_detail'
require 'synctera/models/verification_vendor_json'
require 'synctera/models/verification_vendor_xml'
require 'synctera/models/verify_response'
require 'synctera/models/virtual_card'
require 'synctera/models/virtual_card_issuance_request'
require 'synctera/models/virtual_card_plus_status'
require 'synctera/models/virtual_card_response'
require 'synctera/models/virtual_card_response_status'
require 'synctera/models/wallet_provider_card_on_file'
require 'synctera/models/watchlist_alert'
require 'synctera/models/watchlist_subscription'
require 'synctera/models/watchlist_subscription_list'
require 'synctera/models/webhook'
require 'synctera/models/webhook_list'
require 'synctera/models/webhook_request_object'
require 'synctera/models/widget_type'
require 'synctera/models/wire'
require 'synctera/models/wire_list'
require 'synctera/models/wire_request'
require 'synctera/models/wire_return_simulation_request'
require 'synctera/models/wire_simulation_datasoft_response'
require 'synctera/models/wire_simulation_fedwire_response'
require 'synctera/models/wire_simulation_response'
require 'synctera/models/wire_transaction_simulation_request'
require 'synctera/models/withdrawal_request_model'

# APIs
require 'synctera/api/ach_api'
require 'synctera/api/ach_transaction_simulations_api'
require 'synctera/api/accounts_api'
require 'synctera/api/addresses_api'
require 'synctera/api/businesses_api'
require 'synctera/api/card_transaction_simulations_api'
require 'synctera/api/card_webhook_simulations_api'
require 'synctera/api/cards_api'
require 'synctera/api/cash_orders_and_deposits_alpha_api'
require 'synctera/api/customers_api'
require 'synctera/api/digital_wallet_tokens_api'
require 'synctera/api/disclosures_api'
require 'synctera/api/disclosures_deprecated_api'
require 'synctera/api/documents_api'
require 'synctera/api/edd_api'
require 'synctera/api/eft_canada_beta_api'
require 'synctera/api/external_accounts_api'
require 'synctera/api/external_cards_api'
require 'synctera/api/incoming_wires_api'
require 'synctera/api/institutions_beta_api'
require 'synctera/api/internal_accounts_api'
require 'synctera/api/internal_transfer_api'
require 'synctera/api/kyckyb_verifications_api'
require 'synctera/api/kyc_verification_deprecated_api'
require 'synctera/api/licenses_api'
require 'synctera/api/merchants_api'
require 'synctera/api/monitoring_api'
require 'synctera/api/notes_api'
require 'synctera/api/payment_schedules_api'
require 'synctera/api/persons_api'
require 'synctera/api/relationships_api'
require 'synctera/api/remote_check_deposit_beta_api'
require 'synctera/api/sandbox_wipe_api'
require 'synctera/api/spend_controls_api'
require 'synctera/api/statements_api'
require 'synctera/api/transactions_api'
require 'synctera/api/watchlist_deprecated_api'
require 'synctera/api/webhooks_api'
require 'synctera/api/wire_transaction_simulations_api'
require 'synctera/api/wires_api'

module Synctera
  class << self
    # Customize default settings for the SDK using block.
    #   Synctera.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
