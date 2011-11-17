require 'spec_helper'

describe OmniAuth::Strategies::Readmill do
  def app; lambda{|env| [200, {}, ["Hello."]]} end
  let(:fresh_strategy){ Class.new(OmniAuth::Strategies::Readmill) }
  
  describe '#client' do
    subject{ fresh_strategy }
    
    it 'should have the correct authorize url' do
	    instance = subject.new(app)
	    instance.client.options[:authorize_url].should == 'http://readmill.com/oauth/authorize'
	  end
	  
	  it 'should have the correct token url' do
		  instance = subject.new(app)
		  instance.client.options[:token_url].should == 'http://readmill.com/oauth/token'
		end
  end
end
