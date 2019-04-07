class Person
  def a
    sleep(1)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any methods' do
      person = double(a: 'Hello', b: 'This is not implemented', c: 'noo!')
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance_double' do
    it 'can implement only class methods' do
      # person = instance_double(Person, a: 'Hello there', b: 'Second') 
      # >>> return error
      person = instance_double(Person, a: 'Hello there')
      expect(person.a).to eq('Hello there')
    end
  end
end