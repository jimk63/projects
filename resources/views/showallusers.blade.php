@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
		</br>           
			<div class="card">
			
				@if (session('status'))
					<div class="alert alert-success">
						{{ session('status') }}
					</div>
				@endif

				<div class="card-header">
					Χρήστες
				</div>
				
				<div class="card-body">
					<table class="table table-sm table-condensed table-hover ">
					<thead class="table-primary">
						<tr>
							<th> ID </th>						
							<th> Όνομα Χρήστη </th>
							<th> Ονοματεπώνυμο</th>
							<th> Ε-mail </th>
						</tr>
					</thead>
					<tbody>
						@foreach($users as $key => $data)
							<tr>    
							  <td>{{$data->id}}</td>							
							  <td>{{$data->username}}</td>
							  <td>{{$data->name}}</td>
							  <td>{{$data->email}}</td>
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
