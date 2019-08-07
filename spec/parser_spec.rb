require 'spec_helper'

describe VirgoParser::Ebsco do
  it 'works' do
    puts VirgoParser::Ebsco.main
    expect(VirgoParser::Ebsco.describe).to eq('hello')
  end
end
