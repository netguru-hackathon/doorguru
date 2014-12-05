require 'rails_helper'

RSpec.describe "doors/index", :type => :view do
  before(:each) do
    assign(:doors, [
      Door.create!(
        :open => false
      ),
      Door.create!(
        :open => false
      )
    ])
  end

  it "renders a list of doors" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
