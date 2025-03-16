export interface Listing {
  id: number;
  title: string;
  slug: string;
  description: string;
  address: string;
  luas_kamar_m2: number; 
  kapasitas: number;
  price: number;
  attachments?: string[];
  full_support_available: number;
  mini_canteen_available: number;
}
