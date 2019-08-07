require 'spec_helper'

describe VirgoParser::Parse do
  it 'works' do
    VirgoParser::Parse.describe.should be_present
  end
end
