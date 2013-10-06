require 'spec_helper'

describe Post do
  before { @post = Post.new }
  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:text) }
  it { should respond_to(:tags) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
end
