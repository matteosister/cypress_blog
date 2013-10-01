require 'spec_helper'

describe Post do
  before { @post = Post.new }
  subject { @post }

  it { should respond_to(:title) }
end
