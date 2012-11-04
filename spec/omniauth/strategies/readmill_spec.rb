require 'spec_helper'

describe OmniAuth::Strategies::Readmill do
  def app; lambda{|env| [200, {}, ["Hello."]]} end
  let(:strategy) { Class.new(OmniAuth::Strategies::Readmill) }

  describe '#client' do
    subject { strategy.new(app) }

    specify { subject.client.options[:authorize_url].should == 'http://readmill.com/oauth/authorize' }
    specify { subject.client.options[:token_url].should == 'http://readmill.com/oauth/token' }
  end
end
