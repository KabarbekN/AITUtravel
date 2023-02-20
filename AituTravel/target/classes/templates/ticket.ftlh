<#import "blocks/header.ftlh" as h>
<#import "blocks/footer.ftlh" as f>
<@h.page>
    <hr>
    <div class="container col-md-7 col-lg-8">
        <h1>Create a new ticket</h1>
        <form action="/ticket/create" method="post"><br>

                <label for="cost" >Price of this ticket</label>
                <input type="number" class="form-control" id="cost" placeholder="Set the price.." value="" required="">
                <div class="invalid-feedback">
                    Valid first name is required.
                </div>

                <label for="typeOfTicket">Type of this ticket(airplane/train)</label>
                <select class="form-select" name="typeOfTicket"  required=""> <br>
                    <option value="">Choose...</option>
                    <option>airplane</option>
                    <option>train</option>
                </select>

                <label for="ticketClass">Ticket class(eco/vip)</label>

                <select class="form-select" name="ticketClass" required=""><br>
                    <option value="">Choose...</option>
                    <option>eco</option>
                    <option>vip</option>
                </select>
                <div class="invalid-feedback">
                    Valid first name is required.
                </div>

                <label for="departureLocation">Departure place</label>
                <#--            <input type="text" name="departureLocation"><br><br>-->
                <select class="form-select" name=departureLocation  required=""> <br>
                    <option value="">Choose...</option>
                    <option>Astana</option>
                    <option>Almaty</option>
                    <option>Aktau</option>
                    <option>Aktobe</option>
                    <option>Atyrau</option>
                    <option>Baikonyr</option>
                    <option>Ekibastuz</option>
                    <option>Jarkent</option>
                    <option>Janaozen</option>
                    <option>Jantas</option>
                    <option>Jezkazgan</option>
                    <option>Karaganda</option>
                    <option>Kostanay</option>
                    <option>Kokshetau</option>
                    <option>Kyzylorda</option>
                    <option>Oral</option>
                    <option>Oskemen</option>
                    <option>Pavlodar</option>
                    <option>Petropavl</option>
                    <option>Jezkazgan</option>
                    <option>Semei</option>
                    <option>Shymkent</option>
                    <option>Taraz</option>
                    <option>Taldykorgan</option>
                    <option>Turkistan</option>
                    <option>Qonaev</option>
                </select>


            <label for="arriveLocation">Arrive place</label>
            <#--            <input type="text" name="arriveLocation"><br><br>-->
            <select class="form-select" name="arriveLocation"  required=""> <br>
                <option value="">Choose...</option>
                <option>Astana</option>
                <option>Almaty</option>
                <option>Aktau</option>
                <option>Aktobe</option>
                <option>Atyrau</option>
                <option>Baikonyr</option>
                <option>Ekibastuz</option>
                <option>Jarkent</option>
                <option>Janaozen</option>
                <option>Jantas</option>
                <option>Jezkazgan</option>
                <option>Karaganda</option>
                <option>Kostanay</option>
                <option>Kokshetau</option>
                <option>Kyzylorda</option>
                <option>Oral</option>
                <option>Oskemen</option>
                <option>Pavlodar</option>
                <option>Petropavl</option>
                <option>Jezkazgan</option>
                <option>Semei</option>
                <option>Shymkent</option>
                <option>Taraz</option>
                <option>Taldykorgan</option>
                <option>Turkistan</option>
                <option>Qonaev</option>
            </select>
            <label for="departureTime">Departure time</label>
            <input class="form-control" type="time" name="departureTime"><br>

            <label for="departureDate">Departure date</label>
            <input class="form-control" type="date" name="departureDate"><br>

            <label for="arriveTime">Arrive time</label>
            <input class="form-control" type="time" name="arriveTime"><br>

            <label for="arriveDate">Arrive date</label>
            <input class="form-control" type="date" name="arriveDate"><br>

            <hr class="my-4">
            <button class="w-100 btn btn-success" type="submit">Add ticket</button>

        </form>
    </div>
    <@f.footer>
    </@f.footer>
</@h.page>