@extends('layouts.app')

@section('content')

<div class="container-fluid">
    <div class="row">
	
        <div class="col-md-12 col-md-offset-2">
		</br>           
		
			<div class="card">
			
				@if (session('status'))
					<div class="alert alert-success">
						{{ session('status') }}
					</div>
				@endif

				<div class="card-header">
					Τμήματα
				</div>
				
				<div class="card-body" >
				
					<table class="table table-sm table-condensed table-hover table-fixed" id="pageTable">
					<thead class="table-primary">
						<tr>
							<th > ID </th>						
							<th> Ονομασία </th>
							<th> Τηλέφωνο</th>
							<th> Ε-mail </th>
							<th> Λειτουργίες </th>
						</tr>
					</thead>
					<tbody  >
						@foreach($tmimata as $key => $data)
							<tr>    
								<td>{{$data->st_id}}</td>							
								<td>{{$data->st_name}}</td>
								<td>{{$data->st_phone}}</td>
								<td>{{$data->st_email}}</td>
								<td>
									<button class="edit-modal btn btn-sm btn-outline-primary" data-info="{{$data->st_id}}">
										<span class="fa fa-pencil-square-o fa-1x"></span> 
									</button>
									<button class="edit-modal btn btn-outline-danger btn-sm" data-info="{{$data->st_id}}">
										<span class="fa fa-trash-o fa-1x"></span> 
									</button>
								</td>
							</tr>
						@endforeach
					</tbody>
					</table>
					
				</div>

				
			</div>

        </div>
    </div>
</div>

@endsection
<!--
@section('scripts')
    <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('js/jquery.dataTables.bootstrap4.min.js') }}"></script>
    <script>
         jQuery(function($) {
        //initiate dataTables plugin
        var myTable = $('#pageTable')
        //.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
        .DataTable( {
            bAutoWidth: false,
            "aoColumns": [
                null,
                null,
				null,
                null
            ],
            "aaSorting": [],
            //"bProcessing": true,
            //"bServerSide": true,
            //"sAjaxSource": "http://127.0.0.1/table.php"   ,
            //,
            //"sScrollY": "200px",
            //"bPaginate": false,
            //"sScrollX": "100%",
            //"sScrollXInner": "120%",
            //"bScrollCollapse": true,
            //Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
            //you may want to wrap the table inside a "div.dataTables_borderWrap" element
            //"iDisplayLength": 50
                select: {
                    style: 'multi'
                }
            });
        });
    </script>
@endsection
-->