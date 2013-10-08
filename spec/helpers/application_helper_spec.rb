require 'rspec'

describe ApplicationHelper do
  before { ApplicationHelper }
  subject {helper}

  #it 'should create a post link' do
  #  helper.should respond_to :post_link
  #end
  #it 'should create title page' do
  #  helper.should respond_to :full_title
  #end
  describe 'should generate urls' do
    it { should respond_to(:url_for_post) }
  end

end