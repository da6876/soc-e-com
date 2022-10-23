<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <link href="img/logo/logo.png" rel="icon">
  <title>SOC Bazar - @yield('title')</title>
  
  <link href="{{asset('public/admin/vendor/fontawesome-free/css/all.min.css')}}" rel="stylesheet" type="text/css">
  <link href="{{asset('public/admin/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
  <link href="{{asset('public/admin/css/ruang-admin.min.css')}}" rel="stylesheet">
  
  <link href="{{asset('public/admin/vendor/datatables/dataTables.bootstrap4.min.css')}}" rel="stylesheet">

  <!-- Select2 -->
  <link href="{{asset('public/admin/vendor/select2/dist/css/select2.min.css')}}" rel="stylesheet" type="text/css">
  <!-- Bootstrap DatePicker -->  
  <link href="{{asset('public/admin/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css')}}" rel="stylesheet" >
  <!-- Bootstrap Touchspin -->
  <link href="{{asset('public/admin/vendor/bootstrap-touchspin/css/jquery.bootstrap-touchspin.css')}}" rel="stylesheet" >
  <!-- ClockPicker -->
  <link href="{{asset('public/admin/vendor/clock-picker/clockpicker.css')}}" rel="stylesheet">

</head>
