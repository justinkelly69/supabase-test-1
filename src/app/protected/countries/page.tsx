'use client'

import { createClient } from '@/utils/supabase/client'
import { useEffect, useState } from 'react'
import { Country, CountryEnabled, CountriesPage } from '@/components/world/countries'

export default function Page() {
    const [countries, setCountries] = useState<Country[]>([])
    const supabase = createClient()

    useEffect(() => {
        const getData = async () => {
            try {
                const { data, error } = await supabase.from('country_list').select('id, continent, name, flag, is_eu, enabled')
                if (error) {
                    console.error('Error fetching countries:', error)
                    return
                }
                //console.log('data', JSON.stringify(data, null, 4))
                setCountries(
                    (data ?? []).map((item: any, index: number) => ({
                        index: index,
                        id: item.id,
                        continent: item.continent,
                        name: item.name,
                        flag: item.flag,
                        tld: item.tld,
                        prefix: item.prefix,
                        is_eu: item.is_eu,
                        enabled: item.enabled,
                        changed: item.enabled,
                    }))
                )
            } catch (err) {
                console.error('Failed to fetch countries:', err)
            }
        }
        getData()
    }, [])

    //console.log('countries 0', JSON.stringify(countries, null, 4))
    return (
        <CountriesPage
            countries={countries}
            setCountries={setCountries}
        />
    )
}