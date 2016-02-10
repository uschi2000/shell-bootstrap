#!/usr/bin/ruby -w

require 'pathname'
require 'fileutils'

SOURCE_SCRIPT_PATH = File.dirname(File.expand_path(__FILE__))
ROOT_PATH = Pathname.new(File.expand_path(File.join(SOURCE_SCRIPT_PATH, '..')))
HOME_DIR = Pathname.new(File.expand_path('~')) 
DOT_FILE_PATH = ROOT_PATH + 'dot-files'
BIN_FILE_PATH = ROOT_PATH + 'bin'

def copy(from, to)
  Dir.glob(from).each { |file|
    if File.file?file
      puts "Copying #{file} --> #{to}"
      FileUtils.cp file, to
    end
  }
end

def mkdir(path)
  if not File.directory?path
    puts "Creating directory #{path}"
    Dir.mkdir(path)
  end
end

copy(DOT_FILE_PATH + '.*', HOME_DIR)
mkdir(HOME_DIR + 'bin')
copy(BIN_FILE_PATH + '*', HOME_DIR + 'bin')
