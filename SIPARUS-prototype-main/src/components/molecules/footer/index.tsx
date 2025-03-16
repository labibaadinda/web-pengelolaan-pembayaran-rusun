import Link from 'next/link'
import Menu from './menu'
import DataMenu from '@/json/footer-menu.json'
import { Input } from '@/components/atomics/input'
import { Button } from '@/components/atomics/button'
import Image from 'next/image'
import { Separator } from '@/components/atomics/separator'

function Footer() {
  return (
    <footer className='bg-secondary'>
        <Separator className='my-[50px] bg-separator-foreground px-[50px]' />
        
        <div className='flex justify-center items-center flex-col md:flex-row gap-4 md:gap-0'>
          <Image
            src='/images/logo-white.svg'
            alt='SIPARUS'
            height={36}
            width={133}
          />
          <span className='leading-[30px] text-white font-semibold text-center md:text-left'>
            SIPARUS <br />
            Sistem Informasi Pembayaran Rumah Susun Kota Semarang
          </span>
        </div>
    </footer>
  )
}

export default Footer
