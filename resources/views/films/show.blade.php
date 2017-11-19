@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    {{ $film['name'] }}
                    <a href="{{ route('films')  }}" class="btn btn-primary btn-sm pull-right" role="button">Back to list</a>
                </div>

                <div class="panel-body">

                    @if (!empty($messages['error']))
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            {{ $messages['error'] }}
                        </div>
                    @endif
                    @if (!empty($messages['success']))
                        <div class="alert alert-success alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            {{ $messages['success'] }}
                        </div>
                    @endif

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
                        <h4>Comments
                            @guest
                            <span class="pull-right">
                                You must be logged in to post comments. <a href="{{ route('login') }}" class="btn btn-primary" role="button">Login</a>
                            </span>
                            @endguest
                        </h4>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            @auth
                                <form class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Name" disabled name="name" value="{{ Auth::User()->name }}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Comment</label>
                                        <div class="col-sm-10">
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                            <textarea class="form-control" rows="3" placeholder="Enter comment..." name="comment"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">Post Comment</button>
                                        </div>
                                    </div>
                                </form>
                            @endauth
                        </div>
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
