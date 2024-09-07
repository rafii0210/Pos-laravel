@extends('layouts.app')
@section('title', 'Data category')

@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-3">
            <a href="{{ route('category.create') }}" class="btn btn-primary">Tambah</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Kategori</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @php
                        $no = 1;
                    @endphp
                    @foreach ($category as $categorys)
                        <tr>
                            <td>{{ $no++ }}</td>
                            <td>{{ $categorys->category_name }}</td>

                            <td>
                                <a href="{{ route('category.edit', $categorys->id) }}" class="btn btn-success btn-x5">Edit</a>
                                {{-- <a href="{{route('category.destroy', $category->id) }}" class="btn btn-success btn-xs">Delete</a> --}}
                                <form class="d-inline" action="{{ route('category.destroy', $categorys->id) }}"
                                    method="post">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-danger" type="submit">
                                        Delete
                                    </button>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    @endsection
