import React from "react";

export type Country = {
    id: string;
    continent: string;
    name: string;
    flag: string;
    is_eu: boolean;
    enabled: string;
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
                    <th>EU Member</th>
                    <th>Enabled</th>
                </tr>
            </thead>
            <tbody>
                {countries.map(country =>
                    <CountryRow
                        key={country.id}
                        country={country}
                    />
                )}
            </tbody>
        </table>
    );
}

const CountryRow = ({ country }: { country: Country }) => {
    return (
        <tr>
            <td>{country.id}</td>
            <td>{country.continent}</td>
            <td>{country.name}</td>
            <td>{country.flag}</td>
            <td>{country.is_eu ? 'Yes' : 'No'}</td>
            <td>{country.enabled}</td>
        </tr>
    );
}