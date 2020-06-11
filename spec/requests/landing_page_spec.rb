require 'rails_helper'

RSpec.describe "Directories", type: :request do
  describe "GET /home" do
    it "returns success status" do
      get root_path
      expect(response).to have_http_status(200)
    end
    it "the directories name is present" do
      directories = create_list(:directory, 3)
      get root_path
      directories.each do |directory|
        expect(response.body).to include(directory.name)
      end
    end
  end
end
