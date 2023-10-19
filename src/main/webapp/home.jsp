<%--
  Created by IntelliJ IDEA.
  User: yc
  Date: 16/10/2023
  Time: 08:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>HM--BANK</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
<ul class="navbar">
    <li class="navitem"><a href="#home">HM BANK</a></li>
    <li class="navitem"><a href="#creditrequestList">Demandes de crédit</a></li>
</ul>

<div id="sections_container">
    <%--    <section id="credit_simulation">--%>
    <%--        <div id="myproject_field">--%>
    <%--            <label for="projet">Mon projet</label>--%>
    <%--            <select id="projet" name="projet">--%>
    <%--                <option value="OCCASION">Je finance mon véhicule d’occasion</option>--%>
    <%--                <option value="PRET_PERSONNEL">J’ai besoin d’argent</option>--%>
    <%--                <option value="REV">Je Gère mes imprévus</option>--%>
    <%--                <option value="CREDIT_AUTOMOBILE">Je finance mon véhicule neuf</option>--%>
    <%--                <option value="CREDIT_MENAGE">J’équipe ma maison</option>--%>
    <%--            </select>--%>
    <%--        </div>--%>
    <%--        <div id="profession_field">--%>
    <%--            <label for="profession">Je suis</label>--%>
    <%--            <select id="profession" name="profession">--%>
    <%--                <option value="SALARIE_PRIVE">Salarié du secteur privé</option>--%>
    <%--                <option value="SALARIE_PUBLIC">Fonctionnaire</option>--%>
    <%--                <option value="PROFESSION_LIBERALE">Profession libérale</option>--%>
    <%--                <option value="COMMERCANT">Commerçant</option>--%>
    <%--                <option value="ARTISAN">Artisan</option>--%>
    <%--                <option value="RETRAITE">Retraité</option>--%>
    <%--                <option value="AUTRE">Autres professions</option>--%>
    <%--            </select>--%>
    <%--        </div>--%>
    <%--        <div id="simulator-amount">--%>
    <%--            <label for="amount_input">Montant (en DH)</label>--%>
    <%--            <div>--%>
    <%--                <input id="amount_input" type="number" step="any" value="10000" min="5000" max="600000">--%>
    <%--            </div>--%>
    <%--            <input id="amount_ranger" type="range" min="5000" max="600000" step="1000" value="10000">--%>
    <%--        </div>--%>
    <%--        <div id="simulator-duration">--%>
    <%--            <label>Durée (en mois)</label>--%>
    <%--            <div>--%>
    <%--                <input id="duration_input" type="number" min="12" max="120" step="6" value="12">--%>
    <%--            </div>--%>
    <%--            <input id="duration_ranger" type="range" min="12" max="120" step="6" value="12">--%>
    <%--        </div>--%>
    <%--        <div id="simulator-mnthlypymnt">--%>
    <%--            <label class="label">Mensualités (en DH)</label>--%>
    <%--            <div>--%>
    <%--                <input id="mnthlypymnt_input" type="number">--%>
    <%--            </div>--%>
    <%--            <input id="mnthlypymnt_ranger" type="range">--%>
    <%--        </div>--%>
    <%--    </section>--%>
    <section class="w-full flex justify-center items-center">
        <div class="w-[800px] bg-slate-200 p-4 rounded">
            <div class="py-1">
                <span class="px-1 text-sm text-gray-600">Enter Code Client</span>
                <input placeholder="Enter first name" type="text"
                       class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
            </div>
            <br>
            <div id="client_check_buttons">
                <input id="client_code_check_submit" type="button"
                       class="border border-gray-700 bg-gray-700 text-white rounded-md px-4 py-2 m-2 text-center transition duration-500 ease select-none hover:bg-gray-800 focus:outline-none focus:shadow-outline"
                       value="Check">
                <input id="client_add_button" type="button" value="Ajouter" onclick="openModal()">
            </div>
        </div>
    </section>
    <%--    <section id="creditrequest_validation">--%>
    <%--    </section>--%>
</div>

<!-- The Modal -->
<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2>Ajouter un client</h2>
        <div class="container max-w-full mx-auto md:py-24 px-6">
            <div class="max-w-sm mx-auto px-6">
                <div class="relative flex flex-wrap">
                    <div class="w-full relative">
                        <div class="md:mt-6">
                            <div class="text-center font-bold text-xl text-black uppercase">
                                Add Client
                            </div>
                            <form class="mt-8" action="hello-servlet">
                                <div class="mx-auto max-w-lg">
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">code</span>
                                        <input placeholder="Enter code" type="text"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">First Name</span>
                                        <input placeholder="Enter first name" type="text"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">Last Name</span>
                                        <input placeholder="Enter last name" type="email"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">Birth Date</span>
                                        <input placeholder="Enter birth name" type="password" x-model="password"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">Phone number</span>
                                        <input placeholder="Enter phone number" type="text"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <div class="py-1">
                                        <span class="px-1 text-sm text-gray-600">Address</span>
                                        <input placeholder="Enter address" type="text"
                                               class="text-md block px-3 py-2 rounded-lg w-full
                bg-white border-2 border-gray-300 placeholder-gray-600 shadow-md focus:placeholder-gray-500 focus:bg-white focus:border-gray-600 focus:outline-none">
                                    </div>
                                    <button class="mt-6 text-lg font-semibold bg-gray-800 w-full text-white rounded-lg px-6 py-3 block shadow-xl hover:text-white hover:bg-black">
                                        Register
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>

    const interest_rate = 0.12;

    const amount_input = document.getElementById("amount_input");
    const amount_ranger = document.getElementById("amount_ranger");

    const duration_input = document.getElementById("duration_input");
    const duration_ranger = document.getElementById("duration_ranger");

    const mnthlypymnt_input = document.getElementById("mnthlypymnt_input");
    const mnthlypymnt_ranger = document.getElementById("mnthlypymnt_ranger");


    //----------------initialisation-----------------------------------------

    mnthlypymnt_config();
    display_mnthlypymnt();

    //-----------------------------------------------------------------------


    //rangers  --> inputs

    mnthlypymnt_ranger.addEventListener('change', function () {
        mnthlypymnt_input.value = mnthlypymnt_ranger.value;
        display_duration();
    })


    //inputs --> rangers

    mnthlypymnt_input.addEventListener('change', function () {
        mnthlypymnt_ranger.value = mnthlypymnt_input.value;
        display_duration();
    })

    //----------------monthly payment ranger configuration

    function mnthlypymnt_config() {

        let max = calc_max_mnthlypymnt();
        let min = calc_min_mnthlypymnt();

        mnthlypymnt_ranger.min = min;
        mnthlypymnt_ranger.max = max;

        mnthlypymnt_input.min = min;
        mnthlypymnt_input.max = max;

    }

    function calc_min_mnthlypymnt() {
        return calc_mnthlypymnt(amount_input.value, 120);
    }

    function calc_max_mnthlypymnt() {
        return calc_mnthlypymnt(amount_input.value, 12);
    }

    //-------------------------------------------------------------

    //calculate the amount to be paid each month

    amount_ranger.addEventListener('change', function () {
        amount_input.value = amount_ranger.value;
        mnthlypymnt_config();
        display_mnthlypymnt();
    })

    duration_ranger.addEventListener('change', function () {
        duration_input.value = duration_ranger.value;
        display_mnthlypymnt();
    })

    amount_input.addEventListener('change', function () {
        amount_ranger.value = amount_input.value;
        mnthlypymnt_config();
        display_mnthlypymnt();
    })

    duration_input.addEventListener('change', function () {
        duration_ranger.value = duration_input.value;
        display_mnthlypymnt();
    })

    function display_mnthlypymnt() {
        mnthlypymnt_input.value = calc_mnthlypymnt(amount_input.value, duration_input.value);
        mnthlypymnt_ranger.value = mnthlypymnt_input.value;
    }

    function calc_mnthlypymnt(amount, duration) {
        return ((amount * (interest_rate / 12)) / (1 - Math.pow(1 + (interest_rate / 12), -duration))).toFixed(2);
    }

    //-----------------------------------------------------------


    function display_duration() {

        let duration = calc_duration(amount_input.value, mnthlypymnt_input.value);

        let valid_duration = get_valid_duration(duration);

        duration_input.value = valid_duration;
        duration_ranger.value = valid_duration;

        display_mnthlypymnt();

    }

    function calc_duration(amount, mnthlypymnt) {
        return -(Math.log(-(((amount * (interest_rate / 12)) / mnthlypymnt) - 1)) / Math.log(1 + (interest_rate / 12)));
    }

    //----------------------------------------------------------

    function get_valid_duration(duration) {
        let valid_duration_min = 12;
        let valid_duration_max = 120;
        let valid_duration = 12;

        if (duration < 12) {
            return valid_duration_min;
        }

        if (duration > 120) {
            return valid_duration_max;
        }

        while (duration > valid_duration) {
            valid_duration += 6;
        }

        if (valid_duration - duration < duration - valid_duration + 6) {
            return valid_duration;
        } else {
            return valid_duration - 6;
        }

    }

    //--------------------------------------Modal-------------------------------------
    // Function to open the modal
    function openModal() {
        document.getElementById("myModal").style.display = "block";
    }

    // Function to close the modal
    function closeModal() {
        document.getElementById("myModal").style.display = "none";
    }

    // Close the modal if the user clicks outside of it
    window.onclick = function (event) {
        var modal = document.getElementById("myModal");
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
<script src="https://cdn.tailwindcss.com"></script>
</body>
</html>
