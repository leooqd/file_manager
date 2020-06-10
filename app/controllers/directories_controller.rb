# frozen_string_literal: true

class DirectoriesController < ApplicationController
  before_action :set_directory, only: %i[show]
  before_action :set_breadcrumbs, only: %i[show]

  def show; end

  def new
    @directory = Directory.new
    @directory.directory_id = params[:directory_id]
  end

  def create
    @directory = Directory.new(directory_params)
    if @directory.save
      redirect_to request.referrer, notice: "Diretório <#{@directory.name}> criado com sucesso!"
    else
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def set_directory
    @directory = DirectoryPresenter.new(Directory.find_by(slug: params[:slug]))
    @directories = @directory.directories
  end

  def set_breadcrumbs
    @breadcrumbs = @directory.get_breadcrumbs
  end

  def directory_params
    params.require(:directory).permit(
      :name,
      { files: [] },
      :directory_id
    )
  end
end
