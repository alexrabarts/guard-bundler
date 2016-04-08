# encoding: utf-8
require 'guard'
require 'guard/plugin'

module Guard
  class Npm < Plugin
    autoload :Notifier, 'guard/npm/notifier'

    def start
      install_and_shrinkwrap_package
    end

    def reload
      install_and_shrinkwrap_package
    end

    def run_all
      install_and_shrinkwrap_package
    end

    def run_on_additions(paths = [])
      install_and_shrinkwrap_package
    end

    def run_on_modifications(paths = [])
      install_and_shrinkwrap_package
    end

    private

    def install_and_shrinkwrap_package
      install_package
      shrinkwrap_package
    end

    def install_package
      system options[:cli] ? "npm install #{options[:cli]}" : 'npm install'

      $? == 0 ? :package_installed : false
    end

    def shrinkwrap_package
      system('npm install')

      $? == 0 ? :package_shrinkwrapped : false
    end
  end
end
