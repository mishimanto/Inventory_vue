import {usePage} from "@inertiajs/vue3";
import {push} from "notivue";

export function truncateString(str, maxLength = 10) {
    if (str.length <= maxLength) {
        return str;
    }
    return str.slice(0, maxLength) + '...';
}

export function getCurrency() {
    return usePage().props.currency;
}

// Utils/Helper.js
export function numberFormat(number) {
    const num = parseFloat(number);

    if (isNaN(num)) {
        return 0;
    }

    const decimal = usePage().props.decimal_point ?? 2;
    return parseFloat(num.toFixed(2));
}

// Quantity এর জন্য নতুন function - সবসময় integer return করবে
export function formatQuantity(number) {
    const num = parseFloat(number);

    if (isNaN(num)) {
        return 0;
    }

    // Quantity সবসময় integer হবে, negative হলে 0 return করবে
    return Math.max(0, Math.round(num));
}

export function formatDatetime(datetime) {
    const date = new Date(datetime);

    const options = {
        year: 'numeric',
        month: 'short',
        day: 'numeric',
        hour: '2-digit',
        minute: '2-digit',
        hour12: true
    };

    return date.toLocaleString('en-US', options);
}

export function showToast() {
    if (usePage().props.flash.isSuccess) {
        push.success(usePage().props.flash.message)
    } else {
        push.error(usePage().props.flash.message)
    }
}
