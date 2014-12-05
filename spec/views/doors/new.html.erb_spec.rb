require 'rails_helper'

RSpec.describe "doors/new", :type => :view do
  before(:each) do
    assign(:door, Door.new(
      :open => false
    ))
  end

  it "renders new door form" do
    render

    assert_select "form[action=?][method=?]", doors_path, "post" do

      assert_select "input#door_open[name=?]", "door[open]"
    end
  end
end
