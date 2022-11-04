<?php

namespace App\Jobs;

use App\Models\PackageOrder;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ExpireCompanyPackagePlan implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $company_id;
    public $package_id;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($company_id,$package_id)
    {
        $this->company_id = $company_id;
        $this->package_id = $package_id;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $package = PackageOrder::where('id',$this->package_id)->first();
        if($package->expiry_date < date('Y-m-d')){
            $package->status = 'expired';
            $package->expiry_date = date('Y-m-d');
            $package->save();
        }
    }
}
