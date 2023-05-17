# frozen_string_literal: true

module Metabase
  module Endpoint
    module Database
      # Fetch all databases.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidatabase
      def databases(**params)
        get('/api/database', **params)
      end

      # Fetch a database.
      #
      # @param database_id [Integer, String] Database ID
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      def database(database_id, **params)
        get("/api/database/#{database_id}", **params)
      end

      # Fetch schemas of a database.
      #
      # @param database_id [Integer, String] Database ID
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      def schemas(database_id)
        get("/api/database/#{database_id}/schemas")
      end

      # Fetch tables of a schema of a database.
      #
      # @param database_id [Integer, String] Database ID
      # @param schema [String] Schema name
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      def schema(database_id, schema)
        get("/api/database/#{database_id}/schema/#{schema}")
      end
    end
  end
end
