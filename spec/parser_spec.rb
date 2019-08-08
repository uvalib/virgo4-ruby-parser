require 'spec_helper'

describe VirgoParser::EDS do
  it 'works' do
    parsed_string = VirgoParser::EDS.parse "title:{bananas}"
    expect(parsed_string).to eq("(TI bananas)")
  end
end
