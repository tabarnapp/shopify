defmodule Shopify.Collection do
    @derive [Poison.Encoder]
    @singular "collection"
    @plural "collections"
  
    use Shopify.Resource,
      import: [
        :find,
        :all,
        :create,
        :count,
        :delete
      ]
  
    alias Shopify.{
      Collection
    }
  
    defstruct [
      :collection_id,
      :created_at,
      :id,
      :position,
      :product_id,
      :sort_value,
      :updated_at
    ]
  
    @doc false
    def empty_resource do
      %Collection{}
    end
  
    @doc false
    def find_url(id), do: @plural <> "/#{id}.json"
  
    @doc false
    def all_url, do: @plural <> ".json"
  
    @doc false
    def count_url, do: @plural <> "/count.json"
  end
  