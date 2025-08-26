'use client'

import { createClient } from '@/utils/supabase/client'
import { useEffect, useState } from 'react'
import { Country, CountriesTable } from './pagetable'

export default function Page() {
    const [countries, setCountries] = useState<Country[]>([])
    const supabase = createClient()

    useEffect(() => {
    const getData = async () => {
        try {
            const { data, error } = await supabase.from('countries').select('co_id, co_continent_id, co_common_name, co_flag, co_tld, co_calling_codes, co_eu_member')
            if (error) {
                console.error('Error fetching countries:', error)
                return
            }
            setCountries(
                (data ?? []).map((item: any) => ({
                    id: item.co_id,
                    continent_id: item.co_continent_id,
                    common_name: item.co_common_name,
                    flag: item.co_flag,
                    tld: item.co_tld,
                    calling_codes: item.co_calling_codes,
                    eu_member: item.co_eu_member,
                }))
            )
        } catch (err) {
            console.error('Failed to fetch countries:', err)
        }
    }
    getData()
}, [])

    return <CountriesTable countries={countries} />
}