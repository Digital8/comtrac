//var ROOT_PATH = "/comTrac";
var ROOT_PATH = "";


$(".toggleMenu").click(function(e) {
	e.preventDefault();
    $(".primary.navigation").toggle();
});

$(window).resize(function(){
	if(window.innerWidth > 1024) {
		$(".primary.navigation").removeAttr("style");
	}
});


var pattern = {
  alphanumeric: /^\w+$/,
  tel: /^[0-9\+\-\(\)\. ]{8,}$/,
  url: /[a-z]\.[a-z]{2,}/,
  email: /^([A-Za-z0-9]{1,}([-_\.\+&'][A-Za-z0-9]{1,}){0,}){1,}@(([A-Za-z0-9]{1,}[-]{0,1})\.){1,}[A-Za-z]{2,6}$/
};

// Form
var form = $("form").validate({
  onChange: true,
  sendForm: false,  
  valid: function() {
    var data = $(this).serialize()
    button.attr("disabled", true)    
    $.post(ROOT_PATH + "/mailer/", data, function(json) {
      var response = $.parseJSON(json)
      if (response.success) {
        form.before(message.html(
          "<span>" + response.message + "</span>"
        ))
        form.hide()
        setTimeout(function() {
          message.hide()
          form.fadeIn()
        }, 1500)
      }
      reset()
    })
  },
  eachValidField: function() {
    $(this).closest(".field")
      .removeAttr("data-invalid")
  },
  eachInvalidField: function() {
    $(this).closest(".field")
      .attr("data-invalid", true)
  }
});

var message = $("<p class=\"message\">");
var button = form.find(".button")

var reset = function() {
  button.removeAttr("disabled")
  form.find("[data-type=text]")
    .val("")
    .focus()
    .blur()
};

$.validateExtend({
  email: {
    conditional: function(value) {
      return pattern.email.test(value)
    }
  },
  phone: {
    conditional: function(value) {
      return pattern.tel.test(value)
    }
  }
});

form.find("[data-type=text]")
  .on("focus", function() {
    $(this).closest(".field").attr("data-focused", true)
  })
  .on("blur", function() {
    $(this).closest(".field").removeAttr("data-focused")
});



$("#category").change(function() {
	var value = $("#category").val();

	$("#mainBlock div.newsbox").each(function() {
		if (value == "all") {
			$(this).fadeIn();
		} else {
			var currClass = $(this).hasClass(value);
			if (currClass) {
				$(this).fadeIn();
			} else {
				$(this).fadeOut();
			}
		}
	});
});


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