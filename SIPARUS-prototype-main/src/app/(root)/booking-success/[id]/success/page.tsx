"use client"
import { Badge } from "@/components/atomics/badge";
import { Button } from "@/components/atomics/button";
import { Separator } from "@/components/atomics/separator";
import Title from "@/components/atomics/title";
import { useGetDetailTransactionQuery } from "@/services/transaction.service";
import Image from "next/image";
import Link from "next/link";
import { useMemo } from "react";
import { Transaction } from "@/interfaces/transaction";



function BookingSuccess({ params }: { params : { id: string } }) {
  const { data, isLoading, error } = useGetDetailTransactionQuery(params?.id);

  const booking: Transaction = useMemo(() => data?.data, [data])
  console.log("🚀 ~ BookingSuccess ~ booking:", booking)
  // Cek apakah data sudah ada
  if (isLoading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <p>Loading...</p>
      </div>
    );
  }

  if (error) {
    return (
      <div className="flex justify-center items-center h-screen">
        <p>Error loading booking details. Please try again later.</p>
      </div>
    );
  }

  const bookingTitle = booking?.listing?.title || "Listing"; // Jika title kosong, default ke "Listing"
  const whatsappMessage = `Hallo, saya ingin membooking rumah susun "${bookingTitle}" untuk ${booking?.total_bulan} bulan.`;

  return (
    <main>
      <section
        id="title-section"
        className="bg-gray-light pt-[190px] pb-[148px]"
      >
        <div className="container mx-auto flex items-center justify-center">
          <h1 className="max-w-[360px] font-bold text-[32px] text-center leading-[48px] text-secondary">
          Pesanan Anda Telah Dikirim, Mohon Konfirmasi untuk Melanjutkan 🎉
          </h1>
        </div>
      </section>

      <section
        id="card-section"
        className="container mx-auto -mt-[98px] max-w-[650px] mb-[150px] space-y-5 rounded-[30px] bg-white border border-border shadow-indicator p-[30px]"
      >
        <div className="flex items-center space-x-6">
          {booking?.listing?.attachments && (
            <Image
            src={`${process.env.NEXT_PUBLIC_STORAGE_BASE_URL}/${booking?.listing?.attachments[0]}`}
            alt="image-1"
            height={0}
            width={0}
            className="w-[180px] h-[130px] rounded-[28px] object-cover"
            unoptimized
          />
          )}
          <div className="space-y-2.5">
            <h1 className="font-bold text-[22px] leading-[33px] text-secondary">
              {booking?.listing?.title}
            </h1>
            <Badge variant="secondary">{booking?.status}</Badge>
          </div>
        </div>

        <div className="flex items-center justify-between">
          <div className="flex items-center font-semibold leading-6 max-w-[400px]">
            <Image
              src="/icons/location-dark.svg"
              alt="location-dark"
              height={0}
              width={0}
              className="w-5 h-5 mr-1"
            />
            {booking?.listing?.address}
          </div>
          <div className="flex items-center font-semibold leading-6">
            <Image
              src="/icons/format-square-dark.svg"
              alt="format-square-dark"
              height={0}
              width={0}
              className="w-5 h-5 mr-1"
            />
            {booking?.listing?.luas_kamar_m2} m²
          </div>
          <div className="flex items-center font-semibold leading-6">
            <Image
              src="/icons/profile-2user-dark.svg"
              alt="profile-2user-dark"
              height={0}
              width={0}
              className="w-5 h-5 mr-1"
            />
            {booking?.listing?.kapasitas} orang
          </div>
        </div>

        <Separator className="bg-border" />

        <Title
          section="booking"
          title="Selanjutnya gimana?"
          subtitle={
            <p>
              Mohon konfirmasi bukti pembayaran dengan mengklik <i>Message Owner</i> dan mengirimkan bukti pembayaran melalui WhatsApp. Pemilik akan memproses pemesanan Anda setelah pembayaran diterima hari ini. Terima kasih.
            </p>
          }
        />

        <div className="mt-5 flex items-center space-x-2.5">
          <Link href={`https://wa.me/62895634440355?text=${encodeURIComponent(whatsappMessage)}`}>
            <Button
              variant="default"
              size="header"
              className="flex items-center w-full max-w-[209px]"
            >
              <Image
                src="/icons/message-notif.svg"
                alt="message-notif"
                height={0}
                width={0}
                className="h-5 w-5 mr-2.5"
              />
              Message Owner
            </Button>
          </Link>
          <Link href={`/`}>
            <Button
              variant="third"
              size="header"
              className="w-full max-w-[180.5px]"
            >
              Explore Again
            </Button>
          </Link>
          <Link href={"/dashboard"}>
            <Button
              variant="third"
              size="header"
              className="w-full max-w-[180.5px]"
            >
              My Dashboard
            </Button>
          </Link>
        </div>
      </section>
    </main>
  );
}

export default BookingSuccess;