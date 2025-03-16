"use client";

import CardOverview from '@/components/molecules/card/card-overview';
import { Button } from '@/components/atomics/button';
import Title from '@/components/atomics/title';
import { useGetTransactionQuery } from '@/services/transaction.service';
import { Listing } from '@/interfaces/listing';
import { useGetAllListingQuery } from '@/services/listing.service';

function Dashboard() {
  const { data: transactions, isLoading: isTransactionsLoading, isError: isTransactionsError } = useGetTransactionQuery({});
  const { data: listings, isLoading: isListingsLoading, isError: isListingsError } = useGetAllListingQuery({});

  // Handle loading state
  if (isTransactionsLoading || isListingsLoading) {
    return (
      <div className="flex justify-center items-center">
        <p>Loading dashboard data...</p>
      </div>
    );
  }

  // Handle error state
  if (isTransactionsError || isListingsError) {
    return (
      <div className="flex justify-center items-center text-red-500">
        <p>Error loading dashboard data. Please try again later.</p>
      </div>
    );
  }

  return (
    <main>
      <div className="flex items-center justify-between">
        <Title
          section="admin"
          title="Overview"
          subtitle="Lihat ringkasan informasi transaksi di dashboard ini"
        />
      </div>

      <div className="mt-[30px]">
        <h1 className="font-bold text-lg leading-[27px] text-secondary">
          Statistics
        </h1>

        <div className="grid grid-cols-2 xl:grid-cols-4 gap-[30px] mt-3.5">
          <CardOverview
            image="/icons/buildings.svg"
            title={listings?.data?.total || 0}
            subtitle="Listings"
          />
          <CardOverview
            image="/icons/card.svg"
            title={transactions?.data?.total || "No Transactions"}
            subtitle="Transactions"
          />
        </div>
      </div>
    </main>
  );
}

export default Dashboard;
