<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Http\Resources;
use App\Http\Controllers\Controller;
use App\Models\Admin\ProductsModel;
use Lang;
class ProductsController extends Controller{

    public function index(Request $request)
{
    $edit = $request->input('edit');
    $productInfo = null;
    $productsModel = new ProductsModel();
    $products = $productsModel->getProducts($request);
    if ($edit != null) {
        $productInfo = $productsModel->getOneProduct($edit);
        if ($productInfo == null) {
            abort(404);
        }
    }
    return view('admin.products', [
        'page_title_lang' => Lang::get('admin_pages.products_list'),
        'products' => $products,
        'productInfo' => $productInfo
    ]);
}

    public function setProduct(Request $request){
    $edit = $request->input('edit');
    $productModel = new ProductsModel();
    if ($edit > 0) {
        $productModel->editProduct($request->all());
        $msg = Lang::get('admin_pages.product_is_updated');
    }
    return redirect(lang_url('admin/products'))->with(['msg' => $msg, 'result' => true]);
}

}