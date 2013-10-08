require 'rspec'

describe 'Homepage' do
  subject { page }

  describe 'homepage' do
    before { visit root_path }

    it { should have_selector('h1') }
    it { should have_content('Cypress Lab blog') }
  end

  describe 'should list the posts' do
    before do
      (1..2).each { create(:post) }
      visit root_path
    end
    it { should have_selector('article.post', count: 2) }
  end

  describe 'should list a max of 5 posts in homepage' do
    before do
      (1..6).each { create(:post) }
      visit root_path
    end
    it { should have_selector('article.post', count: 5) }
  end

  describe 'should have the correct page title' do
    before { visit root_path }
    it { should have_title('Homepage') }
  end
end