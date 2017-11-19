@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ $film['name'] }}
                    <a href="/films" class="btn btn-primary btn-sm pull-right" role="button">Back to list</a>
                </div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-6 col-md-6">
                            <div class="thumbnail">
                                <img src="{{ $film['cover'] }}" alt="{{ $film['name'] }}">
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6">
                            <h3>{{ $film['name'] }}
                                @for ($i = 0; $i <= $film['rating']; $i++)
                                    {{--<span class="glyphicon glyphicon-start" aria-hidden="true"></span>--}}
                                    <strong>*</strong>
                                @endfor
                            </h3>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="list-group">
                                        <a class="list-group-item">
                                            <h4 class="list-group-item-heading">Release Date</h4>
                                            <p class="list-group-item-text">{{ date('jS M Y', strtotime($film['release_date'])) }}</p>
                                        </a>
                                        <a class="list-group-item">
                                            <h4 class="list-group-item-heading">Genre</h4>
                                            <p class="list-group-item-text">{{ $film['genre'] }}</p>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="list-group">
                                        <a class="list-group-item">
                                            <h4 class="list-group-item-heading">Country</h4>
                                            <p class="list-group-item-text">{{ $film['country']['name'] }}</p>
                                        </a>
                                        <a class="list-group-item">
                                            <h4 class="list-group-item-heading">Ticket Price</h4>
                                            <p class="list-group-item-text">${{ $film['ticket_price'] }}</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <p>{{ $film['description'] }}</p>
                        </div>
                    </div>
                    <hr>
                    <div class="panel-heading">
                        <h4>Comments <a href="/films" class="btn btn-primary btn-sm pull-right" role="button">Post Comment</a></h4>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            @foreach($film['comments'] as $comment)
                                <div class="well well-lg">
                                    <strong>{{ $comment['user']['name'] }}</strong>
                                    <i class="pull-right">@ {{ date('jS M Y, h:i A', strtotime($comment['created_at'])) }}</i>
                                    <p>{{ $comment['comment'] }}</p>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
