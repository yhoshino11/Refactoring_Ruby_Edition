require 'spec_helper'

describe Target do
  let(:name)   { 'Steve Jobs' }
  let(:amount) { 3 }
  let(:target) { Target.new(name) }
  let(:response) { "***\nname: Steve Jobs\namount: 3\n" }
  it 'puts' do
    expect { target.print_owing(amount) }.to output(response).to_stdout
  end
end
