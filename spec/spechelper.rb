require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'bacon'
require 'mocha-on-bacon'

Bacon.summary_on_exit
TEST_BUNDLE_PATH = File.dirname(__FILE__) + "/test_db"
TEST_DB_PATH = TEST_BUNDLE_PATH + "/pomodori.xml"

require File.expand_path(File.dirname(__FILE__) + "/spec_commons")
include SpecCommons
