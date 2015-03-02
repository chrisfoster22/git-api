class RepositoriesController < ApplicationController
  def index
    @profile = Repository.new
    @repository = @profile.content
  end
end
