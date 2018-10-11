# frozen_string_literal: true

require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class Carrierwave < Administrate::Field::Base
      class Engine < ::Rails::Engine; end

      def image
        options.fetch(:image, '')
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

      def show_preview?
        data&.model&.persisted? &&
          data&.file.present? &&
          file.version_exists?(image)
      end

      def show_file?
        file.present?
      end
    end
  end
end
