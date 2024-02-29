# frozen_string_literal: true
module Api
  module V1
    class TimeController < ApplicationController
      def current_time
        result = {}

        threads = params[:city].to_s.split(',').map do |city_name|
          Thread.new do
            process_city(city_name, result)
          end
        end

        threads.each(&:join)

        render json: result.merge(UTC: Time.now.utc.strftime('%Y-%m-%d %H:%M:%S'))
      end

      private

      def process_city(city_name, result)
        tf = TimezoneFinder.create
        coordinates = Geocoder.search(city_name).first&.coordinates

        if coordinates
          time_zone = tf.timezone_at(lng: coordinates[1], lat: coordinates[0])
          current_time = Time.now.in_time_zone(time_zone)

            result[city_name.to_sym] = current_time.strftime('%Y-%m-%d %H:%M:%S')
        else
            result[city_name.to_sym] = 'Invalid location'
        end
      end
    end
  end
end
