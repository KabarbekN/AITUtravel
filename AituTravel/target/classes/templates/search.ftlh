<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<@h.page>
    <div class="container" style="margin: auto auto auto auto">
        <h3 class="mt-md-5">Railway and Avia tickets </h3>
        <h2>Searching tickets</h2>
        <form action="/" method="get">

            <label for="departureCity"> From </label>
            <input type="text" name="departureCity">
            <label for="arriveCity"> Where </label>
            <input type="text" name="arriveCity">
            <label for="dateOfTicket"> Day of departure</label>
            <input type="text" name="typeOfTransport">
            <input type="date" name="dateOfTicket">
            <input type="submit" class="btn btn-primary" value="Search">
        </form>
        <div class="container">
            <img src="https://upload.wikimedia.org/wikipedia/commons/d/df/Kazakhstan_rayons.png" align="center" style="width:800px; height: 500px; object-position: 100% 50%;">
        </div>
    </div>
    <@f.footer>

    </@f.footer>
</@h.page>