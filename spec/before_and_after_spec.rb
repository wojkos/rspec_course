RSpec.describe 'before and after hooks' do
    
    before(:context) do
        puts 'Before context'
    end
    after(:context) do
        puts 'After context'
    end
    
    before(:example) do
        puts 'Before hook'
    end

    after(:example) do
        puts 'After hook'
    end

    it 'it just random example' do
        expect(5* 4).to eq(20)
    end

    it 'it just another random example' do
        expect(2 + 2).to eq(4)
    end
    context 'context group' do
        it 'true example' do
            expect(5* 4).to eq(20)
        end

        it 'false example' do
            expect(2 + 1).not_to eq(4)
        end
    end
end