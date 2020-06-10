# frozen_string_literal: true

module ApplicationHelper
  def main_class
    "#{controller_name} #{action_name}"
  end

  def directories
    @directories || Directory.tree
  end

  def breadcrumbs
    @breadcrumbs || []
  end
end
