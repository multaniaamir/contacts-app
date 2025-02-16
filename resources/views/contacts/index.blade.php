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
                <table id="contacts-table" class="table table-bordered table-hover">
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
                        @foreach ($contacts as $contact)
                        <tr>
                            <td>{{ $contact->id }}</td>
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
        </div>
    </div>
</div>

@push('styles')
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css">
@endpush

@push('scripts')
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
<script>
    $(document).ready(function() {
    $('#contacts-table').DataTable({
        "order": [[0, "desc"]], // Sort by the first column (No) in descending order
        "paging": true, // Enable pagination
        "pageLength": 10, // Set default number of entries per page
        "lengthMenu": [ [10, 25, 50, 100], [10, 25, 50, 100] ], // Dropdown for entries per page
        "language": {
            "search": "Search contacts:",
            "zeroRecords": "No matching contacts found",
            "info": "Showing _START_ to _END_ of _TOTAL_ contacts",
            "infoEmpty": "Showing 0 to 0 of 0 contacts",
            "infoFiltered": "(filtered from _MAX_ total contacts)",
            "lengthMenu": "Show _MENU_ contacts per page",
            "paginate": {
                "first": "First",
                "last": "Last",
                "next": "Next",
                "previous": "Previous"
            }
        },
        "columnDefs": [
            { "orderable": false, "targets": 4 } // Disable sorting on the action column
        ]
    });
});

    </script>
    
@endpush
@endsection