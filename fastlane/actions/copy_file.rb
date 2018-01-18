require "fileutils"
module Fastlane
  module Actions
    class CopyFileAction < Action
      def self.run(params)
      src = "#{params[:src_path]}"
      dest = "#{params[:dest_path]}"
      result = FileUtils.cp_r "#{src}","#{dest}"
      UI.success("Successfully copyed 💾.")
      return result
      end

      def self.description
        "copy  file from a path to other path"
      end

      def self.details
        ""
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :src_path,
                                       description: "The path you want to copy from",
                                       is_string: true,
                                       optional: false),
          FastlaneCore::ConfigItem.new(key: :dest_path,
                                       description: "The path you want to copy to",
                                       is_string: true,
                                       optional: false),
        ]
      end

      def self.output
      end

      def self.return_value
        nil
      end

      def self.authors
        ["fly"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
