@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row mb-3">
        <div class="col-md-12">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Import Contacts from XML</h2>
                <a class="btn btn-primary" href="{{ route('contacts.index') }}">
                    <i class="bi bi-arrow-left"></i> Back
                </a>
            </div>
        </div>
    </div>

    @if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    @if ($message = Session::get('error'))
    <div class="alert alert-danger">
        <p>{{ $message }}</p>
    </div>
    @endif

    <div class="card">
        <div class="card-body">
            <form action="{{ route('contacts.importPost') }}" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="mb-3">
                    <label for="xml_file" class="form-label">XML File:</label>
                    <input type="file" name="xml_file" id="xml_file" class="form-control" accept=".xml">
                    <div class="form-text">Please upload an XML file with contacts data.</div>
                </div>
                <button type="submit" class="btn btn-success">Import</button>
            </form>
        </div>
    </div>
</div>
@endsection