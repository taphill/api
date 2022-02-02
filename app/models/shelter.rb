# frozen_string_literal: true

class Shelter < ApplicationRecord
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :rank, presence: true, numericality: true
end
