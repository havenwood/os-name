require 'os-name/version'
require 'rbconfig'

module OS
  class << self
    def name
      case RbConfig::CONFIG['host_os']
    
      when /linux/
        'Linux'
      when /darwin/
        'OS X'
      when /mswin|mingw32|windows/
        'Windows'
      when /solaris/
        'Solaris'
      when /bsd/
        'BSD'
      else
        RbConfig::CONFIG['host_os']
      end
    end
  
    alias to_s name
    
    def to_sym
      name.downcase.delete(' ').to_sym
    end
    
    alias intern to_sym
    
    def linux?
      name == 'Linux'
    end
    
    def osx?
      name == 'OS X'
    end
  
    def windows?
      name == 'Windows'
    end
    
    def solaris?
      name == 'Solaris'
    end
    
    def bsd?
      name == 'BSD'
    end
  end
end