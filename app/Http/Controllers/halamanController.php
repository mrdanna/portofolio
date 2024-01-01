<?php

namespace App\Http\Controllers;

use App\Models\Halaman;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class halamanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Halaman::orderBy('judul', 'asc')->get();
        return view('dashboard.halaman.index')->with('data', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.halaman.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //berdungsi untuk memberikan data lama tidak hilang
        Session::flash('judul', $request->judul);
        Session::flash('isi', $request->isi);

        $request->validate([
            'judul'=>'required',
            'isi' => 'required'
        ],[
            'judul.required'=> 'judul wajib di isi',
            'isi.required' => 'isi wajib si isi'
        ]
        );

        $data = [
            'judul'=> $request->judul,
            'isi' => $request->isi
        ];

        Halaman::create($data);

        return redirect()->route('halaman.index')->with('success', 'Berhasil menambahkan data');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Halaman::where('id', $id)->first();
        return view('dashboard.halaman.edit')->with('data', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $request->validate([
            'judul'=>'required',
            'isi' => 'required'
        ],[
            'judul.required'=> 'judul wajib di isi',
            'isi.required' => 'isi wajib si isi'
        ]
        );

        $data = [
            'judul'=> $request->judul,
            'isi' => $request->isi
        ];

        Halaman::where('id',$id)->update($data);

        return redirect()->route('halaman.index')->with('success', 'Berhasil merubah data');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Halaman::where('id', $id)->delete();
        return redirect()->route('halaman.index')->with('success', 'Berhasil hapus data');
    }
}
