module UserfeedsHelper

  def parseJSONFeed(response)
    @parseFeed = ActiveSupport::JSON.decode(response)
  end

end
