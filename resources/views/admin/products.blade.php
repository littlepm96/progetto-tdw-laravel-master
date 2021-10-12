@extends('layouts.app_admin')

@section('content')
<div class="row">
    @php 
    if(!$products->isEmpty()) {
    @endphp
    @foreach ($products as  $product)
    <div class="col-md-4 col-lg-3"> 
        <div class="card card-cascade narrower hm-zoom"> 
            <div class="view overlay hm-white-slight">
                <img src="{{asset('../storage/app/public/'.$product->image)}}" class="img-fluid" alt="{{__('admin_pages.no_choosed_image')}}">
                <a>
                    <div class="mask"></div>
                </a>
            </div> 
            <div class="card-body text-center no-padding">
                <h4 class="card-title"><strong><a href="">{{$product->name}}</a></strong></h4> 
                <p class="card-text">
                    {{strip_tags($product->description)}}
                </p> 
                <div class="card-footer">
                    <div class="text-center price">{{$product->price}}</div>
                    <span class="right">
                        <a href="{{ lang_url('admin/edit/product/'.$product->id) }}" class="btn btn-secondary btn-sm">
                            {{__('admin_pages.edit')}}
                        </a>
                        <a href="{{ lang_url('admin/delete/product/'.$product->id) }}" data-my-message="{{__('admin_pages.are_u_sure_delete')}}" class="btn btn-secondary btn-sm confirm">
                            {{__('admin_pages.delete')}}
                        </a>
                    </span>
                </div>
            </div> 
        </div> 
    </div>
    @endforeach
    @php 
    } else {
    @endphp
    <div class="col-xs-12">
        <div class="alert alert-success">{{__('admin_pages.no_product_results')}}</div>
    </div>
    @php 
    }
    @endphp
</div>
{{ $products->links() }}

<!-- Modal Add/Edit products -->
<div class="modal fade" id="modalAddEditProducts" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">{{__('admin_pages.product_settings')}}</h4>
            </div>
            <div class="modal-body">
                <form method="POST" action="updateProduct()" id="formManagerProducts">
                    {{ csrf_field() }}
                    <div class="md-form">
                        <i class="fa fa-product prefix grey-text"></i>
                        <input type="text" name="quantity"
                               value="{{$productInfo != null? $productInfo['product']->quantity: ''}}"
                               id="defaultForm-quantity" class="form-control">
                        <label for="defaultForm-quantity">Quantità</label>
                    </div>
                    <div class="md-form">
                        <i class="fa fa-product prefix grey-text"></i>
                        <input type="text" name="name"
                               value="{{$productInfo != null? $productInfo['translations']->name: ''}}"
                               id="defaultForm-name" class="form-control">
                        <label for="defaultForm-name">Name</label>
                    </div>
                    <div class="md-form">
                        <i class="fa fa-product prefix grey-text"></i>
                        <input type="text" name="description"
                               value="{{$productInfo != null? $productInfo['translations']->description: ''}}"
                               id="defaultForm-description" class="form-control">
                        <label for="defaultForm-name">Descrizione</label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">{{__('admin_pages.close')}}</button>
                <button type="button" class="btn btn-secondary"
                        onclick="admin/removeProduct()">{{__('admin_pages.save_changes')}}</button>
            </div>
        </div>
    </div>
    <script>
        @php
            if (isset($_GET['edit']))
    {
        @endphp
        $(document).ready(function () {
            $('#modalAddEditProducts').modal('show');
        });
        $("#modalAddEditProducts").on("hidden.bs.modal", function () {
            window.location.href = "{{ lang_url('admin/products') }}";
        });
        @php
            }
        @endphp
    </script>
@endsection