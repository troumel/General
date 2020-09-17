function edit_row(no) {
    document.getElementById("edit_button" + no).style.display = "none";
    document.getElementById("save_button" + no).style.display = "block";

    var title = document.getElementById("title_row" + no);

    var title_data = title.innerHTML;

    title.innerHTML = "<input type='text' id='title_text" + no + "' value='" + title_data + "'>";
}

function save_row(no) {
    var title_val = document.getElementById("title_text" + no).value;

    // ------------------------------------------------------validations---------------------------------------------\\

    if (title_val.length > 20 || title_val.length < 3) {
        alert("Titles should contain letters and be minimum 3 letters up to 20 maximum");
        return;
    }
    if (isNaN(title_val) == false) {
        alert("Enter a valid title");
        return;
    }
    // ----------------------------------------------------end of validations-----------------------------------------\\

    document.getElementById("title_row" + no).innerHTML = title_val;

    document.getElementById("edit_button" + no).style.display = "block";
}

function delete_row(no) {
    document.getElementById("row" + no + "").outerHTML = "";
}

function add_row() {
    var new_title = document.getElementById("new_title").value;

    var table = document.getElementById("data_table");
    var table_len = (table.rows.length) - 1;

    // ------------------------------------------------------validations---------------------------------------------\\

    if (new_title.length > 20 || new_title.length < 3) {
        alert("Titles should contain letters and be minimum 3 letters up to 20 maximum");
        return;
    }
    if (isNaN(new_title) == false) {
        alert("Enter a valid title");
        return;
    }
    // ----------------------------------------------------end of validations-----------------------------------------\\

    var row = table.insertRow(table_len).outerHTML = "<tr id='row" + table_len + "'><td id='title_row" + table_len + "'>" + new_title + "</td><td><input type='button' id='edit_button" + table_len + "' value='Edit' class='edit' onclick='edit_row(" + table_len + ")'> <input type='button' id='save_button" + table_len + "' value='Save' class='save' onclick='save_row(" + table_len + ")'> <input type='button' value='Delete' class='delete' onclick='delete_row(" + table_len + ")'></td></tr>";

    document.getElementById("new_title").value = "";
}