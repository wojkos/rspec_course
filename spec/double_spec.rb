RSpec.describe 'a random double' do
  it 'only allow defined methods to be invoked' do
    # stunman = double('Mr.Danger', fall_off: "Ouch", light_on_fire: true)
    # expect(stunman.fall_off).to eq("Ouch")
    # expect(stunman.light_on_fire).to eq(true)

    # stunman = double('Mr.Danger')
    # allow(stunman).to receive(:fall_off).and_return("Ouch")
    # expect(stunman.fall_off).to eq("Ouch")

    stunman = double('Mr.Danger')
    allow(stunman).to receive_messages(fall_off: "Ouch", light_on_fire: true)
    expect(stunman.fall_off).to eq("Ouch")
    expect(stunman.light_on_fire).to eq(true)
  end
end
