require 'twitter'

class Tweeter
  def initialize(clients)
    @handles = ["@realDonaldTrump", "@KKKonscience", "@MarcoFulloShame", "@ManSmashGlasses"]
    create_punchy
    tweet_punchy
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
    @punchy_names = ["Trump", "Spicey", "Comey", "Rachel Maddow", "Ben Jordan"]
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

  def create_konscience
    @konsc_forms = ["HANDLE it's not that NOUN is a NOUN, that's just ADVERB - c'mon NAME @realDonaldTrump",
                    "HANDLE SECRET time: i VERB in a NOUN to VERB my NOUN",
                    "HANDLE i VERB PREP NOUN so you could VERB PREP NOUN",
                    "HANDLE TITLE NAME is saying that TITLE NAME is ADVERB. BOOL facts.",
                    ]
  end
end
