require "harness"
require "spec_helper"

describe BVT::Spec::ImageMagicKSupport::NodeNode do
  include BVT::Spec

  before(:all) do
    @session = BVT::Harness::CFSession.new
  end

  after(:each) do
    @session.cleanup!
  end

  it "Deploy Node.js application that uses ImageMagick tools" do
    app = create_push_app("node_imagemagick")
    app.get_response(:get).body_str.should == "hello from imagemagick"
  end
end
