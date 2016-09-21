# door_spec.rb
require_relative 'Spec_helper'
require_relative '../lib/door'

describe Door do

    ################### OpenDoor tests ###################

    ## cannot be opened
    ## can be closed
    ## cannot be locked
    ## cannot be unlocked

  #01
  it "Test to see if open door, cannot be opened (params: true, false)" do
    # as in, is_door_open = true, is_door_locked = false
    # door is open, its not locked.
    door = Door.new(true, false)
    expect(door.open).must_equal(nil)
  end

  #02
  it "test, to see that if the door is closed (as in not opened), and that its unlocked it can be opened." do
    skip
    # as in, is_door_open = false and is_door_locked = false
    # door is closed, and unlocked.
    door = Door.new(false, false)
    expect(door.open).must_equal(true)
  end

  #03
  skip
  #door cannot be locked.
  it "Test to see if open door cannot be locked. Should return nil(?)" do
    door1 = Door.new(true, true)
    expect(door1.lock).must_equal(nil)
    # or argument error.
  end

  #04
  #open door cannot be unlocked.
  it "Test to see if an open door cannot be unlocked." do
  skip
    door = Door.new(true, true)
    expect(door.unlock).must_equal(nil)
    # or raise an argument error.
  end
  # supposedly this is where my unexpected end of input is. 

    ################### ClosedDoor tests ###################
    ## can be opened
    ## cannnot be closed
    ## can be locked
    ## cannot be unlocked
#05
  it "Test to see if a closed door, can be opened" do
    skip
    door = Door.new(false, true)
    expect(door.open).must_equal(true)
  end

#06
  it "Test to see if a closed door, CANNOT be closed." do
    skip
    door = Door.new(false, true)
    expect(door.close).must_equal(nil)
    # eventually, raise argument error?
  end

#07
  it "Test to see if a closed door, can be locked " do
  skip
    door = Door.new(false, false)
    expect(door.locked).must_equal(nil)
  end

#08
  it "Test to see if a closed door, CANNOT be unlocked " do
  skip
    door = Door.new(false, false)
    expect(door.unlock).must_equal(nil)
  end

    ################### LockedDoor Tests ###################
    ## cannot be opened
    ## cannot be closed
    ## cannot be locked
    ## can be unlocked
    #09
  it "Test to see if a locked door, CANNOT be opened " do
    door = Door.new(true, true)
    expect(door.open).must_equal(nil)
    # or raise an argument errror, eventually.
  end

#10
  it "Test to see if a locked door, CANNOT closed " do
    skip
    door = Door.new(true, true)
    expect(door.close).must_equal()
    # or raise an argument errror?
  end

#11
  it "Test to see if a locked door, CANNOT locked " do
    skip
    door = Door.new(true, true)
    expect(door.locked).must_equal()
  end
#12
  it "Test to see if a locked door, can be unlocked" do
    skip
    door = Door.new(true, true)
    expect(door.unlock).must_equal(nil)
  end
end
