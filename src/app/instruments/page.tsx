'use client'

import { createClient } from '@/utils/supabase/client'
import { useEffect, useState } from 'react'

export default function Page() {
	const [instruments, setInstruments] = useState<any[] | null>(null)
	const supabase = createClient()

	useEffect(() => {
		const getData = async () => {
			const { data } = await supabase.from('instruments').select('id, name')
			setInstruments(data)
			console.log('data=', data)
		}
		getData()
	}, [])

	return <pre>{JSON.stringify(instruments, null, 2)}</pre>
}