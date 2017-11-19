@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Popular Films</div>

                <div class="panel-body">
                    <div class="row">
                        @foreach($films['data'] as $film)
                            <div class="col-sm-6 col-md-4">
                                <div class="thumbnail">
                                    <img src="{{ $film['cover'] }}" alt="{{ $film['name'] }}">
                                    <div class="caption">
                                        <h3>{{ $film['name'] }}</h3>
                                        <p>{{ $film['description'] }}</p>
                                        <p><a href="#" class="btn btn-primary" role="button">Read More</a></p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                {{ $paginate->appends(Input::except('page'))->render() }}
            </div>
        </div>
    </div>
</div>
@endsection
