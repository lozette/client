require 'spec_helper'

RSpec.describe 'Client' do
  it 'calls the health_check endpoint' do
    client = Client.new('https://simpledebit.gocardless.io/health_check')
    response = client.call
    expect(response['status']).to eq('ok')
  end
end
