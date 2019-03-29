RSpec.describe 'include matcher' do
    describe 'hot choclate' do
        it { is_expected.to include('hot')}
        it { is_expected.to include('choc')}
        it { is_expected.to include('lat')}
    end

    describe [10, 20, 34] do
        it { is_expected.to include(10) }
        it { is_expected.to include(20, 34) }
        it { is_expected.to include(34 , 20, 10) }
    end

    describe ({a: 2, b: 4}) do
      it { is_expected.to include(:a) }
      it { is_expected.to include(:a, :b) }
      it { is_expected.to include(a: 2) }
    end
end