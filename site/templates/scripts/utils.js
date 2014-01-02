
function resetForm(idForm) {
	$(idForm).each (function(){
  		this.reset();
  		var label = $("label[for='"+$(this).attr('id')+"']");

	});
}


function failAjax(jqXHR, textStatus, errorThrown) {
	console.log("ERROR> ");
	console.log("jqXHR.responseText> " + jqXHR.responseText);
	console.log("jqXHR.statusText> " + jqXHR.statusText);
	console.log("jqXHR.getAllResponseHeaders()> " + jqXHR.getAllResponseHeaders());
	console.log("textStatus> " + textStatus);
	console.log("errorThrown> " + errorThrown);	
}





// test if a value is empty.
function empty(data)
{
  if(typeof(data) == 'number' || typeof(data) == 'boolean')
  {
    return false;
  }
  if(typeof(data) == 'undefined' || data === null)
  {
    return true;
  }
  if(typeof(data.length) != 'undefined')
  {
    return data.length == 0;
  }
  var count = 0;
  for(var i in data)
  {
    if(data.hasOwnProperty(i))
    {
      count ++;
    }
  }
  return count == 0;
}