<?php

namespace App\Console\Commands;

use App\Models\AdvertisementOrder;
use App\Models\AdvertisementOrderDetail;
use App\Models\Job;
use App\Models\PackageOrder;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class ExpirePackageCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'expirepackage';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        $CompanyActivePackages  = PackageOrder::where('status', 'activate')->get();
        foreach($CompanyActivePackages as $package){
            if($package->expiry_date <=  date('Y-m-d')){
                $find_package=PackageOrder::find($package->id);
                $find_package->expiry_date = date('Y-m-d');
                $find_package->status =  'expired';
                $find_package->save();
                Job::where('company_id', $package->company_id)->update(['plan' => 'expired','expiry_date'=>date('Y-m-d')]);
            }
        }

        $CompanyActiveAdvertisementPlan = AdvertisementOrder::where('status','Activate')->get();
        foreach($CompanyActiveAdvertisementPlan as $ads){
            if($ads->expiry_date <=  date('Y-m-d')){
                $find_package=AdvertisementOrder::find($ads->id);
                $find_package->expiry_date = date('Y-m-d');
                $find_package->status =  'expired';
                $find_package->save();
                AdvertisementOrderDetail::where('advertisement_order_id', $ads->id)->update(['plan' => 'expired','expiry_date'=>date('Y-m-d')]);
            }
        }
    }
}
