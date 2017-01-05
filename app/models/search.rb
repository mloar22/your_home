class Search < ActiveRecord::Base

    def search_homes

      homes = Home.all
      # conditions for search engine
    # Values needed to be searched = keywords:string category:string min_price:integer max_price:integer make:string year:integer model:string owner:string
      homes = homes.where(["category LIKE ?", category]) if category.present?
      homes = homes.where(["price >= ?", min_price]) if min_price.present?
      homes = homes.where(["price <= ?", max_price]) if max_price.present?
      homes = homes.where(["make LIKE ?", make]) if make.present?
      homes = homes.where(["year LIKE ?", year]) if year.present?
      homes = homes.where(["model LIKE ?", model]) if model.present?
      homes = homes.where(["owner LIKE ?", owner]) if owner.present?
      
      return homes

    end

end
