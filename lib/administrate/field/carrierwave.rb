require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def image
        options.fetch(:image, nil)
      end

      def image_on_index?
        options.fetch(:image_on_index, false)
      end

      def multiple?
        options.fetch(:multiple, false)
      end

      def remove?
        options.fetch(:remove, false)
      end

      def remote_url?
        options.fetch(:remote_url, false)
      end

      def files
        Array[*data]
      end

      def file
        files.first
      end
    end
  end
end
