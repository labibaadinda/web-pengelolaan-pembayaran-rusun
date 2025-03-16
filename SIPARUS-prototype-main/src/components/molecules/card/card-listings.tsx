import { Button } from '@/components/atomics/button'
import Image from 'next/image'

function CardOverview({
  image,
  title,
  address,
  luas_kamar_m2,
  kapasitas,
} : {
  image: string
  title: string
  address: string
  luas_kamar_m2: string
  kapasitas: number
}) {
  return (
    <figure className='flex items-center justify-between bg-white rounded-3xl p-4 border border-border shadow-indicator'>
      <div className='flex items-center space-x-4'>
        <Image
          src={`${process.env.NEXT_PUBLIC_STORAGE_BASE_URL}/${image}`}
          alt={title}
          height={0}
          width={0}
          className='w-[120px] h-[90px] rounded-2xl'
        />

        <div>
          <h1 className='font-bold leading-8 text-secondary'>
            { title }
          </h1>
          <div className='mt-1 flex flex-wrap gap-x-5 gap-y-2.5'>
            <div className='flex items-center text-sm font-semibold leading-[21px]'>
              <Image
                src='/icons/location-dark.svg'
                alt='location-dark'
                height={0}
                width={0}
                className='w-5 h-5 mr-1'
              />
              { address }
            </div>
            <div className='flex items-center text-sm font-semibold leading-[21px]'>
              <Image
                src='/icons/format-square-dark.svg'
                alt='format-square-dark'
                height={0}
                width={0}
                className='w-5 h-5 mr-1'
              />
              { luas_kamar_m2 } m<sup>2</sup>
            </div>
            <div className='flex items-center text-sm font-semibold leading-[21px]'>
              <Image
                src='/icons/profile-2user-dark.svg'
                alt='profile-2user-dark'
                height={0}
                width={0}
                className='w-5 h-5 mr-1'
              />
              { kapasitas } orang
            </div>
          </div>
        </div>
      </div>

      <div className='flex items-center space-x-3.5'>
        <Button
          variant='third'
          size='header'
        >
          Manage
        </Button>
        <Button
          variant='third'
          size='header'
        >
          Preview
        </Button>
      </div>
    </figure>
  )
}

export default CardOverview
