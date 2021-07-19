module OneCode
    module InstanceMethod
        def city_neighborhood_openings(first_date, last_date)
            # Listing.joins(:reservations).where.not("checkin BETWEEN ? AND ?", first_date, last_date) &
            # Listing.joins(:reservations).where.not("checkout BETWEEN ? AND ?", first_date, last_date)
            Listing.joins(:reservations).where.not("checkin <= ? AND checkout >= ?", first_date, last_date).uniq
        end
    end

    module ClassMethods
        def highest_ratio_res_to_listings
            # Listing.all.count do |listing|
            counting = Listing.all.count do |listing|
                listing.neighborhood.city.listings
            end

            # counting
            # byebug


        end

        def most_res
        end
    end
end