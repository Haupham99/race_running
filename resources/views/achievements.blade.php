@extends('master.master')
@section('content')
	<div class="container">
		<div class="row">
			@foreach($completedRace as $race)
			<div class="col-md-2">
				
			</div>
			<div class="col-md-8">
				<h2>{{ $race->name }}</h2>
				<p>Người thắng cuộc : {{ $race->winner }}</p>
				<p>Giải thưởng : {{ $race->prize }}</p>
				<p>Số thành viên tham gia : 5</p>
				<button class="btn btn-success">Chi tiết</button>
			</div>
			<div class="col-md-2">
				
			</div>
			@endforeach
		</div>
	</div>
@endsection