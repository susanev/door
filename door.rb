#door.rb

class Door

  # - display an inscription
  # - be either open or closed, and
  # - be either locked or unlocked


  ### Q: could I use different naming convention. Of using lockedness?, openess?
  # coded as is, they could be booleans.
  ### Q: could I instantiate amount of descriptions used? Like set description_amount = 1.
  # attr_accessor :decriptions, : is_open,

# not sure how to deal with this yet: description

  def initialize(door_open, door_locked)
    # @description = description
    @door_open = door_open
    @door_locked = door_locked
  end

  def is_closed?()

  end

  def is_locked?()

  end

# 4 states that could happen to a door object, typically by human or user.
# the above methods are tests for above.

  def open()

  end

  def close()

  end

  def lock()

  end

  def unlock()

  end

end
