@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row mb-3">
        <div class="col-md-12">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact List</h2>
                <div>
                    <a href="{{ route('contacts.create') }}" class="btn btn-success me-2">
                        <i class="bi bi-plus-circle"></i> Create New Contact
                    </a>
                    <a href="{{ route('contacts.import') }}" class="btn btn-primary">
                        <i class="bi bi-upload"></i> Import XML
                    </a>
                </div>
            </div>
        </div>
    </div>

    @if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
    @endif

    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="table-light">
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Last Name</th>
                            <th>Phone</th>
                            <th width="280px">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                            $rowNum = ($contacts->total() - ($contacts->currentPage() - 1) * $contacts->perPage());
                        @endphp
                        @foreach ($contacts as $contact)
                        <tr>
                            <td>{{ $rowNum-- }}</td>
                            <td>{{ $contact->name }}</td>
                            <td>{{ $contact->lastname }}</td>
                            <td>{{ $contact->phone }}</td>
                            <td>
                                <form action="{{ route('contacts.destroy', $contact->id) }}" method="POST">
                                    <a class="btn btn-info btn-sm" href="{{ route('contacts.show', $contact->id) }}">
                                        <i class="bi bi-eye"></i> View
                                    </a>
                                    <a class="btn btn-primary btn-sm" href="{{ route('contacts.edit', $contact->id) }}">
                                        <i class="bi bi-pencil"></i> Edit
                                    </a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this contact?')">
                                        <i class="bi bi-trash"></i> Delete
                                    </button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            
            <div class="d-flex justify-content-center mt-4">
                {{ $contacts->links('pagination.bootstrap-5') }}
            </div>
        </div>
    </div>
</div>
@endsection