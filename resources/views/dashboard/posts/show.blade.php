@extends('dashboard.layouts.main')

@section('container')
<div class="row my-4">
    <div class="col-lg-12">
        <h3 class="mb-3">{{ $post->title }}</h3>
        <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to all my
            posts</a>
        <a href="/dashboard/posts/{{ $post->slug }}/edit" class="btn btn-warning"><span data-feather="edit"></span> Edit
            post</a>
        <form action="/dashboard/posts/{{ $post->slug }}" method="post" class="d-inline">
            @method('delete')
            @csrf
            <button onclick="return confirm('Are you sure to delete this post?')" class="btn btn-danger "><span data-feather="trash-2"></span> Delete Post</button>
        </form>
        @if ($post->image)
        <div class="div" style="max-height: 400px; overflow: hidden;">
        <img src="{{ asset('storage/'.$post->image) }}" class="img-fluid mt-3" alt="" >
        </div>
        @else
        <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" class="img-fluid mt-3" alt="">
        @endif
        <article class="my-3 fs-5">
            {!! $post->body !!}
        </article>
    </div>
</div>
@endsection