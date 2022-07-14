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
function hanyaAngka(evt) {
	var charCode = evt.which ? evt.which : event.keyCode;
	if (charCode > 31 && (charCode < 48 || charCode > 57)) return false;
	return true;
}
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

//dom ready
$(document).ready(function () {	
	$(".owl-carousel").owlCarousel({
		loop:true,
		items : 1,
		autoplay:true,
		autoplayTimeout:5000,
		autoplayHoverPause:true,
		dots: false,
		nav: true,
		navText: ['<button type"button" class="btn bg-dark-slate-blue text-white" style="border-radius:50%;"><span class="fa fa-chevron-left"></span></button>','<button type"button" class="btn bg-dark-slate-blue text-white" style="border-radius:50%"><span class="fa fa-chevron-right"></span></button>'],
	});
	
	//start
	$("#form").validate();
	//end

	//start
	$(function () {
		$("#datatable").DataTable();
	});
	//end

	//start
	var table;
	table = $("#table-agenda").DataTable({
		processing: true,
		serverSide: true,
		order: [],

		ajax: {
			url: base_url + "agenda/get_data_agenda",
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
			url: base_url + "pengumuman/get_data_pengumuman",
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
			url: base_url + "berita/get_data_berita",
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
			url: base_url + "download/get_data_download",
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
			url: base_url + "karyawan/get_data_karyawan",
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
			url: base_url + "guru/get_data_guru",
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
			url: base_url + "alumni/get_data_isialumni",
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
	/* Mgnific popup */
	if ($(".image-link").length) {
		$(".image-link").magnificPopup({
			type: "image",
			gallery: {
				enabled: true,
			},
		});
	}
	//end

	//start
	particlesJS("particles-js", {
		particles: {
			number: {
				value: 80,
				density: {
					enable: true,
					value_area: 1000,
				},
			},
			color: {
				value: "#ffffff",
			},
			shape: {
				type: "circle",
				stroke: {
					width: 0,
					color: "#000000",
				},
				polygon: {
					nb_sides: 5,
				},
				image: {
					src: "img/github.svg",
					width: 100,
					height: 100,
				},
			},
			opacity: {
				value: 0.5,
				random: false,
				anim: {
					enable: false,
					speed: 1,
					opacity_min: 0.1,
					sync: false,
				},
			},
			size: {
				value: 20,
				random: true,
				anim: {
					enable: false,
					speed: 40,
					size_min: 0.1,
					sync: false,
				},
			},
			line_linked: {
				enable: true,
				distance: 150,
				color: "#ffffff",
				opacity: 0.22,
				width: 1,
			},
			move: {
				enable: true,
				speed: 6,
				direction: "none",
				random: false,
				straight: false,
				out_mode: "out",
				attract: {
					enable: false,
					rotateX: 600,
					rotateY: 1200,
				},
			},
		},
		interactivity: {
			detect_on: "canvas",
			events: {
				onhover: {
					enable: true,
					mode: "repulse",
				},
				onclick: {
					enable: true,
					mode: "push",
				},
				resize: true,
			},
			modes: {
				grab: {
					distance: 400,
					line_linked: {
						opacity: 1,
					},
				},
				bubble: {
					distance: 400,
					size: 40,
					duration: 2,
					opacity: 8,
					speed: 3,
				},
				repulse: {
					distance: 200,
				},
				push: {
					particles_nb: 4,
				},
				remove: {
					particles_nb: 2,
				},
			},
		},
		retina_detect: true,
		config_demo: {
			hide_card: false,
			background_color: "#b61924",
			background_image: "",
			background_position: "50% 50%",
			background_repeat: "no-repeat",
			background_size: "cover",
		},
	});
	//end
});
//end dom
