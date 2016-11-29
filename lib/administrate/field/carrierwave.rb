require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

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
