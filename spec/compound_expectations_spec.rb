RSpec.describe 25 do
    it 'can tes for multiple matcher' do
        expect(subject.to be_odd.and be >20)
    end

    it { is_expected.not_to be_even and be < 30 }
end

RSPec.describe [:usa, :canada, :mexico] do
    it 'can check for multible posiibilities' do
        expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:mexico)
    end
end