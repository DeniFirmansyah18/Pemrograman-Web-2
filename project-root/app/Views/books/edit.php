<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 class="my-3">Form Ubah Data Buku</h2>
<<<<<<< HEAD
            <form action="/books/update/<?= $buku['id']; ?>" method="post" enctype="multipart/form-data">
                <?= csrf_field(); ?>
                <input type="hidden" name="slug" value="<?= $buku['slug']; ?>">
                <input type="hidden" name="sampulLama" value="<?= $buku['sampul']; ?>">
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('judul')) ? 'is-invalid' : ''; ?>" name="judul" id="judul" autofocus value="<?= old('judul', $buku['judul']); ?>">
=======
            <form action="/books/update/<?= $buku['id']; ?>" method="post">
                <?= csrf_field(); ?>
                <input type="hidden" name="slug" value="<?= $buku['slug']; ?>">
                <div class="row mb-3">
                    <label for="judul" class="col-sm-2 col-form-label">Judul</label>
                    <div class="col-sm-10">
                        <input type="judul" class="form-control <?= ($validation->HasError('judul')) ? 'is-invalid' : 
                        ''; ?>" name="judul" id="judul" autofocus value="<?= old('judul'); ?>">
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
                        <div class="invalid-feedback">
                            <?= $validation->getError('judul'); ?>
                        </div>
                    </div>
                </div>
<<<<<<< HEAD
                <div class="row mb-3">
                    <label for="penulis" class="col-sm-2 col-form-label">Penulis</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('penulis')) ? 'is-invalid' : ''; ?>" name="penulis" id="penulis" value="<?= old('penulis', $buku['penulis']); ?>">
=======
                <div class=" row mb-3">
                    <label for="penulis" class="col-sm-2 col-form-label">penulis</label>
                    <div class="col-sm-10">
                        <input type="penulis" class="form-control <?= ($validation->HasError('penulis')) ? 'is-invalid' : 
                        ''; ?>" name=" penulis" id="penulis" autofocus value="<?= old('penulis'); ?>">
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
                        <div class="invalid-feedback">
                            <?= $validation->getError('penulis'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
<<<<<<< HEAD
                    <label for="penerbit" class="col-sm-2 col-form-label">Penerbit</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control <?= ($validation->hasError('penerbit')) ? 'is-invalid' : ''; ?>" name="penerbit" id="penerbit" value="<?= old('penerbit', $buku['penerbit']); ?>">
=======
                    <label for="penerbit" class="col-sm-2 col-form-label">penerbit</label>
                    <div class="col-sm-10">
                        <input type="penerbit" class="form-control <?= ($validation->HasError('penerbit')) ? 'is-invalid' : 
                        ''; ?>" name=" penerbit" id="penerbit" autofocus value="<?= old('penerbit'); ?>">
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
                        <div class="invalid-feedback">
                            <?= $validation->getError('penerbit'); ?>
                        </div>
                    </div>
                </div>
                <div class="row mb-3">
<<<<<<< HEAD
                    <label for="sampul" class="col-sm-2 col-form-label">Sampul</label>
                    <div class="col-sm-2">
                        <img src="/img/<?= $buku['sampul']; ?>" class="img-thumbnail img-preview">
                    </div>
                    <div class="col-sm-8">
                        <input type="file" class="form-control <?= ($validation->hasError('sampul')) ? 'is-invalid' : ''; ?>" name="sampul" id="sampul" onchange="previewImg()">
                        <div class="invalid-feedback">
                            <?= $validation->getError('sampul'); ?>
                        </div>
                    </div>
                </div>
=======
                    <label for="sampul" class="col-sm-2 col-form-label">sampul</label>
                    <div class="col-sm-10">
                        <input type="sampul" class="form-control" name="sampul" id="sampul" autofocus
                            value="<?= old('sampul'); ?>">
                    </div>
                </div>

>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
                <button type="submit" class="btn btn-primary">Ubah Data</button>
            </form>
        </div>
    </div>
</div>

<<<<<<< HEAD
<script>
    function previewImg() {
        const sampul = document.querySelector('#sampul');
        const imgPreview = document.querySelector('.img-preview');

        const fileSampul = new FileReader();
        fileSampul.readAsDataURL(sampul.files[0]);

        fileSampul.onload = function(e) {
            imgPreview.src = e.target.result;
        }
    }
</script>

<?= $this->endSection(); ?>
=======
<?= $this->endSection(); ?>
>>>>>>> 5918ce29741bc51cc66563d7f705324000e6f0be
