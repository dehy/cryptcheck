#!/usr/bin/env ruby
$:.unshift File.expand_path File.join File.dirname(__FILE__), '../lib'
require 'rubygems'
require 'bundler/setup'
require 'cryptcheck'

::CryptCheck::Logger.level = ENV['LOG'] || :info
::CryptCheck::Ssh.analyze ARGV[0], (ARGV[1] || 22)
