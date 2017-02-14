require 'rails_helper'

RSpec.describe "Composers", type: :request do
  describe "GET /composers" do
    it "works! (now write some real specs)" do
      get composers_path
      expect(response).to have_http_status(200)
    end
  end
end
