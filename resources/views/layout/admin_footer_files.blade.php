<!-- Modal Logout -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to logout?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary" data-dismiss="modal">Cancel</button>
                <?php $user_type_id = Session::get('user_type_id'); ?>
                @if($user_type_id == '29')
                    <a href="{{url('ShopAdminLogout')}}" class="btn btn-primary">Logout !</a>
                @else
                    <a href="{{url('AdminUserLogOut')}}" class="btn btn-primary">Logout</a>
                @endif
            </div>
        </div>
    </div>
</div>

<!-- Scroll to top -->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<script src="{{asset('public/admin/vendor/jquery/jquery.min.js')}}"></script>
<script src="{{asset('public/admin/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('public/admin/vendor/jquery-easing/jquery.easing.min.js')}}"></script>
{{--
  <script src="{{asset('public/admin/js/ruang-admin.min.js')}}"></script>
--}}
{{--  <script src="{{asset('public/admin/vendor/chart.js/Chart.min.js')}}"></script>--}}
{{--  <script src="{{asset('public/admin/js/demo/chart-area-demo.js')}}"></script>  --}}


<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- Page level plugins -->
<script src="{{asset('public/admin/vendor/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('public/admin/vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>

<!-- Page level custom scripts -->
<script>
    $(document).ready(function () {
        $('#dataTable').DataTable(); // ID From dataTable
        $('#dataTableHover').DataTable(); // ID From dataTable with Hover
    });
</script>
<!-- Select2 -->
<script src="{{asset('public/admin/vendor/select2/dist/js/select2.min.js')}}"></script>
<!-- Bootstrap Datepicker -->
<script src="{{asset('public/admin/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
<!-- Bootstrap Touchspin -->
<script src="{{asset('public/admin/vendor/bootstrap-touchspin/js/jquery.bootstrap-touchspin.js')}}"></script>
<!-- ClockPicker -->
<script src="{{asset('public/admin/vendor/clock-picker/clockpicker.js')}}"></script>

<!-- Javascript for this page -->
<script>
    $(document).ready(function () {


        $('.select2-single').select2();

        // Select2 Single  with Placeholder
        $('.select2-single-placeholder').select2({
            placeholder: "Select a Province",
            allowClear: true
        });

        // Select2 Multiple
        $('.select2-multiple').select2();

        // Bootstrap Date Picker
        $('#simple-date1 .input-group.date').datepicker({
            format: 'dd/mm/yyyy',
            todayBtn: 'linked',
            todayHighlight: true,
            autoclose: true,
        });

        $('#simple-date2 .input-group.date').datepicker({
            startView: 1,
            format: 'dd/mm/yyyy',
            autoclose: true,
            todayHighlight: true,
            todayBtn: 'linked',
        });

        $('#simple-date3 .input-group.date').datepicker({
            startView: 2,
            format: 'dd/mm/yyyy',
            autoclose: true,
            todayHighlight: true,
            todayBtn: 'linked',
        });

        $('#simple-date4 .input-daterange').datepicker({
            format: 'dd/mm/yyyy',
            autoclose: true,
            todayHighlight: true,
            todayBtn: 'linked',
        });

        // TouchSpin

        $('#touchSpin1').TouchSpin({
            min: 0,
            max: 100,
            boostat: 5,
            maxboostedstep: 10,
            initval: 0
        });

        $('#touchSpin2').TouchSpin({
            min: 0,
            max: 100,
            decimals: 2,
            step: 0.1,
            postfix: '%',
            initval: 0,
            boostat: 5,
            maxboostedstep: 10
        });

        $('#touchSpin3').TouchSpin({
            min: 0,
            max: 100,
            initval: 0,
            boostat: 5,
            maxboostedstep: 10,
            verticalbuttons: true,
        });

        $('#clockPicker1').clockpicker({
            donetext: 'Done'
        });

        $('#clockPicker2').clockpicker({
            autoclose: true
        });

        let input = $('#clockPicker3').clockpicker({
            autoclose: true,
            'default': 'now',
            placement: 'top',
            align: 'left',
        });

        $('#check-minutes').click(function (e) {
            e.stopPropagation();
            input.clockpicker('show').clockpicker('toggleView', 'minutes');
        });

    });
</script>
</body>

</html>
