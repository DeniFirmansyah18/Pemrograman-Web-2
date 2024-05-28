<?php

namespace App\Controllers;

use App\Models\BooksModel;

class Books extends BaseController
{
    protected $bukuModel;
    public function __construct()
    {
        $this->bukuModel = new BooksModel();
    }
    public function index()
    {
        //$buku = $this->bukuModel->findAll();
        $data = [
            'title' => 'Daftar Buku',
            'buku' => $this->bukuModel->getBuku()
        ];

        return view('books/index', $data);
    }

    public function detail($slug)
    {
        //$buku = $this->bukuModel->where(['slug' => $slug])->first();


        $data = [
            'title' => 'Detail Buku',
            'buku' => $this->bukuModel->getBuku($slug)
        ];

        if (empty($data['buku'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul Buku' . $slug . 'Tidak ditemukan');
        }

        return view('books/detail', $data);
    }

    public function edit($slug)
    {
        
        $data = [
            'title' => 'Form Edit Data Buku',
<<<<<<< HEAD
            'validation' => \Config\Services::validation(),
=======
            'validation' => session()->getFlashdata('validation') ?? \Config\Services::validation(),
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
            'buku' => $this->bukuModel->getBuku($slug)
        ];

        return view('books/edit', $data);
    }

    public function create()
    {

        $data = [
            'title' => 'Form Tambah Buku',
            'validation' => \Config\Services::validation(),
        ];

        return view('books/create', $data);
    }

    public function update($id) {
<<<<<<< HEAD
    // Mendapatkan data buku lama
    $bukuLama = $this->bukuModel->getBuku($this->request->getVar('slug'));

    // Tentukan aturan validasi untuk judul
    if ($bukuLama['judul'] == $this->request->getVar('judul')) {
        $rule_judul = 'required';
    } else {
        $rule_judul = 'required|is_unique[books.judul]';
    }

    // Validasi
    if (!$this->validate([
        'judul' => [
            'rules' => $rule_judul,
            'errors' => [
                'required' => '{field} buku harus di isi',
                'is_unique' => '{field} buku sudah terdaftar'
            ]
        ],
        'penulis' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} buku harus di isi'
            ]
        ],
        'penerbit' => [
            'rules' => 'required',
            'errors' => [
                'required' => '{field} buku harus di isi'
            ]
        ],
        'sampul' => [
            'rules' => 'max_size[sampul,2048]|mime_in[sampul,image/png,image/jpeg]|is_image[sampul]',
            'errors' => [
                'max_size' => 'Ukuran gambar terlalu besar (maksimal 2MB)',
                'mime_in' => 'Ekstensi gambar tidak valid (jpg, jpeg, png)',
                'is_image' => 'Yang Anda unggah bukan gambar'
            ]
        ]
    ])) {
        //session()->setFlashdata('validation', \Config\Services::validation());
        return redirect()->to('/books/edit/' . $this->request->getVar('slug'))->withInput();
    }



        $fileSampul = $this->request->getFile('sampul');

        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            $namaSampul = $fileSampul->getRandomName();
            $fileSampul->move('img', $namaSampul);
            if ($this->request->getVar('sampulLama') != 'default.png') {
                unlink('img/' . $this->request->getVar('sampulLama'));
            }
        }

=======
        $bukuLama = $this->bukuModel->getBuku($this->request->getVar('slug'));
        if ($bukuLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[books.judul]';
        }
        
        //validasi
        if(!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} buku harus di isi',
                    'is_unique' => '{field} buku sudah terdaftar'
                    ]
                ],
                'penulis' => [
                    'rules' => $rule_judul,
                    'errors' => [
                        'required' => '{field} buku harus di isi',
                        'is_unique' => '{field} buku sudah terdaftar'
                        ]
                    ],
                    'penerbit' => [
                        'rules' => $rule_judul,
                        'errors' => [
                            'required' => '{field} buku harus di isi',
                            'is_unique' => '{field} buku sudah terdaftar'
                            ]
                        ]
        ])) {
            session()->setFlashdata('validation', \Config\Services::validation());
            return redirect()->to('/books/edit/' . $this->request->getVar('slug'))->withInput();
        }
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->bukuModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
<<<<<<< HEAD
            'sampul' => $namaSampul
=======
            'sampul' => $this->request->getVar('sampul')
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil di ubah');

        return redirect()->to('/books');
    }

    public function delete($id) {
        $this-> bukuModel->delete($id);
        
        session()->setFlashdata('pesan', 'Data berhasil dihapus');

        return redirect()->to('/books');
    }

    public function save()
    {
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[books.judul]',
                'errors' => [
                    'required' => '{field} buku harus di isi',
                    'is_unique' => '{field} buku sudah terdaftar'
                ]
            ],
            'penulis' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} buku harus di isi'
                ]
            ],
            'penerbit' => [
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} buku harus di isi'
                ]
<<<<<<< HEAD
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,2048]|mime_in[sampul,image/png,image/jpeg]|is_image[sampul]',
                'errors' => [
                    'max_size' => 'Ukuran gambar terlalu besar (maksimal 2MB)',
                    'mime_in' => 'Ekstensi gambar tidak valid (jpg, jpeg, png)',
                    'is_image' => 'Yang Anda unggah bukan gambar'
                ]
=======
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
            ]
        ])) {
            //session()->setFlashdata('validation', \Config\Services::validation());
            return redirect()->to('/books/create')->withInput();
        }

        // Ambil file gambar
        $fileSampul = $this->request->getFile('sampul');

        // Generate nama file acak
        $namaSampul = $fileSampul->getRandomName();

        // Pindahkan file ke folder img
        $fileSampul->move('img', $namaSampul);
        
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->bukuModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data Berhasil ditambahkan');

        return redirect()->to('/books');
    }
}