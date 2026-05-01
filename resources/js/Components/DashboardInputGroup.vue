<script setup>
import { ref, watch, defineExpose } from 'vue';
import InputError from "@/Components/InputError.vue";

// Props
const props = defineProps({
  modelValue: {
    type: [String, Number],
    default: '',  // Avoid null, matches your warning
  },
  label: String,
  name: String,
  type: {
    type: String,
    default: 'text',
  },
  placeholder: String,
  errorMessage: String,
});

// Emits
const emit = defineEmits(['update:modelValue', 'keyupEnter']);

// Local ref for the input
const inputRef = ref(null);

// Expose input ref to parent so it can focus
defineExpose({ inputRef });

// Watch local changes to v-model
watch(() => props.modelValue, (val) => {
  model.value = val;
});

// Local model
const model = ref(props.modelValue);

// Sync local input with parent v-model
watch(model, (val) => emit('update:modelValue', val));

// Keyup enter handler
const keyupEnter = () => emit('keyupEnter');
</script>

<template>
  <label :for="name" class="text-stone-600 text-sm font-medium" v-html="label"></label>
  <input
    ref="inputRef"
    :id="name"
    v-model="model"
    @keyup.enter="keyupEnter"
    :type="type"
    :placeholder="placeholder"
    class="mt-2 block w-full rounded-md border border-gray-200 px-2 py-2 shadow-sm outline-none focus:outline-none focus:shadow-outline"
  />
  <InputError :message="errorMessage"/>
</template>
