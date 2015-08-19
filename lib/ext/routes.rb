# to monkeypatch blacklight so that it allows IDs with dots in them
# which we need during testing

module Blacklight
  class Routes
    def solr_document(primary_resource)
      add_routes do |options|

        args = {only: [:show]}

        args[:constraints] = options[:constraints] if options[:constraints]

        resources :solr_document, args.merge(path: primary_resource, controller: primary_resource, constraints: {:id => /[^\/]+/} ) do
          member do
            post "track"
          end
        end

        # :show and :update are for backwards-compatibility with catalog_url named routes
        resources primary_resource, args
      end
    end
  end
end