<!-- BEGIN VENDOR JS-->

<script src="{{ asset('app-assets/vendors/js/vendors.min.js') }}" type="text/javascript"></script>

  <!-- BEGIN MODERN JS-->
  <script src="{{ asset('app-assets/js/core/app-menu.js ') }}" type="text/javascript"></script>
  <script src="{{ asset('app-assets/js/core/app.js ') }}" type="text/javascript"></script>
  <script src="{{ asset('app-assets/js/scripts/customizer.js ') }}" type="text/javascript"></script>
  <!-- BEGIN VENDOR JS-->

<script src="{{ asset('app-assets/vendors/js/tables/datatable/datatables.min.js') }}" type="text/javascript"></script>

  <script src="{{ asset('app-assets/js/scripts/tables/datatables/datatable-basic.js') }}" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
    $('.js-example-basic-multiple').select2({
        placeholder: 'Select an option'
    });
});
</script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  <script src="{{ asset('app-assets/toastr/toastr.min.js') }}"></script>
  @yield('script')