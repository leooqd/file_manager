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

  def file_extension(file)
    return 'file' unless file.filename.to_s.include? '.'

    extension = file.filename.to_s.split('.').last
    extension.presence || 'file'
  rescue StandardError => e
    Rails.logger.error e.message
    'file'
  end
end
