require 'features_helper'

RSpec.describe 'Visit Home' do
  it 'is successful' do
    visit '/'

    expect(page).to have_content('True or False')
  end
end
