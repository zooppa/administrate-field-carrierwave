require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def image
        options.fetch(:image, nil)
      end

      def multiple?
        options.fetch(:multiple, false)
      end

      # One-element array when single file field, array of files when multiple
      def files
        Array[*data]
      end

      def file
        files.first
      end
    end
  end
end
