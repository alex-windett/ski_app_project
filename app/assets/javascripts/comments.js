function request(method, url, data){
  return $.ajax({
    method: method,
    url: url,
    dataType: "json",
    data: data,
  })
}

function getComments(){
  request("GET", "/comments?runId=" + $('#run_id').html, null).success(function(data){
    $.each(data, function(i, comment){
      appendNewComment(comment)
    })
  })
}

function createComment(){
  request("POST", "/comments", {
    comment: {
      content: $("#commentsInput").val(),
      run_id: $('#run_id').html()
    }
  }).success(function(data){
    $('#commentsInput').val("")
    appendNewComment(data)
  })
}

function appendNewComment(data){

  $('<li class="newComment">' +
    '<label>'+ data.content + '</label>' +
    '<button id="destroyComment" data-id="'+ data.id +'">Delete Comment</button>'+
    '</li>').prependTo("#commentsOutput")
}

function destroyComment(){
  $this = $(this)
  commentId = $this.data("id");
  request("DELETE", "/comments/" + commentId, null).success(function(data){
    $this.parent().parent().remove()
  })
}

$(function(){
  $("#commentsInput").on('keypress', function(event)
  {
    if(event.which == '13')createComment()
  });
  $('#commentsOutput').on('click', '#destroyComment', destroyComment);
    getComments()
})