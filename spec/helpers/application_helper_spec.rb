require 'rspec'
require 'spec_helper'

describe ApplicationHelper do
  it 'generate urls' do
    post = create(:post)
    year = post.created_at.strftime('%Y')
    month = post.created_at.strftime('%m')
    day = post.created_at.strftime('%d')
    helper.should respond_to(:url_for_post)
    helper.url_for_post(post).should eq("/#{ year }/#{ month }/#{ day }/#{post.slug}")
  end

  it 'generates page title' do
    helper.should respond_to(:full_title)
    helper.full_title(nil).should eq('Cypresslab Blog')
    helper.full_title('').should eq('Cypresslab Blog')
    helper.full_title('a').should eq('a | Cypresslab Blog')
  end
end