require "sayagain/version"
require "nokogiri"
require "dry/cli"
require "easy_translate"
require 'dotenv/load'

require_relative "./sayagain/cli"
require_relative "./sayagain/cli/commands"

EasyTranslate.api_key = ENV['GOOGLE_TRANSLATE_KEY']

module SayAgain
  class Error < StandardError; end
  # Your code goes here...
end
