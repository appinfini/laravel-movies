@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Popular Films</div>

                <div class="panel-body">
                    @foreach($films['data'] as $film)
                        <div class="row">
                            <div class="col-sm-6 col-md-6">
                                <div class="thumbnail">
                                    <a href="/films/{{ $film['slug'] }}">
                                        <img src="{{ $film['cover'] }}" alt="{{ $film['name'] }}">
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-6">
                                <h3><a href="/films/{{ $film['slug'] }}">{{ $film['name'] }}</a></h3>
                                <p>{{ $film['description'] }}</p>
                                <p><a href="/films/{{ $film['slug'] }}" class="btn btn-primary" role="button">Read More</a></p>
                            </div>
                        </div>
                    @endforeach
                    <div class="row">
                        <div class="col-md-12">
                            {!! $paginate['prevPageURL'] !!}
                            {!! $paginate['nextPageURL'] !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
