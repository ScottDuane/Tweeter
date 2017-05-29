require_relative 'tweeter'
require_relative 'tweet_client'

handles = ["@realDonaldTrump", "@ManSmashGlasses", "@KKKonscience",
           "@PodSaveAmerica", "@jonlovett", "@jonfavs", "@TVietor08", "@danpfeiffer"]

punchy_creds = { consumer_key => "enCNABmxC3ti59agEmxkJMiHS",
                 consumer_secret => "RBRxNHTwglbJwgkdfOSN2ZwMhIusuvkRznh8HkvfRXISjnGRHe",
                 access_token => "867975896812052480-cVJGoj1mMzOEKRLb1NaRIjFDesihBoP",
                 access_token_secret => "Epyqg9b5RjmBTLbd5cBLZFpN7G9ap4LLfH7Ihr8JAqJlv" }

punchy_forms = ["HANDLE That ADJ ADJ NOUN NAME makes me wanna VERB and VERB his ADJ NOUN HASHTAG",
                "HANDLE I wanna go to PLACE and VERB a lot of ADJ ADJ PLURAL_NOUN HASHTAG HASHTAG",
                "Such utter ADJ NOUN_PLURAL ... I will VERB and VERB so ADJ and ADJ",
                "In PLACE VERB_PRESENT against NOUN but the ADJ NOUN_PLURAL aren't having it",
                "HANDLE why isn't it ADJ to VERB a NOUN ...it should be ADJ to VERB a NOUN HANDLE",
                "very ADJ about NOUN_PLURAL !!! very very!!!!!! i will VERB to make NOUN go bye",
                "ADJ PLURAL_NOUN are VERB_PRESENT and have VERB_PAST for a ADJ reason HANDLE HANDLE",
                "HANDLE it's not that NOUN_PLURAL are ADJ ... more like NOUN_PLURAL are ADJ !!!!",
                "ADJ NAME is a ADJ NOUN ... f that ...what a NOUN HANDLE HANDLE"]

punchy_nouns = ["butthole", "racist", "poopnozzle",
                "poptart", "fartknocker", "moose cock",
                "'journalist'", "Canadian", "cuck", "socialist", "deadbeat", "nerd"
                "asscrack", "geek", "schlub", "treehugger", "coffee pot", "desert flower", "snowflake",
                "garbage", "turd", "pussy", "mouth", "pink leaf", "kale", "spork", "reporter"]

punchy_adjs = ["angry", "old", "slutty", "liberal", "uncouth", "dotty", "brokeass", "pink",
                "gay", "nerdy", "stupid", "big-city", "cloudy", "small", "itty bitty", "stinky",
               "Marxist", "french", "poopy", "utter", "useless", "manly"]

punchy_verbs = ["punch", "slap", "slam", "knock", "ball-kick", "break", "spook", "scare", "drive",
                "bump", "toast", "ride", "pop", "stop", "spoon", "bark", "snarl", "hunt", "scratch"]

punchy_names = ["Trump", "Spicey", "Comey", "Rachel Maddow", "Ben Jordan", "Al Franken",
                "Oprah", "Mike Flynn", "Obama", "John Assaf", "Dan Savage"]

punchy_places = ["Montana", "Idaho", "Billings", "Washington", "the West Coast", "Canada", "BC", "DC"]

punchy_hashtags = ["#brokenGlassesPolicing", "#smashManly", "#MontanaMen", "#drainTheSwamp"]

punchyface = TweetClient.new("@ManSmashGlasses",
                              punchy_creds,
                              punchy_nouns,
                              punchy_adjs,
                              punchy_verbs,
                              punchy_names,
                              punchy_titles,
                              punchy_places,
                              punchy_forms,
                              handles)

konscience_creds = { consumer_key => "RfYECw5AZ5CS28x8m5CAHZYFg",
                     consumer_secret => "RuYbDM5o9znn6LaL7s0sgDP3Xx1fGwlZchleiS8YAsyJpe3y4w",
                     access_token => "867974874135789569-p65DPuqGUXX7DdVYm6oNLuEuXqlBafY",
                     access_token_secret => "f8mgDs56n7im4UJYL2IjRthx00veXs7OFvfwVvg7RD3St" }

kon_forms = [ "TITLE NAME was only VERB_PRESENT to VERB the NOUN_PLURAL. ADJ ! HANDLE HANDLE HASHTAG",
              "ADJ how the ADJ NOUN_PLURAL keep VERB_PRESENT and no one VERB_PASSED until now. HASHTAG HANDLE",
              "A ADJ NOUN of how NOUN_PLURAL are ADJ. HANDLE HANDLE HANDLE HASHTAG HASHTAG",
              "Not a NOUN in PLACE that can VERB or VERB ... ADJ and ADJ HANDLE HANDLE HASHTAG HASHTAG",
              "Cannot believe I VERB_PAST in PLACE with NAME for so long ... NAME has VERB_PAST me HANDLE",
              "VERB with TITLE NAME and I will VERB too HANDLE HANDLE HASHTAG HASHTAG",
              ""]
marcus_creds = { consumer_key => "sDkwzEwFQlG6hJiQmKmiKlVpr",
                consumer_secret => "ORizouqoDg3O6cyJDAhTdVj0ObcOAdUp177mxkkzRc9SYNtPYp",
                access_token => "867974874135789569-p65DPuqGUXX7DdVYm6oNLuEuXqlBafY",
                access_token_secret => "f8mgDs56n7im4UJYL2IjRthx00veXs7OFvfwVvg7RD3St" }
13.times do |_|
  tweeter = Tweeter.new
  sleep 240
end
