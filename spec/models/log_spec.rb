require 'rails_helper'

RSpec.describe Log, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:what) }
    it { should validate_presence_of(:when) }
    it { should validate_presence_of(:where) }
    it { should validate_presence_of(:done) }
    it { should validate_uniqueness_of(:what).scoped_to(:when, :where, :done) }

  end
end
