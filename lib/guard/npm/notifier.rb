# encoding: utf-8
module Guard
  class Npm
    class Notifier

      def self.guard_message(result, duration)
        case result
        when true
          "package.json has been installed\nin %.1f seconds." % [duration]
        else
          "package.json can't be installed,\nplease check manually."
        end
      end

      # failed | success
      def self.guard_image(result)
        icon = if result
          :success
        else
          :failed
        end
      end

      def self.notify(result, duration)
        message = guard_message(result, duration)
        image   = guard_image(result)

        ::Guard::Notifier.notify(message, :title => 'npm install', :image => image)
      end

    end
  end
end
