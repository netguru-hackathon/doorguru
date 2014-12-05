require 'rails_helper'

RSpec.describe "Doors", :type => :request do
  describe "GET /doors" do
    it "works! (now write some real specs)" do
      get doors_path
      expect(response).to have_http_status(200)
    end
  end
end
