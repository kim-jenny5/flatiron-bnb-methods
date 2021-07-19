module OneCode
    module InstanceMethod
        def openings(first_date, last_date)
            Listing.joins(:reservations).where.not("checkin BETWEEN ? AND ?", first_date, last_date) &
            Listing.joins(:reservations).where.not("checkout BETWEEN ? AND ?", first_date, last_date)
            # Listing.joins(:reservations).where.not("? <= checkout <= ?", first_date, last_date)
        end
    end

    module ClassMethods
        def highest_ratio_res_to_listings
        end

        def most_res
        end
    end
end