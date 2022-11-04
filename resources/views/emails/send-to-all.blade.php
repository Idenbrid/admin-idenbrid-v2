<!DOCTYPE html>
<html>
<head>
  <title>ZindaWork</title>
</head>

<body>

    <p>Dear User {{$name}}</p>
	<p><b>{{ $data['title'] }}</b></p>, <br/>

	<p>
		 <b>{{ $data['description'] }}</b>
	</p>
    <p>
        <b><img src="{{asset('/storage/admin_user_email/'.$data['logo'])}}" width="200" height="200"></b>
   </p>
	<br/>
	<p>
		 You are receiving this email from Zindawork.
	</p>

	Thank You,
	<br/>
	<i>ZindaWork</i>

</body>
</html>
