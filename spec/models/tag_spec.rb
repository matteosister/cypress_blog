require 'spec_helper'

describe Tag do
  before { @tag = Tag.new }
  subject { @tag }

  it { should respond_to(:name) }
  it { should respond_to(:posts) }
  it { should respond_to(:created_at) }
  it { should respond_to(:updated_at) }
end
