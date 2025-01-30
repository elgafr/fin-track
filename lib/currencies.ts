export const Currencies = [
    {
        value: "IDR", label: "Rp Indonesian Rupiah", locale: "id-ID"
    },
    {
        value: "USD", label: "$ Dollar", locale: "en-US"
    },
    {
        value: "EUR", label: "€ Euro", locale: "de-DE"
    },
    {
        value: "GBP", label: "£ Pound Sterling", locale: "en-GB"
    },
    {
        value: "JPY", label: "¥ Japanese Yen", locale: "ja-JP"
    },
]

export type Currency = (typeof Currencies) [0]