@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit post</h1>
</div>
<div class="col-md-12">
    <form method="post" action="/dashboard/posts/{{ $post->slug }}" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf 
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" class="form-control @error('title') is-invalid @enderror" id="title" name="title" value="{{ old('title', $post->title) }}" required autofocus>
            @error('title')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Slug</label>
            <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" value="{{ old('slug', $post->slug) }}" required>
            @error('slug')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Category</label>
            <select class="form-select" name="category_id" required>
                <option value="">--Pilih Kategori--</option>
                @foreach ($categories as $category)
                <option value="{{ $category->id }}" {{ (old('category_id',$post->category_id) == $category->id ? 'selected' : '') }}>{{ $category->name }}</option>
                @endforeach
            </select>
            @error('category_id')
                {{ $message }}
            @enderror
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Post Image</label>
            <input type="hidden" name="oldImage" value="{{ $post->image }}">
            @if ($post->image)
            <img class="img-priview img-fluid mb-3 d-block" src="{{ asset('storage/' . $post->image) }}">
            @else
            <img class="img-priview img-fluid mb-3">
            @endif
            <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="priviewImage()">
             @error('category_id')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="slug" class="form-label">Body</label>
                <input id="body" type="hidden" name="body" value="{{ old('body',$post->body) }}">
                <trix-editor input="body"></trix-editor>
             @error('body')
                 <p class="text-danger">{{ $message }}</p>
             @enderror   
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
<script>
    const title = document.querySelector('#title');
    const slug = document.querySelector('#slug');

    title.addEventListener('change', function(){
        fetch('/dashboard/posts/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    document.addEventListener('trix-file-accept', function(e){
        e.preventDefault();
    })

    function priviewImage() {
        const image = document.querySelector('#image');
        const imgPriview = document.querySelector('.img-priview');

        imgPriview.style.display = 'block';

        const oFReader = new FileReader();
        oFReader.readAsDataURL(image.files[0]);

        oFReader.onload = function(oFREvent) {
            imgPriview.src = oFREvent.target.result;
        }
    }
</script>

@endsection