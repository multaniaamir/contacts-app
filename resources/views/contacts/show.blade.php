@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row mb-3">
        <div class="col-md-12">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Show Contact</h2>
                <a class="btn btn-primary" href="{{ route('contacts.index') }}">
                    <i class="bi bi-arrow-left"></i> Back
                </a>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <strong>Name:</strong>
                        {{ $contact->name }}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <strong>Last Name:</strong>
                        {{ $contact->lastname }}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="mb-3">
                        <strong>Phone:</strong>
                        {{ $contact->phone }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection