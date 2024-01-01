@extends('dashboard.layout');

@section('konten')
    <p class="card-title">Experience</p>
    <div class="pb-3"><a href="{{ route('experience.create') }}" class="btn btn-primary">+ Tambah Experience </a></div>
    <div class="table-responsive">
        <table class="table table-stripped">
            <thead>
                <tr>
                    <th class="col-1">No</th>
                    <th>Posisi</th>
                    <th>Perusahaan</th>
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
                        <td>{{ $data->tgl_mulai_indo }}</td>
                        <td>{{ $data->tgl_akhir_indo }}</td>
                        <td>
                           <a href="{{ route('experience.edit', $data->id) }}" class="btn btn-sm btn-warning">Edit</a>
                           <form onsubmit="return confirm('Hapus data ini..!')" action="{{ route('experience.destroy',$data->id) }}" class="d-inline" method="POST">
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

