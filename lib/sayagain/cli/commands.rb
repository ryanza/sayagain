class SayAgain::CLI::Commands
    extend Dry::CLI::Registry

    class Version < Dry::CLI::Command
        desc "Print version"

        def call(*)
          puts "1.0.0"
        end
    end

    class Translate < Dry::CLI::Command
        desc ""

        argument :language, type: :string, required: true,  desc: "language"
        argument :filename, type: :string, required: true, desc: "File to translate"

        def call(language:, filename:, **)
            file = File.open(filename)
            puts "Translating #{filename} to #{language.capitalize}.."

            file_data = file.read

            parsed_file = Nokogiri::HTML(file_data)

            parsed_file.traverse do |x|
                if x.text? && !x.content.strip.empty?
                    x.content = EasyTranslate.translate(x.content, to: language)
                end
            end

            puts parsed_file

            file.close
        end
    end


    register "version", Version, aliases: ["v", "-v", "--version"]
    register "in", Translate
end