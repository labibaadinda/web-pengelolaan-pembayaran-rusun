"use client";
import { useState, useEffect } from "react";
import { Button } from "@/components/atomics/button";
import Title from "@/components/atomics/title";
import { CityCenterProps } from "@/interfaces/city-center";
import {
  Pagination,
  PaginationContent,
  PaginationEllipsis,
  PaginationItem,
  PaginationLink,
} from "@/components/atomics/pagination";
import CardTransaction from "@/components/molecules/card/card-transaction";
import { CityTransactionProps } from "@/interfaces/city-transaction";
import CardEmpty from "@/components/molecules/card/card-empty";
import { useGetTransactionQuery } from "@/services/transaction.service";
import { Transaction } from "@/interfaces/transaction";

function MyTransactions() {
  const [currentPage, setCurrentPage] = useState(1); // State untuk halaman aktif
  const { data: transactions, isLoading, isError } = useGetTransactionQuery({
    page: currentPage, // Menyertakan halaman aktif ke dalam query API
  });

  // Menghitung jumlah total halaman berdasarkan total data
  const totalPages = transactions?.data?.total_pages || 1;

  // Fungsi untuk menangani perubahan halaman
  const handlePageChange = (page: number) => {
    setCurrentPage(page);
  };

  // Fungsi untuk menghasilkan item pagination secara dinamis
  const renderPaginationItems = () => {
    let items = [];
    for (let i = 1; i <= totalPages; i++) {
      items.push(
        <PaginationItem key={i} className={i === currentPage ? 'active' : ''}>
          <PaginationLink href="#" onClick={() => handlePageChange(i)}>
            {i}
          </PaginationLink>
        </PaginationItem>
      );
    }

    // Menambahkan ellipsis jika ada halaman yang terlewat
    if (totalPages > 5) {
      items = [
        ...items.slice(0, 2),
        <PaginationEllipsis key="ellipsis" />,
        ...items.slice(-2),
      ];
    }

    return items;
  };

  // Menangani loading state dan error state
  if (isLoading) {
    return (
      <div className="flex justify-center items-center">
        <p>Loading transactions...</p>
      </div>
    );
  }

  if (isError) {
    return (
      <div className="flex justify-center items-center text-red-500">
        <p>Error loading transactions. Please try again later.</p>
      </div>
    );
  }

  return (
    <main>
      <div className="flex items-center justify-between">
        <Title section="admin" title="My Transactions" subtitle="Status transaksi rusun" />
      </div>

      <div className="mt-[30px] space-y-5">
        {transactions?.data?.total ? (
          transactions.data.data.map((transaction: Transaction) => (
            <CardTransaction
              id={transaction.id}
              key={transaction.id}
              image={transaction.listing.attachments?.[0] || ""}
              title={transaction.listing.title}
              address={transaction.listing.address}
              total_bulan={transaction.total_bulan}
              price={transaction.total_price}
              status={transaction.status}
            />
          ))
        ) : (
          <CardEmpty />
        )}
      </div>

      <Pagination className="mt-[30px]">
        <PaginationContent>{renderPaginationItems()}</PaginationContent>
      </Pagination>
    </main>
  );
}

export default MyTransactions;
