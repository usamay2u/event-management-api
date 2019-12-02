common_datatable = null;

$(document).on('turbolinks:load', function() {
  common_datatable = $('.common_datatable').DataTable({});
});


$(document).on('turbolinks:before-cache', function() {
  if ($('.common_datatable').length > 0){
    common_datatable.destroy();
    location.reload();
  }
});
