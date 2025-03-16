"use client";

import CardIndicator from "@/components/molecules/card/card-indicator";
import { Button } from "@/components/atomics/button";
import { Input } from "@/components/atomics/input";
import { Separator } from "@/components/atomics/separator";
import Title from "@/components/atomics/title";
import categories from "@/json/categories.json";
import { CategoriesProps } from "@/interfaces/landing-page";
import Image from "next/image";
import CardBenefit from "@/components/molecules/card/card-benefit";
import CardPurpose from "@/components/molecules/card/card-purpose";
import CardReview from "@/components/molecules/card/card-review";
import ListingShowcase from "@/components/molecules/listing/listing-showcase";
import { Listing } from '@/interfaces/listing';
import { useGetAllListingQuery } from '@/services/listing.service';

function Home() {
  const { data: listings, isLoading: isListingsLoading, isError: isListingsError } = useGetAllListingQuery({});

  // Handle loading state
  if (isListingsLoading) {
    return (
      <div className="flex justify-center items-center">
        <p>Loading landing page data...</p>
      </div>
    );
  }

  // Handle error state
  if (isListingsError) {
    return (
      <div className="flex justify-center items-center text-red-500">
        <p>Error loading landing page data. Please try again later.</p>
      </div>
    );
  }

  return (
    <main>
      <section
        id="hero-section"
        className={`bg-primary-foreground bg-cover lg:bg-contain bg-right bg-no-repeat bg-[url('/images/bg-image.svg')] min-h-[730px] max-h-[745px] xl:max-h-[850px]`}
      >
        <div className="pt-[226px] container mx-auto">
          <div className="max-w-[555px]">
            <Title
              title="Sistem Informasi Pembayaran Rusun"
              subtitle="Siparus hadir untuk mengoptimalkan proses pembayaran rumah susun di Kota Semarang."
              section="hero"
            />
          </div>
        </div>
      </section>

      <section
        id="indicator-section"
        className="px-10 xl:container xl:mx-auto -mt-16 pb-9"
      >
        <div className="h-[128px] flex justify-center xl:justify-between items-center space-x-6 xl:space-x-12 bg-white shadow-indicator rounded-[20px] px-9 py-5 xl:px-[50px] xl:py-[29px]">
          <CardIndicator
            icon="/icons/house-2.svg"
            title={listings?.data?.total || "0"}
            subtitle="Rusun"
            variant="indicator"
          />
          <Separator orientation="vertical" className="bg-separator" />
          <CardIndicator
            icon="/icons/people-2.svg"
            title="95%"
            subtitle="Kepuasan Pengguna"
            variant="indicator"
          />
          <Separator orientation="vertical" className="bg-separator" />
          <CardIndicator
            icon="/icons/security-user.svg"
            title="100%"
            subtitle="Aman"
            variant="indicator"
          />
          <Separator orientation="vertical" className="bg-separator" />
          <CardIndicator
            icon="/icons/global.svg"
            title="100%"
            subtitle="Terjangkau"
            variant="indicator"
          />
        </div>
      </section>

      <ListingShowcase
        id="deals-section"
        title="List Rusun"
        subtitle="Temukan Rumah Susun yang Cocok untuk Anda"
      />

      <section id="categories-section" className="bg-gray-light">
        <div className="px-10 xl:container xl:mx-auto py-[50px]">
          <div className="flex items-center justify-between">
            <Title title="Data Rusun" subtitle="Rusun di Kota Semarang  dengan Kapasitas yang berbeda beda" />
          </div>

          <div className="mt-[30px] grid grid-cols-3 xl:grid-cols-3 gap-[20px]">
            {categories.data.map((item: CategoriesProps, index: number) => (
              <CardIndicator
                key={index}
                icon={item.icon}
                title={item.title}
                subtitle={item.subtitle}
                section="categories"
              />
            ))}
          </div>
        </div>
      </section>

      <section
        id="benefits-section"
        className="container mx-auto my-[100px]"
      >
        <div className="flex justify-between gap-4 max-w-full mx-auto">
          <div className="max-w-[1000px] xl:max-w-[1000px]">
            <h1 className="font-bold text-[28px] leading-[42px] max-w-[760px]">
              Fasilitas Rumah Susun yang Menjamin Kenyamanan dan Keamanan
            </h1>
            <ul className="mt-[30px] space-y-5">
              <CardBenefit benefit="Keamanan 24 jam dengan sistem pengawasan CCTV" />
              <CardBenefit benefit="Fasilitas parkir yang luas dan teratur" />
              <CardBenefit benefit="Akses transportasi umum yang mudah dijangkau" />
              <CardBenefit benefit="Kamar yang dirancang dengan efisien dan fungsional" />
              <CardBenefit benefit="Lingkungan yang bersih dan nyaman untuk keluarga" />
            </ul>
          </div>
        </div>

      </section>

    </main>
  );
}

export default Home;
