@extends('dashboard.layout');

@section('konten')
    <p class="card-title">Education</p>
    <div class="pb-3"><a href="{{ route('education.create') }}" class="btn btn-primary">+ Tambah Education </a></div>
    <div class="table-responsive">
        <table class="table table-stripped">
            <thead>
                <tr>
                    <th class="col-1">No</th>
                    <th>Universitas</th>
                    <th>Fakultas</th>
                    <th>Prodi</th>
                    <th>IPK</th>
                    <th>Tgl Mulai</th>
                    <th>Tgl Akhir</th>
                    <th class="col-2">Aksi</th>
                </tr>
            </thead>

            <tbody>
                <?php $i=1; ?>
                @foreach ($data as $data)
                    <tr>
                        <td>{{ $i }}</td>
                        <td>{{ $data->judul }}</td>
                        <td>{{ $data->info1 }}</td>
                        <td>{{ $data->info2 }}</td>
                        <td>{{ $data->info3 }}</td>
                        <td>{{ $data->tgl_mulai_indo }}</td>
                        <td>{{ $data->tgl_akhir_indo }}</td>
                        <td>
                           <a href="{{ route('education.edit', $data->id) }}" class="btn btn-sm btn-warning">Edit</a>
                           <form onsubmit="return confirm('Hapus data ini..!')" action="{{ route('education.destroy',$data->id) }}" class="d-inline" method="POST">
                            @csrf
                            @method('DELETE')
                                <button class="btn btn-sm btn-danger" type="submit" name="submit">Delete</button>
                           </form>
                    </tr>
                <?php $i++; ?>
                @endforeach

            </tbody>
        </table>
    </div>
@endsection

