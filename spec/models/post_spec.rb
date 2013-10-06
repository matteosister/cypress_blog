require 'spec_helper'

describe Post do
  before { @post = build(:post) }
  subject { @post }


  it { should respond_to(:title) }
  it { should respond_to(:text) }
  it { should respond_to(:tags) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }


  describe "slug generation" do
    before { @post.title = "pippo" }
    it "should generates slug" do
      expect(@post.slug).to eq("pippo")
    end
  end
end

