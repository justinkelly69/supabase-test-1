import React, { useEffect, useRef, useState } from "react";
import { json } from "stream/consumers";

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
};

export const CountriesPage = (props: {
    countries: Country[]
}) => {
    const [countriesEnabled, setCountriesEnabled] = useState<{ [id: string]: boolean }>({})
    const [countryId, setCountryId] = useState<string>('');
    const [countryIndex, setCountryIndex] = useState(-1)

console.log('props.countries 1', JSON.stringify(props.countries, null, 4))

    useEffect(() => {
        const countries: { [id: string]: boolean } = {}
        console.log('props.countries 2', JSON.stringify(props.countries, null, 4))
        for (const country of props.countries) {
            countries[country.id] = country.enabled
            console.log(countries[country.id], country.enabled)
        }
        setCountriesEnabled(countries)
        console.log('countries enabled')
    }, [])


    return countryIndex < 0 ?
        <CountriesTable
            countries={props.countries}
            countriesEnabled={countriesEnabled}
            setCountriesEnabled={setCountriesEnabled}
            setCountryId={setCountryId}
            setCountryIndex={setCountryIndex}
        />
        :
        <CountryDetail
            country={props.countries[countryIndex]}
            setCountriesEnabled={setCountriesEnabled}
            setCountryIndex={setCountryIndex}
        />
}

const CountriesTable = (props: {
    countries: Country[],
    countriesEnabled: { [id: string]: boolean },
    setCountriesEnabled: Function,
    setCountryId: Function,
    setCountryIndex: Function,
}) => {
    return (
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
                        setCountryIndex={props.setCountryIndex}
                        country={country}
                        countriesEnabled={props.countriesEnabled}
                        setCountriesEnabled={props.setCountriesEnabled}
                    />
                )}
            </tbody>
        </table>
    );
}

const CountryRow = (props: {
    setCountryIndex: Function,
    country: Country,
    countriesEnabled: { [id: string]: boolean },
    setCountriesEnabled: Function,
}) => {
    return (
        <tr>
            <td>{props.country.id}</td>
            <td>{props.country.continent}</td>
            <td>{props.country.name}</td>
            <td>{props.country.flag}</td>
            <td>{props.country.is_eu ? 'Yes' : 'No'}</td>
            <td>
                <input type="checkbox"
                    id={props.country.id}
                    name={props.country.id}
                    onChange={(e) => {
                        props.setCountriesEnabled({
                            ...props.countriesEnabled,
                            [props.country.id]: e.target.checked
                        })
                        console.log('countriesEnabled:', JSON.stringify(props.countriesEnabled, null, 4));
                    }}
                />
            </td>
            <td>
                <button onClick={e => props.setCountryIndex(props.country.index)}>Select</button>
            </td>
        </tr>
    );
}

const CountryDetail = (props: {
    country: Country,
    setCountriesEnabled: Function,
    setCountryIndex: Function,
}) => {
    //console.log('props.country', JSON.stringify(country, null, 4));
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