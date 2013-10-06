require 'spec_helper'
require 'factory_girl'

describe Post do
  let(:post) { create(:post) }
  subject { post }

  it { should respond_to(:title) }
  it { should respond_to(:text) }
  it { should respond_to(:slug) }
  it { should respond_to(:tags) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should be_valid }

  it 'should set the slug automatically with the title' do
    post.title = 'test'
    expect { post.slug }.not_to be_nil
  end
end

