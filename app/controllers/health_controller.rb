class HealthController < ApplicationController
  def status
    render json: {
      status: 'OK',
      rails_version: Rails.version,
      timestamp: Time.current,
      database_connected: database_connected?
    }
  end

  private

  def database_connected?
    ActiveRecord::Base.connection.execute('SELECT 1')
    true
  rescue StandardError => e
    false
  end
end