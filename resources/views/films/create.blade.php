@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Create Film
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
                        <div class="col-md-12">
                            @auth
                                <form class="form-horizontal" method="post">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Name" name="name" value="{{ Input::get('name') }}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Description</label>
                                        <div class="col-sm-10">
                                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                            <textarea class="form-control" rows="5" placeholder="Enter description..." name="description">
                                                {{ Input::get('name') }}
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Release Date</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control" placeholder="Release date" name="release_date" value="{{ Input::get('release_date') }}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Ticket Price</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" placeholder="Ticket price" name="ticket_price" value="{{ Input::get('ticket_price') }}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label">Rating</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" placeholder="Rating" name="rating" value="{{ Input::get('rating') }}">
                                        </div>
                                    </div>
                                    <div class=" row">
                                        <div class="col-md-offset-2 col-md-5">
                                            <label class="col-sm-2 control-label">Country</label>
                                            <select class="form-control" name="country">
                                                @foreach ($films['country'] as $country)
                                                    <option {{ $country['id'] == Input::get('country') ? 'selected' : '' }} value="{{ $country['id'] }}">{{ $country['name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-md-5">
                                            <label class="col-sm-2 control-label">Genre</label>
                                            <select multiple class="form-control" name="genre[]">
                                                @foreach ($films['genre'] as $genre)
                                                    <option {{ is_array(Input::get('genre')) ? (in_array($genre['id'], Input::get('genre')) ? 'selected' : '') : '' }} value="{{ $genre['id'] }}">{{ $genre['name'] }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class=" row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label">Cover</label>
                                                <div class="col-sm-10">
                                                    <input type="file" class="form-control" name="cover">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <button type="submit" class="btn btn-default">Create Film</button>
                                        </div>
                                    </div>
                                </form>
                            @endauth
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
