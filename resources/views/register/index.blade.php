@extends('layout.main')

@section('container')
<div class="row justify-content-center">
    <div class="col-lg-5">
        <main class="form-registration w-100 m-auto">
            <h1 class="h3 mb-3 fw-normal text-center">Registration Form</h1>
            <form action="/register" method="post">
              @csrf
              <div class="form-floating">
                <input type="text" name="name" class="form-control rounded-top mt-1 @error('name') is-invalid @enderror" id="name" placeholder="name" required value="{{ old('name') }}">
                <label for="name">name</label>
                @error('name')
                <div class="invalid-feedback">
                  {{ $message }}.
                </div>  
                @enderror
              </div>
              <div class="form-floating">
                <input type="text" name="username" class="form-control mt-1 @error('username') is-invalid @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                <label for="username">username</label>
                @error('username')
                <div class="invalid-feedback">
                  {{ $message }}.
                </div>  
                @enderror
              </div>
              <div class="form-floating">
                <input type="email" name="email" class="form-control mt-1 @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" required value="{{ old('email') }}">
                <label for="floatingInput">Email address</label>
                @error('email')
                <div class="invalid-feedback">
                  {{ $message }}.
                </div>  
                @enderror
              </div>
              <div class="form-floating">
                <input type="password" name="password" class="form-control rounded-bottom mt-1 @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
                <label for="floatingPassword">Password</label>
                @error('password')
                <div class="invalid-feedback">
                  {{ $message }}.
                </div>  
                @enderror
              </div>
          
              {{-- <div class="form-check text-start my-3">
                <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
                <label class="form-check-label" for="flexCheckDefault">
                  Remember me
                </label>
              </div> --}}

              <button class="btn btn-primary w-100 py-2 mt-3" type="submit">Register</button>
             
            </form>
            <small class="d-block text-center mt-3">Already Registered? <a href="/login"> Login</a></small>
          </main>
    </div>
</div>


@endsection