

                <div class="site-mobile-menu">
                    <div class="site-mobile-menu-header">
                      <div class="site-mobile-menu-logo">
                          <a href="#"><img src="{{ asset('soccer_assets/images/catda.png')}}" alt="Image"></a>
                      </div>
                      <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                      </div>
                    </div>
                    <div class="site-mobile-menu-body"></div>
        </div>
        <header class="site-navbar absolute transparent" role="banner">
            <div class="py-3">
            <div class="container">
            <div class="row align-items-center">
            <div class="col-6 col-md-3">
                <a href="https://www.facebook.com/Catdafc" class="text-secondary px-2 pl-0" target="blanck"><span class="icon-facebook"></span></a>
                <a href="https://twitter.com/CatdaClub" class="text-secondary px-2" target="blanck"><span class="icon-twitter"></span></a>
            </div>
            <div class="col-6 col-md-9 text-right">
            <div class="d-inline-block"><a href="#" class="text-secondary p-2 d-flex align-items-center"><span class="icon-envelope mr-3"></span> <span class="d-none d-md-block"><span>catdaclub@gmail.com</span></span></a></div>
            <div class="d-inline-block"><a href="#" class="text-secondary p-2 d-flex align-items-center"><span class="icon-phone mr-0 mr-md-3"></span> <span class="d-none d-md-block">+256 758 727 647</span></a></div>
            </div>
            </div>
            </div>
            </div>
            <nav class="site-navigation position-relative text-right bg-info text-md-right" role="navigation">
            <div class="container position-relative">
            <div class="site-logo logo">
            <a href="/"><img src="{{ asset('soccer_assets/images/catda.png')}}" alt=""></a>
            </div>
            <div class="d-inline-block d-md-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>
            <ul class="site-menu js-clone-nav d-none d-md-block">
            <li class="active">
            <a href="{{url('/')}}">Home</a>
            </li>
            <li><a href="{{url('/news')}}">News</a></li>
            {{-- <li><a href="/matches">Matches</a></li> --}}
            {{-- <li><a href="/team">Team</a></li> --}}
            <li><a href="{{url('/about')}}">About</a></li>
            {{-- <li><a href="/contact">Contact</a></li> --}}

           <!-- Adding new auth links -->

{{--
           <li class="has-children">
             <a href="#">
               Manage Tasks
             </a>
            <ul class="dropdown arrow-top">
                <li>
                    <a class="dropdown-item" href="{% url 'backend'%}">Admin Panel</a>
                </li>

            </ul>


           </li> --}}


         {{-- @auth
        <li class="has-children">
        <a href="#">Account</a>
        <ul class="dropdown arrow-top">
        <li><a href="{% url 'profile'%}">Profile</a></li>
        <li><a href="{% url 'account_email')}}">Change E-mail</a></li>
        <li><a href="{% url 'account_logout')}}">Sign Out</a></li>
        </ul>
        </li>
         @endauth
        @guest
            <li class="nav-item"><a href="{% url 'account_login')}}" class="nav-link ">Sign In</a></li>
            <li class="nav-item"><a href="{% url 'account_signup')}}" class="nav-link ">Sign Up</a></li>
        @endguest --}}
       </ul>
       <div class="navbar-text"><a href="#" class="search-btn"><i class="icon-search-1"></i></a></div>

           <!-- ending -->
            </ul>
            </div>
            </nav>
            </header>
