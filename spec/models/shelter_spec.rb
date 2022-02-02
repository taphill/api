# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shelter, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:city) }
    it { is_expected.to validate_presence_of(:state) }
    it { is_expected.to validate_presence_of(:rank) }
    it { is_expected.to validate_numericality_of(:rank) }
  end
end
