# encoding: utf-8

# Allows configuration for the QuirkyApi module.
module QuirkyApi
  class << self
    attr_accessor :validate_associations, :warn_invalid_fields, :auth_system,
                  :show_exceptions, :exception_handler, :envelope,
                  :pretty_print

    def has_auth_system?
      auth_system.present? && auth_system.is_a?(Module)
    end

    def pretty_print
      @pretty_print.nil? ? true : @pretty_print
    end

    def pretty_print?
      pretty_print === true
    end

    def configure
      yield(self)
    end
  end
end
