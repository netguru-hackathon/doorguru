class Door < ActiveRecord::Base
  def open!
    self.open = true
  end

  def close!
    self.open = false
  end
end
