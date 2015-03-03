class RepositoriesController < ApplicationController
  def index
    @profile = Repository.new
    @home = @profile.home
    @repository = @profile.content.sort_by { |repo| repo["updated_at"] }.reverse

  end
end
