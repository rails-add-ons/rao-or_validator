module ActiveModel
  module Validations
    class OrValidator < ::ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        values = options[:others].map{ |o| record.send(o) } + [value]
        attribute_names = ([attribute] + options[:others]).map { |attr_name| record.class.human_attribute_name(attr_name) }

        if options[:exclusive]
          if values.count { |x| x.present? } != 1
            record.errors.add(attribute, options[:message] || I18n.t('activerecord.errors.messages.or.exclusive', attribute_names: attribute_names.to_sentence))
          end
        else
          if values.all? { |x| x.blank? }
            record.errors.add(attribute, options[:message] || I18n.t('activerecord.errors.messages.or.default', attribute_names: attribute_names.to_sentence))
          end
        end
      end
    end
  end
end
