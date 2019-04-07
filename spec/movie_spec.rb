class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'Yo, babe!'
  end

  def fall_off_ladder
    'No way!'
  end

  def light_the_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.light_the_fire
      actor.fall_off_ladder
      actor.act
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) do
    double(
      'Mr. Danger',
      ready?: true, act: 'some text',
      fall_off_ladder: 'Yeah!',
      light_the_fire: true
    )
  end

  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it 'expect an actor to do 3 actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder)
      expect(stuntman).to receive(:light_the_fire)
      subject.start_shooting
    end

    it 'check methods calls number' do
      # expect(stuntman).to receive(:light_the_fire).once
      # expect(stuntman).to receive(:light_the_fire).exactly(1).times
      expect(stuntman).to receive(:light_the_fire).at_most(1).times

      expect(stuntman).to receive(:act).twice
      subject.start_shooting
    end
  end
end
