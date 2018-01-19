require "java-properties"
module Fastlane
  module Actions
    class UpdateJavaVersionAction < Action
      def self.run(params)
       #sh "sed 's/要被取代的字串/新的字串/g'"
        #sh "cat mylibrary/src/main/java/wilddog/com/mylibrary/Version.java | sed 's/CODE/DsDataRate/' | tail --lines=+8"
        properties = JavaProperties.load("mylibrary/src/main/java/wilddog/com/mylibrary/Version.java")
        puts properties[:CODE]
        #puts properties[:CODE]
        #JavaProperties.write(properties, "mylibrary/src/main/java/wilddog/com/mylibrary/Version.java")
      end

      def self.description
        "Update Version.java version"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :version,
                                       description: "The value for VERSION_NAME in Version.java",
                                       is_string: true)
        ]
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["fly"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
