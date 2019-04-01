class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awesome!You purchased #{number}"
    end
end

RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it 'confirms that an object can respond to a method with argument' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end
end