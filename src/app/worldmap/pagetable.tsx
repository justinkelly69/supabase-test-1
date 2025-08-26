import React from "react";

export type Country = {
    id: string;
    continent_id: string;
    common_name: string;
    flag: string;
    tld: string;
    calling_codes: string;
    eu_member: boolean;
};

export const CountriesTable = ({ countries }: { countries: Country[] }) => {
    return (
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Continent</th>
                    <th>Name</th>
                    <th>Flag</th>
                    <th>TLD</th>
                    <th>Calling Codes</th>
                    <th>EU Member</th>
                </tr>
            </thead>
            <tbody>
                {countries.map(country => <CountryRow key={country.id} country={country} />)}
            </tbody>
        </table>
    );
}

const CountryRow = ({ country }: { country: Country }) => {
    return (
        <tr>
            <td>{country.id}</td>
            <td>{country.continent_id}</td>
            <td>{country.common_name}</td>
            <td>{country.flag}</td>
            <td>{country.tld}</td>
            <td>{country.calling_codes}</td>
            <td>{country.eu_member ? 'Yes' : 'No'}</td>
        </tr>
    );
}