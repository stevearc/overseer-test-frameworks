# frozen_string_literal: true

def foo
  bar
end

def bar
  baz
end

RSpec.describe RspecTest do
  it "should succeed" do
    sleep 0.2
  end

  it "should fail" do
    sleep 0.2
    expect(false).to eq(true)
  end

  it "should error" do
    sleep 0.2
    foo
  end

  it "should skip" do
    sleep 0.2
    skip
  end

  it "should show test output" do
    sleep 0.2
    puts "This is some output"
    expect(false).to eq(true)
  end
end
