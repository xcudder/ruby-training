FROM ruby:2.4.0-alpine
COPY temperatures.rb .
COPY tournament.rb .
ENTRYPOINT ["ruby", "temperatures.rb"]
#ENTRYPOINT ["ruby", "tournament.rb"]