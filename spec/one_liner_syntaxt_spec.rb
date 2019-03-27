RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntaxt' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'one line syntaxt' do
    it { is_expected.to eq(5) }
  end
end
