require 'rails_helper'

RSpec.describe "doors/show", :type => :view do
  before(:each) do
    @door = assign(:door, Door.create!(
      :open => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
