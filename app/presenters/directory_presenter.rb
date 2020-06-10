# frozen_string_literal: true

class DirectoryPresenter < Burgundy::Item
  include Rails.application.routes.url_helpers

  def get_breadcrumbs
    list = {}
    list = DirectoryPresenter.new(item.directory).get_breadcrumbs if item.directory.present?

    list[item.name] = directory_path(item).to_s
    list
  end
end
