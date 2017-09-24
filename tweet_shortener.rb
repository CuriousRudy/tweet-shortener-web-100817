# Write your code here.

def dictionary
    {
        "hello" => "hi",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&"
    }
end

def word_substituter(tweet)
    list = dictionary
    tweet_words = tweet.split
    list.each do |prev, sub|
        tweet_words.each_with_index do |word, index|
            tweet_words[index] = sub if word.downcase == prev
            end
        tweet = tweet_words.join(" ")
        end
    tweet
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
        end
    end
        
def selective_tweet_shortener(tweet)
        if tweet.size > 140
            tweet = word_substituter(tweet)
        end
    tweet
end

def tweet_length(tweet)
    tweet_size = tweet.split("").size
end

def shortened_tweet_truncator(tweets)
    tweet = word_substituter(tweets)
    if tweet_length(tweet) > 140
        new_tweet = tweet.slice(0..137)
        new_tweet[-1] = "..."
    else
        new_tweet = tweet
        end
    new_tweet
end
