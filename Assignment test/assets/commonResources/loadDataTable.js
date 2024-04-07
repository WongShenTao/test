$(document).ready(function () {
    $('#editableTable').DataTable({
        columnDefs: [
            {
                targets: [0],
                orderData: [0, 1],
            },
            {
                targets: [1],
                orderData: [1, 0],
            },
            {
                targets: [4],
                orderData: [4, 0],
            },
        ],
    });
});
$(document).ready(function () {
    $('#salesTable').DataTable({
        "ordering":false,
        "lengthChange": false,
        "searching": false,
        "info": false,
        "paging": false,
        columnDefs: [
            {
                targets: [0],
                orderData: [0, 1],
            },
            {
                targets: [1],
                orderData: [1, 0],
            },
            {
                targets: [4],
                orderData: [4, 0],
            },
        ],
    });
});