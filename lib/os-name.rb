require 'os-name/version'
require 'rbconfig'

module OS
  def self.name
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
  
  def self.osx?
    name == 'OS X'
  end
  
  def self.windows?
    name == 'Windows'
  end
end