require "sayagain/version"
require "nokogiri"
require "dry/cli"
require "easy_translate"

require_relative "./sayagain/cli"
require_relative "./sayagain/cli/commands"

EasyTranslate.api_key = "AIzaSyBak3EpPaqmi9A3-qCF7pQ03Cfgg-RaKrk"

module SayAgain
  class Error < StandardError; end
  # Your code goes here...
end
