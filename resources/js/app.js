import './bootstrap';
import Alpine from 'alpinejs';
import focus from '@alpinejs/focus';
import persist from '@alpinejs/persist';

// Alpine plugins
Alpine.plugin(focus);
Alpine.plugin(persist);

// Make Alpine available globally
window.Alpine = Alpine;

// Start Alpine
Alpine.start();

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