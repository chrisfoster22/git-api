class Repository

  attr_reader :content, :home

  def initialize
    @content = HTTParty.get(
      "https://api.github.com/users/chrisfoster22/repos",
      :headers => {
               "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
               "User-Agent" => ENV["GITHUB_USERNAME"]})
  end

  def hours_ago(index, updated_at)
    time = ((Time.now - updated_at.to_time) / 1.day).round
    if time == 0
      time = ((Time.now - updated_at.to_time) / 1.hour).round
      "Updated #{time} hours ago"
    else
      "Updated #{time} days ago"
    end
  end


end
