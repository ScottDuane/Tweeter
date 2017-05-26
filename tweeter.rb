require 'twitter'

class Tweeter
  def initialize

    create_clients
    create_punchy
    tweet_punchy
  end

  def create_clients
    @punchyface = Twitter::REST::Client.new do |config|
      config.consumer_key        = "enCNABmxC3ti59agEmxkJMiHS"
      config.consumer_secret     = "RBRxNHTwglbJwgkdfOSN2ZwMhIusuvkRznh8HkvfRXISjnGRHe"
      config.access_token        = "867975896812052480-cVJGoj1mMzOEKRLb1NaRIjFDesihBoP"
      config.access_token_secret = "Epyqg9b5RjmBTLbd5cBLZFpN7G9ap4LLfH7Ihr8JAqJlv"
    end

  end

  def create_punchy
    @punchy_forms = ["That ADJ ADJ NOUN NAME makes me wanna VERB and VERB his ADJ NOUN",
                     "I wanna go to Washington and VERB a lot of ADJ ADJ PLURAL_NOUN",
                     "Such utter ADJ PLURAL_NOUN ... I will VERB and VERB so hard and manly"]
    @punchy_nouns = ["butthole", "racist", "poopnozzle",
                     "poptart", "fartknocker", "moose cock",
                     "'journalist'", "Canadian"]
    @punchy_adjs = ["angry", "old", "slutty", "liberal", "uncouth", "dotty"]
    @punchy_verbs = ["punch", "slap", "slam", "knock", "ball-kick", "break"]
    @punchy_names = ["Trump", "Spicey", "Comey", "Rachel Maddow"]
  end

  def tweet_punchy
    tweet = ""
    form = @punchy_forms.shuffle[0]
    form.split(" ").each do |word|
      if word == "ADJ"
        tweet += @punchy_adjs.shuffle[0]
      elsif word == "NOUN"
        tweet += @punchy_nouns.shuffle[0]
      elsif word == "PLURAL_NOUN"
        tweet += @punchy_nouns.shuffle[0]
        tweet += "s"
      elsif word == "VERB"
        tweet += @punchy_verbs.shuffle[0]
      elsif word == "NAME"
        tweet += @punchy_names.shuffle[0]
      else
        tweet += word
      end

      tweet += " "
    end

    @punchyface.update(tweet)
  end
end
