<#import "blocks/header.ftlh" as t>
<@t.page>
<!DOCTYPE html>
<html>
    <head>
        <title>${ticket.typeOfTicket}</title>
    </head>
    <body>
        <h1> AITU Travel</h1><hr>
        <div class="container">

            <h1>${ticket.departureLocation}  to   ${ticket.arriveLocation}</h1>
            <h2>${ticket.departureTime} --- ${ticket.arriveTime}</h2>
            <h2>${ticket.departureDate}   ${ticket.arriveDate}</h2>
            <h3>${ticket.cost}</h3>
            <form action="/main/delete/${ticket.id}" method="post">
                <input type="submit" class="btn btn-primary mb1 bg-red" value="Delete" style="background-color: orangered">
            </form>
        </div>

    </body>
</html>
</@t.page>