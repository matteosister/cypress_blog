require 'spec_helper'
require 'factory_girl'

describe Post do
  let(:post) { build(:post) }
  subject { post }

  it { should respond_to(:title) }
  it { should respond_to(:text) }
  it { should respond_to(:slug) }
  it { should respond_to(:tags) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
  it { should be_valid }

  it 'should have a valid factory' do
    build(:post).should be_valid
  end

  it 'should be invalid without the title' do
    build(:post, title: nil).should_not be_valid
  end

  it 'should be invalid without the text' do
    build(:post, text: nil).should_not be_valid
  end

  it 'should change the slug value by saving a model without slug' do
    post = build(:post, title: 'test title', slug: nil)
    expect { post.save }.to change(post, :slug)
  end

end

