require 'rails_helper'
require 'spec_helper'

describe 'Log', type: :request do
  describe '#index' do
    it 'should return all logs from the database' do
      logs = Log.all
      expect(logs.size).to eq 4
    end
  end
end
