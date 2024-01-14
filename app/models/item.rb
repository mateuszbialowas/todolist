# frozen_string_literal: true

class Item < ApplicationRecord
  include Discard::Model

  belongs_to :user

  validates :name, presence: true
end
