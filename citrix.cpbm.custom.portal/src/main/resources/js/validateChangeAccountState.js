/* Copyright 2013 Citrix Systems, Inc. Licensed under the BSD 2 license. See LICENSE for more details. */
$(document).ready(function() {	
	
$("#changeStateForm").validate( {
    //debug : true,
    success : "valid",
    ignoreTitle : true,
    submitHandler: function(form) {
    },
    rules : {
	  "memo" : {
	  	required: true
    }
  },
  messages : {
	"memo" : {
		required : i18n.change.state.memo
	}
},
    errorPlacement: function(error, element) {
	var name = element.attr('id');
	name =ReplaceAll(name,".","\\."); 
	if (name != "") {
		error.appendTo("#" + name + "Error");
	}
   }
  });
});