require 'spec_helper'

describe OmniAuth::Strategies::Readmill do
  def app; lambda{|env| [200, {}, ["Hello."]]} end
  let(:fresh_strategy){ Class.new(OmniAuth::Strategies::Readmill) }

  describe '#client' do
    subject{ fresh_strategy }

    it 'configures the correct authorize url' do
      instance = subject.new(app)
      instance.client.options[:authorize_url].should == 'https://readmill.com/oauth/authorize'
    end

    it 'configures the correct token url' do
      instance = subject.new(app)
      instance.client.options[:token_url].should == 'https://readmill.com/oauth/token'
    end

    it 'adds scope non-expiring to authorize params' do
      instance = subject.new(app)
      instance.client.options[:authorize_params].should include(:scope => 'non-expiring')
    end
  end
end
