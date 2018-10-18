# frozen_string_literal: true

module Houzz
  HOST = "https://api.houzz.com/\u200Bapi"

  def self.ssl_token=(token)
    @ssl_token ||= token
    Thread.current[:ssl_token] = token
  end

  def self.ssl_token
    Thread.current[:ssl_token] || @ssl_token
  end

  def self.username=(username)
    @username ||= username
    Thread.current[:username] = username
  end

  def self.username
    Thread.current[:username] || @username
  end

  def self.app_name=(app_name)
    @app_name ||= app_name
    Thread.current[:app_name] = app_name
  end

  def self.app_name
    Thread.current[:app_name] || @app_name
  end

  def self.format=(format)
    raise ArgumentError, "Format must be json or xml" unless %w[json xml].include? format

    @format = format
  end

  def self.format
    @format || "json"
  end
end
