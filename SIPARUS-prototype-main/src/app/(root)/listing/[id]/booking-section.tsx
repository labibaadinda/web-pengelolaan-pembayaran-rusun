import { Button } from "@/components/atomics/button";
import Title from "@/components/atomics/title";
import CardBooking from "@/components/molecules/card/card-booking";
import { DatePickerDemo } from "@/components/molecules/date-picker";
import { moneyFormat } from "@/lib/utils";
import { useCheckAvailabilityMutation } from "@/services/transaction.service";
import moment from "moment";
import Image from "next/image";
import Link from "next/link";
import React, { useMemo, useState } from "react";
import { useToast } from "@/components/atomics/use-toast";
import { useRouter } from "next/navigation";

interface BookingSectionProps {
  id: number;
  slug: string;
  price: number;
}

function BookingSection({ id, slug, price }: BookingSectionProps) {
  const [startDate, setStartDate] = useState<Date>();
  const [endDate, setEndDate] = useState<Date>();

  const { toast } = useToast();
  const router = useRouter();
  const [ checkAvailability, {isLoading} ] = useCheckAvailabilityMutation();

  const booking = useMemo(() => {
      let total_bulan, fee, tax, total_price;
      total_bulan = 0;
      fee = 0;
      tax = 0;
      total_price = 0;

      if (startDate && endDate) {
        total_bulan = moment(endDate).diff(moment(startDate), "months");
        fee = total_bulan * price
        tax = fee * 0.1;
        total_price = fee + tax;
      }

      return {total_bulan, fee, tax, total_price};
  }, [startDate, endDate, price]);

  const handleBook = async () => {
    try {
      const data = {
        listing_id: id,
        start_date: moment(startDate).format("YYYY-MM-DD"),
        end_date: moment(endDate).format("YYYY-MM-DD"),
      };
      const res = await checkAvailability(data).unwrap();
      if (res.success) {
        router.push(`/listing/${slug}/checkout?startDate=${moment(startDate).format("YYYY-MM-DD")}&endDate=${moment(endDate).format("YYYY-MM-DD")}`);
      }
    } catch(error: any) {
      if (error.status === 401) {
        toast({
          title: 'Something went wrong',
          description:'Please login first',
          variant: "destructive",
          action: (
            <Link href={`/sign-in?callbackUrl=${window.location.href}`}>
            Sign in 
            </Link>
          ),
        });
      } else if (error.status === 404){
        toast({
          title: "Something went wrong",
          description: error.data.message,
          variant: "destructive",
        })
      }
    }
  };

  return (
    <div className="w-full max-w-[360px] xl:max-w-[400px] h-fit space-y-5 bg-white border border-border rounded-[20px] p-[30px] shadow-indicator">
      <h1 className="font-bold text-lg leading-[27px] text-secondary">
        Start Booking
      </h1>
      <span className="leading-6">
        <span className="font-bold text-4xl leading-[54px]">{moneyFormat.format(price)}</span>
        /bulan
      </span>
      <div className="space-y-5">
        <DatePickerDemo placeholder="Start date" date={startDate} setDate={setStartDate}/>
        <DatePickerDemo placeholder="End date" date={endDate} setDate={setEndDate}/>
      </div>
      <div className="space-y-5">
        <CardBooking 
          title="Total bulan" value={`${booking.total_bulan} bulan`} />
        <CardBooking 
          title="Sub total" 
          value={moneyFormat.format(booking.fee)} />
        <CardBooking 
          title="Tax (10%)" 
          value={moneyFormat.format(booking.tax)} />
        <CardBooking           
          title="total price" 
          value={(moneyFormat.format(booking.total_price))} /> 
      </div>
        <Button variant="default" className="mt-4" onClick={handleBook} disabled={isLoading}>
          Book Now
        </Button>
    </div>
  );
}

export default BookingSection;

