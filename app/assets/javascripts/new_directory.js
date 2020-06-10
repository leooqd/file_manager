function new_directory(directory_id) {
  $.ajax({
    url: '/directories/new',
    method: 'get',
    dataType: 'script',
    data: {
      'directory_id': directory_id
    },
    success: function(data) {
      $('#modal').modal("open");
      $('#modal').prepend("<h5 class='white-text center-align title'>Novo Diretório</h5>");
      $("#directory_name").focus();
    }
  });
}

