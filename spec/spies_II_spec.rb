class Car
  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) { instance_double(Car) }

  before do
    allow(Car).to receive(:new).and_return(car)
  end

  it '#add_to_collection' do
    subject.add_to_collection(['Renault Scenic'])
    expect(Car).to have_receive(:new).with('Renault Scenic')
    expect(subject.storage.lenght).to eq(1)
    expect { subject.add_to_collection('Renault Megane') }.to change { subject.storage.length }.from(1).to(2)
    expect(subject.storage.first).to eq(car)

  end
end