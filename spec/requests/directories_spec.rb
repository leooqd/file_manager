require 'rails_helper'

RSpec.describe "Directories", type: :request do
  describe "GET /directories/:slug" do
    context "when slug is correct" do
      it "show name" do
        directory = create(:directory)
        get "/directories/#{directory.slug}"

        expect(response.body).to include(directory.name)
      end
    end
  end

  describe "POST /directories" do
    context "when it has valid parameters" do
      it "created the directory with correct attributes" do
        directory_attributes = FactoryBot.attributes_for(:directory)
        post directories_path, params: {directory: directory_attributes}
        expect(Directory.last).to have_attributes(directory_attributes)
      end
    end

    context "when it has no valid parameters" do
      it "doest not create directory" do
        expect{
          post directories_path, params: {directory: {name: ''}}
        }.to_not change(Directory, :count)
      end
    end
  end
end
