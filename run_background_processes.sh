bundle exec rails runner bin/schedule.rb &
bundle exec rails runner bin/twitter_stream.rb &
bundle exec script/delayed_job run &
