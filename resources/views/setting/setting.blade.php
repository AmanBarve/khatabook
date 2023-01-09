 @extends('layout.dashboard')
 @section('content')
 <div class="content-header">
     <div class="container-fluid">
         <div class="row mb-12">

         </div>
     </div>
 </div>
 <section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card card-secondary">
                     <div class="card-header">
                         <h3 class="card-title">General Settings</h3>
                     </div>
                     @if ($errors->any())
                     <div class="alert alert-danger">
                         <ul>
                             @foreach ($errors->all() as $error)
                             <li>{{ $error }}</li>
                             @endforeach
                         </ul>
                     </div>
                     @endif
                     <form action="{{route('setting.store')}}" method="post" enctype="multipart/form-data">
                         @csrf
                            <div class="card-body">
                                <div class="form-group"><?php $store_name = getStoreSettings('store_name'); ?>
                                    <label for="store_name">Store Name</label>
                                    <input type="text" name="store_name" id="store_name" value="{{$store_name}}" class="form-control" placeholder="Enter name">
                                </div>
                                <div class="card card-info">
                                    <div class="card-header">
                                        <h3 class="card-title">Logo</h3>
                                    </div>
                                    <div class="card-body">
                                            <div class="row">
                                                <div class="form-group col-md-4">
                                                    @if ($logo_image = getStoreSettings('logo_image'))
                                                    <img src="{{URL::to('/')}}/storage/app/public/{{($logo_image)}}" style="height: 100px;">
                                                    @else
                                                    <img src="{{URL::to('/')}}/public/images/users/user.jpg" style="height: 100px;">
                                                    @endif
                                                </div>
                                                <div class="form-group col-md-8">
                                                    <label for="logo_image">Image</label>
                                                    <div class="input-group">
                                                        <div class="custom-file">
                                                            <input type="file" name="logo_image" class="custom-file-input">
                                                            <label class="custom-file-label" for="logo_image">Choose file</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </div>
                     </form>
                </div>
            </div>
        </div>
    </div>
 </section>


 @stop