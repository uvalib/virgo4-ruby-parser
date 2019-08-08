require 'spec_helper'

describe VirgoParser::Ebsco do
  it 'works' do
    parsed_string = VirgoParser::Ebsco.parse "title:{bananas}"
    expect(parsed_string).to eq("(TI bananas)")
  end
end
