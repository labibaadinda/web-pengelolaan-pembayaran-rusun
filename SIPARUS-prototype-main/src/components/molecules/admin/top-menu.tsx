"use client"; 

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuTrigger,
} from '@/components/atomics/dropdown-menu'
import { Input } from '@/components/atomics/input'
import Title from '@/components/atomics/title'
import Image from 'next/image'
import { useSession } from 'next-auth/react'
import { signOut } from 'next-auth/react'
import Link from 'next/link'

function TopMenu() {
  const { data: session } = useSession();

  return (
    <header className='w-full p-[30px] rounded-[30px] bg-white flex justify-between items-center'>
      {/* Konten lain di sebelah kiri */}
      <div>
        {/* Konten sebelah kiri (misal: menu atau logo) */}
      </div>

      {/* Profil di kanan */}
      <DropdownMenu>
        <DropdownMenuTrigger
          data-login={!!session?.user}
          className="data-[login=false]:hidden outline-none"
        >
          <div className="flex items-center space-x-2">
            <Title title={session?.user.name} subtitle="User" section="header" />
            <Image
              src="/images/avatar.webp"
              alt="avatar"
              height={48}
              width={48}
              className="rounded-full"
            />
          </div>
        </DropdownMenuTrigger>
        <DropdownMenuContent className='w-[240px] mr-8 space-y-4'>
          <DropdownMenuItem>
            <Link href={"/dashboard"}>Dashboard</Link>
          </DropdownMenuItem>
          <DropdownMenuItem>
            <Link href={"/dashboard/my-transactions"}>My Transactions</Link>
          </DropdownMenuItem>
          <DropdownMenuItem onClick={() => signOut()}>
            Logout
          </DropdownMenuItem>
        </DropdownMenuContent>
      </DropdownMenu>
    </header>
  );
}

export default TopMenu;
