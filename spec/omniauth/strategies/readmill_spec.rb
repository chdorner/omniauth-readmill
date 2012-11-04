require 'spec_helper'

describe OmniAuth::Strategies::Readmill do
  def app; lambda{|env| [200, {}, ["Hello."]]} end
  let(:strategy) { Class.new(OmniAuth::Strategies::Readmill) }

  describe '#client' do
    subject { strategy.new(app) }

    specify { subject.client.options[:authorize_url].should == 'https://readmill.com/oauth/authorize' }
    specify { subject.client.options[:token_url].should == 'https://readmill.com/oauth/token' }
    specify { subject.authorize_params.should include(scope: 'non-expiring') }
  end
end
