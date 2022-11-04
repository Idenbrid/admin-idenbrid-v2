<?php


use App\Http\Controllers\BlogController;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\CategoryController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//  Route::get('/{any}', function () {
//      return view('welcome');
//     })->where('any', '.*');

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes();

Route::get('/dashboard', [App\Http\Controllers\HomeController::class, 'index'])->name('dashboard');
Route::group([
    'prefix' => 'admin'
], function () {

    // Blogs routes
    Route::get('blog/index', [BlogController::class, 'index'])->name('admin.blog.index');
    Route::get('blog/create', [BlogController::class, 'create'])->name('admin.blog.create');
    Route::post('blog/store', [BlogController::class, 'store'])->name('admin.blog.store');
    Route::get('blog/edit/{id}', [BlogController::class, 'edit'])->name('admin.blog.edit');
    Route::post('blog/update/{id}', [BlogController::class, 'update'])->name('admin.blog.update');
    Route::get('blog/destroy/{id}', [BlogController::class, 'destroy'])->name('admin.blog.destroy');
    //  Route::get('admin_thread_restore/{id}', [ThreadController::class, 'restore'])->name('admin.thread.restore');

    //Category Routes
 
    Route::get('category/index', [CategoryController::class, 'index'])->name('admin.category.index');
    Route::get('category/create', [CategoryController::class, 'create'])->name('admin.category.create');
    Route::post('category/store', [CategoryController::class, 'store'])->name('admin.category.store');
    Route::get('category/edit/{id}', [CategoryController::class, 'edit'])->name('admin.category.edit');
    Route::post('category/update/{id}', [CategoryController::class, 'update'])->name('admin.category.update');
    Route::get('category/destroy/{id}', [CategoryController::class, 'destroy'])->name('admin.category.destroy');

    // Works routes
    Route::get('work/index', [WorkController::class, 'index'])->name('admin.work.index');
    Route::get('work/create', [WorkController::class, 'create'])->name('admin.work.create');
    Route::post('admin_work_store', [WorkController::class, 'store'])->name('admin.work.store');
    Route::get('admin_work_edit/{id}', [WorkController::class, 'edit'])->name('admin.work.edit');
    Route::post('admin_work_update/{id}', [WorkController::class, 'update'])->name('admin.work.update');
    Route::get('admin_work_destroy/{id}', [WorkController::class, 'destroy'])->name('admin.work.destroy');
    // Route::get('admin_car_restore/{id}', [CarController::class, 'restore'])->name('admin.car.restore');

    // News routes
    Route::get('news/index', [NewsController::class, 'index'])->name('admin.news.index');
    Route::get('news/create', [NewsController::class, 'create'])->name('admin.news.create');
    Route::post('admin_news_store', [NewsController::class, 'store'])->name('admin.news.store');
    Route::get('admin_news_edit/{id}', [NewsController::class, 'edit'])->name('admin.news.edit');
    Route::post('admin_news_update/{id}', [NewsController::class, 'update'])->name('admin.news.update');
    Route::get('admin_news_destroy/{id}', [NewsController::class, 'destroy'])->name('admin.news.destroy');
    // Route::get('admin_car_restore/{id}', [CarController::class, 'restore'])->name('admin.car.restore');
});
// });
