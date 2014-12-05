class DoorCloser
  
  def initialize
  end

  def call(door_close_time: 5)
    Door.all.each do |door|
      close_if_elapsed(door, door_close_time)
    end
  end

  private

  def close_if_elapsed(door, door_close_time)
    if time_elapsed?(door, door_close_time)
      door.update(open: false)
    end
  end

  def time_elapsed?(door, door_close_time)
    elapsed = Time.now - door.updated_at
    elapsed > door_close_time.seconds
  end
end
