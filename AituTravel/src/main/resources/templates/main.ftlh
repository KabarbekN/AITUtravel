<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<@h.page>
    <!DOCTYPE html>
    <html>
    <head>
        <title>AituTravel</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>
    <body>
    <div class="col-lg-6 col-md-8 mx-auto my-5">
        <h4 class="fst-italic " align="center" style="color:#fff; font-size:25px;">Helping Others</h4>
        <h1 class="fst-italic" align="center" style="color:#fff;font-size:60px;">Live &amp; Travel</h1>
        <p class="lead" align="center" style="color:#fff; font-size:15px;">Special offers to suit your plan</p>
    </div>
    <div class="img-fluid mx-auto  rounded" style="inset: 0; width: 90%; z-index: -1; background-image: url('https://morena.kz/foto/allfoto/ozera/oz2.jpg'); background-size: 100% 100%; height: 60%; position: absolute; opacity: 1; ">
    </div>
    </div>
    <#--Search info side-->
    <div class="container" align="center" style="margin: 0 auto 0">
        <h3 class="mt-md-5" style="color:#fff;  font-size:20px;">Railway and Avia tickets </h3>
        <h2 style="color:#fff;">Searching tickets</h2>
        <form action="/" method="get">

            <label for="departureCity" style="color:#fff;"> From </label>
            <input type="text" name="departureCity">
            <label for="arriveCity" style="color:#fff;"> Where </label>
            <input type="text" name="arriveCity">
            <label for="dateOfTicket" style="color:#fff;"> Day of departure</label>
            <input type="text" name="typeOfTransport">
            <input type="date" name="dateOfTicket">
            <input type="submit" class="btn btn-primary" value="Search">
        </form>
    </div>
    <br><br><br><br>
    <#--Search info side end-->

    <#--All tickets list-->
    <div class="container" align="center" style="width: 1100px">
        <h1>All tickets list</h1>
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-0">
            <#list ticketsList as ticket>
                <div class="container album col col-lg-6 column-margin shadow-sm" style="padding: 5px 5px;border-radius: 10%; width: 300px; height: 300px; margin: 20px 20px 20px; background-color: #87CEFA"align="center">

                    <h3>Type: ${ticket.typeOfTicket}
                    <#if ticket.typeOfTicket=="train">
                        <i class="bi bi-train-front-fill"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"  class="bi bi-train-front-fill" viewBox="0 0 16 16">
                            <path d="M10.621.515C8.647.02 7.353.02 5.38.515c-.924.23-1.982.766-2.78 1.22C1.566 2.322 1 3.432 1 4.582V13.5A2.5 2.5 0 0 0 3.5 16h9a2.5 2.5 0 0 0 2.5-2.5V4.583c0-1.15-.565-2.26-1.6-2.849-.797-.453-1.855-.988-2.779-1.22ZM6.5 2h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1Zm-2 2h7A1.5 1.5 0 0 1 13 5.5v2A1.5 1.5 0 0 1 11.5 9h-7A1.5 1.5 0 0 1 3 7.5v-2A1.5 1.5 0 0 1 4.5 4Zm.5 9a1 1 0 1 1-2 0 1 1 0 0 1 2 0Zm0 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0Zm8 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0Zm-3-1a1 1 0 1 1 0 2 1 1 0 0 1 0-2ZM4 5.5a.5.5 0 0 1 .5-.5h3v3h-3a.5.5 0 0 1-.5-.5v-2ZM8.5 8V5h3a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-3Z"/>
                        </svg>
                    <#elseif ticket.typeOfTicket=="airplane">
                        <i class="bi bi-airplane-engines-fill"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" style="transform: rotate(90deg);" class="bi bi-airplane-fill" viewBox="0 0 16 16">
                            <path d="M6.428 1.151C6.708.591 7.213 0 8 0s1.292.592 1.572 1.151C9.861 1.73 10 2.431 10 3v3.691l5.17 2.585a1.5 1.5 0 0 1 .83 1.342V12a.5.5 0 0 1-.582.493l-5.507-.918-.375 2.253 1.318 1.318A.5.5 0 0 1 10.5 16h-5a.5.5 0 0 1-.354-.854l1.319-1.318-.376-2.253-5.507.918A.5.5 0 0 1 0 12v-1.382a1.5 1.5 0 0 1 .83-1.342L6 6.691V3c0-.568.14-1.271.428-1.849Z"/>
                        </svg>
                    </#if>
                    </h3>

                    <h3>Direction ${ticket.departureLocation} — ${ticket.arriveLocation}</h3>
                    <p>Departure date and time ${ticket.departureDate} ${ticket.departureTime} Arrival
                        date and time ${ticket.arriveDate} ${ticket.arriveTime}</p>
                    <p><strong>Cost: ${ticket.cost}</strong> and Ticket Class ${ticket.ticketClass}</p>
                    <a class="btn btn-warning" href="/main-ticket-info/${ticket.id}">Select...</a>

                </div>

            <#else>
                <h3>No tickets</h3>
            </#list>
        </div>
   </div>


    <@f.footer>

    </@f.footer>
    </body>
    </html>
</@h.page>

