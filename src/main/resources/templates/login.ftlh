<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>

<@h.page>
    <section class=" text-center text-lg-start">
        <style>
            .rounded-t-5 {
                border-top-left-radius: 0.5rem;
                border-top-right-radius: 0.5rem;
            }

            @media (min-width: 992px) {
                .rounded-tr-lg-0 {
                    border-top-right-radius: 0;
                }

                .rounded-bl-lg-5 {
                    border-bottom-left-radius: 0.5rem;
                }
            }
        </style>
        <div class="card mb-3">
            <div class="row g-0 d-flex align-items-center">
                <div class="col-lg-4 d-none d-lg-flex">
                    <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" alt="Trendy Pants and Shoes"
                         class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
                </div>
                <div class="col-lg-8">
                    <div class="card-body py-5 px-md-5">

                        <form action = "/login" method = "post">
                            <div class="form-outline mb-4">
                                <input type="email" name = "email" id="email" class="form-control" />
                                <label class="form-label" for="email">Email address</label>
                            </div>

                            <div class="form-outline mb-4">
                                <input type="password" name = "password" id="password" class="form-control" />
                                <label class="form-label" for="password">Password</label>
                            </div>

                            <div class="row mb-4">
                                <div class="col">
                                    <a href="#!">Forgot password?</a>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </section>
</@h.page>