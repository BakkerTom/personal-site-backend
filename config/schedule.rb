# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
set :output, "/log/cron_log.log"
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

every 1.hours do
  runner "Movie.update_from_letterboxd"
end
