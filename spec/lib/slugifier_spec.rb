require 'rspec'

describe 'Slugifier Module' do
  class DummyClass
  end

  before do
    @dummy = DummyClass.new
    @dummy.extend Slugifier
  end

  it 'should not fail for a nil title' do
    @dummy.generate_slug(nil).should eq 'n-a'

  end

  it 'should generate correct slugs' do
    @dummy.generate_slug('').should eq 'n-a'
    @dummy.generate_slug('test').should eq 'test'
    @dummy.generate_slug('test test').should eq 'test-test'
    @dummy.generate_slug('test/test').should eq 'test-test'
    @dummy.generate_slug('test/').should eq 'test'
    @dummy.generate_slug('test//').should eq 'test'
    @dummy.generate_slug('test//()').should eq 'test'
    @dummy.generate_slug('-\/test').should eq 'test'
    @dummy.generate_slug('-\/test--221').should eq 'test-221'
    @dummy.generate_slug('-test another title! Very long...').should eq 'test-another-title-very-long'
  end
end