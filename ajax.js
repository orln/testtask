//Handling button clicks
$(document).ready(function () {
    $(".action-button").click(
        function (event) {
            event.preventDefault(); //disable page reload
            let buttonId = this.id
            //console.log("buttonId=" + buttonId);
            sendAjaxForm(buttonId)
            //return false;
        }
    );
});

//Sending (form data) and (button click event) to action_ajax_form.php to process a request
function sendAjaxForm(buttonId) {
    //let name = document.getElementById('name').value;
    //let surname = document.getElementById('surname').value;
    //let phone = document.getElementById('phone').value;
    let name = $("#name").val();
    let surname = $("#surname").val();
    let phone = $("#phone").val();

    //console.log("sendAjaxForm " + buttonId + ' ' + name + ' ' + surname + ' ' + phone);
	
    $.ajax({
        url: "action_ajax_form.php", //theform.attr("method"),
        type: "POST",
        dataType: "html",
        data: {
            buttonId: buttonId,
            name: name,
            surname: surname,
            phone: phone,
        },
        success: function (response) {
			$('#result').html(response);
			
			if (buttonId === 'search') {
				formTable(response);
			} 
        },
        error: function (response) {
            $('#result_form').html('Error. Data not sent.');
        }
    });
}

function formTable(response) {
	
	responseObj = $.parseJSON(response);
	
	console.log(JSON.stringify(responseObj, null, 4))

	let divResult = document.getElementById("result")
	divResult.innerHTML = '';	//remove old result

	//Form the table of results through the DOM
	let table = document.createElement("table")
	divResult.appendChild(table)

	//Adding rows
	for (let line in responseObj) {
		let tr = document.createElement("tr")

		let similars = responseObj[line]

		//Adding cells
		for (let cell in similars) {
			//console.log(" similars: " + JSON.stringify(similars, null, 4));
			let td = document.createElement('td')
			let node = document.createTextNode(similars[cell])
			td.appendChild(node)
			tr.appendChild(td)
		}
		table.appendChild(tr)
	}	
}