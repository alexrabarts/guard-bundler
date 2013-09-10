# encoding: utf-8
require 'guard'
require 'guard/guard'
require 'guard/npm'

module Guard
  class Npm < Guard
    autoload :Notifier, 'guard/npm/notifier'

    def start
      install_package
    end

    def reload
      install_package
    end

    def run_all
      install_package
    end

    def run_on_additions(paths = [])
      install_package
    end

    def run_on_modifications(paths = [])
      install_package
    end

    private

    def install_package
      system('npm install')

      $? == 0 ? :package_installed : false
    end
  end
end
