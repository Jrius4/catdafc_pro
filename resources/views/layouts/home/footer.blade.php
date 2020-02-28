
<footer class="site-footer border-top">
    <div class="container">
    <div class="row">
    <div class="col-lg-4">
      <div class="mb-5">
        <h3 class="footer-heading mb-4">About Catda F.C</h3>
        <p>
            In the 2017-18 season, we were crowned the champions of the Nakawa District and thus promoted to the 3rd Division in the Ugandan Football hierarchy; Kampala Regional League.
        </p>
      </div>

    <div class="mb-5">
      <h3 class="footer-heading mb-4">Recent Blog</h3>
    <div class="block-25">
      <ul class="list-unstyled">

        @foreach ($mostRecent as $row)

        <li class="mb-3">
            <a href="{{ route('blog.show', $row->slug) }}" class="d-flex">
                @if ($row->image_thumb_url)
                    <figure class="image mr-4">
                        <img src='{{ $row->image_thumb_url}}' alt="" class="img-fluid">
                    </figure>
                @endif

              <div class="text">
                <h3 class="heading font-weight-light">{{$row->title}}</h3>
              </div>
            </a>
        </li>

        @endforeach

      </ul>
    </div>

    </div>
    </div>


    <div class="col-lg-4 mb-5 mb-lg-0">
    <div class="row mb-5">
    <div class="col-md-12">
    <h3 class="footer-heading mb-4">Quick Menu</h3>
    </div>
    <div class="col-md-6 col-lg-6">
    <ul class="list-unstyled">
    <li><a href="javascript:void(0)">Home</a></li>
    <li><a href="javascript:void(0)">Matches</a></li>
    <li><a href="javascript:void(0)">News</a></li>
    <li><a href="javascript:void(0)">Team</a></li>
    </ul>
    </div>
    <div class="col-md-6 col-lg-6">
    <ul class="list-unstyled">
    <li><a href="javascript:void(0)">About Us</a></li>
    <li><a href="javascript:void(0)">Privacy Policy</a></li>
    <li><a href="javascript:void(0)">Contact Us</a></li>
    <li><a href="javascript:void(0)">Membership</a></li>
    </ul>
    </div>
    </div>
    <div class="row">
    <div class="col-md-12">
    <h3 class="footer-heading mb-4">Follow Us</h3>
    <div>

    <a href="javascript:void(0)" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
    <a href="javascript:void(0)" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
    <a href="javascript:void(0)" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
    <a href="javascript:void(0)" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>

    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-4 mb-5 mb-lg-0">
    <div class="mb-5">
    <h3 class="footer-heading mb-4">Watch Video</h3>
    <div class="block-16">
      <figure>
        <iframe src="https://www.youtube.com/embed/chY5NuVAC38" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </figure>
    </div>
    </div>
    <div class="mb-5">
    <h3 class="footer-heading mb-2">Subscribe Newsletter</h3>
    <p>Sign up FOR FREE with your email address</p>
    <form action="javascript:void(0)" method="post">
    <div class="input-group mb-3">
    <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
    <div class="input-group-append">
    <button class="btn btn-info" type="button" id="button-addon2">Send</button>
    </div>
    </div>
    </form>
    </div>
    </div>
    </div>
    <div class="row pt-5 mt-5 text-center">
    <div class="col-md-12">
    <p>

    Copyright &copy; All rights reserved | This is designed by <a href="javascript:void(0)" target="_blank">LEERO SPORTS</a>

    </p>
    </div>

    </div>
    </div>
  </footer>


