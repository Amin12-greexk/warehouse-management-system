import './bootstrap';
import focus from '@alpinejs/focus';

// Daftarkan plugin ke Alpine bawaan Livewire (hindari double Alpine)
document.addEventListener('alpine:init', () => {
    if (!window.__appAlpinePluginsLoaded) {
        Alpine.plugin(focus);
        window.__appAlpinePluginsLoaded = true;
    }
});

// Import Chart.js
import Chart from 'chart.js/auto';
window.Chart = Chart;

// Import ApexCharts
import ApexCharts from 'apexcharts';
window.ApexCharts = ApexCharts;

// Import SweetAlert2
import Swal from 'sweetalert2';
window.Swal = Swal;

// Configure SweetAlert2 defaults
const Toast = Swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000,
    timerProgressBar: true,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
});

window.Toast = Toast;

// Listen for Livewire events
document.addEventListener('livewire:init', () => {
    Livewire.on('notify', (event) => {
        Toast.fire({
            icon: event.type || 'info',
            title: event.message
        });
    });
});
