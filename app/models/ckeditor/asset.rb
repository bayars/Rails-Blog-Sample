# frozen_string_literal: true

# Ckeditor Settings
class Ckeditor::Asset < ActiveRecord::Base
  include Ckeditor::Orm::ActiveRecord::AssetBase
  include Ckeditor::Backend::ActiveStorage

  attr_accessor :data

  has_one_attached :storage_data
end
