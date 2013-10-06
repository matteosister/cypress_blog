require 'spec_helper'

describe Post do
  before { @post = Post.new }
  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:text) }
  it { should respond_to(:tags) }
end
