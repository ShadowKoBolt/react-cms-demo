$(document).on("page:change", initNestables);

function initNestables() {
  $('tbody.nestable').each(function(){
    tbody = $(this);
    tbody.sortable();
  });
}
