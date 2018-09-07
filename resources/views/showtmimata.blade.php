@extends('layouts.app')

@section('content')
</br>
<div class="container-fluid">
    <div class="row">
	
        <div class="col-md-12">
           
		
			<div class="card ">
			
				@if (session('status'))
					<div class="alert alert-success">
						{{ session('status') }}
					</div>
				@endif

				<div class="card-header">
				<strong>Τμήματα</strong>
				</div>
				
				<div class="card-body" >
				
					<table class="table table-sm table-hover small" id="showtmimata" class="display compact" cellspacing="0" width="100%" style="display:none">
					<thead>
						<tr>
							<th>ID</th>						
							<th>Ονομασία</th>
							<th>Τηλέφωνο</th>
							<th>Ε-mail</th>
							<th>Διεύθυνση</th>
						</tr>
					</thead>
					<tbody  >
						@foreach($tmimata as $key => $data)
							<tr>    
								<td>{{$data->st_id}}</td>							
								<td>{{$data->st_name}}</td>
								<td>{{$data->st_phone}}</td>
								<td>{{$data->st_email}}</td>
								<td>{{$data->bi_address}}</td>
							</tr>
						@endforeach
					</tbody>
					</table>
					
				</div>
				
			</div>

        </div>
    </div>
</div>
	</br>
@endsection


