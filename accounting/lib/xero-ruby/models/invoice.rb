=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.3

=end

require 'time'
require 'date'

module XeroRuby
  class Invoice
    # See Invoice Types
    attr_accessor :type

    attr_accessor :contact

    # See LineItems
    attr_accessor :line_items

    # Date invoice was issued – YYYY-MM-DD. If the Date element is not specified it will default to the current date based on the timezone setting of the organisation
    attr_accessor :date
    attr_accessor :date_string

    # Date invoice is due – YYYY-MM-DD
    attr_accessor :due_date
    attr_accessor :due_date_string

    attr_accessor :line_amount_types

    # ACCREC – Unique alpha numeric code identifying invoice (when missing will auto-generate from your Organisation Invoice Settings) (max length = 255)
    attr_accessor :invoice_number

    # ACCREC only – additional reference number (max length = 255)
    attr_accessor :reference

    # See BrandingThemes
    attr_accessor :branding_theme_id

    # URL link to a source document – shown as “Go to [appName]” in the Xero app
    attr_accessor :url

    attr_accessor :currency_code

    # The currency rate for a multicurrency invoice. If no rate is specified, the XE.com day rate is used. (max length = [18].[6])
    attr_accessor :currency_rate

    # See Invoice Status Codes
    attr_accessor :status

    # Boolean to set whether the invoice in the Xero app should be marked as “sent”. This can be set only on invoices that have been approved
    attr_accessor :sent_to_contact

    # Shown on sales invoices (Accounts Receivable) when this has been set
    attr_accessor :expected_payment_date

    # Shown on bills (Accounts Payable) when this has been set
    attr_accessor :planned_payment_date

    # CIS deduction for UK contractors
    attr_accessor :cis_deduction

    # Total of invoice excluding taxes
    attr_accessor :sub_total

    # Total tax on invoice
    attr_accessor :total_tax

    # Total of Invoice tax inclusive (i.e. SubTotal + TotalTax). This will be ignored if it doesn’t equal the sum of the LineAmounts
    attr_accessor :total

    # Total of discounts applied on the invoice line items
    attr_accessor :total_discount

    # Xero generated unique identifier for invoice
    attr_accessor :invoice_id

    # boolean to indicate if an invoice has an attachment
    attr_accessor :has_attachments

    # boolean to indicate if an invoice has a discount
    attr_accessor :is_discounted

    # See Payments
    attr_accessor :payments

    # See Prepayments
    attr_accessor :prepayments

    # See Overpayments
    attr_accessor :overpayments

    # Amount remaining to be paid on invoice
    attr_accessor :amount_due

    # Sum of payments received for invoice
    attr_accessor :amount_paid

    # The date the invoice was fully paid. Only returned on fully paid invoices
    attr_accessor :fully_paid_on_date
    attr_accessor :fully_paid_on_date_string

    # Sum of all credit notes, over-payments and pre-payments applied to invoice
    attr_accessor :amount_credited

    # Last modified date UTC format
    attr_accessor :updated_date_utc
    attr_accessor :updated_date_utc_string

    # Details of credit notes that have been applied to an invoice
    attr_accessor :credit_notes

    # Displays array of attachments from the API
    attr_accessor :attachments

    # A boolean to indicate if a invoice has an validation errors
    attr_accessor :has_errors

    # A string to indicate if a invoice status
    attr_accessor :status_attribute_string

    # Displays array of validation error messages from the API
    attr_accessor :validation_errors

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'Type',
        :'contact' => :'Contact',
        :'line_items' => :'LineItems',
        :'date' => :'Date',
        :'date_string' => :'DateString',
        :'due_date' => :'DueDate',
        :'due_date_string' => :'DueDateString',
        :'line_amount_types' => :'LineAmountTypes',
        :'invoice_number' => :'InvoiceNumber',
        :'reference' => :'Reference',
        :'branding_theme_id' => :'BrandingThemeID',
        :'url' => :'Url',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'CurrencyRate',
        :'status' => :'Status',
        :'sent_to_contact' => :'SentToContact',
        :'expected_payment_date' => :'ExpectedPaymentDate',
        :'planned_payment_date' => :'PlannedPaymentDate',
        :'cis_deduction' => :'CISDeduction',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'total_discount' => :'TotalDiscount',
        :'invoice_id' => :'InvoiceID',
        :'has_attachments' => :'HasAttachments',
        :'is_discounted' => :'IsDiscounted',
        :'payments' => :'Payments',
        :'prepayments' => :'Prepayments',
        :'overpayments' => :'Overpayments',
        :'amount_due' => :'AmountDue',
        :'amount_paid' => :'AmountPaid',
        :'fully_paid_on_date' => :'FullyPaidOnDate',
        :'amount_credited' => :'AmountCredited',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'credit_notes' => :'CreditNotes',
        :'attachments' => :'Attachments',
        :'has_errors' => :'HasErrors',
        :'status_attribute_string' => :'StatusAttributeString',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'contact' => :'Contact',
        :'line_items' => :'Array<LineItem>',
        :'date' => :'Date',
        :'date_string' => :'String',
        :'due_date' => :'Date',
        :'due_date_string' => :'String',
        :'line_amount_types' => :'LineAmountTypes',
        :'invoice_number' => :'String',
        :'reference' => :'String',
        :'branding_theme_id' => :'String',
        :'url' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'Float',
        :'status' => :'String',
        :'sent_to_contact' => :'Boolean',
        :'expected_payment_date' => :'Date',
        :'planned_payment_date' => :'Date',
        :'cis_deduction' => :'Float',
        :'sub_total' => :'Float',
        :'total_tax' => :'Float',
        :'total' => :'Float',
        :'total_discount' => :'Float',
        :'invoice_id' => :'String',
        :'has_attachments' => :'Boolean',
        :'is_discounted' => :'Boolean',
        :'payments' => :'Array<Payment>',
        :'prepayments' => :'Array<Prepayment>',
        :'overpayments' => :'Array<Overpayment>',
        :'amount_due' => :'Float',
        :'amount_paid' => :'Float',
        :'fully_paid_on_date' => :'Date',
        :'amount_credited' => :'Float',
        :'updated_date_utc' => :'DateTime',
        :'credit_notes' => :'Array<CreditNote>',
        :'attachments' => :'Array<Attachment>',
        :'has_errors' => :'Boolean',
        :'status_attribute_string' => :'String',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Invoice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Invoice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'date_string')
        self.date_string = attributes[:'date_string']
      end

      if attributes.key?(:'due_date_string')
        self.due_date_string = attributes[:'due_date_string']
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'branding_theme_id')
        self.branding_theme_id = attributes[:'branding_theme_id']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'sent_to_contact')
        self.sent_to_contact = attributes[:'sent_to_contact']
      end

      if attributes.key?(:'expected_payment_date')
        self.expected_payment_date = attributes[:'expected_payment_date']
      end

      if attributes.key?(:'planned_payment_date')
        self.planned_payment_date = attributes[:'planned_payment_date']
      end

      if attributes.key?(:'cis_deduction')
        self.cis_deduction = attributes[:'cis_deduction']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'total_discount')
        self.total_discount = attributes[:'total_discount']
      end

      if attributes.key?(:'invoice_id')
        self.invoice_id = attributes[:'invoice_id']
      end

      if attributes.key?(:'has_attachments')
        self.has_attachments = attributes[:'has_attachments']
      end

      if attributes.key?(:'is_discounted')
        self.is_discounted = attributes[:'is_discounted']
      end

      if attributes.key?(:'payments')
        if (value = attributes[:'payments']).is_a?(Array)
          self.payments = value
        end
      end

      if attributes.key?(:'prepayments')
        if (value = attributes[:'prepayments']).is_a?(Array)
          self.prepayments = value
        end
      end

      if attributes.key?(:'overpayments')
        if (value = attributes[:'overpayments']).is_a?(Array)
          self.overpayments = value
        end
      end

      if attributes.key?(:'amount_due')
        self.amount_due = attributes[:'amount_due']
      end

      if attributes.key?(:'amount_paid')
        self.amount_paid = attributes[:'amount_paid']
      end

      if attributes.key?(:'fully_paid_on_date')
        self.fully_paid_on_date = attributes[:'fully_paid_on_date']
      end

      if attributes.key?(:'amount_credited')
        self.amount_credited = attributes[:'amount_credited']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'credit_notes')
        if (value = attributes[:'credit_notes']).is_a?(Array)
          self.credit_notes = value
        end
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'has_errors')
        self.has_errors = attributes[:'has_errors']
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @contact.nil?
        invalid_properties.push('invalid value for "contact", contact cannot be nil.')
      end

      if @line_items.nil?
        invalid_properties.push('invalid value for "line_items", line_items cannot be nil.')
      end

      if !@invoice_number.nil? && @invoice_number.to_s.length > 255
        invalid_properties.push('invalid value for "invoice_number", the character length must be smaller than or equal to 255.')
      end

      if !@reference.nil? && @reference.to_s.length > 255
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["ACCREC", "ACCPAY", "ACCPAYCREDIT", "AROVERPAYMENT"])
      return false unless type_validator.valid?(@type)
      return false if @contact.nil?
      return false if @line_items.nil?
      return false if !@invoice_number.nil? && @invoice_number.to_s.length > 255
      return false if !@reference.nil? && @reference.to_s.length > 255
      status_validator = EnumAttributeValidator.new('String', ["DRAFT", "SUBMITTED", "DELETED", "AUTHORISED", "PAID", "VOIDED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ACCREC", "ACCPAY", "ACCPAYCREDIT", "AROVERPAYMENT"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      if !invoice_number.nil? && invoice_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "invoice_number", the character length must be smaller than or equal to 255.'
      end

      @invoice_number = invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 255
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 255.'
      end

      @reference = reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["DRAFT", "SUBMITTED", "DELETED", "AUTHORISED", "PAID", "VOIDED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          contact == o.contact &&
          line_items == o.line_items &&
          date == o.date &&
          due_date == o.due_date &&
          line_amount_types == o.line_amount_types &&
          invoice_number == o.invoice_number &&
          reference == o.reference &&
          branding_theme_id == o.branding_theme_id &&
          url == o.url &&
          currency_code == o.currency_code &&
          currency_rate == o.currency_rate &&
          status == o.status &&
          sent_to_contact == o.sent_to_contact &&
          expected_payment_date == o.expected_payment_date &&
          planned_payment_date == o.planned_payment_date &&
          cis_deduction == o.cis_deduction &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          total_discount == o.total_discount &&
          invoice_id == o.invoice_id &&
          has_attachments == o.has_attachments &&
          is_discounted == o.is_discounted &&
          payments == o.payments &&
          prepayments == o.prepayments &&
          overpayments == o.overpayments &&
          amount_due == o.amount_due &&
          amount_paid == o.amount_paid &&
          fully_paid_on_date == o.fully_paid_on_date &&
          amount_credited == o.amount_credited &&
          updated_date_utc == o.updated_date_utc &&
          credit_notes == o.credit_notes &&
          attachments == o.attachments &&
          has_errors == o.has_errors &&
          status_attribute_string == o.status_attribute_string &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, contact, line_items, date, due_date, line_amount_types, invoice_number, reference, branding_theme_id, url, currency_code, currency_rate, status, sent_to_contact, expected_payment_date, planned_payment_date, cis_deduction, sub_total, total_tax, total, total_discount, invoice_id, has_attachments, is_discounted, payments, prepayments, overpayments, amount_due, amount_paid, fully_paid_on_date, amount_credited, updated_date_utc, credit_notes, attachments, has_errors, status_attribute_string, validation_errors].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date._iso8601(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
