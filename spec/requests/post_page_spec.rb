require 'rspec'

describe 'Post page' do
  subject { page }


  describe 'Shows post' do
    before do
      @post = create(:post)
      visit post_path(slug: @post.slug)
    end

    #it { should have_selector 'title', text: @post.title + ' | CypressLab Blog' }
  end
end