import React, { useEffect, useRef, useState } from "react";
import { createClient } from '@/utils/supabase/client'
const supabase = createClient()

export type Country = {
    index: number;
    id: string;
    continent: string;
    name: string;
    flag: string;
    tld: string;
    prefix: string;
    is_eu: boolean;
    enabled: boolean;
    changed: boolean;
};

export const CountriesPage = (props: {
    countries: Country[],
    setCountries: Function,
}) => {

    //const [countryId, setCountryId] = useState<string>('');
    const [countryIndex, setCountryIndex] = useState(-1)

    //console.log('countries 0', props.countries)

    return countryIndex < 0 ?
        <CountriesTable
            countries={props.countries}
            setCountries={props.setCountries}
            setCountryIndex={setCountryIndex}
        />
        :
        <CountryDetail
            country={props.countries[countryIndex]}
            setCountryIndex={setCountryIndex}
        />
}

const CountriesTable = (props: {
    countries: Country[],
    setCountries: Function,
    setCountryIndex: Function,
}) => {
    console.clear()
    console.log('countries', JSON.stringify(props.countries, null, 4))

    return (
        <main>
            <ul className="top-panel">
                <li>
                    <button onClick={async () => {
                        const enabledCountries = sendCountries(props.countries)
                        const { data, error } = await supabase.rpc('update_selected_countries1', {enabled_countries:[enabledCountries]})
                    }}>Save</button>
                </li>
            </ul>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Continent</th>
                        <th>Name</th>
                        <th>Flag</th>
                        <th>EU Member</th>
                        <th>Enabled</th>
                        <th>Details</th>
                    </tr>
                </thead>
                <tbody>
                    {props.countries.map((country, index) =>
                        <CountryRow
                            key={country.id}
                            index={index}
                            setCountryIndex={props.setCountryIndex}
                            countries={props.countries}
                            setCountries={props.setCountries}
                        />
                    )}
                </tbody>
            </table>
        </main>
    );
}

const CountryRow = (props: {
    index: number,
    setCountryIndex: Function,
    countries: Country[],
    setCountries: Function,
}) => {
    const country = props.countries[props.index]
    return (
        <tr>
            <td>{country.id}</td>
            <td>{country.continent}</td>
            <td>{country.name}</td>
            <td>{country.flag}</td>
            <td>{country.is_eu ? 'Yes' : 'No'}</td>
            <td>
                <input type="checkbox"
                    id={country.id}
                    name={country.id}
                    onChange={(e) => {
                        props.setCountries(
                            checkCountry(
                                props.countries,
                                props.index,
                                e.target.checked
                            )
                        )
                    }}
                />
            </td>
            <td>
                <button onClick={e =>
                    props.setCountryIndex(props.index)
                }>Select</button>
            </td>
        </tr>
    );
}

const CountryDetail = (props: {
    country: Country,
    setCountryIndex: Function,
}) => {
    return (
        <div>
            <h2>{props.country.name} Details</h2>
            <p>Continent: {props.country.continent}</p>
            <p>Flag: {props.country.flag}</p>
            <p>TLD: {props.country.tld}</p>
            <p>Dial Prefix: {props.country.prefix}</p>
            <p>EU Member: {props.country.is_eu ? 'Yes' : 'No'}</p>
            <p>Enabled: {props.country.enabled ? 'Yes' : 'No'}</p>
            <button onClick={e => props.setCountryIndex(-1)}>Back to list</button>
        </div>
    );
}

const sendCountries = (countries: Country[]):string => {
    const out: [string, boolean][] = []

    for (let i = 0; i < countries.length; i++) {
        const c = countries[i]

        if (c.enabled !== c.changed) {
            out.push( [c.id , c.changed] )
        }
    }
    return JSON.stringify(out)
}

const checkCountry = (countries: Country[], index: number, checked: boolean): Country[] => {
    const co: Country[] = []

    for (let i = 0; i < countries.length; i++) {
        const c = countries[i]
        let isChecked = c.changed

        if (index === i) {
            isChecked = checked
        }

        co.push({
            index: index,
            id: c.id,
            continent: c.continent,
            name: c.name,
            flag: c.flag,
            tld: c.tld,
            prefix: c.prefix,
            is_eu: c.is_eu,
            enabled: c.enabled,
            changed: isChecked
        })
    }
    return co
}