class Repository

  attr_reader :content

  def initialize
    @content = HTTParty.get(
      "https://api.github.com/users/chrisfoster22/repos",
      :headers => {
               "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
               "User-Agent" => ENV["GITHUB_USERNAME"]})
  end



end
