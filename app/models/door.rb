class Door < ActiveRecord::Base
  def open!
    self.update(open: true)
  end

  def close!
    self.update(open: false)
  end
end
