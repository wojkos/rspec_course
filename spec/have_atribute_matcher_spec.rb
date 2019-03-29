class Wrestler
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end
end

RSpec.describe 'have_attributes matcher' do
    describe Wrestler.new('Cold guy','Stunner') do
        it { is_expected.to have_attributes(name: 'Cold guy') }
        it { is_expected.to have_attributes(finishing_move: 'Stunner') }
        it { is_expected.to have_attributes(name: 'Cold guy', finishing_move: 'Stunner') }
    end


end