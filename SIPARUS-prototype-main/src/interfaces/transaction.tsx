import { Listing } from "./listing";

export interface Transaction {
    id:          number;
    user_id:     number;
    listing_id:  number;
    start_date:  Date;
    end_date:    Date;
    price:       number;
    total_bulan: number;
    fee:         number;
    total_price: number;
    status:      string;
    created_at:  Date;
    updated_at:  Date;
    listing:     Listing;
}
