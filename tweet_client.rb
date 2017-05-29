class TweetClient
  attr_accessor :nouns, :adjs, :verbs, :names, :titles, :places, :forms, :handles
  attr_reader :client

  def initialize(client_handle,
                 credentials,
                 nouns=[],
                 adjs=[],
                 verbs=[],
                 names=[],
                 titles=[],
                 places=[],
                 forms=[],
                 handles=[])

    @client_handle = client_handle

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = consumer_key
      config.consumer_secret     = consumer_secret
      config.access_token        = access_token
      config.access_token_secret = access_token_secret
    end

    @nouns = nouns
    @adjs = adjs
    @verbs = verbs
    @names = names
    @titles = titles
    @places = places
    @forms = forms
    @handles = handles

    remove_self_from_handles!
  end

  def write_new_tweet
    form = @forms.shuffle[0]
    used_handles = []
    content = ""
    form.split(" ").each do |word|
      case word
      when word == "NOUN"
        content += @nouns.shuffle[0]
      when word == "VERB"
        content += @verbs.shuffle[0]
      when word == "NAME"
        content += @names.shuffle[0]
      when word == "NUMBER"
        content += ["0", "2", "5", "8", "23"].shuffle[0]
      when word == "PLACE"
        content += @places.shuffle[0]
      when word == "ADJ"
        content += @adjs.shuffle[0]
      when word == "HANDLE"
        handle = @handles.shuffle[0]
        while used_handles.include?(handle)
          handle = @handles.shuffle[0]
        end
        content += handle
      when word == "TITLE"
        content += @titles.shuffle[0]
      else
        content += word
      end
    end

    @client.update(content)
  end

  private
  def remove_self_from_handles!
    @handles.each_with_index do |handle, idx|
      if handle == @client_handle
        @handles.slice!(idx)
      end
    end
  end
end
