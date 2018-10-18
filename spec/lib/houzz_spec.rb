# frozen_string_literal: true

RSpec.describe Houzz do
  subject { described_class }

  context "when setting the configuration" do
    let(:ssl_token) { "blabla" }
    let(:username) { "johnsnow" }
    let(:app_name) { "asdfasdf" }
    let(:format) { "json" }

    it "saves the ssl_token" do
      expect { subject.ssl_token = ssl_token }.not_to raise_error
      expect(subject.ssl_token).to eql(ssl_token)
    end

    it "saves the username" do
      expect { subject.username = username }.not_to raise_error
      expect(subject.username).to eql(username)
    end

    it "saves the app_name" do
      expect { subject.app_name = app_name }.not_to raise_error
      expect(subject.app_name).to eql(app_name)
    end

    it "saves the format" do
      expect { subject.format = "blabla" }.to raise_error(ArgumentError)
      expect { subject.format = format }.not_to raise_error
      expect(subject.format).to eql(format)
    end
  end
end
