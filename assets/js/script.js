//start
function hanyaAngka(evt) {
	var charCode = evt.which ? evt.which : event.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) return false;
	return true;
}
//end

//start
function readURL(input) {
	// Mulai membaca inputan gambar
	if (input.files && input.files[0]) {
		var reader = new FileReader(); // Membuat variabel reader untuk API FileReader

		reader.onload = function (e) {
			// Mulai pembacaan file
			$("#preview_gambar") // Tampilkan gambar yang dibaca ke area id #preview_gambar
				.attr("src", e.target.result);
			//.width(300); // Menentukan lebar gambar preview (dalam pixel)
			//.height(200); // Jika ingin menentukan lebar gambar silahkan aktifkan perintah pada baris ini
		};

		reader.readAsDataURL(input.files[0]);
	}
}
//end

//start
$(function () {
	$("#example1").DataTable();
});
//end

//start
function VerifyUploadSizeIsOK()
{
  var UploadFieldID = "file-upload";
  var MaxSizeInBytes = 1048576;
  var fld = document.getElementById(UploadFieldID);
  if( fld.files && fld.files.length == 1 && fld.files[0].size > MaxSizeInBytes )
  {
    setTimeout(function () { 
      swal({
        position: 'top-end',
        icon: 'error',
        title: 'Ukuran gambar/foto terlalu besar!!',
        showConfirmButton: false,
        timer: 5000
      });
    },2000); 
    window.setTimeout(function(){ 
    } ,5000);
    return false;
  }
  return true;
} 
//end

//start
$(function () {
	// Summernote
	$(".textarea").summernote();
});
//end

//dom ready
$(document).ready(function () {
	//start
	$(".alert-message").alert().delay(10000).slideUp("slow");
	//end

	//start
	$("#form").validate();
	$('#form-user').validate({
	  rules: 
	  {
		password2:
		{
		  equalTo: "#password1"
		}
	  },
	  messages:
	  {
		password2:
		{
		  equalTo: "Password tidak sama"
		}
	  }
	});
	//end

	//start
	$(".sepasi").on({
		keydown: function (e) {
			if (e.which === 32) return false;
		},
		change: function () {
			this.value = this.value.replace(/\s/g, "");
		},
	});
	//end

	//start
	$("#konfirmasi_hapus").on("show.bs.modal", function (e) {
		$(this).find(".btn-ok").attr("href", $(e.relatedTarget).data("href"));
	});
	//end

	//start
	var table;
	table = $("#table-banner").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_banner",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-agenda").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_agenda",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-pengumuman").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_pengumuman",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-berita").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_berita",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-download").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_download",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-guru").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_guru",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-karyawan").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_karyawan",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-un").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_un",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-us").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_us",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-siswa").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_siswa",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-prestasi-siswa").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_prestasi_siswa",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-prestasi-guru").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_prestasi_guru",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-prestasi-sekolah").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_prestasi_sekolah",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-isialumni").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_isialumni",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-foto").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_foto",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	var table;
	table = $("#table-video").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "backend/get_data_video",
			type: "POST",
		},

		columnDefs: [
			{
				targets: [0],
				orderable: false,
			},
		],
	});
	//end

	//start
	$("#berapa_hari").change(function () {
		var id = $(this).val();
		if (id == "1") {
			$("#tgl1").fadeIn(500);
			$("#tgl_mulai").hide();
			$("#tgl_selesai").hide();
		} else if (id == "2") {
			$("#tgl1").hide();
			$("#tgl_mulai").fadeIn(500);
			$("#tgl_selesai").fadeIn(500);
		}
	});
	//end
});
//end dom
