class SlotMachine
  def score(reels)
    # create an array with the possible items
    items = ["joker", "star", "bell", "seven", "cherry"].reverse
    # if the 3 items are the same return something related to the item
    if reels[0] == reels[1] && reels[1] == reels[2]
      return 10 * (items.find_index(reels[0]) + 1)
    elsif reels.include?("joker") && (reels[0] == reels[1] || reels[1] == reels[2] || reels[0] == reels[2])
      reels.delete("joker")
      return 25 if reels.size == 1
      return 5 * (items.find_index(reels[0]) + 1)





    # if 2 items are the same + joker => return something related to the items
    # if 2 items are joker + one other item => return 25
    # if there is 3 different items return 0
    else
      return 0
    end
  end


end
