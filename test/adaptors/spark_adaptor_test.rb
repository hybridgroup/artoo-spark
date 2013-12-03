require File.expand_path(File.dirname(__FILE__) + "/../test_helper")
require 'artoo/adaptors/spark'

describe Artoo::Adaptors::Spark do
  before do
    @adaptor = Artoo::Adaptors::Spark.new(:access_token => "ABC123")
  end

  it 'Artoo::Adaptors::Spark#connect' do
    @adaptor.connect.must_equal true
  end

  it 'Artoo::Adaptors::Spark#disconnect' do
    @adaptor.connect
    @adaptor.disconnect

    @adaptor.connected?.must_equal false
  end

  describe "device info interface" do
    it "#firmware_name"
    it "#version"
  end

  describe "digital GPIO interface" do
    it "#digital_read"
    it "#digital_write"
  end

  describe "analog GPIO interface" do
    it "#analog_read"
    it "#analog_write"
  end

  describe "PWM GPIO interface" do
    it "#pwm_write"
  end

  describe "servo GPIO interface" do
    it "#servo_write"
  end
end
