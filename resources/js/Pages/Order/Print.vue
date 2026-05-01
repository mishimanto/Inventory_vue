<script setup>
import { onBeforeUnmount, onMounted } from 'vue';
import { formatQuantity, getCurrency, numberFormat } from '@/Utils/Helper.js';

const props = defineProps({
  order: Object,
});

const parseProduct = (data) => {
  if (!data) return {};

  if (typeof data === 'string') {
    try {
      return JSON.parse(data);
    } catch (e) {
      return {};
    }
  }

  return data;
};

const formatMoney = (amount) => Number(numberFormat(amount ?? 0)).toFixed(2);

const triggerPrint = () => {
  requestAnimationFrame(() => {
    setTimeout(() => window.print(), 450);
  });
};

onMounted(() => {
  document.body.classList.add('invoice-print-page');
  triggerPrint();
});

onBeforeUnmount(() => {
  document.body.classList.remove('invoice-print-page');
});
</script>

<template>
  <div id="invoice" class="invoice-container">
    <header class="invoice-header">
      <div class="company-info">
        <h1 class="company-name">INOVA</h1>
        <p>Chasara, Narayanganj</p>
        <p>Phone: 019XXXXXXXX</p>
        <p>Email: shimzo@gmail.com</p>
      </div>
      <div class="invoice-meta">
        <h2>INVOICE</h2>
        <p><strong>Invoice:</strong> #{{ order.order_number || order.id }}</p>
        <p><strong>Date:</strong> {{ new Date(order.created_at).toLocaleDateString() }}</p>
      </div>
    </header>

    <section class="customer-section">
      <h3>Bill To</h3>
      <p class="customer-name">{{ order.customer?.name || 'Walk-in Customer' }}</p>
      <p>{{ order.customer?.phone || '-' }}</p>
      <p>{{ order.customer?.address || '-' }}</p>
    </section>

    <table class="products-table">
      <thead>
        <tr>
          <th>#</th>
          <th>Description</th>
          <th class="text-center">Qty</th>
          <th class="text-right">Unit Price</th>
          <th class="text-right">Amount</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(item, index) in order.order_items" :key="item.id">
          <td>{{ index + 1 }}</td>
          <td>{{ parseProduct(item.product_json).name || item.product?.name }}</td>
          <td class="text-center">{{ formatQuantity(item.quantity) }}</td>
          <td class="text-right">{{ getCurrency() }}{{ formatMoney(parseProduct(item.product_json).selling_price || item.product?.selling_price) }}</td>
          <td class="text-right">{{ getCurrency() }}{{ formatMoney(item.quantity * (parseProduct(item.product_json).selling_price || item.product?.selling_price || 0)) }}</td>
        </tr>
      </tbody>
    </table>

    <section class="totals-section">
      <table class="totals-table">
        <tr>
          <td>Subtotal</td>
          <td>{{ getCurrency() }}{{ formatMoney(order.sub_total) }}</td>
        </tr>
        <tr v-if="order.tax_total > 0">
          <td>Tax</td>
          <td>{{ getCurrency() }}{{ formatMoney(order.tax_total) }}</td>
        </tr>
        <tr v-if="order.discount_total > 0">
          <td>Discount</td>
          <td>- {{ getCurrency() }}{{ formatMoney(order.discount_total) }}</td>
        </tr>
        <tr class="grand-total">
          <td>Total</td>
          <td>{{ getCurrency() }}{{ formatMoney(order.total) }}</td>
        </tr>
        <tr v-if="order.paid > 0">
          <td>Paid</td>
          <td>{{ getCurrency() }}{{ formatMoney(order.paid) }}</td>
        </tr>
        <tr v-if="order.due > 0">
          <td>Due</td>
          <td>{{ getCurrency() }}{{ formatMoney(order.due) }}</td>
        </tr>
      </table>
    </section>

    <footer class="invoice-footer">
      <p>Thank you for your business.</p>
    </footer>
  </div>
</template>

<style>
@page {
  size: A4;
  margin: 12mm;
}

@media print {
  html,
  body {
    margin: 0 !important;
    padding: 0 !important;
    background: #fff !important;
    -webkit-print-color-adjust: exact;
    print-color-adjust: exact;
  }

  body > * {
    display: none !important;
  }

  #app {
    display: block !important;
  }

  #app > * {
    display: none !important;
  }

  #invoice {
    display: block !important;
    position: static !important;
    width: 100% !important;
    max-width: none !important;
    margin: 0 !important;
    padding: 0 !important;
    border: 0 !important;
    box-shadow: none !important;
  }
}

.invoice-container {
  max-width: 820px;
  margin: 24px auto;
  padding: 28px;
  border: 1px solid #d9dee7;
  border-radius: 10px;
  background: #ffffff;
  box-shadow: 0 6px 22px rgba(15, 23, 42, 0.07);
  color: #1f2937;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.invoice-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  gap: 16px;
  border-bottom: 2px solid #1f2937;
  padding-bottom: 16px;
}

.company-name {
  margin: 0 0 6px;
  font-size: 28px;
  letter-spacing: 0.6px;
}

.company-info p,
.invoice-meta p {
  margin: 4px 0;
  font-size: 13px;
  color: #4b5563;
}

.invoice-meta {
  text-align: right;
}

.invoice-meta h2 {
  margin: 0 0 8px;
  font-size: 24px;
  letter-spacing: 1px;
}

.customer-section {
  margin: 22px 0;
}

.customer-section h3 {
  margin: 0 0 8px;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 0.4px;
  color: #334155;
}

.customer-section p {
  margin: 3px 0;
  font-size: 13px;
  color: #374151;
}

.customer-name {
  font-weight: 600;
  color: #0f172a;
}

.products-table {
  width: 100%;
  border-collapse: collapse;
  margin-bottom: 20px;
}

.products-table th,
.products-table td {
  border: 1px solid #dce3ed;
  padding: 10px 8px;
  font-size: 12px;
}

.products-table th {
  background: #f6f8fb;
  color: #1f2937;
  text-align: left;
}

.text-right {
  text-align: right;
}

.text-center {
  text-align: center;
}

.totals-section {
  display: flex;
  justify-content: flex-end;
}

.totals-table {
  min-width: 280px;
  border-collapse: collapse;
}

.totals-table td {
  padding: 8px 6px;
  border-bottom: 1px solid #e5e7eb;
  font-size: 13px;
}

.totals-table td:last-child {
  text-align: right;
  font-weight: 600;
}

.grand-total td {
  border-top: 2px solid #1f2937;
  border-bottom: 2px solid #1f2937;
  font-size: 15px;
  font-weight: 700;
  color: #111827;
}

.invoice-footer {
  margin-top: 28px;
  text-align: center;
  font-size: 12px;
  color: #4b5563;
}
</style>
