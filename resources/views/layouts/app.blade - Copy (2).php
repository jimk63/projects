<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/b-1.5.2/b-colvis-1.5.2/b-flash-1.5.2/b-html5-1.5.2/b-print-1.5.2/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.4.0/r-2.2.2/rg-1.0.3/rr-1.2.4/sc-1.5.0/sl-1.2.6/datatables.min.css"/>
 



</head>

<body>

<div id="app">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
			
			<a class="navbar-brand" href="{{ url('/') }}">Δ.Β.Α.</a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active">
						<a class="nav-link" href="{{ url('/') }}">Αρχική <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Link</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">Disabled</a>
					</li>
				</ul>
			</div>
			
            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
			
			<li class="nav-item dropdown d-flex justify-content-center">
				<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Εργασίες
				</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item"  href="showallusers">Χρήστες</a>
					<a class="dropdown-item"  href="showtmimata">Τμήματα</a>
				</div>
			</li>
			
				<ul class="navbar-nav">
					@if (Auth::guest())
						<li class="nav-item"><a href="{{ route('login') }}" class="nav-link">Είσοδος</a></li>
						<li class="nav-item"><a href="{{ route('register') }}" class="nav-link">Εγγραφή</a></li>
					@else
						<li class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
							   aria-haspopup="true" aria-expanded="false">
								{{ Auth::user()->name }}
							</a>
							<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
								<a href="{{ route('logout') }}" class="dropdown-item"
								   onclick="event.preventDefault();document.getElementById('logout-form').submit();">
									Έξοδος
								</a>
								<form id="logout-form" action="{{ route('logout') }}" method="POST"
									  style="display: none;">
									{{ csrf_field() }}
								</form>
							</div>
						</li>
					@endif
				</ul>
            </div>

        </div>
    </nav>

    @yield('content')
</div>

<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/b-1.5.2/b-colvis-1.5.2/b-flash-1.5.2/b-html5-1.5.2/b-print-1.5.2/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.4.0/r-2.2.2/rg-1.0.3/rr-1.2.4/sc-1.5.0/sl-1.2.6/datatables.min.js"></script>
<script>

$(document).ready(function() {	
	var table = $('#showtmimata').DataTable( {	
		//scrollY: 			"55vh",
		scrollCollapse: 	false,
		paging:         	true, 
		info :     			false, 
		select:				true,
		fixedHeader: {
			header: true,
			headerOffset: 45,
		},
		dom: 'Bftiprl',
		language: {
					decimal: ",",
					sProcessing:   "Επεξεργασία...",
					processing: 	"DataTables is currently busy", 
					sLengthMenu:   "Δείξε _MENU_ εγγραφές",
					sZeroRecords:  "Δεν βρέθηκαν εγγραφές που να ταιριάζουν",
					sInfo:        	"Δείχνοντας _START_ εως _END_ από _TOTAL_ εγγραφές",
					sInfoEmpty:    "Δείχνοντας 0 εως 0 από 0 εγγραφές",
					sInfoFiltered: "(φιλτραρισμένες από _MAX_ συνολικά εγγραφές)",
					sInfoPostFix:  "",
					sSearch:       "Αναζήτηση:",
					sUrl:          "",
					oPaginate: {
						"sFirst":    "Πρώτη",
						"sPrevious": "Προηγούμενη",
						"sNext":     "Επόμενη",
						"sLast":     "Τελευταία"
					}
		},
		buttons: [	 
			'excel', 
			{
				extend: 'pdfHtml5',
				orientation: 'portrait',
				pageSize: 'A4',
				message: ' ',
				title: 'Τμήματα',
				customize: function(doc) {
					doc.styles.title = {
						color: 'red',
						fontSize: '12',
						background: 'white',
						alignment: 'center'
					}   
				}
			},  
			{
				extend: 'print',
				title: 'Τμήματα',
				orientation: 'portrait',
				customize: function ( win ) {
					$(win.document.body)
						.css( 'font-size', '10pt' )
						.prepend(
							'<img src="http://i66.tinypic.com/minbt4.png" style="position:absolute; top:0; left:0;" />'
						);
					$(win.document.body).find( 'table' )
						.addClass( 'compact' )
						.css( 'font-size', 'inherit' );
				}
			}, 
		]
	} );	

		$('#showtmimata').show();
} );

</script>
</body>

</html>

