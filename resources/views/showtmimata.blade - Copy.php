@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
		</br>           
		
		<div class="table-responsive">
		
			<div class="card">
			
				@if (session('status'))
					<div class="alert alert-success">
						{{ session('status') }}
					</div>
				@endif

				<div class="card-header">
					Τμήματα
				</div>
				
				<div class="card-body">
				
					<table class="table table-sm table-condensed table-hover">
					<thead class="table-primary" style="font-size: 12px;">
						<tr>
							<th > ID </th>						
							<th class="col-sm-10"> Ονομασία </th>
							<th class="col-5"> Τηλέφωνο</th>
							<th class="col-5"> Ε-mail </th>
						</tr>
					</thead>
					<tbody  style="font-size: 12px;">
						@foreach($tmimata as $key => $data)
							<tr>    
							  <td>{{$data->st_id}}</td>							
							  <td class="col-sm-10">{{$data->st_name}}</td>
							  <td class="col-5">{{$data->st_phone}}</td>
							  <td class="col-5">{{$data->st_email}}</td>
							</tr>
						@endforeach
					</tbody>
					</table>
					
				</div>
				
				<div class="card-footer text-muted">
    
				</div>
				
			</div>
        </div>
    </div>
</div>
@endsection
