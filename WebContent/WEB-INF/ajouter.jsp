<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter une ville</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
	<br />
	<div class="card w-25 border-0 text-center rounded mx-auto d-block"
		style="width: 18rem;">
		<img class="mt-2" alt=""
			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAjVBMVEX///8AAAD39/fc3Nzw8PD09PTh4eFVVVXl5eXd3d1dXV0eHh78/PwtLS329vbX19cyMjLs7OxpaWlCQkJxcXFKSkrNzc0oKCjR0dGCgoJYWFh4eHgZGRm2tra+vr7GxsahoaE3NzcLCwtiYmKSkpKvr6+JiYl/f39GRkaXl5caGhoSEhJ1dXWOjo6fn5+qG2JUAAARq0lEQVR4nO1daXfiOgxlLy1QCh1KO22BQNdh2v//817JArF0JcshCcw5734MIeRiSdZiy43G//gf/+MfQavT6ffa7f6kcz089buUjuv26+PVqJlh8DF9WfZP/VIlYrwZNAGit/tTv1mK8fPL9Ori4urXalHof39A9FK89cp+21AMFxvnjdYPwf/7u0LwBxfLKt7biskLEq7XIDtxrxP8we2iqvf3AvHbYR7yShdehs3mx2lk9Q6ahwRX19andNYGhj/62KqSCsaX/kp3xse0TQSbzdG4UjYAv3yv9Gx7zqWRYbO5qpIOx2//G72aHtR6MlP8VTEnBxbz0LTZm6mZYfO2PmWc2d6obXlW386wGXWrZpbCNII/mJsmxlUAxRuzjT4KVoI/Nt70vO8AilEdgmoU0RgmOW18gm+uBQs0q5hdI4xgc2p7JnKO3hbYXj9US08Q0Y+Hz++Xxzn4xOhuIffhtdH7i37MNguVSvBhkn44vir8jyOKP0HFZAOuVxoaAxGN8sO0ZB9bn/wmUFlw77dKVQQjOHONW48aCKt/isLEmEqXC8aqVFJ5AIK3dMqjnvSn+emA4ir+gA9vVRM/ENEPPqeT2e3W/nxAMaHCfIKKPFRAcIbmX/eWdcAvPLIf+Eo+eKXXL8sgRAFE9AM6GGRym6B7BHAvPP2AmtoqBhEQvMFu59i9KyhyZVFnNvlR7uXPGDYdjHHt3pbPvU3a457uWFKKH+n11si9XrpngwhKr9raOvcdpot2bPdHunWlc0M2WHfkejm89gAiKjv5hOF+DPcW8aaj/NSQTKj7MPqvcL0UBBFsdN07Mz3M2cOBZn2IW/SYXSfCf1EStxhARLV8ApGnPnhBdRRvBSbEnpYYCyNPRnMq3DJENh+6s7ZghmO4LsNo/1923HcoL9mPpgnVHrr3RulVIgiKlBO/7yDRrib+LYUdfzPP2zVYJekluTqkD4HuUIyJa6kODN0KR4A7GEpQFVEWP6XCNGaPuZAEdehG0oe5ncyJ5Uz6yIqqBBmT9PqCP0iyhiJD4g6UkuYHBOeqDWM5+kxbUID7Gz9j4tZqcjOL+zeVkc1AOqgS5GWW7I/mYWxTylO5YjDoSo8vwXFDBLWJDCmb8iyJoptbdFIWzifHG1MkoqoOgkJZNmkNI8gQRkHurc6f4GjoVe0EQZ1sk33Wlaqpj+wxJNp1tM2RBJZACUSwiKJS5/4LHbGGRrWJPsaxmE5uUfOLDECeTKAO5v3/iVzLdkeRCsLc+dSZLmx1nwCCT6Eimh8e4qc4uMjNByzn9KUwPKZIA0R0pI4gIpi3ER1lVUOz+d6O56DJa8Q+ch0XR0qjI8YQELxRE0pIRB1T10U1jRxGF5urW3CdOAUf+c+OcEyRFQ0mSHwy9PoGkOqcIwnFZwukg8EiSj0ye1U1DzKpt7QP7QjWQTRNsP83YD3CAVvyu66s2ArMHODPHqlxCiLIfWpU5vWChvHPzqcFPW8koqoOIhEFcREvu/nxQh/iCoKtgk4BRFRNjDV64M1QVETuQ8EUBXPoXNdvHVIu0AiO1AeZdDCG67Z9P4MveggSOfgAP+IFmiZ0HQTOmBC6E1ODgn4HX/wRbohfxNAgix4solJuggzaa6MfaQRBSpukhAsEwKXooDgNk/e7aWjrN6fod+li4mCKgKBHREMIMgnZ2foeXsL5gWv/TK7fwwgCEd2WpYMxSGT7J3a2+3yd/kZaCs99wyCKSAdVgtZpYg8ipvsExt3bRzYLbKO/CzkkatGfC6KIdFAliCZ6jytMh+uwiLjbG98v78ZtzwwHVjKYKYIR/KOu10Iiqo5gA/wpoQvwO/w3wawJUYqI+gt61PvWIxYAFKWZKAIRXQcTNERrbDXwvCaKgKBHRIsRBCst9MAaoBBFIKLrYB201Zy7/Iuh5RVE0RMK16SDCdjappB1bwmQEVfXDwER3aojWFAHU4Blv7NAkxo4imAR7lZdM1ZYBxNMwNeb72EGB1EURxHdrP6ll4V1MAUOmt6hXrTGY8g9hCJfDKgTDHbVOIQdfbNV30nwtvqrOAE5R9kYJEgCRZbF1EX0OB1MIW4Ji6Yvi3H78rI9XrxMbw7cQTXBPoo39DZ1LdUlKD4EjuAOhk1hDkbAGUcUYbmVjaEWEfYK+KIQQTs2mrhsiQQVUGyxMVTmQrQDq2BiHRb1FaC6nklQr1ExQQp7C4RLIobe7ZkEI7A+wiCoQ1wtwYKKdPCI5YHSHulSKQoEceiLRLSQDmbwJRMZRSConqIlFNEUjGIp04SLSaBJterinqJGsPlEpv2SpgkCf9rbASpqI4rp+g9RRBO4gtorVwf36Hr6RRCMjFN/TLHlK8nmY/zSdTD36KCyIhJUNC9uhrqIpthTrEAHc+g92HoqJBSNozjtfoCrFINUF9lmtGZpI5hg+GyvgFsdOGVtS55iPIr9Y8MlE8nFL7BWYwCuodyVvSsDQ79UV82D3t33r6uPm8F2O5jfXvyEGe3GEK16MU4aNmz7yNmuhmCKVrfT6XSzSLGFFhUYvRsb5kBOShdRDWgUy6XIUaqRMcC49kXXxW6Ac1GpiCIMjYsklVH80w/wn+oewQbWRasDFyMJB40Ua9XBPZCgGqP+5mFRioli7SKawiiokOKhMgLy7edCsDEEgZbVgcttsvOO4mlENAYyN1YHLrcLzTOKJyTYwGuZgKCiKCE32uoonkxEE0BBNU4auY1aIMd/JgQxReuksRdoRUxPK6IxoC4Cc4PaMKaOnkLwBBM9AKIIBBVRjAVaIXhyEU1gnTTozv30vrMfwYZ90kAUI6Vn2oY/4mQ4QhcBruLVZoOK+04FwjhpmCi+/dy3XJ5Lq+IMQ1C2QqOIBJWg8q5oBYHMDYr6vRTPlWADCipy4DyJjaLbUWoBENQnUC5TR/GsCUJdRKVrheIZi2gCVJgDq2REi3reIxgDUQTrZASK/wDBxhC1UwSjCAX17EU0ASrLGXWxxm7ER6AF1+QYBRW56+cGqQAKNuxBN/zsKco1eqMu6k2STg9tEYKVYj09pQtCr9EDQYW5m9BtAjXCt8oCUETZcL0HxinhWSfThIKKKOrNkk4H7zoZPIooVRy8n6UWWNbJwE0ciOI56qJlBIVRhIJ6dvMi0sH1GLEG3s2/QPE6Ai85wT2ojIKqb3SuG9dgKVcc3EPlBBTRcobgvWUVAg1Vmr3oIopGXRycjaAiI7NvHCHILwMaxcGZWFQkibnOGGiArSXU89BFNIJ/8hEvElQUB0JBPQeK4P3JtglEEZVtEMXgDcnlA+zP4M1bIkARjCISVL0FTw0A4c+WvRPs8YMiiHPURd5a4g/LOglNjKyrp048iizJbSaIdRFNGlwoagSvT7OiptKGCk0aaOmz3oKgStwhh4V0AVP7bCFdRKOIyjs1oCfsyHAoehqJoXU3SBeL9dY6Di35mNlclx5vpzTrpKE35KkAQ/XMuf0oGlrBWSeNmikuIv21U4qmfX5WB65Oipf+nTSxoKIR/MMvWR242nSxA09co7jHI/iOKlPWSKPaM88ytKx9JO8xQVh8M+tiDWcPP3sa1upI2tUAXx0tSoH7NNJRHPbv7+6Wy7t7z+E/wbgv2K7WIQhH0Urxx7u5X01Hhw1w6/lmZT4/zoc+ql8H4ND8C1E0OnAYm9cSUjpdz0HRAQShoEIHLmCL599jR/LVtjNShtsyClBEDlzQ/sWjznlfHmVgdqD96ZC5MTpwMqKi46jN8OvPicX88GUkRkENOXT5B9MiaZ2JtnF9d84pTPq6QB0GgeOAHLgQXdzBeKp6DtoMv0nz2qAPi5cgtqjH6mIz+HTCsfIPzvbJeekQkBTSSidkbo4XVE97ZQJhW90OUd5yqYIqL+Uy6mKYuflx7gKabcsmlKRjFIpal0+gi2YHToO5XaDY2vuTne4Au73toC/GM/qooaNobZkuLQJ9ACZPMki+5ZSIYgm6aGvAKtiPKfqyNIT+9aLGSYO2HxhdbKZXM/nwEdNqDiijMyziwpzJ2u8DoFEEk0aO4sX3uJPccd25+xQsgGHHG1wcKZxsSE3BKPaCftsU3ujAtZLRHq0o/cknnNL84sMlALYRjEGXlD43uuO2OThFgoqErLN8XuA/7RUZfd+WG54O/RRfmaacQo+ZAftH0SgqaIHYbqQf58PWRT4oqhuRe4NdfKMuarjn4Z1qBVp02DWHlpZnCmyKBIIaurYNdHjQcnNUbrSXZge3FUn6AUGVFmFOLtt5HJJRzJVXnHAmo9pL0yZ9xbYUAIrw5K82yxbN37L72Efia7doA6qV8mp0sl8XTAohH5U/CtZLsjwqW1wndtum/+dMunEHKhurYgQxRSqoUmOCNGDq0JlREHRWb9BklC5V8NhoDUgXXTccdB1PkO0Xpon2FfyhIBll+3+PSXiBUXSdL7nxQja9E1XE0kfFTpVR+qcVOiZIY5D3E5WtmdlhjNQqoDCByajWoXlIUzRHngTMKebnKa2qt0rvecCXc2Czm9p7nk72gWkgDhakjA6fqQXX7JRLEiyDDf1UF26092FHeh9f4aOjmKuLgupqDlksQTZAMsPH/ic1WKbuuSUeDKW4T0j4Kpc9yIC+Pz1TR39nmlt4KqWaRwQ1s5LooBcHaQsNMqNQh5raUf1AUXp3SU0eXIrZKyotelKkIU3kXPx2n81kVDWNNAsw0m4OgOsVp5bO0J0w/X3XT3ZtX4fGWHomgEb2ZdVil+gd6I/dzmYzGuKt4jtdz86doKnUDdQXoQNeWqcVl+EjuJaaeDquSTDiipZzLjOTUT3TQb3cYgdXehkmYkYnscQ5pEMSS5Fr/7a5BzO3VpXRFn164GFygQzJXJjKC/XRYsvvHpG2zj2Yxo9qpmTJUnHlbf9wGSZ9zsmPZVabLOCNx4S4IYfnstBLyI3u0OJRwLd893EME8c0gv8+zUWsdhfdOf0whix4VA75WfIm1LpRCoP73kloQ7OFyRwyIldjU+B6pk/7x9J+Fltxrm+hAyKOCQspXBM5SE5jpD/Y7nS6NKWRBJOuCOz9arZgW5TRBSqHlNoXj4QHSSbCcojvPaCSvRlz+qQwCA6gP4MehJbreCSOBPNGONKzF1z3Lsv8URl9EiyjsOgXnpRTHK56pW6bv41rmnZyjcRK+DZWq450REvJm5PcqTargvhWfKT/BJHxRNuYGmMH7FkSlFW5BGlSNI2BPT3Csvwx+XLy57P8BxqTa/E4iDLiXgckaMnyKPo5RlmUFbm8h4A1llGxSey8gtZ47i9kk7ZazM8ygsRSPMIvAhntiAP4UDwDLIP8WuajaTNGFskSeVyAa2iXrqiB89LW57q/R34lVbGuPGNk1pwM4Xqnb0xGWS6iKypAefEE+UXyO1mUI88YmeUAMQib65l7ImrgTXXNKWlSJvslacbI/H6abt3NFSxHR1KeE3EA36rQwBQ0BbRN5VQwNlJhJo4HaMmNyKgoF1WY0BxoWiYzlT00ilmZkC00XO2u0qDJqeBOxEpB1c3xmHu4N/CL3/NBHjfvWfqED3ADMcxbD3EAK9TADGyp08anFHyp6Cq+znt2ZKPYFzXwq0INzMDzo7f6ylhet0mLtaAwnlAUB3BwZAXNCO7lr7UwG6ysS29v8U92gto/mQZm6ILzuq6k2hbIqxxCOhTyPYgDGNXXoBmWCx9gURcOx2EJQMhRgLX2F8VLOn8v3Oi8t4rgffk0jJniTWlpbRukxePR1/N9v9W67i1fH4F4xnBL10aKX/XyAxV3O2ieyUIxqseEOghewZ6B5/78FEsP5E1QNnxoiMCjPBSjmjVwj+BF+jvg7K1K8TQDGKMfBROUcr0yxVNo4AFy/C1AXgAkUVSXDNWBsFOmlZIZpnhbwx54H8aRmd9Ub30KKJ58ABMY+xyMvCUwSjHSVu3Viol/Oc1PPGiI6lyKJzShHBO5IU6MJ2MVOkdxdjYDmKL7Ctu9x9hoBsbFPmZZVfamR6C/mvJNTvPHRVBjl+vv23Uzejl1qzsRw/7z99/ZaLturp9uLh5Wy46uff8BdW/1YLvkHJkAAAAASUVORK5CYII="
			height="80">
			
		<form method="post">
			<label for="exampleFormControlInput1" class="form-label">Code INSEE</label> 
			<input type="text" name="codeINSEE" id="codeINSEE" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
		
			<label for="exampleFormControlInput1" class="form-label">Nom de commune</label> 
			<input type="text" name="nomcom" id="nomcom" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">

			<label for="exampleFormControlInput1" class="form-label">Code postal</label> 
			<input type="text" name="cp" id="cp" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
			
			<label for="exampleFormControlInput1" class="form-label">Libelle Acheminement</label> 
			<input type="text" name="libelle" id="libelle" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
				
			<label for="exampleFormControlInput3" class="form-label">Ligne 5</label> 
			<input type="text" name="ligne5" id="ligne5" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
			
			<label for="exampleFormControlInput1" class="form-label">Latitude</label> 
			<input type="text" name="latitude" id="latitude" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
			
			<label for="exampleFormControlInput1" class="form-label">Longitude</label> 
			<input type="text" name="longitude" id="longitude" class="form-control w-75 rounded mx-auto d-block p-3 mb-2 bg-light text-dark">
			
			<br /> 
			<a href="/ESEO_TP_C/listeville">
				<button type="submit" class="btn btn-danger">Ajouter</button>
			</a>
		</form>
		<br />
		<div class="mb-3">
			<a href="/ESEO_TP_C/listeville">Retour</a>
		</div>

	</div>
</body>
</html>