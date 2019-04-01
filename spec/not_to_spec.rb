RSpec.describe 'not_to method' do
    it 'checks for inverse matcher' do
        expect(5).not_to eq (10)
        expect([1, 2, 3]).not_to equal([1, 2, 3])
        expect(10).not_to be_odd
        expect(nil).not_to be_truthy
        expect('Phil').not_to start_with('A')
        expect(5).not_to respond_to(:length)
        expect(%w[a b c]).not_to include(0)
        expect { 11 / 3 }.not_to raise_error
    end
end