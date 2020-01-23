require_relative '../slot_machine'

def test_scenario(score, reels)
  it "returns #{score} for #{reels.join('/')}" do
    slot_machine = SlotMachine.new
    current_score = slot_machine.score(reels)
    expect(current_score).to eq(score)
  end
end


describe SlotMachine do
  describe "#score" do

    test_scenario(0, ["joker", "star", "bell"])

    test_scenario(50, ["joker", "joker", "joker"])
    test_scenario(40, ["star", "star", "star"])
    test_scenario(30, ["bell", "bell", "bell"])
    test_scenario(20, ["seven", "seven", "seven"])
    test_scenario(10, ["cherry", "cherry", "cherry"])

    test_scenario(25, ["joker", "joker", "bell"])
    test_scenario(20, ["joker", "star", "star"])
    test_scenario(15, ["joker", "bell", "bell"])
    test_scenario(10, ["joker", "seven", "seven"])
    test_scenario(5, ["joker", "cherry", "cherry"])

  end
end
