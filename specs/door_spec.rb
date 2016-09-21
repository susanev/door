# door_spec.rb
require_relative 'Spec_helper'
require_relative '../door'

describe Door do

## OpenDoor tests ##

  ## cannot be opened
  ## can be closed
  ## cannot be locked
  ## cannot be unlocked

#test1
  it "Test to see if open door, cannot be opened (params: true, false)" do
    # as in, is_door_open = true, is_door_locked = false
    # door is open, its not locked.
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end

#test2
  it "test, to see that if the door is closed (as in not opened), and that its unlocked it can be opened." do
    # as in, is_door_open = fale and is_door_locked = false
    # door is closed, and unlocked.
    door = Door.new(false, false)
    expect(door.open).must_equal(true)

  end
#test3
#door cannot be locked.
it "Test to see if open door cannot be locked. Should return nil(?)"
door = Door.new(true, true)
expect(door.locked).must_equal(nil)
# or argument error.

#test4
#open door cannot be unlocked.
it "Test to see if an open door cannot be unlocked."
door = Door.new(true, true)
expect(door.unlock).must_equal(nil )
# or raise an argument error.
end

## ClosedDoor tests ##
  ## can be opened
  ## cannnot be closed
  ## can be locked
  ## cannot be unlocked

#test5
  it "Test to see if a closed door, can be opened" do
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end
#test6
  it "Test to see if a closed door, CANNOT be closed." do
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end
#test7
  it "Test to see if a closed door, can be locked " do
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end
#test 8
  it "Test to see if a closed door, CANNOT be unlocked " do
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end


end
