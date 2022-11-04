
{{-- @extends('layouts.app')
@section('content') --}}
<style>
    .clearfix:after {
       content: "";
       display: table;
       clear: both;
   }

.Invoice_container{
max-width: 750px;
margin: auto;
}

   header {
       padding: 10px 0;
       margin-bottom: 20px;
       border-bottom: 1px solid #aaaaaa;
   }

   #logo {
       float: left;
       margin-top: 8px;
   }

   #logo img {
       height: 70px;
   }

   #company {
       float: right;
       text-align: right;
   }

   #details {
       margin-bottom: 50px;
   }

   #client {
       padding-left: 10px;
       border-left: 6px solid #ED1C24;
       float: left;
       max-width: 50%;
   }

   #client .to {
       color: #777777;
   }

   h2.name {
       font-size: 1.4em;
       font-weight: normal;
       margin: 0;
   }

   #invoice {
       float: right;
       text-align: right;
   }

   #invoice h1 {
       color: #081351;
       font-size: 2em;
       line-height: 1em;
       font-weight: normal;
       margin: 0 0 10px 0;
   }

   #invoice .date {
       font-size: 1.1em;
       color: #777777;
   }

   table {
       width: 100%;
       border-collapse: collapse;
       border-spacing: 0;
       margin-bottom: 20px;
   }

   table th,
   table td {
       padding: 14px;
       background: #eeeeee;
       text-align: center;
       border-bottom: 1px solid #ffffff;
   }

   table th {
       white-space: nowrap;
       font-weight: normal;
   }

   table td {
       text-align: right;
   }

   table td h3 {
       color: #141414;
       font-size: 1.2em;
       font-weight: normal;
       margin: 0 0 0.2em 0;
   }

   table .no {
       color: #141414;
       font-size: 1.6em;
       background: #dddddd;
       text-align: center;
   }

   table .desc {
       text-align: left;
       color: #141414;
   }

   table .unit {
       background: #dddddd;
       text-align: center;
   }

   table .total {
       background: #dddddd;
       color: #141414;
       text-align: center;
   }

   table td.unit,
   table td.qty,
   table td.total {
       font-size: 1.2em;
   }

   table tbody tr:last-child td {
       border: none;
   }

   table tfoot td {
       padding: 10px 20px;
       background: #ffffff;
       border-bottom: none;
       font-size: 1.2em;
       white-space: nowrap;
       border-top: 1px solid #aaaaaa;
   }

   table tfoot tr:first-child td {
       border-top: none;
   }

   table tfoot tr:last-child td {
       color: #000;
       font-size: 1.4em;
   }

   table tfoot tr td:first-child {
       border: none;
   }

   #thanks {
       font-size: 2em;
       margin-bottom: 50px;
   }

   #notices {
       padding-left: 6px;
       border-left: 6px solid #ED1C24;
   }

   #notices .notice {
       font-size: 1.2em;
   }

   footer {
       color: #777777;
       width: 55%;
       height: 30px;
       position: absolute;
       bottom: 0;
       border-top: 1px solid #aaaaaa;
       padding: 8px 0;
       text-align: left;
   }
   </style>
<div class="Invoice_container py-5">
    <header class="clearfix">
 <div id="logo">
     {{-- <img src="{{url('/')}}/assets/zindaworkLogo.png"> --}}
 </div>
 <div id="company">
     <h2 class="name">© IDENBRID INC.™</h2>
     <div>176-Y, DHA Phase 4, Lahore</div>
     <div>0301-4345825</div>
     <div><a href="mailto:company@example.com">company@idenbrid.com</a></div>
 </div>
</header>
<main>
 <div id="details" class="clearfix">
     <div id="client">
         <div class="to">INVOICE TO:</div>
         <h2 class="name">Dear: {{$other_detail['company_name']}}</h2>
          <div class="phone_no">Phone no: +92{{$other_detail['phone']}}</div>
         <div class="address">Address: {{$other_detail['address']}}</div>
         <div class="email">Email: <a href="'mailto:'.{{$other_detail['company_email']}}">{{$other_detail['company_email']}}</a></div>
         {{-- <div class="position">Postition: Wordpress Developer</div>
         <div class="cnic">CNIC: 3540427931623</div> --}}
     </div>
     <div id="invoice">
         <h1>INVOICE #{{$other_detail['order_id']}}</h1>
         <div class="date">Date of Invoice: {{$other_detail['order_date']}}</div>
         <!-- <div class="date">Due Date: 30/06/2014</div> -->
     </div>
 </div>
 <p>Kindly check the following details</p>
 <table border="0" cellspacing="0" cellpadding="0">
     <thead>
         <tr>
             <th class="no">#</th>
             <th class="desc" colspan="2">PACKAGE NAME</th>
             <th class="unit">PRICE</th>
             <th class="total">TOTAL</th>
         </tr>
     </thead>
     <tbody>
         @foreach ($order_detail as $detail)

         @endforeach
         <tr>
             <td class="no">{{$detail->id}}</td>
             <td colspan="2" class="desc">
                 <h3>{{$detail->package_name}}</h3>
             </td>
             <td class="unit">{{$detail->package_price}}</td>
             <td class="total">{{$detail->package_price}}</td>
         </tr>
     </tbody>
     <tfoot>
         <tr>
             <td colspan="2"></td>
             <td colspan="2">GRAND TOTAL</td>
             <td>{{$other_detail['total_amount']}}</td>
         </tr>
     </tfoot>
 </table>

<table cellspacing="0" cellpadding="0">

<tr>
<th>Bank Name </th>
<td>UBL  / United Bank Limited</td>
</tr>
<tr>
<th>Branch Name </th>
<td>Ameen DHA Phase IV Branch, Lahore</td>
</tr>
<tr>
<th>Account Type </th>
<td>IDENBRID INC.</td>
</tr>
<tr>
<th>Account Holder</th>
<td>109000257371782</td>
</tr>
<tr>
<td>※Please make sure to check all details before proceeding to payment.</td>
<td></td>
</tr>
<tr>
  <td> ※Payment is non-refundable.</td>
  <td></td>
   </tr>
</table>
 <div id="thanks">Thank you!</div>
 <div id="notices">
     <div>NOTICE:</div>
     <div class="notice">Non Refundable</div>
 </div>
</main>
<footer>
    Invoice was created on a computer and is valid without the signature and seal.
   </footer>
</div>
{{-- @endsection --}}

