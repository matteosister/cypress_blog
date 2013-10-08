require 'rspec'

describe 'Post page' do
  include ApplicationHelper

  subject { page }
  let(:post) do
    post = build(:post)
    post.tags << build(:tag)
    post.tags << build(:tag)
    post.tags << build(:tag)
    post.save
    post
  end

  describe 'Shows post' do
    before { visit url_for_post(post) }

    it { should have_selector 'article' }
    it { should have_selector 'article h2', text: post.title }
    it { should have_selector 'article p', text: post.text }
    it { should have_selector 'article ul.tags' }
    it { should have_selector 'article ul.tags li', count: 3 }
  end

  describe 'should have the post title as page title' do
    before { visit url_for_post(post) }

    it { should have_title(post.title) }
  end

  it 'should return to homepage by clicking the logo' do
    visit url_for_post(post)
    click_link 'Cypress Lab'
    current_path.should eq('/')
  end
end