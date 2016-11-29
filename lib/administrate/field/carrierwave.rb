require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Engine < ::Rails::Engine
    end

    class Carrierwave < Administrate::Field::Base
      delegate :url, :filename, to: :data, allow_nil: true

      def image
        options.fetch(:image, nil)
      end

      def uploaded?
        url.present?
      end
    end
  end
end
