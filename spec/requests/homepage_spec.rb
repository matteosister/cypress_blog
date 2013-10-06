require 'rspec'

describe 'Homepage' do
  subject { page }

  describe 'homepage' do
    before { visit root_path }

    it { should have_selector('h1') }
    it { should have_content('Cypress Lab blog') }
  end
end