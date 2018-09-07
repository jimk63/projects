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
				
					<table class="table table-sm table-condensed table-hover " id="stationstable">
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

@section('scripts')
     <script>
        $('#stationstable').DataTable({
            select:true,
            "order": [[0, "desc"]],
            "scrollY"   :"380px",
            "scrollCollapse": true,
            "paging"    :true,
            "bProcessing"   :true
        });
    </script>
@stop
