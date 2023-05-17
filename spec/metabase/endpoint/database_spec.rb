# frozen_string_literal: true

RSpec.describe Metabase::Endpoint::Database do
  include_context 'login'

  describe 'databases', vcr: true do
    context 'success' do
      it 'returns all databases' do
        databases = client.databases
        expect(databases).to be_kind_of(Array)
      end
    end
  end

  describe 'database', vcr: true do
    context 'success' do
      it 'returns a database' do
        database = client.database(1)
        expect(database).to be_kind_of(Hash)
      end
    end
  end

  describe 'schemas', vcr: true do
    context 'success' do
      it 'returns all schemas of a database' do
        schemas = client.schemas(1)
        expect(schemas).to be_kind_of(Array)
      end
    end
  end

  describe 'schema', vcr: true do
    context 'success' do
      it 'returns all tables of a schema of a database' do
        tables = client.schema(1, "PUBLIC")
        expect(tables).to be_kind_of(Array)
      end
    end
  end
end
