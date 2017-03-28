require 'rspec'
require 'rspec/its'
require_relative '../core/sequence_generator'

describe SequenceGenerator do
  subject(:generator) { SequenceGenerator.new }

  its(:sequence) { is_expected.to eq '1' }

  describe '#next' do
    subject { generator.next }

    it { is_expected.to eq '11' }
  end


  describe '#next_value' do
    subject { generator.next_value(5) }

    it { is_expected.to eq '312211' }
  end
end
