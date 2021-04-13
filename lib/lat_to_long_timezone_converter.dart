/// Translated to Dart by Shawn Lauzon
/// Original project at https://github.com/drtimcooper/LatLongToTimezone
/// Original code at https://raw.githubusercontent.com/drtimcooper/LatLongToTimezone/master/src/main/java/com/skedgo/converter/TimezoneMapper.java

/** The provided code is written by Tim Cooper:   tim@edval.com.au
This code is available under the MIT licence:  https://opensource.org/licenses/MIT  */
// class TimezoneMapper {

String latLngToTimezoneString({required num lat,required num lng}) {
  String tzId = _timezoneStrings[_getTzInt(lat, lng)];
  return tzId;
}

List<String> _timezoneStrings = [
  "unknown",
  "Africa/Abidjan",
  "Africa/Accra",
  "Africa/Addis_Ababa",
  "Africa/Algiers",
  "Africa/Asmara",
  "Africa/Bamako",
  "Africa/Bangui",
  "Africa/Banjul",
  "Africa/Bissau",
  "Africa/Blantyre",
  "Africa/Brazzaville",
  "Africa/Bujumbura",
  "Africa/Cairo",
  "Africa/Casablanca",
  "Africa/Ceuta",
  "Africa/Conakry",
  "Africa/Dakar",
  "Africa/Dar_es_Salaam",
  "Africa/Djibouti",
  "Africa/Douala",
  "Africa/El_Aaiun",
  "Africa/Freetown",
  "Africa/Gaborone",
  "Africa/Harare",
  "Africa/Johannesburg",
  "Africa/Juba",
  "Africa/Kampala",
  "Africa/Khartoum",
  "Africa/Kigali",
  "Africa/Kinshasa",
  "Africa/Lagos",
  "Africa/Libreville",
  "Africa/Lome",
  "Africa/Luanda",
  "Africa/Lubumbashi",
  "Africa/Lusaka",
  "Africa/Malabo",
  "Africa/Maputo",
  "Africa/Maseru",
  "Africa/Mbabane",
  "Africa/Mogadishu",
  "Africa/Monrovia",
  "Africa/Nairobi",
  "Africa/Ndjamena",
  "Africa/Niamey",
  "Africa/Nouakchott",
  "Africa/Ouagadougou",
  "Africa/Porto-Novo",
  "Africa/Sao_Tome",
  "Africa/Tripoli",
  "Africa/Tunis",
  "Africa/Windhoek",
  "America/Adak",
  "America/Anchorage",
  "America/Anguilla",
  "America/Antigua",
  "America/Aruba",
  "America/Araguaina",
  "America/Argentina/Buenos_Aires",
  "America/Argentina/Catamarca",
  "America/Argentina/Cordoba",
  "America/Argentina/Jujuy",
  "America/Argentina/La_Rioja",
  "America/Argentina/Mendoza",
  "America/Argentina/Rio_Gallegos",
  "America/Argentina/Salta",
  "America/Argentina/San_Juan",
  "America/Argentina/San_Luis",
  "America/Argentina/Tucuman",
  "America/Argentina/Ushuaia",
  "America/Asuncion",
  "America/Atikokan",
  "America/Bahia",
  "America/Bahia_Banderas",
  "America/Barbados",
  "America/Belem",
  "America/Belize",
  "America/Blanc-Sablon",
  "America/Boa_Vista",
  "America/Bogota",
  "America/Boise",
  "America/Cambridge_Bay",
  "America/Campo_Grande",
  "America/Cancun",
  "America/Caracas",
  "America/Cayenne",
  "America/Cayman",
  "America/Chicago",
  "America/Chihuahua",
  "America/Costa_Rica",
  "America/Creston",
  "America/Cuiaba",
  "America/Curacao",
  "America/Danmarkshavn",
  "America/Dawson",
  "America/Dawson_Creek",
  "America/Denver",
  "America/Detroit",
  "America/Dominica",
  "America/Edmonton",
  "America/Eirunepe",
  "America/El_Salvador",
  "America/Fort_Nelson",
  "America/Fortaleza",
  "America/Glace_Bay",
  "America/Godthab",
  "America/Goose_Bay",
  "America/Grand_Turk",
  "America/Grenada",
  "America/Guadeloupe",
  "America/Guatemala",
  "America/Guayaquil",
  "America/Guyana",
  "America/Halifax",
  "America/Havana",
  "America/Hermosillo",
  "America/Indiana/Indianapolis",
  "America/Indiana/Knox",
  "America/Indiana/Marengo",
  "America/Indiana/Petersburg",
  "America/Indiana/Tell_City",
  "America/Indiana/Vevay",
  "America/Indiana/Vincennes",
  "America/Indiana/Winamac",
  "America/Inuvik",
  "America/Iqaluit",
  "America/Jamaica",
  "America/Juneau",
  "America/Kentucky/Louisville",
  "America/Kentucky/Monticello",
  "America/Kralendijk",
  "America/La_Paz",
  "America/Lima",
  "America/Los_Angeles",
  "America/Lower_Princes",
  "America/Maceio",
  "America/Managua",
  "America/Manaus",
  "America/Marigot",
  "America/Martinique",
  "America/Matamoros",
  "America/Mazatlan",
  "America/Miquelon",
  "America/Menominee",
  "America/Merida",
  "America/Metlakatla",
  "America/Mexico_City",
  "America/Moncton",
  "America/Monterrey",
  "America/Montevideo",
  "America/Montserrat",
  "America/Nassau",
  "America/New_York",
  "America/Nipigon",
  "America/Nome",
  "America/Noronha",
  "America/North_Dakota/Beulah",
  "America/North_Dakota/Center",
  "America/North_Dakota/New_Salem",
  "America/Ojinaga",
  "America/Panama",
  "America/Pangnirtung",
  "America/Paramaribo",
  "America/Phoenix",
  "America/Port-au-Prince",
  "America/Port_of_Spain",
  "America/Porto_Velho",
  "America/Puerto_Rico",
  "America/Punta_Arenas",
  "America/Rainy_River",
  "America/Rankin_Inlet",
  "America/Recife",
  "America/Regina",
  "America/Resolute",
  "America/Rio_Branco",
  "America/Santarem",
  "America/Santiago",
  "America/Santo_Domingo",
  "America/Sao_Paulo",
  "America/Scoresbysund",
  "America/Sitka",
  "America/St_Barthelemy",
  "America/St_Johns",
  "America/St_Kitts",
  "America/St_Lucia",
  "America/St_Thomas",
  "America/St_Vincent",
  "America/Swift_Current",
  "America/Tegucigalpa",
  "America/Thule",
  "America/Thunder_Bay",
  "America/Tijuana",
  "America/Toronto",
  "America/Tortola",
  "America/Vancouver",
  "America/Whitehorse",
  "America/Winnipeg",
  "America/Yakutat",
  "America/Yellowknife",
  "Antarctica/Casey",
  "Antarctica/Davis",
  "Antarctica/DumontDUrville",
  "Antarctica/Macquarie",
  "Antarctica/Mawson",
  "Antarctica/McMurdo",
  "Antarctica/Palmer",
  "Antarctica/Rothera",
  "Antarctica/Syowa",
  "Antarctica/Troll",
  "Antarctica/Vostok",
  "Arctic/Longyearbyen",
  "Asia/Aden",
  "Asia/Almaty",
  "Asia/Amman",
  "Asia/Anadyr",
  "Asia/Aqtau",
  "Asia/Aqtobe",
  "Asia/Ashgabat",
  "Asia/Atyrau",
  "Asia/Baghdad",
  "Asia/Bahrain",
  "Asia/Baku",
  "Asia/Bangkok",
  "Asia/Barnaul",
  "Asia/Beirut",
  "Asia/Bishkek",
  "Asia/Brunei",
  "Asia/Chita",
  "Asia/Choibalsan",
  "Asia/Colombo",
  "Asia/Damascus",
  "Asia/Dhaka",
  "Asia/Dili",
  "Asia/Dubai",
  "Asia/Dushanbe",
  "Asia/Famagusta",
  "Asia/Gaza",
  "Asia/Hebron",
  "Asia/Ho_Chi_Minh",
  "Asia/Hong_Kong",
  "Asia/Hovd",
  "Asia/Irkutsk",
  "Asia/Jakarta",
  "Asia/Jayapura",
  "Asia/Jerusalem",
  "Asia/Kabul",
  "Asia/Kamchatka",
  "Asia/Karachi",
  "Asia/Kathmandu",
  "Asia/Khandyga",
  "Asia/Kolkata",
  "Asia/Krasnoyarsk",
  "Asia/Kuala_Lumpur",
  "Asia/Kuching",
  "Asia/Kuwait",
  "Asia/Macau",
  "Asia/Magadan",
  "Asia/Makassar",
  "Asia/Manila",
  "Asia/Muscat",
  "Asia/Nicosia",
  "Asia/Novokuznetsk",
  "Asia/Novosibirsk",
  "Asia/Omsk",
  "Asia/Oral",
  "Asia/Phnom_Penh",
  "Asia/Pontianak",
  "Asia/Pyongyang",
  "Asia/Qatar",
  "Asia/Qostanay",
  "Asia/Qyzylorda",
  "Asia/Riyadh",
  "Asia/Samarkand",
  "Asia/Sakhalin",
  "Asia/Seoul",
  "Asia/Shanghai",
  "Asia/Singapore",
  "Asia/Srednekolymsk",
  "Asia/Taipei",
  "Asia/Tashkent",
  "Asia/Tbilisi",
  "Asia/Tehran",
  "Asia/Thimphu",
  "Asia/Tokyo",
  "Asia/Tomsk",
  "Asia/Ulaanbaatar",
  "Asia/Urumqi",
  "Asia/Ust-Nera",
  "Asia/Vientiane",
  "Asia/Vladivostok",
  "Asia/Yakutsk",
  "Asia/Yangon",
  "Asia/Yekaterinburg",
  "Asia/Yerevan",
  "Atlantic/Azores",
  "Atlantic/Bermuda",
  "Atlantic/Canary",
  "Atlantic/Cape_Verde",
  "Atlantic/Faroe",
  "Atlantic/Madeira",
  "Atlantic/Reykjavik",
  "Atlantic/South_Georgia",
  "Atlantic/St_Helena",
  "Atlantic/Stanley",
  "Australia/Adelaide",
  "Australia/Brisbane",
  "Australia/Broken_Hill",
  "Australia/Currie",
  "Australia/Darwin",
  "Australia/Eucla",
  "Australia/Hobart",
  "Australia/Lindeman",
  "Australia/Lord_Howe",
  "Australia/Melbourne",
  "Australia/Perth",
  "Australia/Sydney",
  "Etc/UTC",
  "Europe/Amsterdam",
  "Europe/Andorra",
  "Europe/Astrakhan",
  "Europe/Athens",
  "Europe/Belgrade",
  "Europe/Berlin",
  "Europe/Bratislava",
  "Europe/Brussels",
  "Europe/Bucharest",
  "Europe/Budapest",
  "Europe/Busingen",
  "Europe/Chisinau",
  "Europe/Copenhagen",
  "Europe/Dublin",
  "Europe/Gibraltar",
  "Europe/Guernsey",
  "Europe/Helsinki",
  "Europe/Isle_of_Man",
  "Europe/Istanbul",
  "Europe/Jersey",
  "Europe/Kaliningrad",
  "Europe/Kiev",
  "Europe/Kirov",
  "Europe/Lisbon",
  "Europe/Ljubljana",
  "Europe/London",
  "Europe/Luxembourg",
  "Europe/Madrid",
  "Europe/Malta",
  "Europe/Mariehamn",
  "Europe/Minsk",
  "Europe/Monaco",
  "Europe/Moscow",
  "Europe/Oslo",
  "Europe/Paris",
  "Europe/Podgorica",
  "Europe/Prague",
  "Europe/Riga",
  "Europe/Rome",
  "Europe/Samara",
  "Europe/San_Marino",
  "Europe/Sarajevo",
  "Europe/Saratov",
  "Europe/Simferopol",
  "Europe/Skopje",
  "Europe/Sofia",
  "Europe/Stockholm",
  "Europe/Tallinn",
  "Europe/Tirane",
  "Europe/Ulyanovsk",
  "Europe/Uzhgorod",
  "Europe/Vaduz",
  "Europe/Vatican",
  "Europe/Vienna",
  "Europe/Vilnius",
  "Europe/Volgograd",
  "Europe/Warsaw",
  "Europe/Zagreb",
  "Europe/Zaporozhye",
  "Europe/Zurich",
  "Indian/Antananarivo",
  "Indian/Chagos",
  "Indian/Christmas",
  "Indian/Cocos",
  "Indian/Comoro",
  "Indian/Kerguelen",
  "Indian/Mahe",
  "Indian/Maldives",
  "Indian/Mauritius",
  "Indian/Mayotte",
  "Indian/Reunion",
  "Pacific/Apia",
  "Pacific/Auckland",
  "Pacific/Bougainville",
  "Pacific/Chatham",
  "Pacific/Chuuk",
  "Pacific/Easter",
  "Pacific/Efate",
  "Pacific/Enderbury",
  "Pacific/Fakaofo",
  "Pacific/Fiji",
  "Pacific/Funafuti",
  "Pacific/Galapagos",
  "Pacific/Gambier",
  "Pacific/Guadalcanal",
  "Pacific/Guam",
  "Pacific/Honolulu",
  "Pacific/Kiritimati",
  "Pacific/Kosrae",
  "Pacific/Kwajalein",
  "Pacific/Majuro",
  "Pacific/Marquesas",
  "Pacific/Midway",
  "Pacific/Nauru",
  "Pacific/Niue",
  "Pacific/Norfolk",
  "Pacific/Noumea",
  "Pacific/Pago_Pago",
  "Pacific/Palau",
  "Pacific/Pitcairn",
  "Pacific/Pohnpei",
  "Pacific/Port_Moresby",
  "Pacific/Rarotonga",
  "Pacific/Saipan",
  "Pacific/Tahiti",
  "Pacific/Tarawa",
  "Pacific/Tongatapu",
  "Pacific/Wake",
  "Pacific/Wallis"
];

int _getTzInt(num lat, num lng) {
  if (lng < 40.227580) if (lng < -74.790449) if (lat < 11.948729) if (lng < -148.915052) if (lat < -15.365572) if (lng <
      -162.907168) if (lat < -22.132469) if (lat < -31.152578) if (lat < -75.000000)
    return 205;
  else if (lat < -37.433796)
    return 390;
  else
    return 392;
  else if (lat < -29.030330)
    return 390;
  else
    return 424;
  else if (lat < -18.370291) if (lat < -19.391686) if (lng < -178.018393)
    return 398;
  else
    return 424;
  else if (lng < -174.409124) if (lng < -176.450182)
    return 398;
  else
    return 424;
  else if (lng < -171.934489)
    return 412;
  else
    return 424;
  else if (lng < -175.393670) if (lng < -176.944457)
    return 398;
  else
    return 424;
  else if (lng < -173.529546)
    return 424;
  else
    return 420;
  else if (lat < -18.624323) if (lat < -21.595903) if (lat <
      -23.126466) if (lat < -49.301828)
    return 205;
  else
    return 422;
  else if (lng < -157.667741)
    return 420;
  else
    return 422;
  else
    return 420;
  else
    return 422;
  else if (lng < -170.339391) if (lat < -8.332863) if (lat <
      -12.982796) if (lng < -175.919039)
    return 426;
  else if (lng < -171.122917)
    return 389;
  else
    return 415;
  else if (lng < -172.263966) if (lat < -9.006964)
    return 397;
  else
    return 399;
  else if (lat < -10.844975)
    return 415;
  else
    return 397;
  else
    return 396;
  else if (lat < -8.716879) if (lng < -162.837703) if (lng < -169.212472)
    return 415;
  else
    return 420;
  else if (lng < -157.674746)
    return 420;
  else if (lng < -149.992536)
    return 405;
  else
    return 422;
  else
    return 405;
  else if (lat < -19.605166) if (lat < -24.280320) if (lat <
      -33.406000) if (lat < -48.582229) if (lat < -66.000000) {
    if (poly[0].contains(lat, lng))
      return 207;
    else
      return 205;
  } else if (lng < -74.972849) {
    if (poly[1].contains(lat, lng))
      return 177;
    else
      return 169;
  } else {
    if (poly[2].contains(lat, lng))
      return 177;
    else
      return 169;
  }
  else
    return 177;
  else if (lat < -26.087000) if (lng < -143.258327)
    return 422;
  else if (lat < -26.702500)
    return 177;
  else
    return 394;
  else
    return 417;
  else if (lng < -138.293890)
    return 422;
  else if (lng < -134.244799)
    return 401;
  else
    return 417;
  else if (lng < -140.967399)
    return 422;
  else if (lng < -138.120374) if (lat < -14.596066)
    return 422;
  else
    return 409;
  else if (lng < -86.850836) if (lng < -136.083016)
    return 422;
  else if (lat < 3.608283)
    return 90;
  else
    return 400;
  else if (lat < 4.215425) if (lat < 1.469581) if (lat < -8.981652)
    return 133;
  else if (lat < -3.756035) if (lng < -79.713051) {
    if (poly[3].contains(lat, lng))
      return 112;
    else
      return 133;
  } else {
    if (poly[4].contains(lat, lng))
      return 112;
    else
      return 133;
  }
  else if (lng < -79.655334) {
    if (poly[5].contains(lat, lng))
      return 133;
    else
      return 112;
  } else if (lat < -1.143227) {
    if (poly[6].contains(lat, lng))
      return 133;
    else
      return 112;
  } else if (lng < -77.222892) {
    if (poly[7].contains(lat, lng))
      return 80;
    else
      return 112;
  } else if (lat < 0.163177) if (lng < -76.006670)
    return 112;
  else if (lat < -0.490025) {
    if (poly[8].contains(lat, lng))
      return 133;
    else
      return 112;
  } else {
    if (poly[9].contains(lat, lng)) return 80;
    if (poly[10].contains(lat, lng))
      return 133;
    else
      return 112;
  }
  else {
    if (poly[11].contains(lat, lng))
      return 112;
    else
      return 80;
  }
  else
    return 80;
  else if (lng < -83.545675) {
    if (poly[12].contains(lat, lng))
      return 137;
    else
      return 90;
  } else if (lng < -82.506021) {
    if (poly[13].contains(lat, lng))
      return 161;
    else
      return 90;
  } else if (lng < -78.648235)
    return 161;
  else if (lat < 7.779632) {
    if (poly[14].contains(lat, lng))
      return 161;
    else
      return 80;
  } else {
    if (poly[15].contains(lat, lng))
      return 161;
    else
      return 80;
  }
  else
    return _call5(lat, lng);
  else if (lat < 27.433543) if (lng < -34.628225)
    return _call18(lat, lng);
  else
    return _call19(lat, lng);
  else if (lng < 4.940364)
    return _call25(lat, lng);
  else
    return _call26(lat, lng);
  else if (lat < 6.459000) if (lat < -13.507685)
    return _call28(lat, lng);
  else if (lng < 137.031744) if (lng < 79.769537) if (lng < 51.396615) if (lat <
      -9.003195) if (lng < 45.507035) if (lng < 40.934512) {
    if (poly[16].contains(lat, lng))
      return 18;
    else
      return 38;
  } else {
    if (poly[17].contains(lat, lng))
      return 387;
    else
      return 382;
  }
  else if (lat < -11.732889)
    return 378;
  else
    return 384;
  else if (lat < 1.448202) {
    if (poly[18].contains(lat, lng))
      return 43;
    else
      return 41;
  } else if (lng < 44.770743) {
    if (poly[19].contains(lat, lng)) return 41;
    if (poly[20].contains(lat, lng))
      return 43;
    else
      return 3;
  } else {
    if (poly[21].contains(lat, lng))
      return 3;
    else
      return 41;
  }
  else if (lng < 56.153431)
    return 384;
  else if (lat < -6.892368) if (lng < 56.907685) if (lat < -8.768959)
    return 384;
  else
    return 386;
  else
    return 379;
  else if (lat < -5.037066)
    return 379;
  else
    return 385;
  else
    return _call27(lat, lng);
  else if (lng < 158.980861) if (lat < -9.690684) if (lng < 144.157024)
    return 306;
  else
    return 419;
  else if (lng < 143.966337) if (lat < -9.484383)
    return 306;
  else if (lng < 142.851886) if (lng < 141.647501) if (lat < -9.445798)
    return 306;
  else {
    if (poly[22].contains(lat, lng))
      return 419;
    else
      return 244;
  }
  else if (lng < 142.345755) {
    if (poly[23].contains(lat, lng))
      return 306;
    else
      return 419;
  } else {
    if (poly[24].contains(lat, lng))
      return 306;
    else
      return 419;
  }
  else if (lng < 143.653847) if (lng < 143.338933) {
    if (poly[25].contains(lat, lng))
      return 306;
    else
      return 419;
  } else if (lat < -9.389158)
    return 306;
  else
    return 419;
  else if (lat < -9.088012)
    return 306;
  else
    return 419;
  else if (lat < -0.557358) if (lng < 144.296103) if (lat < -9.305249)
    return 306;
  else
    return 419;
  else if (lng < 154.622311) {
    if (poly[26].contains(lat, lng))
      return 391;
    else
      return 419;
  } else if (lat < -6.377546) {
    if (poly[27].contains(lat, lng))
      return 391;
    else
      return 402;
  } else
    return 391;
  else if (lng < 154.023397)
    return 393;
  else
    return 418;
  else if (lat < -4.810850) if (lng < 169.050657) if (lat <
      -12.871378) if (lng < 163.592134)
    return 395;
  else
    return 402;
  else
    return 402;
  else if (lat < -11.406307) if (lng < 170.396467)
    return 402;
  else
    return 398;
  else
    return 399;
  else if (lng < 172.373701) if (lng < 168.336144) if (lng <
      160.917151) if (lat < 0.877112)
    return 391;
  else
    return 418;
  else if (lng < 163.236405)
    return 406;
  else if (lat < 2.544000)
    return 408;
  else
    return 411;
  else if (lat < -0.645000)
    return 423;
  else
    return 408;
  else
    return 423;
  else if (lng < 115.212170) if (lat < 28.246987)
    return _call43(lat, lng);
  else if (lng < 69.957225) if (lat < 43.586429) if (lng < 51.009030)
    return _call32(lat, lng);
  else
    return _call33(lat, lng);
  else if (lat < 54.891446)
    return _call36(lat, lng);
  else if (lat < 55.442170) if (lng < 53.915395) {
    if (poly[28].contains(lat, lng))
      return 293;
    else
      return 350;
  } else if (lng < 59.172064) {
    if (poly[29].contains(lat, lng))
      return 350;
    else
      return 293;
  } else {
    if (poly[30].contains(lat, lng))
      return 293;
    else
      return 213;
  }
  else if (lat < 73.603159)
    return _call35(lat, lng);
  else
    return 350;
  else
    return _call42(lat, lng);
  else
    return _call46(lat, lng);
}

int _call0(num lat, num lng) {
  if (lat < 31.541963) if (lng < -105.630949) if (lat < 28.333599) if (lng <
      -107.815375) if (lat < 26.729418) {
    if (poly[31].contains(lat, lng)) return 89;
    if (poly[32].contains(lat, lng))
      return 116;
    else
      return 142;
  } else if (lng < -108.907589) {
    if (poly[33].contains(lat, lng)) return 89;
    if (poly[34].contains(lat, lng))
      return 89;
    else
      return 116;
  } else if (lat < 27.531508) {
    if (poly[35].contains(lat, lng)) return 116;
    if (poly[36].contains(lat, lng))
      return 142;
    else
      return 89;
  } else {
    if (poly[37].contains(lat, lng)) return 116;
    if (poly[38].contains(lat, lng)) return 116;
    if (poly[39].contains(lat, lng)) return 116;
    if (poly[40].contains(lat, lng))
      return 116;
    else
      return 89;
  }
  else if (lat < 26.729418) if (lng < -106.723162) {
    if (poly[41].contains(lat, lng)) return 89;
    if (poly[42].contains(lat, lng))
      return 149;
    else
      return 142;
  } else {
    if (poly[43].contains(lat, lng))
      return 149;
    else
      return 89;
  }
  else {
    if (poly[44].contains(lat, lng))
      return 149;
    else
      return 89;
  }
  else if (lng < -107.815375) if (lat < 29.937781) {
    if (poly[45].contains(lat, lng))
      return 116;
    else
      return 89;
  } else if (lng < -108.907589) {
    if (poly[46].contains(lat, lng)) return 97;
    if (poly[47].contains(lat, lng)) return 160;
    if (poly[48].contains(lat, lng))
      return 164;
    else
      return 116;
  } else if (lat < 30.739872) {
    if (poly[49].contains(lat, lng)) return 89;
    if (poly[50].contains(lat, lng))
      return 116;
    else
      return 160;
  } else {
    if (poly[51].contains(lat, lng)) return 89;
    if (poly[52].contains(lat, lng)) return 97;
    if (poly[53].contains(lat, lng))
      return 116;
    else
      return 160;
  }
  else if (lat < 29.937781) {
    if (poly[54].contains(lat, lng))
      return 160;
    else
      return 89;
  } else if (lng < -106.723162) {
    if (poly[55].contains(lat, lng))
      return 160;
    else
      return 89;
  } else {
    if (poly[56].contains(lat, lng)) return 89;
    if (poly[57].contains(lat, lng))
      return 97;
    else
      return 160;
  }
  else if (lat < 28.333599) if (lng < -103.446522) if (lat < 26.729418) {
    if (poly[58].contains(lat, lng)) return 89;
    if (poly[59].contains(lat, lng))
      return 89;
    else
      return 149;
  } else if (lng < -104.538735)
    return 89;
  else if (lat < 27.531508) {
    if (poly[60].contains(lat, lng)) return 89;
    if (poly[61].contains(lat, lng)) return 141;
    if (poly[62].contains(lat, lng))
      return 141;
    else
      return 149;
  } else {
    if (poly[63].contains(lat, lng)) return 89;
    if (poly[64].contains(lat, lng)) return 141;
    if (poly[65].contains(lat, lng))
      return 141;
    else
      return 149;
  }
  else if (lat < 26.729418)
    return 149;
  else if (lng < -102.354308) {
    if (poly[66].contains(lat, lng))
      return 141;
    else
      return 149;
  } else {
    if (poly[67].contains(lat, lng)) return 141;
    if (poly[68].contains(lat, lng))
      return 141;
    else
      return 149;
  }
  else if (lng < -103.446522) if (lat < 29.937781) if (lng < -104.538735) {
    if (poly[69].contains(lat, lng)) return 88;
    if (poly[70].contains(lat, lng))
      return 89;
    else
      return 160;
  } else if (lat < 29.135690) if (lng < -103.992628) {
    if (poly[71].contains(lat, lng))
      return 160;
    else
      return 89;
  } else {
    if (poly[72].contains(lat, lng)) return 88;
    if (poly[73].contains(lat, lng)) return 89;
    if (poly[74].contains(lat, lng)) return 141;
    if (poly[75].contains(lat, lng)) return 141;
    if (poly[76].contains(lat, lng))
      return 149;
    else
      return 160;
  }
  else {
    if (poly[77].contains(lat, lng))
      return 160;
    else
      return 88;
  }
  else {
    if (poly[78].contains(lat, lng)) return 88;
    if (poly[79].contains(lat, lng)) return 89;
    if (poly[80].contains(lat, lng)) return 89;
    if (poly[81].contains(lat, lng))
      return 97;
    else
      return 160;
  }
  else if (lat < 29.937781) if (lng < -102.354308) if (lat < 29.135690) {
    if (poly[82].contains(lat, lng)) return 88;
    if (poly[83].contains(lat, lng)) return 149;
    if (poly[84].contains(lat, lng)) return 149;
    if (poly[85].contains(lat, lng))
      return 160;
    else
      return 141;
  } else {
    if (poly[86].contains(lat, lng))
      return 141;
    else
      return 88;
  }
  else {
    if (poly[87].contains(lat, lng)) return 88;
    if (poly[88].contains(lat, lng))
      return 149;
    else
      return 141;
  }
  else
    return 88;
  else {
    if (poly[89].contains(lat, lng)) return 88;
    if (poly[90].contains(lat, lng)) return 160;
    if (poly[91].contains(lat, lng))
      return 164;
    else
      return 97;
  }
}

int _call1(num lat, num lng) {
  if (lng < -109.999802) if (lat < 19.534042)
    return 147;
  else if (lat < 32.494077) if (lat < 28.000000) if (lng < -115.528715)
    return 142;
  else {
    if (poly[92].contains(lat, lng))
      return 116;
    else
      return 142;
  }
  else if (lng < -117.990989)
    return 192;
  else {
    if (poly[93].contains(lat, lng)) return 116;
    if (poly[94].contains(lat, lng))
      return 164;
    else
      return 192;
  }
  else if (lng < -111.320808) if (lng < -117.338623) {
    if (poly[95].contains(lat, lng))
      return 192;
    else
      return 134;
  } else if (lng < -114.329716) if (lat < 35.226383) if (lng < -115.834170) {
    if (poly[96].contains(lat, lng))
      return 192;
    else
      return 134;
  } else if (lat < 33.860230) {
    if (poly[97].contains(lat, lng)) return 134;
    if (poly[98].contains(lat, lng))
      return 192;
    else
      return 164;
  } else {
    if (poly[99].contains(lat, lng)) return 164;
    if (poly[100].contains(lat, lng))
      return 164;
    else
      return 134;
  }
  else {
    if (poly[101].contains(lat, lng))
      return 164;
    else
      return 134;
  }
  else if (lat < 35.226383) {
    if (poly[102].contains(lat, lng))
      return 134;
    else
      return 164;
  } else if (lng < -112.825262) {
    if (poly[103].contains(lat, lng)) return 97;
    if (poly[104].contains(lat, lng))
      return 134;
    else
      return 164;
  } else {
    if (poly[105].contains(lat, lng))
      return 164;
    else
      return 97;
  }
  else if (lat < 36.430649) {
    if (poly[106].contains(lat, lng)) return 97;
    if (poly[107].contains(lat, lng))
      return 97;
    else
      return 164;
  } else {
    if (poly[108].contains(lat, lng))
      return 164;
    else
      return 97;
  }
  else if (lat < 25.125236) if (lng < -102.295513) if (lng < -109.196542)
    return 142;
  else if (lat < 21.436715) if (lng < -104.519534) if (lat < 20.163373)
    return 147;
  else {
    if (poly[109].contains(lat, lng)) return 74;
    if (poly[110].contains(lat, lng))
      return 147;
    else
      return 142;
  }
  else {
    if (poly[111].contains(lat, lng))
      return 142;
    else
      return 147;
  }
  else if (lng < -105.473049) if (lat < 23.280975) {
    if (poly[112].contains(lat, lng))
      return 149;
    else
      return 142;
  } else if (lng < -107.061817) {
    if (poly[113].contains(lat, lng))
      return 149;
    else
      return 142;
  } else if (lat < 24.203106) {
    if (poly[114].contains(lat, lng))
      return 149;
    else
      return 142;
  } else {
    if (poly[115].contains(lat, lng))
      return 142;
    else
      return 149;
  }
  else if (lat < 23.280975) if (lng < -103.884281) if (lat < 22.358845) {
    if (poly[116].contains(lat, lng)) return 147;
    if (poly[117].contains(lat, lng))
      return 149;
    else
      return 142;
  } else if (lng < -104.678665) {
    if (poly[118].contains(lat, lng))
      return 149;
    else
      return 142;
  } else {
    if (poly[119].contains(lat, lng)) return 142;
    if (poly[120].contains(lat, lng)) return 142;
    if (poly[121].contains(lat, lng))
      return 147;
    else
      return 149;
  }
  else {
    if (poly[122].contains(lat, lng))
      return 142;
    else
      return 147;
  }
  else if (lng < -103.884281) {
    if (poly[123].contains(lat, lng))
      return 147;
    else
      return 149;
  } else {
    if (poly[124].contains(lat, lng))
      return 149;
    else
      return 147;
  }
  else if (lat < 19.829871)
    return 147;
  else if (lng < -99.252157) if (lat < 22.477554) {
    if (poly[125].contains(lat, lng))
      return 149;
    else
      return 147;
  } else if (lng < -100.773835) {
    if (poly[126].contains(lat, lng))
      return 149;
    else
      return 147;
  } else if (lat < 23.801395) if (lng < -100.012996) {
    if (poly[127].contains(lat, lng)) return 149;
    if (poly[128].contains(lat, lng))
      return 149;
    else
      return 147;
  } else {
    if (poly[129].contains(lat, lng)) return 147;
    if (poly[130].contains(lat, lng))
      return 147;
    else
      return 149;
  }
  else {
    if (poly[131].contains(lat, lng))
      return 147;
    else
      return 149;
  }
  else {
    if (poly[132].contains(lat, lng)) return 141;
    if (poly[133].contains(lat, lng))
      return 149;
    else
      return 147;
  }
  else if (lng < -101.262095)
    return _call0(lat, lng);
  else if (lat < 31.541963) if (lng < -96.893242) if (lat < 28.333599) if (lng <
      -99.077668) if (lat < 26.729418) {
    if (poly[134].contains(lat, lng)) return 88;
    if (poly[135].contains(lat, lng))
      return 149;
    else
      return 141;
  } else if (lng < -100.169882) {
    if (poly[136].contains(lat, lng)) return 88;
    if (poly[137].contains(lat, lng))
      return 149;
    else
      return 141;
  } else if (lat < 27.531508) {
    if (poly[138].contains(lat, lng)) return 88;
    if (poly[139].contains(lat, lng))
      return 149;
    else
      return 141;
  } else {
    if (poly[140].contains(lat, lng))
      return 141;
    else
      return 88;
  }
  else if (lat < 26.729418) if (lng < -97.999794) if (lat < 25.927327) {
    if (poly[141].contains(lat, lng))
      return 141;
    else
      return 149;
  } else {
    if (poly[142].contains(lat, lng)) return 88;
    if (poly[143].contains(lat, lng))
      return 149;
    else
      return 141;
  }
  else {
    if (poly[144].contains(lat, lng)) return 88;
    if (poly[145].contains(lat, lng))
      return 149;
    else
      return 141;
  }
  else
    return 88;
  else {
    if (poly[146].contains(lat, lng)) return 88;
    if (poly[147].contains(lat, lng))
      return 149;
    else
      return 141;
  }
  else
    return 88;
  else
    return 88;
}

int _call2(num lat, num lng) {
  if (lat < 53.016461) if (lng < -111.043564) if (lat < 46.037723) if (lng <
      -117.975222) {
    if (poly[148].contains(lat, lng))
      return 81;
    else
      return 134;
  } else if (lat < 41.998206) {
    if (poly[149].contains(lat, lng)) return 81;
    if (poly[150].contains(lat, lng))
      return 97;
    else
      return 134;
  } else if (lng < -114.509393) if (lat < 44.017964) {
    if (poly[151].contains(lat, lng))
      return 134;
    else
      return 81;
  } else if (lng < -116.242308) if (lat < 45.027844) {
    if (poly[152].contains(lat, lng))
      return 134;
    else
      return 81;
  } else {
    if (poly[153].contains(lat, lng))
      return 81;
    else
      return 134;
  }
  else {
    if (poly[154].contains(lat, lng)) return 81;
    if (poly[155].contains(lat, lng)) return 97;
    if (poly[156].contains(lat, lng))
      return 97;
    else
      return 134;
  }
  else if (lat < 44.017964) {
    if (poly[157].contains(lat, lng))
      return 97;
    else
      return 81;
  } else if (lng < -112.776478) if (lat < 45.027844) {
    if (poly[158].contains(lat, lng))
      return 97;
    else
      return 81;
  } else {
    if (poly[159].contains(lat, lng)) return 81;
    if (poly[160].contains(lat, lng)) return 134;
    if (poly[161].contains(lat, lng))
      return 134;
    else
      return 97;
  }
  else {
    if (poly[162].contains(lat, lng))
      return 81;
    else
      return 97;
  }
  else if (lng < -120.508865) {
    if (poly[163].contains(lat, lng))
      return 134;
    else
      return 195;
  } else if (lng < -115.776215) if (lat < 49.527092) if (lng < -118.142540) {
    if (poly[164].contains(lat, lng))
      return 195;
    else
      return 134;
  } else if (lat < 47.782407) {
    if (poly[165].contains(lat, lng))
      return 97;
    else
      return 134;
  } else {
    if (poly[166].contains(lat, lng)) return 97;
    if (poly[167].contains(lat, lng)) return 100;
    if (poly[168].contains(lat, lng)) return 100;
    if (poly[169].contains(lat, lng)) return 134;
    if (poly[170].contains(lat, lng))
      return 195;
    else
      return 91;
  }
  else if (lng < -118.142540) {
    if (poly[171].contains(lat, lng)) return 100;
    if (poly[172].contains(lat, lng))
      return 100;
    else
      return 195;
  } else if (lat < 51.271777) if (lng < -116.959377) {
    if (poly[173].contains(lat, lng))
      return 100;
    else
      return 195;
  } else {
    if (poly[174].contains(lat, lng)) return 91;
    if (poly[175].contains(lat, lng)) return 91;
    if (poly[176].contains(lat, lng))
      return 195;
    else
      return 100;
  }
  else {
    if (poly[177].contains(lat, lng)) return 195;
    if (poly[178].contains(lat, lng))
      return 195;
    else
      return 100;
  }
  else {
    if (poly[179].contains(lat, lng)) return 100;
    if (poly[180].contains(lat, lng))
      return 134;
    else
      return 97;
  }
  else {
    if (poly[181].contains(lat, lng)) return 97;
    if (poly[182].contains(lat, lng))
      return 173;
    else
      return 100;
  }
  else if (lat < 63.201980) if (lng < -129.932869) if (lat < 60.001555) {
    if (poly[183].contains(lat, lng))
      return 196;
    else
      return 195;
  } else {
    if (poly[184].contains(lat, lng))
      return 199;
    else
      return 196;
  }
  else if (lng < -118.648599) if (lat < 58.000000) if (lng < -124.290734) {
    if (poly[185].contains(lat, lng))
      return 96;
    else
      return 195;
  } else if (lng < -121.469667) if (lat < 55.508230) {
    if (poly[186].contains(lat, lng))
      return 96;
    else
      return 195;
  } else if (lng < -122.880200) if (lat < 56.754115) {
    if (poly[187].contains(lat, lng))
      return 195;
    else
      return 96;
  } else {
    if (poly[188].contains(lat, lng))
      return 195;
    else
      return 96;
  }
  else
    return 96;
  else if (lat < 55.508230) if (lng < -120.059133) {
    if (poly[189].contains(lat, lng))
      return 195;
    else
      return 96;
  } else {
    if (poly[190].contains(lat, lng)) return 96;
    if (poly[191].contains(lat, lng))
      return 100;
    else
      return 195;
  }
  else {
    if (poly[192].contains(lat, lng))
      return 100;
    else
      return 96;
  }
  else if (lng < -124.290734) if (lng < -127.111802) if (lat < 60.600990) {
    if (poly[193].contains(lat, lng)) return 103;
    if (poly[194].contains(lat, lng))
      return 196;
    else
      return 195;
  } else if (lng < -128.522335) {
    if (poly[195].contains(lat, lng))
      return 199;
    else
      return 196;
  } else {
    if (poly[196].contains(lat, lng)) return 199;
    if (poly[197].contains(lat, lng))
      return 199;
    else
      return 196;
  }
  else if (lat < 60.600990) if (lng < -125.701268) {
    if (poly[198].contains(lat, lng)) return 195;
    if (poly[199].contains(lat, lng))
      return 196;
    else
      return 103;
  } else {
    if (poly[200].contains(lat, lng)) return 195;
    if (poly[201].contains(lat, lng)) return 196;
    if (poly[202].contains(lat, lng))
      return 199;
    else
      return 103;
  }
  else if (lng < -125.701268) {
    if (poly[203].contains(lat, lng))
      return 199;
    else
      return 196;
  } else {
    if (poly[204].contains(lat, lng))
      return 199;
    else
      return 196;
  }
  else {
    if (poly[205].contains(lat, lng)) return 100;
    if (poly[206].contains(lat, lng)) return 103;
    if (poly[207].contains(lat, lng))
      return 196;
    else
      return 199;
  }
  else {
    if (poly[208].contains(lat, lng)) return 173;
    if (poly[209].contains(lat, lng))
      return 199;
    else
      return 100;
  }
  else if (lng < -129.812706) if (lat < 63.573302) {
    if (poly[210].contains(lat, lng))
      return 196;
    else
      return 199;
  } else {
    if (poly[211].contains(lat, lng))
      return 196;
    else
      return 199;
  }
  else {
    if (poly[212].contains(lat, lng))
      return 82;
    else
      return 199;
  }
}

int _call3(num lat, num lng) {
  if (lng < -88.500000) if (lat < 53.375000) if (lng < -107.756288) {
    if (poly[213].contains(lat, lng))
      return 173;
    else
      return 188;
  } else if (lng < -101.392420) {
    if (poly[214].contains(lat, lng))
      return 197;
    else
      return 173;
  } else {
    if (poly[215].contains(lat, lng))
      return 193;
    else
      return 197;
  }
  else if (lat < 59.999511) if (lng < -101.735099) if (lat < 53.710706) {
    if (poly[216].contains(lat, lng))
      return 197;
    else
      return 173;
  } else {
    if (poly[217].contains(lat, lng)) return 197;
    if (poly[218].contains(lat, lng))
      return 199;
    else
      return 173;
  }
  else if (lng < -95.117549)
    return 197;
  else if (lat < 56.687256) {
    if (poly[219].contains(lat, lng)) return 171;
    if (poly[220].contains(lat, lng))
      return 193;
    else
      return 197;
  } else if (lng < -91.808775) if (lat < 58.343286) {
    if (poly[221].contains(lat, lng))
      return 171;
    else
      return 197;
  } else {
    if (poly[222].contains(lat, lng))
      return 197;
    else
      return 171;
  }
  else {
    if (poly[223].contains(lat, lng)) return 193;
    if (poly[224].contains(lat, lng))
      return 197;
    else
      return 171;
  }
  else {
    if (poly[225].contains(lat, lng)) return 82;
    if (poly[226].contains(lat, lng)) return 171;
    if (poly[227].contains(lat, lng))
      return 199;
    else
      return 174;
  }
  else if (lat < 62.989698) if (lng < -81.645224) if (lat < 56.187094) if (lng <
      -85.072612) {
    if (poly[228].contains(lat, lng))
      return 193;
    else
      return 171;
  } else if (lat < 52.785792) {
    if (poly[229].contains(lat, lng))
      return 126;
    else
      return 193;
  } else {
    if (poly[230].contains(lat, lng)) return 126;
    if (poly[231].contains(lat, lng))
      return 171;
    else
      return 193;
  }
  else {
    if (poly[232].contains(lat, lng)) return 126;
    if (poly[233].contains(lat, lng)) return 171;
    if (poly[234].contains(lat, lng))
      return 193;
    else
      return 72;
  }
  else if (lat < 56.187094) if (lng < -78.217837) if (lat < 52.785792) if (lng <
      -79.931531) {
    if (poly[235].contains(lat, lng))
      return 193;
    else
      return 126;
  } else if (lat < 51.085141)
    return 193;
  else if (lng < -79.074684) {
    if (poly[236].contains(lat, lng))
      return 193;
    else
      return 126;
  } else {
    if (poly[237].contains(lat, lng))
      return 126;
    else
      return 193;
  }
  else if (lng < -79.931531)
    return 126;
  else if (lat < 54.486443) if (lng < -79.074684) {
    if (poly[238].contains(lat, lng)) return 193;
    if (poly[239].contains(lat, lng)) return 193;
    if (poly[240].contains(lat, lng)) return 193;
    if (poly[241].contains(lat, lng)) return 193;
    if (poly[242].contains(lat, lng)) return 193;
    if (poly[243].contains(lat, lng)) return 193;
    if (poly[244].contains(lat, lng)) return 193;
    if (poly[245].contains(lat, lng)) return 193;
    if (poly[246].contains(lat, lng)) return 193;
    if (poly[247].contains(lat, lng))
      return 193;
    else
      return 126;
  } else if (lat < 53.636117) {
    if (poly[248].contains(lat, lng))
      return 193;
    else
      return 126;
  } else {
    if (poly[249].contains(lat, lng)) return 126;
    if (poly[250].contains(lat, lng)) return 126;
    if (poly[251].contains(lat, lng)) return 126;
    if (poly[252].contains(lat, lng)) return 126;
    if (poly[253].contains(lat, lng)) return 126;
    if (poly[254].contains(lat, lng)) return 126;
    if (poly[255].contains(lat, lng)) return 126;
    if (poly[256].contains(lat, lng)) return 126;
    if (poly[257].contains(lat, lng))
      return 126;
    else
      return 193;
  }
  else {
    if (poly[258].contains(lat, lng))
      return 193;
    else
      return 126;
  }
  else {
    if (poly[259].contains(lat, lng))
      return 126;
    else
      return 193;
  }
  else if (lng < -78.217837) {
    if (poly[260].contains(lat, lng)) return 193;
    if (poly[261].contains(lat, lng))
      return 193;
    else
      return 126;
  } else if (lat < 59.588396) {
    if (poly[262].contains(lat, lng))
      return 193;
    else
      return 126;
  } else if (lng < -76.504143) if (lat < 61.289047) {
    if (poly[263].contains(lat, lng))
      return 193;
    else
      return 126;
  } else {
    if (poly[264].contains(lat, lng))
      return 193;
    else
      return 126;
  }
  else {
    if (poly[265].contains(lat, lng))
      return 193;
    else
      return 126;
  }
  else if (lat < 73.157443) if (lng < -81.645224) if (lat < 68.073571) if (lng <
      -85.072612) if (lat < 65.531634) {
    if (poly[266].contains(lat, lng))
      return 72;
    else
      return 171;
  } else {
    if (poly[267].contains(lat, lng)) return 72;
    if (poly[268].contains(lat, lng))
      return 72;
    else
      return 171;
  }
  else if (lat < 65.531634) if (lng < -83.358918) if (lat < 64.260666) {
    if (poly[269].contains(lat, lng)) return 126;
    if (poly[270].contains(lat, lng))
      return 171;
    else
      return 72;
  } else {
    if (poly[271].contains(lat, lng)) return 126;
    if (poly[272].contains(lat, lng))
      return 171;
    else
      return 72;
  }
  else if (lat < 64.260666) {
    if (poly[273].contains(lat, lng))
      return 72;
    else
      return 126;
  } else {
    if (poly[274].contains(lat, lng))
      return 72;
    else
      return 126;
  }
  else {
    if (poly[275].contains(lat, lng)) return 72;
    if (poly[276].contains(lat, lng)) return 72;
    if (poly[277].contains(lat, lng)) return 171;
    if (poly[278].contains(lat, lng))
      return 171;
    else
      return 126;
  }
  else {
    if (poly[279].contains(lat, lng))
      return 171;
    else
      return 126;
  }
  else {
    if (poly[280].contains(lat, lng)) return 72;
    if (poly[281].contains(lat, lng))
      return 72;
    else
      return 126;
  }
  else {
    if (poly[282].contains(lat, lng))
      return 171;
    else
      return 126;
  }
}

int _call4(num lat, num lng) {
  if (lat < 47.575298) if (lng < -100.260872) if (lng < -102.432684) if (lng <
      -103.434273) {
    if (poly[283].contains(lat, lng))
      return 88;
    else
      return 97;
  } else if (lng < -103.093448) {
    if (poly[284].contains(lat, lng))
      return 88;
    else
      return 97;
  } else {
    if (poly[285].contains(lat, lng))
      return 88;
    else
      return 97;
  }
  else if (lat < 42.766993) {
    if (poly[286].contains(lat, lng))
      return 97;
    else
      return 88;
  } else if (lat < 45.171146) {
    if (poly[287].contains(lat, lng))
      return 97;
    else
      return 88;
  } else if (lat < 46.373222) {
    if (poly[288].contains(lat, lng)) return 88;
    if (poly[289].contains(lat, lng))
      return 159;
    else
      return 97;
  } else if (lng < -101.346778) {
    if (poly[290].contains(lat, lng)) return 88;
    if (poly[291].contains(lat, lng)) return 97;
    if (poly[292].contains(lat, lng)) return 158;
    if (poly[293].contains(lat, lng))
      return 159;
    else
      return 157;
  } else {
    if (poly[294].contains(lat, lng)) return 97;
    if (poly[295].contains(lat, lng)) return 157;
    if (poly[296].contains(lat, lng)) return 158;
    if (poly[297].contains(lat, lng))
      return 159;
    else
      return 88;
  }
  else if (lat < 38.929415) if (lng < -86.679886) if (lng < -93.470379)
    return 88;
  else if (lng < -90.075132)
    return 88;
  else if (lng < -88.377509)
    return 88;
  else if (lng < -87.528698) {
    if (poly[298].contains(lat, lng)) return 123;
    if (poly[299].contains(lat, lng))
      return 123;
    else
      return 88;
  } else if (lat < 38.444052) {
    if (poly[300].contains(lat, lng)) return 117;
    if (poly[301].contains(lat, lng)) return 119;
    if (poly[302].contains(lat, lng)) return 120;
    if (poly[303].contains(lat, lng)) return 121;
    if (poly[304].contains(lat, lng))
      return 123;
    else
      return 88;
  } else {
    if (poly[305].contains(lat, lng)) return 88;
    if (poly[306].contains(lat, lng)) return 88;
    if (poly[307].contains(lat, lng)) return 88;
    if (poly[308].contains(lat, lng)) return 117;
    if (poly[309].contains(lat, lng))
      return 120;
    else
      return 123;
  }
  else if (lng < -85.405100) if (lng < -86.042493) if (lat <
      38.444045) if (lng < -86.361189) {
    if (poly[310].contains(lat, lng)) return 88;
    if (poly[311].contains(lat, lng)) return 117;
    if (poly[312].contains(lat, lng)) return 121;
    if (poly[313].contains(lat, lng)) return 153;
    if (poly[314].contains(lat, lng))
      return 153;
    else
      return 119;
  } else {
    if (poly[315].contains(lat, lng)) return 117;
    if (poly[316].contains(lat, lng)) return 129;
    if (poly[317].contains(lat, lng))
      return 153;
    else
      return 119;
  }
  else
    return 117;
  else {
    if (poly[318].contains(lat, lng)) return 117;
    if (poly[319].contains(lat, lng)) return 153;
    if (poly[320].contains(lat, lng))
      return 153;
    else
      return 129;
  }
  else {
    if (poly[321].contains(lat, lng)) return 117;
    if (poly[322].contains(lat, lng))
      return 122;
    else
      return 153;
  }
  else if (lat < 41.433800) if (lng < -86.466347) {
    if (poly[323].contains(lat, lng)) return 117;
    if (poly[324].contains(lat, lng)) return 118;
    if (poly[325].contains(lat, lng))
      return 124;
    else
      return 88;
  } else {
    if (poly[326].contains(lat, lng))
      return 153;
    else
      return 117;
  }
  else if (lng < -87.263670) if (lng < -93.762271)
    return 88;
  else if (lng < -90.512970)
    return 88;
  else if (lat < 44.504549)
    return 88;
  else if (lng < -88.888320) {
    if (poly[327].contains(lat, lng)) return 88;
    if (poly[328].contains(lat, lng))
      return 98;
    else
      return 144;
  } else if (lat < 46.039924) if (lng < -88.075995) {
    if (poly[329].contains(lat, lng)) return 144;
    if (poly[330].contains(lat, lng))
      return 144;
    else
      return 88;
  } else {
    if (poly[331].contains(lat, lng)) return 88;
    if (poly[332].contains(lat, lng)) return 88;
    if (poly[333].contains(lat, lng)) return 98;
    if (poly[334].contains(lat, lng))
      return 98;
    else
      return 144;
  }
  else {
    if (poly[335].contains(lat, lng)) return 88;
    if (poly[336].contains(lat, lng))
      return 144;
    else
      return 98;
  }
  else if (lng < -81.027060) if (lng < -84.145365) {
    if (poly[337].contains(lat, lng)) return 88;
    if (poly[338].contains(lat, lng)) return 117;
    if (poly[339].contains(lat, lng)) return 153;
    if (poly[340].contains(lat, lng))
      return 193;
    else
      return 98;
  } else {
    if (poly[341].contains(lat, lng)) return 98;
    if (poly[342].contains(lat, lng)) return 98;
    if (poly[343].contains(lat, lng))
      return 153;
    else
      return 193;
  }
  else {
    if (poly[344].contains(lat, lng))
      return 193;
    else
      return 153;
  }
  else if (lat < 49.384490) if (lng < -95.153150) if (lng < -102.711964) {
    if (poly[345].contains(lat, lng)) return 97;
    if (poly[346].contains(lat, lng)) return 97;
    if (poly[347].contains(lat, lng))
      return 173;
    else
      return 88;
  } else if (lat < 47.615253) if (lng < -102.250025) {
    if (poly[348].contains(lat, lng))
      return 97;
    else
      return 88;
  } else {
    if (poly[349].contains(lat, lng))
      return 97;
    else
      return 88;
  }
  else {
    if (poly[350].contains(lat, lng)) return 88;
    if (poly[351].contains(lat, lng))
      return 197;
    else
      return 173;
  }
  else if (lng < -90.000000) if (lng < -92.576575) {
    if (poly[352].contains(lat, lng)) return 88;
    if (poly[353].contains(lat, lng))
      return 170;
    else
      return 197;
  } else if (lng < -91.288287) {
    if (poly[354].contains(lat, lng)) return 88;
    if (poly[355].contains(lat, lng))
      return 197;
    else
      return 72;
  } else {
    if (poly[356].contains(lat, lng)) return 88;
    if (poly[357].contains(lat, lng)) return 193;
    if (poly[358].contains(lat, lng))
      return 197;
    else
      return 72;
  }
  else if (lat < 48.515693) {
    if (poly[359].contains(lat, lng)) return 88;
    if (poly[360].contains(lat, lng)) return 98;
    if (poly[361].contains(lat, lng))
      return 191;
    else
      return 193;
  } else {
    if (poly[362].contains(lat, lng))
      return 193;
    else
      return 154;
  }
  else
    return _call3(lat, lng);
}

int _call5(num lat, num lng) {
  if (lat < 37.958689) if (lng < -92.524388) if (lng < -154.592785) if (lng <
      -177.116176)
    return 410;
  else
    return 404;
  else
    return _call1(lat, lng);
  else if (lat < 18.851981) if (lng < -82.172962) if (lng < -87.101885) if (lat <
      16.298406) if (lng < -90.424127) if (lat < 16.259052) {
    if (poly[363].contains(lat, lng))
      return 147;
    else
      return 111;
  } else {
    if (poly[364].contains(lat, lng))
      return 111;
    else
      return 147;
  }
  else if (lat < 14.277527) if (lng < -88.763006) {
    if (poly[365].contains(lat, lng)) return 111;
    if (poly[366].contains(lat, lng))
      return 189;
    else
      return 102;
  } else {
    if (poly[367].contains(lat, lng)) return 102;
    if (poly[368].contains(lat, lng))
      return 137;
    else
      return 189;
  }
  else if (lng < -88.763006) if (lat < 15.287966) {
    if (poly[369].contains(lat, lng)) return 102;
    if (poly[370].contains(lat, lng))
      return 189;
    else
      return 111;
  } else {
    if (poly[371].contains(lat, lng))
      return 77;
    else
      return 111;
  }
  else {
    if (poly[372].contains(lat, lng)) return 77;
    if (poly[373].contains(lat, lng))
      return 111;
    else
      return 189;
  }
  else if (lng < -90.371441) if (lat < 17.575193) {
    if (poly[374].contains(lat, lng))
      return 111;
    else
      return 147;
  } else {
    if (poly[375].contains(lat, lng)) return 111;
    if (poly[376].contains(lat, lng))
      return 147;
    else
      return 145;
  }
  else if (lng < -88.736663) {
    if (poly[377].contains(lat, lng)) return 77;
    if (poly[378].contains(lat, lng)) return 111;
    if (poly[379].contains(lat, lng))
      return 145;
    else
      return 84;
  } else {
    if (poly[380].contains(lat, lng))
      return 84;
    else
      return 77;
  }
  else if (lat < 15.033118) if (lat < 12.408226)
    return 137;
  else if (lng < -83.042535) if (lng < -85.072210) if (lat < 13.720672) {
    if (poly[381].contains(lat, lng))
      return 189;
    else
      return 137;
  } else if (lng < -86.087047) {
    if (poly[382].contains(lat, lng))
      return 137;
    else
      return 189;
  } else {
    if (poly[383].contains(lat, lng))
      return 189;
    else
      return 137;
  }
  else if (lat < 13.720672)
    return 137;
  else if (lng < -84.057372) {
    if (poly[384].contains(lat, lng))
      return 189;
    else
      return 137;
  } else {
    if (poly[385].contains(lat, lng))
      return 189;
    else
      return 137;
  }
  else if (lat < 14.688147)
    return 137;
  else
    return 189;
  else
    return 189;
  else if (lat < 16.057127)
    return 80;
  else if (lng < -75.496288)
    return 127;
  else
    return 165;
  else if (lng < -86.493266) if (lat < 21.830571) if (lng < -91.750739)
    return 145;
  else if (lng < -89.122003) {
    if (poly[386].contains(lat, lng)) return 84;
    if (poly[387].contains(lat, lng))
      return 84;
    else
      return 145;
  } else {
    if (poly[388].contains(lat, lng)) return 145;
    if (poly[389].contains(lat, lng))
      return 145;
    else
      return 84;
  }
  else if (lat < 22.783270)
    return 145;
  else {
    if (poly[390].contains(lat, lng))
      return 121;
    else
      return 88;
  }
  else if (lat < 23.481697) if (lat < 19.596903)
    return 87;
  else if (lat < 19.973824) if (lng < -79.511095)
    return 87;
  else {
    if (poly[391].contains(lat, lng))
      return 153;
    else
      return 115;
  }
  else {
    if (poly[392].contains(lat, lng))
      return 152;
    else
      return 115;
  }
  else if (lng < -84.575844) if (lat < 33.673127) if (lat < 31.530347) {
    if (poly[393].contains(lat, lng))
      return 88;
    else
      return 153;
  } else {
    if (poly[394].contains(lat, lng))
      return 153;
    else
      return 88;
  }
  else if (lat < 35.815908) {
    if (poly[395].contains(lat, lng))
      return 153;
    else
      return 88;
  } else if (lat < 36.887299) {
    if (poly[396].contains(lat, lng)) return 88;
    if (poly[397].contains(lat, lng))
      return 130;
    else
      return 153;
  } else {
    if (poly[398].contains(lat, lng)) return 88;
    if (poly[399].contains(lat, lng)) return 130;
    if (poly[400].contains(lat, lng))
      return 130;
    else
      return 153;
  }
  else if (lng < -82.585009)
    return 153;
  else {
    if (poly[401].contains(lat, lng))
      return 152;
    else
      return 153;
  }
  else if (lng < -108.824497) if (lng < -141.000000) if (lat <
      57.465233) if (lng < -162.000000) if (lng < -171.954674)
    return 53;
  else if (lat < 53.299009) {
    if (poly[402].contains(lat, lng))
      return 155;
    else
      return 53;
  } else
    return 155;
  else
    return 54;
  else if (lng < -174.939411)
    return 215;
  else if (lng < -162.000000) if (lat < 64.008111)
    return 155;
  else if (lng < -168.924586) {
    if (poly[403].contains(lat, lng))
      return 155;
    else
      return 215;
  } else
    return 155;
  else if (lng < -145.834392)
    return 54;
  else {
    if (poly[404].contains(lat, lng))
      return 196;
    else
      return 54;
  }
  else if (lng < -129.974167) if (lat < 60.352505) if (lat <
      55.300967) if (lat < 54.456000)
    return 195;
  else {
    if (poly[405].contains(lat, lng)) return 146;
    if (poly[406].contains(lat, lng)) return 195;
    if (poly[407].contains(lat, lng))
      return 195;
    else
      return 181;
  }
  else if (lat < 59.798041) if (lng < -135.487083) {
    if (poly[408].contains(lat, lng)) return 181;
    if (poly[409].contains(lat, lng)) return 195;
    if (poly[410].contains(lat, lng))
      return 198;
    else
      return 128;
  } else if (lng < -132.730625) if (lat < 57.549504) {
    if (poly[411].contains(lat, lng))
      return 128;
    else
      return 181;
  } else {
    if (poly[412].contains(lat, lng)) return 181;
    if (poly[413].contains(lat, lng)) return 195;
    if (poly[414].contains(lat, lng))
      return 195;
    else
      return 128;
  }
  else {
    if (poly[415].contains(lat, lng)) return 128;
    if (poly[416].contains(lat, lng))
      return 195;
    else
      return 181;
  }
  else {
    if (poly[417].contains(lat, lng)) return 195;
    if (poly[418].contains(lat, lng))
      return 198;
    else
      return 196;
  }
  else if (lat < 63.588796) if (lat < 63.337384) {
    if (poly[419].contains(lat, lng))
      return 199;
    else
      return 196;
  } else {
    if (poly[420].contains(lat, lng))
      return 199;
    else
      return 196;
  }
  else if (lng < -139.277500) {
    if (poly[421].contains(lat, lng))
      return 196;
    else
      return 95;
  } else if (lng < -134.625833) {
    if (poly[422].contains(lat, lng))
      return 199;
    else
      return 196;
  } else if (lat < 67.027228) if (lng < -132.300000) if (lat < 65.308012) {
    if (poly[423].contains(lat, lng))
      return 199;
    else
      return 196;
  } else if (lng < -133.462917) {
    if (poly[424].contains(lat, lng))
      return 199;
    else
      return 196;
  } else {
    if (poly[425].contains(lat, lng))
      return 196;
    else
      return 199;
  }
  else if (lat < 65.308012) {
    if (poly[426].contains(lat, lng))
      return 199;
    else
      return 196;
  } else {
    if (poly[427].contains(lat, lng)) return 196;
    if (poly[428].contains(lat, lng))
      return 196;
    else
      return 199;
  }
  else {
    if (poly[429].contains(lat, lng))
      return 125;
    else
      return 199;
  }
  else
    return _call2(lat, lng);
  else
    return _call4(lat, lng);
}

int _call6(num lat, num lng) {
  if (lng < -62.609179) if (lat < -41.992126) if (lng < -69.048916) if (lng <
      -71.919683) {
    if (poly[430].contains(lat, lng)) return 60;
    if (poly[431].contains(lat, lng)) return 60;
    if (poly[432].contains(lat, lng)) return 60;
    if (poly[433].contains(lat, lng))
      return 60;
    else
      return 177;
  } else if (lat < -43.996000) if (lng < -70.484300) if (lat < -44.997937) {
    if (poly[434].contains(lat, lng))
      return 60;
    else
      return 177;
  } else {
    if (poly[435].contains(lat, lng))
      return 60;
    else
      return 177;
  }
  else
    return 60;
  else {
    if (poly[436].contains(lat, lng)) return 60;
    if (poly[437].contains(lat, lng))
      return 66;
    else
      return 177;
  }
  else {
    if (poly[438].contains(lat, lng))
      return 66;
    else
      return 60;
  }
  else if (lng < -64.780716) if (lat < -35.192695) if (lng <
      -69.592084) if (lat < -38.592410) if (lng < -71.997768)
    return 177;
  else if (lat < -40.292268) {
    if (poly[439].contains(lat, lng)) return 66;
    if (poly[440].contains(lat, lng))
      return 66;
    else
      return 177;
  } else if (lng < -70.794926) if (lat < -39.442339) {
    if (poly[441].contains(lat, lng)) return 177;
    if (poly[442].contains(lat, lng))
      return 177;
    else
      return 66;
  } else {
    if (poly[443].contains(lat, lng))
      return 177;
    else
      return 66;
  }
  else
    return 66;
  else if (lng < -71.900482)
    return 177;
  else if (lat < -36.892553) {
    if (poly[444].contains(lat, lng)) return 64;
    if (poly[445].contains(lat, lng))
      return 177;
    else
      return 66;
  } else if (lng < -70.746283) {
    if (poly[446].contains(lat, lng))
      return 66;
    else
      return 177;
  } else if (lat < -36.042624) {
    if (poly[447].contains(lat, lng)) return 64;
    if (poly[448].contains(lat, lng))
      return 177;
    else
      return 66;
  } else {
    if (poly[449].contains(lat, lng))
      return 64;
    else
      return 177;
  }
  else {
    if (poly[450].contains(lat, lng)) return 66;
    if (poly[451].contains(lat, lng))
      return 68;
    else
      return 64;
  }
  else if (lng < -68.711575) if (lat < -31.792980) if (lng < -70.677005)
    return 177;
  else if (lat < -33.492837) {
    if (poly[452].contains(lat, lng))
      return 177;
    else
      return 64;
  } else if (lng < -69.694290) if (lat < -32.642908) {
    if (poly[453].contains(lat, lng))
      return 64;
    else
      return 177;
  } else {
    if (poly[454].contains(lat, lng)) return 64;
    if (poly[455].contains(lat, lng)) return 64;
    if (poly[456].contains(lat, lng))
      return 177;
    else
      return 67;
  }
  else {
    if (poly[457].contains(lat, lng))
      return 64;
    else
      return 67;
  }
  else if (lat < -30.093122) {
    if (poly[458].contains(lat, lng))
      return 67;
    else
      return 177;
  } else if (lng < -70.265666)
    return 177;
  else if (lat < -29.243193) {
    if (poly[459].contains(lat, lng)) return 63;
    if (poly[460].contains(lat, lng))
      return 177;
    else
      return 67;
  } else {
    if (poly[461].contains(lat, lng)) return 63;
    if (poly[462].contains(lat, lng))
      return 177;
    else
      return 67;
  }
  else if (lat < -31.792980) if (lng < -66.746146) if (lat < -33.492837) {
    if (poly[463].contains(lat, lng)) return 68;
    if (poly[464].contains(lat, lng))
      return 68;
    else
      return 64;
  } else if (lng < -67.728860) {
    if (poly[465].contains(lat, lng))
      return 67;
    else
      return 64;
  } else {
    if (poly[466].contains(lat, lng)) return 63;
    if (poly[467].contains(lat, lng)) return 64;
    if (poly[468].contains(lat, lng))
      return 67;
    else
      return 68;
  }
  else if (lat < -33.492837) {
    if (poly[469].contains(lat, lng)) return 61;
    if (poly[470].contains(lat, lng)) return 64;
    if (poly[471].contains(lat, lng)) return 64;
    if (poly[472].contains(lat, lng))
      return 66;
    else
      return 68;
  } else {
    if (poly[473].contains(lat, lng)) return 61;
    if (poly[474].contains(lat, lng)) return 63;
    if (poly[475].contains(lat, lng))
      return 67;
    else
      return 68;
  }
  else if (lng < -66.746146) {
    if (poly[476].contains(lat, lng))
      return 67;
    else
      return 63;
  } else {
    if (poly[477].contains(lat, lng)) return 61;
    if (poly[478].contains(lat, lng)) return 61;
    if (poly[479].contains(lat, lng))
      return 63;
    else
      return 60;
  }
  else {
    if (poly[480].contains(lat, lng)) return 59;
    if (poly[481].contains(lat, lng))
      return 61;
    else
      return 66;
  }
  else if (lat < -30.085396) if (lat < -33.261612) if (lng < -60.260223) {
    if (poly[482].contains(lat, lng))
      return 61;
    else
      return 59;
  } else if (lng < -55.703699) {
    if (poly[483].contains(lat, lng)) return 61;
    if (poly[484].contains(lat, lng))
      return 150;
    else
      return 59;
  } else {
    if (poly[485].contains(lat, lng))
      return 179;
    else
      return 150;
  }
  else if (lng < -58.087644) {
    if (poly[486].contains(lat, lng))
      return 61;
    else
      return 150;
  } else if (lng < -54.005825) if (lng < -56.046735) if (lat < -31.673504) {
    if (poly[487].contains(lat, lng)) return 61;
    if (poly[488].contains(lat, lng))
      return 61;
    else
      return 150;
  } else if (lng < -57.067189) {
    if (poly[489].contains(lat, lng)) return 61;
    if (poly[490].contains(lat, lng))
      return 179;
    else
      return 150;
  } else {
    if (poly[491].contains(lat, lng))
      return 150;
    else
      return 179;
  }
  else {
    if (poly[492].contains(lat, lng))
      return 150;
    else
      return 179;
  }
  else {
    if (poly[493].contains(lat, lng))
      return 150;
    else
      return 179;
  }
  else if (lng < -55.883574) if (lat < -28.479231) {
    if (poly[494].contains(lat, lng))
      return 179;
    else
      return 61;
  } else {
    if (poly[495].contains(lat, lng))
      return 179;
    else
      return 61;
  }
  else {
    if (poly[496].contains(lat, lng))
      return 61;
    else
      return 179;
  }
}

int _call7(num lat, num lng) {
  if (lat < -24.971517) if (lng < -57.554695) if (lat < -27.256324) {
    if (poly[497].contains(lat, lng))
      return 71;
    else
      return 61;
  } else if (lat < -25.443098) {
    if (poly[498].contains(lat, lng))
      return 61;
    else
      return 71;
  } else {
    if (poly[499].contains(lat, lng))
      return 71;
    else
      return 61;
  }
  else if (lng < -55.859440) {
    if (poly[500].contains(lat, lng))
      return 61;
    else
      return 71;
  } else if (lng < -51.466260) if (lng < -53.662850) if (lat <
      -26.177634) if (lng < -54.761145) {
    if (poly[501].contains(lat, lng))
      return 61;
    else
      return 71;
  } else if (lat < -26.780692) {
    if (poly[502].contains(lat, lng))
      return 61;
    else
      return 179;
  } else {
    if (poly[503].contains(lat, lng)) return 71;
    if (poly[504].contains(lat, lng)) return 179;
    if (poly[505].contains(lat, lng))
      return 179;
    else
      return 61;
  }
  else if (lng < -54.761145)
    return 71;
  else if (lat < -25.574576) if (lng < -54.211998) {
    if (poly[506].contains(lat, lng)) return 71;
    if (poly[507].contains(lat, lng)) return 179;
    if (poly[508].contains(lat, lng))
      return 179;
    else
      return 61;
  } else {
    if (poly[509].contains(lat, lng)) return 179;
    if (poly[510].contains(lat, lng)) return 179;
    if (poly[511].contains(lat, lng)) return 179;
    if (poly[512].contains(lat, lng))
      return 179;
    else
      return 61;
  }
  else {
    if (poly[513].contains(lat, lng)) return 61;
    if (poly[514].contains(lat, lng)) return 61;
    if (poly[515].contains(lat, lng)) return 61;
    if (poly[516].contains(lat, lng)) return 61;
    if (poly[517].contains(lat, lng)) return 61;
    if (poly[518].contains(lat, lng))
      return 71;
    else
      return 179;
  }
  else {
    if (poly[519].contains(lat, lng)) return 61;
    if (poly[520].contains(lat, lng))
      return 61;
    else
      return 179;
  }
  else
    return 179;
  else if (lng < -50.805843) if (lat < -19.331948) if (lng <
      -54.488672) if (lat < -22.151733) if (lng < -56.330086) {
    if (poly[521].contains(lat, lng)) return 83;
    if (poly[522].contains(lat, lng))
      return 83;
    else
      return 71;
  } else if (lat < -23.561625) {
    if (poly[523].contains(lat, lng))
      return 83;
    else
      return 71;
  } else {
    if (poly[524].contains(lat, lng))
      return 71;
    else
      return 83;
  }
  else if (lng < -56.330086) if (lat < -20.741840) if (lng < -57.250793) {
    if (poly[525].contains(lat, lng))
      return 83;
    else
      return 71;
  } else {
    if (poly[526].contains(lat, lng))
      return 71;
    else
      return 83;
  }
  else {
    if (poly[527].contains(lat, lng)) return 71;
    if (poly[528].contains(lat, lng)) return 71;
    if (poly[529].contains(lat, lng))
      return 132;
    else
      return 83;
  }
  else
    return 83;
  else if (lat < -22.151733) {
    if (poly[530].contains(lat, lng)) return 71;
    if (poly[531].contains(lat, lng))
      return 83;
    else
      return 179;
  } else {
    if (poly[532].contains(lat, lng))
      return 179;
    else
      return 83;
  }
  else if (lng < -54.488672) if (lat < -16.512163) if (lng <
      -56.330086) if (lat < -17.922055) {
    if (poly[533].contains(lat, lng))
      return 132;
    else
      return 83;
  } else if (lng < -57.250793) {
    if (poly[534].contains(lat, lng)) return 92;
    if (poly[535].contains(lat, lng))
      return 132;
    else
      return 83;
  } else {
    if (poly[536].contains(lat, lng)) return 92;
    if (poly[537].contains(lat, lng))
      return 92;
    else
      return 83;
  }
  else if (lat < -17.922055)
    return 83;
  else if (lng < -55.409379) {
    if (poly[538].contains(lat, lng))
      return 92;
    else
      return 83;
  } else {
    if (poly[539].contains(lat, lng))
      return 92;
    else
      return 83;
  }
  else
    return 92;
  else if (lat < -16.512163) if (lng < -52.647375) if (lat < -17.922055) {
    if (poly[540].contains(lat, lng)) return 92;
    if (poly[541].contains(lat, lng)) return 92;
    if (poly[542].contains(lat, lng))
      return 179;
    else
      return 83;
  } else if (lng < -53.568023) {
    if (poly[543].contains(lat, lng))
      return 92;
    else
      return 83;
  } else {
    if (poly[544].contains(lat, lng))
      return 179;
    else
      return 92;
  }
  else {
    if (poly[545].contains(lat, lng)) return 83;
    if (poly[546].contains(lat, lng))
      return 92;
    else
      return 179;
  }
  else if (lng < -52.647258) {
    if (poly[547].contains(lat, lng))
      return 179;
    else
      return 92;
  } else if (lat < -15.102270) {
    if (poly[548].contains(lat, lng))
      return 179;
    else
      return 92;
  } else {
    if (poly[549].contains(lat, lng))
      return 179;
    else
      return 92;
  }
  else if (lng < -44.648778) if (lat < -19.331948)
    return 179;
  else if (lng < -47.727311)
    return 179;
  else if (lat < -16.512163)
    return 179;
  else if (lng < -46.188044) {
    if (poly[550].contains(lat, lng))
      return 73;
    else
      return 179;
  } else if (lat < -15.102270) {
    if (poly[551].contains(lat, lng))
      return 73;
    else
      return 179;
  } else {
    if (poly[552].contains(lat, lng)) return 179;
    if (poly[553].contains(lat, lng))
      return 179;
    else
      return 73;
  }
  else if (lat < -18.741865)
    return 179;
  else if (lng < -41.570246) if (lat < -16.217122)
    return 179;
  else if (lng < -43.109512) {
    if (poly[554].contains(lat, lng))
      return 179;
    else
      return 73;
  } else {
    if (poly[555].contains(lat, lng))
      return 179;
    else
      return 73;
  }
  else if (lat < -16.217122) if (lng < -40.030979) {
    if (poly[556].contains(lat, lng))
      return 73;
    else
      return 179;
  } else {
    if (poly[557].contains(lat, lng)) return 179;
    if (poly[558].contains(lat, lng))
      return 179;
    else
      return 73;
  }
  else {
    if (poly[559].contains(lat, lng))
      return 179;
    else
      return 73;
  }
}

int _call8(num lat, num lng) {
  if (lng < -64.150670) if (lat < -25.168567) if (lng < -66.537674) if (lng <
      -69.003680) {
    if (poly[560].contains(lat, lng)) return 60;
    if (poly[561].contains(lat, lng))
      return 63;
    else
      return 177;
  } else if (lat < -26.780915) if (lng < -67.770677) if (lat < -27.587090) {
    if (poly[562].contains(lat, lng))
      return 63;
    else
      return 60;
  } else {
    if (poly[563].contains(lat, lng))
      return 177;
    else
      return 60;
  }
  else {
    if (poly[564].contains(lat, lng))
      return 63;
    else
      return 60;
  }
  else {
    if (poly[565].contains(lat, lng)) return 66;
    if (poly[566].contains(lat, lng)) return 66;
    if (poly[567].contains(lat, lng))
      return 177;
    else
      return 60;
  }
  else if (lat < -25.700714) if (lng < -64.268303) if (lat < -27.046989) {
    if (poly[568].contains(lat, lng)) return 60;
    if (poly[569].contains(lat, lng))
      return 61;
    else
      return 69;
  } else if (lng < -65.402989) {
    if (poly[570].contains(lat, lng)) return 60;
    if (poly[571].contains(lat, lng))
      return 66;
    else
      return 69;
  } else {
    if (poly[572].contains(lat, lng)) return 61;
    if (poly[573].contains(lat, lng))
      return 66;
    else
      return 69;
  }
  else {
    if (poly[574].contains(lat, lng))
      return 66;
    else
      return 61;
  }
  else {
    if (poly[575].contains(lat, lng))
      return 60;
    else
      return 66;
  }
  else if (lat < -19.430473) if (lng < -69.470560) {
    if (poly[576].contains(lat, lng))
      return 133;
    else
      return 177;
  } else if (lat < -22.299520) if (lng < -66.810615) if (lat < -23.734043) {
    if (poly[577].contains(lat, lng)) return 62;
    if (poly[578].contains(lat, lng))
      return 177;
    else
      return 66;
  } else {
    if (poly[579].contains(lat, lng)) return 62;
    if (poly[580].contains(lat, lng)) return 66;
    if (poly[581].contains(lat, lng))
      return 177;
    else
      return 132;
  }
  else if (lat < -23.734043) if (lng < -65.480642) {
    if (poly[582].contains(lat, lng))
      return 66;
    else
      return 62;
  } else {
    if (poly[583].contains(lat, lng))
      return 66;
    else
      return 62;
  }
  else if (lng < -65.480642) {
    if (poly[584].contains(lat, lng)) return 66;
    if (poly[585].contains(lat, lng))
      return 132;
    else
      return 62;
  } else if (lat < -23.016782) {
    if (poly[586].contains(lat, lng))
      return 66;
    else
      return 62;
  } else {
    if (poly[587].contains(lat, lng)) return 62;
    if (poly[588].contains(lat, lng))
      return 132;
    else
      return 66;
  }
  else if (lng < -66.810615) {
    if (poly[589].contains(lat, lng))
      return 177;
    else
      return 132;
  } else {
    if (poly[590].contains(lat, lng)) return 62;
    if (poly[591].contains(lat, lng))
      return 66;
    else
      return 132;
  }
  else if (lng < -69.470560) {
    if (poly[592].contains(lat, lng)) return 132;
    if (poly[593].contains(lat, lng))
      return 177;
    else
      return 133;
  } else if (lat < -16.561425) {
    if (poly[594].contains(lat, lng)) return 133;
    if (poly[595].contains(lat, lng)) return 133;
    if (poly[596].contains(lat, lng))
      return 177;
    else
      return 132;
  } else if (lng < -66.810615) if (lat < -15.126902) {
    if (poly[597].contains(lat, lng))
      return 133;
    else
      return 132;
  } else {
    if (poly[598].contains(lat, lng))
      return 133;
    else
      return 132;
  }
  else
    return 132;
  else if (lat < -26.358070) {
    if (poly[599].contains(lat, lng))
      return 71;
    else
      return 61;
  } else if (lat < -19.287647) if (lng < -59.068928) if (lat <
      -22.822858) if (lng < -61.609799) {
    if (poly[600].contains(lat, lng)) return 66;
    if (poly[601].contains(lat, lng))
      return 71;
    else
      return 61;
  } else {
    if (poly[602].contains(lat, lng))
      return 71;
    else
      return 61;
  }
  else if (lng < -61.609799) if (lat < -21.055253) if (lng < -62.880235) {
    if (poly[603].contains(lat, lng))
      return 132;
    else
      return 66;
  } else if (lat < -21.939056) if (lng < -62.245017) {
    if (poly[604].contains(lat, lng)) return 61;
    if (poly[605].contains(lat, lng)) return 71;
    if (poly[606].contains(lat, lng)) return 71;
    if (poly[607].contains(lat, lng))
      return 132;
    else
      return 66;
  } else {
    if (poly[608].contains(lat, lng)) return 61;
    if (poly[609].contains(lat, lng)) return 61;
    if (poly[610].contains(lat, lng))
      return 61;
    else
      return 71;
  }
  else {
    if (poly[611].contains(lat, lng))
      return 132;
    else
      return 71;
  }
  else {
    if (poly[612].contains(lat, lng))
      return 71;
    else
      return 132;
  }
  else {
    if (poly[613].contains(lat, lng))
      return 132;
    else
      return 71;
  }
  else if (lat < -24.634697) {
    if (poly[614].contains(lat, lng))
      return 71;
    else
      return 61;
  } else if (lat < -19.834362) {
    if (poly[615].contains(lat, lng))
      return 132;
    else
      return 71;
  } else {
    if (poly[616].contains(lat, lng))
      return 132;
    else
      return 71;
  }
  else if (lng < -61.161085)
    return 132;
  else if (lat < -16.490012) {
    if (poly[617].contains(lat, lng))
      return 92;
    else
      return 132;
  } else {
    if (poly[618].contains(lat, lng))
      return 92;
    else
      return 132;
  }
}

int _call9(num lat, num lng) {
  if (lat < 0.627796) if (lng < -61.358472) if (lat < -3.360249)
    return 138;
  else if (lng < -63.989208)
    return 138;
  else if (lat < -1.366227) {
    if (poly[619].contains(lat, lng))
      return 79;
    else
      return 138;
  } else if (lng < -62.673840)
    return 138;
  else if (lat < -0.369216) {
    if (poly[620].contains(lat, lng))
      return 79;
    else
      return 138;
  } else {
    if (poly[621].contains(lat, lng))
      return 138;
    else
      return 79;
  }
  else if (lat < -3.360249) {
    if (poly[622].contains(lat, lng))
      return 176;
    else
      return 138;
  } else if (lng < -58.727736) if (lat < -1.366227)
    return 138;
  else if (lng < -60.043104) if (lat < -0.369216) {
    if (poly[623].contains(lat, lng))
      return 79;
    else
      return 138;
  } else {
    if (poly[624].contains(lat, lng))
      return 138;
    else
      return 79;
  }
  else {
    if (poly[625].contains(lat, lng)) return 79;
    if (poly[626].contains(lat, lng)) return 176;
    if (poly[627].contains(lat, lng)) return 176;
    if (poly[628].contains(lat, lng))
      return 176;
    else
      return 138;
  }
  else if (lat < -1.366227) if (lng < -57.412368) {
    if (poly[629].contains(lat, lng))
      return 176;
    else
      return 138;
  } else {
    if (poly[630].contains(lat, lng))
      return 138;
    else
      return 176;
  }
  else {
    if (poly[631].contains(lat, lng)) return 138;
    if (poly[632].contains(lat, lng)) return 138;
    if (poly[633].contains(lat, lng))
      return 138;
    else
      return 176;
  }
  else if (lng < -61.358472) if (lat < 4.615840) if (lng < -63.989208) if (lat <
      2.621818) if (lng < -65.304576) {
    if (poly[634].contains(lat, lng))
      return 138;
    else
      return 85;
  } else if (lat < 1.624807) {
    if (poly[635].contains(lat, lng))
      return 138;
    else
      return 85;
  } else {
    if (poly[636].contains(lat, lng)) return 79;
    if (poly[637].contains(lat, lng))
      return 138;
    else
      return 85;
  }
  else {
    if (poly[638].contains(lat, lng)) return 79;
    if (poly[639].contains(lat, lng)) return 79;
    if (poly[640].contains(lat, lng))
      return 79;
    else
      return 85;
  }
  else if (lat < 2.621818) if (lng < -62.673840) if (lat < 1.624807) {
    if (poly[641].contains(lat, lng))
      return 79;
    else
      return 138;
  } else if (lng < -63.331524) {
    if (poly[642].contains(lat, lng)) return 79;
    if (poly[643].contains(lat, lng))
      return 138;
    else
      return 85;
  } else {
    if (poly[644].contains(lat, lng))
      return 138;
    else
      return 79;
  }
  else {
    if (poly[645].contains(lat, lng))
      return 138;
    else
      return 79;
  }
  else if (lng < -62.673840) if (lat < 3.618829) {
    if (poly[646].contains(lat, lng)) return 85;
    if (poly[647].contains(lat, lng)) return 85;
    if (poly[648].contains(lat, lng))
      return 85;
    else
      return 79;
  } else {
    if (poly[649].contains(lat, lng))
      return 85;
    else
      return 79;
  }
  else {
    if (poly[650].contains(lat, lng))
      return 85;
    else
      return 79;
  }
  else {
    if (poly[651].contains(lat, lng))
      return 113;
    else
      return 85;
  }
  else if (lat < 4.615840) if (lng < -58.727736) if (lat < 2.621818) if (lng <
      -60.043104)
    return 79;
  else if (lat < 1.624807) {
    if (poly[652].contains(lat, lng)) return 113;
    if (poly[653].contains(lat, lng))
      return 176;
    else
      return 79;
  } else {
    if (poly[654].contains(lat, lng))
      return 113;
    else
      return 79;
  }
  else if (lng < -60.043104) {
    if (poly[655].contains(lat, lng)) return 85;
    if (poly[656].contains(lat, lng))
      return 113;
    else
      return 79;
  } else if (lat < 3.618829) {
    if (poly[657].contains(lat, lng))
      return 113;
    else
      return 79;
  } else {
    if (poly[658].contains(lat, lng))
      return 79;
    else
      return 113;
  }
  else if (lat < 2.621818) if (lng < -57.412368) {
    if (poly[659].contains(lat, lng))
      return 113;
    else
      return 176;
  } else if (lat < 1.624807)
    return 176;
  else if (lng < -56.754684) {
    if (poly[660].contains(lat, lng)) return 163;
    if (poly[661].contains(lat, lng))
      return 176;
    else
      return 113;
  } else {
    if (poly[662].contains(lat, lng)) return 113;
    if (poly[663].contains(lat, lng))
      return 163;
    else
      return 176;
  }
  else {
    if (poly[664].contains(lat, lng))
      return 163;
    else
      return 113;
  }
  else if (lng < -58.727736) if (lat < 6.609862) if (lng < -60.043104) if (lat <
      5.612851) {
    if (poly[665].contains(lat, lng)) return 85;
    if (poly[666].contains(lat, lng)) return 113;
    if (poly[667].contains(lat, lng))
      return 113;
    else
      return 79;
  } else {
    if (poly[668].contains(lat, lng))
      return 113;
    else
      return 85;
  }
  else {
    if (poly[669].contains(lat, lng))
      return 79;
    else
      return 113;
  }
  else if (lng < -60.043104) if (lat < 7.606873) {
    if (poly[670].contains(lat, lng))
      return 85;
    else
      return 113;
  } else {
    if (poly[671].contains(lat, lng))
      return 113;
    else
      return 85;
  }
  else {
    if (poly[672].contains(lat, lng))
      return 85;
    else
      return 113;
  }
  else {
    if (poly[673].contains(lat, lng))
      return 163;
    else
      return 113;
  }
}

int _call10(num lat, num lng) {
  if (lat < -9.893535) if (lng < -71.171189) {
    if (poly[674].contains(lat, lng))
      return 175;
    else
      return 133;
  } else if (lng < -68.895567) if (lat < -11.792956) {
    if (poly[675].contains(lat, lng))
      return 133;
    else
      return 132;
  } else {
    if (poly[676].contains(lat, lng)) return 132;
    if (poly[677].contains(lat, lng))
      return 133;
    else
      return 175;
  }
  else if (lat < -11.792956) {
    if (poly[678].contains(lat, lng))
      return 133;
    else
      return 132;
  } else {
    if (poly[679].contains(lat, lng))
      return 132;
    else
      return 175;
  }
  else if (lat < -0.193865) if (lng < -67.558582) if (lat < -5.043700) if (lng <
      -71.174515) if (lat < -7.468617) if (lng < -72.982482) if (lat < -8.681076) {
    if (poly[680].contains(lat, lng)) return 175;
    if (poly[681].contains(lat, lng))
      return 175;
    else
      return 133;
  } else {
    if (poly[682].contains(lat, lng))
      return 175;
    else
      return 133;
  }
  else {
    if (poly[683].contains(lat, lng)) return 101;
    if (poly[684].contains(lat, lng)) return 133;
    if (poly[685].contains(lat, lng))
      return 133;
    else
      return 175;
  }
  else if (lng < -72.982482) {
    if (poly[686].contains(lat, lng)) return 101;
    if (poly[687].contains(lat, lng))
      return 175;
    else
      return 133;
  } else {
    if (poly[688].contains(lat, lng)) return 133;
    if (poly[689].contains(lat, lng))
      return 175;
    else
      return 101;
  }
  else {
    if (poly[690].contains(lat, lng)) return 101;
    if (poly[691].contains(lat, lng)) return 133;
    if (poly[692].contains(lat, lng))
      return 138;
    else
      return 175;
  }
  else if (lng < -71.174515) if (lat < -2.618782) if (lng < -72.982482)
    return 133;
  else if (lat < -3.831241) if (lng < -72.078499) {
    if (poly[693].contains(lat, lng))
      return 101;
    else
      return 133;
  } else {
    if (poly[694].contains(lat, lng))
      return 133;
    else
      return 101;
  }
  else
    return 133;
  else if (lng < -72.982482) if (lat < -1.406323) {
    if (poly[695].contains(lat, lng))
      return 80;
    else
      return 133;
  } else if (lng < -73.886466) {
    if (poly[696].contains(lat, lng))
      return 80;
    else
      return 133;
  } else {
    if (poly[697].contains(lat, lng))
      return 133;
    else
      return 80;
  }
  else if (lat < -1.406323) if (lng < -72.078499) {
    if (poly[698].contains(lat, lng))
      return 133;
    else
      return 80;
  } else {
    if (poly[699].contains(lat, lng))
      return 133;
    else
      return 80;
  }
  else
    return 80;
  else if (lat < -2.618782) if (lng < -69.366549) if (lat < -3.831241) if (lng <
      -70.270532) if (lat < -4.437470)
    return 101;
  else if (lng < -70.722524) {
    if (poly[700].contains(lat, lng))
      return 133;
    else
      return 101;
  } else {
    if (poly[701].contains(lat, lng)) return 80;
    if (poly[702].contains(lat, lng)) return 80;
    if (poly[703].contains(lat, lng)) return 80;
    if (poly[704].contains(lat, lng))
      return 101;
    else
      return 133;
  }
  else {
    if (poly[705].contains(lat, lng)) return 80;
    if (poly[706].contains(lat, lng)) return 101;
    if (poly[707].contains(lat, lng))
      return 138;
    else
      return 133;
  }
  else {
    if (poly[708].contains(lat, lng)) return 80;
    if (poly[709].contains(lat, lng))
      return 138;
    else
      return 133;
  }
  else
    return 138;
  else if (lng < -69.366549) if (lat < -1.406323) {
    if (poly[710].contains(lat, lng)) return 133;
    if (poly[711].contains(lat, lng))
      return 138;
    else
      return 80;
  } else {
    if (poly[712].contains(lat, lng))
      return 138;
    else
      return 80;
  }
  else
    return 138;
  else {
    if (poly[713].contains(lat, lng)) return 167;
    if (poly[714].contains(lat, lng))
      return 175;
    else
      return 138;
  }
  else if (lat < 4.205010) if (lng < -70.705196)
    return 80;
  else if (lat < 2.005573) if (lng < -68.662570) if (lat < 0.905854) {
    if (poly[715].contains(lat, lng))
      return 80;
    else
      return 138;
  } else {
    if (poly[716].contains(lat, lng))
      return 138;
    else
      return 80;
  }
  else if (lat < 0.905854)
    return 138;
  else if (lng < -67.641257) {
    if (poly[717].contains(lat, lng)) return 80;
    if (poly[718].contains(lat, lng))
      return 80;
    else
      return 138;
  } else {
    if (poly[719].contains(lat, lng)) return 85;
    if (poly[720].contains(lat, lng))
      return 138;
    else
      return 80;
  }
  else if (lng < -68.662570)
    return 80;
  else if (lat < 3.105291) {
    if (poly[721].contains(lat, lng)) return 85;
    if (poly[722].contains(lat, lng)) return 138;
    if (poly[723].contains(lat, lng))
      return 138;
    else
      return 80;
  } else {
    if (poly[724].contains(lat, lng))
      return 85;
    else
      return 80;
  }
  else if (lng < -70.705196) {
    if (poly[725].contains(lat, lng))
      return 85;
    else
      return 80;
  } else if (lat < 6.404447) if (lng < -68.662570) {
    if (poly[726].contains(lat, lng))
      return 85;
    else
      return 80;
  } else {
    if (poly[727].contains(lat, lng))
      return 80;
    else
      return 85;
  }
  else {
    if (poly[728].contains(lat, lng))
      return 80;
    else
      return 85;
  }
}

int _call11(num lat, num lng) {
  if (lng < -45.696978) if (lat < -4.509060) if (lat < -9.100719) if (lng < -48.633171) if (lat <
      -11.396548) if (lng < -50.101268) if (lat < -12.544463) if (lng < -50.835316)
    return 92;
  else if (lat < -13.118421) {
    if (poly[729].contains(lat, lng))
      return 179;
    else
      return 92;
  } else if (lng < -50.468292) {
    if (poly[730].contains(lat, lng)) return 58;
    if (poly[731].contains(lat, lng)) return 179;
    if (poly[732].contains(lat, lng)) return 179;
    if (poly[733].contains(lat, lng))
      return 179;
    else
      return 92;
  } else {
    if (poly[734].contains(lat, lng)) return 58;
    if (poly[735].contains(lat, lng)) return 58;
    if (poly[736].contains(lat, lng))
      return 58;
    else
      return 179;
  }
  else {
    if (poly[737].contains(lat, lng)) return 92;
    if (poly[738].contains(lat, lng))
      return 179;
    else
      return 58;
  }
  else {
    if (poly[739].contains(lat, lng))
      return 58;
    else
      return 179;
  }
  else {
    if (poly[740].contains(lat, lng)) return 76;
    if (poly[741].contains(lat, lng))
      return 92;
    else
      return 58;
  }
  else if (lat < -11.396548) if (lng < -47.165075) if (lat <
      -12.544463) if (lng < -47.899123) {
    if (poly[742].contains(lat, lng))
      return 179;
    else
      return 58;
  } else {
    if (poly[743].contains(lat, lng))
      return 179;
    else
      return 58;
  }
  else
    return 58;
  else if (lat < -12.544463) if (lng < -46.431026) {
    if (poly[744].contains(lat, lng))
      return 179;
    else
      return 58;
  } else {
    if (poly[745].contains(lat, lng)) return 58;
    if (poly[746].contains(lat, lng))
      return 179;
    else
      return 73;
  }
  else {
    if (poly[747].contains(lat, lng))
      return 73;
    else
      return 58;
  }
  else if (lng < -47.165075)
    return 58;
  else if (lat < -10.248634) {
    if (poly[748].contains(lat, lng)) return 73;
    if (poly[749].contains(lat, lng)) return 104;
    if (poly[750].contains(lat, lng))
      return 104;
    else
      return 58;
  } else if (lng < -46.431026) {
    if (poly[751].contains(lat, lng))
      return 104;
    else
      return 58;
  } else {
    if (poly[752].contains(lat, lng)) return 73;
    if (poly[753].contains(lat, lng))
      return 104;
    else
      return 58;
  }
  else if (lng < -48.633171) {
    if (poly[754].contains(lat, lng)) return 58;
    if (poly[755].contains(lat, lng)) return 58;
    if (poly[756].contains(lat, lng))
      return 104;
    else
      return 76;
  } else if (lat < -6.804889) if (lng < -47.165075) {
    if (poly[757].contains(lat, lng))
      return 104;
    else
      return 58;
  } else {
    if (poly[758].contains(lat, lng))
      return 58;
    else
      return 104;
  }
  else if (lng < -47.165075) if (lat < -5.656975) {
    if (poly[759].contains(lat, lng)) return 76;
    if (poly[760].contains(lat, lng))
      return 104;
    else
      return 58;
  } else {
    if (poly[761].contains(lat, lng)) return 58;
    if (poly[762].contains(lat, lng)) return 76;
    if (poly[763].contains(lat, lng))
      return 76;
    else
      return 104;
  }
  else
    return 104;
  else if (lat < 0.082599) if (lng < -48.633171)
    return 76;
  else if (lat < -2.213230) if (lng < -47.165075) {
    if (poly[764].contains(lat, lng))
      return 104;
    else
      return 76;
  } else if (lat < -3.361145) {
    if (poly[765].contains(lat, lng))
      return 76;
    else
      return 104;
  } else if (lng < -46.431026) {
    if (poly[766].contains(lat, lng)) return 104;
    if (poly[767].contains(lat, lng)) return 104;
    if (poly[768].contains(lat, lng))
      return 104;
    else
      return 76;
  } else {
    if (poly[769].contains(lat, lng)) return 76;
    if (poly[770].contains(lat, lng)) return 76;
    if (poly[771].contains(lat, lng)) return 76;
    if (poly[772].contains(lat, lng))
      return 76;
    else
      return 104;
  }
  else {
    if (poly[773].contains(lat, lng))
      return 104;
    else
      return 76;
  }
  else
    return 76;
  else if (lat < -7.262677) if (lng < -40.162602) if (lat < -10.477527) {
    if (poly[774].contains(lat, lng))
      return 104;
    else
      return 73;
  } else if (lng < -42.929790) {
    if (poly[775].contains(lat, lng))
      return 104;
    else
      return 73;
  } else if (lat < -8.870102) if (lng < -41.546196) {
    if (poly[776].contains(lat, lng))
      return 73;
    else
      return 104;
  } else {
    if (poly[777].contains(lat, lng)) return 104;
    if (poly[778].contains(lat, lng))
      return 172;
    else
      return 73;
  }
  else if (lng < -41.546196)
    return 104;
  else if (lat < -8.066389) {
    if (poly[779].contains(lat, lng)) return 73;
    if (poly[780].contains(lat, lng))
      return 104;
    else
      return 172;
  } else {
    if (poly[781].contains(lat, lng))
      return 172;
    else
      return 104;
  }
  else if (lat < -10.477527) if (lng < -38.150959) {
    if (poly[782].contains(lat, lng))
      return 136;
    else
      return 73;
  } else {
    if (poly[783].contains(lat, lng)) return 73;
    if (poly[784].contains(lat, lng))
      return 73;
    else
      return 136;
  }
  else if (lng < -37.395413) if (lat < -8.870102) if (lng < -38.779007) {
    if (poly[785].contains(lat, lng))
      return 172;
    else
      return 73;
  } else if (lat < -9.673815) {
    if (poly[786].contains(lat, lng))
      return 136;
    else
      return 73;
  } else if (lng < -38.087210) {
    if (poly[787].contains(lat, lng)) return 136;
    if (poly[788].contains(lat, lng)) return 172;
    if (poly[789].contains(lat, lng))
      return 172;
    else
      return 73;
  } else {
    if (poly[790].contains(lat, lng)) return 73;
    if (poly[791].contains(lat, lng)) return 172;
    if (poly[792].contains(lat, lng))
      return 172;
    else
      return 136;
  }
  else if (lng < -38.779007) if (lat < -8.066389) {
    if (poly[793].contains(lat, lng))
      return 73;
    else
      return 172;
  } else {
    if (poly[794].contains(lat, lng))
      return 172;
    else
      return 104;
  }
  else {
    if (poly[795].contains(lat, lng)) return 73;
    if (poly[796].contains(lat, lng)) return 73;
    if (poly[797].contains(lat, lng)) return 104;
    if (poly[798].contains(lat, lng))
      return 136;
    else
      return 172;
  }
  else if (lat < -8.870102) {
    if (poly[799].contains(lat, lng)) return 172;
    if (poly[800].contains(lat, lng)) return 172;
    if (poly[801].contains(lat, lng)) return 172;
    if (poly[802].contains(lat, lng))
      return 172;
    else
      return 136;
  } else if (lng < -36.011819) if (lat < -8.066389) {
    if (poly[803].contains(lat, lng))
      return 104;
    else
      return 172;
  } else {
    if (poly[804].contains(lat, lng)) return 172;
    if (poly[805].contains(lat, lng))
      return 172;
    else
      return 104;
  }
  else {
    if (poly[806].contains(lat, lng)) return 104;
    if (poly[807].contains(lat, lng)) return 136;
    if (poly[808].contains(lat, lng)) return 136;
    if (poly[809].contains(lat, lng))
      return 136;
    else
      return 172;
  }
  else
    return 104;
}

int _call12(num lat, num lng) {
  if (lat < 8.603884) if (lng < -51.569364) if (lng < -66.619944)
    return _call10(lat, lng);
  else if (lat < -7.348293) if (lng < -58.136618) if (lng < -62.378281) if (lat <
      -10.520335) if (lng < -64.499112) if (lat < -12.106357) {
    if (poly[810].contains(lat, lng)) return 167;
    if (poly[811].contains(lat, lng)) return 167;
    if (poly[812].contains(lat, lng))
      return 167;
    else
      return 132;
  } else {
    if (poly[813].contains(lat, lng))
      return 167;
    else
      return 132;
  }
  else if (lat < -12.106357) if (lng < -63.438697) {
    if (poly[814].contains(lat, lng)) return 167;
    if (poly[815].contains(lat, lng))
      return 167;
    else
      return 132;
  } else {
    if (poly[816].contains(lat, lng))
      return 167;
    else
      return 132;
  }
  else
    return 167;
  else if (lng < -64.499112) if (lat < -8.934314) if (lng <
      -65.559528) if (lat < -9.727325) {
    if (poly[817].contains(lat, lng))
      return 167;
    else
      return 132;
  } else {
    if (poly[818].contains(lat, lng))
      return 167;
    else
      return 138;
  }
  else {
    if (poly[819].contains(lat, lng)) return 132;
    if (poly[820].contains(lat, lng))
      return 138;
    else
      return 167;
  }
  else
    return 138;
  else {
    if (poly[821].contains(lat, lng))
      return 167;
    else
      return 138;
  }
  else if (lat < -10.520335) if (lng < -60.257449) if (lat <
      -12.106357) if (lng < -61.317865) {
    if (poly[822].contains(lat, lng))
      return 167;
    else
      return 132;
  } else {
    if (poly[823].contains(lat, lng)) return 92;
    if (poly[824].contains(lat, lng))
      return 132;
    else
      return 167;
  }
  else {
    if (poly[825].contains(lat, lng))
      return 92;
    else
      return 167;
  }
  else {
    if (poly[826].contains(lat, lng))
      return 167;
    else
      return 92;
  }
  else if (lng < -60.257449) if (lat < -8.934314) {
    if (poly[827].contains(lat, lng))
      return 167;
    else
      return 92;
  } else {
    if (poly[828].contains(lat, lng)) return 92;
    if (poly[829].contains(lat, lng))
      return 138;
    else
      return 167;
  }
  else {
    if (poly[830].contains(lat, lng))
      return 138;
    else
      return 92;
  }
  else if (lng < -54.852991) {
    if (poly[831].contains(lat, lng))
      return 176;
    else
      return 92;
  } else {
    if (poly[832].contains(lat, lng)) return 92;
    if (poly[833].contains(lat, lng))
      return 176;
    else
      return 76;
  }
  else if (lng < -56.097000)
    return _call9(lat, lng);
  else if (lat < -0.579146) if (lat < -3.963720) if (lng < -53.833182)
    return 176;
  else if (lat < -5.656006) {
    if (poly[834].contains(lat, lng))
      return 176;
    else
      return 76;
  } else {
    if (poly[835].contains(lat, lng))
      return 176;
    else
      return 76;
  }
  else if (lng < -53.833182)
    return 176;
  else if (lat < -2.271433) {
    if (poly[836].contains(lat, lng))
      return 176;
    else
      return 76;
  } else {
    if (poly[837].contains(lat, lng))
      return 176;
    else
      return 76;
  }
  else if (lat < 2.805427) if (lng < -53.833182) if (lat < 1.113140)
    return 176;
  else if (lng < -54.965091) {
    if (poly[838].contains(lat, lng))
      return 176;
    else
      return 163;
  } else if (lat < 1.959283) {
    if (poly[839].contains(lat, lng))
      return 76;
    else
      return 176;
  } else if (lng < -54.399136) {
    if (poly[840].contains(lat, lng)) return 86;
    if (poly[841].contains(lat, lng)) return 163;
    if (poly[842].contains(lat, lng))
      return 176;
    else
      return 76;
  } else {
    if (poly[843].contains(lat, lng)) return 76;
    if (poly[844].contains(lat, lng))
      return 163;
    else
      return 86;
  }
  else if (lat < 1.113140) {
    if (poly[845].contains(lat, lng)) return 176;
    if (poly[846].contains(lat, lng))
      return 176;
    else
      return 76;
  } else if (lng < -52.701273) {
    if (poly[847].contains(lat, lng)) return 86;
    if (poly[848].contains(lat, lng))
      return 176;
    else
      return 76;
  } else {
    if (poly[849].contains(lat, lng))
      return 86;
    else
      return 76;
  }
  else if (lng < -53.833182) if (lat < 4.497713) {
    if (poly[850].contains(lat, lng))
      return 163;
    else
      return 86;
  } else {
    if (poly[851].contains(lat, lng))
      return 86;
    else
      return 163;
  }
  else {
    if (poly[852].contains(lat, lng))
      return 76;
    else
      return 86;
  }
  else
    return _call11(lat, lng);
  else if (lng < -67.990797) if (lng < -69.661226) if (lng <
      -70.927056) if (lat < 11.961238) if (lng < -72.858752) {
    if (poly[853].contains(lat, lng))
      return 85;
    else
      return 80;
  } else {
    if (poly[854].contains(lat, lng))
      return 85;
    else
      return 80;
  }
  else {
    if (poly[855].contains(lat, lng))
      return 85;
    else
      return 80;
  }
  else {
    if (poly[856].contains(lat, lng))
      return 85;
    else
      return 57;
  }
  else {
    if (poly[857].contains(lat, lng)) return 85;
    if (poly[858].contains(lat, lng))
      return 93;
    else
      return 131;
  }
  else if (lat < 12.324735) if (lat < 11.562837) {
    if (poly[859].contains(lat, lng))
      return 85;
    else
      return 166;
  } else if (lng < -62.404854)
    return 85;
  else
    return 109;
  else if (lng < -60.791134) if (lng < -61.173214) {
    if (poly[860].contains(lat, lng))
      return 109;
    else
      return 187;
  } else {
    if (poly[861].contains(lat, lng))
      return 185;
    else
      return 187;
  }
  else
    return 75;
}

int _call13(num lat, num lng) {
  if (lat < -15.609703) if (lng < 29.455710) if (lat < -28.570615) if (lng <
      16.475659) {
    if (poly[862].contains(lat, lng))
      return 52;
    else
      return 25;
  } else if (lng < 19.544312) {
    if (poly[863].contains(lat, lng))
      return 52;
    else
      return 25;
  } else {
    if (poly[864].contains(lat, lng))
      return 25;
    else
      return 39;
  }
  else if (lng < 17.410000) if (lat < -28.032820) if (lng < 17.080560) {
    if (poly[865].contains(lat, lng))
      return 25;
    else
      return 52;
  } else if (lat < -28.399580) {
    if (poly[866].contains(lat, lng))
      return 52;
    else
      return 25;
  } else {
    if (poly[867].contains(lat, lng))
      return 52;
    else
      return 25;
  }
  else {
    if (poly[868].contains(lat, lng))
      return 34;
    else
      return 52;
  }
  else if (lat < -22.090159) if (lng < 23.432855) if (lat <
      -25.330387) if (lng < 20.421428) {
    if (poly[869].contains(lat, lng))
      return 25;
    else
      return 52;
  } else if (lat < -26.950501)
    return 25;
  else if (lng < 21.927141) if (lat < -26.140444) {
    if (poly[870].contains(lat, lng))
      return 23;
    else
      return 25;
  } else {
    if (poly[871].contains(lat, lng))
      return 25;
    else
      return 23;
  }
  else {
    if (poly[872].contains(lat, lng)) return 23;
    if (poly[873].contains(lat, lng))
      return 23;
    else
      return 25;
  }
  else {
    if (poly[874].contains(lat, lng)) return 25;
    if (poly[875].contains(lat, lng)) return 25;
    if (poly[876].contains(lat, lng)) return 25;
    if (poly[877].contains(lat, lng))
      return 52;
    else
      return 23;
  }
  else if (lat < -25.330387) {
    if (poly[878].contains(lat, lng))
      return 23;
    else
      return 25;
  } else if (lng < 26.444282) {
    if (poly[879].contains(lat, lng)) return 25;
    if (poly[880].contains(lat, lng))
      return 25;
    else
      return 23;
  } else if (lat < -23.710273) {
    if (poly[881].contains(lat, lng))
      return 23;
    else
      return 25;
  } else if (lng < 27.949996) {
    if (poly[882].contains(lat, lng))
      return 25;
    else
      return 23;
  } else {
    if (poly[883].contains(lat, lng)) return 23;
    if (poly[884].contains(lat, lng))
      return 24;
    else
      return 25;
  }
  else if (lng < 23.432855) if (lat < -18.849931) {
    if (poly[885].contains(lat, lng))
      return 52;
    else
      return 23;
  } else if (lng < 20.421428) {
    if (poly[886].contains(lat, lng))
      return 52;
    else
      return 34;
  } else if (lat < -17.229817) {
    if (poly[887].contains(lat, lng)) return 23;
    if (poly[888].contains(lat, lng)) return 36;
    if (poly[889].contains(lat, lng))
      return 52;
    else
      return 34;
  } else {
    if (poly[890].contains(lat, lng))
      return 36;
    else
      return 34;
  }
  else if (lat < -18.849931) if (lng < 26.444282) {
    if (poly[891].contains(lat, lng))
      return 24;
    else
      return 23;
  } else {
    if (poly[892].contains(lat, lng))
      return 23;
    else
      return 24;
  }
  else if (lng < 26.444282) if (lat < -17.229817) if (lng < 24.938569) if (lat <
      -18.039874) {
    if (poly[893].contains(lat, lng)) return 52;
    if (poly[894].contains(lat, lng))
      return 52;
    else
      return 23;
  } else {
    if (poly[895].contains(lat, lng)) return 23;
    if (poly[896].contains(lat, lng)) return 23;
    if (poly[897].contains(lat, lng)) return 34;
    if (poly[898].contains(lat, lng))
      return 36;
    else
      return 52;
  }
  else if (lat < -18.039874) {
    if (poly[899].contains(lat, lng))
      return 24;
    else
      return 23;
  } else if (lng < 25.691426) {
    if (poly[900].contains(lat, lng)) return 23;
    if (poly[901].contains(lat, lng)) return 24;
    if (poly[902].contains(lat, lng))
      return 36;
    else
      return 52;
  } else {
    if (poly[903].contains(lat, lng))
      return 36;
    else
      return 24;
  }
  else
    return 36;
  else {
    if (poly[904].contains(lat, lng))
      return 36;
    else
      return 24;
  }
  else if (lng < 33.102357) if (lat < -23.805513) {
    if (poly[905].contains(lat, lng)) return 38;
    if (poly[906].contains(lat, lng))
      return 40;
    else
      return 25;
  } else if (lat < -19.707608) if (lat < -21.756560) {
    if (poly[907].contains(lat, lng)) return 24;
    if (poly[908].contains(lat, lng))
      return 38;
    else
      return 25;
  } else {
    if (poly[909].contains(lat, lng))
      return 38;
    else
      return 24;
  }
  else if (lat < -17.658655) {
    if (poly[910].contains(lat, lng))
      return 38;
    else
      return 24;
  } else if (lng < 31.279033) {
    if (poly[911].contains(lat, lng)) return 36;
    if (poly[912].contains(lat, lng))
      return 38;
    else
      return 24;
  } else {
    if (poly[913].contains(lat, lng))
      return 24;
    else
      return 38;
  }
  else if (lat < -21.265323)
    return 38;
  else if (lng < 36.664969) if (lat < -18.437513)
    return 38;
  else if (lng < 34.883663) {
    if (poly[914].contains(lat, lng))
      return 10;
    else
      return 38;
  } else {
    if (poly[915].contains(lat, lng))
      return 10;
    else
      return 38;
  }
  else
    return 38;
  else if (lng < 24.087886) if (lat < -11.404498) {
    if (poly[916].contains(lat, lng))
      return 36;
    else
      return 34;
  } else if (lng < 17.967785) if (lat < -8.276794)
    return 34;
  else if (lng < 14.907735) {
    if (poly[917].contains(lat, lng))
      return 30;
    else
      return 34;
  } else if (lat < -6.712941) {
    if (poly[918].contains(lat, lng))
      return 30;
    else
      return 34;
  } else {
    if (poly[919].contains(lat, lng))
      return 34;
    else
      return 30;
  }
  else if (lat < -8.276794) if (lng < 21.027836)
    return 34;
  else if (lat < -9.840646) if (lng < 22.557861) {
    if (poly[920].contains(lat, lng))
      return 35;
    else
      return 34;
  } else {
    if (poly[921].contains(lat, lng)) return 35;
    if (poly[922].contains(lat, lng))
      return 36;
    else
      return 34;
  }
  else {
    if (poly[923].contains(lat, lng))
      return 35;
    else
      return 34;
  }
  else if (lng < 21.027836) if (lat < -6.712941) {
    if (poly[924].contains(lat, lng)) return 30;
    if (poly[925].contains(lat, lng))
      return 35;
    else
      return 34;
  } else {
    if (poly[926].contains(lat, lng))
      return 35;
    else
      return 30;
  }
  else {
    if (poly[927].contains(lat, lng))
      return 34;
    else
      return 35;
  }
  else if (lng < 33.701099) if (lat < -13.998540) if (lng < 33.239352) {
    if (poly[928].contains(lat, lng)) return 10;
    if (poly[929].contains(lat, lng)) return 10;
    if (poly[930].contains(lat, lng))
      return 38;
    else
      return 36;
  } else {
    if (poly[931].contains(lat, lng))
      return 10;
    else
      return 38;
  }
  else if (lng < 30.792749) if (lat < -8.271282) if (lng < 27.440317) if (lat <
      -11.134911) if (lng < 25.764102) {
    if (poly[932].contains(lat, lng))
      return 35;
    else
      return 36;
  } else {
    if (poly[933].contains(lat, lng))
      return 36;
    else
      return 35;
  }
  else {
    if (poly[934].contains(lat, lng))
      return 36;
    else
      return 35;
  }
  else if (lat < -11.134911) if (lng < 29.116533) if (lat < -12.566726) {
    if (poly[935].contains(lat, lng))
      return 35;
    else
      return 36;
  } else if (lng < 28.278425) {
    if (poly[936].contains(lat, lng))
      return 36;
    else
      return 35;
  } else {
    if (poly[937].contains(lat, lng)) return 36;
    if (poly[938].contains(lat, lng))
      return 36;
    else
      return 35;
  }
  else {
    if (poly[939].contains(lat, lng))
      return 35;
    else
      return 36;
  }
  else {
    if (poly[940].contains(lat, lng))
      return 36;
    else
      return 35;
  }
  else {
    if (poly[941].contains(lat, lng))
      return 18;
    else
      return 35;
  }
  else if (lat < -9.573815) if (lat < -11.786177) {
    if (poly[942].contains(lat, lng)) return 36;
    if (poly[943].contains(lat, lng))
      return 36;
    else
      return 10;
  } else {
    if (poly[944].contains(lat, lng)) return 18;
    if (poly[945].contains(lat, lng))
      return 36;
    else
      return 10;
  }
  else {
    if (poly[946].contains(lat, lng)) return 10;
    if (poly[947].contains(lat, lng))
      return 36;
    else
      return 18;
  }
  else if (lat < -14.386368) if (lng < 34.358479) {
    if (poly[948].contains(lat, lng))
      return 10;
    else
      return 38;
  } else if (lng < 34.622374) if (lat < -15.002667) {
    if (poly[949].contains(lat, lng))
      return 38;
    else
      return 10;
  } else {
    if (poly[950].contains(lat, lng))
      return 10;
    else
      return 38;
  }
  else {
    if (poly[951].contains(lat, lng))
      return 38;
    else
      return 10;
  }
  else if (lat < -9.767729) if (lng < 36.964340) if (lat < -12.077048) {
    if (poly[952].contains(lat, lng))
      return 38;
    else
      return 10;
  } else if (lng < 35.332719) {
    if (poly[953].contains(lat, lng)) return 18;
    if (poly[954].contains(lat, lng))
      return 38;
    else
      return 10;
  } else {
    if (poly[955].contains(lat, lng))
      return 38;
    else
      return 18;
  }
  else {
    if (poly[956].contains(lat, lng))
      return 38;
    else
      return 18;
  }
  else {
    if (poly[957].contains(lat, lng))
      return 10;
    else
      return 18;
  }
}

int _call14(num lat, num lng) {
  if (lat < 15.084000) if (lng < -0.723987) if (lat < 9.636901) if (lng <
      -4.045655) {
    if (poly[958].contains(lat, lng))
      return 47;
    else
      return 1;
  } else if (lat < 7.088077) {
    if (poly[959].contains(lat, lng))
      return 1;
    else
      return 2;
  } else {
    if (poly[960].contains(lat, lng)) return 2;
    if (poly[961].contains(lat, lng))
      return 47;
    else
      return 1;
  }
  else if (lng < -4.045655) if (lat < 12.360451) if (lng < -5.706489) if (lat <
      10.998676) if (lng < -6.536906) {
    if (poly[962].contains(lat, lng))
      return 6;
    else
      return 1;
  } else {
    if (poly[963].contains(lat, lng))
      return 1;
    else
      return 6;
  }
  else
    return 6;
  else if (lat < 10.998676) if (lng < -4.876072) if (lat < 10.317788) {
    if (poly[964].contains(lat, lng)) return 47;
    if (poly[965].contains(lat, lng)) return 47;
    if (poly[966].contains(lat, lng))
      return 47;
    else
      return 1;
  } else {
    if (poly[967].contains(lat, lng)) return 1;
    if (poly[968].contains(lat, lng)) return 1;
    if (poly[969].contains(lat, lng)) return 1;
    if (poly[970].contains(lat, lng))
      return 6;
    else
      return 47;
  }
  else {
    if (poly[971].contains(lat, lng))
      return 47;
    else
      return 1;
  }
  else {
    if (poly[972].contains(lat, lng))
      return 47;
    else
      return 6;
  }
  else {
    if (poly[973].contains(lat, lng))
      return 47;
    else
      return 6;
  }
  else if (lat < 12.360451) if (lng < -2.384821) {
    if (poly[974].contains(lat, lng)) return 1;
    if (poly[975].contains(lat, lng))
      return 2;
    else
      return 47;
  } else {
    if (poly[976].contains(lat, lng))
      return 47;
    else
      return 2;
  }
  else {
    if (poly[977].contains(lat, lng))
      return 6;
    else
      return 47;
  }
  else if (lng < 2.408972) if (lat < 11.895485) if (lat < 8.466663) if (lat <
      6.752252) {
    if (poly[978].contains(lat, lng)) return 2;
    if (poly[979].contains(lat, lng))
      return 48;
    else
      return 33;
  } else if (lng < 0.842492) {
    if (poly[980].contains(lat, lng))
      return 33;
    else
      return 2;
  } else {
    if (poly[981].contains(lat, lng))
      return 48;
    else
      return 33;
  }
  else if (lat < 10.181074) if (lng < 0.842492) if (lat < 9.323868) {
    if (poly[982].contains(lat, lng))
      return 33;
    else
      return 2;
  } else {
    if (poly[983].contains(lat, lng))
      return 33;
    else
      return 2;
  }
  else {
    if (poly[984].contains(lat, lng))
      return 48;
    else
      return 33;
  }
  else if (lng < 0.842492) if (lat < 11.038280) if (lng < 0.059253) {
    if (poly[985].contains(lat, lng)) return 33;
    if (poly[986].contains(lat, lng))
      return 47;
    else
      return 2;
  } else {
    if (poly[987].contains(lat, lng)) return 2;
    if (poly[988].contains(lat, lng)) return 47;
    if (poly[989].contains(lat, lng))
      return 48;
    else
      return 33;
  }
  else {
    if (poly[990].contains(lat, lng)) return 33;
    if (poly[991].contains(lat, lng))
      return 47;
    else
      return 2;
  }
  else if (lat < 11.038280) {
    if (poly[992].contains(lat, lng)) return 33;
    if (poly[993].contains(lat, lng)) return 33;
    if (poly[994].contains(lat, lng)) return 47;
    if (poly[995].contains(lat, lng))
      return 47;
    else
      return 48;
  } else {
    if (poly[996].contains(lat, lng)) return 48;
    if (poly[997].contains(lat, lng))
      return 48;
    else
      return 47;
  }
  else if (lat < 13.489743) {
    if (poly[998].contains(lat, lng)) return 47;
    if (poly[999].contains(lat, lng)) return 48;
    if (poly[1000].contains(lat, lng))
      return 48;
    else
      return 45;
  } else {
    if (poly[1001].contains(lat, lng)) return 6;
    if (poly[1002].contains(lat, lng))
      return 47;
    else
      return 45;
  }
  else if (lat < 9.576548) if (lat < 6.822822) {
    if (poly[1003].contains(lat, lng))
      return 48;
    else
      return 31;
  } else {
    if (poly[1004].contains(lat, lng))
      return 48;
    else
      return 31;
  }
  else if (lat < 12.330274) if (lng < 5.039725) if (lat < 10.953411) {
    if (poly[1005].contains(lat, lng))
      return 48;
    else
      return 31;
  } else if (lng < 3.724348) {
    if (poly[1006].contains(lat, lng)) return 31;
    if (poly[1007].contains(lat, lng)) return 45;
    if (poly[1008].contains(lat, lng)) return 45;
    if (poly[1009].contains(lat, lng))
      return 45;
    else
      return 48;
  } else {
    if (poly[1010].contains(lat, lng))
      return 48;
    else
      return 31;
  }
  else
    return 31;
  else {
    if (poly[1011].contains(lat, lng)) return 31;
    if (poly[1012].contains(lat, lng))
      return 48;
    else
      return 45;
  }
  else if (lng < 0.151578) {
    if (poly[1013].contains(lat, lng)) return 4;
    if (poly[1014].contains(lat, lng))
      return 46;
    else
      return 6;
  } else if (lat < 21.258772) if (lng < 3.911028) if (lat < 18.171386) {
    if (poly[1015].contains(lat, lng))
      return 45;
    else
      return 6;
  } else if (lng < 2.031303) {
    if (poly[1016].contains(lat, lng))
      return 4;
    else
      return 6;
  } else {
    if (poly[1017].contains(lat, lng))
      return 4;
    else
      return 6;
  }
  else {
    if (poly[1018].contains(lat, lng)) return 4;
    if (poly[1019].contains(lat, lng))
      return 6;
    else
      return 45;
  }
  else {
    if (poly[1020].contains(lat, lng))
      return 6;
    else
      return 4;
  }
}

int _call15(num lat, num lng) {
  if (lng < 18.643611) if (lat < 3.989000) if (lat < -4.388063) if (lng <
      14.197547) if (lng < 12.745379) {
    if (poly[1021].contains(lat, lng)) return 11;
    if (poly[1022].contains(lat, lng))
      return 30;
    else
      return 34;
  } else if (lng < 13.471463) {
    if (poly[1023].contains(lat, lng)) return 30;
    if (poly[1024].contains(lat, lng))
      return 34;
    else
      return 11;
  } else {
    if (poly[1025].contains(lat, lng))
      return 11;
    else
      return 30;
  }
  else {
    if (poly[1026].contains(lat, lng))
      return 11;
    else
      return 30;
  }
  else if (lng < 14.539444) if (lat < -0.589167) if (lat < -4.278450) {
    if (poly[1027].contains(lat, lng))
      return 30;
    else
      return 11;
  } else if (lng < 11.519834) {
    if (poly[1028].contains(lat, lng))
      return 11;
    else
      return 32;
  } else if (lat < -2.433809) {
    if (poly[1029].contains(lat, lng)) return 32;
    if (poly[1030].contains(lat, lng)) return 32;
    if (poly[1031].contains(lat, lng)) return 32;
    if (poly[1032].contains(lat, lng))
      return 32;
    else
      return 11;
  } else if (lng < 13.029639) {
    if (poly[1033].contains(lat, lng)) return 11;
    if (poly[1034].contains(lat, lng))
      return 11;
    else
      return 32;
  } else if (lat < -1.511488) {
    if (poly[1035].contains(lat, lng))
      return 32;
    else
      return 11;
  } else {
    if (poly[1036].contains(lat, lng))
      return 11;
    else
      return 32;
  }
  else if (lat < 2.449845) if (lng < 11.529307) {
    if (poly[1037].contains(lat, lng)) return 20;
    if (poly[1038].contains(lat, lng))
      return 32;
    else
      return 37;
  } else if (lat < 0.930339) {
    if (poly[1039].contains(lat, lng))
      return 32;
    else
      return 11;
  } else if (lng < 13.034375) {
    if (poly[1040].contains(lat, lng))
      return 32;
    else
      return 20;
  } else if (lat < 1.690092) {
    if (poly[1041].contains(lat, lng))
      return 11;
    else
      return 32;
  } else {
    if (poly[1042].contains(lat, lng)) return 11;
    if (poly[1043].contains(lat, lng))
      return 20;
    else
      return 32;
  }
  else {
    if (poly[1044].contains(lat, lng))
      return 20;
    else
      return 37;
  }
  else if (lat < -0.199531) {
    if (poly[1045].contains(lat, lng))
      return 30;
    else
      return 11;
  } else if (lat < 1.894734) {
    if (poly[1046].contains(lat, lng)) return 20;
    if (poly[1047].contains(lat, lng))
      return 30;
    else
      return 11;
  } else if (lng < 16.591527) if (lat < 2.941867) if (lng < 15.565486) {
    if (poly[1048].contains(lat, lng))
      return 20;
    else
      return 11;
  } else {
    if (poly[1049].contains(lat, lng)) return 7;
    if (poly[1050].contains(lat, lng)) return 11;
    if (poly[1051].contains(lat, lng))
      return 11;
    else
      return 20;
  }
  else {
    if (poly[1052].contains(lat, lng)) return 11;
    if (poly[1053].contains(lat, lng))
      return 20;
    else
      return 7;
  }
  else if (lat < 2.941867) {
    if (poly[1054].contains(lat, lng))
      return 30;
    else
      return 11;
  } else {
    if (poly[1055].contains(lat, lng)) return 7;
    if (poly[1056].contains(lat, lng))
      return 30;
    else
      return 11;
  }
  else if (lng < 8.831418) {
    if (poly[1057].contains(lat, lng))
      return 31;
    else
      return 20;
  } else if (lng < 15.179509) if (lat < 4.056659) {
    if (poly[1058].contains(lat, lng))
      return 7;
    else
      return 20;
  } else {
    if (poly[1059].contains(lat, lng))
      return 7;
    else
      return 20;
  }
  else {
    if (poly[1060].contains(lat, lng))
      return 30;
    else
      return 7;
  }
  else if (lat < 0.121457) if (lng < 23.048844) if (lat < -2.513816) {
    if (poly[1061].contains(lat, lng))
      return 35;
    else
      return 30;
  } else {
    if (poly[1062].contains(lat, lng)) return 35;
    if (poly[1063].contains(lat, lng)) return 35;
    if (poly[1064].contains(lat, lng)) return 35;
    if (poly[1065].contains(lat, lng))
      return 35;
    else
      return 30;
  }
  else if (lat < -2.513816)
    return 35;
  else if (lng < 25.251460) if (lat < -1.196180) {
    if (poly[1066].contains(lat, lng))
      return 30;
    else
      return 35;
  } else {
    if (poly[1067].contains(lat, lng))
      return 35;
    else
      return 30;
  }
  else
    return 35;
  else if (lng < 23.048844) if (lat < 2.756730) {
    if (poly[1068].contains(lat, lng)) return 35;
    if (poly[1069].contains(lat, lng))
      return 35;
    else
      return 30;
  } else if (lng < 20.846227) {
    if (poly[1070].contains(lat, lng)) return 7;
    if (poly[1071].contains(lat, lng))
      return 7;
    else
      return 30;
  } else if (lat < 4.074367) {
    if (poly[1072].contains(lat, lng)) return 35;
    if (poly[1073].contains(lat, lng)) return 35;
    if (poly[1074].contains(lat, lng))
      return 35;
    else
      return 30;
  } else {
    if (poly[1075].contains(lat, lng)) return 30;
    if (poly[1076].contains(lat, lng))
      return 35;
    else
      return 7;
  }
  else if (lat < 2.756730) {
    if (poly[1077].contains(lat, lng)) return 30;
    if (poly[1078].contains(lat, lng))
      return 30;
    else
      return 35;
  } else if (lng < 25.251460) if (lat < 4.074367) {
    if (poly[1079].contains(lat, lng)) return 30;
    if (poly[1080].contains(lat, lng))
      return 30;
    else
      return 35;
  } else if (lng < 24.150152) {
    if (poly[1081].contains(lat, lng))
      return 35;
    else
      return 7;
  } else {
    if (poly[1082].contains(lat, lng))
      return 35;
    else
      return 7;
  }
  else if (lat < 4.074367)
    return 35;
  else if (lng < 26.352768) if (lat < 4.733185)
    return 35;
  else if (lng < 25.802114) {
    if (poly[1083].contains(lat, lng))
      return 35;
    else
      return 7;
  } else {
    if (poly[1084].contains(lat, lng)) return 35;
    if (poly[1085].contains(lat, lng))
      return 35;
    else
      return 7;
  }
  else {
    if (poly[1086].contains(lat, lng)) return 26;
    if (poly[1087].contains(lat, lng))
      return 35;
    else
      return 7;
  }
}

int _call16(num lat, num lng) {
  if (lng < 15.996667) if (lat < 20.353056) if (lat < 12.872529) if (lng <
      11.833573) if (lat < 9.132266) if (lng < 9.752025) {
    if (poly[1088].contains(lat, lng))
      return 20;
    else
      return 31;
  } else if (lat < 7.262135) if (lng < 10.792799) {
    if (poly[1089].contains(lat, lng))
      return 31;
    else
      return 20;
  } else {
    if (poly[1090].contains(lat, lng))
      return 20;
    else
      return 31;
  }
  else
    return 31;
  else {
    if (poly[1091].contains(lat, lng))
      return 45;
    else
      return 31;
  }
  else if (lat < 9.132266) if (lng < 13.915120) {
    if (poly[1092].contains(lat, lng))
      return 31;
    else
      return 20;
  } else if (lat < 7.262135) {
    if (poly[1093].contains(lat, lng))
      return 7;
    else
      return 20;
  } else {
    if (poly[1094].contains(lat, lng)) return 7;
    if (poly[1095].contains(lat, lng))
      return 20;
    else
      return 44;
  }
  else if (lng < 13.915120) {
    if (poly[1096].contains(lat, lng))
      return 20;
    else
      return 31;
  } else if (lat < 11.002398) {
    if (poly[1097].contains(lat, lng))
      return 44;
    else
      return 20;
  } else if (lng < 14.955893) if (lat < 11.937464) {
    if (poly[1098].contains(lat, lng))
      return 31;
    else
      return 20;
  } else {
    if (poly[1099].contains(lat, lng)) return 31;
    if (poly[1100].contains(lat, lng))
      return 44;
    else
      return 20;
  }
  else {
    if (poly[1101].contains(lat, lng))
      return 44;
    else
      return 20;
  }
  else if (lng < 11.833573) {
    if (poly[1102].contains(lat, lng))
      return 45;
    else
      return 31;
  } else if (lat < 16.612793) if (lng < 13.915120) if (lat <
      14.742661) if (lng < 12.874346) {
    if (poly[1103].contains(lat, lng))
      return 45;
    else
      return 31;
  } else {
    if (poly[1104].contains(lat, lng)) return 31;
    if (poly[1105].contains(lat, lng))
      return 44;
    else
      return 45;
  }
  else {
    if (poly[1106].contains(lat, lng))
      return 44;
    else
      return 45;
  }
  else {
    if (poly[1107].contains(lat, lng)) return 20;
    if (poly[1108].contains(lat, lng)) return 31;
    if (poly[1109].contains(lat, lng))
      return 45;
    else
      return 44;
  }
  else {
    if (poly[1110].contains(lat, lng))
      return 44;
    else
      return 45;
  }
  else if (lng < 11.833573) {
    if (poly[1111].contains(lat, lng)) return 45;
    if (poly[1112].contains(lat, lng))
      return 50;
    else
      return 4;
  } else {
    if (poly[1113].contains(lat, lng)) return 4;
    if (poly[1114].contains(lat, lng)) return 44;
    if (poly[1115].contains(lat, lng))
      return 50;
    else
      return 45;
  }
  else if (lat < 11.001389) if (lng < 21.725372) if (lng < 18.861019) if (lat <
      8.196696) if (lng < 17.428843) {
    if (poly[1116].contains(lat, lng))
      return 44;
    else
      return 7;
  } else {
    if (poly[1117].contains(lat, lng))
      return 44;
    else
      return 7;
  }
  else {
    if (poly[1118].contains(lat, lng))
      return 7;
    else
      return 44;
  }
  else if (lat < 8.196696)
    return 7;
  else if (lng < 20.293195) if (lat < 9.599042) if (lng < 19.577107) {
    if (poly[1119].contains(lat, lng))
      return 44;
    else
      return 7;
  } else {
    if (poly[1120].contains(lat, lng))
      return 44;
    else
      return 7;
  }
  else
    return 44;
  else {
    if (poly[1121].contains(lat, lng))
      return 44;
    else
      return 7;
  }
  else if (lng < 24.589724) if (lat < 8.196696)
    return 7;
  else if (lng < 23.157548) {
    if (poly[1122].contains(lat, lng)) return 28;
    if (poly[1123].contains(lat, lng)) return 44;
    if (poly[1124].contains(lat, lng))
      return 44;
    else
      return 7;
  } else if (lat < 9.599042) if (lng < 23.873636) {
    if (poly[1125].contains(lat, lng)) return 26;
    if (poly[1126].contains(lat, lng))
      return 28;
    else
      return 7;
  } else {
    if (poly[1127].contains(lat, lng)) return 7;
    if (poly[1128].contains(lat, lng))
      return 26;
    else
      return 28;
  }
  else {
    if (poly[1129].contains(lat, lng)) return 7;
    if (poly[1130].contains(lat, lng))
      return 28;
    else
      return 26;
  }
  else if (lat < 8.196696) if (lng < 26.021900) {
    if (poly[1131].contains(lat, lng))
      return 26;
    else
      return 7;
  } else {
    if (poly[1132].contains(lat, lng))
      return 7;
    else
      return 26;
  }
  else if (lng < 26.021900) if (lat < 9.599042) {
    if (poly[1133].contains(lat, lng)) return 7;
    if (poly[1134].contains(lat, lng))
      return 26;
    else
      return 28;
  } else if (lng < 25.305812) {
    if (poly[1135].contains(lat, lng))
      return 28;
    else
      return 26;
  } else {
    if (poly[1136].contains(lat, lng))
      return 28;
    else
      return 26;
  }
  else {
    if (poly[1137].contains(lat, lng))
      return 28;
    else
      return 26;
  }
  else if (lat < 19.217466) if (lng < 21.725372)
    return 44;
  else if (lat < 15.109428) if (lng < 24.589724) if (lat < 13.055408) {
    if (poly[1138].contains(lat, lng))
      return 28;
    else
      return 44;
  } else {
    if (poly[1139].contains(lat, lng))
      return 44;
    else
      return 28;
  }
  else
    return 28;
  else {
    if (poly[1140].contains(lat, lng))
      return 44;
    else
      return 28;
  }
  else {
    if (poly[1141].contains(lat, lng)) return 13;
    if (poly[1142].contains(lat, lng)) return 28;
    if (poly[1143].contains(lat, lng))
      return 44;
    else
      return 50;
  }
}

int _call17(num lat, num lng) {
  if (lat < 5.002966) if (lng < 31.305676) if (lat < 2.156907) if (lat <
      -1.496091) if (lng < 29.379876) if (lat < -3.322590) {
    if (poly[1144].contains(lat, lng)) return 12;
    if (poly[1145].contains(lat, lng))
      return 18;
    else
      return 35;
  } else if (lng < 28.416976)
    return 35;
  else if (lat < -2.409340) {
    if (poly[1146].contains(lat, lng)) return 29;
    if (poly[1147].contains(lat, lng))
      return 35;
    else
      return 12;
  } else {
    if (poly[1148].contains(lat, lng))
      return 29;
    else
      return 35;
  }
  else if (lat < -3.322590) {
    if (poly[1149].contains(lat, lng)) return 12;
    if (poly[1150].contains(lat, lng)) return 35;
    if (poly[1151].contains(lat, lng))
      return 35;
    else
      return 18;
  } else if (lng < 30.342776) {
    if (poly[1152].contains(lat, lng)) return 12;
    if (poly[1153].contains(lat, lng))
      return 35;
    else
      return 29;
  } else if (lat < -2.409340) {
    if (poly[1154].contains(lat, lng)) return 12;
    if (poly[1155].contains(lat, lng)) return 29;
    if (poly[1156].contains(lat, lng))
      return 29;
    else
      return 18;
  } else {
    if (poly[1157].contains(lat, lng)) return 12;
    if (poly[1158].contains(lat, lng)) return 18;
    if (poly[1159].contains(lat, lng))
      return 18;
    else
      return 29;
  }
  else if (lng < 29.379876)
    return 35;
  else if (lat < 0.330408) if (lng < 30.342776) {
    if (poly[1160].contains(lat, lng)) return 29;
    if (poly[1161].contains(lat, lng))
      return 35;
    else
      return 27;
  } else {
    if (poly[1162].contains(lat, lng)) return 27;
    if (poly[1163].contains(lat, lng))
      return 29;
    else
      return 18;
  }
  else {
    if (poly[1164].contains(lat, lng))
      return 27;
    else
      return 35;
  }
  else if (lng < 29.379876) {
    if (poly[1165].contains(lat, lng))
      return 35;
    else
      return 26;
  } else if (lat < 3.579937) {
    if (poly[1166].contains(lat, lng)) return 26;
    if (poly[1167].contains(lat, lng))
      return 27;
    else
      return 35;
  } else if (lng < 30.342776) {
    if (poly[1168].contains(lat, lng))
      return 35;
    else
      return 26;
  } else {
    if (poly[1169].contains(lat, lng)) return 27;
    if (poly[1170].contains(lat, lng))
      return 35;
    else
      return 26;
  }
  else if (lat < -0.998942) {
    if (poly[1171].contains(lat, lng)) return 27;
    if (poly[1172].contains(lat, lng)) return 27;
    if (poly[1173].contains(lat, lng))
      return 43;
    else
      return 18;
  } else if (lng < 35.766628) if (lat < 2.002012) {
    if (poly[1174].contains(lat, lng))
      return 43;
    else
      return 27;
  } else if (lng < 33.536152) {
    if (poly[1175].contains(lat, lng))
      return 27;
    else
      return 26;
  } else {
    if (poly[1176].contains(lat, lng)) return 26;
    if (poly[1177].contains(lat, lng))
      return 27;
    else
      return 43;
  }
  else {
    if (poly[1178].contains(lat, lng)) return 3;
    if (poly[1179].contains(lat, lng))
      return 26;
    else
      return 43;
  }
  else if (lat < 18.070992) if (lat < 11.536979) if (lng < 33.840828) if (lat <
      8.269973) {
    if (poly[1180].contains(lat, lng))
      return 26;
    else
      return 3;
  } else if (lng < 30.647452) {
    if (poly[1181].contains(lat, lng))
      return 26;
    else
      return 28;
  } else {
    if (poly[1182].contains(lat, lng)) return 3;
    if (poly[1183].contains(lat, lng)) return 28;
    if (poly[1184].contains(lat, lng))
      return 28;
    else
      return 26;
  }
  else if (lat < 8.269973) if (lng < 37.034204) if (lat < 6.636469) {
    if (poly[1185].contains(lat, lng))
      return 26;
    else
      return 3;
  } else {
    if (poly[1186].contains(lat, lng))
      return 26;
    else
      return 3;
  }
  else
    return 3;
  else if (lng < 37.034204) if (lat < 9.903476) {
    if (poly[1187].contains(lat, lng)) return 26;
    if (poly[1188].contains(lat, lng))
      return 28;
    else
      return 3;
  } else {
    if (poly[1189].contains(lat, lng)) return 3;
    if (poly[1190].contains(lat, lng))
      return 26;
    else
      return 28;
  }
  else
    return 3;
  else if (lng < 33.840828) {
    if (poly[1191].contains(lat, lng))
      return 26;
    else
      return 28;
  } else if (lat < 14.803986) if (lng < 37.034204) {
    if (poly[1192].contains(lat, lng)) return 5;
    if (poly[1193].contains(lat, lng))
      return 28;
    else
      return 3;
  } else if (lat < 13.170482)
    return 3;
  else if (lng < 38.630892) {
    if (poly[1194].contains(lat, lng)) return 5;
    if (poly[1195].contains(lat, lng))
      return 5;
    else
      return 3;
  } else {
    if (poly[1196].contains(lat, lng))
      return 5;
    else
      return 3;
  }
  else if (lng < 37.034204) {
    if (poly[1197].contains(lat, lng))
      return 5;
    else
      return 28;
  } else {
    if (poly[1198].contains(lat, lng)) return 3;
    if (poly[1199].contains(lat, lng))
      return 28;
    else
      return 5;
  }
  else if (lng < 33.840828) {
    if (poly[1200].contains(lat, lng))
      return 28;
    else
      return 13;
  } else if (lat < 22.752268) {
    if (poly[1201].contains(lat, lng)) return 13;
    if (poly[1202].contains(lat, lng))
      return 272;
    else
      return 28;
  } else {
    if (poly[1203].contains(lat, lng))
      return 272;
    else
      return 13;
  }
}

int _call18(num lat, num lng) {
  if (lat < -13.692378) if (lat < -28.393264) if (lat < -45.999874) if (lat <
      -56.248000) if (lat < -61.600000) if (lat < -66.000000) if (lat < -86.000000)
    return 205;
  else if (lng < -67.500000)
    return 207;
  else {
    if (poly[1204].contains(lat, lng))
      return 207;
    else
      return 70;
  }
  else if (lat < -64.000000) {
    if (poly[1205].contains(lat, lng))
      return 206;
    else
      return 70;
  } else {
    if (poly[1206].contains(lat, lng))
      return 169;
    else
      return 70;
  }
  else if (lat < -58.362500)
    return 70;
  else
    return 169;
  else if (lng < -63.453630) if (lng < -69.122039) if (lat < -50.972131) {
    if (poly[1207].contains(lat, lng))
      return 65;
    else
      return 169;
  } else if (lng < -71.956244) if (lat < -48.486002) if (lng < -73.373347) {
    if (poly[1208].contains(lat, lng)) return 65;
    if (poly[1209].contains(lat, lng)) return 65;
    if (poly[1210].contains(lat, lng))
      return 177;
    else
      return 169;
  } else if (lat < -49.729067) {
    if (poly[1211].contains(lat, lng))
      return 65;
    else
      return 169;
  } else {
    if (poly[1212].contains(lat, lng)) return 169;
    if (poly[1213].contains(lat, lng)) return 177;
    if (poly[1214].contains(lat, lng))
      return 177;
    else
      return 65;
  }
  else {
    if (poly[1215].contains(lat, lng)) return 65;
    if (poly[1216].contains(lat, lng)) return 65;
    if (poly[1217].contains(lat, lng)) return 65;
    if (poly[1218].contains(lat, lng))
      return 65;
    else
      return 177;
  }
  else {
    if (poly[1219].contains(lat, lng)) return 60;
    if (poly[1220].contains(lat, lng)) return 177;
    if (poly[1221].contains(lat, lng)) return 177;
    if (poly[1222].contains(lat, lng))
      return 177;
    else
      return 65;
  }
  else if (lat < -51.089499) {
    if (poly[1223].contains(lat, lng)) return 65;
    if (poly[1224].contains(lat, lng))
      return 169;
    else
      return 70;
  } else {
    if (poly[1225].contains(lat, lng))
      return 60;
    else
      return 65;
  }
  else if (lng < -57.366237)
    return 304;
  else
    return 302;
  else
    return _call6(lat, lng);
  else if (lng < -58.171500)
    return _call8(lat, lng);
  else if (lat < -27.383750) if (lng < -56.929806) if (lng < -57.411484) {
    if (poly[1226].contains(lat, lng))
      return 71;
    else
      return 61;
  } else {
    if (poly[1227].contains(lat, lng))
      return 71;
    else
      return 61;
  }
  else if (lng < -56.217655) {
    if (poly[1228].contains(lat, lng))
      return 71;
    else
      return 61;
  } else if (lng < -52.173129) if (lng < -54.195392) if (lng < -55.206523) {
    if (poly[1229].contains(lat, lng)) return 71;
    if (poly[1230].contains(lat, lng)) return 179;
    if (poly[1231].contains(lat, lng))
      return 179;
    else
      return 61;
  } else {
    if (poly[1232].contains(lat, lng))
      return 61;
    else
      return 179;
  }
  else
    return 179;
  else
    return 179;
  else
    return _call7(lat, lng);
  else if (lat < 13.583000)
    return _call12(lat, lng);
  else if (lng < -64.059729) if (lng < -70.864359) if (lat <
      20.888781) if (lng < -72.827404) {
    if (poly[1233].contains(lat, lng)) return 115;
    if (poly[1234].contains(lat, lng))
      return 152;
    else
      return 165;
  } else if (lat < 19.079476) {
    if (poly[1235].contains(lat, lng))
      return 165;
    else
      return 178;
  } else {
    if (poly[1236].contains(lat, lng))
      return 178;
    else
      return 165;
  }
  else {
    if (poly[1237].contains(lat, lng)) return 152;
    if (poly[1238].contains(lat, lng))
      return 178;
    else
      return 108;
  }
  else if (lng < -67.633762) if (lng < -68.110146) {
    if (poly[1239].contains(lat, lng))
      return 168;
    else
      return 178;
  } else
    return 168;
  else if (lat < 17.995840) if (lng < -65.116124)
    return 168;
  else
    return 186;
  else if (lng < -65.040186) {
    if (poly[1240].contains(lat, lng))
      return 186;
    else
      return 168;
  } else {
    if (poly[1241].contains(lat, lng))
      return 186;
    else
      return 194;
  }
  else if (lng < -62.584402) if (lat < 17.615815) if (lat < 15.915843)
    return 85;
  else {
    if (poly[1242].contains(lat, lng))
      return 131;
    else
      return 184;
  }
  else {
    if (poly[1243].contains(lat, lng)) return 131;
    if (poly[1244].contains(lat, lng)) return 135;
    if (poly[1245].contains(lat, lng)) return 139;
    if (poly[1246].contains(lat, lng))
      return 182;
    else
      return 55;
  }
  else if (lat < 15.787222) if (lat < 15.079510) if (lat < 14.272500) if (lng <
      -61.003889) {
    if (poly[1247].contains(lat, lng))
      return 140;
    else
      return 185;
  } else {
    if (poly[1248].contains(lat, lng))
      return 140;
    else
      return 185;
  }
  else {
    if (poly[1249].contains(lat, lng))
      return 99;
    else
      return 140;
  }
  else if (lng < -61.442500) {
    if (poly[1250].contains(lat, lng))
      return 110;
    else
      return 99;
  } else {
    if (poly[1251].contains(lat, lng))
      return 110;
    else
      return 99;
  }
  else if (lng < -62.140067) {
    if (poly[1252].contains(lat, lng)) return 56;
    if (poly[1253].contains(lat, lng))
      return 184;
    else
      return 151;
  } else if (lat < 16.714000) {
    if (poly[1254].contains(lat, lng))
      return 151;
    else
      return 110;
  } else {
    if (poly[1255].contains(lat, lng))
      return 151;
    else
      return 56;
  }
}

int _call19(num lat, num lng) {
  if (lat < -5.149089) if (lat < -36.862000) if (lat < -58.803000) if (lat <
      -65.969656) if (lng < -5.500000) if (lat < -86.000000)
    return 205;
  else {
    if (poly[1256].contains(lat, lng))
      return 317;
    else
      return 207;
  }
  else if (lat < -86.000000)
    return 205;
  else if (lng < 0.000000)
    return 25;
  else {
    if (poly[1257].contains(lat, lng))
      return 209;
    else
      return 208;
  }
  else
    return 302;
  else if (lng < -25.846830)
    return 302;
  else if (lng < -9.611753)
    return 303;
  else
    return 25;
  else if (lng < -5.423415) if (lng < -34.599531)
    return 104;
  else
    return 303;
  else
    return _call13(lat, lng);
  else if (lng < 7.670478) if (lng < -7.367323) if (lat < 10.462040) if (lng <
      -15.238664) if (lat < 3.393091)
    return 16;
  else
    return 156;
  else if (lat < 9.999973) if (lng < -10.881472) if (lat < 8.056728) {
    if (poly[1258].contains(lat, lng))
      return 42;
    else
      return 22;
  } else if (lng < -12.638547) {
    if (poly[1259].contains(lat, lng))
      return 22;
    else
      return 16;
  } else {
    if (poly[1260].contains(lat, lng))
      return 22;
    else
      return 16;
  }
  else if (lat < 7.077782) if (lng < -9.124398)
    return 42;
  else if (lat < 5.616687) {
    if (poly[1261].contains(lat, lng))
      return 1;
    else
      return 42;
  } else if (lng < -8.245860) {
    if (poly[1262].contains(lat, lng))
      return 1;
    else
      return 42;
  } else {
    if (poly[1263].contains(lat, lng))
      return 42;
    else
      return 1;
  }
  else if (lng < -9.124398) if (lat < 8.538878) if (lng < -10.002935) {
    if (poly[1264].contains(lat, lng)) return 16;
    if (poly[1265].contains(lat, lng))
      return 42;
    else
      return 22;
  } else {
    if (poly[1266].contains(lat, lng))
      return 42;
    else
      return 16;
  }
  else {
    if (poly[1267].contains(lat, lng)) return 22;
    if (poly[1268].contains(lat, lng))
      return 42;
    else
      return 16;
  }
  else if (lat < 8.538878) if (lng < -8.245860) {
    if (poly[1269].contains(lat, lng)) return 1;
    if (poly[1270].contains(lat, lng))
      return 16;
    else
      return 42;
  } else {
    if (poly[1271].contains(lat, lng))
      return 16;
    else
      return 1;
  }
  else {
    if (poly[1272].contains(lat, lng))
      return 16;
    else
      return 1;
  }
  else {
    if (poly[1273].contains(lat, lng)) return 1;
    if (poly[1274].contains(lat, lng))
      return 16;
    else
      return 6;
  }
  else if (lat < 17.407117) if (lng < -22.454775)
    return 298;
  else if (lat < 12.686238) if (lng < -12.180100) if (lng < -14.586488) {
    if (poly[1275].contains(lat, lng)) return 16;
    if (poly[1276].contains(lat, lng)) return 17;
    if (poly[1277].contains(lat, lng))
      return 17;
    else
      return 9;
  } else if (lng < -13.383294) {
    if (poly[1278].contains(lat, lng)) return 9;
    if (poly[1279].contains(lat, lng))
      return 17;
    else
      return 16;
  } else {
    if (poly[1280].contains(lat, lng))
      return 17;
    else
      return 16;
  }
  else if (lng < -9.773711) if (lng < -10.976906) if (lat < 11.574139)
    return 16;
  else if (lng < -11.578503) {
    if (poly[1281].contains(lat, lng))
      return 17;
    else
      return 16;
  } else {
    if (poly[1282].contains(lat, lng)) return 16;
    if (poly[1283].contains(lat, lng))
      return 17;
    else
      return 6;
  }
  else {
    if (poly[1284].contains(lat, lng))
      return 16;
    else
      return 6;
  }
  else if (lng < -8.570517) {
    if (poly[1285].contains(lat, lng))
      return 16;
    else
      return 6;
  } else {
    if (poly[1286].contains(lat, lng)) return 16;
    if (poly[1287].contains(lat, lng))
      return 16;
    else
      return 6;
  }
  else if (lng < -12.576783) if (lng < -15.181512) if (lat < 15.046677) {
    if (poly[1288].contains(lat, lng))
      return 8;
    else
      return 17;
  } else {
    if (poly[1289].contains(lat, lng))
      return 46;
    else
      return 17;
  }
  else if (lat < 15.046677) {
    if (poly[1290].contains(lat, lng)) return 8;
    if (poly[1291].contains(lat, lng))
      return 46;
    else
      return 17;
  } else if (lng < -13.879147) {
    if (poly[1292].contains(lat, lng))
      return 46;
    else
      return 17;
  } else {
    if (poly[1293].contains(lat, lng))
      return 46;
    else
      return 17;
  }
  else if (lng < -9.972053) if (lat < 15.046677) if (lng < -11.274418) if (lat <
      13.866458) {
    if (poly[1294].contains(lat, lng))
      return 17;
    else
      return 6;
  } else if (lng < -11.925600) {
    if (poly[1295].contains(lat, lng)) return 6;
    if (poly[1296].contains(lat, lng))
      return 46;
    else
      return 17;
  } else {
    if (poly[1297].contains(lat, lng))
      return 46;
    else
      return 6;
  }
  else
    return 6;
  else {
    if (poly[1298].contains(lat, lng))
      return 6;
    else
      return 46;
  }
  else {
    if (poly[1299].contains(lat, lng))
      return 46;
    else
      return 6;
  }
  else {
    if (poly[1300].contains(lat, lng)) return 4;
    if (poly[1301].contains(lat, lng))
      return 46;
    else
      return 21;
  }
  else if (lat < 1.925760) if (lat < -0.707757)
    return 37;
  else
    return 49;
  else
    return _call14(lat, lng);
  else if (lng < 27.454076) if (lat < 5.392003)
    return _call15(lat, lng);
  else
    return _call16(lat, lng);
  else
    return _call17(lat, lng);
}

int _call20(num lat, num lng) {
  if (lat < 53.363782) if (lng < -61.250000) if (lat < 32.591369)
    return 296;
  else if (lat < 48.481700) if (lng < -68.020224) if (lat < 43.613186)
    return 153;
  else if (lng < -71.405337) {
    if (poly[1302].contains(lat, lng))
      return 193;
    else
      return 153;
  } else if (lat < 46.047443) {
    if (poly[1303].contains(lat, lng)) return 193;
    if (poly[1304].contains(lat, lng))
      return 193;
    else
      return 153;
  } else {
    if (poly[1305].contains(lat, lng)) return 148;
    if (poly[1306].contains(lat, lng))
      return 153;
    else
      return 193;
  }
  else if (lng < -64.635112) if (lat < 45.838850) if (lng < -66.327668) {
    if (poly[1307].contains(lat, lng)) return 114;
    if (poly[1308].contains(lat, lng))
      return 148;
    else
      return 153;
  } else {
    if (poly[1309].contains(lat, lng))
      return 148;
    else
      return 114;
  }
  else {
    if (poly[1310].contains(lat, lng)) return 153;
    if (poly[1311].contains(lat, lng))
      return 193;
    else
      return 148;
  }
  else {
    if (poly[1312].contains(lat, lng)) return 148;
    if (poly[1313].contains(lat, lng))
      return 193;
    else
      return 114;
  }
  else if (lng < -68.020224)
    return 193;
  else if (lng < -64.635112) if (lat < 50.922741)
    return 193;
  else if (lng < -66.327668) if (lat < 52.143261) {
    if (poly[1314].contains(lat, lng))
      return 107;
    else
      return 193;
  } else if (lng < -67.173946) {
    if (poly[1315].contains(lat, lng))
      return 107;
    else
      return 193;
  } else if (lat < 52.753522) {
    if (poly[1316].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1317].contains(lat, lng)) return 107;
    if (poly[1318].contains(lat, lng))
      return 107;
    else
      return 193;
  }
  else if (lat < 52.143261) {
    if (poly[1319].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1320].contains(lat, lng)) return 193;
    if (poly[1321].contains(lat, lng)) return 193;
    if (poly[1322].contains(lat, lng)) return 193;
    if (poly[1323].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else if (lat < 50.922741)
    return 193;
  else if (lng < -62.942556) if (lat < 52.143261) {
    if (poly[1324].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1325].contains(lat, lng)) return 193;
    if (poly[1326].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1327].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else if (lat < 44.250090)
    return 114;
  else if (lat < 47.365000) if (lng < -59.345249) if (lat < 46.471002) {
    if (poly[1328].contains(lat, lng))
      return 105;
    else
      return 114;
  } else {
    if (poly[1329].contains(lat, lng))
      return 183;
    else
      return 114;
  }
  else if (lng < -57.161134)
    return 183;
  else if (lng < -56.678682) if (lat < 47.171604)
    return 143;
  else
    return 183;
  else {
    if (poly[1330].contains(lat, lng))
      return 143;
    else
      return 183;
  }
  else {
    if (poly[1331].contains(lat, lng)) return 78;
    if (poly[1332].contains(lat, lng)) return 107;
    if (poly[1333].contains(lat, lng))
      return 114;
    else
      return 183;
  }
  else if (lat < 72.644741) if (lng < -60.758360) if (lat < 63.004262) if (lng <
      -67.774405) if (lat < 58.184022) {
    if (poly[1334].contains(lat, lng)) return 107;
    if (poly[1335].contains(lat, lng))
      return 107;
    else
      return 193;
  } else if (lng < -71.282427) {
    if (poly[1336].contains(lat, lng))
      return 193;
    else
      return 126;
  } else if (lat < 60.594142) if (lng < -69.528416) {
    if (poly[1337].contains(lat, lng)) return 126;
    if (poly[1338].contains(lat, lng))
      return 126;
    else
      return 193;
  } else {
    if (poly[1339].contains(lat, lng)) return 126;
    if (poly[1340].contains(lat, lng))
      return 162;
    else
      return 193;
  }
  else {
    if (poly[1341].contains(lat, lng)) return 162;
    if (poly[1342].contains(lat, lng))
      return 193;
    else
      return 126;
  }
  else if (lat < 58.184022) if (lng < -64.266382) if (lat < 55.773902) if (lng <
      -66.020393) if (lat < 54.568842) if (lng < -66.897399) if (lat < 53.966312) {
    if (poly[1343].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1344].contains(lat, lng)) return 193;
    if (poly[1345].contains(lat, lng)) return 193;
    if (poly[1346].contains(lat, lng)) return 193;
    if (poly[1347].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1348].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1349].contains(lat, lng)) return 107;
    if (poly[1350].contains(lat, lng))
      return 107;
    else
      return 193;
  }
  else {
    if (poly[1351].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1352].contains(lat, lng))
      return 107;
    else
      return 193;
  }
  else if (lat < 55.773902) if (lng < -62.512371) if (lat < 54.568842)
    return 107;
  else if (lng < -63.389377) if (lat < 55.171372) {
    if (poly[1353].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1354].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1355].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else
    return 107;
  else if (lng < -62.512371) if (lat < 56.978962) if (lng <
      -63.389377) if (lat < 56.376432) {
    if (poly[1356].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1357].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else
    return 107;
  else {
    if (poly[1358].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else
    return 107;
  else if (lng < -64.742671) if (lat < 60.594142) if (lng < -66.258538) {
    if (poly[1359].contains(lat, lng))
      return 193;
    else
      return 162;
  } else if (lat < 59.389082) {
    if (poly[1360].contains(lat, lng)) return 107;
    if (poly[1361].contains(lat, lng))
      return 162;
    else
      return 193;
  } else {
    if (poly[1362].contains(lat, lng)) return 107;
    if (poly[1363].contains(lat, lng)) return 107;
    if (poly[1364].contains(lat, lng)) return 107;
    if (poly[1365].contains(lat, lng)) return 107;
    if (poly[1366].contains(lat, lng)) return 107;
    if (poly[1367].contains(lat, lng))
      return 162;
    else
      return 193;
  }
  else
    return 162;
  else if (lat < 60.594142) if (lng < -63.226804) if (lat < 59.389082) if (lng <
      -63.984737) {
    if (poly[1368].contains(lat, lng)) return 193;
    if (poly[1369].contains(lat, lng))
      return 193;
    else
      return 107;
  } else {
    if (poly[1370].contains(lat, lng)) return 193;
    if (poly[1371].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else {
    if (poly[1372].contains(lat, lng)) return 162;
    if (poly[1373].contains(lat, lng)) return 193;
    if (poly[1374].contains(lat, lng)) return 193;
    if (poly[1375].contains(lat, lng)) return 193;
    if (poly[1376].contains(lat, lng)) return 193;
    if (poly[1377].contains(lat, lng)) return 193;
    if (poly[1378].contains(lat, lng))
      return 193;
    else
      return 107;
  }
  else
    return 107;
  else
    return 162;
  else {
    if (poly[1379].contains(lat, lng))
      return 126;
    else
      return 162;
  }
  else if (lat < 60.352065)
    return 106;
  else
    return 107;
  else if (lng < -63.556823) {
    if (poly[1380].contains(lat, lng)) return 106;
    if (poly[1381].contains(lat, lng)) return 126;
    if (poly[1382].contains(lat, lng))
      return 162;
    else
      return 190;
  } else {
    if (poly[1383].contains(lat, lng)) return 162;
    if (poly[1384].contains(lat, lng))
      return 190;
    else
      return 106;
  }
}

int _call21(num lat, num lng) {
  if (lng < 20.356164) if (lng < 12.516067) if (lng < 7.718044) if (lat <
      44.084297) {
    if (poly[1385].contains(lat, lng)) return 349;
    if (poly[1386].contains(lat, lng))
      return 356;
    else
      return 352;
  } else {
    if (poly[1387].contains(lat, lng))
      return 356;
    else
      return 352;
  }
  else if (lat < 38.311983)
    return 356;
  else if (lng < 10.095160) if (lat < 41.434667) {
    if (poly[1388].contains(lat, lng))
      return 352;
    else
      return 356;
  } else {
    if (poly[1389].contains(lat, lng))
      return 356;
    else
      return 352;
  }
  else {
    if (poly[1390].contains(lat, lng))
      return 358;
    else
      return 356;
  }
  else if (lat < 39.997858) if (lng < 18.739011)
    return 356;
  else if (lat < 38.441447)
    return 321;
  else {
    if (poly[1391].contains(lat, lng))
      return 366;
    else
      return 321;
  }
  else if (lng < 16.436115) if (lat < 42.709641) {
    if (poly[1392].contains(lat, lng))
      return 375;
    else
      return 356;
  } else if (lng < 14.476091) {
    if (poly[1393].contains(lat, lng))
      return 375;
    else
      return 356;
  } else {
    if (poly[1394].contains(lat, lng))
      return 359;
    else
      return 375;
  }
  else if (lat < 42.709641) if (lng < 18.396140) {
    if (poly[1395].contains(lat, lng)) return 356;
    if (poly[1396].contains(lat, lng))
      return 359;
    else
      return 375;
  } else if (lat < 41.353750) {
    if (poly[1397].contains(lat, lng))
      return 356;
    else
      return 366;
  } else if (lng < 19.376152) {
    if (poly[1398].contains(lat, lng)) return 359;
    if (poly[1399].contains(lat, lng)) return 366;
    if (poly[1400].contains(lat, lng)) return 366;
    if (poly[1401].contains(lat, lng)) return 366;
    if (poly[1402].contains(lat, lng)) return 366;
    if (poly[1403].contains(lat, lng))
      return 375;
    else
      return 353;
  } else {
    if (poly[1404].contains(lat, lng)) return 322;
    if (poly[1405].contains(lat, lng)) return 353;
    if (poly[1406].contains(lat, lng)) return 353;
    if (poly[1407].contains(lat, lng)) return 353;
    if (poly[1408].contains(lat, lng))
      return 353;
    else
      return 366;
  }
  else if (lng < 18.396140) if (lat < 44.065533) {
    if (poly[1409].contains(lat, lng))
      return 375;
    else
      return 359;
  } else {
    if (poly[1410].contains(lat, lng))
      return 375;
    else
      return 359;
  }
  else if (lat < 44.065533) if (lng < 19.376152) {
    if (poly[1411].contains(lat, lng)) return 322;
    if (poly[1412].contains(lat, lng)) return 322;
    if (poly[1413].contains(lat, lng))
      return 353;
    else
      return 359;
  } else {
    if (poly[1414].contains(lat, lng)) return 353;
    if (poly[1415].contains(lat, lng)) return 359;
    if (poly[1416].contains(lat, lng)) return 359;
    if (poly[1417].contains(lat, lng))
      return 359;
    else
      return 322;
  }
  else if (lng < 19.376152) if (lat < 44.743478) {
    if (poly[1418].contains(lat, lng))
      return 322;
    else
      return 359;
  } else if (lng < 18.886146) {
    if (poly[1419].contains(lat, lng))
      return 375;
    else
      return 359;
  } else {
    if (poly[1420].contains(lat, lng)) return 359;
    if (poly[1421].contains(lat, lng))
      return 375;
    else
      return 322;
  }
  else {
    if (poly[1422].contains(lat, lng)) return 359;
    if (poly[1423].contains(lat, lng)) return 359;
    if (poly[1424].contains(lat, lng))
      return 375;
    else
      return 322;
  }
  else if (lat < 42.373536) if (lng < 23.034051) if (lat < 39.914726) {
    if (poly[1425].contains(lat, lng))
      return 366;
    else
      return 321;
  } else if (lng < 21.695107) if (lat < 41.144131) if (lng < 21.025636) {
    if (poly[1426].contains(lat, lng)) return 321;
    if (poly[1427].contains(lat, lng)) return 321;
    if (poly[1428].contains(lat, lng))
      return 362;
    else
      return 366;
  } else {
    if (poly[1429].contains(lat, lng)) return 362;
    if (poly[1430].contains(lat, lng))
      return 366;
    else
      return 321;
  }
  else if (lng < 21.025636) {
    if (poly[1431].contains(lat, lng)) return 322;
    if (poly[1432].contains(lat, lng))
      return 366;
    else
      return 362;
  } else {
    if (poly[1433].contains(lat, lng))
      return 362;
    else
      return 322;
  }
  else if (lat < 41.144131) {
    if (poly[1434].contains(lat, lng)) return 362;
    if (poly[1435].contains(lat, lng)) return 362;
    if (poly[1436].contains(lat, lng))
      return 362;
    else
      return 321;
  } else {
    if (poly[1437].contains(lat, lng)) return 321;
    if (poly[1438].contains(lat, lng)) return 321;
    if (poly[1439].contains(lat, lng)) return 321;
    if (poly[1440].contains(lat, lng)) return 321;
    if (poly[1441].contains(lat, lng)) return 322;
    if (poly[1442].contains(lat, lng)) return 322;
    if (poly[1443].contains(lat, lng))
      return 363;
    else
      return 362;
  }
  else if (lng < 31.630816) if (lng < 27.332433) if (lat < 40.067370) {
    if (poly[1444].contains(lat, lng))
      return 336;
    else
      return 321;
  } else if (lng < 25.183242) {
    if (poly[1445].contains(lat, lng))
      return 363;
    else
      return 321;
  } else if (lat < 41.220453) {
    if (poly[1446].contains(lat, lng))
      return 336;
    else
      return 321;
  } else if (lng < 26.257838) {
    if (poly[1447].contains(lat, lng))
      return 321;
    else
      return 363;
  } else {
    if (poly[1448].contains(lat, lng)) return 321;
    if (poly[1449].contains(lat, lng))
      return 363;
    else
      return 336;
  }
  else {
    if (poly[1450].contains(lat, lng))
      return 363;
    else
      return 336;
  }
  else
    return 336;
  else if (lng < 30.480486) if (lng < 29.207957) if (lng < 24.782060) if (lng <
      22.569112) if (lat < 43.897480) {
    if (poly[1451].contains(lat, lng)) return 363;
    if (poly[1452].contains(lat, lng))
      return 363;
    else
      return 322;
  } else {
    if (poly[1453].contains(lat, lng)) return 326;
    if (poly[1454].contains(lat, lng)) return 326;
    if (poly[1455].contains(lat, lng))
      return 363;
    else
      return 322;
  }
  else if (lat < 43.897480) {
    if (poly[1456].contains(lat, lng)) return 322;
    if (poly[1457].contains(lat, lng))
      return 326;
    else
      return 363;
  } else {
    if (poly[1458].contains(lat, lng)) return 322;
    if (poly[1459].contains(lat, lng)) return 322;
    if (poly[1460].contains(lat, lng))
      return 363;
    else
      return 326;
  }
  else {
    if (poly[1461].contains(lat, lng)) return 339;
    if (poly[1462].contains(lat, lng))
      return 363;
    else
      return 326;
  }
  else {
    if (poly[1463].contains(lat, lng))
      return 326;
    else
      return 339;
  }
  else if (lng < 36.674992) {
    if (poly[1464].contains(lat, lng))
      return 350;
    else
      return 361;
  } else {
    if (poly[1465].contains(lat, lng))
      return 281;
    else
      return 350;
  }
}

int _call22(num lat, num lng) {
  if (lat < 47.092146) if (lng < 16.596770) if (lng < 12.185960) {
    if (poly[1466].contains(lat, lng)) return 371;
    if (poly[1467].contains(lat, lng))
      return 371;
    else
      return 356;
  } else if (lng < 12.240745) if (lat < 46.906838) {
    if (poly[1468].contains(lat, lng))
      return 371;
    else
      return 356;
  } else if (lat < 47.069168) {
    if (poly[1469].contains(lat, lng))
      return 356;
    else
      return 371;
  } else {
    if (poly[1470].contains(lat, lng))
      return 371;
    else
      return 356;
  }
  else if (lng < 14.418757) if (lng < 13.329751) {
    if (poly[1471].contains(lat, lng)) return 371;
    if (poly[1472].contains(lat, lng))
      return 375;
    else
      return 356;
  } else if (lat < 46.256785) {
    if (poly[1473].contains(lat, lng)) return 356;
    if (poly[1474].contains(lat, lng))
      return 375;
    else
      return 342;
  } else {
    if (poly[1475].contains(lat, lng)) return 356;
    if (poly[1476].contains(lat, lng))
      return 371;
    else
      return 342;
  }
  else if (lng < 15.507764) if (lat < 46.256785) {
    if (poly[1477].contains(lat, lng))
      return 375;
    else
      return 342;
  } else {
    if (poly[1478].contains(lat, lng))
      return 371;
    else
      return 342;
  }
  else if (lat < 46.256785) {
    if (poly[1479].contains(lat, lng))
      return 342;
    else
      return 375;
  } else if (lng < 16.052267) {
    if (poly[1480].contains(lat, lng)) return 371;
    if (poly[1481].contains(lat, lng))
      return 375;
    else
      return 342;
  } else {
    if (poly[1482].contains(lat, lng)) return 327;
    if (poly[1483].contains(lat, lng)) return 371;
    if (poly[1484].contains(lat, lng))
      return 375;
    else
      return 342;
  }
  else if (lng < 20.611605) if (lng < 18.604188) {
    if (poly[1485].contains(lat, lng))
      return 375;
    else
      return 327;
  } else if (lng < 19.607897) if (lat < 46.256785) if (lng < 19.106042) {
    if (poly[1486].contains(lat, lng)) return 322;
    if (poly[1487].contains(lat, lng))
      return 327;
    else
      return 375;
  } else {
    if (poly[1488].contains(lat, lng))
      return 322;
    else
      return 327;
  }
  else
    return 327;
  else {
    if (poly[1489].contains(lat, lng)) return 326;
    if (poly[1490].contains(lat, lng))
      return 327;
    else
      return 322;
  }
  else if (lng < 22.619023) if (lng < 21.615314) {
    if (poly[1491].contains(lat, lng)) return 322;
    if (poly[1492].contains(lat, lng))
      return 327;
    else
      return 326;
  } else {
    if (poly[1493].contains(lat, lng))
      return 327;
    else
      return 326;
  }
  else
    return 326;
  else if (lng < 18.859216) if (lat < 49.517291) if (lng < 14.675755) if (lng <
      12.584024) {
    if (poly[1494].contains(lat, lng))
      return 371;
    else
      return 323;
  } else if (lat < 48.304719) {
    if (poly[1495].contains(lat, lng))
      return 323;
    else
      return 371;
  } else if (lng < 13.629890) {
    if (poly[1496].contains(lat, lng)) return 354;
    if (poly[1497].contains(lat, lng))
      return 371;
    else
      return 323;
  } else {
    if (poly[1498].contains(lat, lng)) return 323;
    if (poly[1499].contains(lat, lng))
      return 354;
    else
      return 371;
  }
  else if (lng < 16.767485) if (lat < 48.304695) {
    if (poly[1500].contains(lat, lng))
      return 327;
    else
      return 371;
  } else {
    if (poly[1501].contains(lat, lng))
      return 371;
    else
      return 354;
  }
  else if (lat < 48.304719) if (lng < 17.813351) {
    if (poly[1502].contains(lat, lng)) return 324;
    if (poly[1503].contains(lat, lng))
      return 371;
    else
      return 327;
  } else {
    if (poly[1504].contains(lat, lng))
      return 327;
    else
      return 324;
  }
  else {
    if (poly[1505].contains(lat, lng)) return 354;
    if (poly[1506].contains(lat, lng))
      return 371;
    else
      return 324;
  }
  else if (lng < 14.675755) if (lat < 51.621312) if (lng < 12.584024) {
    if (poly[1507].contains(lat, lng))
      return 354;
    else
      return 323;
  } else {
    if (poly[1508].contains(lat, lng))
      return 354;
    else
      return 323;
  }
  else {
    if (poly[1509].contains(lat, lng)) return 374;
    if (poly[1510].contains(lat, lng))
      return 374;
    else
      return 323;
  }
  else if (lat < 51.621312) if (lng < 16.767485) if (lat < 50.569301) {
    if (poly[1511].contains(lat, lng))
      return 374;
    else
      return 354;
  } else {
    if (poly[1512].contains(lat, lng)) return 323;
    if (poly[1513].contains(lat, lng))
      return 354;
    else
      return 374;
  }
  else if (lat < 50.569301) if (lng < 17.813351) {
    if (poly[1514].contains(lat, lng))
      return 374;
    else
      return 354;
  } else {
    if (poly[1515].contains(lat, lng))
      return 354;
    else
      return 374;
  }
  else
    return 374;
  else {
    if (poly[1516].contains(lat, lng)) return 323;
    if (poly[1517].contains(lat, lng))
      return 323;
    else
      return 374;
  }
  else if (lat < 49.613816) if (lng < 21.742829) if (lng < 20.301022) if (lat <
      48.352981) {
    if (poly[1518].contains(lat, lng))
      return 324;
    else
      return 327;
  } else {
    if (poly[1519].contains(lat, lng))
      return 374;
    else
      return 324;
  }
  else if (lat < 48.352981) {
    if (poly[1520].contains(lat, lng)) return 324;
    if (poly[1521].contains(lat, lng)) return 324;
    if (poly[1522].contains(lat, lng))
      return 326;
    else
      return 327;
  } else {
    if (poly[1523].contains(lat, lng)) return 327;
    if (poly[1524].contains(lat, lng))
      return 374;
    else
      return 324;
  }
  else if (lng < 23.184635) if (lat < 48.352981) if (lng < 22.463732) {
    if (poly[1525].contains(lat, lng)) return 324;
    if (poly[1526].contains(lat, lng)) return 326;
    if (poly[1527].contains(lat, lng))
      return 368;
    else
      return 327;
  } else {
    if (poly[1528].contains(lat, lng)) return 326;
    if (poly[1529].contains(lat, lng))
      return 327;
    else
      return 368;
  }
  else if (lng < 22.463732) {
    if (poly[1530].contains(lat, lng)) return 327;
    if (poly[1531].contains(lat, lng)) return 368;
    if (poly[1532].contains(lat, lng))
      return 374;
    else
      return 324;
  } else {
    if (poly[1533].contains(lat, lng)) return 324;
    if (poly[1534].contains(lat, lng)) return 368;
    if (poly[1535].contains(lat, lng))
      return 374;
    else
      return 339;
  }
  else if (lat < 48.352981) {
    if (poly[1536].contains(lat, lng)) return 326;
    if (poly[1537].contains(lat, lng)) return 339;
    if (poly[1538].contains(lat, lng)) return 339;
    if (poly[1539].contains(lat, lng))
      return 339;
    else
      return 368;
  } else {
    if (poly[1540].contains(lat, lng)) return 368;
    if (poly[1541].contains(lat, lng))
      return 368;
    else
      return 339;
  }
  else if (lng < 21.742829)
    return 374;
  else if (lat < 51.669574) if (lng < 23.184635) {
    if (poly[1542].contains(lat, lng))
      return 339;
    else
      return 374;
  } else if (lat < 50.641695) {
    if (poly[1543].contains(lat, lng))
      return 374;
    else
      return 339;
  } else {
    if (poly[1544].contains(lat, lng)) return 348;
    if (poly[1545].contains(lat, lng))
      return 374;
    else
      return 339;
  }
  else {
    if (poly[1546].contains(lat, lng)) return 339;
    if (poly[1547].contains(lat, lng))
      return 374;
    else
      return 348;
  }
}

int _call23(num lat, num lng) {
  if (lng < 30.163676) if (lat < 48.491870) if (lng < 27.395058) if (lat <
      46.956647)
    return 326;
  else if (lng < 26.010750) {
    if (poly[1548].contains(lat, lng))
      return 326;
    else
      return 339;
  } else if (lat < 47.724259) {
    if (poly[1549].contains(lat, lng))
      return 329;
    else
      return 326;
  } else if (lng < 26.702904) {
    if (poly[1550].contains(lat, lng)) return 329;
    if (poly[1551].contains(lat, lng))
      return 339;
    else
      return 326;
  } else if (lat < 48.108064) {
    if (poly[1552].contains(lat, lng))
      return 329;
    else
      return 326;
  } else {
    if (poly[1553].contains(lat, lng)) return 326;
    if (poly[1554].contains(lat, lng))
      return 339;
    else
      return 329;
  }
  else if (lat < 46.956647) if (lng < 28.779367) if (lat < 46.189036) {
    if (poly[1555].contains(lat, lng)) return 326;
    if (poly[1556].contains(lat, lng)) return 339;
    if (poly[1557].contains(lat, lng))
      return 339;
    else
      return 329;
  } else {
    if (poly[1558].contains(lat, lng))
      return 329;
    else
      return 326;
  }
  else if (lat < 46.189036) {
    if (poly[1559].contains(lat, lng)) return 326;
    if (poly[1560].contains(lat, lng)) return 329;
    if (poly[1561].contains(lat, lng))
      return 329;
    else
      return 339;
  } else if (lng < 29.471522) {
    if (poly[1562].contains(lat, lng))
      return 339;
    else
      return 329;
  } else {
    if (poly[1563].contains(lat, lng))
      return 329;
    else
      return 339;
  }
  else if (lng < 28.779367) if (lat < 47.724259) {
    if (poly[1564].contains(lat, lng))
      return 326;
    else
      return 329;
  } else {
    if (poly[1565].contains(lat, lng))
      return 339;
    else
      return 329;
  }
  else {
    if (poly[1566].contains(lat, lng))
      return 329;
    else
      return 339;
  }
  else if (lng < 27.395058) {
    if (poly[1567].contains(lat, lng))
      return 339;
    else
      return 348;
  } else if (lat < 51.108601)
    return 339;
  else if (lng < 28.779367) {
    if (poly[1568].contains(lat, lng))
      return 348;
    else
      return 339;
  } else {
    if (poly[1569].contains(lat, lng)) return 348;
    if (poly[1570].contains(lat, lng))
      return 348;
    else
      return 339;
  }
  else if (lat < 48.144930) if (lng < 30.351124)
    return 339;
  else if (lng < 35.289352) if (lng < 32.820238) {
    if (poly[1571].contains(lat, lng))
      return 361;
    else
      return 339;
  } else if (lat < 46.783177) {
    if (poly[1572].contains(lat, lng)) return 361;
    if (poly[1573].contains(lat, lng))
      return 376;
    else
      return 339;
  } else {
    if (poly[1574].contains(lat, lng))
      return 376;
    else
      return 339;
  }
  else if (lng < 37.758466) if (lat < 46.783177) {
    if (poly[1575].contains(lat, lng)) return 339;
    if (poly[1576].contains(lat, lng)) return 339;
    if (poly[1577].contains(lat, lng)) return 361;
    if (poly[1578].contains(lat, lng))
      return 376;
    else
      return 350;
  } else if (lng < 36.523909) {
    if (poly[1579].contains(lat, lng))
      return 376;
    else
      return 339;
  } else {
    if (poly[1580].contains(lat, lng)) return 350;
    if (poly[1581].contains(lat, lng))
      return 376;
    else
      return 339;
  }
  else {
    if (poly[1582].contains(lat, lng))
      return 339;
    else
      return 350;
  }
  else if (lng < 35.195628) if (lat < 50.935131)
    return 339;
  else if (lng < 32.679652) if (lat < 52.330231) if (lng < 31.421664) {
    if (poly[1583].contains(lat, lng))
      return 339;
    else
      return 348;
  } else {
    if (poly[1584].contains(lat, lng)) return 339;
    if (poly[1585].contains(lat, lng))
      return 348;
    else
      return 350;
  }
  else if (lng < 31.421664) {
    if (poly[1586].contains(lat, lng))
      return 350;
    else
      return 348;
  } else if (lat < 53.027782) {
    if (poly[1587].contains(lat, lng)) return 339;
    if (poly[1588].contains(lat, lng))
      return 348;
    else
      return 350;
  } else {
    if (poly[1589].contains(lat, lng)) return 350;
    if (poly[1590].contains(lat, lng)) return 350;
    if (poly[1591].contains(lat, lng)) return 350;
    if (poly[1592].contains(lat, lng))
      return 350;
    else
      return 348;
  }
  else if (lat < 52.330231) if (lng < 33.937640) {
    if (poly[1593].contains(lat, lng))
      return 339;
    else
      return 350;
  } else if (lat < 51.632681) {
    if (poly[1594].contains(lat, lng))
      return 350;
    else
      return 339;
  } else {
    if (poly[1595].contains(lat, lng))
      return 350;
    else
      return 339;
  }
  else {
    if (poly[1596].contains(lat, lng)) return 339;
    if (poly[1597].contains(lat, lng)) return 339;
    if (poly[1598].contains(lat, lng)) return 348;
    if (poly[1599].contains(lat, lng))
      return 348;
    else
      return 350;
  }
  else if (lat < 50.935131) if (lng < 37.711604) {
    if (poly[1600].contains(lat, lng))
      return 350;
    else
      return 339;
  } else if (lat < 49.540031) {
    if (poly[1601].contains(lat, lng))
      return 350;
    else
      return 339;
  } else {
    if (poly[1602].contains(lat, lng))
      return 339;
    else
      return 350;
  }
  else {
    if (poly[1603].contains(lat, lng))
      return 339;
    else
      return 350;
  }
}

int _call24(num lat, num lng) {
  if (lat < 71.384879) if (lng < 15.553064) if (lat < 54.399122) if (lng <
      7.549946)
    return 323;
  else {
    if (poly[1604].contains(lat, lng))
      return 374;
    else
      return 323;
  }
  else if (lat < 55.099161) if (lng < 14.078231) if (lng < 11.529757) {
    if (poly[1605].contains(lat, lng))
      return 323;
    else
      return 330;
  } else {
    if (poly[1606].contains(lat, lng))
      return 330;
    else
      return 323;
  }
  else
    return 330;
  else if (lat < 62.278222) if (lng < 10.246714) {
    if (poly[1607].contains(lat, lng))
      return 351;
    else
      return 330;
  } else if (lat < 58.688691) {
    if (poly[1608].contains(lat, lng))
      return 364;
    else
      return 330;
  } else {
    if (poly[1609].contains(lat, lng))
      return 351;
    else
      return 364;
  }
  else {
    if (poly[1610].contains(lat, lng))
      return 364;
    else
      return 351;
  }
  else if (lat < 56.450421) if (lng < 26.835520) if (lng < 16.993665) if (lat <
      55.307816)
    return 364;
  else
    return 374;
  else if (lng < 21.914593) {
    if (poly[1611].contains(lat, lng)) return 355;
    if (poly[1612].contains(lat, lng)) return 372;
    if (poly[1613].contains(lat, lng))
      return 374;
    else
      return 338;
  } else if (lng < 24.375056) if (lat < 55.087877) if (lng < 23.144825) {
    if (poly[1614].contains(lat, lng)) return 338;
    if (poly[1615].contains(lat, lng))
      return 374;
    else
      return 372;
  } else {
    if (poly[1616].contains(lat, lng)) return 348;
    if (poly[1617].contains(lat, lng))
      return 374;
    else
      return 372;
  }
  else {
    if (poly[1618].contains(lat, lng))
      return 372;
    else
      return 355;
  }
  else if (lat < 55.087877) {
    if (poly[1619].contains(lat, lng))
      return 372;
    else
      return 348;
  } else if (lng < 25.605288) {
    if (poly[1620].contains(lat, lng))
      return 372;
    else
      return 355;
  } else {
    if (poly[1621].contains(lat, lng)) return 348;
    if (poly[1622].contains(lat, lng))
      return 355;
    else
      return 372;
  }
  else if (lng < 32.363125) if (lng < 29.599322) {
    if (poly[1623].contains(lat, lng)) return 350;
    if (poly[1624].contains(lat, lng))
      return 355;
    else
      return 348;
  } else if (lng < 30.981224) {
    if (poly[1625].contains(lat, lng)) return 350;
    if (poly[1626].contains(lat, lng))
      return 350;
    else
      return 348;
  } else {
    if (poly[1627].contains(lat, lng)) return 348;
    if (poly[1628].contains(lat, lng))
      return 348;
    else
      return 350;
  }
  else {
    if (poly[1629].contains(lat, lng))
      return 348;
    else
      return 350;
  }
  else if (lat < 58.599619) if (lng < 19.734297)
    return 364;
  else if (lng < 30.456424) if (lng < 25.570846) {
    if (poly[1630].contains(lat, lng))
      return 365;
    else
      return 355;
  } else if (lng < 28.013635) if (lng < 26.792240) {
    if (poly[1631].contains(lat, lng))
      return 355;
    else
      return 365;
  } else if (lat < 57.525020) {
    if (poly[1632].contains(lat, lng)) return 355;
    if (poly[1633].contains(lat, lng))
      return 365;
    else
      return 350;
  } else {
    if (poly[1634].contains(lat, lng)) return 350;
    if (poly[1635].contains(lat, lng)) return 355;
    if (poly[1636].contains(lat, lng))
      return 355;
    else
      return 365;
  }
  else {
    if (poly[1637].contains(lat, lng))
      return 355;
    else
      return 350;
  }
  else
    return 350;
  else if (lng < 27.890322) if (lat < 64.992249) if (lng < 21.721693) {
    if (poly[1638].contains(lat, lng)) return 334;
    if (poly[1639].contains(lat, lng)) return 347;
    if (poly[1640].contains(lat, lng))
      return 365;
    else
      return 364;
  } else {
    if (poly[1641].contains(lat, lng)) return 350;
    if (poly[1642].contains(lat, lng)) return 350;
    if (poly[1643].contains(lat, lng)) return 364;
    if (poly[1644].contains(lat, lng))
      return 365;
    else
      return 334;
  }
  else if (lng < 21.721693) if (lng < 18.637379) {
    if (poly[1645].contains(lat, lng))
      return 364;
    else
      return 351;
  } else {
    if (poly[1646].contains(lat, lng)) return 334;
    if (poly[1647].contains(lat, lng))
      return 351;
    else
      return 364;
  }
  else if (lat < 68.188564) {
    if (poly[1648].contains(lat, lng))
      return 334;
    else
      return 364;
  } else if (lng < 24.806007) {
    if (poly[1649].contains(lat, lng)) return 351;
    if (poly[1650].contains(lat, lng))
      return 364;
    else
      return 334;
  } else {
    if (poly[1651].contains(lat, lng))
      return 334;
    else
      return 351;
  }
  else if (lat < 64.959848) if (lng < 34.058951) if (lat < 61.779734) {
    if (poly[1652].contains(lat, lng)) return 334;
    if (poly[1653].contains(lat, lng))
      return 365;
    else
      return 350;
  } else {
    if (poly[1654].contains(lat, lng))
      return 350;
    else
      return 334;
  }
  else
    return 350;
  else if (lng < 34.058951) if (lat < 68.139963) {
    if (poly[1655].contains(lat, lng))
      return 350;
    else
      return 334;
  } else if (lng < 30.974637) {
    if (poly[1656].contains(lat, lng)) return 334;
    if (poly[1657].contains(lat, lng))
      return 350;
    else
      return 351;
  } else {
    if (poly[1658].contains(lat, lng))
      return 351;
    else
      return 350;
  }
  else
    return 350;
  else
    return 211;
}

int _call25(num lat, num lng) {
  if (lng < -15.623845) if (lng < -52.323198)
    return _call20(lat, lng);
  else if (lat < 38.109494) if (lat < 29.059666)
    return 297;
  else if (lng < -24.531025)
    return 295;
  else
    return 300;
  else if (lat < 39.926735)
    return 295;
  else if (lat < 67.353000) if (lng < -32.286453)
    return 106;
  else
    return 301;
  else if (lat < 72.400000) {
    if (poly[1659].contains(lat, lng))
      return 180;
    else
      return 106;
  } else {
    if (poly[1660].contains(lat, lng))
      return 94;
    else
      return 106;
  }
  else if (lat < 43.993309) if (lat < 36.155038) if (lat < 35.320152) if (lng <
      -15.127390)
    return 297;
  else if (lng < -4.897429) if (lng < -9.816326) {
    if (poly[1661].contains(lat, lng)) return 21;
    if (poly[1662].contains(lat, lng))
      return 297;
    else
      return 14;
  } else {
    if (poly[1663].contains(lat, lng)) return 4;
    if (poly[1664].contains(lat, lng))
      return 21;
    else
      return 14;
  }
  else if (lng < 0.021467) if (lat < 31.376848) {
    if (poly[1665].contains(lat, lng))
      return 14;
    else
      return 4;
  } else if (lng < -2.437981) {
    if (poly[1666].contains(lat, lng)) return 4;
    if (poly[1667].contains(lat, lng))
      return 15;
    else
      return 14;
  } else {
    if (poly[1668].contains(lat, lng))
      return 14;
    else
      return 4;
  }
  else
    return 4;
  else if (lng < -5.048803) if (lat < 35.917950) {
    if (poly[1669].contains(lat, lng))
      return 14;
    else
      return 15;
  } else if (lat < 36.050527) {
    if (poly[1670].contains(lat, lng))
      return 345;
    else
      return 14;
  } else {
    if (poly[1671].contains(lat, lng))
      return 345;
    else
      return 332;
  }
  else if (lng < -2.811975) {
    if (poly[1672].contains(lat, lng))
      return 14;
    else
      return 345;
  } else {
    if (poly[1673].contains(lat, lng))
      return 14;
    else
      return 4;
  }
  else if (lat < 42.154311) if (lng < -6.189159) if (lat < 41.574832) if (lat <
      38.864935) {
    if (poly[1674].contains(lat, lng))
      return 345;
    else
      return 341;
  } else if (lng < -8.003728)
    return 341;
  else if (lat < 40.219884) {
    if (poly[1675].contains(lat, lng))
      return 345;
    else
      return 341;
  } else {
    if (poly[1676].contains(lat, lng))
      return 345;
    else
      return 341;
  }
  else if (lng < -7.685539) {
    if (poly[1677].contains(lat, lng)) return 345;
    if (poly[1678].contains(lat, lng))
      return 345;
    else
      return 341;
  } else {
    if (poly[1679].contains(lat, lng))
      return 341;
    else
      return 345;
  }
  else if (lat < 37.126460) if (lng < -0.881233)
    return 4;
  else
    return 345;
  else
    return 345;
  else if (lng < -2.317545)
    return 345;
  else if (lng < 1.311409) if (lng < -0.503068) {
    if (poly[1680].contains(lat, lng))
      return 352;
    else
      return 345;
  } else {
    if (poly[1681].contains(lat, lng))
      return 352;
    else
      return 345;
  }
  else if (lng < 3.125887) if (lat < 43.073810) if (lng < 2.218648) {
    if (poly[1682].contains(lat, lng)) return 319;
    if (poly[1683].contains(lat, lng))
      return 352;
    else
      return 345;
  } else {
    if (poly[1684].contains(lat, lng))
      return 352;
    else
      return 345;
  }
  else
    return 352;
  else {
    if (poly[1685].contains(lat, lng))
      return 345;
    else
      return 352;
  }
  else if (lat < 55.636000) if (lng < 2.091912) if (lng < -5.658236) if (lat <
      50.399839)
    return 343;
  else if (lat < 51.934425) if (lng < -6.501750)
    return 331;
  else
    return 343;
  else if (lng < -8.335807)
    return 331;
  else if (lat < 53.785212)
    return 331;
  else if (lng < -6.997022) if (lat < 54.710606) {
    if (poly[1686].contains(lat, lng))
      return 343;
    else
      return 331;
  } else {
    if (poly[1687].contains(lat, lng)) return 343;
    if (poly[1688].contains(lat, lng))
      return 343;
    else
      return 331;
  }
  else {
    if (poly[1689].contains(lat, lng))
      return 343;
    else
      return 331;
  }
  else if (lat < 51.227462) if (lng < -1.783162) if (lat < 48.663863)
    return 352;
  else {
    if (poly[1690].contains(lat, lng)) return 333;
    if (poly[1691].contains(lat, lng)) return 337;
    if (poly[1692].contains(lat, lng))
      return 352;
    else
      return 343;
  }
  else {
    if (poly[1693].contains(lat, lng))
      return 343;
    else
      return 352;
  }
  else {
    if (poly[1694].contains(lat, lng))
      return 335;
    else
      return 343;
  }
  else if (lat < 48.742113)
    return 352;
  else if (lat < 51.116515) if (lng < 3.516138) {
    if (poly[1695].contains(lat, lng)) return 325;
    if (poly[1696].contains(lat, lng))
      return 325;
    else
      return 352;
  } else {
    if (poly[1697].contains(lat, lng)) return 352;
    if (poly[1698].contains(lat, lng))
      return 352;
    else
      return 325;
  }
  else {
    if (poly[1699].contains(lat, lng)) return 325;
    if (poly[1700].contains(lat, lng)) return 325;
    if (poly[1701].contains(lat, lng))
      return 352;
    else
      return 318;
  }
  else if (lng < -10.028876) if (lat < 66.697330) if (lat < 60.822138)
    return 301;
  else
    return 343;
  else
    return 106;
  else if (lng < -5.419671) if (lat < 59.335000)
    return 343;
  else if (lat < 66.536849)
    return 211;
  else
    return 299;
  else if (lng < -0.320965)
    return 343;
  else
    return 351;
}

int _call26(num lat, num lng) {
  if (lat < 45.421424) if (lat < 37.761205) if (lng < 28.374229) if (lng <
      15.587107) if (lng < 11.880113) if (lat < 32.597374) {
    if (poly[1702].contains(lat, lng)) return 4;
    if (poly[1703].contains(lat, lng))
      return 51;
    else
      return 50;
  } else if (lng < 8.410239) if (lat < 34.946790) {
    if (poly[1704].contains(lat, lng))
      return 51;
    else
      return 4;
  } else {
    if (poly[1705].contains(lat, lng)) return 51;
    if (poly[1706].contains(lat, lng))
      return 51;
    else
      return 4;
  }
  else {
    if (poly[1707].contains(lat, lng)) return 4;
    if (poly[1708].contains(lat, lng)) return 4;
    if (poly[1709].contains(lat, lng)) return 50;
    if (poly[1710].contains(lat, lng))
      return 356;
    else
      return 51;
  }
  else if (lat < 36.285271) if (lat < 33.282408)
    return 50;
  else if (lng < 13.530323)
    return 346;
  else
    return 356;
  else
    return 356;
  else if (lat < 33.140906) {
    if (poly[1711].contains(lat, lng))
      return 13;
    else
      return 50;
  } else if (lng < 16.206959)
    return 356;
  else if (lng < 24.256735)
    return 321;
  else {
    if (poly[1712].contains(lat, lng))
      return 336;
    else
      return 321;
  }
  else if (lat < 34.105119) if (lng < 34.567324) if (lat < 28.327764) {
    if (poly[1713].contains(lat, lng))
      return 272;
    else
      return 13;
  } else {
    if (poly[1714].contains(lat, lng)) return 237;
    if (poly[1715].contains(lat, lng))
      return 245;
    else
      return 13;
  }
  else if (lat < 30.769331) if (lng < 37.397452) {
    if (poly[1716].contains(lat, lng)) return 13;
    if (poly[1717].contains(lat, lng)) return 245;
    if (poly[1718].contains(lat, lng))
      return 272;
    else
      return 214;
  } else {
    if (poly[1719].contains(lat, lng))
      return 214;
    else
      return 272;
  }
  else if (lng < 37.397452) if (lat < 32.437225) if (lng < 35.982388) {
    if (poly[1720].contains(lat, lng)) return 214;
    if (poly[1721].contains(lat, lng))
      return 245;
    else
      return 238;
  } else {
    if (poly[1722].contains(lat, lng)) return 231;
    if (poly[1723].contains(lat, lng)) return 231;
    if (poly[1724].contains(lat, lng))
      return 272;
    else
      return 214;
  }
  else if (lng < 36.015275) if (lat < 33.271172) {
    if (poly[1725].contains(lat, lng)) return 214;
    if (poly[1726].contains(lat, lng)) return 225;
    if (poly[1727].contains(lat, lng)) return 225;
    if (poly[1728].contains(lat, lng)) return 231;
    if (poly[1729].contains(lat, lng))
      return 238;
    else
      return 245;
  } else {
    if (poly[1730].contains(lat, lng)) return 231;
    if (poly[1731].contains(lat, lng)) return 231;
    if (poly[1732].contains(lat, lng)) return 245;
    if (poly[1733].contains(lat, lng))
      return 245;
    else
      return 225;
  }
  else {
    if (poly[1734].contains(lat, lng)) return 214;
    if (poly[1735].contains(lat, lng)) return 214;
    if (poly[1736].contains(lat, lng)) return 214;
    if (poly[1737].contains(lat, lng)) return 225;
    if (poly[1738].contains(lat, lng))
      return 225;
    else
      return 231;
  }
  else {
    if (poly[1739].contains(lat, lng)) return 220;
    if (poly[1740].contains(lat, lng)) return 231;
    if (poly[1741].contains(lat, lng))
      return 272;
    else
      return 214;
  }
  else if (lng < 34.855318) if (lng < 29.729699) {
    if (poly[1742].contains(lat, lng))
      return 321;
    else
      return 336;
  } else if (lat < 35.384917) {
    if (poly[1743].contains(lat, lng))
      return 236;
    else
      return 261;
  } else {
    if (poly[1744].contains(lat, lng))
      return 236;
    else
      return 336;
  }
  else if (lat < 34.692354) {
    if (poly[1745].contains(lat, lng))
      return 231;
    else
      return 225;
  } else if (lng < 37.541449) if (lat < 36.226779) {
    if (poly[1746].contains(lat, lng)) return 336;
    if (poly[1747].contains(lat, lng))
      return 336;
    else
      return 231;
  } else {
    if (poly[1748].contains(lat, lng)) return 231;
    if (poly[1749].contains(lat, lng))
      return 231;
    else
      return 336;
  }
  else {
    if (poly[1750].contains(lat, lng))
      return 336;
    else
      return 231;
  }
  else
    return _call21(lat, lng);
  else if (lat < 53.725332) if (lng < 10.492294) if (lat < 47.808465) if (lng <
      8.979315) if (lat < 46.463702) if (lng < 6.959839) {
    if (poly[1751].contains(lat, lng)) return 356;
    if (poly[1752].contains(lat, lng))
      return 377;
    else
      return 352;
  } else if (lng < 7.969577) {
    if (poly[1753].contains(lat, lng)) return 352;
    if (poly[1754].contains(lat, lng)) return 352;
    if (poly[1755].contains(lat, lng))
      return 377;
    else
      return 356;
  } else {
    if (poly[1756].contains(lat, lng)) return 377;
    if (poly[1757].contains(lat, lng))
      return 377;
    else
      return 356;
  }
  else if (lng < 6.959839) {
    if (poly[1758].contains(lat, lng)) return 377;
    if (poly[1759].contains(lat, lng))
      return 377;
    else
      return 352;
  } else if (lng < 7.969577) {
    if (poly[1760].contains(lat, lng)) return 323;
    if (poly[1761].contains(lat, lng)) return 352;
    if (poly[1762].contains(lat, lng))
      return 352;
    else
      return 377;
  } else {
    if (poly[1763].contains(lat, lng)) return 328;
    if (poly[1764].contains(lat, lng))
      return 377;
    else
      return 323;
  }
  else if (lat < 46.859075) if (lng < 9.735805) {
    if (poly[1765].contains(lat, lng))
      return 356;
    else
      return 377;
  } else {
    if (poly[1766].contains(lat, lng)) return 356;
    if (poly[1767].contains(lat, lng)) return 356;
    if (poly[1768].contains(lat, lng)) return 371;
    if (poly[1769].contains(lat, lng))
      return 371;
    else
      return 377;
  }
  else if (lng < 10.079184) if (lng < 9.529250) {
    if (poly[1770].contains(lat, lng)) return 323;
    if (poly[1771].contains(lat, lng))
      return 369;
    else
      return 377;
  } else {
    if (poly[1772].contains(lat, lng)) return 323;
    if (poly[1773].contains(lat, lng)) return 323;
    if (poly[1774].contains(lat, lng)) return 369;
    if (poly[1775].contains(lat, lng)) return 377;
    if (poly[1776].contains(lat, lng))
      return 377;
    else
      return 371;
  }
  else if (lat < 46.997125) if (lng < 10.376011) {
    if (poly[1777].contains(lat, lng))
      return 377;
    else
      return 371;
  } else {
    if (poly[1778].contains(lat, lng))
      return 377;
    else
      return 371;
  }
  else {
    if (poly[1779].contains(lat, lng))
      return 323;
    else
      return 371;
  }
  else if (lat < 50.590613) if (lng < 7.716329) if (lat < 49.199539) {
    if (poly[1780].contains(lat, lng))
      return 352;
    else
      return 323;
  } else if (lng < 6.328347) if (lat < 49.895076) if (lng < 5.634355) {
    if (poly[1781].contains(lat, lng))
      return 352;
    else
      return 325;
  } else {
    if (poly[1782].contains(lat, lng)) return 323;
    if (poly[1783].contains(lat, lng)) return 325;
    if (poly[1784].contains(lat, lng))
      return 352;
    else
      return 344;
  }
  else {
    if (poly[1785].contains(lat, lng)) return 323;
    if (poly[1786].contains(lat, lng)) return 323;
    if (poly[1787].contains(lat, lng)) return 323;
    if (poly[1788].contains(lat, lng))
      return 344;
    else
      return 325;
  }
  else {
    if (poly[1789].contains(lat, lng)) return 325;
    if (poly[1790].contains(lat, lng)) return 344;
    if (poly[1791].contains(lat, lng)) return 352;
    if (poly[1792].contains(lat, lng))
      return 352;
    else
      return 323;
  }
  else {
    if (poly[1793].contains(lat, lng))
      return 352;
    else
      return 323;
  }
  else if (lng < 7.716329) if (lat < 52.157972) if (lng < 6.328347) if (lat <
      51.374293) if (lng < 5.634355) {
    if (poly[1794].contains(lat, lng))
      return 318;
    else
      return 325;
  } else if (lat < 50.982453) {
    if (poly[1795].contains(lat, lng)) return 318;
    if (poly[1796].contains(lat, lng))
      return 325;
    else
      return 323;
  } else {
    if (poly[1797].contains(lat, lng)) return 323;
    if (poly[1798].contains(lat, lng))
      return 325;
    else
      return 318;
  }
  else {
    if (poly[1799].contains(lat, lng)) return 323;
    if (poly[1800].contains(lat, lng))
      return 325;
    else
      return 318;
  }
  else {
    if (poly[1801].contains(lat, lng))
      return 318;
    else
      return 323;
  }
  else {
    if (poly[1802].contains(lat, lng))
      return 318;
    else
      return 323;
  }
  else
    return 323;
  else if (lng < 24.626441)
    return _call22(lat, lng);
  else
    return _call23(lat, lng);
  else
    return _call24(lat, lng);
}

int _call27(num lat, num lng) {
  if (lng < 105.915805) if (lng < 100.300923) if (lng < 97.134961) if (lng <
      81.912012)
    return 230;
  else if (lat < -5.446921)
    return 243;
  else
    return 381;
  else if (lat < 5.464190) if (lat < 4.176873) {
    if (poly[1803].contains(lat, lng))
      return 243;
    else
      return 253;
  } else if (lng < 99.574355)
    return 243;
  else
    return 253;
  else if (lng < 99.504759) {
    if (poly[1804].contains(lat, lng))
      return 253;
    else
      return 223;
  } else {
    if (poly[1805].contains(lat, lng))
      return 223;
    else
      return 253;
  }
  else if (lat < 3.527061) if (lat < -10.211475)
    return 380;
  else if (lat < -1.935469)
    return 243;
  else {
    if (poly[1806].contains(lat, lng)) return 243;
    if (poly[1807].contains(lat, lng)) return 277;
    if (poly[1808].contains(lat, lng))
      return 277;
    else
      return 253;
  }
  else if (lng < 100.673031) {
    if (poly[1809].contains(lat, lng))
      return 223;
    else
      return 253;
  } else {
    if (poly[1810].contains(lat, lng))
      return 223;
    else
      return 253;
  }
  else if (lng < 127.805486) if (lng < 116.484180) if (lat < 5.101186) if (lat <
      -5.413892) {
    if (poly[1811].contains(lat, lng))
      return 258;
    else
      return 243;
  } else if (lng < 111.199993) if (lat < -0.211034) {
    if (poly[1812].contains(lat, lng))
      return 267;
    else
      return 243;
  } else if (lng < 108.557899) {
    if (poly[1813].contains(lat, lng))
      return 267;
    else
      return 243;
  } else if (lat < 1.983621) {
    if (poly[1814].contains(lat, lng)) return 243;
    if (poly[1815].contains(lat, lng))
      return 254;
    else
      return 267;
  } else {
    if (poly[1816].contains(lat, lng)) return 243;
    if (poly[1817].contains(lat, lng))
      return 267;
    else
      return 254;
  }
  else if (lat < -0.156353) if (lng < 113.842086) {
    if (poly[1818].contains(lat, lng))
      return 267;
    else
      return 243;
  } else if (lat < -2.785122) {
    if (poly[1819].contains(lat, lng)) return 243;
    if (poly[1820].contains(lat, lng))
      return 267;
    else
      return 258;
  } else {
    if (poly[1821].contains(lat, lng))
      return 267;
    else
      return 258;
  }
  else if (lng < 113.842086) if (lat < 2.251313) if (lng < 112.521039) {
    if (poly[1822].contains(lat, lng))
      return 267;
    else
      return 254;
  } else {
    if (poly[1823].contains(lat, lng)) return 254;
    if (poly[1824].contains(lat, lng))
      return 258;
    else
      return 267;
  }
  else
    return 254;
  else if (lat < 2.472417) if (lng < 115.163133) if (lat < 1.158032) if (lng <
      114.502610) {
    if (poly[1825].contains(lat, lng))
      return 258;
    else
      return 267;
  } else {
    if (poly[1826].contains(lat, lng)) return 267;
    if (poly[1827].contains(lat, lng))
      return 267;
    else
      return 258;
  }
  else if (lng < 114.502610) {
    if (poly[1828].contains(lat, lng)) return 254;
    if (poly[1829].contains(lat, lng))
      return 267;
    else
      return 258;
  } else {
    if (poly[1830].contains(lat, lng))
      return 254;
    else
      return 258;
  }
  else {
    if (poly[1831].contains(lat, lng)) return 254;
    if (poly[1832].contains(lat, lng))
      return 267;
    else
      return 258;
  }
  else if (lng < 115.163133) if (lat < 3.786801) {
    if (poly[1833].contains(lat, lng)) return 258;
    if (poly[1834].contains(lat, lng))
      return 258;
    else
      return 254;
  } else if (lng < 114.502610) {
    if (poly[1835].contains(lat, lng))
      return 227;
    else
      return 254;
  } else {
    if (poly[1836].contains(lat, lng)) return 254;
    if (poly[1837].contains(lat, lng))
      return 254;
    else
      return 227;
  }
  else if (lat < 3.786801) {
    if (poly[1838].contains(lat, lng)) return 254;
    if (poly[1839].contains(lat, lng))
      return 254;
    else
      return 258;
  } else {
    if (poly[1840].contains(lat, lng)) return 227;
    if (poly[1841].contains(lat, lng))
      return 258;
    else
      return 254;
  }
  else
    return 254;
  else if (lat < 3.446428) if (lat < -3.881070) if (lng < 122.144833)
    return 258;
  else {
    if (poly[1842].contains(lat, lng)) return 244;
    if (poly[1843].contains(lat, lng))
      return 258;
    else
      return 233;
  }
  else {
    if (poly[1844].contains(lat, lng))
      return 244;
    else
      return 258;
  }
  else if (lng < 119.439088) if (lat < 5.115101) if (lng < 118.472828) {
    if (poly[1845].contains(lat, lng))
      return 258;
    else
      return 254;
  } else if (lat < 4.122173)
    return 254;
  else {
    if (poly[1846].contains(lat, lng))
      return 254;
    else
      return 259;
  }
  else {
    if (poly[1847].contains(lat, lng))
      return 259;
    else
      return 254;
  }
  else {
    if (poly[1848].contains(lat, lng))
      return 259;
    else
      return 258;
  }
  else if (lat < -10.852463)
    return 309;
  else if (lat < 3.446428) if (lng < 131.183524) {
    if (poly[1849].contains(lat, lng))
      return 416;
    else
      return 244;
  } else if (lat < 2.014817)
    return 244;
  else
    return 416;
  else
    return 416;
}

int _call28(num lat, num lng) {
  if (lat < -25.996391) if (lat < -39.287226) if (lat < -47.545812) if (lat <
      -64.000000) if (lng < 86.000000) if (lat < -86.000000)
    return 205;
  else if (lng < 55.000000) {
    if (poly[1850].contains(lat, lng))
      return 208;
    else
      return 205;
  } else if (lng < 77.500000) {
    if (poly[1851].contains(lat, lng))
      return 204;
    else
      return 205;
  } else {
    if (poly[1852].contains(lat, lng))
      return 205;
    else
      return 201;
  }
  else {
    if (poly[1853].contains(lat, lng)) return 200;
    if (poly[1854].contains(lat, lng)) return 202;
    if (poly[1855].contains(lat, lng)) return 210;
    if (poly[1856].contains(lat, lng))
      return 315;
    else
      return 205;
  }
  else if (lng < 159.340270) if (lat < -52.187445)
    return 203;
  else
    return 383;
  else
    return 390;
  else if (lng < 146.810136) if (lng < 144.428469) if (lng < 52.617433)
    return 383;
  else if (lat < -40.420775)
    return 311;
  else {
    if (poly[1857].contains(lat, lng))
      return 311;
    else
      return 308;
  }
  else
    return 311;
  else if (lng < 148.569095)
    return 311;
  else
    return 390;
  else if (lng < 134.366448) if (lng < 122.277320) if (lng < 77.849497)
    return 383;
  else
    return 315;
  else if (lng < 124.235687)
    return 315;
  else if (lat < -33.684270)
    return 305;
  else {
    if (poly[1858].contains(lat, lng)) return 309;
    if (poly[1859].contains(lat, lng)) return 310;
    if (poly[1860].contains(lat, lng))
      return 315;
    else
      return 305;
  }
  else if (lng < 137.999053) if (lat < -33.624782)
    return 305;
  else {
    if (poly[1861].contains(lat, lng))
      return 309;
    else
      return 305;
  }
  else if (lng < 153.695857) if (lat < -38.854388) if (lat <
      -39.198478) if (lng < 146.594326) {
    if (poly[1862].contains(lat, lng))
      return 314;
    else
      return 311;
  } else
    return 311;
  else
    return 314;
  else if (lng < 145.847455) if (lat < -32.425390) if (lng <
      141.923254) if (lat < -35.454133) {
    if (poly[1863].contains(lat, lng))
      return 314;
    else
      return 305;
  } else {
    if (poly[1864].contains(lat, lng)) return 305;
    if (poly[1865].contains(lat, lng))
      return 316;
    else
      return 314;
  }
  else if (lat < -35.639889) {
    if (poly[1866].contains(lat, lng))
      return 316;
    else
      return 314;
  } else if (lng < 143.885355) if (lat < -34.032639) if (lng <
      142.904304) if (lat < -34.836264)
    return 314;
  else if (lng < 142.413779) {
    if (poly[1867].contains(lat, lng))
      return 314;
    else
      return 316;
  } else {
    if (poly[1868].contains(lat, lng))
      return 316;
    else
      return 314;
  }
  else {
    if (poly[1869].contains(lat, lng))
      return 316;
    else
      return 314;
  }
  else
    return 316;
  else {
    if (poly[1870].contains(lat, lng))
      return 314;
    else
      return 316;
  }
  else {
    if (poly[1871].contains(lat, lng)) return 305;
    if (poly[1872].contains(lat, lng)) return 306;
    if (poly[1873].contains(lat, lng))
      return 307;
    else
      return 316;
  }
  else if (lat < -32.425390) if (lng < 149.227650) if (lat <
      -35.639889) if (lng < 147.537553) {
    if (poly[1874].contains(lat, lng))
      return 316;
    else
      return 314;
  } else {
    if (poly[1875].contains(lat, lng))
      return 316;
    else
      return 314;
  }
  else
    return 316;
  else {
    if (poly[1876].contains(lat, lng))
      return 314;
    else
      return 316;
  }
  else if (lng < 149.771656) {
    if (poly[1877].contains(lat, lng))
      return 316;
    else
      return 306;
  } else if (lat < -29.210890)
    return 316;
  else if (lng < 151.733756) {
    if (poly[1878].contains(lat, lng))
      return 316;
    else
      return 306;
  } else if (lat < -27.603641) if (lng < 152.714807) {
    if (poly[1879].contains(lat, lng))
      return 316;
    else
      return 306;
  } else {
    if (poly[1880].contains(lat, lng))
      return 306;
    else
      return 316;
  }
  else
    return 306;
  else if (lng < 168.226126) if (lat < -30.311389)
    return 313;
  else
    return 413;
  else
    return 390;
  else if (lng < 147.113234) if (lng < 123.277466) if (lng <
      63.715132) if (lng < 56.050791) if (lng < 41.054591)
    return 38;
  else if (lng < 52.838006)
    return 378;
  else
    return 388;
  else
    return 386;
  else
    return 315;
  else if (lng < 138.027371) if (lng < 123.682389)
    return 315;
  else if (lng < 129.001483) {
    if (poly[1881].contains(lat, lng))
      return 309;
    else
      return 315;
  } else if (lng < 135.982432)
    return 309;
  else if (lng < 137.036848)
    return 309;
  else {
    if (poly[1882].contains(lat, lng))
      return 306;
    else
      return 309;
  }
  else
    return 306;
  else if (lng < 153.414978) if (lng < 149.238945) if (lng < 148.419809)
    return 306;
  else {
    if (poly[1883].contains(lat, lng))
      return 312;
    else
      return 306;
  }
  else
    return 306;
  else if (lng < 166.058459)
    return 414;
  else if (lat < -22.139087)
    return 414;
  else if (lng < 170.449982) if (lat < -21.090611)
    return 414;
  else {
    if (poly[1884].contains(lat, lng))
      return 414;
    else
      return 395;
  }
  else
    return 398;
}

int _call29(num lat, num lng) {
  if (lat < 26.335228) if (lng < 89.060866) if (lat < 22.121441) if (lat <
      21.923331) {
    if (poly[1885].contains(lat, lng))
      return 232;
    else
      return 251;
  } else {
    if (poly[1886].contains(lat, lng))
      return 232;
    else
      return 251;
  }
  else if (lng < 84.228394)
    return 251;
  else if (lng < 86.644630)
    return 251;
  else if (lat < 24.228335) if (lng < 87.852748)
    return 251;
  else if (lat < 23.174888) {
    if (poly[1887].contains(lat, lng))
      return 232;
    else
      return 251;
  } else {
    if (poly[1888].contains(lat, lng))
      return 251;
    else
      return 232;
  }
  else if (lng < 87.852748)
    return 251;
  else if (lat < 25.281781) {
    if (poly[1889].contains(lat, lng))
      return 251;
    else
      return 232;
  } else if (lng < 88.456807) {
    if (poly[1890].contains(lat, lng))
      return 232;
    else
      return 251;
  } else if (lat < 25.808505) {
    if (poly[1891].contains(lat, lng))
      return 251;
    else
      return 232;
  } else {
    if (poly[1892].contains(lat, lng)) return 251;
    if (poly[1893].contains(lat, lng))
      return 251;
    else
      return 232;
  }
  else if (lat < 15.129296)
    return 292;
  else if (lng < 89.139934) if (lat < 22.048888) if (lat < 21.738194) {
    if (poly[1894].contains(lat, lng))
      return 251;
    else
      return 232;
  } else {
    if (poly[1895].contains(lat, lng))
      return 251;
    else
      return 232;
  }
  else if (lat < 22.208629) {
    if (poly[1896].contains(lat, lng))
      return 251;
    else
      return 232;
  } else {
    if (poly[1897].contains(lat, lng))
      return 251;
    else
      return 232;
  }
  else if (lat < 21.008819) {
    if (poly[1898].contains(lat, lng))
      return 232;
    else
      return 292;
  } else if (lng < 91.809154) if (lat < 23.864359) {
    if (poly[1899].contains(lat, lng))
      return 251;
    else
      return 232;
  } else if (lng < 90.474544) if (lat < 25.099794)
    return 232;
  else if (lng < 89.807239) {
    if (poly[1900].contains(lat, lng))
      return 251;
    else
      return 232;
  } else {
    if (poly[1901].contains(lat, lng))
      return 251;
    else
      return 232;
  }
  else {
    if (poly[1902].contains(lat, lng))
      return 232;
    else
      return 251;
  }
  else if (lat < 23.672023) if (lng < 93.143763) if (lat < 22.340421) if (lng <
      92.476458) {
    if (poly[1903].contains(lat, lng))
      return 292;
    else
      return 232;
  } else {
    if (poly[1904].contains(lat, lng)) return 232;
    if (poly[1905].contains(lat, lng))
      return 251;
    else
      return 292;
  }
  else {
    if (poly[1906].contains(lat, lng)) return 232;
    if (poly[1907].contains(lat, lng)) return 292;
    if (poly[1908].contains(lat, lng))
      return 292;
    else
      return 251;
  }
  else {
    if (poly[1909].contains(lat, lng)) return 251;
    if (poly[1910].contains(lat, lng)) return 251;
    if (poly[1911].contains(lat, lng)) return 251;
    if (poly[1912].contains(lat, lng))
      return 251;
    else
      return 292;
  }
  else if (lng < 93.143763) {
    if (poly[1913].contains(lat, lng)) return 232;
    if (poly[1914].contains(lat, lng)) return 232;
    if (poly[1915].contains(lat, lng)) return 232;
    if (poly[1916].contains(lat, lng))
      return 232;
    else
      return 251;
  } else {
    if (poly[1917].contains(lat, lng))
      return 292;
    else
      return 251;
  }
  else if (lng < 88.703311) if (lng < 84.049616) {
    if (poly[1918].contains(lat, lng))
      return 249;
    else
      return 251;
  } else if (lng < 86.376464) if (lng < 85.213040) {
    if (poly[1919].contains(lat, lng))
      return 251;
    else
      return 249;
  } else {
    if (poly[1920].contains(lat, lng)) return 251;
    if (poly[1921].contains(lat, lng))
      return 276;
    else
      return 249;
  }
  else if (lng < 87.539887) if (lat < 27.291236) {
    if (poly[1922].contains(lat, lng))
      return 251;
    else
      return 249;
  } else {
    if (poly[1923].contains(lat, lng))
      return 276;
    else
      return 249;
  }
  else if (lat < 27.291108) if (lng < 88.121599) {
    if (poly[1924].contains(lat, lng))
      return 249;
    else
      return 251;
  } else {
    if (poly[1925].contains(lat, lng)) return 232;
    if (poly[1926].contains(lat, lng)) return 249;
    if (poly[1927].contains(lat, lng))
      return 249;
    else
      return 251;
  }
  else if (lng < 88.121599) {
    if (poly[1928].contains(lat, lng)) return 251;
    if (poly[1929].contains(lat, lng)) return 251;
    if (poly[1930].contains(lat, lng))
      return 276;
    else
      return 249;
  } else {
    if (poly[1931].contains(lat, lng)) return 249;
    if (poly[1932].contains(lat, lng)) return 276;
    if (poly[1933].contains(lat, lng))
      return 276;
    else
      return 251;
  }
  else if (lat < 26.458975) if (lng < 88.746746) {
    if (poly[1934].contains(lat, lng))
      return 232;
    else
      return 251;
  } else {
    if (poly[1935].contains(lat, lng))
      return 232;
    else
      return 251;
  }
  else if (lng < 91.590842) if (lng < 90.147077) if (lat < 27.352981) {
    if (poly[1936].contains(lat, lng)) return 276;
    if (poly[1937].contains(lat, lng))
      return 283;
    else
      return 251;
  } else {
    if (poly[1938].contains(lat, lng)) return 251;
    if (poly[1939].contains(lat, lng))
      return 283;
    else
      return 276;
  }
  else if (lat < 27.352981) {
    if (poly[1940].contains(lat, lng))
      return 283;
    else
      return 251;
  } else {
    if (poly[1941].contains(lat, lng)) return 251;
    if (poly[1942].contains(lat, lng)) return 251;
    if (poly[1943].contains(lat, lng)) return 276;
    if (poly[1944].contains(lat, lng))
      return 276;
    else
      return 283;
  }
  else if (lng < 93.034608) if (lat < 27.352981) {
    if (poly[1945].contains(lat, lng))
      return 283;
    else
      return 251;
  } else if (lng < 92.312725) {
    if (poly[1946].contains(lat, lng)) return 276;
    if (poly[1947].contains(lat, lng)) return 283;
    if (poly[1948].contains(lat, lng)) return 283;
    if (poly[1949].contains(lat, lng))
      return 283;
    else
      return 251;
  } else {
    if (poly[1950].contains(lat, lng))
      return 276;
    else
      return 251;
  }
  else
    return 251;
}

int _call30(num lat, num lng) {
  if (lat < 18.448556) if (lng < 102.253288) if (lat < 8.292758)
    return 223;
  else if (lat < 18.219182) if (lng < 102.082795) {
    if (poly[1951].contains(lat, lng))
      return 289;
    else
      return 223;
  } else {
    if (poly[1952].contains(lat, lng))
      return 289;
    else
      return 223;
  }
  else {
    if (poly[1953].contains(lat, lng))
      return 223;
    else
      return 289;
  }
  else if (lng < 107.634999) if (lat < 15.319436) if (lat < 11.749251) if (lng <
      104.944143) {
    if (poly[1954].contains(lat, lng)) return 223;
    if (poly[1955].contains(lat, lng))
      return 239;
    else
      return 266;
  } else if (lat < 9.969693)
    return 239;
  else if (lng < 106.289571) if (lat < 10.859472) {
    if (poly[1956].contains(lat, lng)) return 266;
    if (poly[1957].contains(lat, lng)) return 266;
    if (poly[1958].contains(lat, lng))
      return 266;
    else
      return 239;
  } else {
    if (poly[1959].contains(lat, lng)) return 239;
    if (poly[1960].contains(lat, lng)) return 239;
    if (poly[1961].contains(lat, lng))
      return 239;
    else
      return 266;
  }
  else {
    if (poly[1962].contains(lat, lng))
      return 266;
    else
      return 239;
  }
  else if (lng < 104.944143) if (lat < 13.534344) {
    if (poly[1963].contains(lat, lng))
      return 266;
    else
      return 223;
  } else if (lng < 103.598716) {
    if (poly[1964].contains(lat, lng))
      return 266;
    else
      return 223;
  } else {
    if (poly[1965].contains(lat, lng))
      return 266;
    else
      return 223;
  }
  else if (lat < 13.534344) if (lng < 106.289571) {
    if (poly[1966].contains(lat, lng)) return 239;
    if (poly[1967].contains(lat, lng))
      return 239;
    else
      return 266;
  } else {
    if (poly[1968].contains(lat, lng))
      return 266;
    else
      return 239;
  }
  else if (lng < 106.289571) if (lat < 14.426890) if (lng < 105.616857) {
    if (poly[1969].contains(lat, lng)) return 266;
    if (poly[1970].contains(lat, lng))
      return 289;
    else
      return 223;
  } else {
    if (poly[1971].contains(lat, lng))
      return 289;
    else
      return 266;
  }
  else {
    if (poly[1972].contains(lat, lng)) return 223;
    if (poly[1973].contains(lat, lng))
      return 266;
    else
      return 289;
  }
  else if (lat < 14.426890) {
    if (poly[1974].contains(lat, lng)) return 239;
    if (poly[1975].contains(lat, lng)) return 289;
    if (poly[1976].contains(lat, lng))
      return 289;
    else
      return 266;
  } else if (lng < 106.962285) {
    if (poly[1977].contains(lat, lng))
      return 266;
    else
      return 289;
  } else {
    if (poly[1978].contains(lat, lng)) return 239;
    if (poly[1979].contains(lat, lng)) return 266;
    if (poly[1980].contains(lat, lng))
      return 266;
    else
      return 289;
  }
  else if (lng < 103.407830) {
    if (poly[1981].contains(lat, lng))
      return 289;
    else
      return 223;
  } else if (lng < 105.521414) if (lat < 16.883996) {
    if (poly[1982].contains(lat, lng)) return 289;
    if (poly[1983].contains(lat, lng))
      return 289;
    else
      return 223;
  } else {
    if (poly[1984].contains(lat, lng)) return 223;
    if (poly[1985].contains(lat, lng))
      return 239;
    else
      return 289;
  }
  else if (lat < 16.883996) if (lng < 106.578207) {
    if (poly[1986].contains(lat, lng)) return 223;
    if (poly[1987].contains(lat, lng)) return 223;
    if (poly[1988].contains(lat, lng))
      return 239;
    else
      return 289;
  } else {
    if (poly[1989].contains(lat, lng))
      return 289;
    else
      return 239;
  }
  else {
    if (poly[1990].contains(lat, lng))
      return 289;
    else
      return 239;
  }
  else if (lat < 17.561326)
    return 239;
  else
    return 276;
  else if (lng < 108.223287) if (lng < 101.357205) if (lat <
      19.605225) if (lat < 19.049923) {
    if (poly[1991].contains(lat, lng))
      return 223;
    else
      return 289;
  } else {
    if (poly[1992].contains(lat, lng))
      return 223;
    else
      return 289;
  }
  else if (lat < 21.355555) {
    if (poly[1993].contains(lat, lng))
      return 289;
    else
      return 276;
  } else {
    if (poly[1994].contains(lat, lng))
      return 289;
    else
      return 276;
  }
  else if (lat < 23.347772) if (lng < 104.790246) if (lat < 20.898164) if (lng <
      103.073725)
    return 289;
  else if (lat < 19.673360) {
    if (poly[1995].contains(lat, lng))
      return 239;
    else
      return 289;
  } else if (lng < 103.931986) {
    if (poly[1996].contains(lat, lng)) return 239;
    if (poly[1997].contains(lat, lng))
      return 239;
    else
      return 289;
  } else {
    if (poly[1998].contains(lat, lng))
      return 289;
    else
      return 239;
  }
  else if (lng < 103.073725) if (lat < 22.122968) if (lng < 102.215465) {
    if (poly[1999].contains(lat, lng))
      return 276;
    else
      return 289;
  } else {
    if (poly[2000].contains(lat, lng))
      return 239;
    else
      return 289;
  }
  else if (lng < 102.215465) {
    if (poly[2001].contains(lat, lng)) return 239;
    if (poly[2002].contains(lat, lng))
      return 289;
    else
      return 276;
  } else {
    if (poly[2003].contains(lat, lng)) return 276;
    if (poly[2004].contains(lat, lng))
      return 289;
    else
      return 239;
  }
  else if (lat < 22.122968) {
    if (poly[2005].contains(lat, lng)) return 289;
    if (poly[2006].contains(lat, lng)) return 289;
    if (poly[2007].contains(lat, lng))
      return 289;
    else
      return 239;
  } else {
    if (poly[2008].contains(lat, lng))
      return 276;
    else
      return 239;
  }
  else if (lat < 20.898164) {
    if (poly[2009].contains(lat, lng)) return 289;
    if (poly[2010].contains(lat, lng))
      return 289;
    else
      return 239;
  } else if (lng < 106.506766) {
    if (poly[2011].contains(lat, lng)) return 276;
    if (poly[2012].contains(lat, lng))
      return 276;
    else
      return 239;
  } else if (lat < 22.122968) {
    if (poly[2013].contains(lat, lng))
      return 276;
    else
      return 239;
  } else {
    if (poly[2014].contains(lat, lng))
      return 239;
    else
      return 276;
  }
  else {
    if (poly[2015].contains(lat, lng))
      return 239;
    else
      return 276;
  }
  else
    return 276;
}

int _call31(num lat, num lng) {
  if (lat < 6.726082) if (lng < 100.205056) if (lng < 100.004163) {
    if (poly[2016].contains(lat, lng))
      return 253;
    else
      return 223;
  } else {
    if (poly[2017].contains(lat, lng))
      return 253;
    else
      return 223;
  }
  else if (lng < 100.624518) {
    if (poly[2018].contains(lat, lng))
      return 253;
    else
      return 223;
  } else {
    if (poly[2019].contains(lat, lng))
      return 253;
    else
      return 223;
  }
  else if (lng < 97.395561) if (lat < 12.069914)
    return 292;
  else if (lat < 18.599493) {
    if (poly[2020].contains(lat, lng))
      return 223;
    else
      return 292;
  } else if (lat < 23.423240)
    return 292;
  else if (lat < 25.835113) {
    if (poly[2021].contains(lat, lng))
      return 251;
    else
      return 292;
  } else if (lng < 95.936967) {
    if (poly[2022].contains(lat, lng))
      return 292;
    else
      return 251;
  } else if (lat < 27.041050)
    return 292;
  else if (lng < 96.666264) {
    if (poly[2023].contains(lat, lng))
      return 292;
    else
      return 251;
  } else {
    if (poly[2024].contains(lat, lng)) return 276;
    if (poly[2025].contains(lat, lng))
      return 292;
    else
      return 251;
  }
  else if (lng < 101.170080) if (lat < 18.314450) if (lng < 99.664904) if (lat <
      11.823147) {
    if (poly[2026].contains(lat, lng))
      return 292;
    else
      return 223;
  } else if (lng < 97.548732) if (lat < 15.337759)
    return 292;
  else {
    if (poly[2027].contains(lat, lng))
      return 223;
    else
      return 292;
  }
  else if (lat < 15.068799) if (lat < 13.445973) {
    if (poly[2028].contains(lat, lng))
      return 223;
    else
      return 292;
  } else {
    if (poly[2029].contains(lat, lng))
      return 223;
    else
      return 292;
  }
  else if (lat < 16.691624) if (lng < 98.606818) {
    if (poly[2030].contains(lat, lng)) return 223;
    if (poly[2031].contains(lat, lng)) return 223;
    if (poly[2032].contains(lat, lng))
      return 223;
    else
      return 292;
  } else {
    if (poly[2033].contains(lat, lng)) return 292;
    if (poly[2034].contains(lat, lng))
      return 292;
    else
      return 223;
  }
  else if (lng < 98.606818) if (lat < 17.503037) {
    if (poly[2035].contains(lat, lng))
      return 223;
    else
      return 292;
  } else {
    if (poly[2036].contains(lat, lng))
      return 292;
    else
      return 223;
  }
  else
    return 223;
  else if (lat < 10.556464)
    return 223;
  else if (lat < 18.050637) {
    if (poly[2037].contains(lat, lng))
      return 289;
    else
      return 223;
  } else if (lat < 18.149411) {
    if (poly[2038].contains(lat, lng))
      return 289;
    else
      return 223;
  } else {
    if (poly[2039].contains(lat, lng))
      return 289;
    else
      return 223;
  }
  else if (lat < 18.554059) if (lng < 97.622409) if (lat < 18.487057) if (lng <
      97.461327) {
    if (poly[2040].contains(lat, lng))
      return 292;
    else
      return 223;
  } else {
    if (poly[2041].contains(lat, lng))
      return 292;
    else
      return 223;
  }
  else {
    if (poly[2042].contains(lat, lng))
      return 292;
    else
      return 223;
  }
  else {
    if (poly[2043].contains(lat, lng))
      return 289;
    else
      return 223;
  }
  else if (lng < 97.410440) {
    if (poly[2044].contains(lat, lng))
      return 223;
    else
      return 292;
  } else if (lat < 23.400523) if (lat < 20.977291) if (lng <
      99.290260) if (lat < 19.765675) {
    if (poly[2045].contains(lat, lng)) return 292;
    if (poly[2046].contains(lat, lng)) return 292;
    if (poly[2047].contains(lat, lng)) return 292;
    if (poly[2048].contains(lat, lng))
      return 292;
    else
      return 223;
  } else {
    if (poly[2049].contains(lat, lng)) return 223;
    if (poly[2050].contains(lat, lng)) return 223;
    if (poly[2051].contains(lat, lng)) return 223;
    if (poly[2052].contains(lat, lng))
      return 223;
    else
      return 292;
  }
  else if (lat < 19.765675) {
    if (poly[2053].contains(lat, lng))
      return 289;
    else
      return 223;
  } else if (lng < 100.230170) {
    if (poly[2054].contains(lat, lng)) return 289;
    if (poly[2055].contains(lat, lng))
      return 292;
    else
      return 223;
  } else {
    if (poly[2056].contains(lat, lng)) return 223;
    if (poly[2057].contains(lat, lng))
      return 292;
    else
      return 289;
  }
  else if (lng < 99.290260) {
    if (poly[2058].contains(lat, lng)) return 276;
    if (poly[2059].contains(lat, lng))
      return 276;
    else
      return 292;
  } else if (lat < 22.188907) if (lng < 100.230170) {
    if (poly[2060].contains(lat, lng))
      return 276;
    else
      return 292;
  } else {
    if (poly[2061].contains(lat, lng)) return 276;
    if (poly[2062].contains(lat, lng)) return 276;
    if (poly[2063].contains(lat, lng))
      return 289;
    else
      return 292;
  }
  else {
    if (poly[2064].contains(lat, lng))
      return 292;
    else
      return 276;
  }
  else if (lat < 25.823755) if (lng < 99.290260) if (lat < 24.612139) if (lng <
      98.350350) {
    if (poly[2065].contains(lat, lng))
      return 276;
    else
      return 292;
  } else {
    if (poly[2066].contains(lat, lng))
      return 292;
    else
      return 276;
  }
  else {
    if (poly[2067].contains(lat, lng)) return 292;
    if (poly[2068].contains(lat, lng))
      return 292;
    else
      return 276;
  }
  else
    return 276;
  else if (lng < 99.290260) if (lat < 27.035371) {
    if (poly[2069].contains(lat, lng))
      return 292;
    else
      return 276;
  } else {
    if (poly[2070].contains(lat, lng))
      return 292;
    else
      return 276;
  }
  else
    return 276;
  else
    return _call30(lat, lng);
}

int _call32(num lat, num lng) {
  if (lat < 37.380932) if (lng < 42.791612) if (lat < 31.979666) {
    if (poly[2071].contains(lat, lng))
      return 220;
    else
      return 272;
  } else if (lat < 34.680299) {
    if (poly[2072].contains(lat, lng))
      return 231;
    else
      return 220;
  } else {
    if (poly[2073].contains(lat, lng)) return 220;
    if (poly[2074].contains(lat, lng))
      return 336;
    else
      return 231;
  }
  else if (lat < 32.813960) if (lng < 46.900321) {
    if (poly[2075].contains(lat, lng)) return 255;
    if (poly[2076].contains(lat, lng)) return 272;
    if (poly[2077].contains(lat, lng))
      return 282;
    else
      return 220;
  } else if (lat < 30.530473) if (lng < 48.954676) if (lat < 29.388730) {
    if (poly[2078].contains(lat, lng))
      return 272;
    else
      return 255;
  } else {
    if (poly[2079].contains(lat, lng)) return 255;
    if (poly[2080].contains(lat, lng))
      return 282;
    else
      return 220;
  }
  else {
    if (poly[2081].contains(lat, lng)) return 255;
    if (poly[2082].contains(lat, lng))
      return 272;
    else
      return 282;
  }
  else {
    if (poly[2083].contains(lat, lng))
      return 220;
    else
      return 282;
  }
  else if (lng < 46.900321) if (lat < 35.097446) if (lng < 44.845967)
    return 220;
  else if (lat < 33.955703) {
    if (poly[2084].contains(lat, lng))
      return 282;
    else
      return 220;
  } else {
    if (poly[2085].contains(lat, lng))
      return 282;
    else
      return 220;
  }
  else if (lng < 44.845967) {
    if (poly[2086].contains(lat, lng)) return 282;
    if (poly[2087].contains(lat, lng)) return 282;
    if (poly[2088].contains(lat, lng))
      return 336;
    else
      return 220;
  } else if (lat < 36.239189) {
    if (poly[2089].contains(lat, lng))
      return 282;
    else
      return 220;
  } else {
    if (poly[2090].contains(lat, lng)) return 220;
    if (poly[2091].contains(lat, lng))
      return 220;
    else
      return 282;
  }
  else
    return 282;
  else if (lng < 50.322893) if (lat < 40.669330) if (lng < 45.275237) if (lng <
      42.751408)
    return 336;
  else if (lat < 39.025131) {
    if (poly[2092].contains(lat, lng))
      return 336;
    else
      return 282;
  } else if (lng < 44.013323) {
    if (poly[2093].contains(lat, lng))
      return 294;
    else
      return 336;
  } else if (lat < 39.847231) if (lng < 44.644280) {
    if (poly[2094].contains(lat, lng)) return 282;
    if (poly[2095].contains(lat, lng))
      return 294;
    else
      return 336;
  } else {
    if (poly[2096].contains(lat, lng)) return 282;
    if (poly[2097].contains(lat, lng)) return 294;
    if (poly[2098].contains(lat, lng))
      return 336;
    else
      return 222;
  }
  else {
    if (poly[2099].contains(lat, lng))
      return 336;
    else
      return 294;
  }
  else if (lng < 47.799065) if (lat < 39.025131) {
    if (poly[2100].contains(lat, lng)) return 222;
    if (poly[2101].contains(lat, lng)) return 222;
    if (poly[2102].contains(lat, lng))
      return 294;
    else
      return 282;
  } else if (lng < 46.537151) if (lat < 39.847231) if (lng < 45.906194) {
    if (poly[2103].contains(lat, lng)) return 282;
    if (poly[2104].contains(lat, lng))
      return 294;
    else
      return 222;
  } else {
    if (poly[2105].contains(lat, lng))
      return 294;
    else
      return 222;
  }
  else {
    if (poly[2106].contains(lat, lng))
      return 222;
    else
      return 294;
  }
  else {
    if (poly[2107].contains(lat, lng)) return 282;
    if (poly[2108].contains(lat, lng)) return 294;
    if (poly[2109].contains(lat, lng)) return 294;
    if (poly[2110].contains(lat, lng))
      return 294;
    else
      return 222;
  }
  else {
    if (poly[2111].contains(lat, lng))
      return 222;
    else
      return 282;
  }
  else if (lng < 45.148935) if (lng < 42.688258) if (lat < 42.127880) {
    if (poly[2112].contains(lat, lng))
      return 281;
    else
      return 336;
  } else {
    if (poly[2113].contains(lat, lng))
      return 350;
    else
      return 281;
  }
  else if (lat < 42.127880) if (lng < 43.918596) {
    if (poly[2114].contains(lat, lng)) return 294;
    if (poly[2115].contains(lat, lng))
      return 336;
    else
      return 281;
  } else {
    if (poly[2116].contains(lat, lng)) return 222;
    if (poly[2117].contains(lat, lng)) return 222;
    if (poly[2118].contains(lat, lng)) return 222;
    if (poly[2119].contains(lat, lng))
      return 281;
    else
      return 294;
  }
  else {
    if (poly[2120].contains(lat, lng))
      return 350;
    else
      return 281;
  }
  else if (lng < 47.609613) if (lat < 42.127880) if (lng < 46.379274) if (lat <
      41.398605) {
    if (poly[2121].contains(lat, lng)) return 281;
    if (poly[2122].contains(lat, lng)) return 281;
    if (poly[2123].contains(lat, lng)) return 294;
    if (poly[2124].contains(lat, lng))
      return 294;
    else
      return 222;
  } else {
    if (poly[2125].contains(lat, lng)) return 222;
    if (poly[2126].contains(lat, lng)) return 222;
    if (poly[2127].contains(lat, lng))
      return 350;
    else
      return 281;
  }
  else if (lat < 41.398605) {
    if (poly[2128].contains(lat, lng)) return 281;
    if (poly[2129].contains(lat, lng))
      return 350;
    else
      return 222;
  } else {
    if (poly[2130].contains(lat, lng)) return 281;
    if (poly[2131].contains(lat, lng)) return 281;
    if (poly[2132].contains(lat, lng))
      return 350;
    else
      return 222;
  }
  else {
    if (poly[2133].contains(lat, lng))
      return 281;
    else
      return 350;
  }
  else {
    if (poly[2134].contains(lat, lng))
      return 222;
    else
      return 350;
  }
  else if (lat < 42.071394)
    return 216;
  else
    return 222;
}

int _call33(num lat, num lng) {
  if (lat < 38.285000) if (lat < 34.044171) if (lng < 60.483127)
    return 282;
  else if (lng < 65.220176) if (lat < 31.145579) if (lng < 62.851652) {
    if (poly[2135].contains(lat, lng)) return 246;
    if (poly[2136].contains(lat, lng))
      return 248;
    else
      return 282;
  } else {
    if (poly[2137].contains(lat, lng))
      return 248;
    else
      return 246;
  }
  else {
    if (poly[2138].contains(lat, lng))
      return 282;
    else
      return 246;
  }
  else if (lat < 31.145579) {
    if (poly[2139].contains(lat, lng))
      return 246;
    else
      return 248;
  } else if (lng < 67.588701) {
    if (poly[2140].contains(lat, lng)) return 248;
    if (poly[2141].contains(lat, lng))
      return 248;
    else
      return 246;
  } else if (lat < 32.594875) {
    if (poly[2142].contains(lat, lng)) return 246;
    if (poly[2143].contains(lat, lng))
      return 246;
    else
      return 248;
  } else {
    if (poly[2144].contains(lat, lng)) return 248;
    if (poly[2145].contains(lat, lng))
      return 248;
    else
      return 246;
  }
  else if (lng < 56.756389) {
    if (poly[2146].contains(lat, lng))
      return 218;
    else
      return 282;
  } else if (lng < 63.356807) if (lng < 60.056598) {
    if (poly[2147].contains(lat, lng))
      return 218;
    else
      return 282;
  } else if (lat < 36.164585) if (lng < 61.706702) if (lat < 35.104378) {
    if (poly[2148].contains(lat, lng))
      return 282;
    else
      return 246;
  } else {
    if (poly[2149].contains(lat, lng)) return 218;
    if (poly[2150].contains(lat, lng))
      return 246;
    else
      return 282;
  }
  else {
    if (poly[2151].contains(lat, lng))
      return 246;
    else
      return 218;
  }
  else {
    if (poly[2152].contains(lat, lng))
      return 282;
    else
      return 218;
  }
  else if (lng < 66.657016) if (lat < 36.164585) {
    if (poly[2153].contains(lat, lng))
      return 218;
    else
      return 246;
  } else if (lng < 65.006912) {
    if (poly[2154].contains(lat, lng))
      return 246;
    else
      return 218;
  } else {
    if (poly[2155].contains(lat, lng)) return 246;
    if (poly[2156].contains(lat, lng)) return 273;
    if (poly[2157].contains(lat, lng))
      return 273;
    else
      return 218;
  }
  else if (lat < 36.164585)
    return 246;
  else if (lng < 68.307120) if (lat < 37.224793) {
    if (poly[2158].contains(lat, lng)) return 235;
    if (poly[2159].contains(lat, lng)) return 273;
    if (poly[2160].contains(lat, lng)) return 273;
    if (poly[2161].contains(lat, lng))
      return 273;
    else
      return 246;
  } else {
    if (poly[2162].contains(lat, lng)) return 218;
    if (poly[2163].contains(lat, lng)) return 235;
    if (poly[2164].contains(lat, lng)) return 235;
    if (poly[2165].contains(lat, lng)) return 246;
    if (poly[2166].contains(lat, lng)) return 246;
    if (poly[2167].contains(lat, lng))
      return 246;
    else
      return 273;
  }
  else {
    if (poly[2168].contains(lat, lng)) return 246;
    if (poly[2169].contains(lat, lng))
      return 273;
    else
      return 235;
  }
  else if (lng < 65.572439) if (lng < 62.755236) if (lng < 56.882133) {
    if (poly[2170].contains(lat, lng)) return 216;
    if (poly[2171].contains(lat, lng))
      return 273;
    else
      return 218;
  } else if (lng < 59.818685) if (lat < 40.935715)
    return 218;
  else if (lng < 58.350409) {
    if (poly[2172].contains(lat, lng))
      return 273;
    else
      return 218;
  } else {
    if (poly[2173].contains(lat, lng)) return 273;
    if (poly[2174].contains(lat, lng))
      return 273;
    else
      return 218;
  }
  else if (lat < 40.935715) {
    if (poly[2175].contains(lat, lng))
      return 273;
    else
      return 218;
  } else {
    if (poly[2176].contains(lat, lng)) return 218;
    if (poly[2177].contains(lat, lng))
      return 271;
    else
      return 273;
  }
  else if (lat < 39.806350) {
    if (poly[2178].contains(lat, lng))
      return 273;
    else
      return 218;
  } else if (lng < 64.572848) {
    if (poly[2179].contains(lat, lng))
      return 271;
    else
      return 273;
  } else {
    if (poly[2180].contains(lat, lng))
      return 271;
    else
      return 273;
  }
  else if (lat < 41.733579) if (lng < 67.764832) if (lat < 40.009289) {
    if (poly[2181].contains(lat, lng)) return 235;
    if (poly[2182].contains(lat, lng))
      return 280;
    else
      return 273;
  } else {
    if (poly[2183].contains(lat, lng)) return 213;
    if (poly[2184].contains(lat, lng))
      return 273;
    else
      return 280;
  }
  else if (lat < 40.009289) if (lng < 68.861028) if (lat < 39.147145) {
    if (poly[2185].contains(lat, lng))
      return 235;
    else
      return 273;
  } else {
    if (poly[2186].contains(lat, lng))
      return 235;
    else
      return 280;
  }
  else {
    if (poly[2187].contains(lat, lng)) return 226;
    if (poly[2188].contains(lat, lng))
      return 280;
    else
      return 235;
  }
  else if (lng < 68.861028) if (lat < 40.871434) {
    if (poly[2189].contains(lat, lng)) return 213;
    if (poly[2190].contains(lat, lng)) return 235;
    if (poly[2191].contains(lat, lng))
      return 235;
    else
      return 280;
  } else {
    if (poly[2192].contains(lat, lng)) return 280;
    if (poly[2193].contains(lat, lng))
      return 280;
    else
      return 213;
  }
  else if (lat < 40.871434) if (lng < 69.409127) {
    if (poly[2194].contains(lat, lng)) return 226;
    if (poly[2195].contains(lat, lng)) return 280;
    if (poly[2196].contains(lat, lng)) return 280;
    if (poly[2197].contains(lat, lng))
      return 280;
    else
      return 235;
  } else {
    if (poly[2198].contains(lat, lng)) return 226;
    if (poly[2199].contains(lat, lng))
      return 280;
    else
      return 235;
  }
  else {
    if (poly[2200].contains(lat, lng))
      return 213;
    else
      return 280;
  }
  else {
    if (poly[2201].contains(lat, lng)) return 271;
    if (poly[2202].contains(lat, lng))
      return 273;
    else
      return 213;
  }
}

int _call34(num lat, num lng) {
  if (lng < 49.288299) if (lat < 52.387711) if (lng < 45.089563) if (lng <
      43.501662) if (lng < 43.124133) {
    if (poly[2203].contains(lat, lng))
      return 360;
    else
      return 350;
  } else {
    if (poly[2204].contains(lat, lng))
      return 350;
    else
      return 360;
  }
  else if (lng < 43.878043) {
    if (poly[2205].contains(lat, lng))
      return 350;
    else
      return 360;
  } else if (lng < 44.388141) {
    if (poly[2206].contains(lat, lng))
      return 350;
    else
      return 360;
  } else {
    if (poly[2207].contains(lat, lng))
      return 350;
    else
      return 360;
  }
  else if (lng < 45.307564) if (lng < 45.260551) {
    if (poly[2208].contains(lat, lng))
      return 350;
    else
      return 360;
  } else {
    if (poly[2209].contains(lat, lng))
      return 350;
    else
      return 360;
  }
  else if (lng < 45.360905) {
    if (poly[2210].contains(lat, lng))
      return 350;
    else
      return 360;
  } else if (lng < 45.430033) {
    if (poly[2211].contains(lat, lng))
      return 350;
    else
      return 360;
  } else {
    if (poly[2212].contains(lat, lng))
      return 357;
    else
      return 360;
  }
  else if (lng < 45.273475) if (lng < 43.925487) if (lng < 43.344869) {
    if (poly[2213].contains(lat, lng))
      return 360;
    else
      return 350;
  } else if (lng < 43.848071) {
    if (poly[2214].contains(lat, lng))
      return 360;
    else
      return 350;
  } else {
    if (poly[2215].contains(lat, lng))
      return 360;
    else
      return 350;
  }
  else if (lng < 44.892499) {
    if (poly[2216].contains(lat, lng))
      return 360;
    else
      return 350;
  } else if (lng < 45.217066) {
    if (poly[2217].contains(lat, lng))
      return 360;
    else
      return 350;
  } else {
    if (poly[2218].contains(lat, lng))
      return 360;
    else
      return 350;
  }
  else if (lng < 45.426670) if (lng < 45.355728) {
    if (poly[2219].contains(lat, lng))
      return 360;
    else
      return 350;
  } else {
    if (poly[2220].contains(lat, lng))
      return 360;
    else
      return 350;
  }
  else if (lng < 47.357484) if (lat < 53.639578) if (lng < 46.392077) {
    if (poly[2221].contains(lat, lng))
      return 360;
    else
      return 350;
  } else if (lat < 53.013644) {
    if (poly[2222].contains(lat, lng)) return 350;
    if (poly[2223].contains(lat, lng))
      return 367;
    else
      return 360;
  } else {
    if (poly[2224].contains(lat, lng))
      return 367;
    else
      return 350;
  }
  else if (lng < 46.392077) {
    if (poly[2225].contains(lat, lng)) return 367;
    if (poly[2226].contains(lat, lng))
      return 367;
    else
      return 350;
  } else if (lat < 54.265512) {
    if (poly[2227].contains(lat, lng))
      return 367;
    else
      return 350;
  } else {
    if (poly[2228].contains(lat, lng)) return 367;
    if (poly[2229].contains(lat, lng))
      return 367;
    else
      return 350;
  }
  else if (lat < 53.639578) if (lng < 48.322892) if (lat < 53.013644) {
    if (poly[2230].contains(lat, lng)) return 357;
    if (poly[2231].contains(lat, lng)) return 357;
    if (poly[2232].contains(lat, lng))
      return 360;
    else
      return 367;
  } else {
    if (poly[2233].contains(lat, lng))
      return 357;
    else
      return 367;
  }
  else {
    if (poly[2234].contains(lat, lng)) return 360;
    if (poly[2235].contains(lat, lng)) return 360;
    if (poly[2236].contains(lat, lng)) return 367;
    if (poly[2237].contains(lat, lng)) return 367;
    if (poly[2238].contains(lat, lng))
      return 367;
    else
      return 357;
  }
  else if (lng < 48.322892) {
    if (poly[2239].contains(lat, lng))
      return 350;
    else
      return 367;
  } else {
    if (poly[2240].contains(lat, lng)) return 350;
    if (poly[2241].contains(lat, lng)) return 357;
    if (poly[2242].contains(lat, lng))
      return 357;
    else
      return 367;
  }
  else if (lat < 52.486204) if (lng < 53.016204) if (lng < 51.152252) if (lng <
      50.220275) {
    if (poly[2243].contains(lat, lng)) return 265;
    if (poly[2244].contains(lat, lng)) return 357;
    if (poly[2245].contains(lat, lng))
      return 357;
    else
      return 360;
  } else if (lat < 51.866906) {
    if (poly[2246].contains(lat, lng)) return 293;
    if (poly[2247].contains(lat, lng)) return 357;
    if (poly[2248].contains(lat, lng))
      return 360;
    else
      return 265;
  } else {
    if (poly[2249].contains(lat, lng)) return 293;
    if (poly[2250].contains(lat, lng)) return 360;
    if (poly[2251].contains(lat, lng))
      return 360;
    else
      return 357;
  }
  else if (lng < 52.084228) {
    if (poly[2252].contains(lat, lng)) return 265;
    if (poly[2253].contains(lat, lng))
      return 357;
    else
      return 293;
  } else {
    if (poly[2254].contains(lat, lng))
      return 293;
    else
      return 265;
  }
  else {
    if (poly[2255].contains(lat, lng))
      return 293;
    else
      return 265;
  }
  else if (lng < 50.243401) if (lat < 54.219528) {
    if (poly[2256].contains(lat, lng))
      return 367;
    else
      return 357;
  } else {
    if (poly[2257].contains(lat, lng)) return 350;
    if (poly[2258].contains(lat, lng))
      return 357;
    else
      return 367;
  }
  else if (lng < 53.493755) if (lng < 51.868578) {
    if (poly[2259].contains(lat, lng)) return 293;
    if (poly[2260].contains(lat, lng))
      return 350;
    else
      return 357;
  } else if (lat < 53.688825) {
    if (poly[2261].contains(lat, lng))
      return 293;
    else
      return 357;
  } else if (lng < 52.681167) {
    if (poly[2262].contains(lat, lng)) return 293;
    if (poly[2263].contains(lat, lng))
      return 350;
    else
      return 357;
  } else {
    if (poly[2264].contains(lat, lng)) return 293;
    if (poly[2265].contains(lat, lng))
      return 293;
    else
      return 350;
  }
  else {
    if (poly[2266].contains(lat, lng)) return 350;
    if (poly[2267].contains(lat, lng))
      return 350;
    else
      return 293;
  }
}

int _call35(num lat, num lng) {
  if (lng < 50.871335) if (lat < 61.067393) if (lat < 56.256925) {
    if (poly[2268].contains(lat, lng))
      return 340;
    else
      return 350;
  } else if (lng < 45.549458)
    return 350;
  else if (lng < 48.210396) if (lat < 58.662159) if (lng < 46.879927) {
    if (poly[2269].contains(lat, lng)) return 340;
    if (poly[2270].contains(lat, lng))
      return 340;
    else
      return 350;
  } else if (lat < 57.459542) {
    if (poly[2271].contains(lat, lng))
      return 350;
    else
      return 340;
  } else {
    if (poly[2272].contains(lat, lng)) return 350;
    if (poly[2273].contains(lat, lng))
      return 350;
    else
      return 340;
  }
  else if (lng < 46.879927) {
    if (poly[2274].contains(lat, lng)) return 340;
    if (poly[2275].contains(lat, lng))
      return 340;
    else
      return 350;
  } else if (lat < 59.864776) {
    if (poly[2276].contains(lat, lng))
      return 350;
    else
      return 340;
  } else {
    if (poly[2277].contains(lat, lng))
      return 340;
    else
      return 350;
  }
  else if (lat < 58.662159) if (lng < 49.540866) {
    if (poly[2278].contains(lat, lng))
      return 350;
    else
      return 340;
  } else {
    if (poly[2279].contains(lat, lng))
      return 350;
    else
      return 340;
  }
  else {
    if (poly[2280].contains(lat, lng))
      return 340;
    else
      return 350;
  }
  else
    return 350;
  else if (lat < 58.545842) if (lng < 53.098981) if (lng < 50.917326) if (lat <
      56.201553) {
    if (poly[2281].contains(lat, lng))
      return 350;
    else
      return 340;
  } else if (lat < 56.333988) {
    if (poly[2282].contains(lat, lng))
      return 350;
    else
      return 340;
  } else {
    if (poly[2283].contains(lat, lng))
      return 350;
    else
      return 340;
  }
  else if (lat < 56.994006) if (lng < 52.008154) if (lat < 56.218088) if (lng <
      51.462740) {
    if (poly[2284].contains(lat, lng)) return 340;
    if (poly[2285].contains(lat, lng)) return 357;
    if (poly[2286].contains(lat, lng)) return 357;
    if (poly[2287].contains(lat, lng))
      return 357;
    else
      return 350;
  } else {
    if (poly[2288].contains(lat, lng)) return 340;
    if (poly[2289].contains(lat, lng)) return 350;
    if (poly[2290].contains(lat, lng))
      return 350;
    else
      return 357;
  }
  else {
    if (poly[2291].contains(lat, lng))
      return 357;
    else
      return 340;
  }
  else if (lat < 56.218088) {
    if (poly[2292].contains(lat, lng)) return 350;
    if (poly[2293].contains(lat, lng))
      return 350;
    else
      return 357;
  } else {
    if (poly[2294].contains(lat, lng))
      return 350;
    else
      return 357;
  }
  else {
    if (poly[2295].contains(lat, lng))
      return 357;
    else
      return 340;
  }
  else if (lat < 56.276134) if (lng < 61.528103) if (lng < 57.313542) if (lng <
      55.206261) if (lng < 54.152621) if (lng < 53.625801) {
    if (poly[2296].contains(lat, lng))
      return 350;
    else
      return 357;
  } else {
    if (poly[2297].contains(lat, lng)) return 350;
    if (poly[2298].contains(lat, lng))
      return 357;
    else
      return 293;
  }
  else {
    if (poly[2299].contains(lat, lng)) return 350;
    if (poly[2300].contains(lat, lng))
      return 357;
    else
      return 293;
  }
  else
    return 293;
  else
    return 293;
  else
    return 293;
  else if (lng < 61.528103) if (lng < 57.313542) if (lng < 55.206261) if (lat <
      57.410988) {
    if (poly[2301].contains(lat, lng)) return 293;
    if (poly[2302].contains(lat, lng))
      return 350;
    else
      return 357;
  } else {
    if (poly[2303].contains(lat, lng)) return 293;
    if (poly[2304].contains(lat, lng))
      return 340;
    else
      return 357;
  }
  else
    return 293;
  else
    return 293;
  else
    return 293;
  else if (lng < 60.414280) if (lat < 66.074501) if (lng < 55.642808) if (lat <
      62.310171) if (lng < 53.257071) {
    if (poly[2305].contains(lat, lng)) return 293;
    if (poly[2306].contains(lat, lng)) return 293;
    if (poly[2307].contains(lat, lng))
      return 340;
    else
      return 350;
  } else {
    if (poly[2308].contains(lat, lng)) return 340;
    if (poly[2309].contains(lat, lng)) return 340;
    if (poly[2310].contains(lat, lng))
      return 350;
    else
      return 293;
  }
  else
    return 350;
  else if (lat < 62.310171) {
    if (poly[2311].contains(lat, lng))
      return 350;
    else
      return 293;
  } else {
    if (poly[2312].contains(lat, lng))
      return 293;
    else
      return 350;
  }
  else
    return 350;
  else if (lat < 66.074501) {
    if (poly[2313].contains(lat, lng))
      return 350;
    else
      return 293;
  } else if (lng < 65.185752) {
    if (poly[2314].contains(lat, lng)) return 293;
    if (poly[2315].contains(lat, lng)) return 293;
    if (poly[2316].contains(lat, lng))
      return 293;
    else
      return 350;
  } else {
    if (poly[2317].contains(lat, lng)) return 350;
    if (poly[2318].contains(lat, lng))
      return 350;
    else
      return 293;
  }
}

int _call36(num lat, num lng) {
  if (lng < 56.744109) if (lat < 51.247608) if (lng < 50.034781) if (lat <
      45.187282) if (lng < 48.975853)
    return 216;
  else
    return 350;
  else if (lng < 45.131181) if (lat < 48.217445) {
    if (poly[2319].contains(lat, lng)) return 373;
    if (poly[2320].contains(lat, lng))
      return 373;
    else
      return 350;
  } else if (lng < 42.679380) if (lat < 49.732527) {
    if (poly[2321].contains(lat, lng)) return 373;
    if (poly[2322].contains(lat, lng)) return 373;
    if (poly[2323].contains(lat, lng))
      return 373;
    else
      return 350;
  } else {
    if (poly[2324].contains(lat, lng))
      return 373;
    else
      return 350;
  }
  else if (lat < 49.732527) {
    if (poly[2325].contains(lat, lng)) return 320;
    if (poly[2326].contains(lat, lng)) return 350;
    if (poly[2327].contains(lat, lng)) return 350;
    if (poly[2328].contains(lat, lng)) return 350;
    if (poly[2329].contains(lat, lng))
      return 350;
    else
      return 373;
  } else {
    if (poly[2330].contains(lat, lng)) return 350;
    if (poly[2331].contains(lat, lng)) return 350;
    if (poly[2332].contains(lat, lng))
      return 360;
    else
      return 373;
  }
  else if (lat < 48.217445) if (lng < 47.582981) if (lat < 46.702364) {
    if (poly[2333].contains(lat, lng))
      return 320;
    else
      return 350;
  } else {
    if (poly[2334].contains(lat, lng)) return 219;
    if (poly[2335].contains(lat, lng)) return 265;
    if (poly[2336].contains(lat, lng))
      return 350;
    else
      return 320;
  }
  else if (lat < 46.702364) {
    if (poly[2337].contains(lat, lng)) return 219;
    if (poly[2338].contains(lat, lng))
      return 350;
    else
      return 320;
  } else {
    if (poly[2339].contains(lat, lng)) return 265;
    if (poly[2340].contains(lat, lng))
      return 320;
    else
      return 219;
  }
  else if (lng < 47.582981) if (lat < 49.732527) if (lng < 46.357081) {
    if (poly[2341].contains(lat, lng)) return 350;
    if (poly[2342].contains(lat, lng))
      return 373;
    else
      return 320;
  } else {
    if (poly[2343].contains(lat, lng)) return 219;
    if (poly[2344].contains(lat, lng)) return 320;
    if (poly[2345].contains(lat, lng))
      return 373;
    else
      return 265;
  }
  else if (lng < 46.357081) {
    if (poly[2346].contains(lat, lng))
      return 373;
    else
      return 360;
  } else {
    if (poly[2347].contains(lat, lng)) return 265;
    if (poly[2348].contains(lat, lng))
      return 360;
    else
      return 373;
  }
  else {
    if (poly[2349].contains(lat, lng))
      return 360;
    else
      return 265;
  }
  else if (lat < 45.170128) {
    if (poly[2350].contains(lat, lng))
      return 273;
    else
      return 216;
  } else if (lat < 46.520131) if (lng < 50.438264) if (lat < 45.694299)
    return 216;
  else
    return 219;
  else if (lng < 55.487919) {
    if (poly[2351].contains(lat, lng))
      return 219;
    else
      return 216;
  } else {
    if (poly[2352].contains(lat, lng)) return 217;
    if (poly[2353].contains(lat, lng))
      return 219;
    else
      return 216;
  }
  else if (lng < 53.389445) {
    if (poly[2354].contains(lat, lng))
      return 265;
    else
      return 219;
  } else if (lat < 48.883870) {
    if (poly[2355].contains(lat, lng))
      return 219;
    else
      return 217;
  } else if (lng < 55.066777) if (lat < 50.065739) {
    if (poly[2356].contains(lat, lng)) return 219;
    if (poly[2357].contains(lat, lng)) return 265;
    if (poly[2358].contains(lat, lng))
      return 265;
    else
      return 217;
  } else if (lng < 54.228111) {
    if (poly[2359].contains(lat, lng))
      return 293;
    else
      return 265;
  } else {
    if (poly[2360].contains(lat, lng)) return 217;
    if (poly[2361].contains(lat, lng))
      return 265;
    else
      return 293;
  }
  else {
    if (poly[2362].contains(lat, lng))
      return 293;
    else
      return 217;
  }
  else
    return _call34(lat, lng);
  else if (lat < 47.827727) if (lng < 61.924863) {
    if (poly[2363].contains(lat, lng)) return 217;
    if (poly[2364].contains(lat, lng))
      return 273;
    else
      return 271;
  } else if (lng < 65.941044) {
    if (poly[2365].contains(lat, lng)) return 213;
    if (poly[2366].contains(lat, lng)) return 217;
    if (poly[2367].contains(lat, lng)) return 273;
    if (poly[2368].contains(lat, lng))
      return 273;
    else
      return 271;
  } else {
    if (poly[2369].contains(lat, lng))
      return 271;
    else
      return 213;
  }
  else if (lng < 63.350667) if (lat < 51.359587) if (lng < 60.047388) if (lat <
      49.593657)
    return 217;
  else if (lng < 58.395748) {
    if (poly[2370].contains(lat, lng)) return 293;
    if (poly[2371].contains(lat, lng))
      return 293;
    else
      return 217;
  } else {
    if (poly[2372].contains(lat, lng))
      return 293;
    else
      return 217;
  }
  else if (lat < 49.593657) {
    if (poly[2373].contains(lat, lng))
      return 270;
    else
      return 217;
  } else if (lng < 61.699027) {
    if (poly[2374].contains(lat, lng)) return 217;
    if (poly[2375].contains(lat, lng))
      return 270;
    else
      return 293;
  } else {
    if (poly[2376].contains(lat, lng))
      return 217;
    else
      return 270;
  }
  else if (lng < 60.047388) {
    if (poly[2377].contains(lat, lng))
      return 270;
    else
      return 293;
  } else if (lat < 53.125516) if (lng < 61.699027) {
    if (poly[2378].contains(lat, lng))
      return 270;
    else
      return 293;
  } else {
    if (poly[2379].contains(lat, lng))
      return 293;
    else
      return 270;
  }
  else if (lng < 61.699027) if (lat < 54.008481) {
    if (poly[2380].contains(lat, lng))
      return 270;
    else
      return 293;
  } else {
    if (poly[2381].contains(lat, lng)) return 270;
    if (poly[2382].contains(lat, lng))
      return 270;
    else
      return 293;
  }
  else {
    if (poly[2383].contains(lat, lng))
      return 270;
    else
      return 293;
  }
  else if (lat < 51.359587) if (lng < 66.653946) if (lat < 49.593657) {
    if (poly[2384].contains(lat, lng)) return 213;
    if (poly[2385].contains(lat, lng))
      return 217;
    else
      return 270;
  } else {
    if (poly[2386].contains(lat, lng))
      return 213;
    else
      return 270;
  }
  else {
    if (poly[2387].contains(lat, lng))
      return 270;
    else
      return 213;
  }
  else if (lng < 66.653946) if (lat < 53.125516) {
    if (poly[2388].contains(lat, lng))
      return 270;
    else
      return 213;
  } else if (lng < 65.002307) {
    if (poly[2389].contains(lat, lng))
      return 293;
    else
      return 270;
  } else {
    if (poly[2390].contains(lat, lng)) return 213;
    if (poly[2391].contains(lat, lng))
      return 293;
    else
      return 270;
  }
  else {
    if (poly[2392].contains(lat, lng))
      return 293;
    else
      return 213;
  }
}

int _call37(num lat, num lng) {
  if (lat < 33.934308) if (lng < 74.729730) if (lat < 31.090648) {
    if (poly[2393].contains(lat, lng)) return 251;
    if (poly[2394].contains(lat, lng))
      return 251;
    else
      return 248;
  } else if (lng < 72.632080)
    return 248;
  else if (lat < 32.512478) {
    if (poly[2395].contains(lat, lng)) return 251;
    if (poly[2396].contains(lat, lng))
      return 251;
    else
      return 248;
  } else {
    if (poly[2397].contains(lat, lng))
      return 251;
    else
      return 248;
  }
  else if (lat < 31.090648)
    return 251;
  else if (lng < 76.827381) {
    if (poly[2398].contains(lat, lng))
      return 248;
    else
      return 251;
  } else if (lat < 32.512478) {
    if (poly[2399].contains(lat, lng))
      return 276;
    else
      return 251;
  } else {
    if (poly[2400].contains(lat, lng)) return 276;
    if (poly[2401].contains(lat, lng))
      return 276;
    else
      return 251;
  }
  else if (lng < 74.729730) if (lat < 36.777969) if (lng < 72.632080) if (lat <
      35.356138) {
    if (poly[2402].contains(lat, lng))
      return 246;
    else
      return 248;
  } else if (lng < 71.583255) {
    if (poly[2403].contains(lat, lng)) return 235;
    if (poly[2404].contains(lat, lng)) return 248;
    if (poly[2405].contains(lat, lng))
      return 248;
    else
      return 246;
  } else {
    if (poly[2406].contains(lat, lng)) return 235;
    if (poly[2407].contains(lat, lng))
      return 248;
    else
      return 246;
  }
  else {
    if (poly[2408].contains(lat, lng))
      return 251;
    else
      return 248;
  }
  else if (lng < 72.632080) if (lat < 38.199799) {
    if (poly[2409].contains(lat, lng)) return 235;
    if (poly[2410].contains(lat, lng))
      return 248;
    else
      return 246;
  } else if (lng < 71.583255) {
    if (poly[2411].contains(lat, lng)) return 226;
    if (poly[2412].contains(lat, lng))
      return 246;
    else
      return 235;
  } else {
    if (poly[2413].contains(lat, lng))
      return 235;
    else
      return 226;
  }
  else if (lat < 38.199799) if (lng < 73.680905) {
    if (poly[2414].contains(lat, lng)) return 235;
    if (poly[2415].contains(lat, lng)) return 235;
    if (poly[2416].contains(lat, lng))
      return 248;
    else
      return 246;
  } else if (lat < 37.488884) if (lng < 74.205318) {
    if (poly[2417].contains(lat, lng)) return 235;
    if (poly[2418].contains(lat, lng))
      return 248;
    else
      return 246;
  } else if (lat < 37.133426) {
    if (poly[2419].contains(lat, lng)) return 248;
    if (poly[2420].contains(lat, lng)) return 276;
    if (poly[2421].contains(lat, lng))
      return 287;
    else
      return 246;
  } else {
    if (poly[2422].contains(lat, lng)) return 235;
    if (poly[2423].contains(lat, lng)) return 276;
    if (poly[2424].contains(lat, lng))
      return 287;
    else
      return 246;
  }
  else
    return 235;
  else if (lng < 73.680905) {
    if (poly[2425].contains(lat, lng)) return 226;
    if (poly[2426].contains(lat, lng)) return 276;
    if (poly[2427].contains(lat, lng))
      return 287;
    else
      return 235;
  } else if (lat < 38.910714) {
    if (poly[2428].contains(lat, lng)) return 276;
    if (poly[2429].contains(lat, lng))
      return 287;
    else
      return 235;
  } else {
    if (poly[2430].contains(lat, lng)) return 226;
    if (poly[2431].contains(lat, lng)) return 235;
    if (poly[2432].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else if (lat < 36.777969) if (lng < 76.827381) if (lat < 35.356138) {
    if (poly[2433].contains(lat, lng))
      return 251;
    else
      return 248;
  } else if (lng < 75.778556) {
    if (poly[2434].contains(lat, lng)) return 276;
    if (poly[2435].contains(lat, lng))
      return 287;
    else
      return 248;
  } else if (lat < 36.067053) {
    if (poly[2436].contains(lat, lng)) return 251;
    if (poly[2437].contains(lat, lng)) return 276;
    if (poly[2438].contains(lat, lng))
      return 287;
    else
      return 248;
  } else {
    if (poly[2439].contains(lat, lng)) return 248;
    if (poly[2440].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else if (lat < 35.356138) if (lng < 77.876206) {
    if (poly[2441].contains(lat, lng))
      return 248;
    else
      return 251;
  } else if (lat < 34.645223) {
    if (poly[2442].contains(lat, lng)) return 276;
    if (poly[2443].contains(lat, lng)) return 276;
    if (poly[2444].contains(lat, lng))
      return 287;
    else
      return 251;
  } else {
    if (poly[2445].contains(lat, lng)) return 276;
    if (poly[2446].contains(lat, lng))
      return 287;
    else
      return 251;
  }
  else if (lng < 77.876206) {
    if (poly[2447].contains(lat, lng)) return 248;
    if (poly[2448].contains(lat, lng)) return 276;
    if (poly[2449].contains(lat, lng))
      return 287;
    else
      return 251;
  } else {
    if (poly[2450].contains(lat, lng)) return 251;
    if (poly[2451].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else if (lng < 76.827381) if (lat < 38.199799) if (lng < 75.778556) if (lat <
      37.488884) if (lng < 75.254143) if (lat < 37.133426) {
    if (poly[2452].contains(lat, lng)) return 276;
    if (poly[2453].contains(lat, lng))
      return 287;
    else
      return 248;
  } else {
    if (poly[2454].contains(lat, lng)) return 235;
    if (poly[2455].contains(lat, lng)) return 246;
    if (poly[2456].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else {
    if (poly[2457].contains(lat, lng)) return 248;
    if (poly[2458].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else {
    if (poly[2459].contains(lat, lng)) return 276;
    if (poly[2460].contains(lat, lng))
      return 287;
    else
      return 235;
  }
  else {
    if (poly[2461].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else {
    if (poly[2462].contains(lat, lng)) return 235;
    if (poly[2463].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else {
    if (poly[2464].contains(lat, lng))
      return 287;
    else
      return 276;
  }
}

int _call38(num lat, num lng) {
  if (lng < 80.227684) if (lat < 45.885615) if (lng < 76.683710) if (lat <
      42.753622) if (lng < 74.911723) if (lat < 41.187625) if (lng < 74.025729) {
    if (poly[2465].contains(lat, lng)) return 276;
    if (poly[2466].contains(lat, lng))
      return 287;
    else
      return 226;
  } else {
    if (poly[2467].contains(lat, lng)) return 276;
    if (poly[2468].contains(lat, lng))
      return 287;
    else
      return 226;
  }
  else {
    if (poly[2469].contains(lat, lng))
      return 213;
    else
      return 226;
  }
  else if (lat < 41.187625) if (lng < 75.797716) {
    if (poly[2470].contains(lat, lng)) return 276;
    if (poly[2471].contains(lat, lng))
      return 287;
    else
      return 226;
  } else {
    if (poly[2472].contains(lat, lng)) return 276;
    if (poly[2473].contains(lat, lng))
      return 287;
    else
      return 226;
  }
  else
    return 226;
  else {
    if (poly[2474].contains(lat, lng))
      return 226;
    else
      return 213;
  }
  else if (lat < 42.753622) if (lng < 78.455697) if (lat < 41.187625) {
    if (poly[2475].contains(lat, lng)) return 226;
    if (poly[2476].contains(lat, lng))
      return 287;
    else
      return 276;
  } else {
    if (poly[2477].contains(lat, lng)) return 276;
    if (poly[2478].contains(lat, lng))
      return 287;
    else
      return 226;
  }
  else if (lat < 41.187625) {
    if (poly[2479].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 79.341690) {
    if (poly[2480].contains(lat, lng)) return 213;
    if (poly[2481].contains(lat, lng)) return 276;
    if (poly[2482].contains(lat, lng))
      return 287;
    else
      return 226;
  } else if (lat < 41.970624) {
    if (poly[2483].contains(lat, lng)) return 226;
    if (poly[2484].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 79.784687) {
    if (poly[2485].contains(lat, lng))
      return 213;
    else
      return 226;
  } else if (lat < 42.362123) {
    if (poly[2486].contains(lat, lng)) return 213;
    if (poly[2487].contains(lat, lng)) return 276;
    if (poly[2488].contains(lat, lng))
      return 287;
    else
      return 226;
  } else {
    if (poly[2489].contains(lat, lng)) return 226;
    if (poly[2490].contains(lat, lng)) return 276;
    if (poly[2491].contains(lat, lng)) return 276;
    if (poly[2492].contains(lat, lng)) return 287;
    if (poly[2493].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else if (lng < 78.455697) {
    if (poly[2494].contains(lat, lng))
      return 226;
    else
      return 213;
  } else {
    if (poly[2495].contains(lat, lng)) return 226;
    if (poly[2496].contains(lat, lng)) return 276;
    if (poly[2497].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else {
    if (poly[2498].contains(lat, lng))
      return 224;
    else
      return 213;
  }
  else if (lat < 45.885615) if (lng < 83.771658) if (lat < 42.753622) {
    if (poly[2499].contains(lat, lng)) return 213;
    if (poly[2500].contains(lat, lng)) return 213;
    if (poly[2501].contains(lat, lng)) return 213;
    if (poly[2502].contains(lat, lng)) return 226;
    if (poly[2503].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 81.999671) if (lat < 44.319618) if (lng <
      81.113677) if (lat < 43.536620) {
    if (poly[2504].contains(lat, lng)) return 276;
    if (poly[2505].contains(lat, lng))
      return 287;
    else
      return 213;
  } else {
    if (poly[2506].contains(lat, lng)) return 276;
    if (poly[2507].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else {
    if (poly[2508].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else if (lng < 81.113677) {
    if (poly[2509].contains(lat, lng)) return 276;
    if (poly[2510].contains(lat, lng))
      return 287;
    else
      return 213;
  } else {
    if (poly[2511].contains(lat, lng)) return 276;
    if (poly[2512].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else {
    if (poly[2513].contains(lat, lng)) return 213;
    if (poly[2514].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else {
    if (poly[2515].contains(lat, lng))
      return 287;
    else
      return 276;
  }
  else if (lng < 83.771658) if (lat < 49.017607) {
    if (poly[2516].contains(lat, lng)) return 276;
    if (poly[2517].contains(lat, lng))
      return 287;
    else
      return 213;
  } else if (lng < 81.999671) {
    if (poly[2518].contains(lat, lng))
      return 224;
    else
      return 213;
  } else {
    if (poly[2519].contains(lat, lng))
      return 224;
    else
      return 213;
  }
  else if (lat < 49.017607) if (lng < 85.543645) if (lat < 47.451611) if (lng <
      84.657652) {
    if (poly[2520].contains(lat, lng)) return 276;
    if (poly[2521].contains(lat, lng))
      return 287;
    else
      return 213;
  } else {
    if (poly[2522].contains(lat, lng)) return 276;
    if (poly[2523].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else {
    if (poly[2524].contains(lat, lng)) return 276;
    if (poly[2525].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else if (lat < 47.451611) {
    if (poly[2526].contains(lat, lng)) return 213;
    if (poly[2527].contains(lat, lng))
      return 287;
    else
      return 276;
  } else {
    if (poly[2528].contains(lat, lng)) return 276;
    if (poly[2529].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else if (lng < 85.543645) {
    if (poly[2530].contains(lat, lng))
      return 224;
    else
      return 213;
  } else if (lat < 50.583604) if (lng < 86.429638) {
    if (poly[2531].contains(lat, lng))
      return 224;
    else
      return 213;
  } else {
    if (poly[2532].contains(lat, lng)) return 224;
    if (poly[2533].contains(lat, lng)) return 276;
    if (poly[2534].contains(lat, lng))
      return 287;
    else
      return 213;
  }
  else
    return 224;
}

int _call39(num lat, num lng) {
  if (lng < 98.940959) if (lat < 40.765989) {
    if (poly[2535].contains(lat, lng))
      return 276;
    else
      return 287;
  } else if (lng < 93.128295) if (lat < 46.457794) if (lng < 90.221964) {
    if (poly[2536].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lat < 43.611892) {
    if (poly[2537].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 91.675130) {
    if (poly[2538].contains(lat, lng)) return 241;
    if (poly[2539].contains(lat, lng))
      return 287;
    else
      return 276;
  } else {
    if (poly[2540].contains(lat, lng)) return 276;
    if (poly[2541].contains(lat, lng))
      return 287;
    else
      return 241;
  }
  else if (lng < 90.221964) if (lat < 49.303697) if (lng < 88.768798) if (lat <
      47.880746) {
    if (poly[2542].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 88.042215) if (lat < 48.592222) {
    if (poly[2543].contains(lat, lng)) return 241;
    if (poly[2544].contains(lat, lng))
      return 287;
    else
      return 276;
  } else if (lng < 87.678923) {
    if (poly[2545].contains(lat, lng)) return 224;
    if (poly[2546].contains(lat, lng))
      return 276;
    else
      return 287;
  } else {
    if (poly[2547].contains(lat, lng)) return 224;
    if (poly[2548].contains(lat, lng)) return 276;
    if (poly[2549].contains(lat, lng))
      return 287;
    else
      return 241;
  }
  else {
    if (poly[2550].contains(lat, lng)) return 224;
    if (poly[2551].contains(lat, lng)) return 276;
    if (poly[2552].contains(lat, lng)) return 276;
    if (poly[2553].contains(lat, lng)) return 287;
    if (poly[2554].contains(lat, lng))
      return 287;
    else
      return 241;
  }
  else {
    if (poly[2555].contains(lat, lng)) return 241;
    if (poly[2556].contains(lat, lng))
      return 276;
    else
      return 287;
  }
  else if (lng < 88.768798) {
    if (poly[2557].contains(lat, lng)) return 241;
    if (poly[2558].contains(lat, lng))
      return 252;
    else
      return 224;
  } else if (lat < 50.726649) if (lng < 89.495381) {
    if (poly[2559].contains(lat, lng)) return 241;
    if (poly[2560].contains(lat, lng))
      return 252;
    else
      return 224;
  } else {
    if (poly[2561].contains(lat, lng)) return 241;
    if (poly[2562].contains(lat, lng))
      return 252;
    else
      return 224;
  }
  else {
    if (poly[2563].contains(lat, lng))
      return 224;
    else
      return 252;
  }
  else if (lat < 49.303697) {
    if (poly[2564].contains(lat, lng)) return 276;
    if (poly[2565].contains(lat, lng))
      return 287;
    else
      return 241;
  } else {
    if (poly[2566].contains(lat, lng))
      return 252;
    else
      return 241;
  }
  else if (lat < 46.457794) if (lng < 96.034627) if (lat < 43.611892) {
    if (poly[2567].contains(lat, lng)) return 241;
    if (poly[2568].contains(lat, lng))
      return 276;
    else
      return 287;
  } else {
    if (poly[2569].contains(lat, lng)) return 276;
    if (poly[2570].contains(lat, lng))
      return 287;
    else
      return 241;
  }
  else {
    if (poly[2571].contains(lat, lng)) return 276;
    if (poly[2572].contains(lat, lng)) return 286;
    if (poly[2573].contains(lat, lng)) return 287;
    if (poly[2574].contains(lat, lng))
      return 287;
    else
      return 241;
  }
  else if (lng < 96.034627) {
    if (poly[2575].contains(lat, lng))
      return 252;
    else
      return 241;
  } else if (lat < 49.303697) {
    if (poly[2576].contains(lat, lng)) return 286;
    if (poly[2577].contains(lat, lng))
      return 286;
    else
      return 241;
  } else if (lng < 97.487793) {
    if (poly[2578].contains(lat, lng)) return 252;
    if (poly[2579].contains(lat, lng))
      return 286;
    else
      return 241;
  } else {
    if (poly[2580].contains(lat, lng))
      return 252;
    else
      return 286;
  }
  else if (lat < 49.113709) if (lat < 39.248044)
    return 276;
  else if (lng < 107.076564) {
    if (poly[2581].contains(lat, lng)) return 241;
    if (poly[2582].contains(lat, lng))
      return 276;
    else
      return 286;
  } else if (lat < 44.180876) {
    if (poly[2583].contains(lat, lng))
      return 286;
    else
      return 276;
  } else if (lng < 111.144367)
    return 286;
  else if (lat < 46.647293) if (lng < 113.178269) {
    if (poly[2584].contains(lat, lng)) return 229;
    if (poly[2585].contains(lat, lng))
      return 276;
    else
      return 286;
  } else {
    if (poly[2586].contains(lat, lng))
      return 276;
    else
      return 229;
  }
  else {
    if (poly[2587].contains(lat, lng))
      return 286;
    else
      return 229;
  }
  else if (lng < 107.076564) if (lng < 103.008762) if (lng < 100.974860) {
    if (poly[2588].contains(lat, lng))
      return 242;
    else
      return 286;
  } else if (lat < 50.631654) {
    if (poly[2589].contains(lat, lng))
      return 242;
    else
      return 286;
  } else {
    if (poly[2590].contains(lat, lng))
      return 286;
    else
      return 242;
  }
  else {
    if (poly[2591].contains(lat, lng))
      return 242;
    else
      return 286;
  }
  else if (lng < 111.144367) if (lng < 109.110466) if (lat <
      50.631654) if (lng < 108.093515) {
    if (poly[2592].contains(lat, lng)) return 242;
    if (poly[2593].contains(lat, lng))
      return 286;
    else
      return 228;
  } else {
    if (poly[2594].contains(lat, lng)) return 242;
    if (poly[2595].contains(lat, lng))
      return 286;
    else
      return 228;
  }
  else {
    if (poly[2596].contains(lat, lng))
      return 228;
    else
      return 242;
  }
  else {
    if (poly[2597].contains(lat, lng)) return 242;
    if (poly[2598].contains(lat, lng))
      return 286;
    else
      return 228;
  }
  else {
    if (poly[2599].contains(lat, lng)) return 229;
    if (poly[2600].contains(lat, lng)) return 242;
    if (poly[2601].contains(lat, lng))
      return 286;
    else
      return 228;
  }
}

int _call40(num lat, num lng) {
  if (lat < 57.237834) if (lng < 71.677329) if (lat < 54.668015) if (lat <
      54.184945) if (lng < 71.296101) {
    if (poly[2602].contains(lat, lng))
      return 264;
    else
      return 213;
  } else {
    if (poly[2603].contains(lat, lng))
      return 213;
    else
      return 264;
  }
  else {
    if (poly[2604].contains(lat, lng))
      return 213;
    else
      return 264;
  }
  else if (lat < 56.765223) {
    if (poly[2605].contains(lat, lng))
      return 293;
    else
      return 264;
  } else {
    if (poly[2606].contains(lat, lng))
      return 293;
    else
      return 264;
  }
  else if (lng < 85.115957) if (lng < 78.396643) if (lng < 75.036986) if (lat <
      54.693717) if (lng < 73.357157) if (lat < 53.421658)
    return 213;
  else if (lng < 72.517243) {
    if (poly[2607].contains(lat, lng))
      return 264;
    else
      return 213;
  } else {
    if (poly[2608].contains(lat, lng)) return 264;
    if (poly[2609].contains(lat, lng))
      return 264;
    else
      return 213;
  }
  else {
    if (poly[2610].contains(lat, lng))
      return 264;
    else
      return 213;
  }
  else
    return 264;
  else if (lat < 54.693717) if (lng < 76.716814) {
    if (poly[2611].contains(lat, lng)) return 213;
    if (poly[2612].contains(lat, lng))
      return 264;
    else
      return 263;
  } else {
    if (poly[2613].contains(lat, lng)) return 213;
    if (poly[2614].contains(lat, lng)) return 213;
    if (poly[2615].contains(lat, lng))
      return 224;
    else
      return 263;
  }
  else if (lng < 76.716814) if (lat < 55.965775) {
    if (poly[2616].contains(lat, lng)) return 264;
    if (poly[2617].contains(lat, lng))
      return 264;
    else
      return 263;
  } else {
    if (poly[2618].contains(lat, lng)) return 264;
    if (poly[2619].contains(lat, lng))
      return 285;
    else
      return 263;
  }
  else {
    if (poly[2620].contains(lat, lng))
      return 285;
    else
      return 263;
  }
  else if (lng < 81.756300) if (lat < 54.693717) if (lng < 80.076471) {
    if (poly[2621].contains(lat, lng)) return 213;
    if (poly[2622].contains(lat, lng))
      return 263;
    else
      return 224;
  } else {
    if (poly[2623].contains(lat, lng)) return 263;
    if (poly[2624].contains(lat, lng)) return 263;
    if (poly[2625].contains(lat, lng))
      return 263;
    else
      return 224;
  }
  else {
    if (poly[2626].contains(lat, lng))
      return 285;
    else
      return 263;
  }
  else if (lat < 54.693717) if (lng < 83.436128) {
    if (poly[2627].contains(lat, lng))
      return 263;
    else
      return 224;
  } else {
    if (poly[2628].contains(lat, lng)) return 224;
    if (poly[2629].contains(lat, lng))
      return 262;
    else
      return 263;
  }
  else if (lng < 83.436128) {
    if (poly[2630].contains(lat, lng))
      return 285;
    else
      return 263;
  } else if (lat < 55.965775) if (lng < 84.276043) {
    if (poly[2631].contains(lat, lng))
      return 285;
    else
      return 263;
  } else {
    if (poly[2632].contains(lat, lng))
      return 263;
    else
      return 262;
  }
  else {
    if (poly[2633].contains(lat, lng)) return 262;
    if (poly[2634].contains(lat, lng))
      return 263;
    else
      return 285;
  }
  else if (lat < 55.866563) if (lng < 87.259300) {
    if (poly[2635].contains(lat, lng))
      return 224;
    else
      return 262;
  } else if (lat < 54.008082) if (lng < 88.330972) {
    if (poly[2636].contains(lat, lng))
      return 262;
    else
      return 224;
  } else if (lat < 53.078841) {
    if (poly[2637].contains(lat, lng)) return 224;
    if (poly[2638].contains(lat, lng))
      return 252;
    else
      return 262;
  } else {
    if (poly[2639].contains(lat, lng))
      return 262;
    else
      return 252;
  }
  else {
    if (poly[2640].contains(lat, lng))
      return 252;
    else
      return 262;
  }
  else if (lng < 87.259300) {
    if (poly[2641].contains(lat, lng))
      return 285;
    else
      return 262;
  } else if (lng < 88.330972) {
    if (poly[2642].contains(lat, lng))
      return 285;
    else
      return 262;
  } else {
    if (poly[2643].contains(lat, lng)) return 262;
    if (poly[2644].contains(lat, lng))
      return 285;
    else
      return 252;
  }
  else if (lat < 73.721756) if (lng < 80.335949) if (lat < 65.479795) if (lng <
      75.802602) {
    if (poly[2645].contains(lat, lng)) return 285;
    if (poly[2646].contains(lat, lng))
      return 293;
    else
      return 264;
  } else if (lat < 61.358814) if (lng < 78.069276) {
    if (poly[2647].contains(lat, lng)) return 264;
    if (poly[2648].contains(lat, lng))
      return 293;
    else
      return 285;
  } else {
    if (poly[2649].contains(lat, lng))
      return 293;
    else
      return 285;
  }
  else
    return 293;
  else if (lng < 75.802602)
    return 293;
  else if (lat < 69.600775) {
    if (poly[2650].contains(lat, lng))
      return 252;
    else
      return 293;
  } else if (lng < 78.069276) {
    if (poly[2651].contains(lat, lng))
      return 252;
    else
      return 293;
  } else if (lat < 71.661266) if (lng < 79.202613) {
    if (poly[2652].contains(lat, lng)) return 252;
    if (poly[2653].contains(lat, lng)) return 252;
    if (poly[2654].contains(lat, lng))
      return 252;
    else
      return 293;
  } else {
    if (poly[2655].contains(lat, lng)) return 293;
    if (poly[2656].contains(lat, lng)) return 293;
    if (poly[2657].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else {
    if (poly[2658].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else if (lat < 65.479795) if (lng < 84.869297) if (lat < 61.358814) {
    if (poly[2659].contains(lat, lng)) return 252;
    if (poly[2660].contains(lat, lng))
      return 293;
    else
      return 285;
  } else {
    if (poly[2661].contains(lat, lng)) return 252;
    if (poly[2662].contains(lat, lng))
      return 252;
    else
      return 293;
  }
  else if (lat < 61.358814) {
    if (poly[2663].contains(lat, lng)) return 285;
    if (poly[2664].contains(lat, lng))
      return 293;
    else
      return 252;
  } else if (lng < 87.135970) if (lat < 63.419305) {
    if (poly[2665].contains(lat, lng)) return 293;
    if (poly[2666].contains(lat, lng))
      return 293;
    else
      return 252;
  } else {
    if (poly[2667].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else
    return 252;
  else if (lng < 84.869297) if (lat < 69.600775) if (lng < 82.602623) if (lat <
      67.540285) {
    if (poly[2668].contains(lat, lng)) return 252;
    if (poly[2669].contains(lat, lng)) return 252;
    if (poly[2670].contains(lat, lng))
      return 252;
    else
      return 293;
  } else if (lng < 81.469286) {
    if (poly[2671].contains(lat, lng))
      return 293;
    else
      return 252;
  } else {
    if (poly[2672].contains(lat, lng)) return 293;
    if (poly[2673].contains(lat, lng)) return 293;
    if (poly[2674].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else {
    if (poly[2675].contains(lat, lng)) return 293;
    if (poly[2676].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else {
    if (poly[2677].contains(lat, lng)) return 293;
    if (poly[2678].contains(lat, lng))
      return 293;
    else
      return 252;
  }
  else
    return 252;
  else
    return 252;
}

int _call41(num lat, num lng) {
  if (lng < 102.307407) if (lat < 63.521722) if (lng < 95.855025) {
    if (poly[2679].contains(lat, lng))
      return 242;
    else
      return 252;
  } else if (lat < 57.835661) if (lng < 99.081216) if (lat <
      54.992631) if (lng < 97.468121) {
    if (poly[2680].contains(lat, lng))
      return 242;
    else
      return 252;
  } else {
    if (poly[2681].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else if (lng < 97.468121) {
    if (poly[2682].contains(lat, lng)) return 242;
    if (poly[2683].contains(lat, lng))
      return 242;
    else
      return 252;
  } else {
    if (poly[2684].contains(lat, lng)) return 252;
    if (poly[2685].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else {
    if (poly[2686].contains(lat, lng)) return 252;
    if (poly[2687].contains(lat, lng)) return 252;
    if (poly[2688].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else {
    if (poly[2689].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else
    return 252;
  else if (lat < 63.521722) if (lng < 108.759788) if (lat < 57.835661)
    return 242;
  else if (lng < 105.533598) if (lat < 60.678692) if (lng < 103.920502) {
    if (poly[2690].contains(lat, lng))
      return 242;
    else
      return 252;
  } else if (lat < 59.257177) {
    if (poly[2691].contains(lat, lng))
      return 252;
    else
      return 242;
  } else {
    if (poly[2692].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else {
    if (poly[2693].contains(lat, lng))
      return 242;
    else
      return 252;
  }
  else {
    if (poly[2694].contains(lat, lng))
      return 252;
    else
      return 242;
  }
  else if (lat < 57.835661) if (lng < 111.985979) {
    if (poly[2695].contains(lat, lng))
      return 228;
    else
      return 242;
  } else if (lat < 54.992631) if (lng < 113.599075) {
    if (poly[2696].contains(lat, lng))
      return 242;
    else
      return 228;
  } else if (lat < 53.571115) {
    if (poly[2697].contains(lat, lng))
      return 242;
    else
      return 228;
  } else {
    if (poly[2698].contains(lat, lng))
      return 228;
    else
      return 242;
  }
  else
    return 242;
  else if (lng < 111.985979) if (lat < 60.678692) if (lng < 110.372884) {
    if (poly[2699].contains(lat, lng))
      return 291;
    else
      return 242;
  } else {
    if (poly[2700].contains(lat, lng))
      return 291;
    else
      return 242;
  }
  else if (lng < 110.372884) if (lat < 62.100207) {
    if (poly[2701].contains(lat, lng)) return 291;
    if (poly[2702].contains(lat, lng))
      return 291;
    else
      return 242;
  } else {
    if (poly[2703].contains(lat, lng))
      return 291;
    else
      return 242;
  }
  else {
    if (poly[2704].contains(lat, lng))
      return 242;
    else
      return 291;
  }
  else if (lat < 60.678692) if (lng < 113.599075) {
    if (poly[2705].contains(lat, lng))
      return 291;
    else
      return 242;
  } else {
    if (poly[2706].contains(lat, lng)) return 291;
    if (poly[2707].contains(lat, lng))
      return 291;
    else
      return 242;
  }
  else
    return 291;
  else if (lng < 108.759788) if (lat < 69.207784) if (lng < 105.533598) {
    if (poly[2708].contains(lat, lng))
      return 291;
    else
      return 252;
  } else if (lat < 66.364753) if (lng < 107.146693) if (lat < 64.943238) {
    if (poly[2709].contains(lat, lng)) return 242;
    if (poly[2710].contains(lat, lng))
      return 291;
    else
      return 252;
  } else {
    if (poly[2711].contains(lat, lng))
      return 291;
    else
      return 252;
  }
  else if (lat < 64.943238) if (lng < 107.953241) {
    if (poly[2712].contains(lat, lng)) return 242;
    if (poly[2713].contains(lat, lng))
      return 291;
    else
      return 252;
  } else {
    if (poly[2714].contains(lat, lng)) return 252;
    if (poly[2715].contains(lat, lng)) return 291;
    if (poly[2716].contains(lat, lng)) return 291;
    if (poly[2717].contains(lat, lng))
      return 291;
    else
      return 242;
  }
  else
    return 291;
  else {
    if (poly[2718].contains(lat, lng))
      return 291;
    else
      return 252;
  }
  else {
    if (poly[2719].contains(lat, lng))
      return 291;
    else
      return 252;
  }
  else if (lat < 69.207784) {
    if (poly[2720].contains(lat, lng)) return 242;
    if (poly[2721].contains(lat, lng)) return 242;
    if (poly[2722].contains(lat, lng))
      return 242;
    else
      return 291;
  } else if (lng < 111.985979) if (lat < 72.050814) {
    if (poly[2723].contains(lat, lng))
      return 291;
    else
      return 252;
  } else if (lng < 110.372884) {
    if (poly[2724].contains(lat, lng)) return 291;
    if (poly[2725].contains(lat, lng))
      return 291;
    else
      return 252;
  } else if (lat < 73.472330) {
    if (poly[2726].contains(lat, lng))
      return 291;
    else
      return 252;
  } else {
    if (poly[2727].contains(lat, lng))
      return 291;
    else
      return 252;
  }
  else {
    if (poly[2728].contains(lat, lng)) return 252;
    if (poly[2729].contains(lat, lng))
      return 252;
    else
      return 291;
  }
}

int _call42(num lat, num lng) {
  if (lat < 52.149600) if (lng < 87.315632) if (lat < 39.621629) if (lng <
      70.534430) if (lat < 34.047710) if (lat < 33.798521) {
    if (poly[2730].contains(lat, lng))
      return 246;
    else
      return 248;
  } else {
    if (poly[2731].contains(lat, lng))
      return 248;
    else
      return 246;
  }
  else if (lat < 38.208711) {
    if (poly[2732].contains(lat, lng))
      return 235;
    else
      return 246;
  } else {
    if (poly[2733].contains(lat, lng))
      return 226;
    else
      return 235;
  }
  else if (lng < 78.925031)
    return _call37(lat, lng);
  else if (lat < 33.934308) if (lng < 83.120331) if (lat < 31.090648) if (lng <
      81.022681) if (lat < 29.668817) {
    if (poly[2734].contains(lat, lng))
      return 251;
    else
      return 249;
  } else {
    if (poly[2735].contains(lat, lng)) return 249;
    if (poly[2736].contains(lat, lng))
      return 276;
    else
      return 251;
  }
  else if (lat < 29.668817) {
    if (poly[2737].contains(lat, lng)) return 251;
    if (poly[2738].contains(lat, lng)) return 276;
    if (poly[2739].contains(lat, lng))
      return 276;
    else
      return 249;
  } else if (lng < 82.071506) {
    if (poly[2740].contains(lat, lng)) return 251;
    if (poly[2741].contains(lat, lng))
      return 276;
    else
      return 249;
  } else {
    if (poly[2742].contains(lat, lng)) return 249;
    if (poly[2743].contains(lat, lng))
      return 249;
    else
      return 276;
  }
  else {
    if (poly[2744].contains(lat, lng)) return 251;
    if (poly[2745].contains(lat, lng))
      return 251;
    else
      return 276;
  }
  else if (lat < 31.090648) if (lng < 85.217982) if (lat < 29.668817) if (lng <
      84.169157) {
    if (poly[2746].contains(lat, lng)) return 276;
    if (poly[2747].contains(lat, lng))
      return 276;
    else
      return 249;
  } else {
    if (poly[2748].contains(lat, lng))
      return 276;
    else
      return 249;
  }
  else
    return 276;
  else {
    if (poly[2749].contains(lat, lng))
      return 249;
    else
      return 276;
  }
  else
    return 276;
  else {
    if (poly[2750].contains(lat, lng)) return 251;
    if (poly[2751].contains(lat, lng))
      return 276;
    else
      return 287;
  }
  else if (lng < 73.139736) if (lat < 40.785252) if (lng < 70.983890) if (lat <
      39.891552) {
    if (poly[2752].contains(lat, lng))
      return 226;
    else
      return 235;
  } else if (lng < 70.470557) {
    if (poly[2753].contains(lat, lng)) return 226;
    if (poly[2754].contains(lat, lng)) return 280;
    if (poly[2755].contains(lat, lng))
      return 280;
    else
      return 235;
  } else {
    if (poly[2756].contains(lat, lng)) return 226;
    if (poly[2757].contains(lat, lng)) return 226;
    if (poly[2758].contains(lat, lng))
      return 280;
    else
      return 235;
  }
  else if (lng < 71.226069) if (lat < 40.185134) {
    if (poly[2759].contains(lat, lng))
      return 226;
    else
      return 280;
  } else if (lat < 40.267114) {
    if (poly[2760].contains(lat, lng))
      return 280;
    else
      return 226;
  } else {
    if (poly[2761].contains(lat, lng))
      return 280;
    else
      return 226;
  }
  else if (lat < 40.008003) {
    if (poly[2762].contains(lat, lng))
      return 226;
    else
      return 280;
  } else if (lng < 72.182902) {
    if (poly[2763].contains(lat, lng))
      return 226;
    else
      return 280;
  } else {
    if (poly[2764].contains(lat, lng))
      return 280;
    else
      return 226;
  }
  else if (lat < 46.467426) if (lat < 43.626339) if (lng < 71.548480) if (lat <
      42.205796) if (lng < 70.752853) if (lat < 41.495524) {
    if (poly[2765].contains(lat, lng)) return 226;
    if (poly[2766].contains(lat, lng)) return 226;
    if (poly[2767].contains(lat, lng)) return 235;
    if (poly[2768].contains(lat, lng))
      return 235;
    else
      return 280;
  } else {
    if (poly[2769].contains(lat, lng)) return 213;
    if (poly[2770].contains(lat, lng))
      return 226;
    else
      return 280;
  }
  else {
    if (poly[2771].contains(lat, lng)) return 213;
    if (poly[2772].contains(lat, lng)) return 213;
    if (poly[2773].contains(lat, lng))
      return 226;
    else
      return 280;
  }
  else {
    if (poly[2774].contains(lat, lng)) return 226;
    if (poly[2775].contains(lat, lng)) return 280;
    if (poly[2776].contains(lat, lng))
      return 280;
    else
      return 213;
  }
  else if (lat < 42.205796) {
    if (poly[2777].contains(lat, lng))
      return 280;
    else
      return 226;
  } else {
    if (poly[2778].contains(lat, lng))
      return 226;
    else
      return 213;
  }
  else
    return 213;
  else
    return 213;
  else
    return _call38(lat, lng);
  else if (lat < 29.382378) if (lng < 97.274264) if (lng < 92.294948)
    return 276;
  else if (lng < 94.784606) {
    if (poly[2779].contains(lat, lng))
      return 251;
    else
      return 276;
  } else if (lng < 96.029435) {
    if (poly[2780].contains(lat, lng))
      return 276;
    else
      return 251;
  } else {
    if (poly[2781].contains(lat, lng))
      return 251;
    else
      return 276;
  }
  else {
    if (poly[2782].contains(lat, lng))
      return 292;
    else
      return 276;
  }
  else
    return _call39(lat, lng);
  else if (lat < 74.893845) if (lng < 71.269255) if (lat < 56.046981) if (lat <
      54.609784) {
    if (poly[2783].contains(lat, lng))
      return 264;
    else
      return 213;
  } else {
    if (poly[2784].contains(lat, lng)) return 213;
    if (poly[2785].contains(lat, lng))
      return 293;
    else
      return 264;
  }
  else if (lat < 56.691085) if (lat < 56.361732) if (lng < 70.948417) if (lat <
      56.304836) {
    if (poly[2786].contains(lat, lng))
      return 264;
    else
      return 293;
  } else {
    if (poly[2787].contains(lat, lng))
      return 264;
    else
      return 293;
  }
  else if (lng < 71.092014) {
    if (poly[2788].contains(lat, lng))
      return 293;
    else
      return 264;
  } else {
    if (poly[2789].contains(lat, lng))
      return 293;
    else
      return 264;
  }
  else {
    if (poly[2790].contains(lat, lng)) return 293;
    if (poly[2791].contains(lat, lng))
      return 293;
    else
      return 264;
  }
  else {
    if (poly[2792].contains(lat, lng))
      return 264;
    else
      return 293;
  }
  else if (lng < 89.402644)
    return _call40(lat, lng);
  else
    return _call41(lat, lng);
  else
    return 252;
}

int _call43(num lat, num lng) {
  if (lng < 79.395921) if (lng < 60.054577) if (lat < 19.000000) if (lng <
      51.617770) if (lat < 14.411063) if (lng < 40.259453) {
    if (poly[2793].contains(lat, lng))
      return 5;
    else
      return 3;
  } else if (lng < 45.938612) if (lat < 10.435032) {
    if (poly[2794].contains(lat, lng))
      return 41;
    else
      return 3;
  } else if (lng < 43.099032) if (lat < 12.423047) {
    if (poly[2795].contains(lat, lng)) return 3;
    if (poly[2796].contains(lat, lng)) return 5;
    if (poly[2797].contains(lat, lng))
      return 41;
    else
      return 19;
  } else {
    if (poly[2798].contains(lat, lng)) return 3;
    if (poly[2799].contains(lat, lng)) return 19;
    if (poly[2800].contains(lat, lng)) return 19;
    if (poly[2801].contains(lat, lng))
      return 212;
    else
      return 5;
  }
  else {
    if (poly[2802].contains(lat, lng)) return 5;
    if (poly[2803].contains(lat, lng)) return 19;
    if (poly[2804].contains(lat, lng))
      return 41;
    else
      return 212;
  }
  else {
    if (poly[2805].contains(lat, lng)) return 3;
    if (poly[2806].contains(lat, lng))
      return 212;
    else
      return 41;
  }
  else if (lng < 45.922675) if (lng < 43.075128) {
    if (poly[2807].contains(lat, lng)) return 5;
    if (poly[2808].contains(lat, lng))
      return 272;
    else
      return 212;
  } else if (lat < 16.705531) {
    if (poly[2809].contains(lat, lng))
      return 272;
    else
      return 212;
  } else {
    if (poly[2810].contains(lat, lng))
      return 212;
    else
      return 272;
  }
  else {
    if (poly[2811].contains(lat, lng))
      return 272;
    else
      return 212;
  }
  else if (lat < 12.912992)
    return 212;
  else if (lng < 52.000000) {
    if (poly[2812].contains(lat, lng))
      return 272;
    else
      return 212;
  } else {
    if (poly[2813].contains(lat, lng))
      return 212;
    else
      return 260;
  }
  else if (lng < 51.873474) if (lat < 26.687244) if (lng < 46.050527)
    return 272;
  else if (lat < 22.843622)
    return 272;
  else if (lng < 48.962001)
    return 272;
  else if (lat < 24.765433) {
    if (poly[2814].contains(lat, lng)) return 234;
    if (poly[2815].contains(lat, lng))
      return 269;
    else
      return 272;
  } else {
    if (poly[2816].contains(lat, lng)) return 221;
    if (poly[2817].contains(lat, lng))
      return 272;
    else
      return 269;
  }
  else if (lng < 50.475558) {
    if (poly[2818].contains(lat, lng))
      return 282;
    else
      return 272;
  } else
    return 282;
  else if (lat < 25.008764) if (lng < 55.964026) if (lat < 22.004382) {
    if (poly[2819].contains(lat, lng))
      return 272;
    else
      return 260;
  } else {
    if (poly[2820].contains(lat, lng)) return 260;
    if (poly[2821].contains(lat, lng)) return 260;
    if (poly[2822].contains(lat, lng)) return 269;
    if (poly[2823].contains(lat, lng)) return 269;
    if (poly[2824].contains(lat, lng))
      return 272;
    else
      return 234;
  }
  else {
    if (poly[2825].contains(lat, lng)) return 234;
    if (poly[2826].contains(lat, lng))
      return 234;
    else
      return 260;
  }
  else if (lng < 53.252289) if (lat < 25.361546) if (lng < 52.455827) {
    if (poly[2827].contains(lat, lng))
      return 234;
    else
      return 269;
  } else
    return 234;
  else if (lat < 26.221460)
    return 269;
  else
    return 282;
  else if (lng < 54.461109) if (lat < 25.580043)
    return 234;
  else
    return 282;
  else if (lng < 57.257843) if (lat < 26.627876) if (lng < 55.859476) {
    if (poly[2828].contains(lat, lng))
      return 282;
    else
      return 234;
  } else {
    if (poly[2829].contains(lat, lng)) return 234;
    if (poly[2830].contains(lat, lng)) return 234;
    if (poly[2831].contains(lat, lng)) return 282;
    if (poly[2832].contains(lat, lng))
      return 282;
    else
      return 260;
  }
  else {
    if (poly[2833].contains(lat, lng))
      return 260;
    else
      return 282;
  }
  else
    return 282;
  else if (lat < 12.113083) if (lat < 7.310625)
    return 385;
  else
    return 251;
  else if (lat < 12.577255)
    return 251;
  else if (lng < 63.333270) if (lat < 26.544310) {
    if (poly[2834].contains(lat, lng))
      return 282;
    else
      return 248;
  } else {
    if (poly[2835].contains(lat, lng))
      return 282;
    else
      return 248;
  }
  else if (lng < 71.364596) if (lng < 67.348933)
    return 248;
  else if (lat < 24.345118) {
    if (poly[2836].contains(lat, lng)) return 248;
    if (poly[2837].contains(lat, lng))
      return 248;
    else
      return 251;
  } else if (lng < 69.356764)
    return 248;
  else if (lat < 26.296053) {
    if (poly[2838].contains(lat, lng)) return 251;
    if (poly[2839].contains(lat, lng))
      return 251;
    else
      return 248;
  } else {
    if (poly[2840].contains(lat, lng))
      return 251;
    else
      return 248;
  }
  else {
    if (poly[2841].contains(lat, lng))
      return 248;
    else
      return 251;
  }
  else if (lng < 109.670985) if (lng < 94.478373) if (lat < 14.389697) if (lng <
      82.081014) if (lat < 9.534601) {
    if (poly[2842].contains(lat, lng))
      return 251;
    else
      return 230;
  } else {
    if (poly[2843].contains(lat, lng))
      return 230;
    else
      return 251;
  }
  else if (lat < 13.661110)
    return 251;
  else {
    if (poly[2844].contains(lat, lng))
      return 251;
    else
      return 292;
  }
  else
    return _call29(lat, lng);
  else
    return _call31(lat, lng);
  else if (lat < 10.229958) if (lng < 112.663898)
    return 239;
  else
    return 276;
  else if (lat < 11.398160) if (lat < 11.249496) {
    if (poly[2845].contains(lat, lng))
      return 276;
    else
      return 259;
  } else
    return 239;
  else if (lng < 112.952690)
    return 276;
  else if (lng < 113.630139) {
    if (poly[2846].contains(lat, lng))
      return 276;
    else
      return 256;
  } else {
    if (poly[2847].contains(lat, lng))
      return 276;
    else
      return 240;
  }
}

int _call44(num lat, num lng) {
  if (lat < 53.560815) if (lng < 123.271244) {
    if (poly[2848].contains(lat, lng))
      return 291;
    else
      return 276;
  } else if (lat < 43.008964) if (lng < 128.951950) if (lng <
      126.111597) if (lat < 40.816221) {
    if (poly[2849].contains(lat, lng))
      return 276;
    else
      return 268;
  } else {
    if (poly[2850].contains(lat, lng))
      return 268;
    else
      return 276;
  }
  else if (lat < 40.816221)
    return 268;
  else if (lng < 127.531774) {
    if (poly[2851].contains(lat, lng))
      return 276;
    else
      return 268;
  } else {
    if (poly[2852].contains(lat, lng))
      return 276;
    else
      return 268;
  }
  else if (lng < 131.792303) if (lng < 130.372127) if (lat < 41.597391)
    return 268;
  else if (lng < 129.662038) {
    if (poly[2853].contains(lat, lng))
      return 276;
    else
      return 268;
  } else {
    if (poly[2854].contains(lat, lng))
      return 276;
    else
      return 268;
  }
  else {
    if (poly[2855].contains(lat, lng)) return 268;
    if (poly[2856].contains(lat, lng))
      return 290;
    else
      return 276;
  }
  else
    return 290;
  else if (lng < 130.145337) if (lat < 48.284889)
    return 276;
  else if (lng < 126.708291) if (lat < 50.922852)
    return 276;
  else if (lng < 124.989767) {
    if (poly[2857].contains(lat, lng))
      return 291;
    else
      return 276;
  } else {
    if (poly[2858].contains(lat, lng)) return 291;
    if (poly[2859].contains(lat, lng))
      return 291;
    else
      return 276;
  }
  else if (lat < 50.922852) if (lng < 128.426814) {
    if (poly[2860].contains(lat, lng))
      return 291;
    else
      return 276;
  } else {
    if (poly[2861].contains(lat, lng))
      return 291;
    else
      return 276;
  }
  else {
    if (poly[2862].contains(lat, lng)) return 276;
    if (poly[2863].contains(lat, lng))
      return 276;
    else
      return 291;
  }
  else if (lat < 48.284889) if (lng < 133.582384) if (lat < 45.646927) if (lng <
      131.863861) {
    if (poly[2864].contains(lat, lng))
      return 290;
    else
      return 276;
  } else {
    if (poly[2865].contains(lat, lng))
      return 276;
    else
      return 290;
  }
  else if (lng < 131.863861) {
    if (poly[2866].contains(lat, lng))
      return 276;
    else
      return 290;
  } else {
    if (poly[2867].contains(lat, lng))
      return 276;
    else
      return 290;
  }
  else if (lat < 45.646927)
    return 290;
  else if (lng < 135.300908) if (lat < 46.965908) {
    if (poly[2868].contains(lat, lng))
      return 276;
    else
      return 290;
  } else {
    if (poly[2869].contains(lat, lng))
      return 276;
    else
      return 290;
  }
  else
    return 290;
  else if (lng < 133.582384) if (lat < 50.922852) if (lng <
      131.863861) if (lat < 49.603871) {
    if (poly[2870].contains(lat, lng)) return 276;
    if (poly[2871].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2872].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else
    return 290;
  else if (lng < 131.863861) {
    if (poly[2873].contains(lat, lng)) return 290;
    if (poly[2874].contains(lat, lng))
      return 290;
    else
      return 291;
  } else if (lat < 52.241834) {
    if (poly[2875].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2876].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else if (lat < 50.922852) {
    if (poly[2877].contains(lat, lng))
      return 276;
    else
      return 290;
  } else if (lng < 135.300908) if (lat < 52.241834)
    return 290;
  else if (lng < 134.441646) {
    if (poly[2878].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2879].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else
    return 290;
  else if (lat < 53.619653) if (lng < 134.441683) if (lng <
      131.491725) if (lat < 53.600920) {
    if (poly[2880].contains(lat, lng))
      return 290;
    else
      return 291;
  } else {
    if (poly[2881].contains(lat, lng))
      return 290;
    else
      return 291;
  }
  else {
    if (poly[2882].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else if (lng < 134.521271) {
    if (poly[2883].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2884].contains(lat, lng))
      return 290;
    else
      return 291;
  }
  else if (lat < 62.894403) if (lng < 129.582626)
    return 291;
  else if (lat < 58.257028) if (lng < 133.301028) if (lat < 55.938340) if (lng <
      131.441827) {
    if (poly[2885].contains(lat, lng)) return 290;
    if (poly[2886].contains(lat, lng)) return 290;
    if (poly[2887].contains(lat, lng))
      return 290;
    else
      return 291;
  } else if (lat < 54.778997) {
    if (poly[2888].contains(lat, lng)) return 291;
    if (poly[2889].contains(lat, lng)) return 291;
    if (poly[2890].contains(lat, lng)) return 291;
    if (poly[2891].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2892].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else if (lng < 131.441827) {
    if (poly[2893].contains(lat, lng)) return 290;
    if (poly[2894].contains(lat, lng)) return 290;
    if (poly[2895].contains(lat, lng))
      return 290;
    else
      return 291;
  } else if (lat < 57.097684) {
    if (poly[2896].contains(lat, lng)) return 291;
    if (poly[2897].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2898].contains(lat, lng))
      return 290;
    else
      return 291;
  }
  else
    return 290;
  else if (lng < 133.301028) if (lat < 60.575716) if (lng < 131.441827)
    return 291;
  else if (lat < 59.416372) if (lng < 132.371428) {
    if (poly[2899].contains(lat, lng)) return 250;
    if (poly[2900].contains(lat, lng)) return 290;
    if (poly[2901].contains(lat, lng))
      return 290;
    else
      return 291;
  } else {
    if (poly[2902].contains(lat, lng)) return 250;
    if (poly[2903].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else {
    if (poly[2904].contains(lat, lng))
      return 291;
    else
      return 250;
  }
  else {
    if (poly[2905].contains(lat, lng))
      return 250;
    else
      return 291;
  }
  else if (lat < 60.575716) {
    if (poly[2906].contains(lat, lng))
      return 290;
    else
      return 250;
  } else if (lng < 135.160230) {
    if (poly[2907].contains(lat, lng))
      return 291;
    else
      return 250;
  } else {
    if (poly[2908].contains(lat, lng))
      return 291;
    else
      return 250;
  }
  else if (lng < 129.582626)
    return 291;
  else if (lat < 67.531778) if (lng < 133.301028) if (lat < 65.213090) if (lng <
      131.441827)
    return 291;
  else if (lat < 64.053747) {
    if (poly[2909].contains(lat, lng))
      return 250;
    else
      return 291;
  } else {
    if (poly[2910].contains(lat, lng)) return 250;
    if (poly[2911].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else {
    if (poly[2912].contains(lat, lng)) return 250;
    if (poly[2913].contains(lat, lng))
      return 291;
    else
      return 290;
  }
  else {
    if (poly[2914].contains(lat, lng)) return 290;
    if (poly[2915].contains(lat, lng))
      return 291;
    else
      return 250;
  }
  else if (lng < 133.301028) if (lat < 69.850465) {
    if (poly[2916].contains(lat, lng))
      return 291;
    else
      return 290;
  } else {
    if (poly[2917].contains(lat, lng))
      return 290;
    else
      return 291;
  }
  else {
    if (poly[2918].contains(lat, lng)) return 291;
    if (poly[2919].contains(lat, lng)) return 291;
    if (poly[2920].contains(lat, lng))
      return 291;
    else
      return 290;
  }
}

int _call45(num lat, num lng) {
  if (lng < 137.019431) if (lat < 72.169153) if (lng < 122.145820) if (lat <
      55.396315) if (lat < 47.009896) if (lat < 42.816687)
    return 276;
  else if (lng < 118.678995) {
    if (poly[2921].contains(lat, lng))
      return 276;
    else
      return 229;
  } else {
    if (poly[2922].contains(lat, lng))
      return 229;
    else
      return 276;
  }
  else if (lat < 51.203105) if (lng < 118.678995) if (lat < 49.106501) {
    if (poly[2923].contains(lat, lng))
      return 276;
    else
      return 229;
  } else {
    if (poly[2924].contains(lat, lng)) return 229;
    if (poly[2925].contains(lat, lng))
      return 276;
    else
      return 228;
  }
  else if (lat < 49.106501) {
    if (poly[2926].contains(lat, lng))
      return 229;
    else
      return 276;
  } else {
    if (poly[2927].contains(lat, lng))
      return 228;
    else
      return 276;
  }
  else if (lng < 118.678995) if (lat < 53.299710)
    return 228;
  else if (lng < 116.945583) if (lat < 54.348013) {
    if (poly[2928].contains(lat, lng))
      return 242;
    else
      return 228;
  } else {
    if (poly[2929].contains(lat, lng))
      return 242;
    else
      return 228;
  }
  else
    return 228;
  else if (lat < 53.299710) if (lng < 120.412408) {
    if (poly[2930].contains(lat, lng)) return 276;
    if (poly[2931].contains(lat, lng))
      return 276;
    else
      return 228;
  } else {
    if (poly[2932].contains(lat, lng)) return 228;
    if (poly[2933].contains(lat, lng)) return 228;
    if (poly[2934].contains(lat, lng))
      return 228;
    else
      return 276;
  }
  else if (lng < 120.412408)
    return 228;
  else if (lat < 54.348013) {
    if (poly[2935].contains(lat, lng)) return 276;
    if (poly[2936].contains(lat, lng)) return 276;
    if (poly[2937].contains(lat, lng))
      return 291;
    else
      return 228;
  } else {
    if (poly[2938].contains(lat, lng))
      return 291;
    else
      return 228;
  }
  else if (lat < 63.782734) if (lat < 59.589524) if (lng < 118.678995) if (lat <
      57.492920) if (lng < 116.945583) {
    if (poly[2939].contains(lat, lng))
      return 242;
    else
      return 228;
  } else {
    if (poly[2940].contains(lat, lng))
      return 242;
    else
      return 228;
  }
  else if (lng < 116.945583)
    return 242;
  else if (lat < 58.541222) {
    if (poly[2941].contains(lat, lng))
      return 242;
    else
      return 228;
  } else {
    if (poly[2942].contains(lat, lng)) return 291;
    if (poly[2943].contains(lat, lng)) return 291;
    if (poly[2944].contains(lat, lng))
      return 291;
    else
      return 242;
  }
  else if (lat < 57.492920) if (lng < 120.412408) if (lat < 56.444617) {
    if (poly[2945].contains(lat, lng)) return 291;
    if (poly[2946].contains(lat, lng))
      return 291;
    else
      return 228;
  } else {
    if (poly[2947].contains(lat, lng))
      return 228;
    else
      return 291;
  }
  else {
    if (poly[2948].contains(lat, lng)) return 228;
    if (poly[2949].contains(lat, lng))
      return 228;
    else
      return 291;
  }
  else if (lng < 120.412408) if (lat < 58.541222) {
    if (poly[2950].contains(lat, lng)) return 228;
    if (poly[2951].contains(lat, lng))
      return 242;
    else
      return 291;
  } else {
    if (poly[2952].contains(lat, lng)) return 242;
    if (poly[2953].contains(lat, lng))
      return 242;
    else
      return 291;
  }
  else
    return 291;
  else {
    if (poly[2954].contains(lat, lng)) return 242;
    if (poly[2955].contains(lat, lng))
      return 242;
    else
      return 291;
  }
  else
    return 291;
  else
    return _call44(lat, lng);
  else if (lng < 130.330840)
    return 291;
  else
    return 290;
  else if (lat < 55.394243) if (lat < 41.606056)
    return 284;
  else if (lng < 145.050145) if (lat < 48.500150) if (lng < 141.034788) {
    if (poly[2956].contains(lat, lng)) return 274;
    if (poly[2957].contains(lat, lng)) return 284;
    if (poly[2958].contains(lat, lng))
      return 284;
    else
      return 290;
  } else {
    if (poly[2959].contains(lat, lng))
      return 284;
    else
      return 274;
  }
  else if (lng < 141.034788)
    return 290;
  else {
    if (poly[2960].contains(lat, lng))
      return 290;
    else
      return 274;
  }
  else {
    if (poly[2961].contains(lat, lng))
      return 284;
    else
      return 288;
  }
  else if (lat < 56.593646)
    return 290;
  else if (lat < 72.761219) if (lat < 65.575894) if (lng < 141.011174) if (lat <
      61.084770) {
    if (poly[2962].contains(lat, lng))
      return 250;
    else
      return 290;
  } else if (lat < 63.330332) if (lng < 139.015303) {
    if (poly[2963].contains(lat, lng))
      return 290;
    else
      return 250;
  } else if (lat < 62.207551) {
    if (poly[2964].contains(lat, lng))
      return 250;
    else
      return 290;
  } else {
    if (poly[2965].contains(lat, lng)) return 288;
    if (poly[2966].contains(lat, lng))
      return 290;
    else
      return 250;
  }
  else if (lng < 139.015303)
    return 250;
  else if (lat < 64.453113) {
    if (poly[2967].contains(lat, lng))
      return 288;
    else
      return 250;
  } else {
    if (poly[2968].contains(lat, lng)) return 250;
    if (poly[2969].contains(lat, lng))
      return 278;
    else
      return 288;
  }
  else if (lng < 146.109588) if (lat < 61.832713) {
    if (poly[2970].contains(lat, lng)) return 257;
    if (poly[2971].contains(lat, lng)) return 288;
    if (poly[2972].contains(lat, lng))
      return 288;
    else
      return 290;
  } else if (lng < 143.560381) if (lat < 63.704303) {
    if (poly[2973].contains(lat, lng))
      return 290;
    else
      return 288;
  } else {
    if (poly[2974].contains(lat, lng))
      return 278;
    else
      return 288;
  }
  else if (lat < 63.704303) if (lng < 144.834984) {
    if (poly[2975].contains(lat, lng)) return 257;
    if (poly[2976].contains(lat, lng)) return 290;
    if (poly[2977].contains(lat, lng))
      return 290;
    else
      return 288;
  } else if (lat < 62.768508) if (lng < 145.472286) {
    if (poly[2978].contains(lat, lng)) return 288;
    if (poly[2979].contains(lat, lng))
      return 290;
    else
      return 257;
  } else {
    if (poly[2980].contains(lat, lng)) return 288;
    if (poly[2981].contains(lat, lng))
      return 290;
    else
      return 257;
  }
  else {
    if (poly[2982].contains(lat, lng))
      return 257;
    else
      return 288;
  }
  else {
    if (poly[2983].contains(lat, lng)) return 257;
    if (poly[2984].contains(lat, lng))
      return 278;
    else
      return 288;
  }
  else if (lat < 62.117818) if (lng < 148.658794) if (lat < 60.532987) {
    if (poly[2985].contains(lat, lng))
      return 290;
    else
      return 257;
  } else {
    if (poly[2986].contains(lat, lng))
      return 290;
    else
      return 257;
  }
  else
    return 257;
  else if (lng < 148.658794) {
    if (poly[2987].contains(lat, lng)) return 278;
    if (poly[2988].contains(lat, lng))
      return 288;
    else
      return 257;
  } else {
    if (poly[2989].contains(lat, lng))
      return 278;
    else
      return 257;
  }
  else if (lng < 144.113716) if (lat < 69.168556) if (lng <
      140.566574) if (lat < 67.372225) if (lng < 138.793002) {
    if (poly[2990].contains(lat, lng)) return 250;
    if (poly[2991].contains(lat, lng))
      return 278;
    else
      return 290;
  } else if (lat < 66.474060) {
    if (poly[2992].contains(lat, lng)) return 250;
    if (poly[2993].contains(lat, lng))
      return 278;
    else
      return 290;
  } else {
    if (poly[2994].contains(lat, lng)) return 290;
    if (poly[2995].contains(lat, lng))
      return 290;
    else
      return 278;
  }
  else {
    if (poly[2996].contains(lat, lng))
      return 278;
    else
      return 290;
  }
  else {
    if (poly[2997].contains(lat, lng))
      return 290;
    else
      return 278;
  }
  else if (lng < 140.566574)
    return 290;
  else if (lat < 70.964888) {
    if (poly[2998].contains(lat, lng))
      return 290;
    else
      return 278;
  } else {
    if (poly[2999].contains(lat, lng))
      return 278;
    else
      return 290;
  }
  else {
    if (poly[3000].contains(lat, lng))
      return 290;
    else
      return 278;
  }
  else
    return 290;
}

int _call46(num lat, num lng) {
  if (lat < 21.321781) if (lng < 147.443035) if (lng < 143.281718) if (lng <
      136.322421) if (lng < 126.807256) if (lng < 116.028859) if (lat < 10.238836)
    return 259;
  else
    return 276;
  else if (lat < 7.511199) if (lng < 117.166690) {
    if (poly[3001].contains(lat, lng))
      return 259;
    else
      return 254;
  } else {
    if (poly[3002].contains(lat, lng))
      return 254;
    else
      return 259;
  }
  else if (lng < 116.978217) if (lat < 14.517725)
    return 259;
  else
    return 279;
  else {
    if (poly[3003].contains(lat, lng))
      return 276;
    else
      return 259;
  }
  else if (lng < 134.771474)
    return 416;
  else
    return 284;
  else
    return 393;
  else if (lat < 13.857141) if (lat < 9.427387)
    return 393;
  else
    return 403;
  else
    return 421;
  else if (lng < 167.976848) if (lng < 152.946370)
    return 393;
  else if (lng < 162.595471) if (lng < 159.969720)
    return 418;
  else
    return 408;
  else if (lng < 166.231718)
    return 408;
  else if (lat < 9.602000) if (lng < 166.477771)
    return 408;
  else if (lat < 8.399960)
    return 408;
  else {
    if (poly[3004].contains(lat, lng))
      return 408;
    else
      return 407;
  }
  else if (lat < 15.377747)
    return 408;
  else
    return 425;
  else
    return 408;
  else if (lat < 38.623477) if (lng < 132.146781) if (lng < 123.391367) if (lat <
      25.829900) if (lng < 122.297000) if (lng < 118.546111) if (lat < 24.207778) {
    if (poly[3005].contains(lat, lng))
      return 279;
    else
      return 276;
  } else {
    if (poly[3006].contains(lat, lng))
      return 276;
    else
      return 279;
  }
  else {
    if (poly[3007].contains(lat, lng))
      return 276;
    else
      return 279;
  }
  else
    return 284;
  else if (lng < 120.076944) if (lat < 26.037778) {
    if (poly[3008].contains(lat, lng))
      return 276;
    else
      return 279;
  } else {
    if (poly[3009].contains(lat, lng))
      return 276;
    else
      return 279;
  }
  else if (lng < 120.289722) {
    if (poly[3010].contains(lat, lng))
      return 276;
    else
      return 279;
  } else {
    if (poly[3011].contains(lat, lng))
      return 279;
    else
      return 276;
  }
  else if (lat < 32.448242)
    return 284;
  else if (lng < 129.832649) if (lat < 34.891740) {
    if (poly[3012].contains(lat, lng)) return 284;
    if (poly[3013].contains(lat, lng))
      return 284;
    else
      return 275;
  } else if (lng < 128.374371) {
    if (poly[3014].contains(lat, lng))
      return 268;
    else
      return 275;
  } else {
    if (poly[3015].contains(lat, lng))
      return 268;
    else
      return 275;
  }
  else if (lat < 35.229229)
    return 284;
  else
    return 275;
  else
    return 284;
  else if (lng < 151.208001)
    return _call45(lat, lng);
  else if (lat < 55.565445) if (lng < 168.445805) if (lng <
      156.831768) if (lng < 152.619038) {
    if (poly[3016].contains(lat, lng))
      return 278;
    else
      return 288;
  } else {
    if (poly[3017].contains(lat, lng))
      return 247;
    else
      return 278;
  }
  else
    return 247;
  else
    return 53;
  else if (lat < 71.770077) if (lng < 174.518872) if (lng <
      162.863436) if (lat < 63.667761) if (lng < 157.035719) {
    if (poly[3018].contains(lat, lng))
      return 247;
    else
      return 257;
  } else if (lat < 59.616603)
    return 247;
  else if (lng < 159.949578)
    return 257;
  else if (lat < 61.642182) {
    if (poly[3019].contains(lat, lng))
      return 257;
    else
      return 247;
  } else if (lng < 161.406507)
    return 257;
  else if (lat < 62.654972) {
    if (poly[3020].contains(lat, lng))
      return 257;
    else
      return 247;
  } else {
    if (poly[3021].contains(lat, lng))
      return 247;
    else
      return 257;
  }
  else if (lng < 157.035719) if (lat < 67.718919) if (lng < 154.121860) {
    if (poly[3022].contains(lat, lng))
      return 278;
    else
      return 257;
  } else {
    if (poly[3023].contains(lat, lng))
      return 257;
    else
      return 278;
  }
  else
    return 278;
  else if (lat < 67.471376) if (lng < 159.949578) if (lat < 65.569569) {
    if (poly[3024].contains(lat, lng))
      return 215;
    else
      return 257;
  } else if (lng < 158.492648) {
    if (poly[3025].contains(lat, lng)) return 215;
    if (poly[3026].contains(lat, lng)) return 215;
    if (poly[3027].contains(lat, lng)) return 257;
    if (poly[3028].contains(lat, lng))
      return 257;
    else
      return 278;
  } else {
    if (poly[3029].contains(lat, lng)) return 257;
    if (poly[3030].contains(lat, lng)) return 278;
    if (poly[3031].contains(lat, lng)) return 278;
    if (poly[3032].contains(lat, lng))
      return 278;
    else
      return 215;
  }
  else {
    if (poly[3033].contains(lat, lng)) return 215;
    if (poly[3034].contains(lat, lng)) return 247;
    if (poly[3035].contains(lat, lng))
      return 247;
    else
      return 257;
  }
  else if (lng < 159.949578) {
    if (poly[3036].contains(lat, lng))
      return 215;
    else
      return 278;
  } else {
    if (poly[3037].contains(lat, lng))
      return 215;
    else
      return 278;
  }
  else if (lat < 63.303423) if (lng < 168.691154) {
    if (poly[3038].contains(lat, lng))
      return 215;
    else
      return 247;
  } else if (lng < 171.605013) if (lat < 61.516254)
    return 247;
  else if (lng < 170.148084) {
    if (poly[3039].contains(lat, lng)) return 215;
    if (poly[3040].contains(lat, lng))
      return 215;
    else
      return 247;
  } else {
    if (poly[3041].contains(lat, lng)) return 247;
    if (poly[3042].contains(lat, lng))
      return 247;
    else
      return 215;
  }
  else if (lng < 173.061943) {
    if (poly[3043].contains(lat, lng))
      return 215;
    else
      return 247;
  } else {
    if (poly[3044].contains(lat, lng))
      return 215;
    else
      return 247;
  }
  else if (lng < 168.691154) if (lat < 67.050994) if (lng <
      165.777295) if (lat < 65.177208) if (lng < 164.320366) {
    if (poly[3045].contains(lat, lng)) return 215;
    if (poly[3046].contains(lat, lng)) return 257;
    if (poly[3047].contains(lat, lng)) return 257;
    if (poly[3048].contains(lat, lng))
      return 257;
    else
      return 247;
  } else {
    if (poly[3049].contains(lat, lng))
      return 247;
    else
      return 215;
  }
  else
    return 215;
  else {
    if (poly[3050].contains(lat, lng))
      return 247;
    else
      return 215;
  }
  else {
    if (poly[3051].contains(lat, lng))
      return 278;
    else
      return 215;
  }
  else {
    if (poly[3052].contains(lat, lng))
      return 247;
    else
      return 215;
  }
  else
    return 215;
  else
    return 290;
}

class _TzPolygon {
  List<num> pts;

  _TzPolygon(List<num> D) {
    pts = D;
  }

  bool contains(num testy, num testx) {
    bool inside = false;
    int n = pts.length;
    num yj = pts[n - 2];
    num xj = pts[n - 1];
    for (int i = 0; i < n;) {
      num yi = pts[i++];
      num xi = pts[i++];
      if (((yi > testy) != (yj > testy)) &&
          (testx < (xj - xi) * (testy - yi) / (yj - yi) + xi - 0.0001))
        inside = !inside;
      xj = xi;
      yj = yi;
    }
    return inside;
  }
}

List<_TzPolygon> poly = initPolyArray();

class _Initializer1 {
  static void _init() {
    poly[0] = _TzPolygon([
      -66.000000,
      -74.790449,
      -86.000000,
      -74.790449,
      -86.000000,
      -80.000000,
      -66.000000,
      -80.000000
    ]);
    poly[1] = _TzPolygon([
      -48.582229,
      -76.021890,
      -48.582229,
      -74.972849,
      -48.738531,
      -75.261755,
      -48.720811,
      -75.356684,
      -48.784858,
      -75.570161,
      -48.788603,
      -76.033525
    ]);
    poly[2] = _TzPolygon([
      -48.631255,
      -74.790449,
      -48.620484,
      -74.906588,
      -48.582229,
      -74.972849,
      -48.582229,
      -74.790449
    ]);
    poly[3] = _TzPolygon([
      -4.463281,
      -79.713051,
      -4.492013,
      -79.812846,
      -4.413311,
      -79.870644,
      -4.386225,
      -79.918504,
      -4.398133,
      -79.952250,
      -4.380940,
      -79.991687,
      -4.310753,
      -80.061277,
      -4.285451,
      -80.135403,
      -4.304381,
      -80.156057,
      -4.293735,
      -80.176870,
      -4.334799,
      -80.185641,
      -4.340057,
      -80.206549,
      -4.350423,
      -80.195138,
      -4.353266,
      -80.219057,
      -4.411501,
      -80.263507,
      -4.406661,
      -80.282523,
      -4.465321,
      -80.329256,
      -4.486128,
      -80.388354,
      -4.448243,
      -80.449079,
      -4.367830,
      -80.445962,
      -4.199935,
      -80.306395,
      -4.220630,
      -80.353907,
      -4.197227,
      -80.368469,
      -4.218131,
      -80.410353,
      -4.196347,
      -80.432743,
      -4.209630,
      -80.450183,
      -4.121701,
      -80.446824,
      -4.127627,
      -80.467175,
      -4.054915,
      -80.481935,
      -3.997205,
      -80.445923,
      -3.980779,
      -80.398050,
      -4.017149,
      -80.300771,
      -4.008033,
      -80.272693,
      -3.948370,
      -80.234984,
      -3.956656,
      -80.216493,
      -3.895305,
      -80.126404,
      -3.870365,
      -80.159502,
      -3.802971,
      -80.160109,
      -3.775000,
      -80.192845,
      -3.756035,
      -80.192045,
      -3.756035,
      -79.713051
    ]);
    poly[4] = _TzPolygon([
      -4.463281,
      -79.713051,
      -3.756035,
      -79.713051,
      -3.756035,
      -78.405503,
      -3.782391,
      -78.409367,
      -3.827533,
      -78.465873,
      -3.933821,
      -78.488826,
      -3.937264,
      -78.524505,
      -3.991963,
      -78.565713,
      -4.045100,
      -78.567689,
      -4.061588,
      -78.537225,
      -4.134865,
      -78.581154,
      -4.195549,
      -78.577281,
      -4.226094,
      -78.608955,
      -4.257924,
      -78.598544,
      -4.332513,
      -78.652273,
      -4.415164,
      -78.634094,
      -4.425148,
      -78.600263,
      -4.530081,
      -78.661123,
      -4.584883,
      -78.655819,
      -4.623949,
      -78.706040,
      -4.638181,
      -78.805147,
      -4.666990,
      -78.855937,
      -4.721660,
      -78.891204,
      -4.765025,
      -78.890487,
      -4.780080,
      -78.914861,
      -4.808531,
      -78.891006,
      -4.851854,
      -78.915138,
      -4.897899,
      -78.892858,
      -4.894209,
      -78.972616,
      -5.015931,
      -79.015405,
      -4.969755,
      -79.075886,
      -4.966255,
      -79.266950,
      -4.898674,
      -79.306087,
      -4.880440,
      -79.351995,
      -4.837345,
      -79.365552,
      -4.832450,
      -79.395264,
      -4.794079,
      -79.421263,
      -4.627291,
      -79.487973,
      -4.530312,
      -79.487787,
      -4.515554,
      -79.562108,
      -4.439105,
      -79.629079
    ]);
    poly[5] = _TzPolygon([
      -3.756035,
      -84.520219,
      -3.392125,
      -84.439430,
      -3.392255,
      -80.306572,
      -3.438116,
      -80.221080,
      -3.485750,
      -80.245823,
      -3.500634,
      -80.215877,
      -3.574856,
      -80.218529,
      -3.601287,
      -80.190584,
      -3.756035,
      -80.192598
    ]);
    poly[6] = _TzPolygon([
      -3.756035,
      -78.405503,
      -3.735388,
      -78.402476,
      -3.693202,
      -78.423437,
      -3.677180,
      -78.393217,
      -3.560102,
      -78.391188,
      -3.529699,
      -78.364930,
      -3.427103,
      -78.341385,
      -3.367933,
      -78.349831,
      -3.395347,
      -78.313688,
      -3.398582,
      -78.246726,
      -3.502763,
      -78.231455,
      -3.500079,
      -78.187079,
      -3.462695,
      -78.146753,
      -3.362668,
      -78.197809,
      -3.278806,
      -78.108674,
      -3.216360,
      -78.091812,
      -3.227392,
      -78.064909,
      -3.190982,
      -78.036072,
      -3.190622,
      -78.010772,
      -3.158505,
      -78.011297,
      -3.069962,
      -77.948023,
      -3.000373,
      -77.843934,
      -2.591136,
      -76.632708,
      -2.124938,
      -76.044356,
      -1.549618,
      -75.584994,
      -1.562957,
      -75.559159,
      -1.143227,
      -75.442469,
      -1.143227,
      -74.790449,
      -3.756035,
      -74.790449
    ]);
    poly[7] = _TzPolygon([
      0.362697,
      -77.222892,
      0.363221,
      -77.287580,
      0.400756,
      -77.370810,
      0.387642,
      -77.389058,
      0.438737,
      -77.430783,
      0.401243,
      -77.526461,
      0.530696,
      -77.521218,
      0.605000,
      -77.480821,
      0.655921,
      -77.479623,
      0.650276,
      -77.559835,
      0.705188,
      -77.666112,
      0.737207,
      -77.675385,
      0.741574,
      -77.697898,
      0.814530,
      -77.664002,
      0.840051,
      -77.694756,
      0.841134,
      -77.774507,
      0.802178,
      -77.842696,
      0.823435,
      -77.960655,
      0.856020,
      -77.988569,
      0.896853,
      -78.087861,
      0.932248,
      -78.111768,
      0.925229,
      -78.158653,
      0.946954,
      -78.199205,
      0.997163,
      -78.202313,
      1.055852,
      -78.281830,
      1.099505,
      -78.251070,
      1.111425,
      -78.282216,
      1.191146,
      -78.310583,
      1.160018,
      -78.417561,
      1.139925,
      -78.429633,
      1.189810,
      -78.432084,
      1.187404,
      -78.515771,
      1.212827,
      -78.514394,
      1.250518,
      -78.552504,
      1.248514,
      -78.619176,
      1.319855,
      -78.663472,
      1.469581,
      -78.868686,
      1.469581,
      -77.222892
    ]);
    poly[8] = _TzPolygon([
      -1.143227,
      -75.442469,
      -0.933777,
      -75.384239,
      -0.984452,
      -75.313749,
      -0.971293,
      -75.192504,
      -0.933832,
      -75.233515,
      -0.869167,
      -75.221241,
      -0.834452,
      -75.252397,
      -0.800810,
      -75.241754,
      -0.787322,
      -75.268450,
      -0.763563,
      -75.253256,
      -0.731465,
      -75.276087,
      -0.695247,
      -75.249136,
      -0.664658,
      -75.274243,
      -0.628358,
      -75.223306,
      -0.601047,
      -75.240701,
      -0.550304,
      -75.227940,
      -0.518237,
      -75.247103,
      -0.530454,
      -75.268558,
      -0.501426,
      -75.270691,
      -0.494676,
      -75.312973,
      -0.490025,
      -75.314318,
      -0.490025,
      -74.790449,
      -1.143227,
      -74.790449
    ]);
    poly[9] = _TzPolygon([
      0.163177,
      -75.899058,
      0.163177,
      -74.790449,
      -0.193865,
      -74.790449,
      -0.188798,
      -74.793490,
      -0.243279,
      -74.883279,
      -0.202360,
      -74.912032,
      -0.225712,
      -74.927919,
      -0.154980,
      -74.972685,
      -0.148687,
      -75.011932,
      -0.081799,
      -75.077451,
      -0.044719,
      -75.162138,
      -0.049238,
      -75.211292,
      -0.125137,
      -75.273418,
      -0.086488,
      -75.428461,
      -0.018885,
      -75.530051,
      -0.026579,
      -75.574527,
      0.014277,
      -75.581909,
      0.047608,
      -75.632203,
      0.031271,
      -75.652118,
      0.050840,
      -75.806614,
      0.132488,
      -75.854585,
      0.118397,
      -75.878275,
      0.138809,
      -75.881988,
      0.139542,
      -75.905475,
      0.162248,
      -75.897766
    ]);
    poly[10] = _TzPolygon([
      -0.490025,
      -75.314318,
      -0.452706,
      -75.325107,
      -0.463605,
      -75.349219,
      -0.434213,
      -75.388171,
      -0.186747,
      -75.535764,
      -0.190039,
      -75.602184,
      -0.113675,
      -75.615531,
      -0.131836,
      -75.568956,
      -0.114357,
      -75.516197,
      -0.169952,
      -75.406389,
      -0.146061,
      -75.364741,
      -0.163719,
      -75.353155,
      -0.160093,
      -75.312890,
      -0.126345,
      -75.259923,
      -0.039282,
      -75.192752,
      -0.081799,
      -75.077451,
      -0.148687,
      -75.011932,
      -0.154980,
      -74.972685,
      -0.225712,
      -74.927919,
      -0.202360,
      -74.912032,
      -0.243279,
      -74.883279,
      -0.188798,
      -74.793490,
      -0.193865,
      -74.790449,
      -0.490025,
      -74.790449
    ]);
    poly[11] = _TzPolygon([
      0.362697,
      -77.222892,
      0.362635,
      -77.215207,
      0.389524,
      -77.166031,
      0.372330,
      -77.113308,
      0.284301,
      -77.076109,
      0.277374,
      -77.027441,
      0.294349,
      -77.006691,
      0.266003,
      -76.985718,
      0.276764,
      -76.933267,
      0.246030,
      -76.907590,
      0.238961,
      -76.845635,
      0.264371,
      -76.797537,
      0.248242,
      -76.756071,
      0.263500,
      -76.767363,
      0.288619,
      -76.732950,
      0.268980,
      -76.712534,
      0.270672,
      -76.655712,
      0.251075,
      -76.653151,
      0.261912,
      -76.625590,
      0.218660,
      -76.586342,
      0.258652,
      -76.532835,
      0.236406,
      -76.504040,
      0.239446,
      -76.446771,
      0.257735,
      -76.434586,
      0.234402,
      -76.427007,
      0.240654,
      -76.412699,
      0.379616,
      -76.411361,
      0.382987,
      -76.339841,
      0.433886,
      -76.314210,
      0.421223,
      -76.296878,
      0.437080,
      -76.278335,
      0.376830,
      -76.226437,
      0.388252,
      -76.158492,
      0.371158,
      -76.132942,
      0.315884,
      -76.113372,
      0.335968,
      -76.067882,
      0.296487,
      -76.003681,
      0.256318,
      -75.982395,
      0.247925,
      -76.005430,
      0.238294,
      -75.959221,
      0.203104,
      -75.954586,
      0.163177,
      -75.899058,
      0.163177,
      -77.222892
    ]);
    poly[12] = _TzPolygon([
      11.948729,
      -86.810568,
      11.948729,
      -83.615384,
      11.614625,
      -83.545675,
      11.505393,
      -83.624088,
      11.460968,
      -83.697600,
      11.391315,
      -83.718428,
      11.362488,
      -83.769886,
      11.283199,
      -83.769886,
      11.068048,
      -83.695149,
      10.997920,
      -83.628370,
      10.928172,
      -83.669225,
      10.939851,
      -83.698032,
      10.818222,
      -83.660670,
      10.787861,
      -83.694237,
      10.770588,
      -83.789630,
      10.717579,
      -83.862686,
      10.707657,
      -83.931193,
      10.791619,
      -84.021017,
      10.759754,
      -84.070279,
      10.764361,
      -84.125135,
      10.787002,
      -84.136952,
      10.781758,
      -84.202708,
      10.815617,
      -84.237621,
      10.840680,
      -84.214727,
      10.873430,
      -84.225262,
      10.918032,
      -84.322876,
      10.995846,
      -84.358676,
      10.955404,
      -84.420252,
      10.960891,
      -84.450192,
      11.051070,
      -84.574811,
      11.038395,
      -84.606084,
      11.084402,
      -84.680546,
      10.943439,
      -84.910233,
      11.126204,
      -85.357171,
      11.128836,
      -85.423656,
      11.168113,
      -85.523283,
      11.210044,
      -85.560395,
      11.219568,
      -85.609900,
      11.069014,
      -85.706119,
      11.075878,
      -85.897878,
      11.683930,
      -86.626954,
      11.923883,
      -86.799320
    ]);
    poly[13] = _TzPolygon([
      7.420856,
      -82.506021,
      7.935534,
      -82.945565,
      8.051847,
      -82.890467,
      8.176042,
      -82.902863,
      8.210353,
      -82.935811,
      8.272782,
      -82.941755,
      8.289329,
      -82.974950,
      8.271259,
      -82.989611,
      8.333426,
      -83.051724,
      8.372535,
      -82.984046,
      8.435004,
      -82.930922,
      8.439673,
      -82.868383,
      8.480288,
      -82.839579,
      8.635995,
      -82.830006,
      8.765126,
      -82.919159,
      8.773740,
      -82.885445,
      8.817389,
      -82.862470,
      8.829270,
      -82.884344,
      8.852720,
      -82.860890,
      8.878409,
      -82.773262,
      8.922259,
      -82.711897,
      8.985499,
      -82.741726,
      9.003611,
      -82.801389,
      9.087904,
      -82.887118,
      9.078469,
      -82.935930,
      9.473125,
      -82.936078,
      9.501413,
      -82.842580,
      9.566924,
      -82.884793,
      9.621591,
      -82.854201,
      9.588903,
      -82.743867,
      9.494122,
      -82.671230,
      9.511394,
      -82.654801,
      9.493644,
      -82.639056,
      9.504265,
      -82.605838,
      9.559461,
      -82.599976,
      9.541496,
      -82.553144,
      9.571984,
      -82.565013,
      9.653892,
      -82.506021
    ]);
    poly[14] = _TzPolygon([
      7.779632,
      -78.641949,
      7.779632,
      -77.347444,
      7.765696,
      -77.342224,
      7.772445,
      -77.399046,
      7.725306,
      -77.398005,
      7.658417,
      -77.440411,
      7.662741,
      -77.465686,
      7.567106,
      -77.491171,
      7.582727,
      -77.516615,
      7.507785,
      -77.564858,
      7.541663,
      -77.612279,
      7.651469,
      -77.645202,
      7.700040,
      -77.728579,
      7.613535,
      -77.748587,
      7.506937,
      -77.701464,
      7.461479,
      -77.754389,
      7.472481,
      -77.818185,
      7.228372,
      -77.889065,
      7.050936,
      -78.036406,
      7.404444,
      -78.370364
    ]);
    poly[15] = _TzPolygon([
      7.779632,
      -78.641949,
      7.788317,
      -78.648235,
      9.802818,
      -78.648235,
      9.796949,
      -78.571137,
      9.550708,
      -78.211930,
      9.381695,
      -77.846530,
      9.122927,
      -77.524482,
      8.810513,
      -77.324431,
      8.641568,
      -77.364481,
      8.645401,
      -77.408923,
      8.588352,
      -77.393845,
      8.554959,
      -77.444862,
      8.509577,
      -77.457435,
      8.472170,
      -77.447701,
      8.475002,
      -77.411968,
      8.402126,
      -77.358884,
      8.297812,
      -77.350241,
      8.266749,
      -77.329596,
      8.272291,
      -77.301273,
      8.253016,
      -77.284217,
      8.209045,
      -77.279740,
      8.175348,
      -77.246796,
      8.156526,
      -77.258195,
      8.135652,
      -77.227087,
      8.037238,
      -77.219039,
      8.025575,
      -77.235168,
      7.954198,
      -77.139378,
      7.959057,
      -77.178952,
      7.929365,
      -77.153308,
      7.933343,
      -77.177377,
      7.917464,
      -77.178741,
      7.893640,
      -77.334815,
      7.830457,
      -77.366481,
      7.779632,
      -77.347444
    ]);
    poly[16] = _TzPolygon([
      -9.887332,
      40.227580,
      -10.151458,
      40.556614,
      -10.318695,
      40.658407,
      -10.414722,
      40.492778,
      -10.565456,
      40.352060,
      -10.596228,
      40.233184,
      -10.603183,
      40.227580
    ]);
    poly[17] = _TzPolygon([
      -12.379027,
      45.079938,
      -12.410517,
      45.203578,
      -12.480122,
      45.314879,
      -12.591196,
      45.434785,
      -12.663742,
      45.482985,
      -12.782931,
      45.507035,
      -13.072467,
      45.436904,
      -13.150354,
      45.395022,
      -13.241990,
      45.266931,
      -13.273255,
      45.136061,
      -13.237377,
      44.975470,
      -13.110506,
      44.823538,
      -12.919092,
      44.749889,
      -12.760359,
      44.770136,
      -12.661548,
      44.743668,
      -12.577477,
      44.760477,
      -12.496259,
      44.821940,
      -12.396000,
      44.990042
    ]);
    poly[18] = _TzPolygon([
      1.448202,
      40.227580,
      1.448202,
      40.990761,
      -0.833975,
      40.993376,
      -1.598574,
      41.558912,
      -1.662078,
      41.559365,
      -1.803197,
      41.718166,
      -1.912243,
      41.650687,
      -2.252429,
      41.345545,
      -2.763425,
      40.751201,
      -3.085740,
      40.418741,
      -3.369973,
      40.335936,
      -3.562595,
      40.227580
    ]);
    poly[19] = _TzPolygon([
      1.448202,
      40.990761,
      2.828298,
      40.989180,
      3.141237,
      41.312053,
      4.016664,
      41.943017,
      4.055481,
      41.946277,
      4.179113,
      42.087372,
      4.202464,
      42.525584,
      4.260387,
      42.702992,
      4.266755,
      42.824904,
      4.380478,
      42.951970,
      4.559042,
      43.034761,
      4.626329,
      43.115314,
      4.794544,
      43.434687,
      4.902107,
      43.809025,
      4.950439,
      44.153985,
      4.930188,
      44.770743,
      1.466525,
      44.770743,
      1.448202,
      44.746692
    ]);
    poly[20] = _TzPolygon([
      4.055009,
      40.227580,
      4.104848,
      40.387772,
      4.245001,
      40.717448,
      4.284943,
      40.759583,
      4.246260,
      40.844100,
      4.212840,
      40.882380,
      4.154620,
      40.904160,
      4.132070,
      40.965080,
      3.942580,
      41.169266,
      3.958885,
      41.235302,
      3.938760,
      41.326310,
      3.962760,
      41.391250,
      3.944940,
      41.430190,
      3.954630,
      41.509770,
      3.982140,
      41.545160,
      3.966667,
      41.566898,
      3.983294,
      41.627705,
      3.959925,
      41.674412,
      3.992460,
      41.720593,
      3.982106,
      41.791788,
      3.958645,
      41.796766,
      3.946486,
      41.833158,
      3.982684,
      41.906750,
      3.141237,
      41.312053,
      2.828298,
      40.989180,
      1.448202,
      40.990761,
      1.448202,
      40.227580
    ]);
    poly[21] = _TzPolygon([
      6.459000,
      46.438637,
      5.956573,
      45.845200,
      5.536382,
      45.410930,
      4.923383,
      44.978011,
      4.927753,
      44.770743,
      6.459000,
      44.770743
    ]);
    poly[22] = _TzPolygon([
      -9.403320,
      141.647501,
      -9.409858,
      141.592780,
      -9.391659,
      141.480826,
      -9.351343,
      141.394594,
      -9.425916,
      141.241107,
      -9.426205,
      141.075589,
      -9.386877,
      140.998300,
      -9.304719,
      140.915152,
      -9.135556,
      141.019444,
      -6.892357,
      141.020035,
      -6.904320,
      140.991514,
      -6.889404,
      140.966846,
      -6.910453,
      140.955612,
      -6.891885,
      140.940378,
      -6.857220,
      140.953987,
      -6.872289,
      140.917147,
      -6.849062,
      140.900264,
      -6.814838,
      140.916903,
      -6.792055,
      140.870037,
      -6.751125,
      140.899477,
      -6.719801,
      140.846202,
      -6.621837,
      140.877066,
      -6.610606,
      140.841655,
      -6.605671,
      140.890850,
      -6.573283,
      140.911744,
      -6.561471,
      140.891027,
      -6.560800,
      140.937194,
      -6.500474,
      140.921753,
      -6.487509,
      140.961667,
      -6.452098,
      140.955223,
      -6.467034,
      140.925173,
      -6.445165,
      140.938942,
      -6.422390,
      140.917346,
      -6.434850,
      140.952162,
      -6.412401,
      140.942045,
      -6.390252,
      140.982301,
      -6.382644,
      140.941958,
      -6.365823,
      140.977049,
      -6.325355,
      140.959981,
      -6.322308,
      140.999973,
      -2.387415,
      141.000000,
      -2.475376,
      141.366527,
      -2.612818,
      141.647501
    ]);
    poly[23] = _TzPolygon([
      -9.187956,
      142.216109,
      -9.266242,
      142.345755,
      -9.320820,
      142.329236,
      -9.347593,
      142.274239,
      -9.317351,
      142.096032,
      -9.260461,
      142.059440,
      -9.212404,
      142.108052
    ]);
    poly[24] = _TzPolygon([
      -9.484383,
      142.526835,
      -9.466246,
      142.490176,
      -9.409206,
      142.471923,
      -9.366124,
      142.495602,
      -9.374335,
      142.558892,
      -9.322311,
      142.806531,
      -9.378369,
      142.851886,
      -9.453762,
      142.821507,
      -9.482153,
      142.784947,
      -9.459837,
      142.585351,
      -9.484383,
      142.536451
    ]);
    poly[25] = _TzPolygon([
      -9.484383,
      143.248626,
      -9.474107,
      143.253530,
      -9.459675,
      143.297032,
      -9.484383,
      143.338933
    ]);
    poly[26] = _TzPolygon([
      -6.107149,
      154.622311,
      -6.086762,
      154.603872,
      -5.931626,
      154.533882,
      -5.892219,
      154.450641,
      -5.824350,
      154.390926,
      -5.722738,
      154.366089,
      -5.608977,
      154.404508,
      -5.531492,
      154.398887,
      -5.301336,
      154.333958,
      -5.085948,
      153.021059,
      -5.100781,
      153.369546,
      -2.983921,
      154.622311
    ]);
    poly[27] = _TzPolygon([
      -6.377546,
      154.865967,
      -6.377546,
      156.153225,
      -6.444858,
      156.173819,
      -6.550000,
      156.035833,
      -6.658333,
      156.039722,
      -6.847222,
      155.923056,
      -6.925833,
      155.693611,
      -6.925833,
      155.593889,
      -7.097516,
      155.336184,
      -7.017480,
      155.297466,
      -6.653692,
      155.002257
    ]);
    poly[28] = _TzPolygon([
      54.891446,
      53.543209,
      54.978258,
      53.475110,
      55.024998,
      53.372300,
      55.021895,
      53.318393,
      55.044701,
      53.317278,
      55.040976,
      53.276384,
      55.070675,
      53.294045,
      55.102723,
      53.258799,
      55.109103,
      53.164626,
      55.165582,
      53.157844,
      55.173110,
      53.371333,
      55.191883,
      53.398238,
      55.202065,
      53.362239,
      55.230037,
      53.426972,
      55.214323,
      53.616626,
      55.262642,
      53.602269,
      55.277042,
      53.685629,
      55.327133,
      53.690385,
      55.365909,
      53.861956,
      55.354651,
      53.895764,
      55.394366,
      53.872761,
      55.442170,
      53.915395,
      54.891446,
      53.915395,
      54.891446,
      53.639235,
      54.906586,
      53.649304,
      54.891446,
      53.597580
    ]);
    poly[29] = _TzPolygon([
      55.175889,
      59.150751,
      55.162808,
      59.172064,
      55.142427,
      59.158175,
      55.153803,
      59.113569
    ]);
    poly[30] = _TzPolygon([
      55.210021,
      69.957225,
      55.210093,
      69.950516,
      55.299966,
      69.862930,
      55.345583,
      69.745073,
      55.342093,
      69.441769,
      55.352208,
      69.402974,
      55.384553,
      69.411653,
      55.386983,
      69.363908,
      55.351354,
      69.317696,
      55.330115,
      69.199475,
      55.390437,
      69.160572,
      55.442027,
      68.932686,
      55.365332,
      68.915885,
      55.365765,
      68.983669,
      55.288464,
      69.001168,
      55.327362,
      68.956225,
      55.318490,
      68.928963,
      55.378842,
      68.748654,
      55.288836,
      68.696868,
      55.265379,
      68.635116,
      55.235735,
      68.657829,
      55.198213,
      68.619795,
      55.219408,
      68.594980,
      55.196495,
      68.444642,
      55.206463,
      68.358804,
      55.180954,
      68.353543,
      55.203531,
      68.304201,
      55.187150,
      68.239630,
      55.198793,
      68.177148,
      55.154756,
      68.218666,
      55.151440,
      68.189505,
      55.076629,
      68.315193,
      55.054098,
      68.237586,
      55.014808,
      68.237811,
      54.990182,
      68.196709,
      54.968959,
      68.234743,
      54.950457,
      68.032268,
      54.983669,
      67.910619,
      54.971376,
      67.819274,
      54.891446,
      67.776503,
      54.891446,
      59.172064,
      55.442170,
      59.172064,
      55.442170,
      69.957225
    ]);
    poly[31] = _TzPolygon([
      26.179962,
      -107.815375,
      26.196484,
      -107.853967,
      26.438910,
      -108.012728,
      26.470118,
      -107.969609,
      26.472102,
      -107.985476,
      26.493996,
      -107.957081,
      26.526811,
      -107.960858,
      26.615880,
      -108.031607,
      26.641929,
      -108.081652,
      26.689668,
      -108.011685,
      26.729418,
      -108.008305,
      26.729418,
      -107.815375
    ]);
    poly[32] = _TzPolygon([
      26.729418,
      -109.999802,
      26.729418,
      -108.600314,
      26.727223,
      -108.601024,
      26.718387,
      -108.628385,
      26.676573,
      -108.630366,
      26.642889,
      -108.678988,
      26.587015,
      -108.678831,
      26.593568,
      -108.734293,
      26.551071,
      -108.873152,
      26.489595,
      -108.891317,
      26.479540,
      -108.914670,
      26.487217,
      -108.847480,
      26.472523,
      -108.837762,
      26.447576,
      -108.876108,
      26.432770,
      -108.860339,
      26.406252,
      -108.881392,
      26.421715,
      -108.910115,
      26.390180,
      -108.936522,
      26.402370,
      -109.006443,
      26.297015,
      -109.125378,
      26.344966,
      -109.202603,
      26.316185,
      -109.246826,
      26.310512,
      -109.508033,
      26.403716,
      -109.477396,
      26.473497,
      -109.534853,
      26.478136,
      -109.728538,
      26.544417,
      -109.894124,
      26.634176,
      -109.999802
    ]);
    poly[33] = _TzPolygon([
      27.764211,
      -108.907589,
      27.784752,
      -108.920341,
      27.798298,
      -108.907589
    ]);
    poly[34] = _TzPolygon([
      27.851368,
      -108.907589,
      27.853703,
      -108.914848,
      27.940495,
      -108.926480,
      28.018227,
      -109.031995,
      28.148745,
      -109.073038,
      28.272489,
      -109.074984,
      28.278261,
      -109.022484,
      28.255884,
      -108.993813,
      28.298515,
      -108.992104,
      28.250867,
      -108.921264,
      28.255657,
      -108.907589
    ]);
    poly[35] = _TzPolygon([
      27.531508,
      -108.907589,
      27.531508,
      -108.653029,
      27.465206,
      -108.661652,
      27.317990,
      -108.590990,
      27.220165,
      -108.663025,
      27.177111,
      -108.653412,
      27.154082,
      -108.611415,
      27.036985,
      -108.602179,
      27.045866,
      -108.562399,
      27.012599,
      -108.571999,
      26.997077,
      -108.551576,
      26.976230,
      -108.424271,
      26.970702,
      -108.466978,
      26.823753,
      -108.557043,
      26.798429,
      -108.536912,
      26.779857,
      -108.554034,
      26.789577,
      -108.580849,
      26.729418,
      -108.600314,
      26.729418,
      -108.907589
    ]);
    poly[36] = _TzPolygon([
      26.729418,
      -108.600314,
      26.789577,
      -108.580849,
      26.779857,
      -108.554034,
      26.798429,
      -108.536912,
      26.823753,
      -108.557043,
      26.970702,
      -108.466978,
      26.976230,
      -108.424271,
      26.987366,
      -108.502429,
      27.036581,
      -108.486977,
      27.013419,
      -108.409530,
      27.022604,
      -108.350083,
      27.004510,
      -108.333373,
      27.034043,
      -108.317576,
      27.012384,
      -108.284344,
      27.042249,
      -108.242392,
      27.034770,
      -108.197788,
      27.000149,
      -108.180209,
      26.958793,
      -108.234966,
      26.905629,
      -108.230258,
      26.881351,
      -108.174710,
      26.907204,
      -108.142117,
      26.867579,
      -108.144261,
      26.870410,
      -108.094161,
      26.798426,
      -108.026810,
      26.769822,
      -108.037698,
      26.760987,
      -108.005620,
      26.729418,
      -108.008305
    ]);
    poly[37] = _TzPolygon([
      28.333599,
      -108.636200,
      28.292471,
      -108.641052,
      28.303060,
      -108.687952,
      28.266951,
      -108.797343,
      28.253495,
      -108.791585,
      28.265560,
      -108.879318,
      28.255657,
      -108.907589,
      28.333599,
      -108.907589
    ]);
    poly[38] = _TzPolygon([
      27.851368,
      -108.907589,
      27.839032,
      -108.869241,
      27.798298,
      -108.907589
    ]);
    poly[39] = _TzPolygon([
      27.764211,
      -108.907589,
      27.744740,
      -108.895501,
      27.730490,
      -108.784424,
      27.601137,
      -108.739929,
      27.537834,
      -108.652206,
      27.531508,
      -108.653029,
      27.531508,
      -108.907589
    ]);
    poly[40] = _TzPolygon([
      28.333599,
      -108.521428,
      28.317737,
      -108.550519,
      28.333599,
      -108.579013
    ]);
    poly[41] = _TzPolygon([
      25.579947,
      -106.723162,
      25.571661,
      -106.873310,
      25.644091,
      -106.893301,
      25.661685,
      -106.994438,
      25.668331,
      -106.966940,
      25.697879,
      -106.965323,
      25.714924,
      -106.990299,
      25.691459,
      -107.010680,
      25.699875,
      -107.046144,
      25.757368,
      -107.057905,
      25.924793,
      -107.296128,
      26.001977,
      -107.276346,
      26.076402,
      -107.304890,
      26.109523,
      -107.346528,
      26.142860,
      -107.431043,
      26.104227,
      -107.520020,
      26.170640,
      -107.582027,
      26.154578,
      -107.635749,
      26.174413,
      -107.711075,
      26.134506,
      -107.755043,
      26.136865,
      -107.780674,
      26.168627,
      -107.788898,
      26.179962,
      -107.815375,
      26.729418,
      -107.815375,
      26.729418,
      -106.723162
    ]);
    poly[42] = _TzPolygon([
      25.125236,
      -107.127206,
      25.186640,
      -107.124918,
      25.224548,
      -107.148775,
      25.243111,
      -107.121057,
      25.331564,
      -107.207816,
      25.326358,
      -107.171551,
      25.417101,
      -107.210132,
      25.441992,
      -107.158690,
      25.489565,
      -107.139295,
      25.515176,
      -107.178117,
      25.556553,
      -107.173879,
      25.550414,
      -107.124565,
      25.629570,
      -106.973290,
      25.661685,
      -106.994438,
      25.644091,
      -106.893301,
      25.571661,
      -106.873310,
      25.579947,
      -106.723162,
      25.125236,
      -106.723162
    ]);
    poly[43] = _TzPolygon([
      25.579947,
      -106.723162,
      25.581085,
      -106.702539,
      25.597082,
      -106.705617,
      25.579332,
      -106.681968,
      25.602195,
      -106.707722,
      25.558657,
      -106.652569,
      25.647396,
      -106.591666,
      25.728722,
      -106.463376,
      25.691778,
      -106.555806,
      25.952097,
      -106.546964,
      25.972486,
      -106.455447,
      26.004822,
      -106.444522,
      26.005396,
      -106.470406,
      26.027765,
      -106.453244,
      26.060420,
      -106.471186,
      26.096989,
      -106.455996,
      26.344723,
      -106.307962,
      26.334746,
      -106.287001,
      26.367243,
      -106.275112,
      26.364574,
      -106.295961,
      26.440288,
      -106.255964,
      26.531569,
      -106.279921,
      26.558754,
      -106.233085,
      26.678178,
      -106.207824,
      26.674407,
      -106.188134,
      26.705337,
      -106.172046,
      26.700708,
      -106.130625,
      26.727674,
      -106.176449,
      26.729418,
      -106.176495,
      26.729418,
      -105.846806,
      26.660915,
      -105.775777,
      26.698729,
      -105.794199,
      26.713838,
      -105.746274,
      26.617649,
      -105.674854,
      26.615930,
      -105.630949,
      25.125236,
      -105.630949,
      25.125236,
      -106.723162
    ]);
    poly[44] = _TzPolygon([
      26.729418,
      -106.176495,
      26.772195,
      -106.177626,
      26.779321,
      -106.125304,
      26.759285,
      -106.100652,
      26.844788,
      -106.047366,
      26.763234,
      -105.939209,
      26.747387,
      -105.865438,
      26.729418,
      -105.846806
    ]);
    poly[45] = _TzPolygon([
      29.937781,
      -109.999802,
      29.937781,
      -108.625878,
      29.847115,
      -108.607142,
      29.829767,
      -108.635880,
      29.800790,
      -108.618695,
      29.796156,
      -108.541220,
      29.752337,
      -108.534622,
      29.717686,
      -108.592385,
      29.716169,
      -108.659375,
      29.660587,
      -108.618210,
      29.649450,
      -108.655006,
      29.588850,
      -108.641317,
      29.584534,
      -108.659416,
      29.558283,
      -108.638501,
      29.544517,
      -108.661996,
      29.501171,
      -108.625259,
      29.466534,
      -108.717789,
      29.308136,
      -108.669724,
      29.267289,
      -108.682081,
      29.254683,
      -108.761902,
      29.218582,
      -108.735641,
      29.163668,
      -108.746024,
      29.171978,
      -108.729462,
      29.128502,
      -108.698212,
      29.096232,
      -108.729563,
      29.082692,
      -108.708999,
      29.069873,
      -108.724498,
      28.889599,
      -108.709645,
      28.809963,
      -108.657700,
      28.806503,
      -108.624062,
      28.766033,
      -108.643456,
      28.740751,
      -108.583717,
      28.632463,
      -108.580083,
      28.508553,
      -108.507500,
      28.426272,
      -108.515572,
      28.369551,
      -108.479701,
      28.364595,
      -108.521719,
      28.334455,
      -108.519859,
      28.333599,
      -108.579013,
      28.347390,
      -108.603786,
      28.335144,
      -108.636018,
      28.333599,
      -108.636200,
      28.333599,
      -109.999802
    ]);
    poly[46] = _TzPolygon([
      31.541963,
      -108.907589,
      31.332579,
      -108.907589,
      31.332409,
      -109.050040,
      31.541963,
      -109.049820
    ]);
    poly[47] = _TzPolygon([
      30.728570,
      -108.907589,
      30.739321,
      -108.918753,
      30.736901,
      -108.948073,
      30.907403,
      -108.939335,
      30.906651,
      -108.907589
    ]);
    poly[48] = _TzPolygon([
      31.541963,
      -109.999802,
      31.541963,
      -109.049753,
      31.332409,
      -109.050040,
      31.332316,
      -109.999802
    ]);
    poly[49] = _TzPolygon([
      29.937781,
      -108.625878,
      29.952826,
      -108.628987,
      30.028856,
      -108.606895,
      30.235941,
      -108.617516,
      30.179691,
      -108.505364,
      30.264100,
      -108.501728,
      30.304283,
      -108.475600,
      30.302227,
      -108.441409,
      30.343762,
      -108.436022,
      30.339935,
      -108.383076,
      30.398221,
      -108.343965,
      30.376967,
      -108.201381,
      30.415196,
      -108.219793,
      30.445844,
      -108.173685,
      30.479270,
      -108.230143,
      30.532806,
      -108.190001,
      30.529081,
      -108.160252,
      30.560915,
      -108.171521,
      30.602961,
      -108.074088,
      30.675447,
      -108.110090,
      30.680564,
      -108.057912,
      30.651517,
      -108.038244,
      30.662162,
      -107.935088,
      30.739872,
      -107.960395,
      30.739872,
      -107.815375,
      29.937781,
      -107.815375
    ]);
    poly[50] = _TzPolygon([
      30.728570,
      -108.907589,
      30.689491,
      -108.867005,
      30.624622,
      -108.876403,
      30.587375,
      -108.762111,
      30.594338,
      -108.726843,
      30.556825,
      -108.677771,
      30.468183,
      -108.664397,
      30.465022,
      -108.603785,
      30.416670,
      -108.648543,
      30.340095,
      -108.622119,
      30.337395,
      -108.580057,
      30.283485,
      -108.541986,
      30.266254,
      -108.550290,
      30.298292,
      -108.620178,
      30.028856,
      -108.606895,
      29.952826,
      -108.628987,
      29.937781,
      -108.625878,
      29.937781,
      -108.907589
    ]);
    poly[51] = _TzPolygon([
      30.739872,
      -107.960395,
      30.811527,
      -107.983731,
      30.844713,
      -107.912255,
      30.805122,
      -107.929070,
      30.853452,
      -107.815375,
      30.739872,
      -107.815375
    ]);
    poly[52] = _TzPolygon([
      31.541963,
      -108.208443,
      31.333416,
      -108.208486,
      31.332579,
      -108.907589,
      31.541963,
      -108.907589
    ]);
    poly[53] = _TzPolygon([
      31.332504,
      -108.907589,
      31.332522,
      -108.756413,
      31.239548,
      -108.816833,
      31.239252,
      -108.879829,
      31.207691,
      -108.906609,
      31.219437,
      -108.860603,
      31.195032,
      -108.848264,
      31.192955,
      -108.805352,
      31.135466,
      -108.845643,
      31.103098,
      -108.769974,
      31.074432,
      -108.767906,
      31.052816,
      -108.729630,
      31.034138,
      -108.752808,
      31.033695,
      -108.683968,
      31.006334,
      -108.683456,
      31.004482,
      -108.803316,
      30.904154,
      -108.802248,
      30.906651,
      -108.907589
    ]);
    poly[54] = _TzPolygon([
      29.504712,
      -105.630949,
      29.504744,
      -105.633806,
      29.591481,
      -105.633176,
      29.591683,
      -105.681598,
      29.646829,
      -105.679455,
      29.649659,
      -105.848966,
      29.613394,
      -105.858715,
      29.654463,
      -105.866291,
      29.666227,
      -105.909903,
      29.700950,
      -105.909055,
      29.701067,
      -105.827056,
      29.747349,
      -105.817962,
      29.777500,
      -105.879554,
      29.783177,
      -105.805710,
      29.881759,
      -105.809753,
      29.881982,
      -105.767952,
      29.937781,
      -105.769718,
      29.937781,
      -105.630949
    ]);
    poly[55] = _TzPolygon([
      31.163909,
      -106.723162,
      31.160276,
      -106.745603,
      31.137931,
      -106.745776,
      31.119957,
      -106.821288,
      31.152077,
      -106.894815,
      31.085365,
      -106.894857,
      31.086114,
      -107.044916,
      30.954102,
      -107.046640,
      30.955263,
      -107.073691,
      30.886460,
      -107.100737,
      30.871980,
      -107.085933,
      30.864996,
      -107.157143,
      30.801074,
      -107.189321,
      30.805192,
      -107.238520,
      30.756192,
      -107.262858,
      30.836259,
      -107.350690,
      30.758402,
      -107.399507,
      30.758388,
      -107.525538,
      30.782971,
      -107.526230,
      30.719639,
      -107.615953,
      30.721180,
      -107.634799,
      30.764479,
      -107.629097,
      30.805867,
      -107.704097,
      30.825616,
      -107.695370,
      30.814186,
      -107.766258,
      30.859257,
      -107.801720,
      30.853452,
      -107.815375,
      31.541963,
      -107.815375,
      31.541963,
      -106.723162
    ]);
    poly[56] = _TzPolygon([
      31.163948,
      -106.723162,
      31.174292,
      -106.659025,
      31.151993,
      -106.614689,
      31.152545,
      -106.501491,
      31.187330,
      -106.507416,
      31.187602,
      -106.390768,
      31.159046,
      -106.396831,
      31.154706,
      -106.373991,
      31.187146,
      -106.366934,
      31.151251,
      -106.304914,
      31.037517,
      -106.272760,
      31.000450,
      -106.178335,
      30.952941,
      -106.193684,
      30.956392,
      -106.133256,
      30.985189,
      -106.132447,
      30.985119,
      -106.091190,
      30.898958,
      -106.075025,
      30.905024,
      -106.030028,
      30.896337,
      -106.054355,
      30.819754,
      -106.053611,
      30.819615,
      -105.880975,
      30.846669,
      -105.876796,
      30.846553,
      -105.819675,
      30.770464,
      -105.709927,
      30.656690,
      -105.728331,
      30.641962,
      -105.684838,
      30.505157,
      -105.685915,
      30.500295,
      -105.630949,
      30.309088,
      -105.630949,
      30.281711,
      -105.692197,
      30.239118,
      -105.680874,
      30.238848,
      -105.630949,
      30.190877,
      -105.630949,
      30.219026,
      -105.687126,
      30.049876,
      -105.905345,
      30.029513,
      -105.900957,
      30.028342,
      -105.772584,
      29.937781,
      -105.769718,
      29.937781,
      -106.723162
    ]);
    poly[57] = _TzPolygon([
      31.096774,
      -105.630949,
      31.166800,
      -105.773040,
      31.288640,
      -105.868940,
      31.318310,
      -105.938190,
      31.364890,
      -105.953960,
      31.398640,
      -106.080580,
      31.466260,
      -106.206680,
      31.541963,
      -106.256292,
      31.541963,
      -105.630949
    ]);
    poly[58] = _TzPolygon([
      26.729418,
      -105.630949,
      26.729418,
      -104.290028,
      26.725375,
      -104.286510,
      26.656494,
      -104.330316,
      26.604514,
      -104.434783,
      26.465779,
      -104.502852,
      26.414550,
      -104.501052,
      26.340468,
      -104.574451,
      26.380411,
      -104.593865,
      26.368825,
      -104.620117,
      26.391046,
      -104.654134,
      26.478283,
      -104.727430,
      26.508488,
      -104.809174,
      26.510015,
      -104.898922,
      26.473341,
      -104.963210,
      26.449248,
      -104.963102,
      26.454910,
      -105.000564,
      26.419309,
      -105.056632,
      26.521373,
      -105.101637,
      26.462020,
      -105.264634,
      26.487511,
      -105.279249,
      26.462255,
      -105.316769,
      26.478864,
      -105.352776,
      26.504531,
      -105.342611,
      26.534245,
      -105.368624,
      26.517496,
      -105.403561,
      26.527937,
      -105.470215,
      26.508686,
      -105.471556,
      26.542861,
      -105.496133,
      26.546552,
      -105.548990,
      26.683504,
      -105.619556,
      26.614753,
      -105.600891,
      26.615930,
      -105.630949
    ]);
    poly[59] = _TzPolygon([
      26.729418,
      -103.701283,
      26.725256,
      -103.699094,
      26.729418,
      -103.742509
    ]);
    poly[60] = _TzPolygon([
      27.531508,
      -104.538735,
      27.531508,
      -103.856280,
      27.311592,
      -103.876876,
      27.298294,
      -103.832123,
      27.213476,
      -103.798427,
      27.124730,
      -103.799398,
      27.077920,
      -103.752461,
      27.022522,
      -103.740834,
      26.934619,
      -103.852089,
      26.935813,
      -103.835919,
      26.896134,
      -103.851701,
      26.829573,
      -103.753968,
      26.729418,
      -103.701283,
      26.729418,
      -103.742509,
      26.753517,
      -103.993921,
      26.777517,
      -103.995129,
      26.774330,
      -104.033296,
      26.742827,
      -104.045792,
      26.777095,
      -104.227863,
      26.842300,
      -104.273037,
      26.799023,
      -104.315295,
      26.760715,
      -104.317265,
      26.729418,
      -104.290028,
      26.729418,
      -104.538735
    ]);
    poly[61] = _TzPolygon([
      27.048310,
      -103.446522,
      27.053160,
      -103.453794,
      27.182641,
      -103.530715,
      27.281639,
      -103.521528,
      27.281630,
      -103.462132,
      27.300733,
      -103.446522
    ]);
    poly[62] = _TzPolygon([
      27.425605,
      -103.446522,
      27.435105,
      -103.506027,
      27.531508,
      -103.496270,
      27.531508,
      -103.446522
    ]);
    poly[63] = _TzPolygon([
      28.333599,
      -103.736782,
      27.971357,
      -103.926692,
      27.957490,
      -103.877716,
      27.914023,
      -103.892886,
      27.950821,
      -103.954973,
      27.835309,
      -103.960002,
      27.826857,
      -103.900844,
      27.797553,
      -103.935650,
      27.739186,
      -103.881145,
      27.740557,
      -103.896692,
      27.656549,
      -103.897263,
      27.549433,
      -103.854601,
      27.531508,
      -103.856280,
      27.531508,
      -104.538735,
      28.333599,
      -104.538735
    ]);
    poly[64] = _TzPolygon([
      27.531508,
      -103.446522,
      27.531508,
      -103.496270,
      27.764753,
      -103.472662,
      27.780422,
      -103.493997,
      27.828017,
      -103.446522
    ]);
    poly[65] = _TzPolygon([
      27.857730,
      -103.446522,
      27.863472,
      -103.449645,
      27.867085,
      -103.506989,
      27.907812,
      -103.504929,
      27.879970,
      -103.537427,
      27.902833,
      -103.604406,
      27.864562,
      -103.634013,
      28.333599,
      -103.456882,
      28.333592,
      -103.446522
    ]);
    poly[66] = _TzPolygon([
      27.300733,
      -103.446522,
      27.411194,
      -103.356256,
      27.425605,
      -103.446522,
      27.828017,
      -103.446522,
      27.838502,
      -103.436063,
      27.857730,
      -103.446522,
      28.333592,
      -103.446522,
      28.332868,
      -102.436574,
      28.289561,
      -102.492944,
      28.147617,
      -102.412415,
      28.015507,
      -102.384525,
      27.973875,
      -102.354308,
      27.256342,
      -102.354308,
      27.262001,
      -102.365845,
      27.192400,
      -102.411886,
      27.148235,
      -102.354308,
      27.017671,
      -102.354308,
      27.026899,
      -102.442863,
      27.080604,
      -102.485629,
      27.160036,
      -102.640201,
      27.064374,
      -102.695282,
      27.083463,
      -102.728071,
      27.044990,
      -102.743664,
      27.048355,
      -102.782713,
      27.080955,
      -102.808391,
      26.873131,
      -102.799681,
      26.979568,
      -102.987568,
      26.963190,
      -102.988784,
      26.977935,
      -103.027151,
      26.973928,
      -103.334998,
      27.048310,
      -103.446522
    ]);
    poly[67] = _TzPolygon([
      27.973875,
      -102.354308,
      27.964631,
      -102.347599,
      28.005032,
      -102.282384,
      27.947977,
      -102.215023,
      27.897244,
      -102.254101,
      27.887145,
      -102.300301,
      27.848216,
      -102.265327,
      27.863911,
      -102.246937,
      27.851511,
      -102.201336,
      27.818064,
      -102.157031,
      27.692404,
      -102.199515,
      27.657046,
      -102.182351,
      27.695147,
      -102.136961,
      27.567978,
      -102.090081,
      27.420001,
      -101.939623,
      27.316847,
      -101.893455,
      27.247850,
      -101.971419,
      27.263171,
      -102.011111,
      27.236389,
      -102.034447,
      27.248705,
      -102.124223,
      27.278843,
      -102.144687,
      27.272775,
      -102.316681,
      27.231634,
      -102.303942,
      27.256342,
      -102.354308
    ]);
    poly[68] = _TzPolygon([
      27.148235,
      -102.354308,
      27.131519,
      -102.332516,
      27.011473,
      -102.294823,
      27.017671,
      -102.354308
    ]);
    poly[69] = _TzPolygon([
      29.705406,
      -104.538735,
      29.771360,
      -104.565900,
      29.920780,
      -104.679970,
      29.937781,
      -104.683579,
      29.937781,
      -104.538735
    ]);
    poly[70] = _TzPolygon([
      29.504712,
      -105.630949,
      29.502590,
      -105.442803,
      29.463725,
      -105.480325,
      29.409735,
      -105.454257,
      29.419804,
      -105.365860,
      29.400512,
      -105.349754,
      29.376317,
      -105.364724,
      29.363606,
      -105.320328,
      29.239636,
      -105.202371,
      29.204732,
      -105.140956,
      29.212777,
      -105.068600,
      29.184177,
      -105.045365,
      29.126619,
      -105.063648,
      29.101846,
      -105.107714,
      29.049377,
      -105.132393,
      28.977980,
      -105.061755,
      28.995968,
      -105.037765,
      28.983849,
      -104.954996,
      29.007072,
      -104.916317,
      28.973901,
      -104.896897,
      28.994769,
      -104.840074,
      28.776479,
      -104.662185,
      28.768787,
      -104.685402,
      28.735336,
      -104.672181,
      28.755700,
      -104.617408,
      28.726497,
      -104.617233,
      28.757786,
      -104.538735,
      28.333599,
      -104.538735,
      28.333599,
      -105.630949
    ]);
    poly[71] = _TzPolygon([
      28.590302,
      -103.992628,
      28.558964,
      -104.021831,
      28.600631,
      -104.058121,
      28.635285,
      -104.050598,
      28.677296,
      -104.077218,
      28.708047,
      -104.118999,
      28.678387,
      -104.144749,
      28.704321,
      -104.172031,
      28.686855,
      -104.184089,
      28.707638,
      -104.222449,
      28.648461,
      -104.260774,
      28.634995,
      -104.243302,
      28.583460,
      -104.293057,
      28.617322,
      -104.327302,
      28.595588,
      -104.348409,
      28.631426,
      -104.419645,
      28.684855,
      -104.370940,
      28.689200,
      -104.417721,
      28.753239,
      -104.465437,
      28.766659,
      -104.516474,
      28.757786,
      -104.538735,
      29.135690,
      -104.538735,
      29.135690,
      -103.992628
    ]);
    poly[72] = _TzPolygon([
      29.056642,
      -103.446522,
      29.135690,
      -103.530062,
      29.135690,
      -103.446522
    ]);
    poly[73] = _TzPolygon([
      28.590302,
      -103.992628,
      28.607326,
      -103.976764,
      28.605142,
      -103.926493,
      28.577443,
      -103.925458,
      28.603799,
      -103.841361,
      28.558061,
      -103.722494,
      28.602846,
      -103.705747,
      28.592591,
      -103.628556,
      28.512462,
      -103.643011,
      28.333599,
      -103.736782,
      28.333599,
      -103.992628
    ]);
    poly[74] = _TzPolygon([
      28.333599,
      -103.456882,
      28.361033,
      -103.446522,
      28.333599,
      -103.446522
    ]);
    poly[75] = _TzPolygon([
      28.463727,
      -103.446522,
      28.554505,
      -103.637501,
      28.590834,
      -103.591916,
      28.598195,
      -103.616046,
      28.639475,
      -103.596374,
      28.640639,
      -103.572659,
      28.611281,
      -103.557295,
      28.664998,
      -103.514512,
      28.776250,
      -103.446522
    ]);
    poly[76] = _TzPolygon([
      28.333599,
      -103.747051,
      28.554505,
      -103.637501,
      28.463727,
      -103.446522,
      28.361033,
      -103.446522,
      28.333599,
      -103.456882
    ]);
    poly[77] = _TzPolygon([
      29.705890,
      -104.538735,
      29.632490,
      -104.508280,
      29.519700,
      -104.337460,
      29.532840,
      -104.315550,
      29.484720,
      -104.213780,
      29.456250,
      -104.217590,
      29.393220,
      -104.165840,
      29.319800,
      -104.037710,
      29.265453,
      -103.783930,
      29.226715,
      -103.781918,
      29.221830,
      -103.742320,
      29.180810,
      -103.718490,
      29.156680,
      -103.650480,
      29.158000,
      -103.553640,
      29.135690,
      -103.530062,
      29.135690,
      -104.538735
    ]);
    poly[78] = _TzPolygon([
      29.937781,
      -103.446522,
      29.937781,
      -104.683579,
      30.049900,
      -104.707380,
      30.098380,
      -104.684960,
      30.234910,
      -104.706290,
      30.332840,
      -104.811610,
      30.375440,
      -104.816610,
      30.390310,
      -104.859480,
      30.419770,
      -104.847780,
      30.570530,
      -104.898870,
      30.605100,
      -104.924690,
      30.625300,
      -104.980750,
      30.663569,
      -104.917229,
      30.836004,
      -104.907465,
      31.541963,
      -104.914266,
      31.541963,
      -103.446522
    ]);
    poly[79] = _TzPolygon([
      30.500295,
      -105.630949,
      30.497250,
      -105.596524,
      30.393175,
      -105.607176,
      30.324669,
      -105.563671,
      30.331094,
      -105.624822,
      30.311720,
      -105.625060,
      30.309088,
      -105.630949
    ]);
    poly[80] = _TzPolygon([
      30.238848,
      -105.630949,
      30.238818,
      -105.625328,
      30.188135,
      -105.625477,
      30.190877,
      -105.630949
    ]);
    poly[81] = _TzPolygon([
      31.096774,
      -105.630949,
      31.541963,
      -105.630949,
      31.541963,
      -104.914266,
      30.836004,
      -104.907465,
      30.663569,
      -104.917229,
      30.629398,
      -104.979553,
      30.686090,
      -105.006590,
      30.685870,
      -105.061750,
      30.749859,
      -105.118055,
      30.752160,
      -105.161460,
      30.769830,
      -105.156270,
      30.792300,
      -105.195200,
      30.783400,
      -105.216410,
      30.805910,
      -105.215010,
      30.794280,
      -105.257470,
      30.825850,
      -105.290780,
      30.810850,
      -105.316670,
      30.840350,
      -105.339130,
      30.851990,
      -105.399860,
      30.889310,
      -105.400040,
      30.989680,
      -105.557190,
      31.083700,
      -105.604420
    ]);
    poly[82] = _TzPolygon([
      29.135690,
      -103.446522,
      29.135690,
      -103.016866,
      29.101332,
      -103.033514,
      29.060690,
      -103.100560,
      28.984610,
      -103.115960,
      28.972230,
      -103.163880,
      28.996100,
      -103.267240,
      28.976780,
      -103.285930,
      29.024490,
      -103.307560,
      29.020650,
      -103.338970,
      29.043120,
      -103.330430,
      29.018470,
      -103.360710,
      29.043450,
      -103.432580,
      29.056642,
      -103.446522
    ]);
    poly[83] = _TzPolygon([
      28.463727,
      -103.446522,
      28.448098,
      -103.413642,
      28.361033,
      -103.446522
    ]);
    poly[84] = _TzPolygon([
      28.333599,
      -102.436717,
      28.590584,
      -102.486892,
      28.582313,
      -102.505720,
      28.638292,
      -102.569600,
      28.670648,
      -102.552839,
      28.696971,
      -102.638040,
      29.064056,
      -102.404698,
      29.054158,
      -102.354308,
      28.333599,
      -102.354308
    ]);
    poly[85] = _TzPolygon([
      29.056642,
      -103.446522,
      29.043450,
      -103.432580,
      29.018470,
      -103.360710,
      29.046290,
      -103.342800,
      29.018760,
      -103.337160,
      29.022950,
      -103.306690,
      28.869254,
      -103.403650,
      28.833529,
      -103.396347,
      28.813180,
      -103.431663,
      28.786604,
      -103.446522
    ]);
    poly[86] = _TzPolygon([
      29.135690,
      -103.016866,
      29.179270,
      -102.995750,
      29.173600,
      -102.950690,
      29.219420,
      -102.912160,
      29.223440,
      -102.867660,
      29.260000,
      -102.906350,
      29.347860,
      -102.884150,
      29.358940,
      -102.839430,
      29.399390,
      -102.812750,
      29.410450,
      -102.833440,
      29.486280,
      -102.800850,
      29.522900,
      -102.808560,
      29.548280,
      -102.771280,
      29.595190,
      -102.768410,
      29.598250,
      -102.740200,
      29.633090,
      -102.742070,
      29.676720,
      -102.693660,
      29.743910,
      -102.675150,
      29.734130,
      -102.630600,
      29.771460,
      -102.568660,
      29.744650,
      -102.548180,
      29.783580,
      -102.517580,
      29.786640,
      -102.487020,
      29.761240,
      -102.387640,
      29.845560,
      -102.364450,
      29.852712,
      -102.354308,
      29.135690,
      -102.354308
    ]);
    poly[87] = _TzPolygon([
      29.621589,
      -101.262095,
      29.619206,
      -101.280274,
      29.572092,
      -101.289445,
      29.580233,
      -101.307423,
      29.653060,
      -101.303835,
      29.650452,
      -101.362276,
      29.699634,
      -101.371818,
      29.746460,
      -101.416220,
      29.771200,
      -101.401120,
      29.749890,
      -101.447700,
      29.789970,
      -101.461870,
      29.758070,
      -101.536210,
      29.812130,
      -101.544540,
      29.769680,
      -101.574740,
      29.754210,
      -101.645040,
      29.771120,
      -101.661680,
      29.780230,
      -101.804760,
      29.811750,
      -101.818080,
      29.787380,
      -101.823810,
      29.807890,
      -101.852560,
      29.782660,
      -101.929060,
      29.815910,
      -101.976470,
      29.796750,
      -101.987530,
      29.786450,
      -102.072900,
      29.803220,
      -102.143360,
      29.848520,
      -102.186640,
      29.840520,
      -102.223340,
      29.880030,
      -102.315570,
      29.852712,
      -102.354308,
      29.937781,
      -102.354308,
      29.937781,
      -101.262095
    ]);
    poly[88] = _TzPolygon([
      29.054158,
      -102.354308,
      28.984014,
      -101.997202,
      28.509111,
      -101.716974,
      28.388718,
      -101.262095,
      28.333599,
      -101.262095,
      28.333599,
      -102.354308
    ]);
    poly[89] = _TzPolygon([
      31.541963,
      -104.914266,
      32.000263,
      -104.918681,
      32.000391,
      -103.064631,
      36.500453,
      -103.041654,
      36.500439,
      -103.002461,
      37.000087,
      -103.002441,
      36.993128,
      -102.042127,
      37.738541,
      -102.041990,
      37.736435,
      -101.527054,
      37.958689,
      -101.536806,
      37.958689,
      -101.262095,
      31.541963,
      -101.262095
    ]);
    poly[90] = _TzPolygon([
      31.541963,
      -108.208443,
      31.783627,
      -108.208394,
      31.783777,
      -106.528064,
      31.748190,
      -106.489450,
      31.764530,
      -106.452090,
      31.732710,
      -106.382070,
      31.541963,
      -106.256511
    ]);
    poly[91] = _TzPolygon([
      35.167602,
      -109.999802,
      35.170948,
      -109.625725,
      35.257645,
      -109.624168,
      35.231499,
      -109.198677,
      35.167481,
      -109.199326,
      35.166000,
      -109.046017,
      34.785265,
      -109.045316,
      31.541963,
      -109.049753,
      31.541963,
      -109.999802
    ]);
    poly[92] = _TzPolygon([
      26.634176,
      -109.999802,
      26.654086,
      -110.023243,
      26.887078,
      -110.138212,
      26.973159,
      -110.404644,
      27.085607,
      -110.549517,
      27.161088,
      -110.747029,
      27.287664,
      -110.826696,
      27.489820,
      -110.818454,
      27.639274,
      -110.858023,
      27.652650,
      -110.972247,
      27.781493,
      -111.250195,
      27.753843,
      -111.392089,
      27.808468,
      -111.529387,
      27.870635,
      -111.584902,
      27.950008,
      -111.615637,
      28.000000,
      -111.612786,
      28.000000,
      -109.999802
    ]);
    poly[93] = _TzPolygon([
      28.000000,
      -109.999802,
      28.000000,
      -111.612786,
      28.036767,
      -111.610689,
      28.111808,
      -111.567429,
      28.149497,
      -111.588820,
      28.233032,
      -111.663923,
      28.313718,
      -111.871268,
      28.485754,
      -111.967032,
      28.595942,
      -112.100765,
      28.532976,
      -112.178086,
      28.463692,
      -112.123679,
      28.376445,
      -112.104044,
      28.292679,
      -112.124144,
      28.221931,
      -112.177706,
      28.176310,
      -112.255965,
      28.162148,
      -112.345842,
      28.181032,
      -112.436117,
      28.230172,
      -112.510459,
      28.341794,
      -112.568834,
      28.467195,
      -112.545488,
      28.460757,
      -112.593460,
      29.400000,
      -112.880000,
      31.700000,
      -114.623000,
      31.812000,
      -114.755000,
      31.819726,
      -114.815697,
      31.864083,
      -114.843193,
      31.867601,
      -114.910636,
      31.890713,
      -114.942025,
      31.921465,
      -114.965560,
      32.177995,
      -114.975318,
      32.245174,
      -115.053022,
      32.338794,
      -114.966592,
      32.481751,
      -114.935118,
      32.492249,
      -114.881545,
      32.473424,
      -114.848304,
      32.494077,
      -114.813581,
      31.332239,
      -111.074825,
      31.332370,
      -109.999802
    ]);
    poly[94] = _TzPolygon([
      32.494077,
      -114.802170,
      32.494077,
      -109.999802,
      31.332316,
      -109.999802,
      31.332214,
      -111.044352
    ]);
    poly[95] = _TzPolygon([
      32.494077,
      -117.526144,
      32.523540,
      -117.519113,
      32.590387,
      -117.464899,
      32.567155,
      -117.338623,
      32.494077,
      -117.338623
    ]);
    poly[96] = _TzPolygon([
      32.567155,
      -117.338623,
      32.553400,
      -117.263858,
      32.527498,
      -117.239059,
      32.634105,
      -115.834170,
      32.494077,
      -115.834170,
      32.494077,
      -117.338623
    ]);
    poly[97] = _TzPolygon([
      33.860230,
      -115.834170,
      33.860230,
      -114.521907,
      33.856915,
      -114.530169,
      33.814693,
      -114.528190,
      33.707365,
      -114.494090,
      33.672877,
      -114.531799,
      33.659529,
      -114.513934,
      33.590246,
      -114.540740,
      33.552743,
      -114.524246,
      33.499417,
      -114.591601,
      33.419683,
      -114.638815,
      33.404830,
      -114.725598,
      33.353167,
      -114.698053,
      33.301714,
      -114.731136,
      33.259266,
      -114.672236,
      33.088846,
      -114.706820,
      33.032735,
      -114.661775,
      33.049023,
      -114.645142,
      33.026980,
      -114.616547,
      33.022000,
      -114.509589,
      32.971920,
      -114.493121,
      32.968357,
      -114.467703,
      32.844391,
      -114.469154,
      32.794697,
      -114.530232,
      32.757160,
      -114.526846,
      32.728646,
      -114.616324,
      32.745539,
      -114.701322,
      32.718655,
      -114.719960,
      32.634105,
      -115.834170
    ]);
    poly[98] = _TzPolygon([
      32.634105,
      -115.834170,
      32.718655,
      -114.719960,
      32.643121,
      -114.765186,
      32.622349,
      -114.810505,
      32.557377,
      -114.812952,
      32.556393,
      -114.791494,
      32.494077,
      -114.812235,
      32.494077,
      -115.834170
    ]);
    poly[99] = _TzPolygon([
      33.860230,
      -114.521907,
      33.867817,
      -114.502999,
      33.900790,
      -114.526019,
      33.903155,
      -114.508138,
      33.938167,
      -114.534388,
      34.021841,
      -114.438544,
      34.107010,
      -114.416720,
      34.144165,
      -114.329716,
      33.860230,
      -114.329716
    ]);
  }
}

class _Initializer2 {
  static void _init() {
    poly[100] = _TzPolygon([
      34.446382,
      -114.329716,
      34.450197,
      -114.335722,
      34.456905,
      -114.385776,
      34.528222,
      -114.380706,
      34.593823,
      -114.435934,
      34.710430,
      -114.469869,
      34.766647,
      -114.552212,
      34.874225,
      -114.634609,
      35.024760,
      -114.637787,
      35.068942,
      -114.602813,
      35.102257,
      -114.646277,
      35.128552,
      -114.579302,
      35.185522,
      -114.569735,
      35.226383,
      -114.577646,
      35.226383,
      -114.329716
    ]);
    poly[101] = _TzPolygon([
      35.226383,
      -114.329716,
      35.226383,
      -114.577646,
      35.341945,
      -114.600019,
      35.497924,
      -114.678812,
      35.606492,
      -114.653150,
      35.651132,
      -114.689197,
      35.806757,
      -114.711442,
      35.850909,
      -114.705164,
      35.872349,
      -114.662208,
      35.943217,
      -114.730521,
      36.008333,
      -114.743174,
      36.026910,
      -114.723234,
      36.090705,
      -114.753638,
      36.142306,
      -114.631716,
      36.150956,
      -114.511721,
      36.128796,
      -114.502172,
      36.125970,
      -114.446605,
      36.147371,
      -114.405475,
      36.143114,
      -114.372106,
      36.102724,
      -114.329716
    ]);
    poly[102] = _TzPolygon([
      34.446382,
      -114.329716,
      34.348447,
      -114.175550,
      34.261939,
      -114.130782,
      34.259526,
      -114.165133,
      34.187081,
      -114.229223,
      34.138304,
      -114.329716
    ]);
    poly[103] = _TzPolygon([
      37.000667,
      -112.825262,
      37.000191,
      -114.050052,
      37.958689,
      -114.048396,
      37.958689,
      -112.825262
    ]);
    poly[104] = _TzPolygon([
      37.958689,
      -114.043838,
      36.196659,
      -114.043982,
      36.111576,
      -114.123144,
      36.023862,
      -114.154130,
      36.020193,
      -114.252651,
      36.059494,
      -114.315557,
      36.082443,
      -114.308430,
      36.102724,
      -114.329716,
      37.958689,
      -114.329716
    ]);
    poly[105] = _TzPolygon([
      37.000667,
      -112.825262,
      37.001241,
      -111.350160,
      36.990246,
      -111.402107,
      36.933144,
      -111.320808,
      36.966995,
      -111.376945,
      36.946236,
      -111.395546,
      36.954151,
      -111.438675,
      36.874314,
      -111.425088,
      36.873032,
      -111.557213,
      36.841702,
      -111.545898,
      36.855499,
      -111.600449,
      36.714771,
      -111.701080,
      36.670296,
      -111.685768,
      36.685810,
      -111.724724,
      36.613300,
      -111.745621,
      36.565331,
      -111.797348,
      36.551251,
      -111.784210,
      36.551289,
      -111.809410,
      36.519093,
      -111.811783,
      36.504170,
      -111.841583,
      36.450172,
      -111.819389,
      36.424374,
      -111.858337,
      36.393040,
      -111.828102,
      36.368607,
      -111.873871,
      36.223370,
      -111.801117,
      36.206963,
      -111.759529,
      36.008282,
      -111.760162,
      35.979126,
      -111.705681,
      35.848061,
      -111.722649,
      35.825745,
      -111.688690,
      35.746346,
      -111.689018,
      35.746018,
      -111.741722,
      35.672962,
      -111.740837,
      35.672699,
      -111.640633,
      35.641388,
      -111.640778,
      35.640183,
      -111.553062,
      35.758530,
      -111.531952,
      35.758414,
      -111.320808,
      35.226383,
      -111.320808,
      35.226383,
      -112.825262
    ]);
    poly[106] = _TzPolygon([
      35.809635,
      -110.146202,
      35.809341,
      -110.100975,
      35.782558,
      -110.102875,
      35.792759,
      -110.083420,
      35.702568,
      -110.081573,
      35.692028,
      -110.213905,
      35.719730,
      -110.236206
    ]);
    poly[107] = _TzPolygon([
      36.430649,
      -111.320808,
      36.430649,
      -109.999802,
      35.167602,
      -109.999802,
      35.156540,
      -111.236458,
      35.497009,
      -111.242088,
      35.572510,
      -111.268478,
      35.613194,
      -111.317871,
      35.758411,
      -111.315582,
      35.758414,
      -111.320808
    ]);
    poly[108] = _TzPolygon([
      36.933975,
      -111.320808,
      36.871849,
      -111.231049,
      36.905846,
      -111.320808,
      36.933144,
      -111.320808
    ]);
    poly[109] = _TzPolygon([
      21.090935,
      -105.533986,
      20.931792,
      -105.323035,
      20.870667,
      -105.372315,
      20.854136,
      -105.350380,
      20.949437,
      -105.232058,
      20.953800,
      -105.109835,
      20.973182,
      -105.096655,
      20.986428,
      -105.001698,
      20.952914,
      -104.957415,
      20.909026,
      -104.968822,
      20.909171,
      -105.031613,
      20.934386,
      -105.047440,
      20.919434,
      -105.098641,
      20.857415,
      -105.160563,
      20.767711,
      -105.173397,
      20.777171,
      -105.196961,
      20.747351,
      -105.239916,
      20.703907,
      -105.242773,
      20.647539,
      -105.300929,
      20.624302,
      -105.403923,
      20.626920,
      -105.572490,
      20.685482,
      -105.883254,
      20.799501,
      -105.835389,
      20.866533,
      -105.727601
    ]);
    poly[110] = _TzPolygon([
      20.163373,
      -104.519534,
      20.163373,
      -105.788186,
      20.290646,
      -105.884183,
      20.410648,
      -105.908205,
      20.488740,
      -105.891141,
      20.554270,
      -105.843279,
      20.685482,
      -105.883254,
      20.626920,
      -105.572490,
      20.634775,
      -105.330481,
      20.703907,
      -105.242773,
      20.747351,
      -105.239916,
      20.777171,
      -105.196961,
      20.767711,
      -105.173397,
      20.887167,
      -105.141857,
      20.931471,
      -105.080337,
      20.909508,
      -104.967244,
      20.946341,
      -104.900526,
      21.020009,
      -104.838099,
      21.012288,
      -104.729989,
      20.983154,
      -104.729363,
      20.943841,
      -104.681000,
      20.924152,
      -104.556922,
      20.867750,
      -104.519534
    ]);
    poly[111] = _TzPolygon([
      20.867750,
      -104.519534,
      21.436715,
      -104.519534,
      21.436715,
      -103.729129,
      21.425431,
      -103.720895,
      21.410304,
      -103.764403,
      21.388433,
      -103.767333,
      21.374055,
      -103.741332,
      21.336709,
      -103.749352,
      21.281041,
      -103.820346,
      21.248435,
      -103.819391,
      21.226490,
      -103.898363,
      21.262547,
      -103.931057,
      21.234572,
      -103.924020,
      21.256328,
      -103.973454,
      21.194673,
      -104.027969,
      21.205413,
      -104.052838,
      21.186773,
      -104.068586,
      21.205361,
      -104.085659,
      21.176611,
      -104.219398,
      21.118601,
      -104.210860,
      21.027332,
      -104.242713,
      20.936373,
      -104.206588,
      20.887796,
      -104.290916,
      20.845496,
      -104.295416,
      20.840931,
      -104.361768,
      20.811644,
      -104.350402,
      20.784073,
      -104.375892,
      20.798098,
      -104.328322,
      20.770795,
      -104.297617,
      20.783481,
      -104.282856,
      20.713434,
      -104.241816,
      20.603221,
      -104.254146,
      20.628993,
      -104.282011,
      20.689157,
      -104.288487,
      20.838187,
      -104.499938
    ]);
    poly[112] = _TzPolygon([
      23.280975,
      -105.661076,
      23.280975,
      -105.473049,
      23.124277,
      -105.473049,
      23.128012,
      -105.501978,
      23.098887,
      -105.554309,
      23.141768,
      -105.643991,
      23.235581,
      -105.630317,
      23.276479,
      -105.643208
    ]);
    poly[113] = _TzPolygon([
      25.020496,
      -107.061817,
      25.025255,
      -107.063571,
      25.053139,
      -107.129892,
      25.125236,
      -107.127206,
      25.125236,
      -107.061817
    ]);
    poly[114] = _TzPolygon([
      23.280975,
      -105.661076,
      23.287520,
      -105.687084,
      23.340569,
      -105.694005,
      23.374897,
      -105.730690,
      23.420171,
      -105.700289,
      23.445206,
      -105.738865,
      23.474840,
      -105.723445,
      23.502959,
      -105.760338,
      23.556465,
      -105.769302,
      23.611029,
      -105.811644,
      23.603256,
      -105.845516,
      23.583695,
      -105.845186,
      23.590394,
      -105.884318,
      23.552645,
      -105.892655,
      23.588270,
      -105.908905,
      23.684136,
      -105.926634,
      23.739399,
      -105.906093,
      23.840742,
      -105.961265,
      23.908585,
      -105.953662,
      23.875243,
      -105.867241,
      23.899296,
      -105.857588,
      23.943921,
      -105.899919,
      23.948026,
      -105.945415,
      23.997534,
      -105.912136,
      24.043383,
      -105.998720,
      24.114390,
      -105.989724,
      24.203106,
      -106.034856,
      24.203106,
      -105.473049,
      23.280975,
      -105.473049
    ]);
    poly[115] = _TzPolygon([
      25.020496,
      -107.061817,
      24.909908,
      -107.021053,
      24.928241,
      -107.000575,
      24.880536,
      -106.934508,
      24.866624,
      -106.927080,
      24.859024,
      -106.951418,
      24.820917,
      -106.930662,
      24.822955,
      -106.865853,
      24.665262,
      -106.705948,
      24.528979,
      -106.645461,
      24.524897,
      -106.622607,
      24.506503,
      -106.630067,
      24.472711,
      -106.560016,
      24.414566,
      -106.601588,
      24.286984,
      -106.517093,
      24.277857,
      -106.469655,
      24.301941,
      -106.367545,
      24.355695,
      -106.336330,
      24.374755,
      -106.268869,
      24.338786,
      -106.151760,
      24.271389,
      -106.075843,
      24.220201,
      -106.069948,
      24.220850,
      -106.043883,
      24.203106,
      -106.034856,
      24.203106,
      -107.061817
    ]);
    poly[116] = _TzPolygon([
      21.565542,
      -103.884281,
      21.581986,
      -103.919235,
      21.618676,
      -103.907699,
      21.641914,
      -103.930249,
      21.697818,
      -103.887725,
      21.727744,
      -103.895913,
      21.743381,
      -103.931828,
      21.771802,
      -103.923482,
      21.790451,
      -104.130382,
      21.809841,
      -104.161748,
      21.850772,
      -104.197000,
      21.871319,
      -104.172233,
      21.891478,
      -104.201041,
      21.963393,
      -104.173699,
      21.985420,
      -104.193319,
      21.966938,
      -104.246005,
      22.002761,
      -104.294077,
      21.975369,
      -104.326863,
      21.976038,
      -104.371164,
      22.102564,
      -104.373191,
      22.245359,
      -104.328679,
      22.298801,
      -104.284496,
      22.356366,
      -104.285740,
      22.358845,
      -104.289479,
      22.358845,
      -103.884281
    ]);
    poly[117] = _TzPolygon([
      22.358845,
      -104.524205,
      22.358845,
      -104.485358,
      22.351617,
      -104.481210,
      22.345099,
      -104.506377
    ]);
    poly[118] = _TzPolygon([
      22.565595,
      -104.678665,
      22.568718,
      -104.759812,
      22.648711,
      -104.793992,
      22.634249,
      -104.814677,
      22.648327,
      -104.858397,
      22.607070,
      -104.862493,
      22.498727,
      -104.987912,
      22.585672,
      -105.007553,
      22.656498,
      -105.072368,
      22.678414,
      -105.068422,
      22.737409,
      -104.892720,
      22.748538,
      -104.915637,
      22.819781,
      -104.918389,
      22.813605,
      -104.958967,
      22.836049,
      -104.988405,
      22.976983,
      -105.003139,
      22.941330,
      -105.323570,
      23.060575,
      -105.350471,
      23.116897,
      -105.415892,
      23.124277,
      -105.473049,
      23.280975,
      -105.473049,
      23.280975,
      -104.678665
    ]);
    poly[119] = _TzPolygon([
      22.564336,
      -104.678665,
      22.565262,
      -104.669998,
      22.462155,
      -104.655292,
      22.460508,
      -104.602561,
      22.411955,
      -104.593085,
      22.358845,
      -104.524247,
      22.358845,
      -104.678665
    ]);
    poly[120] = _TzPolygon([
      22.358845,
      -104.485358,
      22.376324,
      -104.495390,
      22.421659,
      -104.371512,
      22.386405,
      -104.350041,
      22.365131,
      -104.293127,
      22.358845,
      -104.292364
    ]);
    poly[121] = _TzPolygon([
      22.358845,
      -103.884281,
      22.358845,
      -104.289479,
      22.401315,
      -104.353533,
      22.472989,
      -104.296126,
      22.537397,
      -104.325824,
      22.586203,
      -104.261407,
      22.645610,
      -104.289966,
      22.736539,
      -104.266344,
      22.779250,
      -104.221141,
      22.757995,
      -104.181975,
      22.766617,
      -104.080475,
      22.810311,
      -104.111485,
      22.905118,
      -104.112644,
      22.924830,
      -104.153321,
      22.982445,
      -104.173614,
      23.128408,
      -104.172132,
      23.182214,
      -104.129023,
      23.280975,
      -104.118616,
      23.280975,
      -103.884281
    ]);
    poly[122] = _TzPolygon([
      21.565542,
      -103.884281,
      21.552365,
      -103.856272,
      21.524750,
      -103.859925,
      21.493047,
      -103.823713,
      21.498381,
      -103.774129,
      21.436715,
      -103.729129,
      21.436715,
      -103.884281
    ]);
    poly[123] = _TzPolygon([
      23.280975,
      -104.118616,
      23.351205,
      -104.111215,
      23.463493,
      -104.065977,
      23.556983,
      -103.925313,
      23.589175,
      -103.921469,
      23.579828,
      -103.890087,
      23.601871,
      -103.906867,
      23.592965,
      -103.884281,
      23.280975,
      -103.884281
    ]);
    poly[124] = _TzPolygon([
      25.125236,
      -102.295513,
      25.115916,
      -102.463325,
      24.999515,
      -102.446763,
      25.066637,
      -102.669694,
      25.008322,
      -102.628885,
      24.978648,
      -102.642955,
      24.978818,
      -102.672984,
      24.942752,
      -102.673061,
      24.902221,
      -102.566236,
      24.709721,
      -102.512182,
      24.428014,
      -102.480267,
      24.411169,
      -102.606593,
      24.373972,
      -102.699904,
      24.376983,
      -102.756654,
      24.406248,
      -102.788852,
      24.384692,
      -102.831736,
      24.461156,
      -102.891880,
      24.428500,
      -102.900148,
      24.457704,
      -102.967440,
      24.433257,
      -102.983573,
      24.466501,
      -103.043150,
      24.401627,
      -103.098527,
      24.435198,
      -103.165259,
      24.417103,
      -103.222833,
      24.447254,
      -103.253532,
      24.428837,
      -103.282645,
      24.430488,
      -103.419332,
      24.332600,
      -103.448340,
      24.287964,
      -103.506755,
      24.286371,
      -103.568350,
      24.193789,
      -103.559536,
      24.117465,
      -103.622007,
      24.110293,
      -103.635969,
      24.149326,
      -103.660361,
      24.021974,
      -103.813274,
      24.007022,
      -103.872386,
      23.964909,
      -103.818360,
      23.874616,
      -103.853112,
      23.807700,
      -103.816198,
      23.752679,
      -103.862295,
      23.679570,
      -103.850983,
      23.676516,
      -103.785059,
      23.630855,
      -103.793542,
      23.613649,
      -103.811302,
      23.640082,
      -103.849178,
      23.628970,
      -103.877429,
      23.592271,
      -103.882522,
      23.592965,
      -103.884281,
      25.125236,
      -103.884281
    ]);
    poly[125] = _TzPolygon(
        [22.449519, -99.252157, 22.477554, -99.263872, 22.477554, -99.252157]);
    poly[126] = _TzPolygon([
      24.512808,
      -100.773835,
      24.556186,
      -100.799934,
      24.583918,
      -100.902234,
      24.542684,
      -100.958793,
      24.591185,
      -101.080495,
      24.623362,
      -101.127620,
      24.775168,
      -101.215039,
      24.813353,
      -101.342142,
      24.736757,
      -101.461639,
      24.758983,
      -101.622270,
      24.800704,
      -101.640767,
      24.789664,
      -101.609012,
      24.835563,
      -101.601261,
      24.860793,
      -101.656332,
      24.840013,
      -101.685149,
      24.875535,
      -101.773463,
      25.017624,
      -101.848810,
      25.125236,
      -102.295513,
      25.125236,
      -100.773835
    ]);
    poly[127] = _TzPolygon([
      22.729605,
      -100.012996,
      22.725925,
      -100.022343,
      22.751265,
      -100.094060,
      22.824394,
      -100.029384,
      22.917892,
      -100.044239,
      22.916714,
      -100.110384,
      22.975719,
      -100.110847,
      22.968757,
      -100.089421,
      23.013091,
      -100.097455,
      22.997357,
      -100.071656,
      23.039844,
      -100.062097,
      23.063095,
      -100.012996
    ]);
    poly[128] = _TzPolygon([
      23.064888,
      -100.012996,
      23.095942,
      -100.069029,
      23.121156,
      -100.068743,
      23.125990,
      -100.115597,
      23.231532,
      -100.103811,
      23.250443,
      -100.228242,
      23.307108,
      -100.206322,
      23.310328,
      -100.278379,
      23.260916,
      -100.306212,
      23.265317,
      -100.374235,
      23.189021,
      -100.363793,
      23.195604,
      -100.323538,
      23.162665,
      -100.331774,
      23.194326,
      -100.479881,
      23.366237,
      -100.456791,
      23.421147,
      -100.517143,
      23.528028,
      -100.494347,
      23.511158,
      -100.458950,
      23.567026,
      -100.472450,
      23.568178,
      -100.491747,
      23.696636,
      -100.446996,
      23.688910,
      -100.466503,
      23.736296,
      -100.497707,
      23.798710,
      -100.497605,
      23.801395,
      -100.500858,
      23.801395,
      -100.012996
    ]);
    poly[129] = _TzPolygon([
      23.064888,
      -100.012996,
      23.063921,
      -100.011252,
      23.063095,
      -100.012996
    ]);
    poly[130] = _TzPolygon([
      22.729605,
      -100.012996,
      22.751667,
      -99.956958,
      22.749862,
      -99.882397,
      22.730557,
      -99.842819,
      22.678435,
      -99.847923,
      22.660766,
      -99.814029,
      22.659608,
      -99.724085,
      22.681125,
      -99.682535,
      22.641220,
      -99.560638,
      22.612765,
      -99.534692,
      22.620869,
      -99.494536,
      22.744140,
      -99.544327,
      22.742053,
      -99.479220,
      22.663616,
      -99.442053,
      22.670268,
      -99.385553,
      22.629078,
      -99.373200,
      22.634888,
      -99.329618,
      22.477554,
      -99.263872,
      22.477554,
      -100.012996
    ]);
    poly[131] = _TzPolygon([
      24.512808,
      -100.773835,
      24.460435,
      -100.742324,
      24.491517,
      -100.711201,
      24.401300,
      -100.603533,
      24.225979,
      -100.633068,
      24.223929,
      -100.585085,
      24.178193,
      -100.593516,
      24.173944,
      -100.613400,
      24.139897,
      -100.516820,
      24.118521,
      -100.538676,
      24.071443,
      -100.523757,
      23.919641,
      -100.562411,
      23.888384,
      -100.539837,
      23.842200,
      -100.550303,
      23.801395,
      -100.500858,
      23.801395,
      -100.773835
    ]);
    poly[132] = _TzPolygon([
      25.125236,
      -97.595507,
      25.125236,
      -97.228502,
      24.979410,
      -97.305319,
      25.041955,
      -97.517400
    ]);
    poly[133] = _TzPolygon([
      22.449519,
      -99.252157,
      25.125236,
      -99.252157,
      25.125236,
      -97.595507,
      25.041955,
      -97.517400,
      24.979410,
      -97.305319,
      24.662461,
      -97.410828,
      24.314511,
      -97.486963,
      23.421640,
      -97.544067,
      22.877531,
      -97.544115,
      22.560543,
      -97.636164,
      22.420218,
      -97.621037,
      22.313607,
      -97.574497,
      22.260351,
      -97.792415,
      22.206966,
      -97.844888,
      22.239131,
      -97.917282,
      22.293892,
      -97.956708,
      22.297432,
      -98.000324,
      22.328050,
      -97.970510,
      22.350864,
      -97.990020,
      22.347161,
      -98.072781,
      22.395303,
      -98.113536,
      22.423869,
      -98.187485,
      22.469559,
      -98.194995,
      22.471657,
      -98.247931,
      22.447291,
      -98.272937,
      22.468562,
      -98.316823,
      22.390740,
      -98.318781,
      22.388703,
      -98.352272,
      22.407446,
      -98.355225,
      22.389284,
      -98.387809,
      22.424293,
      -98.388644,
      22.399927,
      -98.409543,
      22.432864,
      -98.433766,
      22.412192,
      -98.460959,
      22.429472,
      -98.505040,
      22.393945,
      -98.574935,
      22.414524,
      -98.638156,
      22.366313,
      -98.758935,
      22.355094,
      -98.889997,
      22.392775,
      -98.931973,
      22.415269,
      -99.060399,
      22.412862,
      -99.236839
    ]);
    poly[134] = _TzPolygon([
      26.729418,
      -99.215680,
      26.729418,
      -99.077668,
      26.400223,
      -99.077668,
      26.397977,
      -99.084530,
      26.432890,
      -99.113680,
      26.475480,
      -99.091690,
      26.499260,
      -99.104380,
      26.541680,
      -99.171040,
      26.724800,
      -99.208790
    ]);
    poly[135] = _TzPolygon([
      26.729418,
      -101.262095,
      26.729418,
      -99.630095,
      26.670365,
      -99.659164,
      26.664596,
      -99.538335,
      26.596566,
      -99.396825,
      26.351301,
      -99.430946,
      26.304799,
      -99.401236,
      26.329270,
      -99.364150,
      26.306358,
      -99.333667,
      26.252822,
      -99.332448,
      26.139388,
      -99.401278,
      25.993512,
      -99.334251,
      25.914420,
      -99.332288,
      25.925399,
      -99.312818,
      25.898677,
      -99.296170,
      25.916133,
      -99.265911,
      25.887817,
      -99.241249,
      25.895526,
      -99.191334,
      25.978378,
      -99.171397,
      25.999519,
      -99.194641,
      26.073133,
      -99.190903,
      26.053597,
      -99.128094,
      26.068582,
      -99.131355,
      26.071799,
      -99.077668,
      25.125236,
      -99.077668,
      25.125236,
      -101.262095
    ]);
    poly[136] = _TzPolygon([
      28.176561,
      -100.169882,
      28.190920,
      -100.208560,
      28.232910,
      -100.220950,
      28.276300,
      -100.291990,
      28.311900,
      -100.286370,
      28.333599,
      -100.302489,
      28.333599,
      -100.169882
    ]);
    poly[137] = _TzPolygon([
      28.333599,
      -101.262095,
      28.333098,
      -100.596915,
      28.231953,
      -100.629959,
      28.226969,
      -100.669642,
      28.134438,
      -100.641997,
      28.119405,
      -100.545554,
      28.066741,
      -100.591912,
      28.028624,
      -100.538123,
      27.998503,
      -100.546631,
      28.005144,
      -100.571968,
      27.974393,
      -100.580259,
      27.978203,
      -100.601954,
      27.821439,
      -100.658516,
      27.730947,
      -100.286180,
      27.684599,
      -100.350610,
      27.392685,
      -100.421909,
      27.371055,
      -100.385777,
      27.340108,
      -100.399729,
      27.245413,
      -100.283131,
      27.245470,
      -100.252726,
      27.218432,
      -100.252757,
      27.218465,
      -100.182026,
      27.137164,
      -100.171862,
      27.137166,
      -100.169882,
      26.729418,
      -100.169882,
      26.729418,
      -101.262095
    ]);
    poly[138] = _TzPolygon([
      26.729418,
      -99.215680,
      26.745750,
      -99.240050,
      26.843320,
      -99.268680,
      26.878630,
      -99.328470,
      26.919370,
      -99.328460,
      26.937680,
      -99.384490,
      27.010210,
      -99.408580,
      27.021600,
      -99.445830,
      27.175660,
      -99.426200,
      27.250230,
      -99.441660,
      27.263230,
      -99.491410,
      27.300420,
      -99.491570,
      27.316850,
      -99.538070,
      27.339220,
      -99.504230,
      27.479380,
      -99.478720,
      27.498160,
      -99.528100,
      27.531508,
      -99.521371,
      27.531508,
      -99.077668,
      26.729418,
      -99.077668
    ]);
    poly[139] = _TzPolygon([
      27.137166,
      -100.169882,
      27.137215,
      -100.121473,
      27.101066,
      -100.121314,
      27.101117,
      -100.101018,
      27.028904,
      -100.121326,
      27.028914,
      -100.090843,
      27.008686,
      -100.090800,
      27.024427,
      -100.012000,
      27.008824,
      -99.959846,
      26.956230,
      -100.019211,
      26.846425,
      -99.968660,
      26.873775,
      -99.936141,
      26.858309,
      -99.929156,
      26.888278,
      -99.849232,
      26.871581,
      -99.804021,
      26.886714,
      -99.810009,
      26.912156,
      -99.744346,
      26.890694,
      -99.630806,
      26.829475,
      -99.580842,
      26.729418,
      -99.630095,
      26.729418,
      -100.169882
    ]);
    poly[140] = _TzPolygon([
      28.176561,
      -100.169882,
      28.144840,
      -100.084440,
      27.993510,
      -99.990440,
      27.980620,
      -99.931380,
      27.941500,
      -99.937500,
      27.899070,
      -99.893360,
      27.797560,
      -99.876260,
      27.763150,
      -99.835870,
      27.774450,
      -99.813340,
      27.657690,
      -99.710500,
      27.659220,
      -99.667100,
      27.626700,
      -99.639120,
      27.639690,
      -99.596020,
      27.603060,
      -99.583540,
      27.614400,
      -99.554800,
      27.566550,
      -99.511810,
      27.531508,
      -99.520157,
      27.531508,
      -100.169882
    ]);
    poly[141] = _TzPolygon([
      25.927327,
      -98.584548,
      25.927327,
      -97.999794,
      25.439381,
      -97.999794,
      25.425929,
      -98.058666,
      25.446437,
      -98.058691,
      25.445959,
      -98.239454,
      25.504373,
      -98.262637,
      25.460292,
      -98.328027,
      25.458482,
      -98.374614,
      25.489787,
      -98.377552,
      25.496790,
      -98.432247,
      25.489362,
      -98.581751
    ]);
    poly[142] = _TzPolygon([
      26.060184,
      -97.999794,
      26.067050,
      -98.027660,
      26.041290,
      -98.038840,
      26.036340,
      -98.076550,
      26.071180,
      -98.080420,
      26.074200,
      -98.132130,
      26.049080,
      -98.146520,
      26.075270,
      -98.176840,
      26.053390,
      -98.194920,
      26.104460,
      -98.288210,
      26.120910,
      -98.266400,
      26.103180,
      -98.305760,
      26.166160,
      -98.335910,
      26.157730,
      -98.386520,
      26.200430,
      -98.443820,
      26.224440,
      -98.444580,
      26.219890,
      -98.481310,
      26.200900,
      -98.481830,
      26.235780,
      -98.522400,
      26.225440,
      -98.534880,
      26.248120,
      -98.556250,
      26.224140,
      -98.561470,
      26.256810,
      -98.583140,
      26.259950,
      -98.622920,
      26.236710,
      -98.670100,
      26.262830,
      -98.680990,
      26.272730,
      -98.719880,
      26.287280,
      -98.702910,
      26.295680,
      -98.750560,
      26.330910,
      -98.750320,
      26.330680,
      -98.789100,
      26.368080,
      -98.805540,
      26.353160,
      -98.896530,
      26.394360,
      -98.926280,
      26.369380,
      -98.943610,
      26.401170,
      -98.973870,
      26.392330,
      -99.011250,
      26.413510,
      -99.037080,
      26.400223,
      -99.077668,
      26.729418,
      -99.077668,
      26.729418,
      -97.999794
    ]);
    poly[143] = _TzPolygon([
      26.071799,
      -99.077668,
      26.104057,
      -99.023971,
      25.968323,
      -98.900752,
      26.047649,
      -98.823226,
      26.017918,
      -98.585126,
      25.927327,
      -98.584548,
      25.927327,
      -99.077668
    ]);
    poly[144] = _TzPolygon([
      26.060184,
      -97.999794,
      26.729418,
      -97.999794,
      26.729418,
      -97.093120,
      26.333947,
      -96.975299,
      26.092049,
      -96.924648,
      25.975653,
      -96.924030,
      25.949020,
      -97.157130,
      25.965930,
      -97.175370,
      25.959430,
      -97.284000,
      25.935230,
      -97.276660,
      25.915310,
      -97.368890,
      25.867330,
      -97.356610,
      25.837060,
      -97.394230,
      25.862150,
      -97.408600,
      25.840840,
      -97.412880,
      25.853890,
      -97.453850,
      25.884230,
      -97.455880,
      25.886930,
      -97.522270,
      25.930720,
      -97.537180,
      25.933020,
      -97.582970,
      25.952440,
      -97.567900,
      25.957190,
      -97.601940,
      25.990340,
      -97.634550,
      26.002720,
      -97.618650,
      26.010530,
      -97.649240,
      26.023190,
      -97.639030,
      26.019270,
      -97.667990,
      26.038150,
      -97.662600,
      26.018900,
      -97.691520,
      26.037850,
      -97.707260,
      26.025660,
      -97.761430,
      26.047320,
      -97.767680,
      26.029160,
      -97.777450,
      26.060250,
      -97.801110,
      26.045850,
      -97.834560,
      26.070160,
      -97.861610,
      26.051730,
      -97.965480
    ]);
    poly[145] = _TzPolygon([
      25.439381,
      -97.999794,
      25.444071,
      -97.979270,
      25.425992,
      -97.979277,
      25.425991,
      -97.949462,
      25.381327,
      -97.949385,
      25.375792,
      -97.899803,
      25.396303,
      -97.877987,
      25.346776,
      -97.803283,
      25.125236,
      -97.595507,
      25.125236,
      -97.999794
    ]);
    poly[146] = _TzPolygon([
      28.333599,
      -100.302489,
      28.390140,
      -100.344490,
      28.442510,
      -100.337440,
      28.476360,
      -100.368360,
      28.499290,
      -100.333890,
      28.515280,
      -100.388530,
      28.550070,
      -100.411090,
      28.585310,
      -100.398700,
      28.609380,
      -100.447310,
      28.641850,
      -100.446460,
      28.661954,
      -100.500474,
      28.805220,
      -100.535220,
      28.828190,
      -100.574340,
      28.901320,
      -100.600700,
      28.914850,
      -100.640910,
      29.100380,
      -100.674590,
      29.168350,
      -100.772640,
      29.195280,
      -100.766820,
      29.263600,
      -100.813790,
      29.280580,
      -100.877800,
      29.307590,
      -100.886290,
      29.368310,
      -101.009890,
      29.458581,
      -101.059875,
      29.475390,
      -101.148530,
      29.515992,
      -101.176844,
      29.522332,
      -101.256804,
      29.623352,
      -101.248643,
      29.621589,
      -101.262095,
      31.541963,
      -101.262095,
      31.541963,
      -96.893242,
      28.333599,
      -96.893242
    ]);
    poly[147] = _TzPolygon([
      28.388718,
      -101.262095,
      28.376462,
      -101.215787,
      28.400328,
      -100.962720,
      28.432214,
      -100.938136,
      28.453480,
      -100.868834,
      28.424450,
      -100.808265,
      28.380950,
      -100.809663,
      28.377465,
      -100.612040,
      28.333599,
      -100.597086,
      28.333599,
      -101.262095
    ]);
    poly[148] = _TzPolygon([
      42.449100,
      -117.975222,
      42.448522,
      -118.215030,
      44.212483,
      -118.233641,
      44.256083,
      -118.232140,
      44.270682,
      -118.152639,
      44.299583,
      -118.152340,
      44.328683,
      -118.092239,
      44.415183,
      -118.031442,
      44.441623,
      -117.975222
    ]);
    poly[149] = _TzPolygon([
      41.998206,
      -117.009258,
      41.998206,
      -111.596724,
      41.989104,
      -113.796082,
      41.998127,
      -117.009255
    ]);
    poly[150] = _TzPolygon([
      37.958689,
      -114.048396,
      40.726167,
      -114.043613,
      40.725489,
      -114.112847,
      40.755668,
      -114.112976,
      40.755583,
      -114.043787,
      41.993725,
      -114.041735,
      41.998206,
      -112.055845,
      41.998206,
      -111.043564,
      37.958689,
      -111.043564
    ]);
    poly[151] = _TzPolygon([
      42.449100,
      -117.975222,
      42.451386,
      -117.026585,
      41.999890,
      -117.026197,
      41.998206,
      -116.210977,
      41.998206,
      -117.975222
    ]);
    poly[152] = _TzPolygon([
      45.027844,
      -117.975222,
      45.027844,
      -116.842641,
      45.022184,
      -116.848241,
      44.977287,
      -116.857775,
      44.983586,
      -116.825925,
      44.887449,
      -116.852490,
      44.783881,
      -116.934700,
      44.727143,
      -117.062273,
      44.536151,
      -117.149242,
      44.482346,
      -117.225076,
      44.427161,
      -117.215068,
      44.390974,
      -117.243032,
      44.336585,
      -117.189769,
      44.313024,
      -117.203323,
      44.301420,
      -117.486153,
      44.387696,
      -117.485899,
      44.415491,
      -117.569880,
      44.444461,
      -117.590992,
      44.443328,
      -117.971596,
      44.441623,
      -117.975222
    ]);
    poly[153] = _TzPolygon([
      45.027844,
      -116.842641,
      45.142091,
      -116.729607,
      45.321511,
      -116.673793,
      45.602785,
      -116.463635,
      45.691734,
      -116.535396,
      45.752735,
      -116.549085,
      45.778541,
      -116.593004,
      45.781998,
      -116.665344,
      45.826267,
      -116.711822,
      45.816167,
      -116.759787,
      45.833471,
      -116.789066,
      45.897457,
      -116.728745,
      45.966591,
      -116.744606,
      45.999191,
      -116.698494,
      45.995495,
      -116.646637,
      46.037723,
      -116.624678,
      46.008703,
      -116.618920,
      45.973879,
      -116.548728,
      45.965206,
      -116.447740,
      45.913085,
      -116.428483,
      45.889411,
      -116.329110,
      45.858297,
      -116.295897,
      45.743131,
      -116.326849,
      45.729009,
      -116.302297,
      45.669580,
      -116.319038,
      45.665777,
      -116.280340,
      45.624209,
      -116.304596,
      45.599579,
      -116.272220,
      45.570729,
      -116.305819,
      45.411253,
      -116.310825,
      45.422497,
      -116.283944,
      45.409289,
      -116.242308,
      45.027844,
      -116.242308
    ]);
    poly[154] = _TzPolygon([
      45.409289,
      -116.242308,
      45.399042,
      -116.210006,
      45.427701,
      -116.143235,
      45.403502,
      -116.093058,
      45.459824,
      -115.929634,
      45.468106,
      -115.801938,
      45.375652,
      -115.509351,
      45.456062,
      -115.430206,
      45.475202,
      -115.354640,
      45.523603,
      -115.314175,
      45.569747,
      -115.214077,
      45.492904,
      -114.982064,
      45.393282,
      -114.813764,
      45.394949,
      -114.736576,
      45.440014,
      -114.795133,
      45.512612,
      -114.787738,
      45.471015,
      -114.664329,
      45.557710,
      -114.564936,
      45.562198,
      -114.509393,
      44.017964,
      -114.509393,
      44.017964,
      -116.242308
    ]);
    poly[155] = _TzPolygon([
      45.560021,
      -114.509393,
      45.557710,
      -114.564936,
      45.606592,
      -114.537944,
      45.637621,
      -114.563987,
      45.656918,
      -114.509393
    ]);
    poly[156] = _TzPolygon([
      45.717820,
      -114.509393,
      45.773310,
      -114.566465,
      45.845373,
      -114.509393
    ]);
    poly[157] = _TzPolygon([
      41.998206,
      -112.055845,
      42.000484,
      -111.046280,
      44.017964,
      -111.048477,
      44.017964,
      -111.043564,
      41.998206,
      -111.043564
    ]);
    poly[158] = _TzPolygon([
      45.027844,
      -113.449499,
      45.027844,
      -112.776478,
      44.486011,
      -112.776478,
      44.484660,
      -112.780810,
      44.424714,
      -112.839890,
      44.377142,
      -112.812208,
      44.359588,
      -112.854267,
      44.405938,
      -112.889557,
      44.452827,
      -113.004506,
      44.495512,
      -113.026824,
      44.525776,
      -113.006530,
      44.599663,
      -113.088292,
      44.634542,
      -113.050722,
      44.772758,
      -113.131459,
      44.822973,
      -113.246894,
      44.784664,
      -113.341276,
      44.835239,
      -113.377567,
      44.865424,
      -113.455071,
      44.942203,
      -113.498818,
      44.959380,
      -113.443939
    ]);
    poly[159] = _TzPolygon([
      45.562198,
      -114.509393,
      45.565223,
      -114.471946,
      45.509911,
      -114.424683,
      45.459722,
      -114.330047,
      45.484552,
      -114.269892,
      45.545813,
      -114.248450,
      45.536372,
      -114.193608,
      45.591464,
      -114.086102,
      45.652766,
      -114.015270,
      45.695901,
      -114.015482,
      45.695565,
      -113.937462,
      45.622007,
      -113.904691,
      45.601630,
      -113.806431,
      45.520657,
      -113.834778,
      45.520621,
      -113.766022,
      45.408477,
      -113.776043,
      45.390811,
      -113.733475,
      45.329409,
      -113.738661,
      45.278886,
      -113.680279,
      45.262503,
      -113.691887,
      45.184779,
      -113.592133,
      45.123851,
      -113.569884,
      45.116129,
      -113.511249,
      45.091388,
      -113.522187,
      45.059174,
      -113.452044,
      45.027844,
      -113.449499,
      45.027844,
      -114.509393
    ]);
    poly[160] = _TzPolygon([
      46.037723,
      -114.503066,
      46.031464,
      -114.507504,
      46.030349,
      -114.480347,
      45.992902,
      -114.479992,
      45.977870,
      -114.411755,
      45.936040,
      -114.431396,
      45.883926,
      -114.387868,
      45.851573,
      -114.409654,
      45.845373,
      -114.509393,
      46.037723,
      -114.509393
    ]);
    poly[161] = _TzPolygon([
      45.717820,
      -114.509393,
      45.703970,
      -114.495148,
      45.657535,
      -114.507646,
      45.656918,
      -114.509393
    ]);
    poly[162] = _TzPolygon([
      44.486011,
      -112.776478,
      44.504273,
      -112.717930,
      44.462766,
      -112.500642,
      44.479297,
      -112.472687,
      44.447308,
      -112.386524,
      44.538021,
      -112.352509,
      44.568559,
      -112.286568,
      44.520569,
      -112.106400,
      44.566621,
      -111.869319,
      44.508941,
      -111.821530,
      44.560148,
      -111.703164,
      44.538951,
      -111.468002,
      44.604553,
      -111.525678,
      44.643997,
      -111.516310,
      44.666190,
      -111.472483,
      44.705643,
      -111.488784,
      44.710739,
      -111.414273,
      44.754954,
      -111.384824,
      44.729548,
      -111.324378,
      44.667512,
      -111.266804,
      44.651265,
      -111.278477,
      44.622521,
      -111.219319,
      44.614525,
      -111.240889,
      44.576687,
      -111.227631,
      44.532429,
      -111.131382,
      44.497620,
      -111.127383,
      44.474072,
      -111.048974,
      44.017964,
      -111.047565,
      44.017964,
      -112.776478
    ]);
    poly[163] = _TzPolygon([
      46.037723,
      -124.253042,
      46.069884,
      -124.233775,
      46.130190,
      -124.314789,
      46.231659,
      -124.373345,
      46.543051,
      -124.353284,
      46.789352,
      -124.394747,
      46.895178,
      -124.469131,
      47.155984,
      -124.493524,
      47.381145,
      -124.682064,
      47.522715,
      -124.680650,
      47.599851,
      -124.767041,
      47.697041,
      -124.789722,
      47.775106,
      -124.890912,
      47.918860,
      -125.008005,
      48.048003,
      -125.017077,
      48.184511,
      -125.084094,
      48.307783,
      -125.021213,
      48.384212,
      -125.046421,
      48.459790,
      -125.028928,
      48.495179,
      -125.003617,
      48.503672,
      -124.915809,
      48.493444,
      -124.727250,
      48.296667,
      -124.012056,
      48.240000,
      -123.679056,
      48.224556,
      -123.541222,
      48.284028,
      -123.248444,
      48.422833,
      -123.115139,
      48.548722,
      -123.218944,
      48.694000,
      -123.267889,
      48.767111,
      -123.008500,
      48.831222,
      -123.008500,
      49.002072,
      -123.322240,
      49.001597,
      -120.508865,
      46.037723,
      -120.508865
    ]);
    poly[164] = _TzPolygon([
      49.000013,
      -118.142540,
      49.000954,
      -120.508865,
      49.527092,
      -120.508865,
      49.527092,
      -118.142540
    ]);
    poly[165] = _TzPolygon([
      47.739643,
      -115.776215,
      47.757334,
      -115.797498,
      47.755036,
      -115.830910,
      47.782407,
      -115.838954,
      47.782407,
      -115.776215
    ]);
    poly[166] = _TzPolygon([
      47.782407,
      -115.776215,
      47.782407,
      -115.838954,
      47.827857,
      -115.852312,
      47.853620,
      -115.918885,
      47.976842,
      -116.049108,
      49.000845,
      -116.049232,
      49.000823,
      -115.776215
    ]);
    poly[167] = _TzPolygon([
      49.000636,
      -115.776215,
      49.000873,
      -116.026933,
      49.199791,
      -116.027056,
      49.200096,
      -116.097580,
      49.260965,
      -116.066537,
      49.292839,
      -116.104873,
      49.289447,
      -116.168980,
      49.366738,
      -116.160073,
      49.421277,
      -116.238356,
      49.523009,
      -116.297379,
      49.515337,
      -116.361749,
      49.527092,
      -116.394144,
      49.527092,
      -115.776215
    ]);
    poly[168] = _TzPolygon([
      49.527092,
      -116.433699,
      49.492916,
      -116.465347,
      49.457535,
      -116.557321,
      49.472428,
      -116.662892,
      49.527092,
      -116.627919
    ]);
    poly[169] = _TzPolygon([
      49.001198,
      -118.142540,
      49.000845,
      -116.049232,
      47.976842,
      -116.049108,
      47.853620,
      -115.918885,
      47.827857,
      -115.852312,
      47.782407,
      -115.838954,
      47.782407,
      -118.142540
    ]);
    poly[170] = _TzPolygon([
      49.000013,
      -118.142540,
      49.527092,
      -118.142540,
      49.527092,
      -116.813730,
      49.348400,
      -116.760300,
      49.271900,
      -116.683700,
      49.177500,
      -116.830200,
      49.213500,
      -116.861000,
      49.182600,
      -116.940100,
      49.149900,
      -116.940200,
      49.167300,
      -116.988900,
      49.155800,
      -117.039200,
      49.059400,
      -117.038600,
      49.064000,
      -116.909500,
      49.037500,
      -116.886300,
      48.999528,
      -116.921458
    ]);
    poly[171] = _TzPolygon([
      51.776200,
      -118.142540,
      51.786500,
      -118.184600,
      51.852215,
      -118.142540
    ]);
    poly[172] = _TzPolygon([
      51.896556,
      -118.142540,
      51.895800,
      -118.159000,
      51.950400,
      -118.192600,
      51.986800,
      -118.288100,
      51.980800,
      -118.389500,
      52.031100,
      -118.400400,
      52.012600,
      -118.438900,
      52.054500,
      -118.512000,
      52.054100,
      -118.588400,
      52.104900,
      -118.607000,
      52.149966,
      -118.677906,
      52.189168,
      -118.579368,
      52.290461,
      -118.544295,
      52.287695,
      -118.502246,
      52.310741,
      -118.494032,
      52.334744,
      -118.389253,
      52.364032,
      -118.357355,
      52.361045,
      -118.306694,
      52.332877,
      -118.296382,
      52.384621,
      -118.219630,
      52.443856,
      -118.252459,
      52.485118,
      -118.198350,
      52.504579,
      -118.263188,
      52.539208,
      -118.290633,
      52.564545,
      -118.271993,
      52.577725,
      -118.328762,
      52.615241,
      -118.356640,
      52.678963,
      -118.288358,
      52.709582,
      -118.344445,
      52.737868,
      -118.328466,
      52.773778,
      -118.418889,
      52.847163,
      -118.384140,
      52.855392,
      -118.453112,
      52.886945,
      -118.453059,
      52.905830,
      -118.498212,
      52.881268,
      -118.615493,
      52.935640,
      -118.610602,
      52.978385,
      -118.672863,
      52.998701,
      -118.640158,
      53.016461,
      -118.648599,
      53.016461,
      -118.142540
    ]);
    poly[173] = _TzPolygon([
      50.808455,
      -116.959377,
      50.814770,
      -117.039935,
      50.858427,
      -117.045993,
      50.861598,
      -117.085543,
      50.958134,
      -117.039984,
      50.980840,
      -117.167425,
      51.022617,
      -117.135796,
      51.066500,
      -117.217300,
      51.271777,
      -117.326945,
      51.271777,
      -116.959377
    ]);
    poly[174] = _TzPolygon([
      49.527092,
      -116.813730,
      49.589200,
      -116.832300,
      49.637700,
      -116.911100,
      49.809200,
      -116.869700,
      49.798000,
      -116.719900,
      49.814500,
      -116.705800,
      49.737174,
      -116.586983,
      49.696965,
      -116.588644,
      49.641902,
      -116.677949,
      49.627647,
      -116.644628,
      49.573010,
      -116.685648,
      49.536360,
      -116.621989,
      49.527092,
      -116.627894
    ]);
    poly[175] = _TzPolygon([
      49.527092,
      -116.433699,
      49.537835,
      -116.423751,
      49.527092,
      -116.394144
    ]);
    poly[176] = _TzPolygon([
      50.808455,
      -116.959377,
      50.771388,
      -116.884687,
      50.784988,
      -116.813401,
      50.735411,
      -116.821000,
      50.678786,
      -116.749901,
      50.678398,
      -116.657584,
      50.641557,
      -116.578436,
      50.597275,
      -116.655905,
      50.466497,
      -116.718835,
      50.410002,
      -116.640500,
      50.317287,
      -116.620543,
      50.319355,
      -116.542133,
      50.216599,
      -116.561653,
      50.155409,
      -116.452936,
      50.065647,
      -116.499981,
      49.987453,
      -116.442456,
      49.965879,
      -116.461073,
      49.986438,
      -116.511892,
      49.953028,
      -116.580360,
      49.887545,
      -116.633889,
      49.876084,
      -116.695151,
      49.802979,
      -116.679400,
      49.809200,
      -116.869700,
      49.637700,
      -116.911100,
      49.589200,
      -116.832300,
      49.527092,
      -116.813730,
      49.527092,
      -116.959377
    ]);
    poly[177] = _TzPolygon([
      51.896556,
      -118.142540,
      51.897900,
      -118.113300,
      51.852215,
      -118.142540
    ]);
    poly[178] = _TzPolygon([
      51.776200,
      -118.142540,
      51.773300,
      -118.130700,
      51.732600,
      -118.109700,
      51.721400,
      -118.031700,
      51.748600,
      -118.012600,
      51.722100,
      -117.943000,
      51.656000,
      -117.913300,
      51.623800,
      -117.980100,
      51.530500,
      -117.940300,
      51.473200,
      -117.976000,
      51.451400,
      -117.923700,
      51.488200,
      -117.847500,
      51.453200,
      -117.815800,
      51.418300,
      -117.717400,
      51.467100,
      -117.432000,
      51.412200,
      -117.420400,
      51.401700,
      -117.373600,
      51.367700,
      -117.361800,
      51.361100,
      -117.249300,
      51.329200,
      -117.201200,
      51.300000,
      -117.235100,
      51.273500,
      -117.217300,
      51.283300,
      -117.333100,
      51.271777,
      -117.326945,
      51.271777,
      -118.142540
    ]);
    poly[179] = _TzPolygon([
      49.000636,
      -115.776215,
      53.016461,
      -115.776215,
      53.016461,
      -111.043564,
      48.997664,
      -111.043564,
      48.996667,
      -111.575694
    ]);
    poly[180] = _TzPolygon([
      47.739643,
      -115.776215,
      47.695118,
      -115.722648,
      47.653811,
      -115.736508,
      47.595300,
      -115.687758,
      47.547933,
      -115.755620,
      47.531375,
      -115.698314,
      47.484940,
      -115.686264,
      47.479610,
      -115.629488,
      47.423862,
      -115.759304,
      47.367404,
      -115.577639,
      47.299244,
      -115.528509,
      47.281444,
      -115.482264,
      47.256684,
      -115.319786,
      47.188334,
      -115.300577,
      47.101911,
      -115.144130,
      46.970036,
      -115.048789,
      46.971901,
      -115.001274,
      46.918681,
      -114.925143,
      46.860009,
      -114.948261,
      46.801630,
      -114.895189,
      46.814529,
      -114.865779,
      46.782711,
      -114.829306,
      46.780145,
      -114.784904,
      46.696902,
      -114.766786,
      46.739234,
      -114.665376,
      46.707262,
      -114.620787,
      46.672912,
      -114.642563,
      46.635900,
      -114.605732,
      46.649992,
      -114.541822,
      46.631801,
      -114.466834,
      46.671138,
      -114.358224,
      46.653417,
      -114.324615,
      46.519652,
      -114.342016,
      46.498811,
      -114.403184,
      46.436795,
      -114.368527,
      46.387046,
      -114.422447,
      46.283766,
      -114.427289,
      46.266041,
      -114.470720,
      46.169273,
      -114.444091,
      46.167680,
      -114.514858,
      46.145411,
      -114.527359,
      46.097790,
      -114.460475,
      46.037723,
      -114.503066,
      46.037723,
      -115.776215
    ]);
    poly[181] = _TzPolygon([
      49.000441,
      -111.043564,
      49.000262,
      -108.824497,
      37.958689,
      -108.824497,
      37.958689,
      -111.043564
    ]);
    poly[182] = _TzPolygon([
      48.999483,
      -108.824497,
      48.999609,
      -110.005078,
      52.667270,
      -110.005465,
      52.675360,
      -109.440797,
      52.696460,
      -109.440597,
      52.696660,
      -109.396297,
      52.739960,
      -109.396397,
      52.739860,
      -109.312397,
      52.820260,
      -109.323897,
      52.820160,
      -109.251297,
      52.929661,
      -109.252297,
      52.935861,
      -109.130497,
      52.885460,
      -109.130797,
      52.885360,
      -109.009697,
      52.804660,
      -109.009397,
      52.804260,
      -108.888597,
      52.929261,
      -108.912897,
      52.929361,
      -108.888397,
      53.016461,
      -108.888497,
      53.016461,
      -108.824497
    ]);
    poly[183] = _TzPolygon([
      60.001555,
      -129.974167,
      60.001555,
      -129.932869,
      59.998637,
      -129.932869,
      59.998620,
      -129.974167
    ]);
    poly[184] = _TzPolygon([
      63.201980,
      -129.932869,
      63.190038,
      -129.974167,
      63.201980,
      -129.974167
    ]);
    poly[185] = _TzPolygon([
      57.500087,
      -124.290734,
      57.499693,
      -124.309273,
      57.516526,
      -124.298417,
      57.551822,
      -124.407750,
      57.648435,
      -124.449058,
      57.684766,
      -124.592565,
      57.665623,
      -124.605847,
      57.739478,
      -124.763796,
      57.723380,
      -124.790544,
      57.822323,
      -124.885614,
      57.836473,
      -124.944816,
      57.979296,
      -124.913315,
      58.000000,
      -124.942122,
      58.000000,
      -124.290734
    ]);
    poly[186] = _TzPolygon([
      54.609562,
      -121.469667,
      54.651573,
      -121.531422,
      54.725058,
      -121.474411,
      54.796900,
      -121.525390,
      54.888683,
      -121.731934,
      54.841374,
      -121.783560,
      54.867867,
      -121.872446,
      54.927442,
      -121.848671,
      55.006678,
      -121.945442,
      55.099977,
      -122.107156,
      55.099358,
      -122.173484,
      55.137837,
      -122.192281,
      55.131633,
      -122.265848,
      55.171451,
      -122.294529,
      55.191848,
      -122.247787,
      55.210211,
      -122.262707,
      55.227090,
      -122.332827,
      55.315386,
      -122.431956,
      55.315093,
      -122.486368,
      55.408543,
      -122.595507,
      55.335409,
      -122.677471,
      55.380355,
      -122.792078,
      55.378117,
      -122.853772,
      55.420145,
      -122.890478,
      55.402029,
      -122.994077,
      55.462939,
      -122.999615,
      55.460728,
      -122.932832,
      55.501073,
      -122.966086,
      55.508230,
      -122.962461,
      55.508230,
      -121.469667
    ]);
    poly[187] = _TzPolygon([
      56.754115,
      -124.290734,
      56.754115,
      -123.784835,
      56.740579,
      -123.764521,
      56.685251,
      -123.761567,
      56.651708,
      -123.664181,
      56.589994,
      -123.670062,
      56.569416,
      -123.741461,
      56.534067,
      -123.678057,
      56.509162,
      -123.698476,
      56.512687,
      -123.604406,
      56.463774,
      -123.553875,
      56.413104,
      -123.559602,
      56.384363,
      -123.634151,
      56.352997,
      -123.618851,
      56.354077,
      -123.568948,
      56.321116,
      -123.529377,
      56.319171,
      -123.569541,
      56.258324,
      -123.574784,
      56.203269,
      -123.487451,
      56.177603,
      -123.513816,
      56.029904,
      -123.448476,
      55.968118,
      -123.478223,
      55.939265,
      -123.428016,
      55.883908,
      -123.453080,
      55.860694,
      -123.367078,
      55.835225,
      -123.385219,
      55.797587,
      -123.316687,
      55.756780,
      -123.310986,
      55.742275,
      -123.350080,
      55.713065,
      -123.330306,
      55.698971,
      -123.259977,
      55.738808,
      -123.160278,
      55.693927,
      -123.125509,
      55.641474,
      -123.150716,
      55.625635,
      -123.073132,
      55.584715,
      -123.079741,
      55.559763,
      -123.037867,
      55.583635,
      -122.967799,
      55.569548,
      -122.931404,
      55.508230,
      -122.962461,
      55.508230,
      -124.290734
    ]);
    poly[188] = _TzPolygon([
      57.500087,
      -124.290734,
      57.502457,
      -124.179184,
      57.455189,
      -124.183588,
      57.449636,
      -124.122223,
      57.404765,
      -124.134182,
      57.319517,
      -124.075250,
      57.294044,
      -124.180698,
      57.264720,
      -124.188497,
      57.204084,
      -124.094305,
      57.163792,
      -124.083458,
      57.163211,
      -124.038763,
      57.104594,
      -123.940030,
      57.055017,
      -123.923670,
      57.045236,
      -123.973385,
      57.013821,
      -123.983490,
      56.994375,
      -123.898045,
      56.938183,
      -123.889162,
      56.925831,
      -123.817463,
      56.893254,
      -123.852654,
      56.809357,
      -123.769783,
      56.769287,
      -123.807603,
      56.754115,
      -123.784835,
      56.754115,
      -124.290734
    ]);
    poly[189] = _TzPolygon([
      54.609562,
      -121.469667,
      54.566114,
      -121.405799,
      54.533009,
      -121.398970,
      54.539964,
      -121.363540,
      54.512274,
      -121.315076,
      54.517307,
      -121.270480,
      54.553350,
      -121.251945,
      54.549179,
      -121.127353,
      54.484455,
      -121.130910,
      54.449283,
      -121.075100,
      54.472775,
      -121.066068,
      54.452714,
      -121.044504,
      54.465825,
      -121.003519,
      54.449591,
      -120.935729,
      54.461752,
      -120.881575,
      54.490958,
      -120.877018,
      54.493932,
      -120.825910,
      54.471601,
      -120.792051,
      54.402535,
      -120.786132,
      54.409204,
      -120.733983,
      54.358546,
      -120.659741,
      54.299221,
      -120.729893,
      54.277301,
      -120.591339,
      54.212813,
      -120.561853,
      54.177733,
      -120.587031,
      54.144836,
      -120.551624,
      54.104937,
      -120.329175,
      54.116807,
      -120.183039,
      54.046444,
      -120.176987,
      54.029607,
      -120.207310,
      54.040745,
      -120.235835,
      53.981655,
      -120.263416,
      53.974365,
      -120.207471,
      53.934123,
      -120.195457,
      53.978469,
      -120.136553,
      53.979505,
      -120.077971,
      53.901899,
      -120.068654,
      53.894953,
      -120.059133,
      53.016461,
      -120.059133,
      53.016461,
      -121.469667
    ]);
    poly[190] = _TzPolygon([
      53.894953,
      -120.059133,
      55.508230,
      -120.059133,
      55.508230,
      -120.005964,
      53.796623,
      -120.009187,
      53.826173,
      -120.050849,
      53.863339,
      -120.015798
    ]);
    poly[191] = _TzPolygon([
      53.016461,
      -118.648599,
      53.034386,
      -118.657119,
      53.058119,
      -118.731233,
      53.046366,
      -118.778164,
      53.113450,
      -118.729147,
      53.236820,
      -118.948138,
      53.223281,
      -119.025825,
      53.205269,
      -118.993313,
      53.162950,
      -119.030079,
      53.141323,
      -118.994030,
      53.123837,
      -119.027356,
      53.190957,
      -119.147879,
      53.195370,
      -119.228791,
      53.176646,
      -119.261305,
      53.359374,
      -119.390954,
      53.348927,
      -119.447432,
      53.384764,
      -119.605757,
      53.363171,
      -119.606564,
      53.370171,
      -119.680946,
      53.429392,
      -119.767044,
      53.491508,
      -119.784937,
      53.518526,
      -119.835438,
      53.500232,
      -119.865523,
      53.516435,
      -119.901082,
      53.553155,
      -119.861881,
      53.614537,
      -119.921757,
      53.589973,
      -119.770267,
      53.612598,
      -119.716458,
      53.703248,
      -119.792713,
      53.711566,
      -119.912208,
      53.776398,
      -119.888731,
      53.798712,
      -120.001273,
      55.508230,
      -120.001292,
      55.508230,
      -118.648599
    ]);
    poly[192] = _TzPolygon([
      55.508230,
      -118.648599,
      55.508230,
      -120.001292,
      58.000000,
      -120.001319,
      58.000000,
      -118.648599
    ]);
    poly[193] = _TzPolygon([
      59.134960,
      -127.111802,
      59.132744,
      -127.141734,
      59.197095,
      -127.194471,
      59.218994,
      -127.164005,
      59.260890,
      -127.227862,
      59.329319,
      -127.179103,
      59.342593,
      -127.205980,
      59.308087,
      -127.310661,
      59.364413,
      -127.332888,
      59.354323,
      -127.392039,
      59.408338,
      -127.376578,
      59.416795,
      -127.465680,
      59.512000,
      -127.477920,
      59.524209,
      -127.501076,
      59.507448,
      -127.540002,
      59.562730,
      -127.553902,
      59.626277,
      -127.742770,
      59.758374,
      -127.818283,
      59.797371,
      -127.813098,
      59.816325,
      -127.738828,
      59.828759,
      -127.765922,
      59.839404,
      -127.734219,
      60.001447,
      -127.734219,
      60.001586,
      -127.111802
    ]);
    poly[194] = _TzPolygon([
      60.600990,
      -129.932869,
      60.600990,
      -127.111802,
      59.999812,
      -127.111802,
      59.998637,
      -129.932869
    ]);
    poly[195] = _TzPolygon([
      62.084156,
      -128.522335,
      62.141059,
      -128.597625,
      62.111014,
      -128.632946,
      62.133021,
      -128.682743,
      62.101634,
      -128.713194,
      62.099735,
      -128.762459,
      62.048279,
      -128.774238,
      62.072238,
      -128.804039,
      62.058904,
      -128.856075,
      62.088321,
      -128.825743,
      62.121495,
      -128.893622,
      62.098094,
      -128.939848,
      62.128740,
      -128.999833,
      62.106751,
      -129.137352,
      62.150810,
      -129.281073,
      62.212151,
      -129.200479,
      62.269447,
      -129.304358,
      62.317173,
      -129.316514,
      62.370281,
      -129.257695,
      62.369418,
      -129.216628,
      62.396224,
      -129.313901,
      62.451104,
      -129.268522,
      62.463767,
      -129.178176,
      62.487925,
      -129.181481,
      62.534214,
      -129.356156,
      62.584692,
      -129.426396,
      62.574034,
      -129.558339,
      62.633154,
      -129.484114,
      62.708855,
      -129.621296,
      62.826890,
      -129.693888,
      62.873125,
      -129.785333,
      62.895744,
      -129.765795,
      62.891367,
      -129.710237,
      62.922406,
      -129.740677,
      63.043350,
      -129.602501,
      63.079622,
      -129.628897,
      63.063638,
      -129.709518,
      63.083287,
      -129.845781,
      63.128604,
      -129.829297,
      63.138125,
      -129.888985,
      63.201980,
      -129.932869,
      63.201980,
      -128.522335
    ]);
    poly[196] = _TzPolygon([
      61.098579,
      -127.111802,
      61.128763,
      -127.122044,
      61.132862,
      -127.111802
    ]);
    poly[197] = _TzPolygon([
      61.375065,
      -127.111802,
      61.386643,
      -127.135873,
      61.462900,
      -127.139774,
      61.469889,
      -127.222032,
      61.511903,
      -127.277600,
      61.495980,
      -127.519343,
      61.539847,
      -127.655194,
      61.595701,
      -127.697716,
      61.608125,
      -127.798063,
      61.685714,
      -127.893347,
      61.750643,
      -128.072204,
      61.793776,
      -128.053860,
      61.809614,
      -127.994068,
      61.844229,
      -128.019165,
      61.865864,
      -128.073338,
      61.861287,
      -128.158830,
      61.841081,
      -128.180799,
      61.854643,
      -128.215617,
      61.936793,
      -128.256095,
      61.951490,
      -128.319803,
      61.991193,
      -128.382488,
      62.024138,
      -128.375379,
      62.062202,
      -128.493287,
      62.084156,
      -128.522335,
      63.201980,
      -128.522335,
      63.201980,
      -127.111802
    ]);
    poly[198] = _TzPolygon([
      59.134960,
      -127.111802,
      59.140147,
      -127.041720,
      59.121215,
      -126.964096,
      59.052940,
      -126.979742,
      58.952928,
      -126.914871,
      58.841031,
      -127.061170,
      58.789592,
      -127.011064,
      58.806974,
      -126.920182,
      58.735981,
      -126.797325,
      58.680132,
      -126.819675,
      58.682193,
      -126.872428,
      58.652628,
      -126.932485,
      58.652477,
      -126.865450,
      58.628428,
      -126.832358,
      58.667150,
      -126.795756,
      58.672062,
      -126.738829,
      58.585702,
      -126.592079,
      58.581367,
      -126.508815,
      58.607309,
      -126.482643,
      58.623935,
      -126.338791,
      58.536868,
      -126.342991,
      58.545530,
      -126.266698,
      58.449588,
      -126.092431,
      58.447042,
      -125.975342,
      58.395569,
      -125.938903,
      58.413119,
      -125.902789,
      58.403543,
      -125.853908,
      58.359153,
      -125.831458,
      58.349679,
      -125.780804,
      58.321222,
      -125.787302,
      58.306566,
      -125.701268,
      58.000000,
      -125.701268,
      58.000000,
      -127.111802
    ]);
    poly[199] = _TzPolygon([
      60.600990,
      -125.701268,
      60.000400,
      -125.701268,
      59.999812,
      -127.111802,
      60.600990,
      -127.111802
    ]);
  }
}

class _Initializer3 {
  static void _init() {
    poly[200] = _TzPolygon([
      58.306566,
      -125.701268,
      58.299330,
      -125.658792,
      58.325333,
      -125.555207,
      58.291177,
      -125.492480,
      58.339250,
      -125.443725,
      58.277112,
      -125.335263,
      58.328046,
      -125.297529,
      58.282567,
      -125.260531,
      58.236740,
      -125.143153,
      58.262606,
      -125.015366,
      58.236364,
      -124.982126,
      58.228591,
      -124.887139,
      58.163701,
      -124.880071,
      58.140954,
      -124.832919,
      58.059751,
      -124.925310,
      58.029630,
      -124.909559,
      58.024265,
      -124.967866,
      58.000000,
      -124.938431,
      58.000000,
      -125.701268
    ]);
    poly[201] = _TzPolygon([
      60.600990,
      -124.526163,
      60.534285,
      -124.417930,
      60.465877,
      -124.424106,
      60.458380,
      -124.290734,
      60.000987,
      -124.290734,
      60.000400,
      -125.701268,
      60.600990,
      -125.701268
    ]);
    poly[202] = _TzPolygon([
      60.458380,
      -124.290734,
      60.465877,
      -124.424106,
      60.534285,
      -124.417930,
      60.600990,
      -124.526163,
      60.600990,
      -124.290734
    ]);
    poly[203] = _TzPolygon([
      60.799632,
      -125.701268,
      60.803724,
      -125.732209,
      60.910558,
      -125.841816,
      60.848800,
      -125.976755,
      60.796041,
      -126.005355,
      60.813119,
      -126.108151,
      60.865971,
      -126.125686,
      60.853459,
      -126.268592,
      60.812973,
      -126.219674,
      60.780234,
      -126.262177,
      60.788491,
      -126.325003,
      60.767920,
      -126.375071,
      60.813244,
      -126.527952,
      60.767728,
      -126.627862,
      60.781473,
      -126.735869,
      60.760727,
      -126.848129,
      60.814075,
      -126.846336,
      60.861265,
      -126.929000,
      60.882574,
      -126.897556,
      61.027472,
      -126.950669,
      61.053027,
      -126.924797,
      61.065920,
      -127.012355,
      61.033035,
      -127.028398,
      61.028536,
      -127.088034,
      61.098579,
      -127.111802,
      61.132862,
      -127.111802,
      61.175393,
      -127.005531,
      61.223110,
      -126.986682,
      61.230850,
      -127.040194,
      61.346055,
      -127.051490,
      61.375065,
      -127.111802,
      63.201980,
      -127.111802,
      63.201980,
      -125.701268
    ]);
    poly[204] = _TzPolygon([
      60.600990,
      -124.526163,
      60.652280,
      -124.609385,
      60.702459,
      -124.635939,
      60.777842,
      -124.482961,
      60.818855,
      -124.542906,
      60.952339,
      -124.579364,
      60.947770,
      -124.746953,
      60.969209,
      -124.824610,
      60.920867,
      -124.883331,
      60.855727,
      -124.863968,
      60.854465,
      -124.979423,
      60.815728,
      -125.050927,
      60.843882,
      -125.086084,
      60.847677,
      -125.183877,
      60.776801,
      -125.325919,
      60.778620,
      -125.439963,
      60.831871,
      -125.573393,
      60.795592,
      -125.670721,
      60.799632,
      -125.701268,
      63.201980,
      -125.701268,
      63.201980,
      -124.290734,
      60.600990,
      -124.290734
    ]);
    poly[205] = _TzPolygon([
      58.000000,
      -118.648599,
      58.000000,
      -120.001319,
      60.000422,
      -120.001341,
      60.000289,
      -118.648599
    ]);
    poly[206] = _TzPolygon([
      60.002217,
      -124.290734,
      60.000422,
      -120.001341,
      58.000000,
      -120.001273,
      58.000000,
      -124.290734
    ]);
    poly[207] = _TzPolygon([
      60.458380,
      -124.290734,
      60.453515,
      -124.204178,
      60.371080,
      -124.232784,
      60.236863,
      -124.111698,
      60.198656,
      -124.121020,
      60.146014,
      -124.004868,
      60.074828,
      -123.992124,
      60.001187,
      -123.811471,
      60.000987,
      -124.290734
    ]);
    poly[208] = _TzPolygon([
      53.016461,
      -108.824497,
      53.229461,
      -109.073097,
      53.279061,
      -109.079897,
      53.333061,
      -109.241897,
      53.395661,
      -109.294297,
      53.375461,
      -109.465697,
      53.429561,
      -109.571597,
      53.488761,
      -109.549797,
      53.520761,
      -109.622297,
      53.587161,
      -109.643997,
      53.599461,
      -109.769097,
      53.551761,
      -109.839797,
      53.598902,
      -110.005616,
      59.999441,
      -110.006365,
      59.999511,
      -108.824497
    ]);
    poly[209] = _TzPolygon([
      59.999412,
      -118.648599,
      63.201980,
      -118.648599,
      63.201980,
      -108.824497,
      59.998641,
      -108.824497,
      59.998120,
      -114.891600
    ]);
    poly[210] = _TzPolygon([
      63.573302,
      -129.974167,
      63.561576,
      -129.914470,
      63.459813,
      -129.812706,
      63.467646,
      -129.915012,
      63.425950,
      -129.943454,
      63.381111,
      -129.897083,
      63.340261,
      -129.939362,
      63.330730,
      -129.974167
    ]);
    poly[211] = _TzPolygon([
      63.611464,
      -129.974167,
      63.610948,
      -129.956640,
      63.588796,
      -129.974167
    ]);
    poly[212] = _TzPolygon([
      64.791916,
      -108.824497,
      64.833631,
      -109.334405,
      65.500330,
      -110.667836,
      65.500314,
      -112.501267,
      66.757706,
      -116.616223,
      68.000283,
      -120.682778,
      69.558178,
      -120.683021,
      69.647998,
      -116.836275,
      69.631901,
      -116.638083,
      69.889305,
      -117.146563,
      70.000422,
      -117.118821,
      70.000460,
      -112.885251,
      69.833787,
      -112.885242,
      69.833789,
      -112.651894,
      69.882660,
      -112.633449,
      69.851674,
      -112.613155,
      69.852618,
      -112.519225,
      69.877909,
      -112.485232,
      69.854287,
      -112.507635,
      69.869615,
      -112.457630,
      69.853036,
      -112.483153,
      69.849592,
      -112.438355,
      69.880621,
      -112.342125,
      69.894573,
      -112.393529,
      69.896912,
      -112.322306,
      69.899178,
      -112.554541,
      69.866361,
      -112.563508,
      69.899007,
      -112.561049,
      69.910823,
      -112.655539,
      69.911882,
      -112.501887,
      70.000463,
      -112.501893,
      70.000492,
      -110.001642,
      79.129982,
      -110.002733,
      79.257032,
      -108.824497
    ]);
    poly[213] = _TzPolygon([
      53.375000,
      -107.756288,
      49.384490,
      -107.756288,
      49.384490,
      -108.824497,
      53.375000,
      -108.824497
    ]);
    poly[214] = _TzPolygon([
      49.530211,
      -101.392420,
      49.532731,
      -101.392564,
      49.532714,
      -101.417774,
      49.886670,
      -101.417546,
      49.886660,
      -101.447198,
      50.240543,
      -101.447153,
      50.240506,
      -101.476721,
      50.594388,
      -101.476995,
      50.594393,
      -101.508729,
      50.948485,
      -101.508695,
      50.948581,
      -101.538983,
      51.301712,
      -101.539110,
      51.301876,
      -101.570544,
      51.968568,
      -101.577230,
      51.968581,
      -101.609311,
      52.318158,
      -101.609055,
      52.318150,
      -101.637813,
      52.667274,
      -101.637705,
      52.667261,
      -101.671588,
      53.365781,
      -101.700606,
      53.365808,
      -101.735544,
      53.375000,
      -101.735532,
      53.375000,
      -101.392420
    ]);
    poly[215] = _TzPolygon([
      49.384490,
      -90.462040,
      49.500000,
      -90.000000,
      50.750000,
      -90.000000,
      51.000000,
      -90.500000,
      51.250000,
      -90.750000,
      51.500000,
      -90.750000,
      51.750000,
      -90.500000,
      52.000000,
      -90.000000,
      52.750000,
      -90.000000,
      52.750000,
      -89.000000,
      53.000000,
      -89.000000,
      53.375000,
      -88.500000,
      49.384490,
      -88.500000
    ]);
    poly[216] = _TzPolygon([
      53.375000,
      -101.735532,
      53.710706,
      -101.735099,
      53.375000,
      -101.735099
    ]);
    poly[217] = _TzPolygon([
      53.710706,
      -101.735099,
      53.710899,
      -101.770647,
      54.064403,
      -101.771323,
      54.064406,
      -101.810434,
      54.096808,
      -101.810446,
      54.259194,
      -102.264514,
      54.509138,
      -102.514514,
      54.759082,
      -102.514514,
      55.009026,
      -102.264514,
      55.111547,
      -101.924050,
      55.809401,
      -101.963723,
      55.809383,
      -102.004034,
      59.999220,
      -102.007591,
      59.999217,
      -101.735099
    ]);
    poly[218] = _TzPolygon([
      59.999511,
      -108.824497,
      59.999226,
      -102.000476,
      59.998641,
      -108.824497
    ]);
    poly[219] = _TzPolygon(
        [56.652520, -88.500000, 56.687256, -88.640613, 56.687256, -88.500000]);
    poly[220] = _TzPolygon([
      53.625000,
      -88.500000,
      54.000000,
      -89.000000,
      54.000000,
      -90.000000,
      56.229664,
      -89.999805,
      56.687256,
      -89.251433,
      56.687256,
      -88.640613,
      56.652520,
      -88.500000
    ]);
    poly[221] = _TzPolygon([
      58.343286,
      -93.017141,
      58.343286,
      -91.808775,
      57.089577,
      -91.808775,
      57.054292,
      -91.966190,
      57.049549,
      -92.123103,
      57.072747,
      -92.217068,
      57.047274,
      -92.443205,
      56.925189,
      -92.735427,
      56.940144,
      -92.753898,
      57.107378,
      -92.540321,
      57.237401,
      -92.448994,
      57.363230,
      -92.426660,
      57.525070,
      -92.498610,
      57.541890,
      -92.542170,
      57.799665,
      -92.728444,
      58.171787,
      -92.864617,
      58.200530,
      -92.918490
    ]);
    poly[222] = _TzPolygon([
      59.999143,
      -95.117549,
      59.999140,
      -94.826000,
      59.882520,
      -94.833267,
      59.787196,
      -94.773046,
      59.741779,
      -94.827901,
      59.726902,
      -94.788920,
      59.709594,
      -94.835799,
      59.700915,
      -94.794429,
      59.614267,
      -94.837809,
      59.568414,
      -94.764675,
      59.543643,
      -94.811212,
      59.383558,
      -94.707734,
      59.341757,
      -94.728630,
      59.351033,
      -94.662928,
      59.266971,
      -94.802273,
      59.008965,
      -94.797971,
      59.018478,
      -94.757136,
      58.988168,
      -94.691164,
      58.946576,
      -94.687268,
      58.942458,
      -94.596273,
      58.894701,
      -94.585133,
      58.887734,
      -94.618200,
      58.792745,
      -94.473451,
      58.707081,
      -94.430336,
      58.719674,
      -94.324465,
      58.781337,
      -94.293490,
      58.817005,
      -94.215553,
      58.777255,
      -94.146512,
      58.751561,
      -93.889687,
      58.763348,
      -93.838240,
      58.799372,
      -93.828922,
      58.769313,
      -93.813121,
      58.770561,
      -93.744063,
      58.800685,
      -93.754397,
      58.765807,
      -93.592723,
      58.767452,
      -93.529447,
      58.780939,
      -93.535915,
      58.754302,
      -93.486184,
      58.720328,
      -93.495224,
      58.698533,
      -93.432278,
      58.761426,
      -93.336548,
      58.756287,
      -93.230929,
      58.777508,
      -93.241429,
      58.724411,
      -93.162284,
      58.476360,
      -93.109101,
      58.343286,
      -93.017141,
      58.343286,
      -95.117549
    ]);
    poly[223] = _TzPolygon([
      56.687256,
      -89.251433,
      56.846610,
      -88.990816,
      56.839485,
      -88.912742,
      56.859364,
      -88.882881,
      56.827580,
      -88.860802,
      56.838909,
      -88.823349,
      56.797432,
      -88.831207,
      56.688774,
      -88.646759,
      56.687256,
      -88.640613
    ]);
    poly[224] = _TzPolygon([
      57.089577,
      -91.808775,
      57.268330,
      -91.011308,
      57.231216,
      -90.623676,
      57.189723,
      -90.517952,
      57.192989,
      -90.434857,
      57.162074,
      -90.420956,
      57.002819,
      -89.956692,
      56.928488,
      -89.385498,
      56.874093,
      -89.193315,
      56.846610,
      -88.990816,
      56.687256,
      -89.251433,
      56.687256,
      -91.808775
    ]);
    poly[225] = _TzPolygon([
      64.791916,
      -108.824497,
      79.257032,
      -108.824497,
      79.545902,
      -106.145572,
      80.123024,
      -102.001012,
      73.429675,
      -102.001534,
      72.242433,
      -93.894588,
      71.878142,
      -92.166233,
      70.017888,
      -89.606081,
      69.260324,
      -89.000000,
      67.000000,
      -89.000000,
      67.000000,
      -102.000000,
      64.233664,
      -102.000596
    ]);
    poly[226] = _TzPolygon([
      59.999511,
      -88.500000,
      59.999511,
      -102.000476,
      67.000000,
      -102.000000,
      67.000000,
      -89.000000,
      69.260324,
      -89.000000,
      70.017888,
      -89.606081,
      71.878142,
      -92.166233,
      72.242433,
      -93.894588,
      73.429675,
      -102.001534,
      80.123024,
      -102.001012,
      80.325468,
      -100.308415,
      80.513782,
      -97.549389,
      80.741941,
      -97.269837,
      81.457997,
      -95.359116,
      81.860549,
      -92.769392,
      82.090244,
      -91.567800,
      82.276869,
      -88.777954,
      82.303898,
      -88.500000
    ]);
    poly[227] = _TzPolygon([
      64.791916,
      -108.824497,
      64.233664,
      -102.000596,
      59.999511,
      -102.000476,
      59.999511,
      -108.824497
    ]);
    poly[228] = _TzPolygon([
      56.187094,
      -87.694290,
      56.095921,
      -87.629822,
      56.042232,
      -87.480354,
      55.998974,
      -87.430969,
      55.939842,
      -87.238563,
      55.916050,
      -86.908066,
      55.764652,
      -86.372040,
      55.707176,
      -86.260002,
      55.662723,
      -86.055709,
      55.655434,
      -85.902816,
      55.570255,
      -85.652534,
      55.405380,
      -85.399285,
      55.375016,
      -85.229233,
      55.290497,
      -85.072612,
      49.384490,
      -85.072612,
      49.384490,
      -88.500000,
      56.187094,
      -88.500000
    ]);
    poly[229] = _TzPolygon([
      52.496773,
      -81.645224,
      52.609474,
      -81.768943,
      52.664745,
      -81.883857,
      52.759502,
      -81.951309,
      52.764469,
      -82.000000,
      52.777893,
      -81.959579,
      52.785792,
      -81.971196,
      52.785792,
      -81.645224
    ]);
    poly[230] = _TzPolygon([
      52.785792,
      -81.645224,
      52.785792,
      -81.971196,
      52.882942,
      -82.114074,
      52.947357,
      -82.263153,
      53.117104,
      -82.281006,
      53.193077,
      -82.232246,
      53.267982,
      -82.112938,
      53.587864,
      -82.215851,
      53.819817,
      -82.126320,
      54.027718,
      -82.232956,
      54.164105,
      -82.394898,
      54.254684,
      -82.436592,
      54.508911,
      -82.316246,
      54.655407,
      -82.288452,
      54.803795,
      -82.197815,
      54.873863,
      -82.207588,
      54.860290,
      -82.239777,
      54.912853,
      -82.267212,
      55.109474,
      -82.253173,
      55.159210,
      -82.348266,
      55.054394,
      -82.311096,
      55.069969,
      -82.404572,
      55.116223,
      -82.453315,
      55.090477,
      -82.517067,
      55.180107,
      -82.680206,
      55.140431,
      -82.708428,
      55.128262,
      -82.803322,
      55.146702,
      -82.884864,
      55.221966,
      -82.958915,
      55.198608,
      -83.338745,
      55.267910,
      -83.692787,
      55.212089,
      -83.630547,
      55.294983,
      -83.886490,
      55.251080,
      -84.082718,
      55.278450,
      -84.171348,
      55.278042,
      -84.306732,
      55.236660,
      -84.550964,
      55.236389,
      -84.787575,
      55.271791,
      -84.999891,
      56.187094,
      -84.999905,
      56.187094,
      -81.645224
    ]);
    poly[231] = _TzPolygon([
      55.283933,
      -85.072612,
      56.187094,
      -85.072612,
      56.187094,
      -84.999905,
      55.271791,
      -84.999891,
      55.268990,
      -85.008796
    ]);
    poly[232] = _TzPolygon([
      56.187094,
      -81.645224,
      56.187094,
      -84.999905,
      62.989698,
      -85.000012,
      62.989698,
      -81.645224
    ]);
    poly[233] = _TzPolygon([
      56.187094,
      -87.694290,
      56.231095,
      -87.725403,
      56.389561,
      -87.925156,
      56.462406,
      -87.972641,
      56.538315,
      -88.278473,
      56.652520,
      -88.500000,
      62.989698,
      -88.500000,
      62.989698,
      -85.000012,
      56.187094,
      -84.999905
    ]);
    poly[234] = _TzPolygon([
      56.652520,
      -88.500000,
      56.538315,
      -88.278473,
      56.462406,
      -87.972641,
      56.389561,
      -87.925156,
      56.231095,
      -87.725403,
      56.187094,
      -87.694290,
      56.187094,
      -88.500000
    ]);
    poly[235] = _TzPolygon([
      52.496773,
      -81.645224,
      52.489052,
      -81.636749,
      52.443180,
      -81.545707,
      52.351895,
      -81.553116,
      52.291229,
      -81.478386,
      52.116081,
      -81.384544,
      52.041309,
      -81.160148,
      52.037338,
      -81.110115,
      52.058304,
      -81.080452,
      52.027325,
      -81.060181,
      52.040215,
      -81.043808,
      52.011433,
      -80.989090,
      51.898689,
      -80.881111,
      51.905666,
      -80.850395,
      51.880283,
      -80.823792,
      51.892727,
      -80.795173,
      51.813232,
      -80.708428,
      51.846146,
      -80.688545,
      51.805630,
      -80.688645,
      51.701687,
      -80.565765,
      51.549820,
      -80.513710,
      51.464264,
      -80.431786,
      51.382744,
      -80.432815,
      51.339314,
      -80.384712,
      51.308449,
      -80.292457,
      51.291893,
      -80.116425,
      51.243858,
      -79.990204,
      51.200288,
      -79.931531,
      49.384490,
      -79.931531,
      49.384490,
      -81.645224
    ]);
    poly[236] = _TzPolygon([
      51.200288,
      -79.931531,
      51.167770,
      -79.887741,
      51.157154,
      -79.799064,
      51.280308,
      -79.686867,
      51.329529,
      -79.744552,
      51.370861,
      -79.734863,
      51.380703,
      -79.707832,
      51.353138,
      -79.722573,
      51.343563,
      -79.674132,
      51.403736,
      -79.681580,
      51.416210,
      -79.611130,
      51.465935,
      -79.573998,
      51.465185,
      -79.501413,
      51.561030,
      -79.541538,
      51.679863,
      -79.329116,
      51.655965,
      -79.217186,
      51.577089,
      -79.244534,
      51.534057,
      -79.201320,
      51.538646,
      -79.103023,
      51.520714,
      -79.074684,
      51.085141,
      -79.074684,
      51.085141,
      -79.931531
    ]);
    poly[237] = _TzPolygon([
      52.785792,
      -78.756715,
      52.757078,
      -78.777712,
      52.775094,
      -78.836660,
      52.734555,
      -78.875524,
      52.711989,
      -78.783749,
      52.680263,
      -78.827034,
      52.669888,
      -78.730156,
      52.634225,
      -78.819098,
      52.602644,
      -78.710368,
      52.551186,
      -78.773927,
      52.491496,
      -78.552801,
      52.332117,
      -78.521438,
      52.289708,
      -78.584187,
      52.177735,
      -78.569691,
      52.057764,
      -78.673175,
      52.053581,
      -78.724436,
      51.989208,
      -78.722474,
      51.925380,
      -78.893032,
      51.841019,
      -78.862177,
      51.767592,
      -79.050736,
      51.613192,
      -78.880770,
      51.516140,
      -78.844912,
      51.481797,
      -78.795898,
      51.384082,
      -78.907835,
      51.333614,
      -78.879230,
      51.248244,
      -78.933198,
      51.167462,
      -78.867142,
      51.222862,
      -78.951008,
      51.286496,
      -78.936212,
      51.459908,
      -78.978590,
      51.520714,
      -79.074684,
      52.785792,
      -79.074684
    ]);
    poly[238] = _TzPolygon(
        [53.431739, -79.074684, 53.500475, -79.138578, 53.516867, -79.074684]);
    poly[239] = _TzPolygon([
      53.682954,
      -79.074684,
      53.694123,
      -79.159220,
      53.716022,
      -79.143230,
      53.713831,
      -79.090599,
      53.766074,
      -79.084248,
      53.769699,
      -79.074684
    ]);
    poly[240] = _TzPolygon(
        [53.792604, -79.074684, 53.795064, -79.082299, 53.795765, -79.074684]);
    poly[241] = _TzPolygon(
        [53.858173, -79.074684, 53.870221, -79.083484, 53.861974, -79.074684]);
    poly[242] = _TzPolygon(
        [53.885670, -79.074684, 53.902374, -79.105364, 53.898251, -79.074684]);
    poly[243] = _TzPolygon(
        [53.929164, -79.074684, 53.948967, -79.155066, 53.939203, -79.074684]);
    poly[244] = _TzPolygon(
        [53.942596, -79.074684, 53.949705, -79.107135, 53.952761, -79.074684]);
    poly[245] = _TzPolygon(
        [53.965376, -79.074684, 53.973700, -79.105658, 53.977333, -79.074684]);
    poly[246] = _TzPolygon([
      54.026383,
      -79.074684,
      54.023992,
      -79.103719,
      54.044557,
      -79.090647,
      54.080907,
      -79.177888,
      54.105004,
      -79.163409,
      54.100495,
      -79.074684
    ]);
    poly[247] = _TzPolygon([
      54.104149,
      -79.074684,
      54.130158,
      -79.124059,
      54.159808,
      -79.090832,
      54.137714,
      -79.244784,
      54.152630,
      -79.274953,
      54.174814,
      -79.237437,
      54.175454,
      -79.401392,
      54.231533,
      -79.310222,
      54.300164,
      -79.488423,
      54.345332,
      -79.470036,
      54.367055,
      -79.521034,
      54.437280,
      -79.487026,
      54.460543,
      -79.538528,
      54.486443,
      -79.509164,
      54.486443,
      -79.074684
    ]);
    poly[248] = _TzPolygon([
      52.785792,
      -78.761862,
      52.798727,
      -78.757741,
      52.806984,
      -78.794238,
      52.845271,
      -78.748980,
      52.851152,
      -78.834542,
      52.872690,
      -78.841376,
      52.861020,
      -78.888206,
      52.906982,
      -78.881033,
      52.913341,
      -78.921321,
      52.975727,
      -78.839387,
      52.981157,
      -78.934591,
      53.013113,
      -78.995149,
      53.030630,
      -78.955085,
      53.037203,
      -78.990952,
      53.055609,
      -78.931147,
      53.072022,
      -78.993482,
      53.140181,
      -78.946581,
      53.163901,
      -78.943088,
      53.169947,
      -78.976959,
      53.198555,
      -78.915338,
      53.211446,
      -78.944841,
      53.227688,
      -78.908604,
      53.232356,
      -78.953843,
      53.258470,
      -78.918921,
      53.269851,
      -78.972079,
      53.306830,
      -78.953331,
      53.327062,
      -78.999752,
      53.349197,
      -78.941323,
      53.385821,
      -78.952611,
      53.399133,
      -78.889535,
      53.410932,
      -79.064980,
      53.438931,
      -79.043155,
      53.426835,
      -79.070125,
      53.431739,
      -79.074684,
      53.516867,
      -79.074684,
      53.529227,
      -79.026505,
      53.564842,
      -79.031348,
      53.552378,
      -78.916538,
      53.567090,
      -78.985261,
      53.585092,
      -78.981675,
      53.585015,
      -79.074351,
      53.636117,
      -79.062641,
      53.636117,
      -78.217837,
      52.785792,
      -78.217837
    ]);
    poly[249] = _TzPolygon(
        [54.104149, -79.074684, 54.100105, -79.067007, 54.100495, -79.074684]);
    poly[250] = _TzPolygon([
      54.026383,
      -79.074684,
      54.029108,
      -79.041584,
      53.995529,
      -78.971581,
      54.000023,
      -79.068420,
      53.978142,
      -79.067791,
      53.977333,
      -79.074684
    ]);
    poly[251] = _TzPolygon(
        [53.965376, -79.074684, 53.956034, -79.039920, 53.952761, -79.074684]);
    poly[252] = _TzPolygon(
        [53.942596, -79.074684, 53.934980, -79.039917, 53.939203, -79.074684]);
    poly[253] = _TzPolygon([
      53.929501,
      -79.074684,
      53.899608,
      -78.951247,
      53.884680,
      -78.973691,
      53.898071,
      -79.074684
    ]);
    poly[254] = _TzPolygon([
      53.885557,
      -79.074684,
      53.873662,
      -79.052629,
      53.856420,
      -79.068757,
      53.861974,
      -79.074684
    ]);
    poly[255] = _TzPolygon([
      53.858173,
      -79.074684,
      53.842375,
      -79.063144,
      53.837120,
      -78.948760,
      53.806826,
      -78.954581,
      53.795765,
      -79.074684
    ]);
    poly[256] = _TzPolygon(
        [53.792604, -79.074684, 53.782064, -79.042058, 53.769699, -79.074684]);
    poly[257] = _TzPolygon([
      53.682954,
      -79.074684,
      53.680034,
      -79.052578,
      53.636117,
      -79.062641,
      53.636117,
      -79.074684
    ]);
    poly[258] = _TzPolygon([
      54.486443,
      -79.509164,
      54.489501,
      -79.505697,
      54.494865,
      -79.549013,
      54.523457,
      -79.536319,
      54.550978,
      -79.592823,
      54.565808,
      -79.530049,
      54.604806,
      -79.548519,
      54.624100,
      -79.584818,
      54.605398,
      -79.645531,
      54.628028,
      -79.665656,
      54.614821,
      -79.761573,
      54.635567,
      -79.774135,
      54.728733,
      -79.554477,
      54.860159,
      -78.973520,
      55.000000,
      -78.540218,
      55.043133,
      -78.315652,
      55.104528,
      -78.217837,
      54.486443,
      -78.217837
    ]);
    poly[259] = _TzPolygon([
      56.187094,
      -76.641539,
      56.146650,
      -76.642281,
      56.047835,
      -76.691017,
      56.000810,
      -76.799522,
      55.929778,
      -76.830164,
      55.827933,
      -76.978543,
      55.820223,
      -76.948683,
      55.822805,
      -76.993321,
      55.752620,
      -77.076064,
      55.749124,
      -77.052486,
      55.667230,
      -77.197289,
      55.719814,
      -77.078288,
      55.666792,
      -77.114831,
      55.395865,
      -77.554265,
      55.357940,
      -77.672390,
      55.271615,
      -77.783284,
      55.126956,
      -78.182104,
      55.104528,
      -78.217837,
      56.187094,
      -78.217837
    ]);
    poly[260] = _TzPolygon([
      58.482664,
      -78.217837,
      58.511207,
      -78.257790,
      58.520749,
      -78.330109,
      58.613431,
      -78.392553,
      58.608917,
      -78.437192,
      58.577533,
      -78.451993,
      58.568850,
      -78.385153,
      58.531613,
      -78.371605,
      58.557419,
      -78.470689,
      58.630370,
      -78.514551,
      58.670122,
      -78.615404,
      58.718865,
      -78.520381,
      58.772922,
      -78.592399,
      58.819216,
      -78.548171,
      58.933493,
      -78.599530,
      58.951266,
      -78.558708,
      58.913771,
      -78.450987,
      58.925913,
      -78.397117,
      58.992424,
      -78.302715,
      59.060478,
      -78.333443,
      59.072711,
      -78.299118,
      59.047947,
      -78.237732,
      59.114693,
      -78.270564,
      59.107473,
      -78.217837
    ]);
    poly[261] = _TzPolygon(
        [60.791479, -78.217837, 60.789666, -78.230859, 60.817553, -78.217837]);
    poly[262] = _TzPolygon([
      56.187094,
      -76.641539,
      56.190207,
      -76.641482,
      56.193783,
      -76.670324,
      56.202846,
      -76.615197,
      56.236862,
      -76.626536,
      56.287832,
      -76.557255,
      56.379708,
      -76.527154,
      56.555942,
      -76.556748,
      56.913180,
      -76.531624,
      56.924034,
      -76.570023,
      57.094678,
      -76.577184,
      57.326327,
      -76.669408,
      57.490789,
      -76.802190,
      57.705407,
      -76.904868,
      58.000000,
      -77.213234,
      58.018617,
      -77.198699,
      58.158863,
      -77.543660,
      58.217559,
      -77.522669,
      58.377964,
      -78.071282,
      58.482664,
      -78.217837,
      59.107473,
      -78.217837,
      59.097294,
      -78.143506,
      59.143958,
      -78.206220,
      59.184423,
      -78.138085,
      59.208883,
      -78.171467,
      59.236762,
      -78.038235,
      59.371311,
      -77.868729,
      59.390858,
      -77.765021,
      59.421604,
      -77.771880,
      59.384612,
      -77.927306,
      59.417150,
      -77.974331,
      59.448718,
      -77.951112,
      59.438065,
      -77.866118,
      59.487791,
      -77.937091,
      59.581917,
      -77.776548,
      59.588396,
      -77.781198,
      59.588396,
      -74.790449,
      56.187094,
      -74.790449
    ]);
    poly[263] = _TzPolygon([
      59.588396,
      -77.781198,
      59.679840,
      -77.846834,
      59.719928,
      -77.835025,
      59.718660,
      -77.744044,
      59.691713,
      -77.701196,
      59.708982,
      -77.541054,
      59.738460,
      -77.601258,
      59.761884,
      -77.592001,
      59.759707,
      -77.505192,
      59.827796,
      -77.377503,
      59.900326,
      -77.418596,
      59.912658,
      -77.487471,
      60.000000,
      -77.567627,
      60.030820,
      -77.519119,
      60.061857,
      -77.651135,
      60.167127,
      -77.563688,
      60.313822,
      -77.608406,
      60.327766,
      -77.660538,
      60.365224,
      -77.667988,
      60.386478,
      -77.787308,
      60.531371,
      -77.599743,
      60.589748,
      -77.799286,
      60.638313,
      -77.844850,
      60.701988,
      -77.711881,
      60.769083,
      -77.680461,
      60.743406,
      -77.789232,
      60.786172,
      -77.777507,
      60.749669,
      -77.926934,
      60.770647,
      -77.892165,
      60.790615,
      -77.923515,
      60.777451,
      -77.999847,
      60.803803,
      -78.129341,
      60.791479,
      -78.217837,
      60.817553,
      -78.217837,
      60.862435,
      -78.196879,
      60.931501,
      -78.100054,
      61.044457,
      -77.916374,
      61.060078,
      -77.837189,
      61.150087,
      -77.829425,
      61.197063,
      -77.723022,
      61.240859,
      -77.800614,
      61.246539,
      -77.762456,
      61.289047,
      -77.774125,
      61.289047,
      -76.504143,
      59.588396,
      -76.504143
    ]);
    poly[264] = _TzPolygon([
      61.289047,
      -77.774125,
      61.460909,
      -77.821303,
      61.438745,
      -77.737902,
      61.466286,
      -77.725944,
      61.477650,
      -77.573674,
      61.522204,
      -77.716286,
      61.576126,
      -77.655797,
      61.601315,
      -77.746094,
      61.679934,
      -77.798489,
      61.686870,
      -77.974057,
      61.728739,
      -78.032375,
      62.013718,
      -78.170000,
      62.157075,
      -78.204159,
      62.227340,
      -78.169823,
      62.258438,
      -78.204239,
      62.356690,
      -78.105247,
      62.473114,
      -77.725256,
      62.508673,
      -77.692929,
      62.517479,
      -77.594785,
      62.576849,
      -77.523886,
      62.580486,
      -77.430618,
      62.555074,
      -77.335162,
      62.516955,
      -76.773380,
      62.457502,
      -76.504143,
      61.289047,
      -76.504143
    ]);
    poly[265] = _TzPolygon([
      62.457502,
      -76.504143,
      62.352392,
      -76.028143,
      62.354351,
      -75.933517,
      62.266374,
      -75.506512,
      62.319052,
      -75.363516,
      62.258424,
      -74.916669,
      62.205728,
      -74.803039,
      62.208265,
      -74.790449,
      59.588396,
      -74.790449,
      59.588396,
      -76.504143
    ]);
    poly[266] = _TzPolygon([
      65.531634,
      -86.076901,
      65.531634,
      -85.256208,
      65.452991,
      -85.072612,
      63.144018,
      -85.072612,
      63.106410,
      -85.211020,
      63.114330,
      -85.369300,
      63.096020,
      -85.435830,
      63.128320,
      -85.562400,
      63.207040,
      -85.632730,
      63.399450,
      -85.662680,
      63.498310,
      -85.594500,
      63.546760,
      -85.630830,
      63.637670,
      -85.588190,
      63.688400,
      -85.636100,
      63.682670,
      -86.033400,
      63.632350,
      -86.261720,
      63.662600,
      -86.559180,
      63.641390,
      -86.660190,
      63.574840,
      -86.767180,
      63.545730,
      -86.935990,
      63.561420,
      -87.130440,
      63.656710,
      -87.218660,
      63.714790,
      -87.207280,
      63.911330,
      -86.900300,
      64.019440,
      -86.459100,
      64.065430,
      -86.353080,
      64.091360,
      -86.170960,
      64.166890,
      -86.183360,
      64.225570,
      -86.303820,
      64.260750,
      -86.280580,
      64.303840,
      -86.361640,
      64.406260,
      -86.329690,
      64.430280,
      -86.383260,
      64.579680,
      -86.392680,
      64.823390,
      -86.177340,
      64.873610,
      -86.195050,
      64.918740,
      -86.125310,
      64.985710,
      -86.210710,
      65.100830,
      -86.126310,
      65.286170,
      -86.158060,
      65.358840,
      -86.077620,
      65.373250,
      -86.135660,
      65.505980,
      -86.093380
    ]);
    poly[267] = _TzPolygon([
      65.531634,
      -86.076901,
      65.764210,
      -85.927510,
      65.923670,
      -85.515080,
      65.791890,
      -85.456630,
      65.794780,
      -85.389170,
      65.814540,
      -85.420360,
      65.833550,
      -85.354910,
      65.826080,
      -85.258070,
      65.761780,
      -85.140430,
      65.725650,
      -85.114440,
      65.719940,
      -85.171390,
      65.647503,
      -85.072612,
      65.570505,
      -85.072612,
      65.544510,
      -85.196050,
      65.567710,
      -85.277210,
      65.541290,
      -85.278750,
      65.531634,
      -85.256208
    ]);
    poly[268] = _TzPolygon([
      65.735862,
      -85.072612,
      65.744510,
      -85.099380,
      65.988620,
      -85.158770,
      66.030715,
      -85.083198,
      66.029979,
      -85.072612
    ]);
    poly[269] = _TzPolygon([
      62.989698,
      -85.000012,
      63.159975,
      -85.000015,
      63.227170,
      -84.775260,
      63.295750,
      -84.647710,
      63.285160,
      -84.565580,
      63.312430,
      -84.573510,
      63.371240,
      -84.453930,
      63.481820,
      -84.440090,
      63.606110,
      -84.282290,
      63.633470,
      -84.294360,
      63.592100,
      -84.083620,
      63.651760,
      -84.003480,
      63.718068,
      -83.814951,
      63.773079,
      -83.764209,
      63.763943,
      -83.605438,
      63.923014,
      -83.593896,
      64.006607,
      -83.663054,
      64.033190,
      -83.581481,
      64.101868,
      -83.532530,
      64.121058,
      -83.438072,
      64.097277,
      -83.393315,
      64.111508,
      -83.358918,
      62.989698,
      -83.358918
    ]);
    poly[270] = _TzPolygon([
      63.144078,
      -85.072612,
      63.159975,
      -85.000015,
      62.989698,
      -85.000012,
      62.989698,
      -85.072612
    ]);
    poly[271] = _TzPolygon([
      65.109593,
      -83.358918,
      65.140670,
      -83.397030,
      65.166980,
      -83.557870,
      65.154600,
      -83.690310,
      65.132750,
      -83.697890,
      65.167350,
      -83.699680,
      65.161200,
      -83.903130,
      65.193320,
      -83.872560,
      65.181760,
      -84.008530,
      65.207030,
      -84.056880,
      65.202980,
      -84.111580,
      65.220610,
      -84.084040,
      65.218160,
      -84.142850,
      65.270060,
      -84.235610,
      65.274360,
      -84.185050,
      65.336130,
      -84.128830,
      65.377010,
      -84.263010,
      65.374430,
      -84.347930,
      65.469880,
      -84.467530,
      65.475640,
      -84.553180,
      65.350710,
      -84.711860,
      65.213200,
      -84.771910,
      65.213600,
      -84.906580,
      65.329800,
      -84.986110,
      65.531634,
      -84.993627,
      65.531634,
      -83.358918
    ]);
    poly[272] = _TzPolygon([
      65.531634,
      -85.072612,
      65.531634,
      -85.000060,
      65.421008,
      -85.000094,
      65.452311,
      -85.072612
    ]);
    poly[273] = _TzPolygon([
      64.260666,
      -83.358918,
      64.260666,
      -81.718752,
      64.220211,
      -81.645224,
      64.104269,
      -81.645224,
      64.079860,
      -81.706690,
      64.041490,
      -82.010350,
      63.987200,
      -82.001400,
      63.979760,
      -81.865460,
      64.006527,
      -81.645224,
      63.566442,
      -81.645224,
      63.565810,
      -81.667540,
      63.591420,
      -81.660670,
      63.632890,
      -81.756530,
      63.624310,
      -81.910980,
      63.642760,
      -81.908700,
      63.686070,
      -82.063950,
      63.680660,
      -82.199140,
      63.656280,
      -82.253380,
      63.668230,
      -82.276370,
      63.643650,
      -82.293110,
      63.662670,
      -82.470180,
      63.705930,
      -82.468100,
      63.737790,
      -82.528360,
      63.788820,
      -82.491790,
      63.835930,
      -82.303370,
      63.874450,
      -82.397110,
      63.864240,
      -82.340350,
      63.893760,
      -82.356270,
      63.956490,
      -82.530380,
      63.955660,
      -82.782880,
      63.981251,
      -82.890824,
      63.938755,
      -83.064721,
      63.965734,
      -83.137686,
      64.007572,
      -83.138837,
      64.131145,
      -82.933088,
      64.178801,
      -83.002014,
      64.174996,
      -83.092989,
      64.149374,
      -83.161197,
      64.110323,
      -83.165030,
      64.143178,
      -83.282370,
      64.111508,
      -83.358918
    ]);
    poly[274] = _TzPolygon([
      65.109593,
      -83.358918,
      65.066500,
      -83.306070,
      65.003940,
      -83.302910,
      64.932310,
      -83.183600,
      64.913440,
      -83.001680,
      64.788010,
      -82.725490,
      64.747740,
      -82.525900,
      64.735520,
      -82.545560,
      64.761240,
      -82.346910,
      64.710160,
      -82.188920,
      64.683640,
      -82.211060,
      64.676060,
      -82.065260,
      64.633540,
      -82.038850,
      64.544127,
      -81.815612,
      64.461210,
      -81.731320,
      64.436710,
      -81.770630,
      64.267350,
      -81.730900,
      64.260666,
      -81.718752,
      64.260666,
      -83.358918
    ]);
    poly[275] = _TzPolygon([
      65.647503,
      -85.072612,
      65.610130,
      -85.021650,
      65.573030,
      -85.060620,
      65.570505,
      -85.072612
    ]);
    poly[276] = _TzPolygon([
      65.735862,
      -85.072612,
      66.029979,
      -85.072612,
      66.024293,
      -84.990774,
      65.990840,
      -85.008230,
      66.023677,
      -84.983878,
      66.018781,
      -84.915926,
      65.972920,
      -84.837040,
      65.941360,
      -84.848480,
      65.950770,
      -84.899730,
      65.907810,
      -84.791200,
      65.867060,
      -84.768460,
      65.869750,
      -84.725720,
      65.859730,
      -84.810330,
      65.832800,
      -84.700900,
      65.787900,
      -84.709270,
      65.767920,
      -84.640680,
      65.632450,
      -84.551420,
      65.557220,
      -84.631370,
      65.540330,
      -84.714370,
      65.585620,
      -84.819510,
      65.672380,
      -84.876110
    ]);
    poly[277] = _TzPolygon([
      68.073571,
      -85.000142,
      66.023903,
      -85.000090,
      66.024522,
      -85.072612,
      68.073571,
      -85.072612
    ]);
    poly[278] = _TzPolygon([
      65.570505,
      -85.072612,
      65.573030,
      -85.060620,
      65.610130,
      -85.021650,
      65.647503,
      -85.072612,
      65.740562,
      -85.072612,
      65.702961,
      -85.000008,
      65.531634,
      -85.000060,
      65.531634,
      -85.072612
    ]);
    poly[279] = _TzPolygon([
      73.157443,
      -85.000270,
      68.073571,
      -85.000142,
      68.073571,
      -88.500000,
      73.157443,
      -88.500000
    ]);
    poly[280] = _TzPolygon([
      64.220211,
      -81.645224,
      64.231510,
      -81.628300,
      64.128880,
      -81.583250,
      64.104269,
      -81.645224
    ]);
    poly[281] = _TzPolygon([
      64.006527,
      -81.645224,
      64.025380,
      -81.490110,
      64.044240,
      -81.429160,
      64.074870,
      -81.450660,
      64.085030,
      -81.389460,
      64.062430,
      -81.418340,
      64.074000,
      -81.288230,
      64.041540,
      -81.277980,
      64.021070,
      -81.074260,
      63.969242,
      -80.933669,
      63.985499,
      -80.904690,
      64.047430,
      -80.978030,
      64.079642,
      -80.912829,
      64.115282,
      -80.960017,
      64.119020,
      -80.918290,
      64.059730,
      -80.740660,
      64.005170,
      -80.695410,
      63.988620,
      -80.741600,
      64.001380,
      -80.608050,
      63.980200,
      -80.536720,
      63.944830,
      -80.513760,
      63.939380,
      -80.571410,
      63.911730,
      -80.562540,
      63.895590,
      -80.475710,
      63.872400,
      -80.580260,
      63.901230,
      -80.690530,
      63.875680,
      -80.664330,
      63.861120,
      -80.494040,
      63.819460,
      -80.315310,
      63.791230,
      -80.295170,
      63.800990,
      -80.204660,
      63.757900,
      -80.183920,
      63.786240,
      -80.175010,
      63.768960,
      -80.149500,
      63.724550,
      -80.212000,
      63.740140,
      -80.208690,
      63.718770,
      -80.489660,
      63.633220,
      -80.571720,
      63.566440,
      -80.791340,
      63.529410,
      -80.831150,
      63.525900,
      -80.910820,
      63.457620,
      -80.933320,
      63.445600,
      -81.048200,
      63.570010,
      -81.519280,
      63.566442,
      -81.645224
    ]);
    poly[282] = _TzPolygon([
      82.303898,
      -88.500000,
      82.356200,
      -87.962165,
      82.594807,
      -86.904367,
      82.771835,
      -85.000513,
      73.157443,
      -85.000270,
      73.157443,
      -88.500000
    ]);
    poly[283] = _TzPolygon([
      47.575298,
      -103.437448,
      47.527050,
      -103.434273,
      47.515476,
      -103.609627,
      47.575298,
      -103.610132
    ]);
    poly[284] = _TzPolygon([
      47.575298,
      -103.093448,
      47.570328,
      -103.183258,
      47.575298,
      -103.219296
    ]);
    poly[285] = _TzPolygon([
      47.575298,
      -102.432684,
      47.565319,
      -102.444198,
      47.515064,
      -102.438293,
      47.511234,
      -102.505493,
      47.544117,
      -102.599647,
      47.529018,
      -102.678001,
      47.574188,
      -102.693779,
      47.575298,
      -102.700876
    ]);
    poly[286] = _TzPolygon([
      42.766993,
      -102.432684,
      42.766993,
      -100.845588,
      42.755013,
      -100.845704,
      42.755328,
      -100.890666,
      42.611364,
      -100.890920,
      42.610367,
      -100.773315,
      42.438517,
      -100.775008,
      42.438502,
      -100.829514,
      42.351938,
      -100.829514,
      42.352040,
      -100.810093,
      42.205074,
      -100.808526,
      42.204855,
      -100.750189,
      42.088661,
      -100.750147,
      42.089584,
      -100.844398,
      41.740372,
      -100.843887,
      41.743195,
      -101.404457,
      41.395439,
      -101.405487,
      41.395943,
      -101.270180,
      41.048794,
      -101.268829,
      41.047630,
      -101.248695,
      40.697426,
      -101.245575,
      40.697338,
      -101.343185,
      40.002728,
      -101.322486,
      40.003062,
      -102.051756,
      39.568170,
      -102.049764,
      39.568550,
      -101.390160,
      39.134537,
      -101.391281,
      39.133850,
      -101.477890,
      38.700176,
      -101.484985,
      38.700375,
      -101.569351,
      37.958689,
      -101.536806,
      37.958689,
      -102.432684
    ]);
    poly[287] = _TzPolygon([
      45.171146,
      -102.432684,
      45.171146,
      -100.292771,
      45.095367,
      -100.328568,
      45.023617,
      -100.280991,
      45.025558,
      -100.371338,
      44.984058,
      -100.426239,
      44.860802,
      -100.398048,
      44.759071,
      -100.558273,
      44.831036,
      -100.691536,
      44.798576,
      -100.730042,
      44.767117,
      -100.716438,
      44.722065,
      -100.623131,
      44.577450,
      -100.637611,
      44.541946,
      -100.515800,
      44.493130,
      -100.579178,
      44.449493,
      -100.560533,
      44.168328,
      -100.848518,
      44.168338,
      -101.046893,
      43.846847,
      -101.068008,
      43.841442,
      -101.136740,
      43.820253,
      -101.141949,
      43.829918,
      -101.165590,
      43.808797,
      -101.169310,
      43.812404,
      -101.206887,
      43.785232,
      -101.233552,
      42.997896,
      -101.227692,
      42.997902,
      -100.901392,
      42.813727,
      -100.899765,
      42.813867,
      -100.865008,
      42.784552,
      -100.845418,
      42.766993,
      -100.845588,
      42.766993,
      -102.432684
    ]);
    poly[288] = _TzPolygon([
      45.171146,
      -100.291356,
      45.233192,
      -100.260887,
      45.312309,
      -100.316345,
      45.383984,
      -100.277863,
      45.499245,
      -100.363174,
      45.536617,
      -100.486488,
      45.594879,
      -100.430214,
      45.653843,
      -100.420937,
      45.654686,
      -100.339493,
      45.702648,
      -100.298958,
      45.816643,
      -100.387428,
      45.861507,
      -100.357803,
      45.878887,
      -100.426544,
      45.914410,
      -100.423439,
      45.909294,
      -100.473274,
      45.943654,
      -100.511793,
      45.944165,
      -101.324059,
      46.127716,
      -101.310051,
      46.149441,
      -101.189552,
      46.186039,
      -101.196503,
      46.215271,
      -101.116653,
      46.271698,
      -101.096138,
      46.277943,
      -101.025177,
      46.303230,
      -100.999718,
      46.320118,
      -101.017609,
      46.325314,
      -100.974876,
      46.373222,
      -100.924683,
      46.373222,
      -100.260872,
      45.171146,
      -100.260872
    ]);
    poly[289] = _TzPolygon([
      46.373222,
      -101.299215,
      46.373222,
      -100.924683,
      46.325314,
      -100.974876,
      46.320118,
      -101.017609,
      46.303230,
      -100.999718,
      46.275612,
      -101.036331,
      46.370392,
      -101.048958,
      46.370533,
      -101.299210
    ]);
    poly[290] = _TzPolygon([
      47.300749,
      -101.346778,
      47.366879,
      -101.362907,
      47.462914,
      -101.441185,
      47.519905,
      -101.374985,
      47.563206,
      -101.435257,
      47.527866,
      -101.611702,
      47.530487,
      -101.737099,
      47.495255,
      -101.817497,
      47.534542,
      -102.022751,
      47.572887,
      -102.029465,
      47.566730,
      -102.183136,
      47.575298,
      -102.194947,
      47.575298,
      -101.346778
    ]);
    poly[291] = _TzPolygon([
      47.560222,
      -102.432684,
      47.575298,
      -102.423863,
      47.575298,
      -102.205561,
      47.573383,
      -102.203430,
      47.329155,
      -102.207764,
      47.327629,
      -102.144234,
      46.982182,
      -102.144226,
      46.980900,
      -102.096992,
      46.717060,
      -102.093910,
      46.717266,
      -101.715202,
      46.631027,
      -101.716919,
      46.630083,
      -101.346778,
      46.373222,
      -101.346778,
      46.373222,
      -102.432684
    ]);
    poly[292] = _TzPolygon([
      47.242036,
      -101.346778,
      46.981875,
      -101.346778,
      46.982071,
      -101.763321,
      47.242020,
      -101.763672
    ]);
    poly[293] = _TzPolygon([
      46.630083,
      -101.346778,
      46.631027,
      -101.716919,
      46.717266,
      -101.715202,
      46.717060,
      -102.093910,
      46.980900,
      -102.096992,
      46.981981,
      -101.346778
    ]);
    poly[294] = _TzPolygon([
      46.630083,
      -101.346778,
      46.629963,
      -101.299706,
      46.373222,
      -101.299215,
      46.373222,
      -101.346778
    ]);
    poly[295] = _TzPolygon([
      47.300749,
      -101.346778,
      47.291618,
      -101.344551,
      47.268230,
      -101.256798,
      47.242039,
      -101.257156,
      47.242036,
      -101.346778
    ]);
    poly[296] = _TzPolygon([
      47.242036,
      -101.346778,
      47.242039,
      -101.257156,
      47.268230,
      -101.256798,
      47.246471,
      -101.201141,
      47.278255,
      -101.184792,
      47.295284,
      -101.078110,
      47.257961,
      -100.985664,
      47.185822,
      -100.988464,
      47.025436,
      -100.879517,
      46.982574,
      -100.935104,
      46.981875,
      -101.346778
    ]);
    poly[297] = _TzPolygon([
      46.373222,
      -101.299215,
      46.629963,
      -101.299706,
      46.630083,
      -101.346778,
      46.981981,
      -101.346778,
      46.982574,
      -100.935104,
      46.904800,
      -100.908463,
      46.806805,
      -100.817108,
      46.749069,
      -100.834251,
      46.731529,
      -100.774475,
      46.691620,
      -100.788506,
      46.689583,
      -100.742447,
      46.656368,
      -100.734642,
      46.677670,
      -100.639626,
      46.634357,
      -100.661606,
      46.593048,
      -100.565109,
      46.574833,
      -100.586197,
      46.531155,
      -100.543213,
      46.417394,
      -100.608800,
      46.412235,
      -100.681858,
      46.380089,
      -100.720617,
      46.400154,
      -100.734940,
      46.385326,
      -100.815903,
      46.407135,
      -100.889153,
      46.373222,
      -100.924683
    ]);
    poly[298] = _TzPolygon([
      38.511610,
      -87.528698,
      38.518406,
      -87.540489,
      38.491661,
      -87.540695,
      38.499451,
      -87.583733,
      38.450817,
      -87.598877,
      38.458000,
      -87.655998,
      38.432560,
      -87.662056,
      38.414097,
      -87.744130,
      38.475069,
      -87.739522,
      38.511911,
      -87.654166,
      38.568198,
      -87.652334,
      38.590988,
      -87.613831,
      38.641171,
      -87.619362,
      38.682720,
      -87.532755,
      38.689590,
      -87.528698
    ]);
    poly[299] = _TzPolygon([
      38.829184,
      -87.528698,
      38.863344,
      -87.553384,
      38.895093,
      -87.544089,
      38.895871,
      -87.528698
    ]);
  }
}

class _Initializer4 {
  static void _init() {
    poly[300] = _TzPolygon([
      38.397577,
      -86.679886,
      38.397579,
      -86.681435,
      38.444052,
      -86.681713,
      38.444052,
      -86.679886
    ]);
    poly[301] = _TzPolygon(
        [38.263424, -86.679886, 38.397579, -86.681435, 38.397577, -86.679886]);
    poly[302] = _TzPolygon([
      38.444052,
      -87.444677,
      38.444052,
      -87.072437,
      38.232304,
      -87.072975,
      38.231949,
      -87.298546,
      38.377327,
      -87.315987,
      38.379398,
      -87.407593,
      38.436062,
      -87.407120,
      38.436230,
      -87.444725
    ]);
    poly[303] = _TzPolygon([
      37.958689,
      -86.782360,
      37.998324,
      -86.813712,
      38.015083,
      -86.797275,
      37.998108,
      -86.772720,
      38.029007,
      -86.766540,
      38.040944,
      -86.786442,
      38.101456,
      -86.769600,
      38.143066,
      -86.806618,
      38.249157,
      -86.793579,
      38.256984,
      -86.679886,
      37.958689,
      -86.679886
    ]);
    poly[304] = _TzPolygon([
      38.444052,
      -87.072377,
      38.444052,
      -86.681250,
      38.248470,
      -86.679886,
      38.249157,
      -86.793579,
      38.207005,
      -86.793411,
      38.206470,
      -87.072777
    ]);
    poly[305] = _TzPolygon(
        [38.929415, -87.523497, 38.917917, -87.528698, 38.929415, -87.528698]);
    poly[306] = _TzPolygon([
      38.829184,
      -87.528698,
      38.788429,
      -87.499245,
      38.743126,
      -87.497078,
      38.689590,
      -87.528698
    ]);
    poly[307] = _TzPolygon([
      38.498743,
      -87.528698,
      38.495663,
      -87.495476,
      38.532169,
      -87.464203,
      38.466904,
      -87.463936,
      38.467056,
      -87.444534,
      38.444052,
      -87.444677,
      38.444052,
      -87.528698
    ]);
    poly[308] = _TzPolygon([
      38.444052,
      -86.679886,
      38.444052,
      -86.681713,
      38.907909,
      -86.684486,
      38.905399,
      -87.528698,
      38.929415,
      -87.520966,
      38.929402,
      -86.679886
    ]);
    poly[309] = _TzPolygon([
      38.444052,
      -87.444677,
      38.467056,
      -87.444534,
      38.466904,
      -87.463936,
      38.532169,
      -87.464203,
      38.539093,
      -87.387802,
      38.512032,
      -87.369240,
      38.544285,
      -87.358444,
      38.510220,
      -87.302177,
      38.552521,
      -87.203186,
      38.515636,
      -87.151665,
      38.537617,
      -87.107735,
      38.514671,
      -87.072258,
      38.444052,
      -87.072437
    ]);
    poly[310] = _TzPolygon([
      37.958689,
      -86.512997,
      38.027879,
      -86.524969,
      38.045672,
      -86.490685,
      37.958689,
      -86.371197
    ]);
    poly[311] = _TzPolygon([
      38.397182,
      -86.361189,
      38.397577,
      -86.679886,
      38.444045,
      -86.679886,
      38.444045,
      -86.361189
    ]);
    poly[312] = _TzPolygon([
      38.256984,
      -86.679886,
      38.264446,
      -86.571495,
      38.208244,
      -86.572021,
      38.208260,
      -86.461319,
      38.106781,
      -86.466217,
      38.078303,
      -86.430516,
      38.050490,
      -86.452192,
      38.038327,
      -86.521825,
      37.958689,
      -86.511647,
      37.958689,
      -86.679886
    ]);
    poly[313] = _TzPolygon([
      37.958689,
      -86.371197,
      38.045672,
      -86.490685,
      38.067171,
      -86.432789,
      38.124531,
      -86.457115,
      38.105040,
      -86.401407,
      38.129274,
      -86.379775,
      38.130577,
      -86.361189,
      37.958689,
      -86.361189
    ]);
    poly[314] = _TzPolygon(
        [38.166943, -86.361189, 38.171395, -86.375225, 38.196502, -86.361189]);
    poly[315] = _TzPolygon([
      38.397182,
      -86.361189,
      38.444045,
      -86.361189,
      38.444045,
      -86.042493,
      38.419053,
      -86.042493,
      38.422497,
      -86.309082,
      38.397114,
      -86.306793
    ]);
    poly[316] = _TzPolygon([
      37.958689,
      -86.043516,
      38.008641,
      -86.094663,
      38.011308,
      -86.178983,
      38.052721,
      -86.261273,
      38.137874,
      -86.271802,
      38.180989,
      -86.331092,
      38.201748,
      -86.290321,
      38.291420,
      -86.253128,
      38.316414,
      -86.289413,
      38.361698,
      -86.270500,
      38.360294,
      -86.248199,
      38.422401,
      -86.254448,
      38.419165,
      -86.042493,
      37.960669,
      -86.042493
    ]);
    poly[317] = _TzPolygon([
      38.130577,
      -86.361189,
      38.132877,
      -86.328398,
      38.156236,
      -86.327439,
      38.166943,
      -86.361189,
      38.196728,
      -86.361063,
      38.137874,
      -86.271802,
      38.052721,
      -86.261273,
      38.011308,
      -86.178983,
      38.008641,
      -86.094663,
      37.958840,
      -86.045374,
      37.963889,
      -86.042493,
      37.958689,
      -86.042493,
      37.958689,
      -86.361189
    ]);
    poly[318] = _TzPolygon([
      38.929392,
      -86.042493,
      38.929382,
      -85.405100,
      38.736694,
      -85.405100,
      38.736431,
      -85.416435,
      38.691794,
      -85.456733,
      38.586773,
      -85.428366,
      38.586138,
      -85.478087,
      38.606736,
      -85.496666,
      38.604641,
      -85.793938,
      38.563095,
      -85.821411,
      38.547020,
      -85.866867,
      38.503147,
      -85.884888,
      38.488686,
      -85.993774,
      38.418438,
      -85.994843,
      38.419053,
      -86.042493
    ]);
    poly[319] = _TzPolygon([
      37.963889,
      -86.042493,
      37.994708,
      -86.024907,
      37.997100,
      -85.934216,
      38.040669,
      -85.882564,
      38.085315,
      -85.719773,
      38.073924,
      -85.556654,
      38.118173,
      -85.429050,
      38.263586,
      -85.405100,
      37.958689,
      -85.405100,
      37.958689,
      -86.042493
    ]);
    poly[320] = _TzPolygon([
      38.263586,
      -85.405100,
      38.380139,
      -85.637879,
      38.440837,
      -85.604147,
      38.467992,
      -85.499305,
      38.537747,
      -85.417766,
      38.686032,
      -85.456647,
      38.727023,
      -85.437593,
      38.729917,
      -85.405100
    ]);
    poly[321] = _TzPolygon([
      38.929382,
      -85.405100,
      38.929379,
      -85.203407,
      38.691010,
      -85.201473,
      38.739879,
      -85.267691,
      38.736694,
      -85.405100
    ]);
    poly[322] = _TzPolygon([
      38.929415,
      -85.135857,
      38.903080,
      -85.140245,
      38.900969,
      -84.870672,
      38.874978,
      -84.784609,
      38.830370,
      -84.829928,
      38.783935,
      -84.815615,
      38.778147,
      -84.992287,
      38.687508,
      -85.188442,
      38.929379,
      -85.203407
    ]);
    poly[323] = _TzPolygon([
      38.929415,
      -87.520966,
      38.954417,
      -87.512187,
      38.988786,
      -87.578319,
      39.057286,
      -87.572588,
      39.144900,
      -87.645990,
      39.218404,
      -87.574558,
      39.282050,
      -87.609779,
      39.333649,
      -87.588813,
      39.347706,
      -87.531375,
      40.736892,
      -87.526046,
      40.736495,
      -87.096788,
      40.839874,
      -87.099533,
      40.840809,
      -86.987160,
      40.913391,
      -86.987656,
      40.909332,
      -86.467178,
      41.432968,
      -86.466603,
      41.432869,
      -86.524672,
      41.433800,
      -86.524674,
      41.433800,
      -86.466347,
      38.929415,
      -86.466347
    ]);
    poly[324] = _TzPolygon([
      41.433800,
      -86.641510,
      41.432968,
      -86.466603,
      41.374874,
      -86.466347,
      41.171120,
      -86.467056,
      41.172207,
      -86.930870,
      41.237099,
      -86.930038,
      41.285160,
      -86.784241,
      41.400585,
      -86.702057
    ]);
    poly[325] = _TzPolygon([
      41.172783,
      -86.698959,
      41.171120,
      -86.467056,
      40.997345,
      -86.466530,
      40.909332,
      -86.467178,
      40.913601,
      -86.929291,
      41.085999,
      -86.930954,
      41.172207,
      -86.930870
    ]);
    poly[326] = _TzPolygon([
      38.929415,
      -85.135368,
      39.308182,
      -85.065224,
      39.305186,
      -84.819389,
      41.433800,
      -84.807396,
      41.433800,
      -74.790449,
      38.929415,
      -74.790449
    ]);
    poly[327] = _TzPolygon([
      47.575298,
      -89.766677,
      46.566360,
      -90.418620,
      46.533768,
      -90.395069,
      46.553432,
      -90.332230,
      46.516896,
      -90.316554,
      46.501768,
      -90.216811,
      46.336992,
      -90.120263,
      46.138388,
      -89.091741,
      46.051242,
      -88.888320,
      44.504549,
      -88.888320,
      44.504549,
      -90.512970,
      47.575298,
      -90.512970
    ]);
    poly[328] = _TzPolygon([
      46.417681,
      -88.888320,
      46.417449,
      -88.992379,
      46.330379,
      -88.991730,
      46.332202,
      -89.365776,
      46.503688,
      -89.364647,
      46.506355,
      -89.738465,
      46.591235,
      -89.737343,
      46.592727,
      -89.865685,
      46.767847,
      -89.862763,
      46.671753,
      -90.035311,
      46.608837,
      -90.332711,
      46.566360,
      -90.418620,
      47.575298,
      -89.766677,
      47.575298,
      -88.888320
    ]);
    poly[329] = _TzPolygon(
        [45.782041, -88.075995, 45.809708, -88.130129, 45.866410, -88.075995]);
    poly[330] = _TzPolygon([
      45.874787,
      -88.075995,
      45.882282,
      -88.101264,
      45.921546,
      -88.102461,
      45.963532,
      -88.246894,
      45.955215,
      -88.327464,
      45.991765,
      -88.380503,
      45.975092,
      -88.416381,
      45.999514,
      -88.458672,
      45.991367,
      -88.489355,
      46.020019,
      -88.514692,
      46.017770,
      -88.601178,
      45.987896,
      -88.615957,
      45.988547,
      -88.670827,
      46.013699,
      -88.679073,
      46.015157,
      -88.780220,
      46.033645,
      -88.796557,
      46.020340,
      -88.816187,
      46.039924,
      -88.861900,
      46.039924,
      -88.075995
    ]);
    poly[331] = _TzPolygon(
        [45.874787, -88.075995, 45.872938, -88.069763, 45.866410, -88.075995]);
    poly[332] = _TzPolygon([
      45.782041,
      -88.075995,
      45.780085,
      -88.072167,
      45.795393,
      -87.991447,
      45.758220,
      -87.963452,
      45.754379,
      -87.876898,
      45.681483,
      -87.781419,
      45.652987,
      -87.825129,
      45.588498,
      -87.777199,
      45.563055,
      -87.792372,
      45.561045,
      -87.833733,
      45.499967,
      -87.792769,
      45.434473,
      -87.861697,
      45.403872,
      -87.849322,
      45.354697,
      -87.888052,
      45.349442,
      -87.754104,
      45.389893,
      -87.693956,
      45.368754,
      -87.657350,
      45.339396,
      -87.648126,
      45.197469,
      -87.741810,
      45.107512,
      -87.659952,
      45.076434,
      -87.442508,
      45.201969,
      -87.405694,
      45.240657,
      -87.315422,
      45.280796,
      -87.263670,
      44.504549,
      -87.263670,
      44.504549,
      -88.075995
    ]);
    poly[333] = _TzPolygon([
      45.280796,
      -87.263670,
      45.240657,
      -87.315422,
      45.201969,
      -87.405694,
      45.076434,
      -87.442508,
      45.094765,
      -87.591660,
      45.150084,
      -87.599895,
      45.293051,
      -87.436172,
      45.539402,
      -87.263670
    ]);
    poly[334] = _TzPolygon([
      45.539402,
      -87.263670,
      45.549538,
      -87.330078,
      45.898045,
      -87.329216,
      45.897785,
      -87.370407,
      45.984730,
      -87.370888,
      45.985188,
      -87.620338,
      46.039924,
      -87.620033,
      46.039924,
      -87.263670
    ]);
    poly[335] = _TzPolygon(
        [46.051242, -88.888320, 46.039924, -88.861900, 46.039924, -88.888320]);
    poly[336] = _TzPolygon([
      46.039924,
      -88.861900,
      46.051242,
      -88.888320,
      46.417681,
      -88.888320,
      46.419403,
      -88.117409,
      46.247120,
      -88.117798,
      46.247551,
      -87.618874,
      46.039924,
      -87.620033
    ]);
    poly[337] = _TzPolygon([
      45.280796,
      -87.263670,
      45.352540,
      -87.171170,
      45.444230,
      -87.101133,
      45.443610,
      -86.754236,
      45.236125,
      -86.249548,
      45.080800,
      -86.499930,
      44.881002,
      -86.686288,
      44.131905,
      -87.013234,
      43.734111,
      -87.114102,
      43.379859,
      -87.147166,
      42.493800,
      -87.019861,
      41.760956,
      -87.207774,
      41.759659,
      -86.524217,
      41.650224,
      -86.526638,
      41.649516,
      -86.487267,
      41.570473,
      -86.486484,
      41.523012,
      -86.499957,
      41.519988,
      -86.524839,
      41.433800,
      -86.524674,
      41.433800,
      -87.263670
    ]);
    poly[338] = _TzPolygon([
      41.433800,
      -86.524674,
      41.519988,
      -86.524839,
      41.523012,
      -86.499957,
      41.577677,
      -86.486173,
      41.649516,
      -86.487267,
      41.650224,
      -86.526638,
      41.759659,
      -86.524217,
      41.760216,
      -84.805883,
      41.433800,
      -84.804620
    ]);
    poly[339] = _TzPolygon([
      41.433800,
      -84.807396,
      41.696046,
      -84.805919,
      41.713984,
      -84.145365,
      41.433800,
      -84.145365
    ]);
    poly[340] = _TzPolygon([
      46.531101,
      -84.145365,
      46.534056,
      -84.225889,
      46.492944,
      -84.276250,
      46.500583,
      -84.421139,
      46.452861,
      -84.475639,
      46.460806,
      -84.556833,
      46.634306,
      -84.762833,
      46.888917,
      -84.860139,
      47.575298,
      -86.560039,
      47.575298,
      -84.145365
    ]);
    poly[341] = _TzPolygon([
      46.531101,
      -84.145365,
      46.530500,
      -84.129000,
      46.504222,
      -84.111139,
      46.420470,
      -84.145365
    ]);
    poly[342] = _TzPolygon([
      46.415536,
      -84.145365,
      46.241444,
      -84.108250,
      46.187333,
      -84.077139,
      46.149444,
      -84.005972,
      46.056750,
      -83.955472,
      46.060444,
      -83.903528,
      46.118861,
      -83.826333,
      46.105778,
      -83.571944,
      45.998167,
      -83.433778,
      45.821278,
      -83.597167,
      45.338639,
      -82.518611,
      43.591194,
      -82.122806,
      42.925812,
      -82.456027,
      42.761906,
      -82.467667,
      42.609849,
      -82.521568,
      42.550978,
      -82.589981,
      42.541746,
      -82.661886,
      42.373492,
      -82.830250,
      42.308680,
      -83.079419,
      42.238412,
      -83.126361,
      42.125263,
      -83.119228,
      42.041000,
      -83.149694,
      41.959410,
      -83.112460,
      41.733794,
      -83.415851,
      41.713984,
      -84.145365
    ]);
    poly[343] = _TzPolygon([
      41.713984,
      -84.145365,
      41.733794,
      -83.415851,
      41.959410,
      -83.112460,
      41.863583,
      -83.069111,
      41.676556,
      -82.679722,
      41.676556,
      -82.397472,
      42.207556,
      -81.245722,
      42.242444,
      -81.027060,
      41.433800,
      -81.027060,
      41.433800,
      -84.145365
    ]);
    poly[344] = _TzPolygon([
      45.006278,
      -74.790449,
      45.015861,
      -74.826528,
      44.977500,
      -74.992806,
      44.772167,
      -75.413722,
      44.515278,
      -75.766917,
      44.432056,
      -75.821389,
      44.367806,
      -75.912833,
      44.280722,
      -76.161806,
      44.239833,
      -76.164306,
      44.215000,
      -76.206833,
      44.199056,
      -76.312722,
      44.134333,
      -76.352861,
      44.094056,
      -76.438944,
      43.631139,
      -76.796694,
      43.631139,
      -78.690389,
      43.450472,
      -79.200667,
      43.254667,
      -79.055944,
      43.143667,
      -79.042333,
      43.077861,
      -79.074111,
      43.057885,
      -79.000418,
      42.984056,
      -79.016418,
      42.933576,
      -78.909411,
      42.828304,
      -78.935381,
      42.393556,
      -80.079944,
      42.242444,
      -81.027060,
      47.575298,
      -81.027060,
      47.575298,
      -74.790449
    ]);
    poly[345] = _TzPolygon([
      49.000262,
      -108.824497,
      48.999877,
      -104.048736,
      47.997105,
      -104.044118,
      47.959892,
      -103.965942,
      47.848114,
      -103.965576,
      47.848930,
      -103.800613,
      47.675797,
      -103.799232,
      47.675842,
      -103.738724,
      47.588871,
      -103.737091,
      47.589474,
      -103.610252,
      47.575298,
      -103.610132,
      47.575298,
      -108.824497
    ]);
    poly[346] = _TzPolygon([
      47.575298,
      -103.436537,
      47.591843,
      -103.438537,
      47.576626,
      -103.069450,
      47.633202,
      -103.020645,
      47.669712,
      -103.038185,
      47.674011,
      -103.004082,
      47.600971,
      -102.865021,
      47.575298,
      -102.711964
    ]);
    poly[347] = _TzPolygon([
      48.999474,
      -102.711964,
      48.999483,
      -108.824497,
      49.384490,
      -108.824497,
      49.384490,
      -102.711964
    ]);
    poly[348] = _TzPolygon([
      47.575298,
      -102.423863,
      47.590809,
      -102.414787,
      47.615253,
      -102.250025,
      47.575298,
      -102.250025
    ]);
    poly[349] = _TzPolygon([
      47.615253,
      -102.250025,
      47.575298,
      -102.205561,
      47.575298,
      -102.250025
    ]);
    poly[350] = _TzPolygon([
      48.999891,
      -102.711964,
      48.999968,
      -95.153150,
      47.615253,
      -95.153150,
      47.615253,
      -102.711964
    ]);
    poly[351] = _TzPolygon([
      49.384490,
      -95.153422,
      48.999968,
      -95.153150,
      48.999472,
      -101.361990,
      49.384490,
      -101.384065
    ]);
    poly[352] = _TzPolygon([
      49.384401,
      -95.153150,
      49.353250,
      -95.058306,
      49.370194,
      -94.957389,
      49.321389,
      -94.816278,
      48.884111,
      -94.683444,
      48.789444,
      -94.694389,
      48.741222,
      -94.641278,
      48.692389,
      -94.452389,
      48.710972,
      -94.415833,
      48.707806,
      -94.291194,
      48.649444,
      -94.224194,
      48.630222,
      -93.844361,
      48.516306,
      -93.793361,
      48.546444,
      -93.467389,
      48.591639,
      -93.465472,
      48.642806,
      -93.254667,
      48.623250,
      -93.178389,
      48.631556,
      -92.954778,
      48.608361,
      -92.950000,
      48.539389,
      -92.728417,
      48.542556,
      -92.634889,
      48.503278,
      -92.627028,
      48.494833,
      -92.698694,
      48.462972,
      -92.712694,
      48.436472,
      -92.656222,
      48.442630,
      -92.576575,
      47.575298,
      -92.576575,
      47.575298,
      -95.153150
    ]);
    poly[353] = _TzPolygon(
        [48.736900, -94.540200, 48.705211, -94.540403, 48.736900, -94.618618]);
    poly[354] = _TzPolygon([
      48.442630,
      -92.576575,
      48.447972,
      -92.507472,
      48.414083,
      -92.456444,
      48.352083,
      -92.469778,
      48.220278,
      -92.369917,
      48.248194,
      -92.269583,
      48.316250,
      -92.306167,
      48.354917,
      -92.262556,
      48.359361,
      -92.055222,
      48.321083,
      -92.000111,
      48.265417,
      -92.006528,
      48.252250,
      -91.954111,
      48.233139,
      -91.958361,
      48.237972,
      -91.893111,
      48.206944,
      -91.864361,
      48.199500,
      -91.715361,
      48.114639,
      -91.711750,
      48.122500,
      -91.682111,
      48.097111,
      -91.639917,
      48.108583,
      -91.559111,
      48.043778,
      -91.567500,
      48.068389,
      -91.488194,
      48.048667,
      -91.429583,
      48.074848,
      -91.288287,
      47.575298,
      -91.288287,
      47.575298,
      -92.576575
    ]);
    poly[355] = _TzPolygon([
      49.384450,
      -92.576575,
      49.384474,
      -91.288287,
      49.000000,
      -91.288287,
      49.000000,
      -91.752800,
      48.661400,
      -91.752800,
      48.647400,
      -91.924900,
      48.617100,
      -92.012400,
      48.560600,
      -92.097900,
      48.545500,
      -92.178500,
      48.464100,
      -92.267200,
      48.464100,
      -92.219900,
      48.405600,
      -92.150900,
      48.405600,
      -91.955800,
      48.377600,
      -91.955800,
      48.353878,
      -92.051986,
      48.354917,
      -92.262556,
      48.316250,
      -92.306167,
      48.248194,
      -92.269583,
      48.220167,
      -92.369139,
      48.352083,
      -92.469778,
      48.414083,
      -92.456444,
      48.447972,
      -92.507472,
      48.442630,
      -92.576575
    ]);
    poly[356] = _TzPolygon([
      48.074848,
      -91.288287,
      48.078833,
      -91.266778,
      48.181139,
      -91.082472,
      48.245944,
      -90.885750,
      48.239556,
      -90.839306,
      48.177028,
      -90.836389,
      48.163833,
      -90.777944,
      48.136889,
      -90.798222,
      48.090972,
      -90.751583,
      48.123806,
      -90.579667,
      48.095917,
      -90.556694,
      48.108750,
      -90.467389,
      48.090917,
      -90.374278,
      48.112611,
      -90.140833,
      48.084833,
      -90.023333,
      48.040013,
      -90.000000,
      47.575298,
      -90.000000,
      47.575298,
      -91.288287
    ]);
    poly[357] = _TzPolygon([
      48.250000,
      -90.000000,
      48.500000,
      -90.963900,
      49.000000,
      -90.963900,
      49.000000,
      -91.000000,
      49.250000,
      -91.000000,
      49.384490,
      -90.462040,
      49.384490,
      -90.000000
    ]);
    poly[358] = _TzPolygon([
      49.384474,
      -91.288287,
      49.384490,
      -90.462040,
      49.250000,
      -91.000000,
      49.000000,
      -91.000000,
      49.000000,
      -91.288287
    ]);
    poly[359] = _TzPolygon([
      48.040013,
      -90.000000,
      48.028167,
      -89.993833,
      47.987667,
      -89.897194,
      48.022944,
      -89.775361,
      48.003694,
      -89.650861,
      48.018000,
      -89.610694,
      47.996028,
      -89.580972,
      48.013716,
      -89.483385,
      47.575298,
      -89.766677,
      47.575298,
      -90.000000
    ]);
    poly[360] = _TzPolygon([
      47.575298,
      -89.766677,
      48.013716,
      -89.483385,
      47.974261,
      -89.337550,
      48.245397,
      -88.677442,
      48.306063,
      -88.369862,
      47.575298,
      -86.560039
    ]);
    poly[361] = _TzPolygon([
      48.515693,
      -89.241770,
      48.514520,
      -89.182575,
      48.483230,
      -89.182238,
      48.498834,
      -89.152530,
      48.475771,
      -89.151415,
      48.337464,
      -89.203006,
      48.354095,
      -89.289440,
      48.289425,
      -89.338349,
      48.289522,
      -89.388614,
      48.514883,
      -89.427850
    ]);
    poly[362] = _TzPolygon([
      48.515693,
      -74.790449,
      48.515693,
      -90.000000,
      49.384490,
      -90.000000,
      49.384490,
      -74.790449
    ]);
    poly[363] = _TzPolygon([
      16.259052,
      -92.524388,
      16.259052,
      -90.424127,
      16.249459,
      -90.456243,
      16.233535,
      -90.429012,
      16.208770,
      -90.458378,
      16.163874,
      -90.426029,
      16.149302,
      -90.452232,
      16.137619,
      -90.429320,
      16.111279,
      -90.458890,
      16.092712,
      -90.454985,
      16.103160,
      -90.426183,
      16.073805,
      -90.442155,
      16.073893,
      -91.731518,
      15.260624,
      -92.210543,
      15.069636,
      -92.059330,
      15.021265,
      -92.085653,
      14.989379,
      -92.150485,
      14.891650,
      -92.136216,
      14.828263,
      -92.184847,
      14.690168,
      -92.142914,
      14.575174,
      -92.184044,
      14.388624,
      -92.374389,
      14.534506,
      -92.524388
    ]);
    poly[364] = _TzPolygon(
        [16.259052, -90.424127, 16.298406, -90.437307, 16.298406, -90.424127]);
    poly[365] = _TzPolygon([
      14.277527,
      -90.424127,
      14.277527,
      -89.540646,
      14.219981,
      -89.525447,
      14.185392,
      -89.666846,
      14.119336,
      -89.725527,
      14.031734,
      -89.737473,
      14.058552,
      -89.855956,
      13.939036,
      -90.023241,
      13.897435,
      -90.036101,
      13.834582,
      -90.112175,
      13.782988,
      -90.117143,
      13.753666,
      -90.093049,
      13.747068,
      -90.135096,
      13.634580,
      -90.179097,
      13.730129,
      -90.424127
    ]);
    poly[366] = _TzPolygon([
      14.145074,
      -88.763006,
      14.164585,
      -88.798875,
      14.118432,
      -88.807631,
      14.104579,
      -88.831290,
      14.178619,
      -88.866682,
      14.205668,
      -88.902709,
      14.213175,
      -88.972326,
      14.258578,
      -88.991514,
      14.271430,
      -89.025804,
      14.277527,
      -89.025307,
      14.277527,
      -88.763006
    ]);
    poly[367] = _TzPolygon([
      13.100948,
      -88.763006,
      14.145074,
      -88.763006,
      14.131238,
      -88.737571,
      14.010135,
      -88.683569,
      14.022820,
      -88.627710,
      13.978223,
      -88.569002,
      13.985429,
      -88.528992,
      13.966999,
      -88.499758,
      13.910913,
      -88.510959,
      13.848557,
      -88.468004,
      13.885732,
      -88.418651,
      13.870320,
      -88.356406,
      13.896078,
      -88.345368,
      13.889904,
      -88.317336,
      13.914481,
      -88.265897,
      13.937240,
      -88.265183,
      13.937823,
      -88.226871,
      13.999938,
      -88.230003,
      13.992271,
      -88.072735,
      13.871008,
      -88.014784,
      13.902854,
      -87.959032,
      13.884478,
      -87.922072,
      13.920512,
      -87.799886,
      13.892242,
      -87.798994,
      13.804020,
      -87.708407,
      13.689278,
      -87.755454,
      13.603910,
      -87.754399,
      13.524001,
      -87.793452,
      13.505334,
      -87.720768,
      13.467370,
      -87.716363,
      13.442394,
      -87.723823,
      13.405345,
      -87.821631,
      13.348959,
      -87.743498,
      13.197257,
      -87.635139,
      13.127742,
      -87.662906,
      13.055135,
      -87.811139,
      12.976046,
      -87.901532,
      13.040801,
      -88.149177,
      13.028296,
      -88.402676
    ]);
    poly[368] = _TzPolygon([
      12.256649,
      -87.101885,
      12.335098,
      -87.236893,
      12.676029,
      -87.588116,
      12.781743,
      -87.741651,
      12.976046,
      -87.901532,
      13.108935,
      -87.720047,
      13.167505,
      -87.543216,
      13.078127,
      -87.479358,
      12.994697,
      -87.376361,
      13.001460,
      -87.101885
    ]);
    poly[369] = _TzPolygon([
      14.277527,
      -89.540646,
      14.295730,
      -89.545454,
      14.311504,
      -89.592266,
      14.347040,
      -89.587545,
      14.351679,
      -89.563425,
      14.416928,
      -89.573916,
      14.416140,
      -89.542585,
      14.379612,
      -89.529608,
      14.419990,
      -89.491408,
      14.412105,
      -89.434759,
      14.451049,
      -89.392882,
      14.427541,
      -89.385231,
      14.438066,
      -89.334515,
      14.364758,
      -89.181962,
      14.402375,
      -89.097665,
      14.341079,
      -89.082640,
      14.314239,
      -89.022311,
      14.277527,
      -89.025307
    ]);
    poly[370] = _TzPolygon([
      14.277527,
      -89.025307,
      14.314239,
      -89.022311,
      14.341079,
      -89.082640,
      14.402375,
      -89.097665,
      14.367367,
      -89.194944,
      14.438066,
      -89.334515,
      14.420616,
      -89.355987,
      14.466834,
      -89.356821,
      14.493859,
      -89.301905,
      14.584726,
      -89.238782,
      14.584238,
      -89.153547,
      14.671379,
      -89.157208,
      14.712619,
      -89.131294,
      14.731076,
      -89.165396,
      14.775031,
      -89.168907,
      14.834737,
      -89.223766,
      14.882547,
      -89.228084,
      14.928755,
      -89.172682,
      14.979754,
      -89.156632,
      15.002481,
      -89.184430,
      15.068276,
      -89.153596,
      15.136248,
      -88.973842,
      15.287732,
      -88.763006,
      14.277527,
      -88.763006
    ]);
    poly[371] = _TzPolygon([
      16.298406,
      -88.763006,
      15.966730,
      -88.763006,
      15.958374,
      -88.770630,
      15.887454,
      -88.922818,
      15.894432,
      -89.019023,
      15.917339,
      -89.054640,
      15.895775,
      -89.114966,
      15.913280,
      -89.176491,
      15.885729,
      -89.222330,
      15.896013,
      -89.227325,
      16.298406,
      -89.200533
    ]);
    poly[372] = _TzPolygon([
      16.298406,
      -88.308067,
      16.069956,
      -88.498377,
      16.050990,
      -88.686124,
      15.966730,
      -88.763006,
      16.298406,
      -88.763006
    ]);
    poly[373] = _TzPolygon([
      15.966730,
      -88.763006,
      16.050990,
      -88.686124,
      16.069956,
      -88.498377,
      15.907558,
      -88.175585,
      15.723487,
      -88.221558,
      15.720511,
      -88.250984,
      15.688664,
      -88.248414,
      15.672459,
      -88.324726,
      15.618539,
      -88.344576,
      15.426124,
      -88.570391,
      15.287732,
      -88.763006
    ]);
    poly[374] = _TzPolygon([
      16.298406,
      -90.437307,
      16.304503,
      -90.439349,
      16.339694,
      -90.382597,
      16.363924,
      -90.410369,
      16.363477,
      -90.372459,
      16.394145,
      -90.403333,
      16.413297,
      -90.389878,
      16.423064,
      -90.485338,
      16.460803,
      -90.479847,
      16.457908,
      -90.529304,
      16.482848,
      -90.546729,
      16.478371,
      -90.631161,
      16.502727,
      -90.605928,
      16.521325,
      -90.615713,
      16.517957,
      -90.646068,
      16.560845,
      -90.646977,
      16.577744,
      -90.626069,
      16.595848,
      -90.641200,
      16.581823,
      -90.667110,
      16.640335,
      -90.658118,
      16.727064,
      -90.714251,
      16.775668,
      -90.802141,
      16.798266,
      -90.804094,
      16.821935,
      -90.921765,
      16.859326,
      -90.933639,
      16.863626,
      -90.974055,
      16.884474,
      -90.954509,
      16.901500,
      -90.965009,
      16.897954,
      -90.985063,
      16.863085,
      -90.987831,
      16.902858,
      -91.065627,
      17.003384,
      -91.122759,
      17.015704,
      -91.175253,
      17.095059,
      -91.226958,
      17.107878,
      -91.266943,
      17.170133,
      -91.266447,
      17.182747,
      -91.324450,
      17.160025,
      -91.349162,
      17.190517,
      -91.354455,
      17.209295,
      -91.418817,
      17.250000,
      -91.439759,
      17.251299,
      -90.987446,
      17.575193,
      -90.987601,
      17.575193,
      -90.371441,
      16.298406,
      -90.371441
    ]);
    poly[375] = _TzPolygon([
      17.575193,
      -90.987601,
      17.815344,
      -90.987716,
      17.816509,
      -90.371441,
      17.575193,
      -90.371441
    ]);
    poly[376] = _TzPolygon([
      18.849401,
      -92.524388,
      18.851981,
      -92.511081,
      18.619346,
      -92.466890,
      18.561630,
      -92.427845,
      18.485672,
      -92.412844,
      18.442230,
      -92.353757,
      18.473050,
      -92.322530,
      18.455438,
      -92.310338,
      18.458227,
      -92.176022,
      18.274024,
      -92.183284,
      18.210378,
      -92.148868,
      18.155359,
      -92.160887,
      18.096940,
      -92.127485,
      18.097877,
      -92.039638,
      18.077910,
      -92.041963,
      18.015899,
      -91.966637,
      18.012147,
      -91.900430,
      17.939001,
      -91.762300,
      17.957731,
      -91.760483,
      17.872736,
      -91.638158,
      17.913322,
      -91.614159,
      18.059632,
      -91.619246,
      18.109727,
      -91.589369,
      18.121264,
      -91.604321,
      18.137312,
      -91.572335,
      18.157642,
      -91.579693,
      18.170173,
      -91.509666,
      18.116099,
      -91.504344,
      18.063101,
      -91.384947,
      18.061876,
      -91.327121,
      17.974344,
      -91.217261,
      17.962393,
      -90.987969,
      17.575193,
      -90.987684,
      17.575193,
      -92.524388
    ]);
    poly[377] = _TzPolygon([
      16.298406,
      -89.200533,
      17.057407,
      -89.149998,
      17.939527,
      -89.151957,
      17.972034,
      -89.132705,
      18.005122,
      -89.037521,
      17.984429,
      -89.000621,
      17.947284,
      -88.987224,
      17.959130,
      -88.944780,
      17.910595,
      -88.913682,
      17.894461,
      -88.859766,
      17.925191,
      -88.859435,
      17.979861,
      -88.784455,
      18.034298,
      -88.766652,
      18.050158,
      -88.736663,
      16.298406,
      -88.736663
    ]);
    poly[378] = _TzPolygon([
      17.816509,
      -90.371441,
      17.815629,
      -89.151901,
      17.057407,
      -89.149998,
      16.298406,
      -89.198679,
      16.298406,
      -90.371441
    ]);
    poly[379] = _TzPolygon([
      17.812455,
      -90.371441,
      18.851981,
      -90.371441,
      18.851981,
      -89.148766,
      18.451059,
      -89.150238,
      18.450625,
      -89.125490,
      18.385850,
      -89.121229,
      18.385544,
      -89.138214,
      18.293403,
      -89.132359,
      18.293563,
      -89.151674,
      18.145820,
      -89.143066,
      18.144629,
      -89.200237,
      18.083276,
      -89.202458,
      18.082443,
      -89.144383,
      18.057699,
      -89.144753,
      18.057885,
      -89.163361,
      18.018517,
      -89.163004,
      18.021080,
      -89.206739,
      17.992649,
      -89.207414,
      17.954100,
      -89.205872,
      17.953610,
      -89.152170,
      17.815629,
      -89.151901,
      17.812425,
      -90.365047
    ]);
    poly[380] = _TzPolygon([
      18.851981,
      -87.129834,
      18.770071,
      -87.101885,
      18.667023,
      -87.124465,
      18.550777,
      -87.117376,
      18.439605,
      -87.182276,
      18.377497,
      -87.307357,
      18.393330,
      -87.441241,
      18.478926,
      -87.538576,
      18.351753,
      -87.561545,
      18.246657,
      -87.620556,
      18.198073,
      -87.384787,
      17.916751,
      -87.374960,
      17.924180,
      -87.434822,
      18.198662,
      -87.864800,
      18.150168,
      -87.910739,
      18.170324,
      -87.932531,
      18.167524,
      -88.031167,
      18.414794,
      -88.030366,
      18.415552,
      -88.249634,
      18.473072,
      -88.250094,
      18.490429,
      -88.326816,
      18.478804,
      -88.380268,
      18.496001,
      -88.401988,
      18.475466,
      -88.447752,
      18.493721,
      -88.477921,
      18.461118,
      -88.519442,
      18.360991,
      -88.544032,
      18.291741,
      -88.605832,
      18.241034,
      -88.604686,
      18.187040,
      -88.694135,
      18.160635,
      -88.679938,
      18.108941,
      -88.718544,
      18.060831,
      -88.716481,
      18.050158,
      -88.736663,
      18.851981,
      -88.736663
    ]);
    poly[381] = _TzPolygon([
      13.720672,
      -87.101885,
      13.720672,
      -86.774558,
      13.662250,
      -86.786064,
      13.639266,
      -86.748981,
      13.576901,
      -86.769896,
      13.565278,
      -86.749444,
      13.456838,
      -86.723426,
      13.401947,
      -86.744380,
      13.365078,
      -86.706584,
      13.302806,
      -86.705795,
      13.267457,
      -86.754339,
      13.313278,
      -86.829022,
      13.268786,
      -86.909146,
      13.179331,
      -86.932968,
      13.155258,
      -86.913404,
      13.125607,
      -86.934448,
      13.092221,
      -86.918100,
      13.030384,
      -86.963393,
      12.980849,
      -87.050016,
      13.002376,
      -87.064708,
      13.001460,
      -87.101885
    ]);
    poly[382] = _TzPolygon([
      13.720672,
      -86.774558,
      13.766650,
      -86.765502,
      13.805277,
      -86.538446,
      13.769475,
      -86.490754,
      13.789847,
      -86.453698,
      13.759092,
      -86.416965,
      13.769130,
      -86.332264,
      13.816086,
      -86.296220,
      13.853328,
      -86.298805,
      13.955358,
      -86.186003,
      13.984034,
      -86.190698,
      13.999506,
      -86.140736,
      14.035004,
      -86.152978,
      14.056080,
      -86.087047,
      13.720672,
      -86.087047
    ]);
    poly[383] = _TzPolygon([
      14.559175,
      -85.072210,
      14.552383,
      -85.085021,
      14.585950,
      -85.122754,
      14.571808,
      -85.151605,
      14.516122,
      -85.138886,
      14.467860,
      -85.184048,
      14.428347,
      -85.181168,
      14.376760,
      -85.220760,
      14.302328,
      -85.153396,
      14.250447,
      -85.184492,
      14.248847,
      -85.339429,
      14.213072,
      -85.360887,
      14.221559,
      -85.382688,
      14.182618,
      -85.374620,
      14.123121,
      -85.404112,
      14.114386,
      -85.453907,
      14.076191,
      -85.493674,
      14.087987,
      -85.505505,
      14.047456,
      -85.519395,
      14.065053,
      -85.573277,
      14.009205,
      -85.624677,
      14.012045,
      -85.663904,
      13.979960,
      -85.676409,
      13.992992,
      -85.706770,
      13.967796,
      -85.753368,
      13.884232,
      -85.764078,
      13.861490,
      -85.733329,
      13.832231,
      -85.752179,
      13.849245,
      -85.819735,
      13.917630,
      -85.845418,
      13.929565,
      -85.881971,
      13.904389,
      -85.892264,
      13.908462,
      -85.913741,
      13.937596,
      -85.918517,
      13.996174,
      -86.042070,
      14.080251,
      -86.011436,
      14.056080,
      -86.087047,
      15.033118,
      -86.087047,
      15.033118,
      -85.072210
    ]);
    poly[384] = _TzPolygon([
      15.033118,
      -84.057372,
      14.768870,
      -84.057372,
      14.757257,
      -84.080363,
      14.786595,
      -84.081890,
      14.790840,
      -84.109833,
      14.730143,
      -84.095786,
      14.714501,
      -84.166838,
      14.733676,
      -84.227982,
      14.760610,
      -84.235393,
      14.734407,
      -84.271861,
      14.678450,
      -84.257886,
      14.662151,
      -84.276870,
      14.684466,
      -84.309845,
      14.679823,
      -84.349403,
      14.716600,
      -84.363387,
      14.641557,
      -84.414640,
      14.615845,
      -84.468591,
      14.630248,
      -84.530006,
      14.656355,
      -84.524823,
      14.672595,
      -84.665449,
      14.693937,
      -84.671846,
      14.664427,
      -84.701532,
      14.692135,
      -84.703552,
      14.715354,
      -84.744812,
      14.748499,
      -84.742977,
      14.749021,
      -84.771452,
      14.769684,
      -84.749964,
      14.816129,
      -84.790005,
      14.815225,
      -84.898119,
      14.758801,
      -84.927052,
      14.756339,
      -84.960370,
      14.702999,
      -85.028408,
      14.673460,
      -85.027047,
      14.660705,
      -85.050771,
      14.637776,
      -85.024545,
      14.610495,
      -85.043113,
      14.608882,
      -85.021580,
      14.574834,
      -85.042675,
      14.559175,
      -85.072210,
      15.033118,
      -85.072210
    ]);
    poly[385] = _TzPolygon([
      15.033118,
      -83.067713,
      14.982508,
      -83.232472,
      14.987660,
      -83.277698,
      15.005997,
      -83.276406,
      15.010115,
      -83.344316,
      14.995260,
      -83.348309,
      15.029703,
      -83.402169,
      14.990321,
      -83.420436,
      14.980954,
      -83.461915,
      15.011168,
      -83.498172,
      14.993470,
      -83.528232,
      14.950065,
      -83.529020,
      14.957165,
      -83.548585,
      14.942244,
      -83.537973,
      14.939113,
      -83.559893,
      14.912364,
      -83.560000,
      14.919717,
      -83.598627,
      14.874506,
      -83.615744,
      14.880117,
      -83.694040,
      14.853365,
      -83.722334,
      14.851292,
      -83.700325,
      14.824157,
      -83.701593,
      14.841167,
      -83.732111,
      14.819170,
      -83.732036,
      14.831578,
      -83.753157,
      14.806214,
      -83.763669,
      14.823592,
      -83.783414,
      14.773029,
      -83.843796,
      14.777283,
      -83.936435,
      14.747678,
      -83.923560,
      14.760857,
      -83.997235,
      14.746565,
      -84.033344,
      14.774676,
      -84.045877,
      14.768870,
      -84.057372,
      15.033118,
      -84.057372
    ]);
    poly[386] = _TzPolygon([
      18.851981,
      -89.148766,
      19.423862,
      -89.146667,
      19.551174,
      -89.296562,
      19.608022,
      -89.219556,
      19.636657,
      -89.222869,
      19.644006,
      -89.189203,
      19.637399,
      -89.144862,
      19.581249,
      -89.149521,
      19.581996,
      -89.122003,
      18.851981,
      -89.122003
    ]);
    poly[387] = _TzPolygon([
      19.613575,
      -89.122003,
      19.614632,
      -89.133641,
      19.703424,
      -89.123398,
      19.703018,
      -89.122003
    ]);
    poly[388] = _TzPolygon([
      21.568334,
      -89.122003,
      21.594353,
      -88.923560,
      21.622503,
      -88.822025,
      21.715895,
      -88.686540,
      21.767420,
      -88.437039,
      21.766912,
      -88.313606,
      21.817224,
      -88.214802,
      21.830571,
      -88.137432,
      21.802200,
      -87.908309,
      21.736884,
      -87.730326,
      21.690434,
      -87.510980,
      21.490226,
      -87.534927,
      20.999602,
      -87.533145,
      20.653787,
      -87.744259,
      20.446706,
      -87.962742,
      20.447316,
      -87.995065,
      20.417993,
      -87.992960,
      20.281372,
      -88.136490,
      20.290342,
      -88.264634,
      20.269120,
      -88.266815,
      20.253510,
      -88.308788,
      20.252097,
      -88.409128,
      20.239489,
      -88.402892,
      20.238150,
      -88.443426,
      20.192328,
      -88.519930,
      20.190078,
      -88.502345,
      20.143391,
      -88.507621,
      20.148078,
      -88.576681,
      20.089856,
      -88.690609,
      20.010357,
      -88.700176,
      20.008180,
      -88.783503,
      19.879926,
      -88.825926,
      19.861114,
      -88.900488,
      19.790949,
      -88.929512,
      19.818101,
      -88.974452,
      19.772007,
      -89.004087,
      19.776710,
      -89.025163,
      19.721493,
      -89.048827,
      19.727440,
      -88.994741,
      19.704884,
      -88.997529,
      19.708832,
      -89.030524,
      19.678040,
      -89.036200,
      19.703018,
      -89.122003
    ]);
    poly[389] = _TzPolygon([
      19.613575,
      -89.122003,
      19.612339,
      -89.108392,
      19.582349,
      -89.109024,
      19.581996,
      -89.122003
    ]);
    poly[390] = _TzPolygon([
      37.958689,
      -86.782360,
      37.958689,
      -86.511647,
      37.928829,
      -86.507831,
      37.921159,
      -86.588581,
      37.858272,
      -86.604624,
      37.841425,
      -86.648028,
      37.908621,
      -86.647081,
      37.894340,
      -86.731460
    ]);
    poly[391] = _TzPolygon([
      19.973824,
      -75.166823,
      19.973820,
      -75.086645,
      19.871762,
      -75.086563,
      19.869741,
      -75.232488,
      19.934591,
      -75.232020
    ]);
    poly[392] = _TzPolygon([
      21.151443,
      -74.790449,
      22.032971,
      -77.214826,
      22.432278,
      -77.820528,
      22.596111,
      -78.115444,
      22.875357,
      -78.790845,
      23.301043,
      -79.595880,
      23.481697,
      -80.377255,
      23.481697,
      -74.790449
    ]);
    poly[393] = _TzPolygon([
      31.530347,
      -86.493266,
      31.530347,
      -85.044373,
      31.364576,
      -85.092167,
      31.295026,
      -85.089774,
      31.276459,
      -85.115002,
      31.186451,
      -85.107516,
      31.108192,
      -85.035615,
      30.975908,
      -85.005734,
      30.883588,
      -84.934424,
      30.765990,
      -84.920123,
      30.696945,
      -84.857970,
      30.621382,
      -84.905951,
      30.580353,
      -84.965686,
      30.476521,
      -85.004434,
      30.444532,
      -84.980511,
      30.420581,
      -85.032729,
      30.409785,
      -85.013683,
      30.338185,
      -85.050313,
      30.312492,
      -85.034069,
      30.170786,
      -85.139824,
      30.117562,
      -85.129544,
      30.095280,
      -85.152987,
      30.043015,
      -85.135569,
      29.987685,
      -85.029921,
      29.950987,
      -85.017954,
      29.910286,
      -85.053762,
      29.818844,
      -85.019326,
      29.779549,
      -85.039964,
      29.774351,
      -85.104830,
      29.827949,
      -85.190491,
      29.877006,
      -85.210854,
      29.968375,
      -85.371508,
      30.027346,
      -85.391303,
      29.924309,
      -85.388447,
      29.810239,
      -85.646555,
      29.894167,
      -85.745172,
      30.094399,
      -86.111887,
      30.170999,
      -86.366191,
      30.182735,
      -86.493266
    ]);
    poly[394] = _TzPolygon([
      31.530347,
      -85.044373,
      31.540987,
      -85.041305,
      31.620227,
      -85.058169,
      31.694965,
      -85.125530,
      31.782181,
      -85.141876,
      31.892160,
      -85.134131,
      31.940159,
      -85.078930,
      32.021701,
      -85.048825,
      32.132486,
      -85.062060,
      32.194989,
      -84.964281,
      32.217477,
      -84.972658,
      32.219851,
      -84.928227,
      32.250149,
      -84.924427,
      32.260885,
      -84.888417,
      32.324018,
      -85.003768,
      32.356819,
      -84.988710,
      32.339000,
      -85.031000,
      32.355000,
      -85.073000,
      32.444000,
      -85.119000,
      32.514000,
      -85.214000,
      32.571000,
      -85.182000,
      32.656000,
      -85.198000,
      32.847000,
      -85.282000,
      32.954000,
      -85.237000,
      32.968098,
      -85.204399,
      33.673127,
      -85.344545,
      33.673127,
      -84.575844,
      31.530347,
      -84.575844
    ]);
    poly[395] = _TzPolygon([
      33.673127,
      -85.344545,
      34.984610,
      -85.605242,
      34.983184,
      -85.473875,
      35.047222,
      -85.381691,
      35.087975,
      -85.361694,
      35.109035,
      -85.395241,
      35.146053,
      -85.388221,
      35.455822,
      -85.168365,
      35.446598,
      -85.148132,
      35.476330,
      -85.117310,
      35.491520,
      -85.146507,
      35.545612,
      -85.096718,
      35.571564,
      -85.107719,
      35.773621,
      -84.905212,
      35.815908,
      -84.799654,
      35.815908,
      -84.575844,
      33.673127,
      -84.575844
    ]);
    poly[396] = _TzPolygon([
      36.887299,
      -86.493266,
      36.887299,
      -85.011997,
      36.858303,
      -85.064011,
      36.756046,
      -85.003731,
      36.703972,
      -85.021294,
      36.633614,
      -85.003380,
      36.616868,
      -84.988565,
      36.603372,
      -84.785341,
      36.394909,
      -84.659531,
      36.376568,
      -84.724442,
      36.336815,
      -84.739395,
      36.334450,
      -84.774277,
      36.298820,
      -84.794266,
      36.289600,
      -84.872047,
      36.208321,
      -84.912613,
      36.151085,
      -84.903748,
      36.084179,
      -84.832413,
      36.090717,
      -84.805550,
      35.994560,
      -84.720062,
      35.907455,
      -84.679497,
      35.823681,
      -84.780251,
      35.815908,
      -84.799654,
      35.815908,
      -86.493266
    ]);
    poly[397] = _TzPolygon([
      36.887299,
      -85.011997,
      36.887299,
      -84.609821,
      36.880714,
      -84.604774,
      36.887299,
      -84.596516,
      36.887299,
      -84.584413,
      36.847397,
      -84.575844,
      36.840290,
      -84.595482,
      36.803455,
      -84.581558,
      36.809513,
      -84.603325,
      36.754250,
      -84.674629,
      36.603205,
      -84.778269,
      36.616868,
      -84.988565,
      36.693539,
      -85.020210,
      36.756046,
      -85.003731,
      36.858303,
      -85.064011
    ]);
    poly[398] = _TzPolygon([
      37.958689,
      -86.371197,
      37.798916,
      -86.151718,
      37.593296,
      -86.275375,
      37.556240,
      -86.180351,
      37.566570,
      -86.113098,
      37.483006,
      -86.051506,
      37.448532,
      -86.056473,
      37.422054,
      -85.656998,
      37.471039,
      -85.633911,
      37.470631,
      -85.584618,
      37.432098,
      -85.584579,
      37.363678,
      -85.479118,
      37.242134,
      -85.388390,
      37.224472,
      -85.410957,
      37.221268,
      -85.372246,
      37.192234,
      -85.353226,
      37.246124,
      -85.312653,
      37.272629,
      -85.192299,
      37.312031,
      -85.176514,
      37.256798,
      -85.056480,
      37.196941,
      -85.053368,
      37.102242,
      -84.954109,
      37.116501,
      -84.901482,
      37.047607,
      -84.905495,
      36.997822,
      -84.835594,
      36.945606,
      -84.908035,
      36.960281,
      -84.944199,
      36.915924,
      -84.960648,
      36.887299,
      -85.011997,
      36.887299,
      -86.493266,
      37.958689,
      -86.493266
    ]);
    poly[399] = _TzPolygon([
      36.887299,
      -85.011997,
      36.915924,
      -84.960648,
      36.960281,
      -84.944199,
      36.945606,
      -84.908035,
      36.997822,
      -84.835594,
      36.958000,
      -84.770294,
      36.982834,
      -84.683052,
      36.887299,
      -84.609821
    ]);
  }
}

class _Initializer5 {
  static void _init() {
    poly[400] = _TzPolygon(
        [36.887299, -84.596516, 36.895538, -84.586182, 36.887299, -84.584413]);
    poly[401] = _TzPolygon([
      23.481697,
      -74.790449,
      23.481697,
      -80.377255,
      23.506421,
      -80.484193,
      23.592825,
      -80.581646,
      23.910715,
      -80.700194,
      24.065363,
      -80.633744,
      24.143564,
      -80.524446,
      24.247967,
      -80.003586,
      25.004520,
      -79.363241,
      25.204628,
      -79.370973,
      25.322585,
      -79.406819,
      25.520448,
      -79.514367,
      25.638981,
      -79.536084,
      25.811223,
      -79.504861,
      26.091627,
      -79.316140,
      27.020753,
      -79.315421,
      27.128711,
      -79.210116,
      27.450706,
      -78.525181,
      27.473455,
      -78.419224,
      27.424560,
      -78.182860,
      27.274784,
      -77.906548,
      27.234373,
      -77.702998,
      27.140405,
      -77.461399,
      26.757829,
      -76.863673,
      26.649623,
      -76.761429,
      25.276453,
      -75.948835,
      24.821016,
      -75.514130,
      24.507391,
      -74.790449
    ]);
    poly[402] = _TzPolygon([
      53.299009,
      -169.047661,
      53.299009,
      -166.534963,
      53.286358,
      -166.560593,
      53.247220,
      -166.728682,
      53.238927,
      -166.987814,
      53.099691,
      -167.309782,
      53.042476,
      -167.563720,
      53.039564,
      -167.701567,
      53.088390,
      -167.867361,
      53.082363,
      -167.959214,
      53.028831,
      -168.052475,
      52.898702,
      -168.109744,
      52.822271,
      -168.248691,
      52.794237,
      -168.360580,
      52.791331,
      -168.493636,
      52.605965,
      -169.059824,
      52.575956,
      -169.247046,
      52.591763,
      -169.375135,
      52.634709,
      -169.479863,
      53.098748,
      -169.331542,
      53.128878,
      -169.178205,
      53.169365,
      -169.122974,
      53.296048,
      -169.052268
    ]);
    poly[403] = _TzPolygon([
      65.467585,
      -168.924586,
      65.480794,
      -169.016222,
      65.985947,
      -168.924586
    ]);
    poly[404] = _TzPolygon([
      60.306013,
      -141.000000,
      60.306369,
      -141.001980,
      69.845880,
      -141.002750,
      69.845643,
      -141.000000
    ]);
    poly[405] = _TzPolygon([
      55.300967,
      -131.568369,
      55.181496,
      -131.293888,
      55.138156,
      -131.338965,
      55.028623,
      -131.342120,
      54.993297,
      -131.375685,
      55.011397,
      -131.539044,
      54.979030,
      -131.654746,
      55.040000,
      -131.674000,
      55.128513,
      -131.614941,
      55.137965,
      -131.667861,
      55.195295,
      -131.602997,
      55.272598,
      -131.626116
    ]);
    poly[406] = _TzPolygon([
      54.456000,
      -129.974167,
      54.456000,
      -131.357994,
      54.475000,
      -131.382748,
      54.567000,
      -131.435757,
      54.689553,
      -131.435100,
      54.707474,
      -130.615673,
      54.763058,
      -130.659038,
      54.917729,
      -130.345938,
      55.062842,
      -130.187563,
      55.192602,
      -130.102842,
      55.281919,
      -129.974167
    ]);
    poly[407] = _TzPolygon([
      55.281919,
      -129.974167,
      55.300967,
      -129.983957,
      55.300967,
      -129.974167
    ]);
    poly[408] = _TzPolygon([
      56.539643,
      -135.487083,
      56.624920,
      -135.690659,
      56.742436,
      -135.856861,
      56.811287,
      -135.906463,
      56.847669,
      -136.050838,
      56.911249,
      -136.158681,
      56.996578,
      -136.210248,
      57.148574,
      -136.188711,
      57.347892,
      -136.236105,
      57.474854,
      -136.497218,
      57.648721,
      -136.628120,
      57.826110,
      -136.878354,
      57.835869,
      -136.026713,
      58.001387,
      -135.899839,
      57.852394,
      -135.487083
    ]);
    poly[409] = _TzPolygon([
      59.798041,
      -135.487083,
      59.795767,
      -135.487083,
      59.662166,
      -135.952645,
      59.640027,
      -136.192904,
      59.600556,
      -136.346389,
      59.559413,
      -136.239830,
      59.524326,
      -136.238504,
      59.464518,
      -136.305022,
      59.448960,
      -136.368244,
      59.465824,
      -136.477156,
      59.284079,
      -136.469247,
      59.165854,
      -136.584444,
      59.159960,
      -136.828728,
      58.999998,
      -137.282847,
      58.908349,
      -137.451726,
      58.906372,
      -137.526114,
      58.985395,
      -137.500000,
      59.243803,
      -137.607356,
      59.768581,
      -138.626202,
      59.798041,
      -138.643563
    ]);
    poly[410] = _TzPolygon([
      59.798041,
      -141.000000,
      59.798041,
      -138.643563,
      59.768581,
      -138.626202,
      59.243803,
      -137.607356,
      58.985395,
      -137.500000,
      58.906375,
      -137.526120,
      58.721171,
      -138.269402,
      58.824302,
      -138.314402,
      58.893917,
      -138.458509,
      58.965197,
      -138.784073,
      59.086790,
      -139.084818,
      59.223491,
      -139.607996,
      59.518837,
      -140.421484,
      59.563240,
      -141.000000
    ]);
    poly[411] = _TzPolygon([
      57.549504,
      -134.746823,
      57.549504,
      -132.730625,
      57.413174,
      -132.730625,
      57.396855,
      -132.788898,
      57.360620,
      -132.810782,
      57.368219,
      -132.873036,
      57.330823,
      -132.986359,
      57.235539,
      -133.029298,
      57.191261,
      -133.099723,
      57.188390,
      -133.155382,
      57.238076,
      -133.292546,
      57.175290,
      -133.472112,
      57.152141,
      -133.776532,
      57.160638,
      -134.048801,
      56.967539,
      -134.335319,
      56.863970,
      -134.567591,
      57.005599,
      -134.682174,
      57.229242,
      -134.744610,
      57.318061,
      -134.702750,
      57.456667,
      -134.709610
    ]);
    poly[412] = _TzPolygon([
      57.852394,
      -135.487083,
      57.765158,
      -135.245415,
      57.790108,
      -134.843268,
      57.549504,
      -134.746823,
      57.549504,
      -135.487083
    ]);
    poly[413] = _TzPolygon([
      57.699405,
      -132.730625,
      57.839713,
      -132.869368,
      58.000341,
      -133.070096,
      58.153676,
      -133.172311,
      58.387723,
      -133.461504,
      58.430548,
      -133.377303,
      58.612274,
      -133.707118,
      58.729444,
      -133.840507,
      58.861036,
      -134.258074,
      58.923414,
      -134.336464,
      58.962182,
      -134.313489,
      58.979210,
      -134.407149,
      59.038763,
      -134.381877,
      59.131603,
      -134.483395,
      59.131124,
      -134.565566,
      59.192275,
      -134.679117,
      59.249011,
      -134.700716,
      59.280926,
      -134.959905,
      59.346348,
      -135.030526,
      59.387129,
      -134.989744,
      59.427531,
      -135.101019,
      59.474738,
      -135.027562,
      59.563659,
      -135.028902,
      59.662776,
      -135.219845,
      59.696143,
      -135.233668,
      59.798041,
      -135.479161,
      59.798041,
      -132.730625
    ]);
    poly[414] = _TzPolygon([
      59.798041,
      -135.479161,
      59.795767,
      -135.487083,
      59.798041,
      -135.487083
    ]);
    poly[415] = _TzPolygon([
      57.684968,
      -132.730625,
      57.349747,
      -132.369791,
      57.354227,
      -132.487307,
      57.400554,
      -132.518317,
      57.425137,
      -132.687905,
      57.413174,
      -132.730625
    ]);
    poly[416] = _TzPolygon([
      55.300967,
      -129.983957,
      55.581035,
      -130.127904,
      55.682902,
      -130.111658,
      55.766287,
      -130.152406,
      55.907437,
      -130.003784,
      56.008075,
      -130.003485,
      56.122798,
      -130.103799,
      56.096411,
      -130.246219,
      56.141561,
      -130.426006,
      56.243053,
      -130.467870,
      56.266878,
      -130.623308,
      56.366844,
      -130.781981,
      56.406005,
      -131.087349,
      56.612232,
      -131.581067,
      56.599203,
      -131.835327,
      56.753675,
      -131.901072,
      56.805995,
      -131.872876,
      56.873648,
      -132.123567,
      57.045059,
      -132.045191,
      57.091513,
      -132.368983,
      57.211253,
      -132.247921,
      57.699405,
      -132.730625,
      59.798041,
      -132.730625,
      59.798041,
      -129.974167,
      55.300967,
      -129.974167
    ]);
    poly[417] = _TzPolygon([
      59.798041,
      -135.479161,
      59.798041,
      -138.643563,
      59.906325,
      -138.707377,
      59.994837,
      -139.053671,
      60.001780,
      -134.659300,
      60.001555,
      -129.974167,
      59.798041,
      -129.974167
    ]);
    poly[418] = _TzPolygon([
      60.306010,
      -141.000000,
      60.219819,
      -140.520424,
      60.308085,
      -140.458206,
      60.181966,
      -139.981094,
      60.335224,
      -139.692981,
      60.352505,
      -139.074819,
      60.088296,
      -139.198846,
      59.994837,
      -139.053671,
      59.906325,
      -138.707377,
      59.798041,
      -138.643563,
      59.798041,
      -141.000000
    ]);
    poly[419] = _TzPolygon([
      63.190038,
      -129.974167,
      63.188462,
      -129.979617,
      63.246923,
      -130.038880,
      63.250958,
      -130.192256,
      63.274312,
      -130.146680,
      63.305679,
      -130.158684,
      63.337384,
      -130.078992,
      63.319110,
      -130.016604,
      63.330730,
      -129.974167
    ]);
    poly[420] = _TzPolygon([
      63.573302,
      -129.974167,
      63.575386,
      -129.984777,
      63.588796,
      -129.974167
    ]);
    poly[421] = _TzPolygon([
      69.845643,
      -141.000000,
      69.790045,
      -140.355601,
      69.833426,
      -139.277500,
      63.588796,
      -139.277500,
      63.588796,
      -141.000000
    ]);
    poly[422] = _TzPolygon([
      67.002069,
      -134.625833,
      67.006029,
      -136.168098,
      67.108444,
      -136.229742,
      67.149174,
      -136.189630,
      67.181670,
      -136.238151,
      67.234842,
      -136.125963,
      67.277941,
      -136.145480,
      67.307565,
      -136.083943,
      67.360455,
      -136.167313,
      67.370146,
      -136.132584,
      67.402233,
      -136.221465,
      67.507958,
      -136.170255,
      67.532731,
      -136.223181,
      67.618359,
      -136.227612,
      67.661179,
      -136.445060,
      68.893609,
      -136.448351,
      69.403107,
      -136.588001,
      69.612833,
      -136.287181,
      69.817398,
      -135.744358,
      69.882458,
      -135.131838,
      69.965882,
      -134.625833
    ]);
    poly[423] = _TzPolygon([
      64.758700,
      -132.300000,
      64.798081,
      -132.412569,
      64.782028,
      -132.429971,
      64.798076,
      -132.515580,
      64.775463,
      -132.556591,
      64.828351,
      -132.632429,
      64.905917,
      -132.453769,
      64.963457,
      -132.519324,
      65.037033,
      -132.342518,
      65.073335,
      -132.338202,
      65.090608,
      -132.357331,
      65.087625,
      -132.528829,
      65.126014,
      -132.568842,
      65.162941,
      -132.517614,
      65.191932,
      -132.547201,
      65.161913,
      -132.736135,
      65.188369,
      -132.794449,
      65.208603,
      -132.714240,
      65.230638,
      -132.788122,
      65.237692,
      -132.694163,
      65.283688,
      -132.647805,
      65.286184,
      -132.561719,
      65.308012,
      -132.551448,
      65.308012,
      -132.300000
    ]);
    poly[424] = _TzPolygon([
      65.946828,
      -133.462917,
      65.961271,
      -133.513271,
      65.956831,
      -133.631821,
      66.007868,
      -133.646702,
      66.028727,
      -133.563056,
      66.059295,
      -133.621030,
      66.054154,
      -133.707154,
      66.086180,
      -133.703550,
      66.153550,
      -133.560458,
      66.244104,
      -133.572204,
      66.293514,
      -133.645711,
      66.291943,
      -133.802543,
      66.318045,
      -133.847763,
      66.365162,
      -133.773507,
      66.405956,
      -133.795503,
      66.469360,
      -133.715983,
      66.509433,
      -133.728307,
      66.557757,
      -133.576743,
      66.624401,
      -133.788934,
      66.680806,
      -133.879432,
      66.703954,
      -134.012230,
      66.721496,
      -133.969848,
      66.711217,
      -133.866940,
      66.751234,
      -133.772432,
      66.784767,
      -133.766112,
      66.898661,
      -133.899261,
      66.910482,
      -134.046184,
      66.953285,
      -134.103319,
      66.983321,
      -134.062184,
      67.000000,
      -133.820084,
      67.002069,
      -134.625833,
      67.027228,
      -134.625833,
      67.027228,
      -133.462917
    ]);
    poly[425] = _TzPolygon([
      65.946828,
      -133.462917,
      65.937353,
      -133.429885,
      65.952146,
      -133.348015,
      65.990579,
      -133.361160,
      65.977454,
      -133.245181,
      66.003503,
      -133.252665,
      66.042315,
      -132.983071,
      66.004858,
      -132.910722,
      65.930263,
      -132.996870,
      65.900829,
      -132.883580,
      65.985537,
      -132.766081,
      66.022087,
      -132.653942,
      66.026617,
      -132.555541,
      65.969415,
      -132.504177,
      65.993611,
      -132.428524,
      65.989097,
      -132.332660,
      65.958445,
      -132.321690,
      65.897956,
      -132.529776,
      65.841561,
      -132.563965,
      65.777356,
      -132.367381,
      65.737327,
      -132.300000,
      65.691328,
      -132.302510,
      65.689975,
      -132.300000,
      65.484842,
      -132.300000,
      65.440722,
      -132.344745,
      65.372708,
      -132.521007,
      65.308012,
      -132.551448,
      65.308012,
      -133.462917
    ]);
    poly[426] = _TzPolygon([
      63.611464,
      -129.974167,
      63.615214,
      -130.101682,
      63.694346,
      -130.143735,
      63.655518,
      -130.289682,
      63.704922,
      -130.360304,
      63.734050,
      -130.325948,
      63.721008,
      -130.251193,
      63.755094,
      -130.231241,
      63.752822,
      -130.145240,
      63.855361,
      -130.133862,
      63.876849,
      -130.257033,
      63.845543,
      -130.265736,
      63.823792,
      -130.355707,
      63.858328,
      -130.392365,
      63.858554,
      -130.444751,
      63.876672,
      -130.421266,
      63.912101,
      -130.485095,
      63.972067,
      -130.773419,
      64.041247,
      -130.749978,
      64.037662,
      -130.882385,
      64.093192,
      -130.892566,
      64.104755,
      -130.967660,
      64.131189,
      -130.983478,
      64.181287,
      -130.853326,
      64.193824,
      -130.947033,
      64.238210,
      -130.946453,
      64.274373,
      -131.080527,
      64.324087,
      -131.033072,
      64.353567,
      -131.107474,
      64.372205,
      -131.083249,
      64.416726,
      -131.150320,
      64.463309,
      -131.392664,
      64.449366,
      -131.457136,
      64.398615,
      -131.446325,
      64.397767,
      -131.534435,
      64.381353,
      -131.530278,
      64.380663,
      -131.851287,
      64.454239,
      -131.804679,
      64.489395,
      -131.690782,
      64.532855,
      -131.691129,
      64.547372,
      -131.796649,
      64.529087,
      -131.844544,
      64.559011,
      -131.837734,
      64.614157,
      -131.975993,
      64.698909,
      -132.038756,
      64.709651,
      -132.159794,
      64.758700,
      -132.300000,
      65.308012,
      -132.300000,
      65.308012,
      -129.974167
    ]);
    poly[427] = _TzPolygon([
      65.737327,
      -132.300000,
      65.731287,
      -132.289833,
      65.699239,
      -132.300000
    ]);
    poly[428] = _TzPolygon([
      65.689975,
      -132.300000,
      65.617466,
      -132.165499,
      65.484842,
      -132.300000
    ]);
    poly[429] = _TzPolygon([
      68.416500,
      -133.730000,
      68.346400,
      -133.634300,
      68.316600,
      -133.388800,
      68.298200,
      -133.384300,
      68.290000,
      -133.471900,
      68.317600,
      -133.677200,
      68.416100,
      -133.799100
    ]);
    poly[430] = _TzPolygon([
      -44.937760,
      -71.919683,
      -44.903700,
      -71.978940,
      -44.901660,
      -72.039107,
      -44.876883,
      -72.064814,
      -44.862147,
      -72.041330,
      -44.849365,
      -72.069454,
      -44.805833,
      -72.027225,
      -44.780712,
      -72.073832,
      -44.760691,
      -72.066814,
      -44.789423,
      -71.919683
    ]);
    poly[431] = _TzPolygon([
      -43.450540,
      -71.919683,
      -43.450118,
      -71.934083,
      -43.426062,
      -71.919683
    ]);
    poly[432] = _TzPolygon([
      -43.407818,
      -71.919683,
      -43.387401,
      -71.932538,
      -43.384856,
      -71.919683
    ]);
    poly[433] = _TzPolygon([
      -43.108377,
      -71.919683,
      -43.102889,
      -71.935144,
      -43.054373,
      -71.934999,
      -43.030259,
      -72.012970,
      -42.900149,
      -72.142236,
      -42.878891,
      -72.118163,
      -42.800208,
      -72.164844,
      -42.777249,
      -72.130211,
      -42.733782,
      -72.132065,
      -42.696778,
      -72.181059,
      -42.670973,
      -72.172841,
      -42.672613,
      -72.123207,
      -42.641728,
      -72.100731,
      -42.603345,
      -72.119550,
      -42.569681,
      -72.053384,
      -42.417665,
      -72.023000,
      -42.386228,
      -72.073812,
      -42.384200,
      -72.133207,
      -42.323603,
      -72.121135,
      -42.260489,
      -72.168079,
      -42.199138,
      -72.155889,
      -42.165247,
      -72.187818,
      -42.138140,
      -72.168850,
      -42.148259,
      -72.066025,
      -42.114259,
      -72.057871,
      -42.141013,
      -71.957761,
      -42.189237,
      -71.923944,
      -42.186256,
      -71.919683
    ]);
    poly[434] = _TzPolygon([
      -45.999874,
      -71.647592,
      -45.964079,
      -71.614162,
      -45.889973,
      -71.652406,
      -45.846380,
      -71.769355,
      -45.806990,
      -71.740723,
      -45.719439,
      -71.801496,
      -45.695895,
      -71.772534,
      -45.666100,
      -71.795858,
      -45.640808,
      -71.772528,
      -45.628222,
      -71.801670,
      -45.608035,
      -71.741499,
      -45.575394,
      -71.727421,
      -45.560370,
      -71.763621,
      -45.513821,
      -71.681619,
      -45.523648,
      -71.560532,
      -45.493948,
      -71.469224,
      -45.433267,
      -71.534182,
      -45.396634,
      -71.531639,
      -45.395827,
      -71.438287,
      -45.367671,
      -71.448474,
      -45.322056,
      -71.336173,
      -45.241396,
      -71.333005,
      -45.157815,
      -71.417629,
      -45.144106,
      -71.487469,
      -45.107916,
      -71.491583,
      -45.103136,
      -71.526583,
      -45.071205,
      -71.505133,
      -45.032566,
      -71.556488,
      -44.997937,
      -71.559021,
      -44.997937,
      -70.484300,
      -45.999874,
      -70.484300
    ]);
    poly[435] = _TzPolygon([
      -44.997937,
      -71.559021,
      -44.978630,
      -71.560434,
      -44.969419,
      -71.684356,
      -44.953635,
      -71.741502,
      -44.926900,
      -71.753607,
      -44.941353,
      -71.778080,
      -44.920689,
      -71.814042,
      -44.960567,
      -71.880003,
      -44.937760,
      -71.919683,
      -44.789423,
      -71.919683,
      -44.801768,
      -71.856464,
      -44.793873,
      -71.815151,
      -44.774285,
      -71.824510,
      -44.751000,
      -71.783607,
      -44.788055,
      -71.657045,
      -44.737528,
      -71.469694,
      -44.790183,
      -71.395839,
      -44.813615,
      -71.292316,
      -44.790817,
      -71.237041,
      -44.736692,
      -71.201928,
      -44.681534,
      -71.197913,
      -44.638174,
      -71.235040,
      -44.591460,
      -71.200751,
      -44.589879,
      -71.100093,
      -44.535024,
      -71.091156,
      -44.503523,
      -71.158828,
      -44.471103,
      -71.132255,
      -44.440417,
      -71.173253,
      -44.417687,
      -71.239757,
      -44.429603,
      -71.330812,
      -44.389504,
      -71.364869,
      -44.409691,
      -71.654704,
      -44.379885,
      -71.714270,
      -44.416558,
      -71.814521,
      -44.349941,
      -71.840270,
      -44.339507,
      -71.798213,
      -44.312054,
      -71.790529,
      -44.268978,
      -71.806458,
      -44.265162,
      -71.833327,
      -44.223837,
      -71.779062,
      -44.157109,
      -71.850289,
      -44.112455,
      -71.849623,
      -44.096547,
      -71.754574,
      -43.996000,
      -71.684303,
      -43.996000,
      -70.484300,
      -44.997937,
      -70.484300
    ]);
    poly[436] = _TzPolygon([
      -43.996000,
      -71.684303,
      -43.945517,
      -71.649021,
      -43.901891,
      -71.665629,
      -43.894048,
      -71.706875,
      -43.855401,
      -71.708285,
      -43.840936,
      -71.762882,
      -43.789400,
      -71.753917,
      -43.703084,
      -71.661473,
      -43.696297,
      -71.599339,
      -43.676267,
      -71.611322,
      -43.651773,
      -71.580847,
      -43.623324,
      -71.626241,
      -43.624920,
      -71.701600,
      -43.584148,
      -71.707474,
      -43.583989,
      -71.759675,
      -43.538705,
      -71.776608,
      -43.553602,
      -71.871443,
      -43.510950,
      -71.891549,
      -43.479397,
      -71.850140,
      -43.451676,
      -71.880868,
      -43.450540,
      -71.919683,
      -43.426062,
      -71.919683,
      -43.416710,
      -71.914084,
      -43.407818,
      -71.919683,
      -43.384856,
      -71.919683,
      -43.379790,
      -71.894086,
      -43.322316,
      -71.904845,
      -43.335170,
      -71.842502,
      -43.296951,
      -71.786197,
      -43.313571,
      -71.734554,
      -43.228069,
      -71.757181,
      -43.201172,
      -71.729822,
      -43.164496,
      -71.761569,
      -43.108377,
      -71.919683,
      -42.186256,
      -71.919683,
      -42.154558,
      -71.874373,
      -42.147377,
      -71.780778,
      -42.110137,
      -71.726125,
      -42.046242,
      -71.728250,
      -41.999919,
      -71.773859,
      -41.996752,
      -69.048916,
      -43.996000,
      -69.048916
    ]);
    poly[437] = _TzPolygon([
      -42.000147,
      -69.048916,
      -41.999919,
      -71.773859,
      -41.992126,
      -71.774964,
      -41.992126,
      -69.048916
    ]);
    poly[438] = _TzPolygon([
      -42.000147,
      -69.048916,
      -41.992126,
      -69.048916,
      -41.992126,
      -63.307384,
      -41.997100,
      -63.313482,
      -42.000390,
      -66.132587
    ]);
    poly[439] = _TzPolygon([
      -41.992126,
      -71.774964,
      -41.841797,
      -71.796270,
      -41.824908,
      -71.751344,
      -41.793720,
      -71.773993,
      -41.787129,
      -71.754059,
      -41.720446,
      -71.810346,
      -41.694816,
      -71.794039,
      -41.605156,
      -71.885877,
      -41.565628,
      -71.844851,
      -41.575015,
      -71.817310,
      -41.533090,
      -71.848952,
      -41.433489,
      -71.834729,
      -41.340735,
      -71.912070,
      -41.307959,
      -71.876051,
      -41.255404,
      -71.899037,
      -41.271283,
      -71.834181,
      -41.161285,
      -71.887783,
      -41.149792,
      -71.840766,
      -41.098685,
      -71.851529,
      -41.060383,
      -71.819600,
      -40.985164,
      -71.905199,
      -40.960733,
      -71.902452,
      -40.955989,
      -71.857240,
      -40.882583,
      -71.858421,
      -40.857764,
      -71.908006,
      -40.821790,
      -71.934099,
      -40.783198,
      -71.923456,
      -40.745139,
      -71.966608,
      -40.609908,
      -71.837613,
      -40.578130,
      -71.825051,
      -40.592662,
      -71.855085,
      -40.556004,
      -71.890498,
      -40.555364,
      -71.859178,
      -40.525324,
      -71.842910,
      -40.420480,
      -71.824579,
      -40.407410,
      -71.791620,
      -40.434462,
      -71.735315,
      -40.397606,
      -71.687936,
      -40.373939,
      -71.693601,
      -40.364261,
      -71.657037,
      -40.292268,
      -71.694585,
      -40.292268,
      -69.592084,
      -41.992126,
      -69.592084
    ]);
    poly[440] = _TzPolygon([
      -40.292268,
      -71.722758,
      -40.305599,
      -71.751628,
      -40.292268,
      -71.764493
    ]);
    poly[441] = _TzPolygon([
      -39.442339,
      -71.997768,
      -39.442339,
      -71.448113,
      -39.450620,
      -71.447085,
      -39.493267,
      -71.472945,
      -39.530408,
      -71.534381,
      -39.560380,
      -71.503986,
      -39.553265,
      -71.470769,
      -39.583070,
      -71.461172,
      -39.637216,
      -71.503057,
      -39.627961,
      -71.610174,
      -39.592122,
      -71.624765,
      -39.565057,
      -71.677809,
      -39.587348,
      -71.698628,
      -39.648336,
      -71.715547,
      -39.682569,
      -71.669381,
      -39.724555,
      -71.712570,
      -39.808066,
      -71.666822,
      -39.842739,
      -71.690854,
      -39.901234,
      -71.592664,
      -39.973362,
      -71.620473,
      -39.970337,
      -71.645021,
      -40.032482,
      -71.688575,
      -40.104349,
      -71.674343,
      -40.117153,
      -71.699331,
      -40.088110,
      -71.825609,
      -40.135898,
      -71.799688,
      -40.172052,
      -71.828818,
      -40.187324,
      -71.798486,
      -40.213284,
      -71.829213,
      -40.292268,
      -71.762832,
      -40.292268,
      -71.997768
    ]);
    poly[442] = _TzPolygon([
      -40.292268,
      -71.736145,
      -40.276651,
      -71.718007,
      -40.292268,
      -71.689459
    ]);
    poly[443] = _TzPolygon([
      -38.592410,
      -70.828719,
      -38.596271,
      -70.827741,
      -38.666806,
      -70.904130,
      -38.700038,
      -70.884218,
      -38.762976,
      -70.925245,
      -38.753867,
      -71.095039,
      -38.814403,
      -71.185219,
      -38.801357,
      -71.237374,
      -38.871179,
      -71.296032,
      -38.928944,
      -71.433604,
      -38.981027,
      -71.441512,
      -39.045635,
      -71.396008,
      -39.151075,
      -71.421186,
      -39.211327,
      -71.381073,
      -39.283159,
      -71.374093,
      -39.350604,
      -71.400364,
      -39.370570,
      -71.457023,
      -39.442339,
      -71.448113,
      -39.442339,
      -71.997768,
      -38.592410,
      -71.997768
    ]);
    poly[444] = _TzPolygon([
      -37.145169,
      -69.592084,
      -37.070623,
      -69.754073,
      -36.964614,
      -69.778684,
      -36.892553,
      -69.763706,
      -36.892553,
      -69.592084
    ]);
    poly[445] = _TzPolygon([
      -36.892553,
      -71.900482,
      -36.892553,
      -71.129248,
      -36.929041,
      -71.144752,
      -36.936060,
      -71.087143,
      -36.971392,
      -71.106434,
      -36.978198,
      -71.222584,
      -36.998543,
      -71.165024,
      -37.069278,
      -71.140863,
      -37.114556,
      -71.092349,
      -37.141238,
      -71.134576,
      -37.206543,
      -71.114566,
      -37.225151,
      -71.170163,
      -37.276358,
      -71.188188,
      -37.274983,
      -71.220728,
      -37.382493,
      -71.198138,
      -37.402646,
      -71.149771,
      -37.489083,
      -71.116255,
      -37.539055,
      -71.150244,
      -37.587738,
      -71.127798,
      -37.648579,
      -71.206464,
      -37.699197,
      -71.209509,
      -37.757481,
      -71.155998,
      -37.784852,
      -71.169856,
      -37.819789,
      -71.123698,
      -37.857139,
      -71.183413,
      -37.859489,
      -71.140299,
      -37.901348,
      -71.099198,
      -37.953027,
      -71.114662,
      -37.970444,
      -71.061648,
      -38.045348,
      -71.052981,
      -38.087883,
      -70.988759,
      -38.104769,
      -70.982923,
      -38.123813,
      -71.043691,
      -38.171872,
      -70.996141,
      -38.249871,
      -71.032228,
      -38.297540,
      -70.997857,
      -38.430118,
      -70.983953,
      -38.538020,
      -70.842504,
      -38.592410,
      -70.828719,
      -38.592410,
      -71.900482
    ]);
    poly[446] = _TzPolygon([
      -36.892553,
      -71.129248,
      -36.869386,
      -71.119405,
      -36.842014,
      -71.180291,
      -36.814730,
      -71.131786,
      -36.679597,
      -71.113579,
      -36.677695,
      -71.085840,
      -36.714316,
      -71.065648,
      -36.690988,
      -71.009397,
      -36.618051,
      -71.057355,
      -36.475799,
      -71.037270,
      -36.503574,
      -70.972881,
      -36.493759,
      -70.935051,
      -36.466067,
      -70.888735,
      -36.396050,
      -70.883911,
      -36.416230,
      -70.850867,
      -36.396336,
      -70.815848,
      -36.428800,
      -70.787352,
      -36.405731,
      -70.747012,
      -36.892553,
      -70.746283
    ]);
    poly[447] = _TzPolygon([
      -36.892553,
      -69.763706,
      -36.870052,
      -69.759029,
      -36.844760,
      -69.851068,
      -36.792385,
      -69.921661,
      -36.720063,
      -69.947434,
      -36.694280,
      -70.011634,
      -36.571453,
      -70.120752,
      -36.454693,
      -70.200582,
      -36.326955,
      -70.225365,
      -36.338549,
      -70.327956,
      -36.309376,
      -70.359017,
      -36.126311,
      -70.398953,
      -36.042624,
      -70.383605,
      -36.042624,
      -69.592084,
      -36.892553,
      -69.592084
    ]);
    poly[448] = _TzPolygon([
      -36.042624,
      -70.746283,
      -36.042624,
      -70.376976,
      -36.061411,
      -70.412772,
      -36.155683,
      -70.420834,
      -36.178934,
      -70.490668,
      -36.142783,
      -70.531284,
      -36.138486,
      -70.577804,
      -36.174799,
      -70.571281,
      -36.217051,
      -70.633251,
      -36.238653,
      -70.632221,
      -36.272291,
      -70.705005,
      -36.304669,
      -70.684749,
      -36.342290,
      -70.712336,
      -36.389426,
      -70.679377,
      -36.426866,
      -70.712851,
      -36.429767,
      -70.739287,
      -36.408000,
      -70.746283
    ]);
    poly[449] = _TzPolygon([
      -36.042624,
      -70.383605,
      -35.994661,
      -70.374808,
      -35.972432,
      -70.423109,
      -35.923763,
      -70.366686,
      -35.906072,
      -70.425712,
      -35.874225,
      -70.420906,
      -35.812880,
      -70.307611,
      -35.787241,
      -70.379363,
      -35.748938,
      -70.358249,
      -35.640074,
      -70.423773,
      -35.606864,
      -70.386523,
      -35.526123,
      -70.412155,
      -35.521194,
      -70.367930,
      -35.463523,
      -70.446621,
      -35.391565,
      -70.452286,
      -35.354411,
      -70.418624,
      -35.318422,
      -70.432013,
      -35.322442,
      -70.500328,
      -35.278311,
      -70.583584,
      -35.199376,
      -70.536720,
      -35.203077,
      -70.470457,
      -35.192695,
      -70.438253,
      -35.192695,
      -69.592084,
      -36.042624,
      -69.592084
    ]);
    poly[450] = _TzPolygon([
      -37.149128,
      -69.592084,
      -37.174413,
      -69.528537,
      -37.144655,
      -69.272757,
      -37.178046,
      -69.215052,
      -37.178112,
      -69.169509,
      -37.251359,
      -69.038914,
      -37.364905,
      -69.025673,
      -37.374370,
      -68.902336,
      -37.401370,
      -68.862791,
      -37.367106,
      -68.764790,
      -37.388558,
      -68.722475,
      -37.443122,
      -68.693162,
      -37.456163,
      -68.500516,
      -37.543807,
      -68.438250,
      -37.574553,
      -68.258624,
      -36.173761,
      -68.250425,
      -36.173175,
      -68.296416,
      -35.997567,
      -68.296021,
      -35.999085,
      -65.107859,
      -35.192695,
      -65.105515,
      -35.192695,
      -64.780716,
      -41.992126,
      -64.780716,
      -41.992126,
      -69.592084
    ]);
    poly[451] = _TzPolygon([
      -35.192695,
      -66.493081,
      -35.192695,
      -65.101402,
      -35.999085,
      -65.107859,
      -36.000631,
      -66.637783,
      -35.850454,
      -66.622515,
      -35.638322,
      -66.547656,
      -35.581173,
      -66.570442,
      -35.538946,
      -66.524995,
      -35.311285,
      -66.495403,
      -35.274264,
      -66.519915,
      -35.240645,
      -66.484147
    ]);
    poly[452] = _TzPolygon([
      -33.492837,
      -70.677005,
      -33.492837,
      -69.831024,
      -33.515205,
      -69.835131,
      -33.539648,
      -69.871767,
      -33.683244,
      -69.884780,
      -33.717046,
      -69.864440,
      -33.774146,
      -69.904299,
      -33.847444,
      -69.898932,
      -33.892520,
      -69.855283,
      -33.963630,
      -69.905739,
      -33.962891,
      -69.853246,
      -34.014171,
      -69.822212,
      -34.055811,
      -69.852897,
      -34.085956,
      -69.833671,
      -34.132561,
      -69.873521,
      -34.208546,
      -69.790780,
      -34.243036,
      -69.795071,
      -34.264177,
      -69.897038,
      -34.291940,
      -69.909921,
      -34.250105,
      -69.970842,
      -34.288053,
      -70.030944,
      -34.413892,
      -70.010890,
      -34.482265,
      -70.127276,
      -34.611448,
      -70.216827,
      -34.683329,
      -70.215968,
      -34.746332,
      -70.306176,
      -34.770308,
      -70.307957,
      -34.798152,
      -70.248756,
      -34.937568,
      -70.331477,
      -34.991588,
      -70.334395,
      -35.005933,
      -70.365634,
      -35.172661,
      -70.376109,
      -35.192695,
      -70.438253,
      -35.192695,
      -70.677005
    ]);
    poly[453] = _TzPolygon([
      -33.492837,
      -69.831024,
      -33.432467,
      -69.819938,
      -33.423330,
      -69.795747,
      -33.396175,
      -69.807077,
      -33.348334,
      -69.771014,
      -33.287473,
      -69.800816,
      -33.273438,
      -69.903898,
      -33.244897,
      -69.918237,
      -33.266887,
      -69.917260,
      -33.322926,
      -70.001214,
      -33.286100,
      -70.006063,
      -33.270107,
      -70.038872,
      -33.235968,
      -70.026222,
      -33.201745,
      -70.064707,
      -33.138333,
      -70.049858,
      -33.052378,
      -70.094115,
      -33.006253,
      -70.019406,
      -32.969223,
      -70.028604,
      -32.900978,
      -69.989360,
      -32.800298,
      -70.108007,
      -32.728104,
      -70.147603,
      -32.642908,
      -70.157320,
      -32.642908,
      -69.694290,
      -33.492837,
      -69.694290
    ]);
    poly[454] = _TzPolygon([
      -32.642908,
      -70.157320,
      -32.597133,
      -70.162541,
      -32.576464,
      -70.122556,
      -32.625500,
      -70.065400,
      -32.528300,
      -70.004200,
      -32.570600,
      -69.847300,
      -32.544000,
      -69.821600,
      -32.546800,
      -69.790900,
      -32.509400,
      -69.756100,
      -32.496400,
      -69.705000,
      -32.451526,
      -69.694290,
      -32.642908,
      -69.694290
    ]);
    poly[455] = _TzPolygon([
      -32.425619,
      -69.694290,
      -32.390600,
      -69.733200,
      -32.330800,
      -69.728900,
      -32.305770,
      -69.694290
    ]);
    poly[456] = _TzPolygon([
      -31.792980,
      -70.462729,
      -31.844106,
      -70.459989,
      -31.885702,
      -70.375317,
      -31.884090,
      -70.279949,
      -31.957688,
      -70.210597,
      -32.051326,
      -70.288532,
      -32.025551,
      -70.353892,
      -32.044032,
      -70.388251,
      -32.070225,
      -70.335379,
      -32.109746,
      -70.341559,
      -32.136083,
      -70.304072,
      -32.267821,
      -70.322918,
      -32.332929,
      -70.217856,
      -32.428944,
      -70.236390,
      -32.487452,
      -70.136059,
      -32.576341,
      -70.126033,
      -32.621210,
      -70.172135,
      -32.642908,
      -70.153784,
      -32.642908,
      -70.677005,
      -31.792980,
      -70.677005
    ]);
    poly[457] = _TzPolygon([
      -32.451526,
      -69.694290,
      -32.430200,
      -69.689200,
      -32.425619,
      -69.694290,
      -32.305770,
      -69.694290,
      -32.260000,
      -69.631000,
      -32.143100,
      -69.596500,
      -32.141000,
      -69.531100,
      -32.074700,
      -69.454800,
      -32.066500,
      -69.415700,
      -32.091100,
      -69.314200,
      -32.016100,
      -69.244500,
      -31.999400,
      -69.128400,
      -32.116500,
      -69.011600,
      -32.114700,
      -68.917600,
      -32.338000,
      -68.917600,
      -32.337264,
      -68.711575,
      -33.492837,
      -68.711575,
      -33.492837,
      -69.694290
    ]);
    poly[458] = _TzPolygon([
      -31.792980,
      -70.462962,
      -31.700467,
      -70.467607,
      -31.689659,
      -70.513247,
      -31.651984,
      -70.506949,
      -31.600158,
      -70.566913,
      -31.511025,
      -70.551812,
      -31.474014,
      -70.569681,
      -31.448298,
      -70.548502,
      -31.420066,
      -70.560293,
      -31.407302,
      -70.532098,
      -31.314451,
      -70.547065,
      -31.122358,
      -70.497540,
      -31.084345,
      -70.456309,
      -31.167701,
      -70.401453,
      -31.135156,
      -70.360892,
      -31.111198,
      -70.369315,
      -31.044317,
      -70.321813,
      -31.043402,
      -70.269070,
      -31.020345,
      -70.297286,
      -30.970388,
      -70.293156,
      -30.929746,
      -70.323277,
      -30.831139,
      -70.279648,
      -30.787889,
      -70.288494,
      -30.728616,
      -70.246190,
      -30.634681,
      -70.247118,
      -30.551636,
      -70.189708,
      -30.491682,
      -70.195167,
      -30.431020,
      -70.117187,
      -30.346107,
      -70.154266,
      -30.352241,
      -70.106388,
      -30.394708,
      -70.063151,
      -30.385750,
      -69.955176,
      -30.357675,
      -69.934877,
      -30.350671,
      -69.891951,
      -30.319989,
      -69.908130,
      -30.219544,
      -69.885365,
      -30.219247,
      -69.834038,
      -30.178744,
      -69.816872,
      -30.125901,
      -69.824940,
      -30.105855,
      -69.899270,
      -30.120407,
      -69.935662,
      -30.093122,
      -69.957838,
      -30.093122,
      -68.711575,
      -31.792980,
      -68.711575
    ]);
    poly[459] = _TzPolygon([
      -29.243193,
      -68.982018,
      -29.243193,
      -68.711575,
      -29.629941,
      -68.711575,
      -29.625400,
      -68.735100,
      -29.635100,
      -68.863100,
      -29.593400,
      -68.885500,
      -29.619800,
      -68.935600,
      -29.651600,
      -68.938300,
      -29.639100,
      -69.014100,
      -29.533000,
      -69.033700,
      -29.456500,
      -68.975200,
      -29.399700,
      -69.002200,
      -29.287300,
      -68.956700,
      -29.274000,
      -68.989100
    ]);
    poly[460] = _TzPolygon([
      -29.243193,
      -70.265666,
      -29.243193,
      -69.940028,
      -29.250524,
      -69.938337,
      -29.285201,
      -69.996486,
      -29.330257,
      -70.020377,
      -29.383526,
      -70.021589,
      -29.414629,
      -69.966769,
      -29.452154,
      -69.981427,
      -29.486015,
      -69.949034,
      -29.653552,
      -69.940033,
      -29.724618,
      -69.879718,
      -29.806791,
      -69.913479,
      -29.862028,
      -69.875928,
      -30.037139,
      -69.923156,
      -30.084682,
      -69.964698,
      -30.093122,
      -69.957838,
      -30.093122,
      -70.265666
    ]);
    poly[461] = _TzPolygon([
      -29.243193,
      -68.982018,
      -29.230500,
      -68.979100,
      -29.186600,
      -69.001200,
      -29.146300,
      -68.969600,
      -29.166400,
      -68.935000,
      -29.128200,
      -68.911700,
      -29.044900,
      -68.908500,
      -28.941500,
      -68.961300,
      -28.861000,
      -68.908200,
      -28.761100,
      -69.162000,
      -28.681600,
      -69.209800,
      -28.596172,
      -69.203350,
      -28.412000,
      -69.316300,
      -28.448500,
      -69.375900,
      -28.451800,
      -69.425500,
      -28.415500,
      -69.469700,
      -28.431900,
      -69.516200,
      -28.405800,
      -69.555200,
      -28.419000,
      -69.605700,
      -28.393264,
      -69.642201,
      -28.393264,
      -68.711575,
      -29.243193,
      -68.711575
    ]);
    poly[462] = _TzPolygon([
      -28.393264,
      -69.639844,
      -28.396123,
      -69.649809,
      -28.430365,
      -69.632647,
      -28.471286,
      -69.680883,
      -28.532384,
      -69.651206,
      -28.581472,
      -69.664657,
      -28.595848,
      -69.693449,
      -28.685000,
      -69.731142,
      -28.736055,
      -69.729325,
      -28.772686,
      -69.692879,
      -28.900330,
      -69.765448,
      -28.984360,
      -69.754620,
      -29.050635,
      -69.792815,
      -29.130055,
      -69.787113,
      -29.138358,
      -69.874577,
      -29.189048,
      -69.952518,
      -29.243193,
      -69.940028,
      -29.243193,
      -70.265666,
      -28.393264,
      -70.265666
    ]);
    poly[463] = _TzPolygon([
      -34.572276,
      -66.746146,
      -34.551384,
      -66.765254,
      -34.442918,
      -66.754309,
      -34.411427,
      -66.795099,
      -34.379339,
      -66.764022,
      -34.345083,
      -66.812008,
      -34.305136,
      -66.802346,
      -34.298080,
      -66.775686,
      -34.257298,
      -66.801351,
      -34.233715,
      -66.785475,
      -34.221414,
      -66.746146
    ]);
    poly[464] = _TzPolygon([
      -33.909971,
      -66.746146,
      -33.832403,
      -66.873865,
      -33.769567,
      -66.882522,
      -33.667774,
      -67.004156,
      -33.632675,
      -66.998327,
      -33.492837,
      -67.112968,
      -33.492837,
      -66.746146
    ]);
    poly[465] = _TzPolygon([
      -32.229795,
      -67.728860,
      -32.222929,
      -67.736544,
      -32.226135,
      -67.831806,
      -32.175304,
      -67.916499,
      -32.113721,
      -67.938574,
      -32.121118,
      -67.959774,
      -32.096041,
      -67.971025,
      -32.070956,
      -68.052321,
      -32.098873,
      -68.073004,
      -32.084566,
      -68.080622,
      -32.119329,
      -68.151981,
      -32.109170,
      -68.188468,
      -32.127798,
      -68.206085,
      -32.091599,
      -68.247830,
      -32.137700,
      -68.304100,
      -32.137800,
      -68.463000,
      -32.237700,
      -68.462900,
      -32.337100,
      -68.665700,
      -32.337264,
      -68.711575,
      -31.792980,
      -68.711575,
      -31.792980,
      -67.728860
    ]);
    poly[466] = _TzPolygon([
      -31.858814,
      -66.746146,
      -31.811800,
      -66.802400,
      -31.792980,
      -66.810050,
      -31.792980,
      -66.746146
    ]);
    poly[467] = _TzPolygon([
      -32.229795,
      -67.728860,
      -32.245914,
      -67.710822,
      -32.225171,
      -67.675937,
      -32.246021,
      -67.597144,
      -32.220883,
      -67.523543,
      -32.306719,
      -67.472865,
      -32.350470,
      -67.331906,
      -32.443006,
      -67.289186,
      -32.536352,
      -67.297263,
      -32.552589,
      -67.262771,
      -32.625623,
      -67.256806,
      -32.682074,
      -67.225003,
      -32.697483,
      -67.187776,
      -32.758705,
      -67.166420,
      -32.769350,
      -67.185911,
      -32.820146,
      -67.177832,
      -32.886632,
      -67.232281,
      -33.003292,
      -67.179549,
      -33.043992,
      -67.198048,
      -33.077062,
      -67.174153,
      -33.252109,
      -67.180232,
      -33.464962,
      -67.135820,
      -33.492837,
      -67.112968,
      -33.492837,
      -67.728860
    ]);
    poly[468] = _TzPolygon([
      -32.229795,
      -67.728860,
      -31.792980,
      -67.728860,
      -31.792980,
      -66.810050,
      -31.811800,
      -66.802400,
      -31.855347,
      -66.746146,
      -31.912213,
      -66.746146,
      -31.897700,
      -66.885700,
      -31.833800,
      -67.137000,
      -31.880800,
      -67.241800,
      -31.859900,
      -67.467200,
      -31.941500,
      -67.438000,
      -32.133000,
      -67.471500,
      -32.199400,
      -67.430100,
      -32.292300,
      -67.278200,
      -32.359800,
      -67.265500,
      -32.318742,
      -67.452448,
      -32.220883,
      -67.523543,
      -32.246021,
      -67.597144,
      -32.225171,
      -67.675937,
      -32.245914,
      -67.710822
    ]);
    poly[469] = _TzPolygon([
      -33.492837,
      -65.125889,
      -33.492837,
      -64.780716,
      -35.012896,
      -64.780716,
      -35.015368,
      -65.105000,
      -34.073550,
      -65.092441
    ]);
    poly[470] = _TzPolygon([
      -33.909971,
      -66.746146,
      -33.958553,
      -66.666152,
      -34.136302,
      -66.733531,
      -34.147375,
      -66.711233,
      -34.212982,
      -66.719187,
      -34.221414,
      -66.746146
    ]);
    poly[471] = _TzPolygon([
      -34.572276,
      -66.746146,
      -34.619559,
      -66.702900,
      -34.690619,
      -66.690698,
      -34.719168,
      -66.639689,
      -34.757754,
      -66.650427,
      -34.774623,
      -66.606691,
      -34.832940,
      -66.561509,
      -34.910866,
      -66.554941,
      -34.943145,
      -66.524305,
      -35.016032,
      -66.539498,
      -35.140901,
      -66.477856,
      -35.172705,
      -66.496806,
      -35.192695,
      -66.493081,
      -35.192695,
      -66.746146
    ]);
    poly[472] = _TzPolygon([
      -35.192695,
      -65.105515,
      -35.015368,
      -65.105000,
      -35.012896,
      -64.780716,
      -35.192695,
      -64.780716
    ]);
    poly[473] = _TzPolygon([
      -33.492837,
      -65.125889,
      -33.195969,
      -65.142988,
      -33.135487,
      -65.045959,
      -33.100020,
      -65.059240,
      -33.002992,
      -64.998826,
      -32.975542,
      -65.022924,
      -32.867559,
      -64.965825,
      -32.805044,
      -64.970672,
      -32.679179,
      -64.916186,
      -32.614742,
      -64.924121,
      -32.570774,
      -64.882720,
      -32.485182,
      -64.895502,
      -32.466736,
      -64.919786,
      -32.298352,
      -64.941396,
      -32.321508,
      -64.977267,
      -32.325382,
      -65.211604,
      -32.088938,
      -65.245786,
      -31.898895,
      -65.627618,
      -31.889084,
      -65.769911,
      -31.792980,
      -65.770147,
      -31.792980,
      -64.780716,
      -33.492837,
      -64.780716
    ]);
    poly[474] = _TzPolygon([
      -31.858814,
      -66.746146,
      -31.792980,
      -66.746146,
      -31.792980,
      -65.770147,
      -31.889084,
      -65.769911,
      -31.910932,
      -65.888102,
      -31.889163,
      -65.979249,
      -31.936728,
      -66.070545,
      -31.970135,
      -66.078569,
      -31.938470,
      -66.141267,
      -31.939420,
      -66.161047,
      -31.963644,
      -66.158434,
      -31.930546,
      -66.299695,
      -31.944018,
      -66.337841,
      -31.998235,
      -66.349970,
      -31.898800,
      -66.698300
    ]);
    poly[475] = _TzPolygon([
      -31.855347,
      -66.746146,
      -31.921039,
      -66.661283,
      -31.912213,
      -66.746146
    ]);
    poly[476] = _TzPolygon([
      -29.629941,
      -68.711575,
      -29.670546,
      -68.501226,
      -29.664182,
      -68.403665,
      -29.746899,
      -68.258500,
      -29.780700,
      -68.253800,
      -29.781100,
      -68.199000,
      -29.885400,
      -68.158800,
      -29.900300,
      -68.054300,
      -30.074300,
      -67.898300,
      -30.298100,
      -67.590900,
      -30.403000,
      -67.578600,
      -30.536300,
      -67.494800,
      -30.627500,
      -67.410100,
      -30.695300,
      -67.282800,
      -30.895600,
      -67.128800,
      -30.914200,
      -67.085300,
      -31.005600,
      -67.112200,
      -31.060800,
      -67.092200,
      -31.160700,
      -67.125700,
      -31.227400,
      -67.075300,
      -31.382800,
      -67.109100,
      -31.632700,
      -66.958500,
      -31.632700,
      -66.875200,
      -31.792980,
      -66.810050,
      -31.792980,
      -68.711575
    ]);
    poly[477] = _TzPolygon([
      -31.792980,
      -65.770147,
      -31.044523,
      -65.771984,
      -30.485877,
      -65.521213,
      -30.119411,
      -65.422828,
      -30.046920,
      -65.158100,
      -29.911402,
      -65.008098,
      -29.846962,
      -64.939024,
      -29.596008,
      -64.964324,
      -29.574265,
      -64.824647,
      -29.473738,
      -64.825969,
      -29.405442,
      -64.786067,
      -29.311780,
      -64.841868,
      -29.274007,
      -64.824691,
      -29.267794,
      -64.780716,
      -31.792980,
      -64.780716
    ]);
    poly[478] = _TzPolygon([
      -29.267794,
      -64.780716,
      -29.198162,
      -64.854485,
      -29.016049,
      -64.863470,
      -28.931650,
      -64.906800,
      -28.838502,
      -64.901298,
      -28.738725,
      -65.016846,
      -28.716365,
      -65.126770,
      -28.647445,
      -65.136304,
      -28.623595,
      -65.187454,
      -28.600273,
      -65.184619,
      -28.611516,
      -65.125641,
      -28.471149,
      -65.097055,
      -28.393264,
      -65.101266,
      -28.393264,
      -64.780716
    ]);
    poly[479] = _TzPolygon([
      -28.393264,
      -66.537674,
      -28.468125,
      -66.514020,
      -28.531510,
      -66.530901,
      -28.531341,
      -66.496285,
      -28.621755,
      -66.496364,
      -28.721267,
      -66.351460,
      -28.814721,
      -66.411309,
      -28.858168,
      -66.402357,
      -28.944016,
      -66.099378,
      -29.180995,
      -65.814712,
      -29.269552,
      -65.814566,
      -29.269873,
      -65.748386,
      -29.328488,
      -65.717348,
      -29.411858,
      -65.719177,
      -30.119411,
      -65.422828,
      -30.485877,
      -65.521213,
      -31.044523,
      -65.771984,
      -31.792980,
      -65.770147,
      -31.792980,
      -66.746146,
      -28.393264,
      -66.746146
    ]);
    poly[480] = _TzPolygon([
      -41.422645,
      -62.609179,
      -40.979576,
      -62.803051,
      -40.824446,
      -62.949850,
      -40.722183,
      -63.184310,
      -40.729561,
      -63.285669,
      -40.707682,
      -63.308176,
      -40.710189,
      -63.379351,
      -34.383197,
      -63.392673,
      -34.384361,
      -62.609179
    ]);
    poly[481] = _TzPolygon([
      -29.267794,
      -64.780716,
      -28.393264,
      -64.780716,
      -28.393264,
      -62.609179,
      -34.384361,
      -62.609179,
      -34.383197,
      -63.392673,
      -35.002259,
      -63.385587,
      -35.012896,
      -64.780716
    ]);
    poly[482] = _TzPolygon([
      -33.261612,
      -62.609179,
      -33.261612,
      -60.260223,
      -33.350734,
      -60.323943,
      -33.412296,
      -60.335279,
      -33.467725,
      -60.410192,
      -33.544790,
      -60.413768,
      -33.582330,
      -60.457442,
      -33.634118,
      -60.462784,
      -33.646610,
      -60.557088,
      -33.585511,
      -60.683778,
      -33.579018,
      -60.781886,
      -33.540342,
      -60.818173,
      -33.554681,
      -60.879007,
      -33.588514,
      -60.918209,
      -33.653787,
      -60.934192,
      -34.385686,
      -61.717681,
      -34.384361,
      -62.609179
    ]);
    poly[483] = _TzPolygon([
      -33.261612,
      -58.393042,
      -33.279634,
      -58.390545,
      -33.363561,
      -58.431758,
      -33.537643,
      -58.443426,
      -33.583747,
      -58.494708,
      -33.720379,
      -58.434701,
      -33.916298,
      -58.423567,
      -33.988897,
      -58.389303,
      -34.037763,
      -58.644680,
      -33.946724,
      -58.758230,
      -33.950878,
      -58.839899,
      -33.890547,
      -58.898328,
      -33.872694,
      -58.972866,
      -33.841388,
      -58.994148,
      -33.847661,
      -59.132850,
      -33.806264,
      -59.172134,
      -33.811717,
      -59.236545,
      -33.726239,
      -59.246894,
      -33.727338,
      -59.442301,
      -33.631734,
      -59.508333,
      -33.689206,
      -59.613589,
      -33.619980,
      -59.661319,
      -33.608489,
      -59.776325,
      -33.589510,
      -59.808616,
      -33.531851,
      -59.824989,
      -33.474139,
      -59.934303,
      -33.448112,
      -60.041166,
      -33.261612,
      -60.260223
    ]);
    poly[484] = _TzPolygon([
      -35.782448,
      -55.703699,
      -35.632191,
      -55.868778,
      -35.173238,
      -56.705143,
      -35.189034,
      -57.000023,
      -34.862980,
      -57.327981,
      -34.780799,
      -57.508238,
      -34.684798,
      -57.934353,
      -34.451896,
      -57.934502,
      -34.232874,
      -58.180331,
      -34.178090,
      -58.295066,
      -34.006821,
      -58.344293,
      -33.999879,
      -58.377075,
      -33.916298,
      -58.423567,
      -33.720379,
      -58.434701,
      -33.585550,
      -58.494773,
      -33.537643,
      -58.443426,
      -33.363561,
      -58.431758,
      -33.279634,
      -58.390545,
      -33.261612,
      -58.393042,
      -33.261612,
      -55.703699
    ]);
    poly[485] = _TzPolygon([
      -33.261612,
      -53.521037,
      -33.261612,
      -52.467132,
      -33.422913,
      -52.615046,
      -33.868906,
      -53.181090,
      -33.743132,
      -53.371292,
      -33.739471,
      -53.430525,
      -33.693469,
      -53.439511,
      -33.688801,
      -53.532282
    ]);
    poly[486] = _TzPolygon([
      -30.085396,
      -58.087644,
      -31.821977,
      -58.087644,
      -31.871076,
      -58.206771,
      -32.001816,
      -58.138307,
      -32.159083,
      -58.183411,
      -32.259358,
      -58.099923,
      -32.309612,
      -58.103217,
      -32.375891,
      -58.182913,
      -32.460549,
      -58.204637,
      -32.572425,
      -58.160297,
      -32.735830,
      -58.149444,
      -32.989410,
      -58.087644,
      -33.004866,
      -58.087644,
      -33.076862,
      -58.175869,
      -33.129049,
      -58.370649,
      -33.180003,
      -58.404350,
      -33.261612,
      -58.393042,
      -33.261612,
      -62.609179,
      -30.085396,
      -62.609179
    ]);
    poly[487] = _TzPolygon([
      -31.673504,
      -58.087644,
      -31.673504,
      -58.010677,
      -31.759526,
      -58.038331,
      -31.821977,
      -58.087644
    ]);
    poly[488] = _TzPolygon([
      -32.989410,
      -58.087644,
      -33.002302,
      -58.084502,
      -33.004866,
      -58.087644
    ]);
    poly[489] = _TzPolygon([
      -30.085396,
      -57.459256,
      -30.144845,
      -57.514628,
      -30.181515,
      -57.644876,
      -30.255777,
      -57.615244,
      -30.341805,
      -57.642850,
      -30.510438,
      -57.889465,
      -30.587582,
      -57.887298,
      -30.695359,
      -57.809018,
      -30.856258,
      -57.799648,
      -30.916870,
      -57.831591,
      -30.920869,
      -57.915001,
      -31.034678,
      -57.861428,
      -31.130403,
      -57.919249,
      -31.217075,
      -57.914210,
      -31.320029,
      -57.981463,
      -31.361873,
      -57.997148,
      -31.390503,
      -57.980542,
      -31.456470,
      -58.082018,
      -31.488800,
      -58.078247,
      -31.531375,
      -58.004356,
      -31.580292,
      -57.980711,
      -31.673504,
      -58.010677,
      -31.673504,
      -58.087644,
      -30.085396,
      -58.087644
    ]);
    poly[490] = _TzPolygon([
      -30.088811,
      -57.067189,
      -30.086311,
      -57.070451,
      -30.121088,
      -57.090699,
      -30.114028,
      -57.116121,
      -30.135258,
      -57.105867,
      -30.198088,
      -57.167975,
      -30.234495,
      -57.155317,
      -30.289278,
      -57.220813,
      -30.289306,
      -57.249536,
      -30.267152,
      -57.259779,
      -30.294000,
      -57.284000,
      -30.257821,
      -57.313501,
      -30.285000,
      -57.353000,
      -30.274854,
      -57.372651,
      -30.304737,
      -57.392294,
      -30.266052,
      -57.464850,
      -30.285693,
      -57.524310,
      -30.258991,
      -57.566485,
      -30.211343,
      -57.560874,
      -30.193907,
      -57.648930,
      -30.123146,
      -57.480465,
      -30.085396,
      -57.451407,
      -30.085396,
      -57.067189
    ]);
    poly[491] = _TzPolygon([
      -30.085816,
      -57.067189,
      -30.105533,
      -57.045369,
      -30.085929,
      -56.994090,
      -30.113550,
      -56.904972,
      -30.086300,
      -56.874611,
      -30.103859,
      -56.807048,
      -30.162906,
      -56.777510,
      -30.176418,
      -56.705347,
      -30.204946,
      -56.697355,
      -30.203456,
      -56.646280,
      -30.218447,
      -56.667991,
      -30.265656,
      -56.610565,
      -30.300545,
      -56.618695,
      -30.288816,
      -56.576438,
      -30.312907,
      -56.541147,
      -30.359455,
      -56.547058,
      -30.360171,
      -56.518673,
      -30.398418,
      -56.489872,
      -30.384864,
      -56.461264,
      -30.422556,
      -56.453448,
      -30.449495,
      -56.397126,
      -30.499556,
      -56.381765,
      -30.491212,
      -56.355912,
      -30.531342,
      -56.322242,
      -30.519674,
      -56.291926,
      -30.585086,
      -56.260953,
      -30.574071,
      -56.235674,
      -30.607509,
      -56.219200,
      -30.615174,
      -56.170739,
      -30.731972,
      -56.132185,
      -30.757247,
      -56.088586,
      -30.746795,
      -56.068270,
      -30.775368,
      -56.046735,
      -31.673504,
      -56.046735,
      -31.673504,
      -57.067189
    ]);
    poly[492] = _TzPolygon([
      -30.775368,
      -56.046735,
      -30.848082,
      -55.991930,
      -30.944896,
      -56.015329,
      -31.082440,
      -56.009655,
      -31.076539,
      -55.883372,
      -31.014676,
      -55.812486,
      -31.015541,
      -55.776576,
      -30.979391,
      -55.728147,
      -30.942747,
      -55.723757,
      -30.953968,
      -55.666062,
      -30.911597,
      -55.642266,
      -30.863997,
      -55.658342,
      -30.833089,
      -55.577415,
      -30.947598,
      -55.486825,
      -30.959731,
      -55.441381,
      -31.018229,
      -55.423056,
      -31.039216,
      -55.349811,
      -31.067541,
      -55.359921,
      -31.088192,
      -55.327731,
      -31.131436,
      -55.340373,
      -31.142264,
      -55.291184,
      -31.260616,
      -55.240034,
      -31.269459,
      -55.169329,
      -31.332155,
      -55.074459,
      -31.269806,
      -55.031921,
      -31.266919,
      -55.007233,
      -31.331934,
      -54.953276,
      -31.351489,
      -54.960215,
      -31.356503,
      -54.935218,
      -31.380685,
      -54.940871,
      -31.377302,
      -54.886225,
      -31.442003,
      -54.836702,
      -31.424458,
      -54.752240,
      -31.456563,
      -54.586765,
      -31.510194,
      -54.515704,
      -31.599585,
      -54.452798,
      -31.651707,
      -54.456406,
      -31.928245,
      -54.100193,
      -31.895427,
      -54.032779,
      -31.904928,
      -54.005825,
      -33.261612,
      -54.005825,
      -33.261612,
      -56.046735
    ]);
    poly[493] = _TzPolygon([
      -31.904928,
      -54.005825,
      -31.917655,
      -53.969722,
      -31.955318,
      -53.960733,
      -32.000642,
      -53.849776,
      -32.055240,
      -53.833751,
      -32.096148,
      -53.725216,
      -32.151877,
      -53.735001,
      -32.296989,
      -53.642800,
      -32.383854,
      -53.645205,
      -32.451918,
      -53.583210,
      -32.488540,
      -53.527662,
      -32.484461,
      -53.464232,
      -32.565058,
      -53.432604,
      -32.581443,
      -53.400987,
      -32.569735,
      -53.370158,
      -32.621013,
      -53.290780,
      -32.604096,
      -53.249925,
      -32.740881,
      -53.075583,
      -32.788350,
      -53.085802,
      -32.792023,
      -53.145689,
      -32.850431,
      -53.184956,
      -32.899314,
      -53.294539,
      -32.918431,
      -53.309312,
      -32.934454,
      -53.244292,
      -33.052961,
      -53.444381,
      -33.153425,
      -53.518189,
      -33.261612,
      -53.521037,
      -33.261612,
      -54.005825
    ]);
    poly[494] = _TzPolygon([
      -30.085396,
      -57.451407,
      -30.036842,
      -57.414032,
      -29.992845,
      -57.337128,
      -29.876115,
      -57.326184,
      -29.787937,
      -57.241912,
      -29.764937,
      -57.120912,
      -29.641533,
      -56.969840,
      -29.581211,
      -56.951748,
      -29.435326,
      -56.777379,
      -29.377679,
      -56.766182,
      -29.359128,
      -56.701637,
      -29.258538,
      -56.648079,
      -29.196069,
      -56.643787,
      -29.125164,
      -56.593147,
      -29.075000,
      -56.418000,
      -28.974798,
      -56.407753,
      -28.896137,
      -56.299950,
      -28.802720,
      -56.296511,
      -28.759238,
      -56.178580,
      -28.687041,
      -56.126224,
      -28.607182,
      -56.009843,
      -28.508726,
      -56.012491,
      -28.479231,
      -55.883574,
      -30.085396,
      -55.883574
    ]);
    poly[495] = _TzPolygon([
      -28.479231,
      -55.883574,
      -28.412177,
      -55.903229,
      -28.393264,
      -55.893571,
      -28.393264,
      -55.883574
    ]);
    poly[496] = _TzPolygon([
      -28.393264,
      -55.686687,
      -28.422043,
      -55.694328,
      -28.423401,
      -55.717674,
      -28.393264,
      -55.737148
    ]);
    poly[497] = _TzPolygon([
      -27.383750,
      -57.601072,
      -27.326978,
      -57.694530,
      -27.334160,
      -57.814500,
      -27.275266,
      -57.874817,
      -27.263060,
      -57.919449,
      -27.275954,
      -58.171500,
      -27.256324,
      -58.171500,
      -27.256324,
      -57.554695,
      -27.383750,
      -57.554695
    ]);
    poly[498] = _TzPolygon([
      -25.443098,
      -58.171500,
      -25.443098,
      -57.554695,
      -25.559345,
      -57.573697,
      -25.568896,
      -57.604913,
      -25.616495,
      -57.617611,
      -25.596409,
      -57.674058,
      -25.659830,
      -57.675280,
      -25.653057,
      -57.743434,
      -25.700523,
      -57.767600,
      -25.716286,
      -57.727301,
      -25.757760,
      -57.773986,
      -25.754312,
      -57.825696,
      -25.822344,
      -57.793985,
      -25.859709,
      -57.866551,
      -25.913766,
      -57.833879,
      -25.955799,
      -57.894598,
      -25.987296,
      -57.853409,
      -26.009143,
      -57.855737,
      -26.107376,
      -58.024308,
      -26.111846,
      -58.084733,
      -26.186362,
      -58.119694,
      -26.182690,
      -58.159751,
      -26.228508,
      -58.103866,
      -26.265295,
      -58.164025,
      -26.344982,
      -58.156659,
      -26.358070,
      -58.171500
    ]);
    poly[499] = _TzPolygon([
      -25.443098,
      -57.554695,
      -25.322178,
      -57.702950,
      -25.285932,
      -57.694460,
      -25.220289,
      -57.759005,
      -25.176271,
      -57.753587,
      -25.131514,
      -57.836738,
      -25.081396,
      -57.861350,
      -25.086165,
      -57.975387,
      -25.033567,
      -58.008680,
      -25.045757,
      -58.068912,
      -25.008685,
      -58.090843,
      -25.011547,
      -58.137737,
      -24.975004,
      -58.150026,
      -24.971517,
      -58.171500,
      -24.971517,
      -57.554695
    ]);
  }
}

class _Initializer6 {
  static void _init() {
    poly[500] = _TzPolygon([
      -27.383750,
      -56.217655,
      -27.341657,
      -56.173053,
      -27.308452,
      -56.087277,
      -27.312518,
      -56.037036,
      -27.355114,
      -55.978926,
      -27.342731,
      -55.896275,
      -27.383750,
      -55.859440
    ]);
    poly[501] = _TzPolygon([
      -27.383750,
      -55.687280,
      -27.378466,
      -55.683009,
      -27.337499,
      -55.598931,
      -27.279151,
      -55.600264,
      -27.250778,
      -55.575678,
      -27.182156,
      -55.621590,
      -27.162407,
      -55.605701,
      -27.163545,
      -55.564983,
      -27.108297,
      -55.562511,
      -27.104263,
      -55.454485,
      -27.017810,
      -55.441962,
      -26.966312,
      -55.378406,
      -26.962682,
      -55.305832,
      -26.936886,
      -55.260090,
      -26.969489,
      -55.203597,
      -26.948583,
      -55.135102,
      -26.896237,
      -55.150208,
      -26.852751,
      -55.127892,
      -26.797297,
      -55.052361,
      -26.783279,
      -54.958271,
      -26.682626,
      -54.941124,
      -26.655576,
      -54.869006,
      -26.674343,
      -54.823364,
      -26.631112,
      -54.786945,
      -26.537220,
      -54.801541,
      -26.498955,
      -54.761145,
      -27.383750,
      -54.761145
    ]);
    poly[502] = _TzPolygon([
      -26.780692,
      -54.761145,
      -26.780692,
      -53.714771,
      -26.782261,
      -53.717054,
      -26.847212,
      -53.694725,
      -26.858288,
      -53.662850,
      -26.860147,
      -53.696837,
      -26.869946,
      -53.680010,
      -26.887078,
      -53.695742,
      -26.894434,
      -53.670997,
      -26.929831,
      -53.696783,
      -26.942484,
      -53.671250,
      -26.934136,
      -53.709196,
      -26.960650,
      -53.703444,
      -26.974462,
      -53.737083,
      -26.990344,
      -53.717999,
      -26.991551,
      -53.743074,
      -27.014724,
      -53.740819,
      -27.008282,
      -53.763594,
      -27.032184,
      -53.747302,
      -27.045352,
      -53.763900,
      -27.026738,
      -53.785853,
      -27.065428,
      -53.760874,
      -27.040278,
      -53.802327,
      -27.073971,
      -53.771876,
      -27.078250,
      -53.805549,
      -27.103307,
      -53.776503,
      -27.102786,
      -53.818939,
      -27.122901,
      -53.804543,
      -27.133247,
      -53.824389,
      -27.146289,
      -53.798789,
      -27.145887,
      -53.828245,
      -27.169915,
      -53.836237,
      -27.127411,
      -53.879053,
      -27.176463,
      -53.909972,
      -27.152051,
      -53.951170,
      -27.194912,
      -53.960253,
      -27.200409,
      -54.009892,
      -27.248372,
      -54.021074,
      -27.301126,
      -54.088891,
      -27.296190,
      -54.156185,
      -27.254000,
      -54.172000,
      -27.383750,
      -54.216578,
      -27.383750,
      -54.761145
    ]);
    poly[503] = _TzPolygon([
      -26.177634,
      -54.657362,
      -26.216938,
      -54.618744,
      -26.264725,
      -54.679579,
      -26.311794,
      -54.648801,
      -26.378675,
      -54.697155,
      -26.446046,
      -54.705291,
      -26.498955,
      -54.761145,
      -26.177634,
      -54.761145
    ]);
    poly[504] = _TzPolygon([
      -26.780692,
      -53.662850,
      -26.780692,
      -53.714771,
      -26.769594,
      -53.698622,
      -26.764284,
      -53.743730,
      -26.750711,
      -53.714038,
      -26.720368,
      -53.757889,
      -26.717058,
      -53.734567,
      -26.681349,
      -53.743391,
      -26.684779,
      -53.717338,
      -26.650887,
      -53.720252,
      -26.640985,
      -53.759459,
      -26.644077,
      -53.739709,
      -26.560856,
      -53.707507,
      -26.566543,
      -53.736356,
      -26.545145,
      -53.741750,
      -26.539159,
      -53.720189,
      -26.500921,
      -53.729022,
      -26.508924,
      -53.704851,
      -26.490330,
      -53.695893,
      -26.470614,
      -53.715186,
      -26.430905,
      -53.687262,
      -26.387569,
      -53.709996,
      -26.313342,
      -53.662850
    ]);
    poly[505] = _TzPolygon([
      -26.192786,
      -53.662850,
      -26.177634,
      -53.678390,
      -26.177634,
      -53.662850
    ]);
    poly[506] = _TzPolygon([
      -25.574576,
      -54.761145,
      -25.574576,
      -54.597496,
      -25.662630,
      -54.581235,
      -25.659618,
      -54.640807,
      -25.687650,
      -54.657778,
      -25.830428,
      -54.587047,
      -25.914252,
      -54.622306,
      -25.978180,
      -54.610621,
      -25.995239,
      -54.679330,
      -26.093444,
      -54.643010,
      -26.164874,
      -54.669899,
      -26.177634,
      -54.657362,
      -26.177634,
      -54.761145
    ]);
    poly[507] = _TzPolygon([
      -25.574576,
      -54.233143,
      -25.593000,
      -54.235000,
      -25.596189,
      -54.255077,
      -25.574576,
      -54.272006
    ]);
    poly[508] = _TzPolygon([
      -25.574576,
      -54.332331,
      -25.606749,
      -54.348221,
      -25.597471,
      -54.383946,
      -25.697560,
      -54.432884,
      -25.618096,
      -54.492703,
      -25.628665,
      -54.526420,
      -25.588129,
      -54.552575,
      -25.592753,
      -54.593535,
      -25.574576,
      -54.596904
    ]);
    poly[509] = _TzPolygon([
      -26.177634,
      -53.678390,
      -26.115572,
      -53.742040,
      -26.043181,
      -53.734204,
      -25.970178,
      -53.836770,
      -25.898539,
      -53.819509,
      -25.883663,
      -53.850008,
      -25.872236,
      -53.823501,
      -25.839815,
      -53.850120,
      -25.793767,
      -53.822137,
      -25.790655,
      -53.843452,
      -25.780858,
      -53.830917,
      -25.766052,
      -53.857018,
      -25.751379,
      -53.834066,
      -25.744423,
      -53.866200,
      -25.707706,
      -53.879314,
      -25.687327,
      -53.842542,
      -25.658641,
      -53.862687,
      -25.661073,
      -53.890301,
      -25.622236,
      -53.892777,
      -25.636287,
      -53.912308,
      -25.616174,
      -53.916511,
      -25.611325,
      -53.947738,
      -25.643519,
      -53.962366,
      -25.600909,
      -53.970265,
      -25.574576,
      -54.005036,
      -25.574576,
      -53.662850,
      -26.177634,
      -53.662850
    ]);
    poly[510] = _TzPolygon([
      -25.574576,
      -54.034108,
      -25.585000,
      -54.049000,
      -25.574576,
      -54.063594
    ]);
    poly[511] = _TzPolygon([
      -25.574576,
      -54.087118,
      -25.619000,
      -54.098000,
      -25.574576,
      -54.120212
    ]);
    poly[512] = _TzPolygon([
      -25.574576,
      -54.184137,
      -25.584000,
      -54.178000,
      -25.574576,
      -54.201407
    ]);
    poly[513] = _TzPolygon([
      -25.574576,
      -54.332331,
      -25.553935,
      -54.288173,
      -25.574576,
      -54.272006
    ]);
    poly[514] = _TzPolygon([
      -25.574576,
      -54.233143,
      -25.562296,
      -54.231905,
      -25.574576,
      -54.201407
    ]);
    poly[515] = _TzPolygon([
      -25.574576,
      -54.184137,
      -25.541000,
      -54.206000,
      -25.541000,
      -54.161000,
      -25.495000,
      -54.099000,
      -25.567000,
      -54.124000,
      -25.574576,
      -54.120212
    ]);
    poly[516] = _TzPolygon([
      -25.574576,
      -54.082008,
      -25.557657,
      -54.075917,
      -25.574576,
      -54.059262
    ]);
    poly[517] = _TzPolygon([
      -25.574576,
      -54.026414,
      -25.567000,
      -54.010000,
      -25.574576,
      -54.004839
    ]);
    poly[518] = _TzPolygon([
      -24.971517,
      -54.439441,
      -25.084088,
      -54.458136,
      -25.159149,
      -54.429502,
      -25.313138,
      -54.499111,
      -25.454309,
      -54.619705,
      -25.574576,
      -54.597496,
      -25.574576,
      -54.761145,
      -24.971517,
      -54.761145
    ]);
    poly[519] = _TzPolygon([
      -26.183765,
      -53.662850,
      -26.194481,
      -53.650406,
      -26.249652,
      -53.637451,
      -26.297939,
      -53.662850
    ]);
    poly[520] = _TzPolygon([
      -26.857392,
      -53.662850,
      -26.858157,
      -53.660456,
      -26.858288,
      -53.662850
    ]);
    poly[521] = _TzPolygon([
      -22.204843,
      -56.330086,
      -22.169491,
      -56.364855,
      -22.151733,
      -56.370302,
      -22.151733,
      -56.330086
    ]);
    poly[522] = _TzPolygon([
      -22.151733,
      -56.534711,
      -22.196549,
      -56.556748,
      -22.244041,
      -56.642261,
      -22.263407,
      -56.637053,
      -22.216928,
      -56.703442,
      -22.264792,
      -56.720261,
      -22.235719,
      -56.746996,
      -22.260414,
      -56.776571,
      -22.242379,
      -56.793443,
      -22.283327,
      -56.802691,
      -22.301554,
      -56.842854,
      -22.277699,
      -56.879965,
      -22.247554,
      -56.883430,
      -22.266490,
      -56.905510,
      -22.242727,
      -56.987088,
      -22.222459,
      -56.996705,
      -22.251128,
      -57.082446,
      -22.225389,
      -57.110259,
      -22.236582,
      -57.183505,
      -22.210984,
      -57.201353,
      -22.251348,
      -57.237664,
      -22.218526,
      -57.294484,
      -22.245548,
      -57.320437,
      -22.232043,
      -57.374403,
      -22.197581,
      -57.407338,
      -22.191154,
      -57.489628,
      -22.168151,
      -57.522847,
      -22.175344,
      -57.580396,
      -22.151733,
      -57.589229
    ]);
    poly[523] = _TzPolygon([
      -23.561625,
      -55.528616,
      -23.561625,
      -54.488672,
      -23.893027,
      -54.488672,
      -23.874332,
      -54.568497,
      -23.837194,
      -54.584378,
      -23.851482,
      -54.609508,
      -23.812615,
      -54.669779,
      -23.864520,
      -54.705325,
      -23.856643,
      -54.759408,
      -23.906000,
      -54.849000,
      -23.898000,
      -54.890000,
      -23.922000,
      -54.925000,
      -23.959000,
      -54.924000,
      -23.956000,
      -54.998000,
      -23.993353,
      -55.062233,
      -23.961918,
      -55.107174,
      -24.013828,
      -55.229072,
      -23.965061,
      -55.304168,
      -23.994601,
      -55.345433,
      -23.964524,
      -55.414243,
      -23.916803,
      -55.446252,
      -23.716646,
      -55.436730,
      -23.711937,
      -55.463962,
      -23.640051,
      -55.484196,
      -23.625015,
      -55.539906,
      -23.567313,
      -55.526385
    ]);
    poly[524] = _TzPolygon([
      -22.204843,
      -56.330086,
      -22.218290,
      -56.316860,
      -22.236588,
      -56.238030,
      -22.278052,
      -56.209831,
      -22.288342,
      -56.165897,
      -22.270323,
      -56.117682,
      -22.294616,
      -56.010168,
      -22.280328,
      -55.853190,
      -22.384601,
      -55.789394,
      -22.384393,
      -55.746947,
      -22.459117,
      -55.735159,
      -22.476824,
      -55.752465,
      -22.551948,
      -55.723408,
      -22.655211,
      -55.614320,
      -22.767498,
      -55.618404,
      -22.791663,
      -55.650634,
      -22.852446,
      -55.665833,
      -23.149926,
      -55.596348,
      -23.156100,
      -55.541986,
      -23.197334,
      -55.523560,
      -23.220467,
      -55.546021,
      -23.259790,
      -55.522720,
      -23.279613,
      -55.553132,
      -23.316532,
      -55.555814,
      -23.378879,
      -55.504574,
      -23.477278,
      -55.544994,
      -23.476213,
      -55.562115,
      -23.561625,
      -55.528616,
      -23.561625,
      -56.330086
    ]);
    poly[525] = _TzPolygon([
      -22.151733,
      -57.589229,
      -22.094620,
      -57.610596,
      -22.107062,
      -57.652655,
      -22.091108,
      -57.707512,
      -22.113653,
      -57.716975,
      -22.102818,
      -57.738089,
      -22.134756,
      -57.739127,
      -22.125232,
      -57.779792,
      -22.150722,
      -57.801829,
      -22.120511,
      -57.827396,
      -22.135925,
      -57.865322,
      -22.120213,
      -57.929674,
      -22.082807,
      -57.942248,
      -22.090233,
      -57.993842,
      -22.063451,
      -57.984244,
      -22.040378,
      -58.009461,
      -22.004996,
      -57.965827,
      -21.922796,
      -57.934951,
      -21.901296,
      -57.948684,
      -21.882660,
      -57.912806,
      -21.850453,
      -57.966028,
      -21.773548,
      -57.908658,
      -21.744133,
      -57.947143,
      -21.689028,
      -57.883287,
      -21.650365,
      -57.934365,
      -21.622382,
      -57.942888,
      -21.590213,
      -57.913865,
      -21.563112,
      -57.959699,
      -21.524324,
      -57.967953,
      -21.331091,
      -57.853501,
      -21.280379,
      -57.921613,
      -21.224075,
      -57.850665,
      -21.140036,
      -57.864535,
      -21.097767,
      -57.846373,
      -21.044168,
      -57.868337,
      -20.979564,
      -57.816504,
      -20.940665,
      -57.819191,
      -20.948466,
      -57.863820,
      -20.906372,
      -57.889070,
      -20.900364,
      -57.928365,
      -20.834026,
      -57.855199,
      -20.788720,
      -57.898631,
      -20.791600,
      -57.961828,
      -20.745653,
      -57.934779,
      -20.749987,
      -57.868689,
      -20.741840,
      -57.868044,
      -20.741840,
      -57.250793,
      -22.151733,
      -57.250793
    ]);
    poly[526] = _TzPolygon([
      -22.151733,
      -56.534711,
      -22.095609,
      -56.507114,
      -22.074341,
      -56.394040,
      -22.151733,
      -56.370302
    ]);
    poly[527] = _TzPolygon([
      -20.015895,
      -58.171500,
      -20.120085,
      -58.137864,
      -20.172900,
      -58.168832,
      -20.192460,
      -58.121521,
      -20.228588,
      -58.164614,
      -20.259525,
      -58.162164,
      -20.271832,
      -58.143519,
      -20.254451,
      -58.095960,
      -20.355544,
      -58.093394,
      -20.435512,
      -57.998465,
      -20.515276,
      -58.019236,
      -20.561592,
      -57.995242,
      -20.610685,
      -58.013809,
      -20.642557,
      -57.970485,
      -20.698787,
      -57.988482,
      -20.704233,
      -57.954870,
      -20.663920,
      -57.924136,
      -20.725585,
      -57.869891,
      -20.741840,
      -57.869090,
      -20.741840,
      -58.171500
    ]);
    poly[528] = _TzPolygon([
      -19.822709,
      -58.171500,
      -19.827268,
      -58.163854,
      -19.834362,
      -58.171500
    ]);
    poly[529] = _TzPolygon([
      -19.834362,
      -58.171500,
      -19.827268,
      -58.163854,
      -19.822709,
      -58.171500,
      -19.331948,
      -58.171500,
      -19.331948,
      -57.927083,
      -19.758000,
      -58.131000,
      -19.970298,
      -57.857957,
      -20.042071,
      -57.902481,
      -20.020944,
      -57.953465,
      -20.056803,
      -57.979452,
      -20.063580,
      -58.032649,
      -20.107267,
      -58.050440,
      -20.108881,
      -58.092529,
      -20.145690,
      -58.115620,
      -20.167124,
      -58.169687,
      -20.120085,
      -58.137864,
      -20.015895,
      -58.171500
    ]);
    poly[530] = _TzPolygon([
      -23.893027,
      -54.488672,
      -23.904464,
      -54.439840,
      -23.986686,
      -54.383689,
      -24.004536,
      -54.321982,
      -24.073356,
      -54.282230,
      -24.116326,
      -54.333898,
      -24.154425,
      -54.344197,
      -24.242406,
      -54.324971,
      -24.357000,
      -54.258000,
      -24.470729,
      -54.327141,
      -24.660587,
      -54.324373,
      -24.802806,
      -54.395372,
      -24.947694,
      -54.435485,
      -24.971517,
      -54.439441,
      -24.971517,
      -54.488672
    ]);
    poly[531] = _TzPolygon([
      -22.151733,
      -54.488672,
      -22.151733,
      -52.422733,
      -22.218000,
      -52.489000,
      -22.343000,
      -52.745000,
      -22.439000,
      -52.854000,
      -22.493000,
      -52.998000,
      -22.553000,
      -53.077000,
      -22.621000,
      -53.105000,
      -22.728000,
      -53.198000,
      -22.775000,
      -53.352000,
      -22.890000,
      -53.546000,
      -22.951000,
      -53.607000,
      -22.998000,
      -53.634000,
      -23.125000,
      -53.636000,
      -23.319000,
      -53.730000,
      -23.372000,
      -53.771000,
      -23.456000,
      -53.981000,
      -23.764000,
      -54.075000,
      -23.951000,
      -54.101000,
      -24.073356,
      -54.282230,
      -24.004536,
      -54.321982,
      -24.007722,
      -54.351711,
      -23.958277,
      -54.414604,
      -23.904464,
      -54.439840,
      -23.893027,
      -54.488672
    ]);
    poly[532] = _TzPolygon([
      -22.151733,
      -52.422733,
      -22.106000,
      -52.377000,
      -21.942000,
      -52.301000,
      -21.846000,
      -52.190000,
      -21.770000,
      -52.161000,
      -21.714000,
      -52.076000,
      -21.643000,
      -52.049000,
      -21.570222,
      -52.101899,
      -21.534828,
      -52.094192,
      -21.505372,
      -52.052602,
      -21.503978,
      -51.970244,
      -21.343515,
      -51.861946,
      -21.266071,
      -51.848440,
      -21.197840,
      -51.880415,
      -21.137189,
      -51.878549,
      -21.102000,
      -51.789000,
      -20.974041,
      -51.721317,
      -20.942271,
      -51.623105,
      -20.753127,
      -51.634210,
      -20.643000,
      -51.594000,
      -20.459000,
      -51.409000,
      -20.353000,
      -51.341000,
      -20.295000,
      -51.132000,
      -20.233189,
      -51.058263,
      -20.088925,
      -50.998257,
      -19.959000,
      -51.020000,
      -19.906000,
      -50.999000,
      -19.729000,
      -51.045000,
      -19.589000,
      -50.987000,
      -19.576000,
      -50.923000,
      -19.500000,
      -50.962000,
      -19.467000,
      -50.934000,
      -19.398676,
      -51.026459,
      -19.345499,
      -51.044461,
      -19.331948,
      -51.060215,
      -19.331948,
      -50.806078,
      -22.151733,
      -50.805961
    ]);
    poly[533] = _TzPolygon([
      -17.922055,
      -58.171500,
      -17.922055,
      -57.670833,
      -18.046000,
      -57.600000,
      -18.131000,
      -57.574000,
      -18.231000,
      -57.453000,
      -18.240000,
      -57.557000,
      -18.797186,
      -57.735232,
      -18.899000,
      -57.766000,
      -18.899000,
      -57.719000,
      -18.978110,
      -57.719215,
      -19.010883,
      -57.691608,
      -19.034630,
      -57.710212,
      -19.033000,
      -57.784000,
      -19.331948,
      -57.927083,
      -19.331948,
      -58.171500
    ]);
    poly[534] = _TzPolygon([
      -16.512163,
      -57.250793,
      -17.792638,
      -57.250793,
      -17.793511,
      -57.254453,
      -17.796948,
      -57.250793,
      -17.812406,
      -57.250793,
      -17.810532,
      -57.309295,
      -17.838163,
      -57.345326,
      -17.826823,
      -57.380877,
      -17.903297,
      -57.456586,
      -17.860189,
      -57.477550,
      -17.863367,
      -57.515847,
      -17.800217,
      -57.577931,
      -17.803411,
      -57.605243,
      -17.717797,
      -57.640721,
      -17.730895,
      -57.664558,
      -17.716536,
      -57.684588,
      -17.673987,
      -57.668216,
      -17.531012,
      -57.725031,
      -17.550931,
      -57.745913,
      -17.449000,
      -57.883000,
      -17.515000,
      -57.996000,
      -17.492000,
      -58.043000,
      -17.450000,
      -58.060000,
      -17.447000,
      -58.120000,
      -17.384000,
      -58.151000,
      -17.388221,
      -58.171500,
      -16.512163,
      -58.171500
    ]);
    poly[535] = _TzPolygon([
      -17.388221,
      -58.171500,
      -17.384000,
      -58.151000,
      -17.451000,
      -58.116000,
      -17.450000,
      -58.060000,
      -17.492000,
      -58.043000,
      -17.515000,
      -57.996000,
      -17.449000,
      -57.883000,
      -17.550931,
      -57.745913,
      -17.560008,
      -57.795670,
      -17.597972,
      -57.774028,
      -17.642698,
      -57.782167,
      -17.729884,
      -57.709642,
      -17.774842,
      -57.713482,
      -17.810412,
      -57.684982,
      -17.830634,
      -57.684920,
      -17.830740,
      -57.723019,
      -17.922055,
      -57.670833,
      -17.922055,
      -58.171500
    ]);
    poly[536] = _TzPolygon([
      -17.286252,
      -56.330086,
      -17.288908,
      -56.339132,
      -17.267412,
      -56.360492,
      -17.331709,
      -56.445067,
      -17.297111,
      -56.492154,
      -17.332128,
      -56.579387,
      -17.317294,
      -56.647131,
      -17.340205,
      -56.648235,
      -17.321808,
      -56.657354,
      -17.340703,
      -56.663864,
      -17.317013,
      -56.683381,
      -17.310246,
      -56.735108,
      -17.390810,
      -56.789239,
      -17.392755,
      -56.831907,
      -17.459604,
      -56.826042,
      -17.465538,
      -56.850469,
      -17.532183,
      -56.875661,
      -17.532406,
      -56.911001,
      -17.580121,
      -56.983146,
      -17.610696,
      -56.982684,
      -17.614478,
      -56.960688,
      -17.733244,
      -57.048119,
      -17.782021,
      -57.118695,
      -17.768437,
      -57.149329,
      -17.792638,
      -57.250793,
      -16.512163,
      -57.250793,
      -16.512163,
      -56.330086
    ]);
    poly[537] = _TzPolygon([
      -17.796948,
      -57.250793,
      -17.812952,
      -57.233748,
      -17.812406,
      -57.250793
    ]);
    poly[538] = _TzPolygon([
      -17.513359,
      -55.409379,
      -17.512463,
      -55.444798,
      -17.479223,
      -55.473057,
      -17.482895,
      -55.525220,
      -17.421675,
      -55.590446,
      -17.373521,
      -55.586883,
      -17.365211,
      -55.627677,
      -17.340052,
      -55.642151,
      -17.359681,
      -55.647660,
      -17.338200,
      -55.658584,
      -17.354321,
      -55.704277,
      -17.337410,
      -55.709644,
      -17.329940,
      -55.787747,
      -17.298000,
      -55.806000,
      -17.300699,
      -55.843553,
      -17.269039,
      -55.875432,
      -17.285149,
      -55.888516,
      -17.273792,
      -55.903853,
      -17.264107,
      -55.888359,
      -17.257880,
      -55.928746,
      -17.278610,
      -55.942337,
      -17.249953,
      -55.952470,
      -17.257964,
      -55.988578,
      -17.240256,
      -56.011925,
      -17.204994,
      -56.007192,
      -17.171000,
      -56.045000,
      -17.186907,
      -56.054462,
      -17.167453,
      -56.114841,
      -17.191339,
      -56.140422,
      -17.188883,
      -56.187843,
      -17.227306,
      -56.211171,
      -17.220108,
      -56.254994,
      -17.277225,
      -56.299346,
      -17.286252,
      -56.330086,
      -16.512163,
      -56.330086,
      -16.512163,
      -55.409379
    ]);
    poly[539] = _TzPolygon([
      -17.513359,
      -55.409379,
      -16.512163,
      -55.409379,
      -16.512163,
      -54.488672,
      -17.487529,
      -54.488672,
      -17.488178,
      -54.556466,
      -17.467265,
      -54.581596,
      -17.521462,
      -54.746686,
      -17.567703,
      -54.762737,
      -17.624247,
      -54.861871,
      -17.608776,
      -54.942455,
      -17.639097,
      -54.991591,
      -17.642427,
      -55.062736,
      -17.626088,
      -55.098549,
      -17.654082,
      -55.125875,
      -17.615924,
      -55.223875,
      -17.540589,
      -55.294693,
      -17.548175,
      -55.351021,
      -17.514195,
      -55.376344
    ]);
    poly[540] = _TzPolygon([
      -17.922055,
      -53.865324,
      -17.922055,
      -53.121210,
      -17.990463,
      -53.064478,
      -18.034632,
      -53.072785,
      -18.041560,
      -53.173775,
      -18.007000,
      -53.237000,
      -18.008000,
      -53.380000,
      -17.983000,
      -53.439000,
      -18.039000,
      -53.472000,
      -18.005000,
      -53.557000,
      -18.012000,
      -53.589000,
      -17.976000,
      -53.616000,
      -17.977000,
      -53.661000,
      -18.013000,
      -53.692000,
      -17.994000,
      -53.786000
    ]);
    poly[541] = _TzPolygon([
      -17.922055,
      -53.937743,
      -17.923000,
      -53.948000,
      -17.922055,
      -53.948127
    ]);
    poly[542] = _TzPolygon([
      -17.922055,
      -53.121210,
      -17.922055,
      -52.647375,
      -18.690325,
      -52.647375,
      -18.692000,
      -52.747000,
      -18.637000,
      -52.918000,
      -18.540000,
      -52.962000,
      -18.465000,
      -52.880000,
      -18.426000,
      -52.873000,
      -18.414000,
      -52.798000,
      -18.350000,
      -52.759000,
      -18.313000,
      -52.805000,
      -18.296000,
      -52.935000,
      -18.303000,
      -52.976000,
      -18.351000,
      -53.027000,
      -18.310000,
      -53.101000,
      -18.081000,
      -53.143000,
      -18.051548,
      -53.076822,
      -17.990463,
      -53.064478
    ]);
    poly[543] = _TzPolygon([
      -17.922055,
      -53.948127,
      -17.871000,
      -53.955000,
      -17.702000,
      -53.855000,
      -17.672000,
      -53.806000,
      -17.663000,
      -53.704000,
      -17.254250,
      -53.679614,
      -17.227590,
      -53.705129,
      -17.294510,
      -53.819352,
      -17.355727,
      -53.831169,
      -17.374013,
      -53.877432,
      -17.458649,
      -53.950309,
      -17.506048,
      -54.054051,
      -17.563118,
      -54.051916,
      -17.618726,
      -54.078639,
      -17.603664,
      -54.181012,
      -17.653837,
      -54.273177,
      -17.662472,
      -54.336167,
      -17.633457,
      -54.388019,
      -17.572391,
      -54.382000,
      -17.528627,
      -54.466883,
      -17.487463,
      -54.481728,
      -17.487529,
      -54.488672,
      -16.512163,
      -54.488672,
      -16.512163,
      -53.568023,
      -17.922055,
      -53.568023,
      -17.922055,
      -53.865324,
      -17.916000,
      -53.872000
    ]);
    poly[544] = _TzPolygon([
      -17.922055,
      -53.121210,
      -17.915589,
      -53.126573,
      -17.835524,
      -53.131687,
      -17.765526,
      -53.164122,
      -17.689788,
      -53.244229,
      -17.440000,
      -53.233000,
      -17.380000,
      -53.196000,
      -17.298512,
      -53.218654,
      -17.113281,
      -53.118068,
      -17.070266,
      -53.055208,
      -17.050489,
      -53.071337,
      -16.963150,
      -53.055882,
      -16.861268,
      -53.014093,
      -16.867190,
      -52.963615,
      -16.841093,
      -52.952854,
      -16.840394,
      -52.926685,
      -16.803295,
      -52.933357,
      -16.818458,
      -52.923662,
      -16.776455,
      -52.884701,
      -16.742593,
      -52.786521,
      -16.714075,
      -52.785547,
      -16.704761,
      -52.760051,
      -16.672697,
      -52.754996,
      -16.669686,
      -52.771375,
      -16.657553,
      -52.740419,
      -16.631082,
      -52.746632,
      -16.640311,
      -52.715364,
      -16.589863,
      -52.740000,
      -16.599613,
      -52.705274,
      -16.571281,
      -52.704770,
      -16.584674,
      -52.672726,
      -16.551074,
      -52.668255,
      -16.562030,
      -52.650701,
      -16.558407,
      -52.647375,
      -17.922055,
      -52.647375
    ]);
    poly[545] = _TzPolygon([
      -18.690325,
      -52.647375,
      -18.689381,
      -52.591203,
      -18.658000,
      -52.531000,
      -18.691000,
      -52.449000,
      -18.822000,
      -52.344000,
      -18.847000,
      -52.181000,
      -18.888000,
      -52.157000,
      -18.899000,
      -52.111000,
      -18.942217,
      -52.093024,
      -18.962996,
      -52.017978,
      -18.981996,
      -52.014978,
      -18.969106,
      -51.938996,
      -19.050484,
      -51.857555,
      -19.137546,
      -51.657844,
      -19.126233,
      -51.576605,
      -19.161373,
      -51.498006,
      -19.166266,
      -51.419890,
      -19.221444,
      -51.369190,
      -19.218000,
      -51.307000,
      -19.239268,
      -51.306705,
      -19.273673,
      -51.251378,
      -19.260845,
      -51.202478,
      -19.307639,
      -51.088474,
      -19.331948,
      -51.060215,
      -19.331948,
      -52.647375
    ]);
    poly[546] = _TzPolygon([
      -16.512163,
      -52.634540,
      -16.536613,
      -52.627370,
      -16.558407,
      -52.647375,
      -16.512163,
      -52.647375
    ]);
    poly[547] = _TzPolygon([
      -16.411179,
      -52.647258,
      -16.398783,
      -52.687634,
      -16.302392,
      -52.682701,
      -16.284558,
      -52.647258
    ]);
    poly[548] = _TzPolygon([
      -16.512163,
      -52.634540,
      -16.502772,
      -52.637294,
      -16.502464,
      -52.613314,
      -16.464419,
      -52.604659,
      -16.412343,
      -52.643465,
      -16.411179,
      -52.647258,
      -16.284558,
      -52.647258,
      -16.249429,
      -52.577441,
      -16.261424,
      -52.547034,
      -16.229966,
      -52.570158,
      -16.222389,
      -52.545170,
      -16.165320,
      -52.549163,
      -16.133644,
      -52.515641,
      -16.072111,
      -52.329673,
      -15.891669,
      -52.251835,
      -15.886575,
      -52.011033,
      -15.845026,
      -51.983958,
      -15.838689,
      -51.954299,
      -15.810756,
      -51.950499,
      -15.828855,
      -51.882751,
      -15.636294,
      -51.758111,
      -15.538431,
      -51.778275,
      -15.531099,
      -51.760258,
      -15.560050,
      -51.740094,
      -15.509225,
      -51.735833,
      -15.490610,
      -51.700465,
      -15.410000,
      -51.697000,
      -15.371000,
      -51.671000,
      -15.322703,
      -51.691462,
      -15.263230,
      -51.645667,
      -15.250822,
      -51.672313,
      -15.176968,
      -51.651204,
      -15.156079,
      -51.596553,
      -15.102270,
      -51.558619,
      -15.102270,
      -50.806254,
      -16.512163,
      -50.806196
    ]);
    poly[549] = _TzPolygon([
      -15.102270,
      -51.558619,
      -15.062881,
      -51.530851,
      -15.045546,
      -51.457640,
      -15.005412,
      -51.419805,
      -15.009343,
      -51.365788,
      -14.969595,
      -51.328306,
      -15.037921,
      -51.284888,
      -15.027660,
      -51.227856,
      -14.984968,
      -51.156704,
      -14.944533,
      -51.146034,
      -14.920177,
      -51.085964,
      -14.840000,
      -51.089000,
      -14.789864,
      -51.042482,
      -14.750995,
      -51.057154,
      -14.524072,
      -50.961122,
      -14.416032,
      -50.998238,
      -14.326515,
      -50.965715,
      -14.294160,
      -50.978501,
      -14.169324,
      -50.913568,
      -14.114261,
      -50.918252,
      -14.125615,
      -50.865533,
      -14.089000,
      -50.833000,
      -13.966628,
      -50.867697,
      -13.914455,
      -50.839952,
      -13.733000,
      -50.871000,
      -13.694158,
      -50.806313,
      -15.102270,
      -50.806254
    ]);
    poly[550] = _TzPolygon([
      -14.163903,
      -46.188044,
      -14.164359,
      -46.190346,
      -14.119259,
      -46.219416,
      -14.098000,
      -46.265000,
      -14.072912,
      -46.226926,
      -14.056365,
      -46.248040,
      -14.014522,
      -46.210017,
      -13.973713,
      -46.219008,
      -13.945039,
      -46.267438,
      -13.845046,
      -46.233460,
      -13.796000,
      -46.282000,
      -13.767154,
      -46.223718,
      -13.745072,
      -46.237194,
      -13.740874,
      -46.284595,
      -13.717227,
      -46.238295,
      -13.692378,
      -46.257237,
      -13.692378,
      -46.188044
    ]);
    poly[551] = _TzPolygon([
      -15.102270,
      -46.029482,
      -15.102270,
      -45.711891,
      -15.112535,
      -45.721285,
      -15.113383,
      -45.818321,
      -15.157685,
      -45.872560,
      -15.138779,
      -45.954580,
      -15.194220,
      -45.984762,
      -15.199072,
      -46.027124,
      -15.260701,
      -46.054929,
      -15.262861,
      -46.078810,
      -15.193932,
      -46.120362,
      -15.165456,
      -46.048563,
      -15.118000,
      -46.043000
    ]);
    poly[552] = _TzPolygon([
      -14.163903,
      -46.188044,
      -14.153000,
      -46.133000,
      -14.204396,
      -46.096657,
      -14.194000,
      -46.061000,
      -14.237967,
      -46.054406,
      -14.257891,
      -45.994421,
      -14.343453,
      -45.942258,
      -14.354970,
      -45.906633,
      -14.415000,
      -45.935000,
      -14.432994,
      -45.978709,
      -14.406268,
      -46.008943,
      -14.418405,
      -46.016882,
      -14.516805,
      -46.004082,
      -14.537950,
      -45.977668,
      -14.542956,
      -45.996508,
      -14.626000,
      -45.985000,
      -14.660318,
      -45.990821,
      -14.681224,
      -46.029448,
      -14.711000,
      -46.001000,
      -14.794000,
      -46.008000,
      -14.831000,
      -46.052000,
      -14.975295,
      -45.965961,
      -15.039224,
      -45.975302,
      -15.102270,
      -46.029482,
      -15.102270,
      -46.188044
    ]);
    poly[553] = _TzPolygon([
      -15.102270,
      -45.711838,
      -14.943665,
      -45.565870,
      -14.953873,
      -45.455014,
      -14.921417,
      -45.435350,
      -14.918441,
      -45.400226,
      -14.871816,
      -45.365008,
      -14.851651,
      -45.317438,
      -14.831457,
      -45.317233,
      -14.833255,
      -45.285795,
      -14.744673,
      -45.206240,
      -14.732347,
      -45.164566,
      -14.749430,
      -45.083684,
      -14.679972,
      -45.040591,
      -14.578955,
      -44.843245,
      -14.570419,
      -44.859403,
      -14.537801,
      -44.824346,
      -14.498007,
      -44.833433,
      -14.448189,
      -44.701404,
      -14.415356,
      -44.689291,
      -14.415782,
      -44.657995,
      -14.393708,
      -44.658116,
      -14.388206,
      -44.648778,
      -15.102270,
      -44.648778
    ]);
    poly[554] = _TzPolygon([
      -14.388206,
      -44.648778,
      -14.338780,
      -44.564892,
      -14.328167,
      -44.486893,
      -14.238936,
      -44.315862,
      -14.259006,
      -44.246736,
      -14.231821,
      -44.214855,
      -14.267655,
      -44.170566,
      -14.262761,
      -44.137111,
      -14.281434,
      -44.134166,
      -14.257371,
      -44.113295,
      -14.288946,
      -44.034514,
      -14.264585,
      -43.997740,
      -14.304928,
      -43.942296,
      -14.292739,
      -43.893193,
      -14.311868,
      -43.881644,
      -14.311640,
      -43.819612,
      -14.337740,
      -43.777256,
      -14.377760,
      -43.815158,
      -14.525676,
      -43.873942,
      -14.653924,
      -43.884509,
      -14.675197,
      -43.859908,
      -14.698811,
      -43.725615,
      -14.730188,
      -43.719516,
      -14.722008,
      -43.686412,
      -14.760473,
      -43.615171,
      -14.750715,
      -43.580667,
      -14.784546,
      -43.535883,
      -14.816515,
      -43.530319,
      -14.787809,
      -43.469488,
      -14.768151,
      -43.481646,
      -14.723202,
      -43.434649,
      -14.669957,
      -43.311732,
      -14.650731,
      -43.177183,
      -14.684120,
      -43.109512,
      -16.217122,
      -43.109512,
      -16.217122,
      -44.648778
    ]);
    poly[555] = _TzPolygon([
      -14.684120,
      -43.109512,
      -14.696519,
      -43.084382,
      -14.682940,
      -43.037621,
      -14.707717,
      -42.939187,
      -14.744336,
      -42.927253,
      -14.764760,
      -42.870308,
      -14.885865,
      -42.722981,
      -14.944884,
      -42.626253,
      -14.923721,
      -42.598581,
      -15.017000,
      -42.476000,
      -15.022714,
      -42.436958,
      -15.062776,
      -42.440807,
      -15.071000,
      -42.374000,
      -15.098000,
      -42.355000,
      -15.080000,
      -42.331000,
      -15.125383,
      -42.265014,
      -15.086086,
      -42.173022,
      -15.186476,
      -42.091443,
      -15.158829,
      -41.997362,
      -15.174000,
      -41.932000,
      -15.115000,
      -41.870000,
      -15.100254,
      -41.801819,
      -15.307070,
      -41.570246,
      -16.217122,
      -41.570246,
      -16.217122,
      -43.109512
    ]);
    poly[556] = _TzPolygon([
      -18.099873,
      -40.030979,
      -17.979559,
      -40.222818,
      -17.922000,
      -40.263000,
      -17.851000,
      -40.174000,
      -17.795000,
      -40.218000,
      -17.737604,
      -40.219773,
      -17.726033,
      -40.276257,
      -17.619177,
      -40.342947,
      -17.644276,
      -40.355390,
      -17.612651,
      -40.372507,
      -17.625000,
      -40.396000,
      -17.609393,
      -40.415076,
      -17.567462,
      -40.412154,
      -17.568525,
      -40.460551,
      -17.520939,
      -40.488961,
      -17.489472,
      -40.482978,
      -17.445462,
      -40.519939,
      -17.406000,
      -40.623000,
      -17.389631,
      -40.598750,
      -17.326000,
      -40.609000,
      -17.284202,
      -40.547143,
      -17.251867,
      -40.571343,
      -17.199830,
      -40.551596,
      -17.163427,
      -40.578032,
      -17.102900,
      -40.556944,
      -17.062101,
      -40.570851,
      -16.885069,
      -40.492081,
      -16.899000,
      -40.417000,
      -16.874000,
      -40.366000,
      -16.907828,
      -40.331036,
      -16.901000,
      -40.281000,
      -16.846176,
      -40.247825,
      -16.805402,
      -40.258563,
      -16.785793,
      -40.345059,
      -16.736000,
      -40.310000,
      -16.586744,
      -40.283582,
      -16.556677,
      -40.234308,
      -16.579364,
      -40.157947,
      -16.524098,
      -40.170751,
      -16.421373,
      -40.097901,
      -16.463845,
      -40.083629,
      -16.459018,
      -40.066769,
      -16.390046,
      -40.030979
    ]);
    poly[557] = _TzPolygon([
      -16.217122,
      -39.906950,
      -16.244563,
      -39.936510,
      -16.284049,
      -39.916383,
      -16.327000,
      -39.966000,
      -16.313000,
      -39.991000,
      -16.390046,
      -40.030979,
      -16.217122,
      -40.030979
    ]);
    poly[558] = _TzPolygon([
      -18.099873,
      -40.030979,
      -18.329545,
      -39.664770,
      -18.348003,
      -39.669190,
      -18.367914,
      -39.471719,
      -18.529939,
      -39.522997,
      -18.741865,
      -39.541482,
      -18.741865,
      -40.030979
    ]);
    poly[559] = _TzPolygon([
      -15.307070,
      -41.570246,
      -15.498402,
      -41.356010,
      -15.741560,
      -41.329993,
      -15.737000,
      -41.215000,
      -15.770375,
      -41.140869,
      -15.719000,
      -41.077000,
      -15.712733,
      -41.005300,
      -15.648000,
      -40.963000,
      -15.694000,
      -40.881000,
      -15.683000,
      -40.842000,
      -15.646550,
      -40.823399,
      -15.714079,
      -40.767664,
      -15.703647,
      -40.739861,
      -15.680251,
      -40.741362,
      -15.668618,
      -40.699072,
      -15.728888,
      -40.644889,
      -15.716115,
      -40.629307,
      -15.736542,
      -40.606841,
      -15.802973,
      -40.561329,
      -15.797049,
      -40.517949,
      -15.769205,
      -40.510730,
      -15.774532,
      -40.479574,
      -15.753304,
      -40.460755,
      -15.807039,
      -40.423885,
      -15.823203,
      -40.376211,
      -15.803000,
      -40.231000,
      -15.861859,
      -40.200518,
      -15.868317,
      -40.164855,
      -15.904000,
      -40.175000,
      -15.912193,
      -40.106020,
      -15.896720,
      -40.084818,
      -15.921773,
      -40.085297,
      -15.911452,
      -40.065745,
      -15.940758,
      -40.079607,
      -15.989493,
      -40.023510,
      -15.997616,
      -39.916689,
      -16.025079,
      -39.933982,
      -16.113385,
      -39.856783,
      -16.141000,
      -39.897000,
      -16.195207,
      -39.883343,
      -16.217122,
      -39.906950,
      -16.217122,
      -41.570246
    ]);
    poly[560] = _TzPolygon([
      -27.782686,
      -69.003680,
      -27.794759,
      -69.095210,
      -27.717576,
      -69.093372,
      -27.696915,
      -69.044483,
      -27.616953,
      -69.053169,
      -27.580538,
      -69.003680
    ]);
    poly[561] = _TzPolygon([
      -28.393264,
      -69.642201,
      -28.327687,
      -69.522826,
      -28.183574,
      -69.456789,
      -28.226797,
      -69.391459,
      -28.184372,
      -69.383819,
      -28.128662,
      -69.308756,
      -28.069677,
      -69.299612,
      -28.046693,
      -69.263974,
      -28.010287,
      -69.267303,
      -27.967557,
      -69.236306,
      -27.972151,
      -69.177358,
      -27.948475,
      -69.155857,
      -27.794759,
      -69.095210,
      -27.782686,
      -69.003680,
      -28.393264,
      -69.003680
    ]);
    poly[562] = _TzPolygon([
      -27.782686,
      -69.003680,
      -27.755690,
      -68.799005,
      -27.788574,
      -68.725469,
      -27.815204,
      -68.716028,
      -27.791687,
      -68.624253,
      -27.819721,
      -68.582389,
      -27.709766,
      -68.543315,
      -27.838393,
      -68.514690,
      -27.873642,
      -68.440297,
      -28.015468,
      -68.456798,
      -28.004064,
      -68.396931,
      -28.037611,
      -68.335776,
      -28.026398,
      -68.286295,
      -28.068440,
      -68.295457,
      -28.095039,
      -68.274729,
      -28.071128,
      -68.246233,
      -28.085952,
      -68.182998,
      -28.110730,
      -68.164544,
      -28.101796,
      -68.141220,
      -28.173396,
      -68.107445,
      -28.124791,
      -68.022451,
      -28.114089,
      -67.914895,
      -28.172261,
      -67.930269,
      -28.259096,
      -67.894188,
      -28.313786,
      -67.840776,
      -28.375508,
      -67.846359,
      -28.375937,
      -67.815551,
      -28.348498,
      -67.806108,
      -28.351398,
      -67.770677,
      -28.393264,
      -67.770677,
      -28.393264,
      -69.003680
    ]);
    poly[563] = _TzPolygon([
      -26.780915,
      -69.003680,
      -26.780915,
      -68.367225,
      -26.916228,
      -68.263802,
      -26.925767,
      -68.291511,
      -26.982490,
      -68.318325,
      -27.033590,
      -68.295992,
      -27.064374,
      -68.430905,
      -27.094585,
      -68.451061,
      -27.057879,
      -68.483650,
      -27.120923,
      -68.476926,
      -27.135139,
      -68.496384,
      -27.113794,
      -68.555859,
      -27.175202,
      -68.572847,
      -27.169898,
      -68.618377,
      -27.103758,
      -68.668674,
      -27.100259,
      -68.703959,
      -27.113087,
      -68.751080,
      -27.098868,
      -68.778190,
      -27.152634,
      -68.806971,
      -27.154640,
      -68.841202,
      -27.260622,
      -68.868393,
      -27.301107,
      -68.808478,
      -27.317038,
      -68.868668,
      -27.398370,
      -68.887598,
      -27.411229,
      -68.930027,
      -27.444406,
      -68.936618,
      -27.430293,
      -68.966849,
      -27.446770,
      -68.988719,
      -27.523250,
      -68.942310,
      -27.523604,
      -68.987525,
      -27.560637,
      -68.976634,
      -27.580538,
      -69.003680
    ]);
    poly[564] = _TzPolygon([
      -28.351398,
      -67.770677,
      -28.352621,
      -67.755728,
      -28.329947,
      -67.760686,
      -28.311741,
      -67.695856,
      -28.384185,
      -67.376695,
      -28.383546,
      -67.155801,
      -28.270403,
      -67.075075,
      -28.254312,
      -67.015427,
      -28.288509,
      -66.570774,
      -28.393264,
      -66.537674,
      -28.393264,
      -67.770677
    ]);
    poly[565] = _TzPolygon([
      -26.352551,
      -66.537674,
      -26.352209,
      -66.539941,
      -26.292376,
      -66.560733,
      -26.266479,
      -66.538503,
      -26.248621,
      -66.567514,
      -26.160946,
      -66.584423,
      -26.107103,
      -66.660490,
      -26.076675,
      -66.660705,
      -26.080992,
      -66.704221,
      -26.048108,
      -66.778636,
      -25.980363,
      -66.839408,
      -25.916577,
      -66.852794,
      -25.796273,
      -66.847582,
      -25.764648,
      -66.872170,
      -25.712538,
      -66.842623,
      -25.698772,
      -66.794708,
      -25.711919,
      -66.648731,
      -25.629397,
      -66.606717,
      -25.620942,
      -66.563845,
      -25.585588,
      -66.571655,
      -25.539160,
      -66.537674
    ]);
    poly[566] = _TzPolygon([
      -25.372480,
      -66.537674,
      -25.362215,
      -66.599851,
      -25.298643,
      -66.559343,
      -25.241243,
      -66.879499,
      -25.237685,
      -67.864494,
      -25.168567,
      -68.507223,
      -25.168567,
      -66.537674
    ]);
    poly[567] = _TzPolygon([
      -25.168567,
      -68.507223,
      -25.207084,
      -68.501416,
      -25.298507,
      -68.545775,
      -25.314192,
      -68.522283,
      -25.374353,
      -68.522605,
      -25.414405,
      -68.589953,
      -25.448390,
      -68.589256,
      -25.574439,
      -68.514951,
      -25.630461,
      -68.545780,
      -25.708099,
      -68.478917,
      -26.178220,
      -68.381075,
      -26.287103,
      -68.557536,
      -26.492936,
      -68.587336,
      -26.780915,
      -68.367225,
      -26.780915,
      -69.003680,
      -25.168567,
      -69.003680
    ]);
    poly[568] = _TzPolygon([
      -27.046989,
      -66.537674,
      -27.046989,
      -65.958290,
      -27.261056,
      -66.140793,
      -27.333128,
      -65.971895,
      -27.525227,
      -65.970733,
      -27.669067,
      -65.915372,
      -27.688848,
      -65.865655,
      -27.851059,
      -65.832287,
      -27.806610,
      -65.793683,
      -27.768394,
      -65.802504,
      -27.768864,
      -65.750367,
      -27.818009,
      -65.702254,
      -27.970182,
      -65.667817,
      -27.971455,
      -65.618279,
      -28.013268,
      -65.569823,
      -27.929197,
      -65.506348,
      -27.845797,
      -65.365251,
      -27.946457,
      -65.171045,
      -28.186361,
      -65.112451,
      -28.393264,
      -65.101266,
      -28.393264,
      -66.537674
    ]);
    poly[569] = _TzPolygon([
      -28.393264,
      -65.101266,
      -28.186361,
      -65.112451,
      -27.906972,
      -65.167722,
      -27.879171,
      -65.039730,
      -27.791474,
      -65.016099,
      -27.739157,
      -65.032738,
      -27.733876,
      -64.988228,
      -27.586819,
      -65.029798,
      -27.546087,
      -64.955768,
      -27.466251,
      -65.012245,
      -27.344999,
      -64.932636,
      -27.318417,
      -64.854573,
      -27.046989,
      -64.776507,
      -27.046989,
      -64.268303,
      -28.393264,
      -64.268303
    ]);
    poly[570] = _TzPolygon([
      -26.352551,
      -66.537674,
      -26.364106,
      -66.461085,
      -26.416701,
      -66.382141,
      -26.149217,
      -66.230607,
      -26.133847,
      -66.170712,
      -26.216600,
      -66.099200,
      -26.377030,
      -66.118984,
      -26.401326,
      -66.158466,
      -26.471495,
      -66.177693,
      -26.628931,
      -66.172285,
      -26.600379,
      -66.042152,
      -26.744211,
      -65.830078,
      -26.863778,
      -65.900524,
      -26.901214,
      -65.857630,
      -26.929072,
      -65.857759,
      -27.046989,
      -65.958290,
      -27.046989,
      -66.537674
    ]);
    poly[571] = _TzPolygon([
      -25.700714,
      -65.402989,
      -26.091851,
      -65.402989,
      -26.109000,
      -65.424400,
      -26.087500,
      -65.548100,
      -26.123500,
      -65.613600,
      -26.117300,
      -65.688500,
      -26.352800,
      -65.719400,
      -26.238700,
      -66.071400,
      -26.142263,
      -66.158509,
      -26.130860,
      -66.196383,
      -26.229432,
      -66.292427,
      -26.416701,
      -66.382141,
      -26.364106,
      -66.461085,
      -26.352551,
      -66.537674,
      -25.700714,
      -66.537674
    ]);
    poly[572] = _TzPolygon([
      -27.046989,
      -64.776507,
      -26.966038,
      -64.753224,
      -26.973659,
      -64.710900,
      -26.800420,
      -64.672192,
      -26.809138,
      -64.622092,
      -26.660523,
      -64.590135,
      -26.676681,
      -64.504552,
      -26.409361,
      -64.534125,
      -26.307450,
      -64.481687,
      -26.239168,
      -64.502526,
      -26.113450,
      -64.412142,
      -26.031169,
      -64.403658,
      -25.700714,
      -64.268303,
      -27.046989,
      -64.268303
    ]);
    poly[573] = _TzPolygon([
      -25.700714,
      -64.268303,
      -26.031169,
      -64.403658,
      -26.113450,
      -64.412142,
      -26.219265,
      -64.495279,
      -26.224100,
      -64.622300,
      -26.244200,
      -64.662100,
      -26.223700,
      -64.790400,
      -26.306800,
      -64.951200,
      -26.276900,
      -64.973700,
      -26.287542,
      -65.040056,
      -26.229700,
      -65.040200,
      -26.170876,
      -65.275608,
      -26.081700,
      -65.297900,
      -26.058300,
      -65.361100,
      -26.091851,
      -65.402989,
      -25.700714,
      -65.402989
    ]);
    poly[574] = _TzPolygon([
      -25.726228,
      -64.150670,
      -25.700714,
      -64.268303,
      -25.700714,
      -64.150670
    ]);
    poly[575] = _TzPolygon([
      -25.372480,
      -66.537674,
      -25.436570,
      -66.519277,
      -25.539160,
      -66.537674
    ]);
    poly[576] = _TzPolygon([
      -19.430473,
      -74.790449,
      -19.430473,
      -72.976999,
      -19.973439,
      -73.753272,
      -20.198447,
      -73.730717,
      -19.656660,
      -74.263954,
      -19.558613,
      -74.466513,
      -19.432884,
      -74.790449
    ]);
    poly[577] = _TzPolygon([
      -24.077061,
      -66.810615,
      -24.064601,
      -66.830268,
      -23.972529,
      -66.882126,
      -23.967109,
      -66.949692,
      -23.886303,
      -66.996817,
      -23.734043,
      -67.168374,
      -23.734043,
      -66.810615
    ]);
    poly[578] = _TzPolygon([
      -23.734043,
      -69.470560,
      -23.734043,
      -67.225926,
      -24.034400,
      -67.322308,
      -24.402228,
      -68.259580,
      -24.491762,
      -68.308504,
      -24.484188,
      -68.387240,
      -24.606416,
      -68.434809,
      -24.623236,
      -68.468454,
      -24.599304,
      -68.493270,
      -24.617438,
      -68.503098,
      -24.663959,
      -68.491838,
      -24.724546,
      -68.544280,
      -24.797393,
      -68.567891,
      -24.873808,
      -68.519556,
      -24.905808,
      -68.431730,
      -25.028830,
      -68.406908,
      -25.034205,
      -68.376830,
      -25.110627,
      -68.343297,
      -25.145304,
      -68.409274,
      -25.125956,
      -68.459405,
      -25.168567,
      -68.507223,
      -25.168567,
      -69.470560
    ]);
    poly[579] = _TzPolygon([
      -23.734043,
      -66.810615,
      -23.734043,
      -67.168374,
      -23.694512,
      -67.212916,
      -23.000436,
      -66.990519,
      -22.813803,
      -67.180656,
      -22.722333,
      -67.128376,
      -22.655016,
      -67.013697,
      -22.540892,
      -67.028274,
      -22.540943,
      -66.973014,
      -22.492479,
      -66.927949,
      -22.448361,
      -66.810615
    ]);
    poly[580] = _TzPolygon([
      -23.734043,
      -67.225639,
      -23.694512,
      -67.212916,
      -23.734043,
      -67.168374
    ]);
    poly[581] = _TzPolygon([
      -22.299520,
      -67.938783,
      -22.381526,
      -67.942563,
      -22.440794,
      -67.884638,
      -22.508057,
      -67.887483,
      -22.536328,
      -67.839975,
      -22.557295,
      -67.853085,
      -22.580914,
      -67.833538,
      -22.628357,
      -67.883389,
      -22.666053,
      -67.888670,
      -22.680214,
      -67.867612,
      -22.719023,
      -67.890315,
      -22.743450,
      -67.867301,
      -22.832767,
      -67.883268,
      -22.845747,
      -67.825129,
      -22.880826,
      -67.798672,
      -22.898274,
      -67.567386,
      -22.813803,
      -67.180656,
      -23.000436,
      -66.990519,
      -23.734043,
      -67.225926,
      -23.734043,
      -69.470560,
      -22.299520,
      -69.470560
    ]);
    poly[582] = _TzPolygon([
      -24.077061,
      -66.810615,
      -24.092795,
      -66.785796,
      -24.092230,
      -66.740709,
      -24.173147,
      -66.647443,
      -24.213219,
      -66.483154,
      -24.182940,
      -66.477624,
      -24.161790,
      -66.420628,
      -24.118392,
      -66.417934,
      -24.116644,
      -66.377731,
      -23.984214,
      -66.339483,
      -23.971236,
      -66.367570,
      -23.734043,
      -66.370107,
      -23.734043,
      -66.002629,
      -23.921816,
      -66.015472,
      -23.981704,
      -65.991011,
      -23.969984,
      -65.938585,
      -24.007483,
      -65.946186,
      -24.003366,
      -65.867307,
      -24.060610,
      -65.747039,
      -24.186886,
      -65.725493,
      -24.251856,
      -65.671120,
      -24.306585,
      -65.682524,
      -24.376821,
      -65.656936,
      -24.380918,
      -65.622646,
      -24.448646,
      -65.543330,
      -24.456639,
      -65.506560,
      -24.427423,
      -65.486854,
      -24.431500,
      -65.480642,
      -25.168567,
      -65.480642,
      -25.168567,
      -66.810615
    ]);
    poly[583] = _TzPolygon([
      -24.431500,
      -65.480642,
      -24.461721,
      -65.434596,
      -24.462419,
      -65.357790,
      -24.497258,
      -65.346508,
      -24.485594,
      -65.227311,
      -24.467885,
      -65.228113,
      -24.459077,
      -65.193704,
      -24.562181,
      -65.079231,
      -24.599575,
      -64.927400,
      -24.581862,
      -64.887918,
      -24.520592,
      -64.885280,
      -24.466996,
      -64.842861,
      -24.529602,
      -64.725892,
      -24.607830,
      -64.664922,
      -24.604255,
      -64.573233,
      -24.507952,
      -64.536756,
      -24.506592,
      -64.500085,
      -24.400752,
      -64.421167,
      -24.427212,
      -64.318140,
      -24.407536,
      -64.285151,
      -24.221540,
      -64.162156,
      -23.734043,
      -64.158059,
      -23.734043,
      -64.150670,
      -25.168567,
      -64.150670,
      -25.168567,
      -65.480642
    ]);
    poly[584] = _TzPolygon([
      -23.734043,
      -66.370107,
      -23.694365,
      -66.370531,
      -23.660197,
      -66.333359,
      -23.573691,
      -66.316807,
      -23.556752,
      -66.260991,
      -23.414402,
      -66.177146,
      -23.509763,
      -65.987288,
      -23.734043,
      -66.002629
    ]);
    poly[585] = _TzPolygon([
      -22.299520,
      -66.752239,
      -22.437778,
      -66.782470,
      -22.448361,
      -66.810615,
      -22.299520,
      -66.810615
    ]);
    poly[586] = _TzPolygon([
      -23.734043,
      -64.158059,
      -23.518844,
      -64.156251,
      -23.518502,
      -64.358095,
      -23.569915,
      -64.396397,
      -23.606765,
      -64.391345,
      -23.641135,
      -64.444824,
      -23.520329,
      -64.533374,
      -23.484739,
      -64.654206,
      -23.452306,
      -64.682720,
      -23.495359,
      -64.788775,
      -23.483960,
      -64.863831,
      -23.446114,
      -64.868534,
      -23.423052,
      -64.906843,
      -23.334341,
      -64.899479,
      -23.269653,
      -64.946806,
      -23.278869,
      -65.021934,
      -23.227181,
      -65.038384,
      -23.232009,
      -65.077141,
      -23.162159,
      -65.045770,
      -23.138159,
      -65.070652,
      -23.041337,
      -65.068223,
      -23.016782,
      -65.102674,
      -23.016782,
      -64.150670,
      -23.734043,
      -64.150670
    ]);
    poly[587] = _TzPolygon([
      -22.299520,
      -65.233489,
      -22.319964,
      -65.226495,
      -22.338963,
      -65.263209,
      -22.540006,
      -65.350277,
      -22.602184,
      -65.350649,
      -22.649567,
      -65.271318,
      -22.723370,
      -65.304734,
      -22.789876,
      -65.274307,
      -22.895065,
      -65.273441,
      -23.016782,
      -65.102674,
      -23.016782,
      -65.480642,
      -22.299520,
      -65.480642
    ]);
    poly[588] = _TzPolygon([
      -22.444452,
      -64.150670,
      -22.453911,
      -64.152920,
      -22.560393,
      -64.243321,
      -22.848522,
      -64.283604,
      -22.883319,
      -64.337563,
      -22.749618,
      -64.339603,
      -22.723634,
      -64.362432,
      -22.719351,
      -64.404070,
      -22.689530,
      -64.393685,
      -22.638778,
      -64.441803,
      -22.634205,
      -64.423330,
      -22.580247,
      -64.432201,
      -22.541250,
      -64.411857,
      -22.480188,
      -64.483290,
      -22.436528,
      -64.491473,
      -22.446284,
      -64.521276,
      -22.412671,
      -64.513125,
      -22.379515,
      -64.563966,
      -22.323793,
      -64.564044,
      -22.299520,
      -64.542897,
      -22.299520,
      -64.150670
    ]);
    poly[589] = _TzPolygon([
      -19.430473,
      -68.417472,
      -19.605476,
      -68.572539,
      -19.701042,
      -68.622898,
      -19.738608,
      -68.695972,
      -19.784349,
      -68.625138,
      -19.828161,
      -68.599252,
      -19.845412,
      -68.528356,
      -19.889553,
      -68.542671,
      -19.924297,
      -68.521515,
      -20.050071,
      -68.566444,
      -20.078454,
      -68.762269,
      -20.129665,
      -68.773703,
      -20.134778,
      -68.704422,
      -20.178006,
      -68.690748,
      -20.193747,
      -68.712570,
      -20.246582,
      -68.711883,
      -20.319119,
      -68.660608,
      -20.357690,
      -68.676166,
      -20.368370,
      -68.741533,
      -20.456822,
      -68.738743,
      -20.572261,
      -68.580885,
      -20.569618,
      -68.534772,
      -20.604798,
      -68.515007,
      -20.635425,
      -68.441541,
      -20.728351,
      -68.553277,
      -20.907739,
      -68.541641,
      -20.945975,
      -68.493032,
      -20.934386,
      -68.412277,
      -21.302424,
      -68.179023,
      -21.604440,
      -68.180480,
      -21.779405,
      -68.059776,
      -21.978756,
      -68.071379,
      -22.053709,
      -67.964668,
      -22.107803,
      -67.939179,
      -22.176829,
      -67.955562,
      -22.272537,
      -67.915549,
      -22.273550,
      -67.937586,
      -22.299520,
      -67.938783,
      -22.299520,
      -69.470560,
      -19.430473,
      -69.470560
    ]);
    poly[590] = _TzPolygon([
      -22.299520,
      -66.752239,
      -22.238931,
      -66.738991,
      -22.209470,
      -66.685838,
      -22.226261,
      -66.638020,
      -22.197673,
      -66.623098,
      -22.128252,
      -66.347745,
      -22.088384,
      -66.325189,
      -22.087361,
      -66.288770,
      -21.944643,
      -66.274767,
      -21.852784,
      -66.235983,
      -21.793512,
      -66.242730,
      -21.781168,
      -66.219601,
      -21.834929,
      -66.075885,
      -21.871931,
      -66.043355,
      -21.918857,
      -66.047693,
      -21.933078,
      -65.924809,
      -22.075601,
      -65.804134,
      -22.109120,
      -65.747639,
      -22.098643,
      -65.589204,
      -22.076192,
      -65.574395,
      -22.095662,
      -65.483397,
      -22.084788,
      -65.187155,
      -22.279416,
      -65.240366,
      -22.299520,
      -65.233489
    ]);
    poly[591] = _TzPolygon([
      -22.299520,
      -65.233489,
      -22.279416,
      -65.240366,
      -22.149602,
      -65.214669,
      -22.146733,
      -65.193007,
      -22.084788,
      -65.187155,
      -22.082389,
      -64.993217,
      -22.121060,
      -64.923784,
      -22.121810,
      -64.861674,
      -22.193896,
      -64.736477,
      -22.205437,
      -64.616719,
      -22.291366,
      -64.535793,
      -22.299520,
      -64.542897
    ]);
    poly[592] = _TzPolygon([
      -17.372583,
      -69.470560,
      -17.291425,
      -69.576246,
      -17.281588,
      -69.645007,
      -17.159275,
      -69.556902,
      -17.118663,
      -69.470560
    ]);
    poly[593] = _TzPolygon([
      -19.430473,
      -70.457793,
      -19.338000,
      -70.494553,
      -19.170000,
      -70.490174,
      -18.805000,
      -70.571088,
      -18.475301,
      -70.544414,
      -18.350117,
      -70.590836,
      -18.350117,
      -70.376316,
      -18.308981,
      -70.301978,
      -18.319383,
      -70.149435,
      -18.269245,
      -70.050462,
      -18.262180,
      -69.965901,
      -18.116881,
      -69.816359,
      -17.989266,
      -69.754684,
      -17.947296,
      -69.750212,
      -17.865486,
      -69.799199,
      -17.762180,
      -69.800853,
      -17.743975,
      -69.822199,
      -17.646393,
      -69.796210,
      -17.660275,
      -69.666536,
      -17.500098,
      -69.470560,
      -19.430473,
      -69.470560
    ]);
    poly[594] = _TzPolygon([
      -16.561425,
      -69.470560,
      -16.561425,
      -69.036328,
      -16.572260,
      -69.040135,
      -16.656576,
      -68.996102,
      -16.727535,
      -69.170014,
      -16.797555,
      -69.186187,
      -16.915841,
      -69.304675,
      -16.980265,
      -69.335429,
      -17.020568,
      -69.393578,
      -17.073123,
      -69.373739,
      -17.118663,
      -69.470560
    ]);
    poly[595] = _TzPolygon([
      -17.372583,
      -69.470560,
      -17.374129,
      -69.468546,
      -17.498400,
      -69.468482,
      -17.500098,
      -69.470560
    ]);
    poly[596] = _TzPolygon([
      -17.500098,
      -69.470560,
      -17.498400,
      -69.468482,
      -17.604902,
      -69.467882,
      -17.729089,
      -69.338005,
      -17.967576,
      -69.283499,
      -17.954071,
      -69.255892,
      -17.988994,
      -69.231087,
      -18.005083,
      -69.121173,
      -18.061221,
      -69.056633,
      -18.163056,
      -69.145836,
      -18.233729,
      -69.063270,
      -18.292339,
      -69.075078,
      -18.323380,
      -69.037871,
      -18.426443,
      -69.047454,
      -18.483649,
      -69.001469,
      -18.600809,
      -69.006764,
      -18.600259,
      -69.025493,
      -18.629068,
      -69.032739,
      -18.667313,
      -68.991002,
      -18.890331,
      -68.911704,
      -18.936518,
      -68.950333,
      -19.060144,
      -68.870850,
      -19.083672,
      -68.805928,
      -19.276484,
      -68.619797,
      -19.296801,
      -68.542572,
      -19.416186,
      -68.404813,
      -19.430473,
      -68.417472,
      -19.430473,
      -69.470560
    ]);
    poly[597] = _TzPolygon([
      -15.126902,
      -69.470560,
      -15.126902,
      -69.226735,
      -15.158776,
      -69.190451,
      -15.259031,
      -69.119623,
      -15.261360,
      -69.176296,
      -15.315039,
      -69.194793,
      -15.374036,
      -69.260329,
      -15.460393,
      -69.240827,
      -15.436880,
      -69.290072,
      -15.518037,
      -69.314461,
      -15.606007,
      -69.401826,
      -16.168108,
      -69.196402,
      -16.225659,
      -69.098314,
      -16.197362,
      -69.055259,
      -16.219953,
      -69.011519,
      -16.194424,
      -68.961323,
      -16.331411,
      -68.795489,
      -16.349205,
      -68.800674,
      -16.425356,
      -68.988514,
      -16.561425,
      -69.036328,
      -16.561425,
      -69.470560
    ]);
    poly[598] = _TzPolygon([
      -13.692378,
      -69.055115,
      -13.739293,
      -69.025947,
      -13.760588,
      -68.974455,
      -13.787004,
      -68.994823,
      -13.814172,
      -68.917236,
      -13.878670,
      -68.950965,
      -13.894712,
      -68.982528,
      -13.948670,
      -68.963301,
      -13.976530,
      -68.978893,
      -14.046605,
      -68.890320,
      -14.111057,
      -68.871129,
      -14.144873,
      -68.833289,
      -14.162668,
      -68.856180,
      -14.215607,
      -68.826756,
      -14.220055,
      -68.962406,
      -14.237115,
      -68.985006,
      -14.265625,
      -68.979249,
      -14.314709,
      -69.015243,
      -14.374663,
      -68.985407,
      -14.521618,
      -69.154032,
      -14.580314,
      -69.150030,
      -14.581788,
      -69.221352,
      -14.654161,
      -69.227901,
      -14.683977,
      -69.258373,
      -14.739025,
      -69.224871,
      -14.759474,
      -69.239940,
      -14.765299,
      -69.301204,
      -14.801666,
      -69.353797,
      -14.961061,
      -69.360574,
      -15.109902,
      -69.277285,
      -15.112206,
      -69.243463,
      -15.126902,
      -69.226735,
      -15.126902,
      -69.470560,
      -13.692378,
      -69.470560
    ]);
    poly[599] = _TzPolygon([
      -27.275954,
      -58.171500,
      -27.258423,
      -58.265314,
      -27.299843,
      -58.599045,
      -27.224191,
      -58.594278,
      -27.183188,
      -58.662932,
      -27.120433,
      -58.641416,
      -27.109543,
      -58.555318,
      -27.037184,
      -58.558339,
      -27.053219,
      -58.500788,
      -27.003907,
      -58.519555,
      -26.992541,
      -58.468062,
      -26.924073,
      -58.502427,
      -26.930316,
      -58.463422,
      -26.893179,
      -58.386097,
      -26.865161,
      -58.372597,
      -26.865100,
      -58.322831,
      -26.809223,
      -58.333850,
      -26.796475,
      -58.284550,
      -26.755903,
      -58.290727,
      -26.750848,
      -58.246533,
      -26.646407,
      -58.261373,
      -26.650242,
      -58.192021,
      -26.620781,
      -58.209703,
      -26.563218,
      -58.198888,
      -26.537573,
      -58.223435,
      -26.499634,
      -58.206784,
      -26.472285,
      -58.233907,
      -26.456538,
      -58.180865,
      -26.402963,
      -58.222406,
      -26.358070,
      -58.171500
    ]);
  }
}

class _Initializer7 {
  static void _init() {
    poly[600] = _TzPolygon([
      -22.822858,
      -64.150670,
      -22.822858,
      -62.339850,
      -24.392029,
      -62.342550,
      -25.709830,
      -63.476092,
      -25.673305,
      -64.007785,
      -25.753393,
      -64.025421,
      -25.726228,
      -64.150670
    ]);
    poly[601] = _TzPolygon([
      -23.283992,
      -61.609799,
      -23.285982,
      -61.670247,
      -23.259524,
      -61.682731,
      -23.241704,
      -61.731940,
      -23.158105,
      -61.765560,
      -23.156684,
      -61.804137,
      -23.090000,
      -61.855278,
      -23.070921,
      -61.927299,
      -23.025124,
      -61.955613,
      -23.024627,
      -61.979655,
      -22.995122,
      -62.006408,
      -22.930366,
      -61.998486,
      -22.922438,
      -62.031331,
      -22.888649,
      -62.019873,
      -22.837876,
      -62.058679,
      -22.850539,
      -62.071361,
      -22.822858,
      -62.080078,
      -22.822858,
      -61.609799
    ]);
    poly[602] = _TzPolygon([
      -24.634697,
      -59.068928,
      -24.617010,
      -59.130078,
      -24.519732,
      -59.257440,
      -24.483067,
      -59.350429,
      -24.422807,
      -59.373140,
      -24.408775,
      -59.421626,
      -24.335533,
      -59.471118,
      -24.011556,
      -60.039414,
      -24.044308,
      -60.183953,
      -24.037979,
      -60.308834,
      -24.024001,
      -60.373532,
      -23.994124,
      -60.388548,
      -23.950938,
      -60.477805,
      -23.967793,
      -60.513667,
      -23.958512,
      -60.589396,
      -23.916188,
      -60.588872,
      -23.901629,
      -60.613986,
      -23.902871,
      -60.692979,
      -23.872222,
      -60.732222,
      -23.873889,
      -60.849167,
      -23.823056,
      -60.921389,
      -23.818080,
      -60.989898,
      -23.655600,
      -61.099693,
      -23.613928,
      -61.088235,
      -23.554722,
      -61.182500,
      -23.555278,
      -61.224722,
      -23.487455,
      -61.282880,
      -23.498656,
      -61.294727,
      -23.447948,
      -61.351702,
      -23.460453,
      -61.387071,
      -23.420126,
      -61.445123,
      -23.423756,
      -61.486890,
      -23.380556,
      -61.520278,
      -23.349881,
      -61.509387,
      -23.340833,
      -61.560278,
      -23.283635,
      -61.598948,
      -23.283992,
      -61.609799,
      -22.822858,
      -61.609799,
      -22.822858,
      -59.068928
    ]);
    poly[603] = _TzPolygon([
      -21.055253,
      -62.880235,
      -21.999945,
      -62.880235,
      -21.999362,
      -63.665262,
      -22.054048,
      -63.681019,
      -22.000000,
      -63.709034,
      -22.000000,
      -63.931395,
      -22.085959,
      -63.957993,
      -22.080671,
      -63.978457,
      -22.107794,
      -64.000351,
      -22.242970,
      -64.033402,
      -22.238189,
      -64.062247,
      -22.257858,
      -64.073288,
      -22.404860,
      -64.117498,
      -22.406972,
      -64.141755,
      -22.444452,
      -64.150670,
      -21.055253,
      -64.150670
    ]);
    poly[604] = _TzPolygon([
      -22.822858,
      -62.342080,
      -22.477492,
      -62.341976,
      -22.471414,
      -62.327056,
      -22.487823,
      -62.309576,
      -22.473193,
      -62.289784,
      -22.519123,
      -62.296320,
      -22.539006,
      -62.245017,
      -22.578156,
      -62.245017,
      -22.604080,
      -62.260934,
      -22.610522,
      -62.245017,
      -22.822858,
      -62.245017
    ]);
    poly[605] = _TzPolygon([
      -22.610522,
      -62.245017,
      -22.604080,
      -62.260934,
      -22.578156,
      -62.245017
    ]);
    poly[606] = _TzPolygon([
      -22.539006,
      -62.245017,
      -22.519123,
      -62.296320,
      -22.472757,
      -62.290565,
      -22.486861,
      -62.316745,
      -22.457852,
      -62.361714,
      -22.482385,
      -62.377845,
      -22.421146,
      -62.421270,
      -22.418333,
      -62.453522,
      -22.375473,
      -62.471972,
      -22.374468,
      -62.542928,
      -22.315121,
      -62.567664,
      -22.305578,
      -62.628385,
      -22.259003,
      -62.621333,
      -22.249285,
      -62.644204,
      -21.939056,
      -62.544338,
      -21.939056,
      -62.245017
    ]);
    poly[607] = _TzPolygon([
      -21.939056,
      -62.880235,
      -21.939056,
      -62.549774,
      -22.255576,
      -62.653620,
      -22.190992,
      -62.690657,
      -22.211473,
      -62.717276,
      -22.154671,
      -62.757694,
      -22.175177,
      -62.778095,
      -22.156169,
      -62.795285,
      -22.111813,
      -62.813562,
      -22.000000,
      -62.806171,
      -21.999945,
      -62.880235
    ]);
    poly[608] = _TzPolygon([
      -22.539006,
      -62.245017,
      -22.546531,
      -62.225599,
      -22.578156,
      -62.245017
    ]);
    poly[609] = _TzPolygon([
      -22.610522,
      -62.245017,
      -22.614610,
      -62.234916,
      -22.647081,
      -62.237122,
      -22.661385,
      -62.197413,
      -22.704176,
      -62.206711,
      -22.711304,
      -62.172490,
      -22.761224,
      -62.157012,
      -22.759870,
      -62.130424,
      -22.791447,
      -62.134790,
      -22.822858,
      -62.104343,
      -22.822858,
      -62.245017
    ]);
    poly[610] = _TzPolygon([
      -22.822858,
      -62.102779,
      -22.811879,
      -62.083536,
      -22.822858,
      -62.080078
    ]);
    poly[611] = _TzPolygon([
      -21.055253,
      -62.260956,
      -21.058628,
      -62.260919,
      -21.939056,
      -62.549774,
      -21.939056,
      -62.880235,
      -21.055253,
      -62.880235
    ]);
    poly[612] = _TzPolygon([
      -21.055253,
      -62.260956,
      -20.563156,
      -62.266342,
      -20.089211,
      -61.922536,
      -19.634406,
      -61.735211,
      -19.614692,
      -61.609799,
      -21.055253,
      -61.609799
    ]);
    poly[613] = _TzPolygon([
      -19.287647,
      -59.068928,
      -19.294686,
      -59.977778,
      -19.456639,
      -60.604325,
      -19.614692,
      -61.609799,
      -19.287647,
      -61.609799
    ]);
    poly[614] = _TzPolygon([
      -24.634697,
      -59.068928,
      -24.634697,
      -58.171500,
      -24.971517,
      -58.171500,
      -24.967885,
      -58.193873,
      -24.926937,
      -58.225028,
      -24.998939,
      -58.336562,
      -24.859956,
      -58.475772,
      -24.821145,
      -58.573077,
      -24.831925,
      -58.672428,
      -24.774619,
      -58.726066,
      -24.772553,
      -58.807349,
      -24.663181,
      -58.970453
    ]);
    poly[615] = _TzPolygon([
      -20.015895,
      -58.171500,
      -19.969757,
      -58.186395,
      -19.953383,
      -58.214042,
      -19.862692,
      -58.202032,
      -19.834362,
      -58.171500
    ]);
    poly[616] = _TzPolygon([
      -19.822709,
      -58.171500,
      -19.287647,
      -59.068928,
      -19.287647,
      -58.171500
    ]);
    poly[617] = _TzPolygon([
      -16.490012,
      -58.333013,
      -16.490012,
      -58.171500,
      -17.388221,
      -58.171500,
      -17.391000,
      -58.185000,
      -17.357000,
      -58.202000,
      -17.352000,
      -58.254000,
      -17.300000,
      -58.276000,
      -17.298000,
      -58.298000,
      -17.270000,
      -58.303000,
      -17.181000,
      -58.396000,
      -17.111000,
      -58.386000,
      -17.112000,
      -58.425000,
      -17.086000,
      -58.434000,
      -16.989000,
      -58.423000,
      -16.935000,
      -58.474000,
      -16.703000,
      -58.470000,
      -16.592000,
      -58.436000
    ]);
    poly[618] = _TzPolygon([
      -16.490012,
      -58.333013,
      -16.428000,
      -58.356000,
      -16.389000,
      -58.344000,
      -16.371723,
      -58.307860,
      -16.265589,
      -58.322265,
      -16.261849,
      -58.389374,
      -16.296911,
      -58.394969,
      -16.322642,
      -58.430595,
      -16.266729,
      -60.173820,
      -15.474916,
      -60.239205,
      -15.097731,
      -60.575185,
      -15.097430,
      -60.245003,
      -14.620958,
      -60.273591,
      -14.610391,
      -60.322870,
      -14.510836,
      -60.339543,
      -14.413522,
      -60.407937,
      -14.364526,
      -60.395794,
      -14.314043,
      -60.453983,
      -14.265170,
      -60.467183,
      -14.239832,
      -60.450148,
      -14.191783,
      -60.472829,
      -14.189024,
      -60.493331,
      -14.095456,
      -60.480378,
      -14.078328,
      -60.440767,
      -13.987325,
      -60.381705,
      -13.968806,
      -60.423993,
      -13.937610,
      -60.418394,
      -13.936950,
      -60.450972,
      -13.883367,
      -60.450938,
      -13.885982,
      -60.476060,
      -13.854459,
      -60.456275,
      -13.855991,
      -60.492913,
      -13.794120,
      -60.468127,
      -13.793774,
      -60.526921,
      -13.771066,
      -60.519104,
      -13.782221,
      -60.549243,
      -13.717455,
      -60.619710,
      -13.736553,
      -60.656088,
      -13.692378,
      -60.703664,
      -13.692378,
      -58.171500,
      -16.490012,
      -58.171500
    ]);
    poly[619] = _TzPolygon([
      -1.366227,
      -61.909707,
      -1.366227,
      -61.594025,
      -1.402377,
      -61.615412,
      -1.433000,
      -61.538000,
      -1.504762,
      -61.507665,
      -1.527000,
      -61.473000,
      -1.593865,
      -61.473624,
      -1.448000,
      -61.604000,
      -1.379000,
      -61.790000,
      -1.403115,
      -61.831168,
      -1.395000,
      -61.896000
    ]);
    poly[620] = _TzPolygon([
      -1.366227,
      -61.909707,
      -1.141000,
      -62.017000,
      -1.099000,
      -62.062000,
      -1.093264,
      -62.103405,
      -1.048956,
      -62.122674,
      -0.983000,
      -62.203000,
      -0.976000,
      -62.259000,
      -0.948000,
      -62.293000,
      -0.861650,
      -62.380483,
      -0.836000,
      -62.376000,
      -0.813599,
      -62.399561,
      -0.778678,
      -62.504653,
      -0.710415,
      -62.509547,
      -0.677902,
      -62.488306,
      -0.689511,
      -62.426989,
      -0.722672,
      -62.403551,
      -0.703115,
      -62.357128,
      -0.667218,
      -62.369081,
      -0.647664,
      -62.292633,
      -0.599381,
      -62.289916,
      -0.545005,
      -62.318344,
      -0.531214,
      -62.300139,
      -0.511357,
      -62.308548,
      -0.393000,
      -62.202000,
      -0.369216,
      -62.196715,
      -0.369216,
      -61.358472,
      -0.606717,
      -61.358472,
      -0.634050,
      -61.433980,
      -0.652760,
      -61.430204,
      -0.660141,
      -61.465738,
      -0.719189,
      -61.486852,
      -0.761929,
      -61.538865,
      -0.848781,
      -61.538350,
      -0.936661,
      -61.582296,
      -0.985062,
      -61.577661,
      -0.992958,
      -61.542127,
      -1.012696,
      -61.560151,
      -1.068648,
      -61.544530,
      -1.084438,
      -61.579034,
      -1.182609,
      -61.570794,
      -1.298723,
      -61.629695,
      -1.346681,
      -61.582462,
      -1.366227,
      -61.594025
    ]);
    poly[621] = _TzPolygon([
      0.627796,
      -62.524958,
      0.584000,
      -62.518000,
      0.509000,
      -62.532000,
      0.444000,
      -62.518000,
      0.454000,
      -62.485000,
      0.379000,
      -62.446000,
      0.276000,
      -62.468000,
      0.174000,
      -62.428000,
      0.092000,
      -62.424000,
      0.031466,
      -62.342454,
      -0.102000,
      -62.319000,
      -0.181000,
      -62.241000,
      -0.302000,
      -62.248000,
      -0.330000,
      -62.188000,
      -0.369216,
      -62.196715,
      -0.369216,
      -62.673840,
      0.627796,
      -62.673840
    ]);
    poly[622] = _TzPolygon([
      -7.348293,
      -58.134040,
      -7.315468,
      -58.171994,
      -7.213957,
      -58.173580,
      -7.130226,
      -58.210419,
      -7.075617,
      -58.279850,
      -6.976311,
      -58.350852,
      -6.934052,
      -58.415396,
      -6.765320,
      -58.480628,
      -6.699516,
      -58.474791,
      -6.606761,
      -58.424666,
      -6.466749,
      -58.260191,
      -3.360249,
      -56.820941,
      -3.360249,
      -56.097000,
      -7.348293,
      -56.097000
    ]);
    poly[623] = _TzPolygon([
      -0.369216,
      -61.358472,
      -0.369216,
      -60.332285,
      -0.405687,
      -60.351627,
      -0.437621,
      -60.346076,
      -0.459581,
      -60.382616,
      -0.514811,
      -60.405361,
      -0.569483,
      -60.376522,
      -0.576563,
      -60.389225,
      -0.632871,
      -60.314599,
      -0.717102,
      -60.309574,
      -0.743536,
      -60.363690,
      -0.731435,
      -60.374161,
      -0.771600,
      -60.425960,
      -0.761387,
      -60.474326,
      -0.825711,
      -60.518743,
      -0.840773,
      -60.502264,
      -0.869523,
      -60.535780,
      -0.842746,
      -60.586463,
      -0.866176,
      -60.596248,
      -0.851157,
      -60.619165,
      -0.887760,
      -60.668947,
      -0.865489,
      -60.683795,
      -0.866691,
      -60.734994,
      -0.853131,
      -60.727698,
      -0.863644,
      -60.760700,
      -0.792455,
      -60.756065,
      -0.782027,
      -60.787694,
      -0.754564,
      -60.771944,
      -0.740189,
      -60.806448,
      -0.694187,
      -60.807649,
      -0.685347,
      -60.856573,
      -0.644838,
      -60.861637,
      -0.618060,
      -60.920173,
      -0.547683,
      -60.933820,
      -0.561758,
      -60.982486,
      -0.545966,
      -61.048404,
      -0.499000,
      -61.096000,
      -0.498847,
      -61.160327,
      -0.516272,
      -61.167645,
      -0.499560,
      -61.220948,
      -0.560817,
      -61.231674,
      -0.606717,
      -61.358472
    ]);
    poly[624] = _TzPolygon([
      -0.369216,
      -60.332285,
      -0.294744,
      -60.292790,
      -0.210339,
      -60.303390,
      -0.209996,
      -60.280559,
      -0.141452,
      -60.220349,
      -0.113471,
      -60.239746,
      -0.039537,
      -60.212924,
      0.027637,
      -60.132491,
      0.082084,
      -60.116841,
      0.104379,
      -60.133974,
      0.163000,
      -60.059000,
      0.235977,
      -60.043104,
      -0.369216,
      -60.043104
    ]);
    poly[625] = _TzPolygon([
      0.627796,
      -60.043104,
      0.627796,
      -58.895329,
      0.263472,
      -58.895360,
      0.264000,
      -60.037000,
      0.235977,
      -60.043104
    ]);
    poly[626] = _TzPolygon(
        [-0.638058, -58.727736, -0.617468, -58.737889, -0.592110, -58.727736]);
    poly[627] = _TzPolygon(
        [-0.495544, -58.727736, -0.470858, -58.737045, -0.445679, -58.727736]);
    poly[628] = _TzPolygon([
      -0.436739,
      -58.727736,
      -0.343000,
      -58.872000,
      -0.196000,
      -58.881000,
      -0.078000,
      -58.863000,
      -0.017000,
      -58.897000,
      0.627796,
      -58.896108,
      0.627796,
      -58.727736
    ]);
    poly[629] = _TzPolygon([
      -1.679157,
      -57.412368,
      -1.691837,
      -57.435135,
      -1.665392,
      -57.440393,
      -1.679408,
      -57.472273,
      -1.642286,
      -57.505138,
      -1.656029,
      -57.526062,
      -1.629638,
      -57.521296,
      -1.600947,
      -57.594531,
      -1.572201,
      -57.602199,
      -1.595253,
      -57.677789,
      -1.576637,
      -57.703917,
      -1.503593,
      -57.712024,
      -1.510224,
      -57.779572,
      -1.485753,
      -57.772569,
      -1.486656,
      -57.795603,
      -1.438536,
      -57.822891,
      -1.403253,
      -57.958180,
      -1.381710,
      -57.953525,
      -1.366227,
      -57.967688,
      -1.366227,
      -57.412368
    ]);
    poly[630] = _TzPolygon([
      -1.679157,
      -57.412368,
      -1.675028,
      -57.404954,
      -1.724940,
      -57.391535,
      -1.715060,
      -57.370695,
      -1.737619,
      -57.352739,
      -1.716048,
      -57.328769,
      -1.733502,
      -57.304717,
      -1.708720,
      -57.289726,
      -1.722964,
      -57.263862,
      -1.697523,
      -57.256613,
      -1.727327,
      -57.232644,
      -1.711684,
      -57.203485,
      -1.736055,
      -57.200519,
      -1.719588,
      -57.165759,
      -1.769399,
      -57.163700,
      -1.765200,
      -57.129599,
      -1.793274,
      -57.113949,
      -1.779443,
      -57.086520,
      -1.811817,
      -57.060469,
      -1.855827,
      -57.067342,
      -1.917416,
      -57.029716,
      -1.919155,
      -56.975094,
      -2.025184,
      -56.843962,
      -2.016952,
      -56.748248,
      -2.070808,
      -56.727491,
      -2.162767,
      -56.764019,
      -2.212436,
      -56.684748,
      -2.210293,
      -56.609332,
      -2.174588,
      -56.599288,
      -2.177560,
      -56.573280,
      -2.139280,
      -56.526455,
      -2.170338,
      -56.480104,
      -2.153685,
      -56.448229,
      -2.180459,
      -56.396334,
      -2.143235,
      -56.381742,
      -2.145636,
      -56.323721,
      -2.102865,
      -56.300666,
      -2.056947,
      -56.227762,
      -2.026784,
      -56.121429,
      -2.037000,
      -56.097000,
      -2.195000,
      -56.220000,
      -2.270000,
      -56.384000,
      -2.423000,
      -56.465000,
      -2.456000,
      -56.402000,
      -3.360249,
      -56.820941,
      -3.360249,
      -57.412368
    ]);
    poly[631] = _TzPolygon(
        [-0.436739, -58.727736, -0.438471, -58.725071, -0.445679, -58.727736]);
    poly[632] = _TzPolygon(
        [-0.495544, -58.727736, -0.545273, -58.708983, -0.592110, -58.727736]);
    poly[633] = _TzPolygon([
      -0.638058,
      -58.727736,
      -0.678864,
      -58.707615,
      -0.719265,
      -58.634010,
      -0.830798,
      -58.533013,
      -0.832605,
      -58.490268,
      -0.860142,
      -58.489151,
      -0.875027,
      -58.439229,
      -0.924412,
      -58.451297,
      -0.981398,
      -58.410379,
      -1.028423,
      -58.427164,
      -1.070662,
      -58.364022,
      -1.145423,
      -58.321541,
      -1.131290,
      -58.255488,
      -1.232774,
      -58.154804,
      -1.187805,
      -58.117596,
      -1.163623,
      -58.123192,
      -1.161687,
      -58.092947,
      -1.105890,
      -58.057572,
      -1.103964,
      -58.017407,
      -1.139550,
      -58.009262,
      -1.168897,
      -57.966032,
      -1.222422,
      -57.958287,
      -1.332166,
      -57.998844,
      -1.366227,
      -57.967688,
      -1.366227,
      -58.727736
    ]);
    poly[634] = _TzPolygon([
      1.022021,
      -66.619944,
      0.744944,
      -66.310320,
      0.781614,
      -66.197375,
      0.747627,
      -66.145467,
      0.761742,
      -66.077833,
      0.812300,
      -66.070240,
      0.815110,
      -65.967121,
      0.890962,
      -65.940926,
      0.906682,
      -65.889908,
      0.941589,
      -65.883691,
      0.958591,
      -65.772612,
      1.001253,
      -65.742103,
      1.003858,
      -65.696614,
      0.986337,
      -65.685226,
      1.012854,
      -65.658303,
      0.988290,
      -65.628455,
      1.014253,
      -65.626907,
      1.004706,
      -65.588935,
      0.980814,
      -65.585695,
      0.991692,
      -65.557660,
      0.970345,
      -65.564435,
      0.968894,
      -65.543116,
      0.874150,
      -65.496240,
      0.835078,
      -65.504478,
      0.714009,
      -65.604905,
      0.647529,
      -65.545664,
      0.668961,
      -65.529746,
      0.689212,
      -65.444985,
      0.753059,
      -65.417190,
      0.756917,
      -65.392132,
      0.824145,
      -65.411977,
      0.864883,
      -65.355922,
      0.935960,
      -65.327341,
      0.931863,
      -65.304576,
      0.627796,
      -65.304576,
      0.627796,
      -66.619944
    ]);
    poly[635] = _TzPolygon([
      0.931863,
      -65.304576,
      0.912741,
      -65.198311,
      1.003139,
      -65.149040,
      1.015569,
      -65.175308,
      1.050778,
      -65.156590,
      1.121978,
      -65.160728,
      1.155616,
      -65.106491,
      1.152782,
      -65.071857,
      1.111193,
      -65.061985,
      1.109051,
      -65.013614,
      1.164238,
      -64.975114,
      1.202878,
      -64.974445,
      1.218630,
      -64.922581,
      1.251532,
      -64.904386,
      1.227132,
      -64.869656,
      1.272313,
      -64.856395,
      1.315271,
      -64.800533,
      1.263669,
      -64.786377,
      1.225695,
      -64.744461,
      1.284620,
      -64.694983,
      1.340406,
      -64.578896,
      1.377408,
      -64.578593,
      1.443222,
      -64.526079,
      1.470064,
      -64.435855,
      1.529006,
      -64.393901,
      1.529209,
      -64.351112,
      1.495083,
      -64.347774,
      1.403010,
      -64.410191,
      1.388532,
      -64.356572,
      1.361619,
      -64.337527,
      1.456166,
      -64.313597,
      1.502218,
      -64.260607,
      1.520713,
      -64.197073,
      1.573374,
      -64.172984,
      1.578509,
      -64.125929,
      1.624807,
      -64.091502,
      1.624807,
      -63.989208,
      0.627796,
      -63.989208,
      0.627796,
      -65.304576
    ]);
    poly[636] = _TzPolygon([
      2.621818,
      -64.005575,
      2.621818,
      -63.989208,
      2.474252,
      -63.989208,
      2.478498,
      -64.001457,
      2.461232,
      -64.017998,
      2.496452,
      -64.056427,
      2.572773,
      -64.044083
    ]);
    poly[637] = _TzPolygon([
      1.624807,
      -64.091502,
      1.649020,
      -64.073497,
      1.703084,
      -64.061182,
      1.756558,
      -64.079629,
      1.822586,
      -64.049933,
      1.852356,
      -64.069413,
      1.924849,
      -64.061159,
      1.982990,
      -63.991577,
      1.983235,
      -63.989208,
      1.624807,
      -63.989208
    ]);
    poly[638] = _TzPolygon(
        [2.621818, -64.005575, 2.642662, -63.989208, 2.621818, -63.989208]);
    poly[639] = _TzPolygon(
        [2.661162, -63.989208, 2.707019, -64.001671, 2.716763, -63.989208]);
    poly[640] = _TzPolygon([
      2.729521,
      -63.989208,
      2.737009,
      -64.000634,
      2.810795,
      -64.014519,
      2.872615,
      -64.077088,
      2.921416,
      -64.071556,
      2.990477,
      -64.123489,
      2.982431,
      -64.157540,
      3.034593,
      -64.145917,
      3.123560,
      -64.226417,
      3.201207,
      -64.197945,
      3.430363,
      -64.244400,
      3.506585,
      -64.178619,
      3.568408,
      -64.174370,
      3.670885,
      -64.269570,
      3.709279,
      -64.280998,
      3.783569,
      -64.416146,
      3.788714,
      -64.470924,
      3.857134,
      -64.543565,
      3.918042,
      -64.572939,
      3.980677,
      -64.648101,
      4.117745,
      -64.722389,
      4.174225,
      -64.802033,
      4.235124,
      -64.819365,
      4.270475,
      -64.811229,
      4.287000,
      -64.780000,
      4.253229,
      -64.695220,
      4.135000,
      -64.623000,
      4.105295,
      -64.556502,
      4.144000,
      -64.289000,
      4.116000,
      -64.218000,
      4.127000,
      -64.164000,
      4.092000,
      -64.112000,
      3.950000,
      -64.050000,
      3.933000,
      -64.001000,
      3.912284,
      -63.989208
    ]);
    poly[641] = _TzPolygon([
      1.460506,
      -62.673840,
      1.489000,
      -62.720000,
      1.530000,
      -62.736000,
      1.592000,
      -62.805000,
      1.624807,
      -62.797429,
      1.624807,
      -62.673840
    ]);
    poly[642] = _TzPolygon([
      2.181656,
      -63.331524,
      2.197000,
      -63.359000,
      2.226424,
      -63.387432,
      2.269454,
      -63.367336,
      2.350475,
      -63.384354,
      2.376965,
      -63.363266,
      2.410748,
      -63.370765,
      2.451019,
      -63.421234,
      2.396839,
      -63.460358,
      2.430556,
      -63.494709,
      2.418073,
      -63.557991,
      2.445727,
      -63.563976,
      2.439943,
      -63.768047,
      2.477101,
      -63.797341,
      2.491598,
      -63.843575,
      2.454598,
      -63.932503,
      2.474252,
      -63.989208,
      2.621818,
      -63.989208,
      2.621818,
      -63.331524
    ]);
    poly[643] = _TzPolygon([
      1.983235,
      -63.989208,
      1.993044,
      -63.894188,
      1.966443,
      -63.835555,
      1.995643,
      -63.821943,
      1.979750,
      -63.790947,
      2.000405,
      -63.741867,
      2.049404,
      -63.699535,
      2.018614,
      -63.665009,
      2.065108,
      -63.663867,
      2.073436,
      -63.635837,
      2.112221,
      -63.626795,
      2.140846,
      -63.546560,
      2.111508,
      -63.511129,
      2.141322,
      -63.473962,
      2.125998,
      -63.440594,
      2.150706,
      -63.400852,
      2.197183,
      -63.404118,
      2.212712,
      -63.378949,
      2.183992,
      -63.331524,
      1.624807,
      -63.331524,
      1.624807,
      -63.989208
    ]);
    poly[644] = _TzPolygon([
      2.183992,
      -63.331524,
      2.154000,
      -63.282000,
      2.182000,
      -63.194000,
      2.173000,
      -63.141000,
      2.080000,
      -63.107000,
      2.015000,
      -63.023000,
      2.031000,
      -62.948000,
      2.017000,
      -62.838000,
      1.954000,
      -62.719000,
      1.912000,
      -62.698000,
      1.819000,
      -62.731000,
      1.713000,
      -62.723000,
      1.631000,
      -62.796000,
      1.624807,
      -62.797429,
      1.624807,
      -63.331524
    ]);
    poly[645] = _TzPolygon([
      1.460506,
      -62.673840,
      1.439000,
      -62.639000,
      1.089000,
      -62.529000,
      1.087000,
      -62.471000,
      1.028000,
      -62.477000,
      0.959000,
      -62.442000,
      0.867000,
      -62.486000,
      0.786000,
      -62.457000,
      0.691000,
      -62.535000,
      0.627796,
      -62.524958,
      0.627796,
      -62.673840
    ]);
    poly[646] = _TzPolygon([
      3.618829,
      -62.997578,
      3.618829,
      -62.953170,
      3.608000,
      -62.960000,
      3.612000,
      -62.990000
    ]);
    poly[647] = _TzPolygon(
        [2.729521, -63.989208, 2.723703, -63.980331, 2.716763, -63.989208]);
    poly[648] = _TzPolygon(
        [2.661162, -63.989208, 2.647419, -63.985473, 2.642662, -63.989208]);
    poly[649] = _TzPolygon([
      3.618829,
      -62.997578,
      3.694000,
      -63.081000,
      3.748000,
      -63.059000,
      3.794000,
      -63.103000,
      3.812000,
      -63.204000,
      3.836000,
      -63.226000,
      3.882000,
      -63.233000,
      3.952000,
      -63.204000,
      3.956000,
      -63.280000,
      3.982000,
      -63.311000,
      3.961000,
      -63.312000,
      3.957000,
      -63.338000,
      3.977000,
      -63.428000,
      3.956000,
      -63.452000,
      3.912000,
      -63.411000,
      3.865000,
      -63.434000,
      3.874000,
      -63.489000,
      3.840000,
      -63.497000,
      3.865000,
      -63.551000,
      3.891000,
      -63.554000,
      3.886000,
      -63.591000,
      3.929000,
      -63.592000,
      4.019000,
      -63.676000,
      3.950000,
      -63.700000,
      3.922000,
      -63.663000,
      3.908000,
      -63.682000,
      3.915000,
      -63.738000,
      3.941000,
      -63.755000,
      3.950000,
      -63.850000,
      3.925000,
      -63.928000,
      3.868000,
      -63.964000,
      3.912284,
      -63.989208,
      4.615840,
      -63.989208,
      4.615840,
      -62.673840,
      4.043097,
      -62.673840,
      4.032000,
      -62.753000,
      4.007000,
      -62.768000,
      3.975000,
      -62.743000,
      3.930000,
      -62.786000,
      3.894000,
      -62.788000,
      3.850000,
      -62.753000,
      3.834000,
      -62.771000,
      3.805000,
      -62.729000,
      3.674000,
      -62.743000,
      3.739000,
      -62.835000,
      3.673000,
      -62.919000,
      3.618829,
      -62.953170
    ]);
    poly[650] = _TzPolygon([
      4.424350,
      -61.358472,
      4.439000,
      -61.448000,
      4.406000,
      -61.513000,
      4.342000,
      -61.527000,
      4.322000,
      -61.508000,
      4.252000,
      -61.560000,
      4.261000,
      -61.608000,
      4.238000,
      -61.642000,
      4.263000,
      -61.670000,
      4.245000,
      -61.725000,
      4.270000,
      -61.724000,
      4.250000,
      -61.774000,
      4.232000,
      -61.764000,
      4.229000,
      -61.802000,
      4.164000,
      -61.824000,
      4.161264,
      -61.922128,
      4.120087,
      -61.931749,
      4.181000,
      -61.982000,
      4.150000,
      -62.029000,
      4.154000,
      -62.076000,
      4.126000,
      -62.071000,
      4.118000,
      -62.117000,
      4.088000,
      -62.114000,
      4.077683,
      -62.143085,
      4.130000,
      -62.252000,
      4.135000,
      -62.329000,
      4.178000,
      -62.389000,
      4.178000,
      -62.462000,
      4.139000,
      -62.465000,
      4.137000,
      -62.531000,
      4.118000,
      -62.523000,
      4.109000,
      -62.552000,
      4.081000,
      -62.558000,
      4.046000,
      -62.533000,
      4.037000,
      -62.562000,
      4.019000,
      -62.555000,
      4.047000,
      -62.646000,
      4.043097,
      -62.673840,
      4.615840,
      -62.673840,
      4.615840,
      -61.358472
    ]);
    poly[651] = _TzPolygon(
        [5.906735, -61.358472, 5.970795, -61.414905, 5.968886, -61.358472]);
    poly[652] = _TzPolygon([
      1.624807,
      -59.471719,
      1.624807,
      -58.727736,
      1.225498,
      -58.727736,
      1.199901,
      -58.739558,
      1.171002,
      -58.821226,
      1.239000,
      -58.912000,
      1.261000,
      -58.886000,
      1.290000,
      -58.922000,
      1.317000,
      -58.918000,
      1.302000,
      -58.978000,
      1.327000,
      -58.993000,
      1.323000,
      -59.048000,
      1.389000,
      -59.253000,
      1.411000,
      -59.282000,
      1.450000,
      -59.284000,
      1.464000,
      -59.327000,
      1.514000,
      -59.329000,
      1.507000,
      -59.381000,
      1.556000,
      -59.396000,
      1.567000,
      -59.431000,
      1.620000,
      -59.447000
    ]);
    poly[653] = _TzPolygon([
      0.627796,
      -58.896108,
      1.227222,
      -58.895278,
      1.171002,
      -58.821226,
      1.199901,
      -58.739558,
      1.225498,
      -58.727736,
      0.627796,
      -58.727736
    ]);
    poly[654] = _TzPolygon([
      1.624807,
      -59.471719,
      1.627000,
      -59.483000,
      1.674000,
      -59.493000,
      1.669000,
      -59.511000,
      1.723000,
      -59.539000,
      1.736000,
      -59.566000,
      1.716000,
      -59.617000,
      1.741000,
      -59.632000,
      1.757000,
      -59.690000,
      1.844000,
      -59.649000,
      1.871000,
      -59.663000,
      1.839000,
      -59.677000,
      1.852000,
      -59.746000,
      1.901000,
      -59.759000,
      2.027253,
      -59.720829,
      2.069024,
      -59.742676,
      2.103465,
      -59.721762,
      2.162506,
      -59.741968,
      2.276153,
      -59.723133,
      2.292947,
      -59.741033,
      2.283860,
      -59.787475,
      2.360148,
      -59.871394,
      2.361454,
      -59.898170,
      2.480606,
      -59.897068,
      2.551856,
      -59.938399,
      2.569108,
      -59.929107,
      2.593102,
      -59.972060,
      2.609302,
      -59.957947,
      2.621818,
      -59.963447,
      2.621818,
      -58.727736,
      1.624807,
      -58.727736
    ]);
    poly[655] = _TzPolygon([
      4.615840,
      -61.358472,
      4.615840,
      -60.939428,
      4.587000,
      -60.932000,
      4.584000,
      -60.956000,
      4.544000,
      -60.964000,
      4.519000,
      -60.994000,
      4.522000,
      -61.095000,
      4.480165,
      -61.145587,
      4.536000,
      -61.217000,
      4.535000,
      -61.323000,
      4.504000,
      -61.322000,
      4.478000,
      -61.278000,
      4.458000,
      -61.288000,
      4.458000,
      -61.313000,
      4.421000,
      -61.338000,
      4.424350,
      -61.358472
    ]);
    poly[656] = _TzPolygon([
      4.489584,
      -60.043104,
      4.493306,
      -60.070660,
      4.521072,
      -60.064533,
      4.517340,
      -60.086478,
      4.533560,
      -60.087813,
      4.502028,
      -60.117787,
      4.517726,
      -60.161141,
      4.572475,
      -60.157246,
      4.564866,
      -60.136429,
      4.605011,
      -60.123420,
      4.615840,
      -60.075142,
      4.615840,
      -60.043104
    ]);
    poly[657] = _TzPolygon([
      2.621818,
      -59.963447,
      2.686097,
      -59.991696,
      2.834642,
      -59.991799,
      2.929589,
      -59.984212,
      2.998348,
      -59.946973,
      3.079086,
      -59.956466,
      3.121481,
      -59.921639,
      3.112883,
      -59.908214,
      3.211569,
      -59.908379,
      3.224461,
      -59.874551,
      3.241465,
      -59.888066,
      3.330522,
      -59.827869,
      3.352633,
      -59.834000,
      3.360666,
      -59.804188,
      3.428356,
      -59.813131,
      3.428754,
      -59.841628,
      3.505126,
      -59.803358,
      3.563853,
      -59.873038,
      3.604489,
      -59.850645,
      3.618829,
      -59.793717,
      3.618829,
      -58.727736,
      2.621818,
      -58.727736
    ]);
    poly[658] = _TzPolygon([
      4.489584,
      -60.043104,
      4.480105,
      -59.972916,
      4.509552,
      -59.970943,
      4.500043,
      -59.935587,
      4.460430,
      -59.909406,
      4.487172,
      -59.874831,
      4.452403,
      -59.861538,
      4.447086,
      -59.812241,
      4.465541,
      -59.795027,
      4.448072,
      -59.794522,
      4.376295,
      -59.669479,
      4.285869,
      -59.731895,
      4.268761,
      -59.709454,
      4.233904,
      -59.739486,
      4.180764,
      -59.730691,
      4.131660,
      -59.618177,
      4.069432,
      -59.654058,
      4.051935,
      -59.617841,
      4.007373,
      -59.607250,
      4.000591,
      -59.579431,
      3.968513,
      -59.584169,
      3.979132,
      -59.544684,
      3.944925,
      -59.515301,
      3.885385,
      -59.592788,
      3.817196,
      -59.577449,
      3.814975,
      -59.597272,
      3.793864,
      -59.596307,
      3.781259,
      -59.665547,
      3.702775,
      -59.668415,
      3.626282,
      -59.764127,
      3.618829,
      -59.793717,
      3.618829,
      -60.043104
    ]);
    poly[659] = _TzPolygon([
      2.621818,
      -57.412368,
      1.911660,
      -57.412368,
      1.905976,
      -57.433428,
      1.826814,
      -57.437760,
      1.786088,
      -57.501869,
      1.700495,
      -57.537597,
      1.682369,
      -57.650421,
      1.730931,
      -57.705090,
      1.715455,
      -57.718397,
      1.729727,
      -57.774307,
      1.726644,
      -57.792257,
      1.685210,
      -57.799789,
      1.688899,
      -57.844171,
      1.667820,
      -57.852056,
      1.680292,
      -57.877119,
      1.644809,
      -57.926757,
      1.658439,
      -57.990093,
      1.645678,
      -58.002615,
      1.633206,
      -57.980311,
      1.572779,
      -57.978559,
      1.503026,
      -58.004228,
      1.525341,
      -58.060927,
      1.507337,
      -58.069449,
      1.498895,
      -58.129425,
      1.560114,
      -58.160643,
      1.572218,
      -58.193035,
      1.546687,
      -58.236003,
      1.570732,
      -58.262255,
      1.568437,
      -58.317139,
      1.597015,
      -58.322366,
      1.538017,
      -58.363087,
      1.526512,
      -58.394723,
      1.481573,
      -58.371754,
      1.469988,
      -58.385587,
      1.462946,
      -58.508726,
      1.403166,
      -58.505113,
      1.371452,
      -58.457871,
      1.267963,
      -58.496224,
      1.277631,
      -58.512890,
      1.257909,
      -58.522891,
      1.294603,
      -58.564559,
      1.262124,
      -58.585393,
      1.297324,
      -58.694563,
      1.225498,
      -58.727736,
      2.621818,
      -58.727736
    ]);
    poly[660] = _TzPolygon([
      2.114745,
      -56.754684,
      2.205278,
      -56.819451,
      2.265556,
      -56.826396,
      2.297222,
      -56.884174,
      2.362222,
      -56.887507,
      2.393056,
      -56.932229,
      2.436111,
      -56.930007,
      2.465000,
      -56.956118,
      2.515000,
      -56.950007,
      2.509444,
      -56.996674,
      2.555278,
      -56.996951,
      2.592222,
      -57.027229,
      2.621818,
      -57.020653,
      2.621818,
      -56.754684
    ]);
    poly[661] = _TzPolygon([
      1.911660,
      -57.412368,
      1.923722,
      -57.367678,
      1.956381,
      -57.369118,
      1.996653,
      -57.307117,
      1.937587,
      -57.229228,
      1.978665,
      -57.199895,
      2.026442,
      -57.086676,
      1.955966,
      -57.063931,
      1.914893,
      -57.014207,
      1.902949,
      -56.976097,
      1.930360,
      -56.919708,
      1.899327,
      -56.893482,
      1.872539,
      -56.798850,
      1.853358,
      -56.797930,
      1.894066,
      -56.754684,
      1.624807,
      -56.754684,
      1.624807,
      -57.412368
    ]);
    poly[662] = _TzPolygon([
      2.114745,
      -56.754684,
      2.026667,
      -56.691674,
      2.023889,
      -56.562785,
      1.949182,
      -56.468954,
      1.905880,
      -56.579760,
      1.945878,
      -56.621453,
      1.917116,
      -56.651043,
      1.925815,
      -56.720956,
      1.894066,
      -56.754684
    ]);
    poly[663] = _TzPolygon([
      1.847551,
      -56.097000,
      1.850973,
      -56.117621,
      1.900481,
      -56.170899,
      1.898611,
      -56.234460,
      1.878080,
      -56.244042,
      1.937101,
      -56.334934,
      1.928265,
      -56.411816,
      2.023889,
      -56.562785,
      2.026667,
      -56.691674,
      2.114745,
      -56.754684,
      2.621818,
      -56.754684,
      2.621818,
      -56.097000,
      2.317191,
      -56.097000,
      2.265745,
      -56.138873,
      2.249186,
      -56.097000
    ]);
    poly[664] = _TzPolygon([
      2.621818,
      -57.020653,
      2.634722,
      -57.017785,
      2.637500,
      -57.060285,
      2.687500,
      -57.065007,
      2.734722,
      -57.102785,
      2.771667,
      -57.090285,
      2.770833,
      -57.137785,
      2.826389,
      -57.127507,
      2.816111,
      -57.182785,
      2.847500,
      -57.206118,
      2.903056,
      -57.223896,
      2.951667,
      -57.183618,
      2.960556,
      -57.228063,
      3.017222,
      -57.228063,
      3.025556,
      -57.204729,
      3.070000,
      -57.215007,
      3.097500,
      -57.250840,
      3.141111,
      -57.238340,
      3.139722,
      -57.285007,
      3.278611,
      -57.294729,
      3.324444,
      -57.278896,
      3.384167,
      -57.300007,
      3.358056,
      -57.357785,
      3.382778,
      -57.421951,
      3.356667,
      -57.430285,
      3.338333,
      -57.473340,
      3.364722,
      -57.520563,
      3.341667,
      -57.597507,
      3.364167,
      -57.650278,
      3.395556,
      -57.666389,
      3.461389,
      -57.636389,
      3.523611,
      -57.656389,
      3.559167,
      -57.709722,
      3.610278,
      -57.734444,
      3.669167,
      -57.838611,
      3.809444,
      -57.876111,
      3.906389,
      -57.943333,
      3.998056,
      -58.043333,
      4.159444,
      -58.070833,
      4.288056,
      -57.953611,
      4.403333,
      -57.958611,
      4.615840,
      -57.855057,
      4.615840,
      -56.097000,
      2.621818,
      -56.097000
    ]);
    poly[665] = _TzPolygon([
      5.612851,
      -61.358472,
      5.612851,
      -61.103245,
      5.187423,
      -60.732828,
      5.189000,
      -60.680000,
      5.115000,
      -60.656000,
      5.118000,
      -60.642000,
      5.057000,
      -60.644000,
      4.956000,
      -60.584000,
      4.774000,
      -60.726000,
      4.749000,
      -60.806000,
      4.704000,
      -60.852000,
      4.704000,
      -60.911000,
      4.665000,
      -60.917000,
      4.653000,
      -60.949000,
      4.615840,
      -60.939428,
      4.615840,
      -61.358472
    ]);
    poly[666] = _TzPolygon([
      4.615840,
      -60.075142,
      4.616881,
      -60.070500,
      4.655482,
      -60.075425,
      4.688334,
      -60.043104,
      4.615840,
      -60.043104
    ]);
    poly[667] = _TzPolygon([
      5.113468,
      -60.043104,
      5.140000,
      -60.094000,
      5.249000,
      -60.135000,
      5.227000,
      -60.172000,
      5.239150,
      -60.193167,
      5.270477,
      -60.179332,
      5.283457,
      -60.208247,
      5.208000,
      -60.319000,
      5.222000,
      -60.384000,
      5.182000,
      -60.434000,
      5.203000,
      -60.451000,
      5.196000,
      -60.569000,
      5.231000,
      -60.652000,
      5.201898,
      -60.737554,
      5.612851,
      -61.099578,
      5.612851,
      -60.043104
    ]);
    poly[668] = _TzPolygon([
      5.612851,
      -60.043104,
      5.612851,
      -61.099578,
      5.906735,
      -61.358472,
      5.968868,
      -61.357940,
      6.109637,
      -61.269881,
      6.126312,
      -61.231619,
      6.111978,
      -61.209290,
      6.187074,
      -61.179252,
      6.176566,
      -61.138135,
      6.193698,
      -61.124543,
      6.216256,
      -61.142361,
      6.271364,
      -61.114036,
      6.271478,
      -61.136250,
      6.330127,
      -61.184163,
      6.429151,
      -61.143160,
      6.464443,
      -61.152354,
      6.471753,
      -61.182564,
      6.519451,
      -61.172420,
      6.537371,
      -61.196469,
      6.525839,
      -61.222189,
      6.549317,
      -61.209746,
      6.570472,
      -61.231959,
      6.609862,
      -61.207568,
      6.609862,
      -60.043104
    ]);
    poly[669] = _TzPolygon([
      5.121578,
      -60.043104,
      5.063345,
      -59.969842,
      4.801084,
      -60.034442,
      4.706496,
      -60.025235,
      4.688334,
      -60.043104
    ]);
    poly[670] = _TzPolygon([
      7.606873,
      -61.358472,
      7.606873,
      -60.629404,
      7.577579,
      -60.638868,
      7.578202,
      -60.689439,
      7.558105,
      -60.687675,
      7.538838,
      -60.720363,
      7.479065,
      -60.697637,
      7.447242,
      -60.639214,
      7.418389,
      -60.643110,
      7.393565,
      -60.607224,
      7.314277,
      -60.588135,
      7.245995,
      -60.637953,
      7.125722,
      -60.546525,
      7.188799,
      -60.501536,
      7.204774,
      -60.459505,
      7.173308,
      -60.409424,
      7.184794,
      -60.367115,
      7.133533,
      -60.293551,
      7.071217,
      -60.289386,
      7.023396,
      -60.317861,
      6.997910,
      -60.366295,
      6.941111,
      -60.368291,
      6.929940,
      -60.380253,
      6.950662,
      -60.408802,
      6.859000,
      -60.548259,
      6.829960,
      -60.663613,
      6.755505,
      -60.718501,
      6.794204,
      -60.809728,
      6.782302,
      -60.853540,
      6.816601,
      -60.913886,
      6.789455,
      -60.925577,
      6.755681,
      -60.900600,
      6.719501,
      -60.946184,
      6.729470,
      -61.075910,
      6.703515,
      -61.087913,
      6.721511,
      -61.138434,
      6.609862,
      -61.207568,
      6.609862,
      -61.358472
    ]);
    poly[671] = _TzPolygon([
      7.606873,
      -60.629404,
      7.642679,
      -60.617837,
      7.631478,
      -60.590323,
      7.673901,
      -60.593377,
      7.705602,
      -60.568138,
      7.734219,
      -60.583635,
      7.795094,
      -60.532231,
      7.815728,
      -60.540174,
      7.838321,
      -60.466966,
      7.820792,
      -60.404816,
      7.839812,
      -60.379498,
      7.831281,
      -60.348252,
      7.910702,
      -60.247768,
      7.957744,
      -60.219113,
      7.989915,
      -60.140796,
      8.028875,
      -60.121934,
      8.032776,
      -60.043104,
      7.606873,
      -60.043104
    ]);
    poly[672] = _TzPolygon([
      8.603884,
      -59.773739,
      8.528377,
      -59.986725,
      8.300833,
      -59.809167,
      8.275000,
      -59.801389,
      8.236111,
      -59.825556,
      8.213463,
      -59.946031,
      8.158201,
      -59.993405,
      8.132711,
      -59.980625,
      8.033331,
      -60.031897,
      8.032776,
      -60.043104,
      8.603884,
      -60.043104
    ]);
    poly[673] = _TzPolygon([
      4.615840,
      -57.855057,
      4.643889,
      -57.841389,
      4.764722,
      -57.884444,
      4.805000,
      -57.926389,
      4.924444,
      -57.843889,
      4.925278,
      -57.766667,
      4.964167,
      -57.749444,
      5.011944,
      -57.682500,
      4.991944,
      -57.607778,
      5.014800,
      -57.532020,
      4.990503,
      -57.475431,
      4.991430,
      -57.414780,
      5.037302,
      -57.329364,
      5.016247,
      -57.290717,
      5.072050,
      -57.326120,
      5.174420,
      -57.298400,
      5.187330,
      -57.253920,
      5.134100,
      -57.223040,
      5.164670,
      -57.183960,
      5.262110,
      -57.226940,
      5.269060,
      -57.264490,
      5.229880,
      -57.251100,
      5.222130,
      -57.276560,
      5.252485,
      -57.296625,
      5.321587,
      -57.291879,
      5.310301,
      -57.329199,
      5.325376,
      -57.341382,
      5.390490,
      -57.274320,
      5.481500,
      -57.264330,
      5.550620,
      -57.199000,
      5.623860,
      -57.165060,
      5.699400,
      -57.160320,
      5.743740,
      -57.183490,
      5.895350,
      -57.135010,
      6.051360,
      -57.162573,
      6.084519,
      -57.078722,
      6.225000,
      -57.014948,
      6.197000,
      -56.999074,
      6.172000,
      -56.814039,
      6.175000,
      -56.621948,
      6.114000,
      -56.485443,
      6.040202,
      -56.097000,
      4.615840,
      -56.097000
    ]);
    poly[674] = _TzPolygon([
      -9.893535,
      -71.171189,
      -9.969890,
      -71.220414,
      -9.963139,
      -71.253107,
      -9.992411,
      -71.298085,
      -9.966986,
      -71.342658,
      -10.000447,
      -71.377955,
      -10.000447,
      -72.181027,
      -9.966337,
      -72.149987,
      -9.930934,
      -72.174337,
      -9.893535,
      -72.148719
    ]);
    poly[675] = _TzPolygon([
      -11.792956,
      -71.171189,
      -11.792956,
      -69.045107,
      -11.912991,
      -68.970408,
      -12.050486,
      -68.895567,
      -13.436012,
      -68.895567,
      -13.437068,
      -68.905998,
      -13.461260,
      -68.896076,
      -13.525328,
      -68.919338,
      -13.522282,
      -68.940827,
      -13.604400,
      -68.952473,
      -13.624119,
      -69.005045,
      -13.651779,
      -68.994666,
      -13.640283,
      -69.037215,
      -13.673305,
      -69.066973,
      -13.692378,
      -69.055115,
      -13.692378,
      -71.171189
    ]);
    poly[676] = _TzPolygon([
      -11.792956,
      -68.895567,
      -11.792956,
      -69.045025,
      -10.945535,
      -69.571811,
      -10.936061,
      -69.501293,
      -10.954960,
      -69.478218,
      -10.925411,
      -69.417032,
      -10.956595,
      -69.374900,
      -10.936109,
      -69.354269,
      -10.954965,
      -69.274481,
      -10.939780,
      -69.233539,
      -10.958306,
      -69.215522,
      -10.954668,
      -69.152192,
      -10.981331,
      -69.121091,
      -10.976506,
      -69.038752,
      -11.011387,
      -68.992406,
      -10.989628,
      -68.952953,
      -11.012023,
      -68.947901,
      -11.022079,
      -68.910738,
      -11.017936,
      -68.895567
    ]);
    poly[677] = _TzPolygon([
      -9.893535,
      -70.623237,
      -10.999821,
      -70.621025,
      -10.934652,
      -70.530334,
      -10.996571,
      -70.452647,
      -11.039102,
      -70.437674,
      -11.070776,
      -70.308595,
      -11.042771,
      -70.158254,
      -10.985336,
      -70.092229,
      -10.993700,
      -70.064460,
      -10.921232,
      -69.933490,
      -10.930320,
      -69.769138,
      -10.975219,
      -69.739438,
      -10.976892,
      -69.715094,
      -10.942590,
      -69.574303,
      -11.792956,
      -69.045107,
      -11.792956,
      -71.171189,
      -9.893535,
      -71.171189
    ]);
    poly[678] = _TzPolygon([
      -12.050486,
      -68.895567,
      -12.497969,
      -68.651991,
      -12.533810,
      -68.655077,
      -12.522822,
      -68.683331,
      -12.552034,
      -68.674421,
      -12.634311,
      -68.741917,
      -12.680656,
      -68.712658,
      -12.693365,
      -68.736138,
      -12.712466,
      -68.728794,
      -12.756566,
      -68.803953,
      -12.808618,
      -68.807631,
      -12.823897,
      -68.839373,
      -12.857839,
      -68.834799,
      -12.870592,
      -68.870701,
      -12.947768,
      -68.860212,
      -12.940760,
      -68.878171,
      -12.957629,
      -68.882162,
      -12.981303,
      -68.861675,
      -12.988866,
      -68.879776,
      -13.046449,
      -68.848919,
      -13.047595,
      -68.863877,
      -13.113288,
      -68.859242,
      -13.136203,
      -68.878020,
      -13.150525,
      -68.858089,
      -13.181356,
      -68.872132,
      -13.246693,
      -68.845287,
      -13.329378,
      -68.878788,
      -13.359242,
      -68.868797,
      -13.383186,
      -68.891678,
      -13.435396,
      -68.889486,
      -13.436012,
      -68.895567
    ]);
    poly[679] = _TzPolygon([
      -11.017936,
      -68.895567,
      -10.989867,
      -68.792765,
      -11.014583,
      -68.788831,
      -10.998151,
      -68.780276,
      -11.009527,
      -68.747675,
      -11.066239,
      -68.766218,
      -11.109409,
      -68.722234,
      -11.146802,
      -68.716798,
      -11.108874,
      -68.544474,
      -11.036712,
      -68.436482,
      -11.056709,
      -68.402229,
      -11.020733,
      -68.385525,
      -11.015862,
      -68.331872,
      -10.961179,
      -68.236716,
      -10.859659,
      -68.195758,
      -10.776926,
      -68.103738,
      -10.715023,
      -68.105227,
      -10.655779,
      -68.033002,
      -10.640681,
      -67.864593,
      -10.710828,
      -67.708251,
      -10.605166,
      -67.675718,
      -10.615549,
      -67.658637,
      -10.598069,
      -67.640275,
      -10.502796,
      -67.579247,
      -10.454920,
      -67.443611,
      -10.427200,
      -67.413252,
      -10.373864,
      -67.407166,
      -10.393682,
      -67.355283,
      -10.376375,
      -67.311168,
      -10.319971,
      -67.316745,
      -10.332934,
      -67.265323,
      -10.315086,
      -67.224393,
      -10.339232,
      -67.177450,
      -10.316553,
      -67.129032,
      -10.290478,
      -67.126105,
      -10.258725,
      -67.015759,
      -10.221624,
      -66.988812,
      -10.199018,
      -66.996851,
      -10.188858,
      -66.952801,
      -10.082680,
      -66.875097,
      -10.083996,
      -66.837600,
      -9.999258,
      -66.763564,
      -9.967507,
      -66.675414,
      -9.936871,
      -66.662925,
      -9.950054,
      -66.637146,
      -9.893535,
      -66.619944,
      -11.792956,
      -66.619944,
      -11.792956,
      -68.895567
    ]);
    poly[680] = _TzPolygon([
      -9.411841,
      -72.982482,
      -9.411396,
      -73.200439,
      -9.363223,
      -73.188760,
      -9.354101,
      -73.148366,
      -9.318317,
      -73.131406,
      -9.308117,
      -73.101434,
      -9.275348,
      -73.107328,
      -9.234607,
      -73.073518,
      -9.222365,
      -73.009298,
      -9.195447,
      -73.003343,
      -9.177857,
      -73.026124,
      -9.155477,
      -72.982482
    ]);
    poly[681] = _TzPolygon([
      -8.951741,
      -72.982482,
      -8.917781,
      -72.999307,
      -8.905774,
      -73.058886,
      -8.698298,
      -73.167241,
      -8.690216,
      -73.255472,
      -8.681076,
      -73.262825,
      -8.681076,
      -72.982482
    ]);
    poly[682] = _TzPolygon([
      -8.681076,
      -72.982482,
      -8.681076,
      -73.262825,
      -8.610906,
      -73.319275,
      -8.616784,
      -73.341042,
      -8.474035,
      -73.331831,
      -8.470240,
      -73.388115,
      -8.431291,
      -73.406715,
      -8.350223,
      -73.541908,
      -8.270786,
      -73.526262,
      -8.240861,
      -73.587386,
      -8.223660,
      -73.571412,
      -8.164561,
      -73.595695,
      -8.128678,
      -73.584471,
      -8.057460,
      -73.626253,
      -8.034250,
      -73.616851,
      -8.006529,
      -73.639248,
      -8.013148,
      -73.668023,
      -7.954732,
      -73.705605,
      -7.965846,
      -73.726783,
      -7.909164,
      -73.772256,
      -7.860600,
      -73.761543,
      -7.878811,
      -73.735451,
      -7.859643,
      -73.679223,
      -7.781441,
      -73.678747,
      -7.742386,
      -73.714799,
      -7.715760,
      -73.819818,
      -7.666871,
      -73.839180,
      -7.676240,
      -73.866539,
      -7.640228,
      -73.900459,
      -7.603553,
      -73.889023,
      -7.561471,
      -73.978568,
      -7.534734,
      -73.983062,
      -7.533434,
      -73.941711,
      -7.472988,
      -73.909759,
      -7.468617,
      -73.911326,
      -7.468617,
      -72.982482
    ]);
    poly[683] = _TzPolygon([
      -7.715415,
      -71.174515,
      -7.552000,
      -72.584719,
      -7.468617,
      -72.815278,
      -7.468617,
      -71.174515
    ]);
    poly[684] = _TzPolygon([
      -8.951741,
      -72.982482,
      -8.981013,
      -72.967980,
      -8.984940,
      -72.940911,
      -9.012099,
      -72.963071,
      -9.093248,
      -72.939994,
      -9.143024,
      -72.958197,
      -9.155477,
      -72.982482
    ]);
    poly[685] = _TzPolygon([
      -9.409531,
      -72.982482,
      -9.412383,
      -72.717037,
      -9.439365,
      -72.695146,
      -9.455868,
      -72.576780,
      -9.491281,
      -72.519535,
      -9.477154,
      -72.407492,
      -9.494598,
      -72.356876,
      -9.543794,
      -72.318586,
      -9.539953,
      -72.282898,
      -9.603158,
      -72.288209,
      -9.616334,
      -72.252818,
      -9.750855,
      -72.262955,
      -9.797416,
      -72.151361,
      -9.830402,
      -72.162833,
      -9.874872,
      -72.135935,
      -9.893535,
      -72.148719,
      -9.893535,
      -72.982482
    ]);
    poly[686] = _TzPolygon([
      -7.408148,
      -72.982482,
      -7.113061,
      -73.798420,
      -7.046760,
      -73.757100,
      -6.977730,
      -73.761280,
      -6.964160,
      -73.743890,
      -6.935830,
      -73.760790,
      -6.754150,
      -73.638260,
      -6.722033,
      -73.561792,
      -6.676141,
      -73.521927,
      -6.635760,
      -73.379917,
      -6.593267,
      -73.352809,
      -6.588843,
      -73.227413,
      -6.564429,
      -73.221791,
      -6.577113,
      -73.206692,
      -6.545779,
      -73.181677,
      -6.523016,
      -73.187967,
      -6.531325,
      -73.163387,
      -6.510461,
      -73.135226,
      -6.406664,
      -73.104726,
      -6.380259,
      -73.135576,
      -6.276668,
      -73.160705,
      -6.219577,
      -73.220285,
      -6.183181,
      -73.216272,
      -6.149625,
      -73.246638,
      -6.043992,
      -73.238213,
      -6.005125,
      -73.186802,
      -5.944716,
      -73.186950,
      -5.867960,
      -73.152068,
      -5.864329,
      -73.117020,
      -5.833184,
      -73.114216,
      -5.795170,
      -73.053029,
      -5.733411,
      -73.027531,
      -5.728522,
      -73.000465,
      -5.661276,
      -72.985570,
      -5.660764,
      -72.982482
    ]);
    poly[687] = _TzPolygon([
      -7.468617,
      -73.911326,
      -7.357483,
      -73.951172,
      -7.389247,
      -73.863548,
      -7.354310,
      -73.853662,
      -7.338618,
      -73.821097,
      -7.336904,
      -73.761626,
      -7.353786,
      -73.754640,
      -7.322462,
      -73.700394,
      -7.227558,
      -73.716619,
      -7.206423,
      -73.752076,
      -7.113061,
      -73.798420,
      -7.408148,
      -72.982482,
      -7.468617,
      -72.982482
    ]);
    poly[688] = _TzPolygon([
      -5.043700,
      -72.618503,
      -5.051804,
      -72.621198,
      -5.051993,
      -72.727648,
      -5.088593,
      -72.739860,
      -5.076617,
      -72.756367,
      -5.113442,
      -72.785947,
      -5.102776,
      -72.818312,
      -5.139117,
      -72.815473,
      -5.136013,
      -72.850853,
      -5.164011,
      -72.887570,
      -5.179063,
      -72.869027,
      -5.271167,
      -72.860525,
      -5.466129,
      -72.958885,
      -5.521978,
      -72.960594,
      -5.541280,
      -72.938574,
      -5.612911,
      -72.973678,
      -5.656891,
      -72.959116,
      -5.660764,
      -72.982482,
      -5.043700,
      -72.982482
    ]);
    poly[689] = _TzPolygon(
        [-7.408148, -72.982482, -7.468617, -72.815278, -7.468617, -72.982482]);
    poly[690] = _TzPolygon([
      -5.043700,
      -69.578418,
      -9.541382,
      -67.558582,
      -9.049000,
      -68.647000,
      -7.845148,
      -70.054979,
      -7.715415,
      -71.174515,
      -5.043700,
      -71.174515
    ]);
    poly[691] = _TzPolygon([
      -9.893535,
      -71.171189,
      -9.872365,
      -71.157541,
      -9.815836,
      -71.051225,
      -9.817209,
      -70.993912,
      -9.748912,
      -70.963367,
      -9.741298,
      -70.923827,
      -9.643235,
      -70.836149,
      -9.638462,
      -70.793319,
      -9.604253,
      -70.757241,
      -9.560426,
      -70.750669,
      -9.570256,
      -70.729797,
      -9.525963,
      -70.662115,
      -9.441795,
      -70.596273,
      -9.424320,
      -70.494616,
      -9.463667,
      -70.503759,
      -9.467837,
      -70.523908,
      -9.505566,
      -70.505061,
      -9.490329,
      -70.514887,
      -9.518518,
      -70.528105,
      -9.514688,
      -70.546001,
      -9.536463,
      -70.538898,
      -9.531469,
      -70.567973,
      -9.570573,
      -70.553318,
      -9.568042,
      -70.586281,
      -9.548644,
      -70.590215,
      -9.560193,
      -70.600832,
      -9.640840,
      -70.584701,
      -9.714978,
      -70.525230,
      -9.765840,
      -70.536629,
      -9.820545,
      -70.623383,
      -9.893535,
      -70.623237
    ]);
    poly[692] = _TzPolygon(
        [-9.541382, -67.558582, -5.043700, -69.578418, -5.043700, -67.558582]);
    poly[693] = _TzPolygon([
      -5.043700,
      -72.618503,
      -4.983427,
      -72.598459,
      -4.997965,
      -72.584674,
      -4.955561,
      -72.551936,
      -4.960019,
      -72.522168,
      -4.932872,
      -72.521159,
      -4.950802,
      -72.482029,
      -4.915688,
      -72.451348,
      -4.891863,
      -72.471133,
      -4.900978,
      -72.415656,
      -4.875994,
      -72.421856,
      -4.888655,
      -72.406110,
      -4.871989,
      -72.381433,
      -4.833670,
      -72.389878,
      -4.823771,
      -72.359661,
      -4.805187,
      -72.371524,
      -4.793564,
      -72.339800,
      -4.812081,
      -72.323540,
      -4.780377,
      -72.327698,
      -4.790807,
      -72.307322,
      -4.771412,
      -72.278864,
      -4.798737,
      -72.271971,
      -4.765845,
      -72.256540,
      -4.781745,
      -72.244328,
      -4.747845,
      -72.210096,
      -4.763333,
      -72.193182,
      -4.711893,
      -72.141173,
      -4.733985,
      -72.125928,
      -4.669055,
      -72.081098,
      -4.669646,
      -72.078499,
      -5.043700,
      -72.078499
    ]);
    poly[694] = _TzPolygon([
      -4.399647,
      -71.174515,
      -4.396812,
      -71.185122,
      -4.424710,
      -71.194220,
      -4.379868,
      -71.202632,
      -4.408622,
      -71.226149,
      -4.385687,
      -71.229754,
      -4.385003,
      -71.269751,
      -4.442167,
      -71.277819,
      -4.420089,
      -71.320906,
      -4.462876,
      -71.307517,
      -4.427278,
      -71.350261,
      -4.430932,
      -71.395505,
      -4.470577,
      -71.425620,
      -4.449698,
      -71.432143,
      -4.438402,
      -71.412402,
      -4.428818,
      -71.434375,
      -4.450211,
      -71.436950,
      -4.434979,
      -71.478663,
      -4.458426,
      -71.485530,
      -4.439087,
      -71.507159,
      -4.487006,
      -71.494284,
      -4.464416,
      -71.537028,
      -4.529275,
      -71.596251,
      -4.515243,
      -71.633502,
      -4.468695,
      -71.615477,
      -4.503948,
      -71.650325,
      -4.472460,
      -71.654788,
      -4.502066,
      -71.659079,
      -4.511649,
      -71.708175,
      -4.468866,
      -71.751090,
      -4.504462,
      -71.766368,
      -4.485295,
      -71.796752,
      -4.527222,
      -71.864215,
      -4.516441,
      -71.907302,
      -4.537473,
      -71.885404,
      -4.529240,
      -71.919000,
      -4.608216,
      -71.947347,
      -4.609404,
      -71.994551,
      -4.626396,
      -71.982021,
      -4.645667,
      -72.006804,
      -4.623288,
      -72.043260,
      -4.673738,
      -72.060487,
      -4.669646,
      -72.078499,
      -3.831241,
      -72.078499,
      -3.831241,
      -71.174515
    ]);
    poly[695] = _TzPolygon([
      -1.406323,
      -73.556708,
      -1.406323,
      -72.982482,
      -2.350880,
      -72.982482,
      -2.360334,
      -73.002868,
      -2.313681,
      -73.032737,
      -2.361020,
      -73.058143,
      -2.324239,
      -73.096201,
      -2.327231,
      -73.119598,
      -2.288982,
      -73.115650,
      -2.236749,
      -73.165279,
      -2.189651,
      -73.170876,
      -2.179995,
      -73.128718,
      -2.130656,
      -73.116508,
      -2.093259,
      -73.069301,
      -2.071816,
      -73.113590,
      -2.041623,
      -73.092132,
      -1.991572,
      -73.130061,
      -1.885846,
      -73.108268,
      -1.859253,
      -73.152385,
      -1.805410,
      -73.146250,
      -1.788564,
      -73.194442,
      -1.748586,
      -73.217788,
      -1.802633,
      -73.235469,
      -1.806408,
      -73.256069,
      -1.782387,
      -73.246627,
      -1.777476,
      -73.299939,
      -1.827512,
      -73.315120,
      -1.772092,
      -73.386703,
      -1.790505,
      -73.427816,
      -1.741894,
      -73.454338,
      -1.708092,
      -73.531585,
      -1.639972,
      -73.516307,
      -1.575345,
      -73.457267,
      -1.570809,
      -73.490333,
      -1.483625,
      -73.490870,
      -1.473274,
      -73.524592,
      -1.432336,
      -73.536049,
      -1.428228,
      -73.579887,
      -1.416935,
      -73.552378
    ]);
    poly[696] = _TzPolygon([
      -1.173431,
      -73.886466,
      -1.116461,
      -73.912072,
      -1.131146,
      -73.958164,
      -1.081770,
      -73.964794,
      -1.106432,
      -73.978420,
      -1.098880,
      -74.006057,
      -1.061496,
      -74.026829,
      -1.005684,
      -74.018074,
      -1.053569,
      -74.064937,
      -0.978803,
      -74.272582,
      -0.941148,
      -74.262176,
      -0.899061,
      -74.279334,
      -0.880733,
      -74.320458,
      -0.865144,
      -74.301540,
      -0.880632,
      -74.270255,
      -0.820764,
      -74.243390,
      -0.828187,
      -74.279471,
      -0.779011,
      -74.279074,
      -0.793354,
      -74.312505,
      -0.754230,
      -74.315735,
      -0.758349,
      -74.344370,
      -0.727968,
      -74.375129,
      -0.677503,
      -74.337879,
      -0.653729,
      -74.373906,
      -0.630128,
      -74.359508,
      -0.541905,
      -74.392301,
      -0.559922,
      -74.420448,
      -0.499335,
      -74.422357,
      -0.472673,
      -74.473673,
      -0.487655,
      -74.497009,
      -0.461907,
      -74.497867,
      -0.458603,
      -74.537143,
      -0.407690,
      -74.553708,
      -0.377606,
      -74.616322,
      -0.352047,
      -74.608074,
      -0.374482,
      -74.660370,
      -0.331104,
      -74.679142,
      -0.342786,
      -74.728383,
      -0.296944,
      -74.728580,
      -0.193865,
      -74.790449,
      -0.193865,
      -73.886466
    ]);
    poly[697] = _TzPolygon([
      -1.173431,
      -73.886466,
      -1.229316,
      -73.861347,
      -1.239441,
      -73.783069,
      -1.261580,
      -73.770195,
      -1.200483,
      -73.743930,
      -1.248366,
      -73.726936,
      -1.240621,
      -73.673925,
      -1.267244,
      -73.648487,
      -1.263779,
      -73.619401,
      -1.318729,
      -73.611065,
      -1.326609,
      -73.567157,
      -1.346173,
      -73.581254,
      -1.406323,
      -73.556708,
      -1.406323,
      -73.886466
    ]);
    poly[698] = _TzPolygon([
      -2.350880,
      -72.982482,
      -2.337008,
      -72.952572,
      -2.457193,
      -72.930932,
      -2.434744,
      -72.895970,
      -2.439674,
      -72.857277,
      -2.385305,
      -72.777111,
      -2.427668,
      -72.744495,
      -2.386411,
      -72.711663,
      -2.451965,
      -72.681166,
      -2.358493,
      -72.635193,
      -2.401084,
      -72.566311,
      -2.433671,
      -72.448551,
      -2.414152,
      -72.408039,
      -2.490781,
      -72.368557,
      -2.459568,
      -72.259208,
      -2.432243,
      -72.259325,
      -2.448763,
      -72.216476,
      -2.426484,
      -72.171379,
      -2.479944,
      -72.157303,
      -2.410003,
      -72.128917,
      -2.365397,
      -72.078499,
      -2.618782,
      -72.078499,
      -2.618782,
      -72.982482
    ]);
    poly[699] = _TzPolygon([
      -2.365397,
      -72.078499,
      -2.335737,
      -72.044975,
      -2.370565,
      -72.005417,
      -2.355801,
      -71.944900,
      -2.380674,
      -71.922409,
      -2.316111,
      -71.939317,
      -2.314149,
      -71.887093,
      -2.187379,
      -71.828935,
      -2.204826,
      -71.796548,
      -2.140985,
      -71.734454,
      -2.230949,
      -71.720944,
      -2.199914,
      -71.652362,
      -2.239037,
      -71.599166,
      -2.249117,
      -71.520206,
      -2.354049,
      -71.493369,
      -2.334144,
      -71.479206,
      -2.276206,
      -71.495101,
      -2.279992,
      -71.452743,
      -2.355119,
      -71.391803,
      -2.391994,
      -71.406910,
      -2.410497,
      -71.393220,
      -2.379474,
      -71.353523,
      -2.379131,
      -71.316616,
      -2.336268,
      -71.296353,
      -2.348429,
      -71.275589,
      -2.389421,
      -71.280910,
      -2.336793,
      -71.231967,
      -2.382218,
      -71.176197,
      -2.376547,
      -71.174515,
      -2.618782,
      -71.174515,
      -2.618782,
      -72.078499
    ]);
  }
}

class _Initializer8 {
  static void _init() {
    poly[700] = _TzPolygon([
      -3.831241,
      -70.722524,
      -4.182248,
      -70.722524,
      -4.159443,
      -70.759012,
      -4.218722,
      -70.845805,
      -4.230047,
      -70.816768,
      -4.254721,
      -70.831595,
      -4.252452,
      -70.864474,
      -4.279054,
      -70.844829,
      -4.293282,
      -70.877915,
      -4.323554,
      -70.876647,
      -4.359157,
      -70.934325,
      -4.384318,
      -70.935698,
      -4.345335,
      -70.997411,
      -4.386543,
      -70.993892,
      -4.402118,
      -71.037837,
      -4.369940,
      -71.049510,
      -4.397668,
      -71.076976,
      -4.375075,
      -71.079894,
      -4.377643,
      -71.106158,
      -4.411189,
      -71.114913,
      -4.381579,
      -71.144782,
      -4.405713,
      -71.151820,
      -4.399647,
      -71.174515,
      -3.831241,
      -71.174515
    ]);
    poly[701] = _TzPolygon(
        [-3.850772, -70.270532, -3.831241, -70.280274, -3.831241, -70.270532]);
    poly[702] = _TzPolygon(
        [-3.831241, -70.414129, -3.880750, -70.514873, -3.831241, -70.563175]);
    poly[703] = _TzPolygon(
        [-3.831241, -70.598734, -3.843484, -70.616453, -3.831241, -70.633439]);
    poly[704] = _TzPolygon([
      -4.182248,
      -70.722524,
      -4.207908,
      -70.681467,
      -4.145624,
      -70.670715,
      -4.163278,
      -70.652130,
      -4.130113,
      -70.647931,
      -4.126403,
      -70.626711,
      -4.182852,
      -70.632233,
      -4.173730,
      -70.565433,
      -4.211693,
      -70.573570,
      -4.198921,
      -70.552914,
      -4.137579,
      -70.551982,
      -4.148242,
      -70.510363,
      -4.200981,
      -70.504167,
      -4.161321,
      -70.485349,
      -4.176260,
      -70.466986,
      -4.161929,
      -70.433474,
      -4.132082,
      -70.436507,
      -4.133409,
      -70.380232,
      -4.179968,
      -70.338920,
      -4.142062,
      -70.322808,
      -4.165548,
      -70.287693,
      -4.230233,
      -70.278605,
      -4.253304,
      -70.310002,
      -4.287935,
      -70.288808,
      -4.282352,
      -70.270532,
      -4.437470,
      -70.270532,
      -4.437470,
      -70.722524
    ]);
    poly[705] = _TzPolygon([
      -3.850772,
      -70.270532,
      -3.831241,
      -70.270532,
      -3.831241,
      -69.865871,
      -4.231687,
      -69.947926,
      -4.082699,
      -70.061874,
      -4.017346,
      -70.140324,
      -3.930636,
      -70.180320,
      -3.896726,
      -70.247611
    ]);
    poly[706] = _TzPolygon([
      -4.282352,
      -70.270532,
      -4.274836,
      -70.245930,
      -4.296561,
      -70.269516,
      -4.309799,
      -70.256061,
      -4.317158,
      -70.224486,
      -4.298687,
      -70.213252,
      -4.361791,
      -70.191940,
      -4.327869,
      -70.151365,
      -4.306448,
      -70.172021,
      -4.273079,
      -70.155083,
      -4.285850,
      -70.117489,
      -4.254540,
      -70.108814,
      -4.289969,
      -70.093941,
      -4.294089,
      -70.041889,
      -4.314275,
      -70.079482,
      -4.332400,
      -70.043128,
      -4.367283,
      -70.049590,
      -4.372119,
      -70.029160,
      -4.330904,
      -70.011218,
      -4.322103,
      -69.985673,
      -4.347836,
      -69.985809,
      -4.311148,
      -69.951998,
      -4.226664,
      -69.945336,
      -5.043700,
      -69.578418,
      -5.043700,
      -70.270532
    ]);
    poly[707] = _TzPolygon([
      -5.043700,
      -69.366549,
      -5.043700,
      -69.578418,
      -4.226664,
      -69.945336,
      -3.831241,
      -69.874686,
      -3.831241,
      -69.366549
    ]);
    poly[708] = _TzPolygon([
      -3.831241,
      -70.280274,
      -3.823764,
      -70.284003,
      -3.802059,
      -70.354747,
      -3.831241,
      -70.414129,
      -3.831241,
      -70.563175,
      -3.816565,
      -70.577493,
      -3.831241,
      -70.598734,
      -3.831241,
      -70.633439,
      -3.793988,
      -70.685123,
      -3.796515,
      -70.713192,
      -2.757270,
      -70.058827,
      -2.649478,
      -70.084389,
      -2.703760,
      -70.135544,
      -2.690883,
      -70.160356,
      -2.636548,
      -70.165381,
      -2.658533,
      -70.196160,
      -2.645342,
      -70.219087,
      -2.618782,
      -70.226957,
      -2.618782,
      -69.651572,
      -3.686152,
      -69.836141,
      -3.831241,
      -69.865871
    ]);
    poly[709] = _TzPolygon([
      -3.831241,
      -69.366549,
      -3.831241,
      -69.874686,
      -2.618782,
      -69.658056,
      -2.618782,
      -69.366549
    ]);
    poly[710] = _TzPolygon([
      -2.376547,
      -71.174515,
      -2.332908,
      -71.161577,
      -2.338824,
      -71.128818,
      -2.285882,
      -71.132694,
      -2.264898,
      -71.046077,
      -2.306579,
      -70.993892,
      -2.229297,
      -71.020411,
      -2.210196,
      -71.000842,
      -2.255293,
      -70.941536,
      -2.223825,
      -70.898111,
      -2.225961,
      -70.863430,
      -2.294655,
      -70.832486,
      -2.297831,
      -70.767814,
      -2.328755,
      -70.750527,
      -2.354964,
      -70.663394,
      -2.405389,
      -70.677332,
      -2.395762,
      -70.627168,
      -2.474660,
      -70.631687,
      -2.472088,
      -70.557701,
      -2.448946,
      -70.553166,
      -2.421737,
      -70.597764,
      -2.418407,
      -70.570404,
      -2.476375,
      -70.508606,
      -2.454072,
      -70.471916,
      -2.524110,
      -70.432971,
      -2.491761,
      -70.367958,
      -2.501497,
      -70.302945,
      -2.520656,
      -70.295093,
      -2.542641,
      -70.348171,
      -2.568081,
      -70.353510,
      -2.577189,
      -70.314565,
      -2.552063,
      -70.246726,
      -2.618782,
      -70.224282,
      -2.618782,
      -71.174515
    ]);
    poly[711] = _TzPolygon([
      -2.618782,
      -69.658056,
      -1.491186,
      -69.456589,
      -1.454204,
      -69.432630,
      -1.406323,
      -69.435648,
      -1.406323,
      -69.366549,
      -2.618782,
      -69.366549
    ]);
    poly[712] = _TzPolygon([
      -1.406323,
      -69.435648,
      -1.400921,
      -69.435989,
      -1.365080,
      -69.397303,
      -1.227562,
      -69.430557,
      -1.125548,
      -69.395234,
      -1.071399,
      -69.432867,
      -1.043847,
      -69.418584,
      -1.024110,
      -69.444890,
      -0.998273,
      -69.418606,
      -0.993870,
      -69.458816,
      -0.957450,
      -69.471154,
      -0.925137,
      -69.527995,
      -0.867949,
      -69.525818,
      -0.839166,
      -69.572676,
      -0.806730,
      -69.564087,
      -0.746671,
      -69.624907,
      -0.636925,
      -69.561785,
      -0.595312,
      -69.602974,
      -0.561210,
      -69.591131,
      -0.534324,
      -69.613651,
      -0.500798,
      -69.607832,
      -0.375686,
      -69.828161,
      -0.337321,
      -69.844601,
      -0.325734,
      -69.920535,
      -0.193865,
      -70.039716,
      -0.193865,
      -69.366549,
      -1.406323,
      -69.366549
    ]);
    poly[713] = _TzPolygon([
      -9.888653,
      -66.619944,
      -9.814051,
      -66.805868,
      -9.753091,
      -66.775364,
      -9.756072,
      -66.725390,
      -9.673151,
      -66.619944
    ]);
    poly[714] = _TzPolygon([
      -9.541196,
      -67.558582,
      -9.560000,
      -67.517000,
      -9.592159,
      -67.324086,
      -9.893535,
      -66.619944,
      -9.893535,
      -67.558582
    ]);
    poly[715] = _TzPolygon([
      0.905854,
      -70.705196,
      0.905854,
      -69.179018,
      0.872042,
      -69.135762,
      0.842691,
      -69.166146,
      0.767511,
      -69.148809,
      0.740563,
      -69.190007,
      0.644840,
      -69.115632,
      0.649818,
      -69.194253,
      0.605905,
      -69.199748,
      0.603894,
      -69.294839,
      0.649971,
      -69.289139,
      0.626157,
      -69.319670,
      0.642779,
      -69.336054,
      0.614160,
      -69.352767,
      0.712581,
      -69.433377,
      0.735768,
      -69.480024,
      0.702136,
      -69.532043,
      0.678919,
      -69.535206,
      0.683962,
      -69.561559,
      0.654202,
      -69.597007,
      0.613280,
      -69.605289,
      0.667593,
      -69.671096,
      0.571624,
      -69.802724,
      0.591255,
      -69.822683,
      0.576893,
      -69.887408,
      0.590043,
      -69.916320,
      0.552661,
      -69.935642,
      0.577818,
      -69.977812,
      0.573760,
      -70.000136,
      0.544125,
      -70.005508,
      0.562842,
      -70.047046,
      -0.189979,
      -70.043228,
      -0.193865,
      -70.039716,
      -0.193865,
      -70.705196
    ]);
    poly[716] = _TzPolygon([
      0.905854,
      -69.179018,
      0.913236,
      -69.188462,
      0.941556,
      -69.164602,
      0.972451,
      -69.216787,
      0.999741,
      -69.197732,
      1.056552,
      -69.244939,
      1.052433,
      -69.287339,
      1.088647,
      -69.320298,
      1.087938,
      -69.376410,
      1.042650,
      -69.423124,
      1.073887,
      -69.439431,
      1.070798,
      -69.561998,
      1.098258,
      -69.609891,
      1.069939,
      -69.677182,
      1.075060,
      -69.703862,
      1.118167,
      -69.709626,
      1.103407,
      -69.773656,
      1.063625,
      -69.806272,
      1.072719,
      -69.842658,
      1.718929,
      -69.839717,
      1.692438,
      -69.782358,
      1.729548,
      -69.745033,
      1.723046,
      -69.628558,
      1.776907,
      -69.534643,
      1.729351,
      -69.391089,
      1.729409,
      -68.662570,
      0.905854,
      -68.662570
    ]);
    poly[717] = _TzPolygon([
      2.005573,
      -68.201985,
      1.956761,
      -68.212268,
      1.830840,
      -68.285547,
      1.829184,
      -68.226881,
      1.770444,
      -68.239542,
      1.779700,
      -68.192071,
      1.766068,
      -68.177758,
      1.737491,
      -68.193263,
      1.729448,
      -68.164499,
      1.729409,
      -68.662570,
      2.005573,
      -68.662570
    ]);
    poly[718] = _TzPolygon([
      2.005573,
      -67.765601,
      1.972597,
      -67.813851,
      1.902332,
      -67.836638,
      1.862142,
      -67.890349,
      1.811652,
      -67.901623,
      1.891214,
      -68.033517,
      1.897741,
      -68.090429,
      1.978541,
      -68.144166,
      1.976705,
      -68.180335,
      2.005573,
      -68.188036
    ]);
    poly[719] = _TzPolygon([
      1.022021,
      -66.619944,
      1.228959,
      -66.851191,
      1.286597,
      -66.881212,
      1.321385,
      -66.855383,
      1.369762,
      -66.854919,
      1.423585,
      -66.911048,
      1.530999,
      -66.919057,
      1.591217,
      -66.963943,
      1.632035,
      -66.959682,
      1.786412,
      -67.033072,
      1.920567,
      -67.065320,
      1.976886,
      -67.122996,
      2.005573,
      -67.113034,
      2.005573,
      -66.619944
    ]);
    poly[720] = _TzPolygon([
      2.005480,
      -67.641257,
      2.005265,
      -67.352973,
      1.941575,
      -67.330830,
      1.841269,
      -67.228307,
      1.831497,
      -67.153836,
      1.675037,
      -67.159221,
      1.639863,
      -67.127255,
      1.603527,
      -67.140431,
      1.454411,
      -67.082601,
      1.385457,
      -67.080170,
      1.320017,
      -67.139231,
      1.258288,
      -67.099555,
      1.167036,
      -67.086753,
      1.228959,
      -66.851191,
      1.022021,
      -66.619944,
      0.905854,
      -66.619944,
      0.905854,
      -67.641257
    ]);
    poly[721] = _TzPolygon([
      2.005573,
      -67.113034,
      2.051286,
      -67.097158,
      2.119304,
      -67.108022,
      2.136991,
      -67.121726,
      2.132836,
      -67.161579,
      2.254247,
      -67.221971,
      2.350310,
      -67.187902,
      2.398596,
      -67.221757,
      2.441948,
      -67.297092,
      2.522512,
      -67.342544,
      2.619430,
      -67.467627,
      2.663118,
      -67.490134,
      2.656898,
      -67.563265,
      2.723099,
      -67.563176,
      2.811550,
      -67.614386,
      2.795834,
      -67.655755,
      2.837544,
      -67.750423,
      2.831265,
      -67.815380,
      2.794256,
      -67.837145,
      2.789438,
      -67.864103,
      2.866229,
      -67.864331,
      3.105291,
      -67.595727,
      3.105291,
      -66.619944,
      2.005573,
      -66.619944
    ]);
    poly[722] = _TzPolygon(
        [2.005573, -68.201985, 2.034791, -68.195830, 2.005573, -68.188036]);
    poly[723] = _TzPolygon([
      2.005573,
      -67.765601,
      2.028504,
      -67.732048,
      2.047692,
      -67.550949,
      2.163124,
      -67.495186,
      2.169604,
      -67.449229,
      2.221272,
      -67.436904,
      2.230110,
      -67.400800,
      2.208507,
      -67.367659,
      2.156881,
      -67.349555,
      2.099980,
      -67.358983,
      2.063872,
      -67.326716,
      2.005573,
      -67.352835
    ]);
    poly[724] = _TzPolygon([
      3.105291,
      -67.595727,
      3.248472,
      -67.434853,
      3.245540,
      -67.382722,
      3.292584,
      -67.381603,
      3.377893,
      -67.310785,
      3.451022,
      -67.339150,
      3.479997,
      -67.401468,
      3.585236,
      -67.444072,
      3.676484,
      -67.447957,
      3.767449,
      -67.501286,
      3.752120,
      -67.606820,
      3.785550,
      -67.634427,
      4.122886,
      -67.733203,
      4.205010,
      -67.782280,
      4.205010,
      -66.619944,
      3.105291,
      -66.619944
    ]);
    poly[725] = _TzPolygon([
      7.100381,
      -70.705196,
      7.053014,
      -70.918155,
      7.023692,
      -70.921564,
      7.016364,
      -70.969778,
      6.974293,
      -71.022217,
      6.989928,
      -71.111671,
      7.008627,
      -71.103602,
      7.033085,
      -71.130990,
      7.011829,
      -71.240949,
      7.032726,
      -71.264332,
      7.015352,
      -71.369846,
      7.038959,
      -71.424624,
      7.011895,
      -71.465137,
      7.035017,
      -71.527137,
      7.015544,
      -71.588288,
      7.055197,
      -71.587724,
      7.032467,
      -71.705005,
      7.066263,
      -71.766985,
      7.062664,
      -71.814381,
      7.025662,
      -71.834959,
      7.009577,
      -71.942171,
      7.039104,
      -72.047582,
      7.252104,
      -72.173822,
      7.326996,
      -72.153844,
      7.384214,
      -72.196454,
      7.375931,
      -72.325715,
      7.396781,
      -72.353855,
      7.403337,
      -72.439423,
      7.461801,
      -72.447039,
      7.487851,
      -72.475982,
      7.559729,
      -72.452763,
      7.632628,
      -72.476482,
      7.758592,
      -72.473818,
      7.857611,
      -72.444417,
      7.943689,
      -72.487692,
      7.995381,
      -72.419223,
      8.033886,
      -72.416235,
      8.005170,
      -72.349250,
      8.080027,
      -72.350903,
      8.105806,
      -72.373707,
      8.157498,
      -72.352263,
      8.252426,
      -72.393697,
      8.357292,
      -72.391599,
      8.603884,
      -72.644071,
      8.603884,
      -70.705196
    ]);
    poly[726] = _TzPolygon([
      6.135795,
      -68.662570,
      6.152103,
      -68.706721,
      6.147410,
      -68.792712,
      6.179966,
      -68.829880,
      6.167374,
      -68.882490,
      6.192929,
      -69.014164,
      6.221698,
      -69.046177,
      6.191071,
      -69.123509,
      6.079534,
      -69.238609,
      6.088653,
      -69.308869,
      6.139971,
      -69.342134,
      6.107798,
      -69.430461,
      6.404447,
      -69.664337,
      6.404447,
      -68.662570
    ]);
    poly[727] = _TzPolygon([
      6.135795,
      -68.662570,
      6.129146,
      -68.644571,
      6.166326,
      -68.588469,
      6.148979,
      -68.541996,
      6.179067,
      -68.510085,
      6.187729,
      -68.448568,
      6.162990,
      -68.306973,
      6.228675,
      -68.141854,
      6.227096,
      -68.077686,
      6.196109,
      -68.027538,
      6.236215,
      -67.930040,
      6.324304,
      -67.810260,
      6.291432,
      -67.762033,
      6.291350,
      -67.625259,
      6.262523,
      -67.586635,
      6.266314,
      -67.547452,
      6.209354,
      -67.466974,
      6.193307,
      -67.456846,
      6.130940,
      -67.494642,
      5.994295,
      -67.410130,
      5.904291,
      -67.532367,
      5.828245,
      -67.597147,
      5.675008,
      -67.637930,
      5.565994,
      -67.620100,
      5.544089,
      -67.598886,
      5.475957,
      -67.624970,
      5.303958,
      -67.849507,
      5.196136,
      -67.824443,
      5.135225,
      -67.854283,
      5.054005,
      -67.805927,
      4.943478,
      -67.838732,
      4.707233,
      -67.817844,
      4.531179,
      -67.857593,
      4.486982,
      -67.801068,
      4.437064,
      -67.797825,
      4.418997,
      -67.773182,
      4.349345,
      -67.761610,
      4.327285,
      -67.804012,
      4.229666,
      -67.797014,
      4.205010,
      -67.782280,
      4.205010,
      -68.662570
    ]);
    poly[728] = _TzPolygon([
      7.100381,
      -70.705196,
      7.104381,
      -70.687214,
      7.068769,
      -70.641943,
      7.079320,
      -70.556335,
      7.005668,
      -70.502337,
      7.007284,
      -70.431107,
      6.980871,
      -70.416671,
      6.980913,
      -70.372112,
      6.934568,
      -70.322388,
      6.941242,
      -70.265846,
      6.974720,
      -70.224333,
      6.979704,
      -70.117865,
      6.404447,
      -69.664337,
      6.404447,
      -70.705196
    ]);
    poly[729] = _TzPolygon([
      -13.692378,
      -50.805843,
      -13.530000,
      -50.763000,
      -13.442000,
      -50.665000,
      -13.376000,
      -50.665000,
      -13.307251,
      -50.607191,
      -13.217988,
      -50.584456,
      -13.187212,
      -50.604685,
      -13.118421,
      -50.592583,
      -13.118421,
      -50.101268,
      -13.692378,
      -50.101268
    ]);
    poly[730] = _TzPolygon([
      -12.544463,
      -50.468292,
      -12.706064,
      -50.468292,
      -12.710000,
      -50.478000,
      -12.725828,
      -50.468292,
      -12.733038,
      -50.468292,
      -12.744726,
      -50.487505,
      -12.755740,
      -50.468292,
      -12.861631,
      -50.509999,
      -12.829146,
      -50.517369,
      -12.845080,
      -50.534703,
      -12.830615,
      -50.593800,
      -12.798472,
      -50.580290,
      -12.821762,
      -50.623139,
      -12.774642,
      -50.611026,
      -12.775077,
      -50.636405,
      -12.732780,
      -50.623559,
      -12.679842,
      -50.654099,
      -12.653363,
      -50.645172,
      -12.644985,
      -50.684379,
      -12.607890,
      -50.707507,
      -12.586891,
      -50.679523,
      -12.567997,
      -50.689554,
      -12.544463,
      -50.676937
    ]);
    poly[731] = _TzPolygon([
      -13.118421,
      -50.592583,
      -13.112156,
      -50.591481,
      -13.064000,
      -50.611000,
      -13.039000,
      -50.569000,
      -13.002000,
      -50.593000,
      -12.976000,
      -50.525000,
      -12.784283,
      -50.493323,
      -12.755337,
      -50.468292,
      -13.118421,
      -50.468292
    ]);
    poly[732] = _TzPolygon([
      -12.754846,
      -50.468292,
      -12.744726,
      -50.487505,
      -12.733038,
      -50.468292
    ]);
    poly[733] = _TzPolygon([
      -12.725828,
      -50.468292,
      -12.710000,
      -50.478000,
      -12.706064,
      -50.468292
    ]);
    poly[734] = _TzPolygon([
      -12.903812,
      -50.101268,
      -12.897403,
      -50.183773,
      -12.853795,
      -50.231186,
      -12.838560,
      -50.292882,
      -12.798000,
      -50.311000,
      -12.717862,
      -50.283283,
      -12.680382,
      -50.299023,
      -12.682268,
      -50.265269,
      -12.579000,
      -50.238000,
      -12.564000,
      -50.193000,
      -12.544463,
      -50.214966,
      -12.544463,
      -50.101268
    ]);
    poly[735] = _TzPolygon([
      -12.544463,
      -50.364278,
      -12.545529,
      -50.365971,
      -12.611371,
      -50.390847,
      -12.624000,
      -50.418000,
      -12.650000,
      -50.413000,
      -12.652568,
      -50.440568,
      -12.691635,
      -50.432703,
      -12.706064,
      -50.468292,
      -12.544463,
      -50.468292
    ]);
    poly[736] = _TzPolygon([
      -12.725828,
      -50.468292,
      -12.731079,
      -50.465071,
      -12.733038,
      -50.468292
    ]);
    poly[737] = _TzPolygon([
      -11.396548,
      -50.731113,
      -11.444062,
      -50.741266,
      -11.581178,
      -50.717363,
      -11.594947,
      -50.656029,
      -11.671917,
      -50.661652,
      -11.733760,
      -50.724586,
      -11.855669,
      -50.687458,
      -11.886264,
      -50.637101,
      -11.921628,
      -50.666557,
      -11.974898,
      -50.658634,
      -11.990321,
      -50.685454,
      -12.091635,
      -50.668908,
      -12.207605,
      -50.686814,
      -12.222432,
      -50.645252,
      -12.249838,
      -50.654032,
      -12.277155,
      -50.628237,
      -12.302526,
      -50.652000,
      -12.451132,
      -50.619130,
      -12.455111,
      -50.651143,
      -12.478694,
      -50.641675,
      -12.544463,
      -50.676937,
      -12.544463,
      -51.569364,
      -11.396548,
      -51.569364
    ]);
    poly[738] = _TzPolygon([
      -12.544463,
      -50.364278,
      -12.431000,
      -50.184000,
      -12.413000,
      -50.196000,
      -12.423000,
      -50.175000,
      -12.397384,
      -50.148585,
      -12.531378,
      -50.229678,
      -12.544463,
      -50.214966
    ]);
    poly[739] = _TzPolygon([
      -12.903812,
      -50.101268,
      -11.396548,
      -50.101268,
      -11.396548,
      -48.633171,
      -13.031307,
      -48.633171,
      -12.994000,
      -48.675000,
      -13.002000,
      -48.717000,
      -12.921000,
      -48.736000,
      -12.803221,
      -48.870228,
      -12.957000,
      -48.975000,
      -12.907000,
      -49.023000,
      -12.904000,
      -49.077000,
      -12.847000,
      -49.067000,
      -12.836000,
      -49.106000,
      -12.790000,
      -49.121000,
      -12.884000,
      -49.237000,
      -13.103000,
      -49.354000,
      -13.253000,
      -49.340000,
      -13.274000,
      -49.369000,
      -12.964831,
      -49.912520,
      -12.935833,
      -50.039331,
      -12.905512,
      -50.079382
    ]);
    poly[740] = _TzPolygon([
      -9.100719,
      -51.569364,
      -9.100719,
      -49.873703,
      -9.185186,
      -49.910029,
      -9.228289,
      -49.986131,
      -9.308229,
      -50.047940,
      -9.379342,
      -50.048412,
      -9.439678,
      -50.092159,
      -9.577659,
      -50.105153,
      -9.621562,
      -50.138851,
      -9.702951,
      -50.136405,
      -9.744136,
      -50.187627,
      -9.839025,
      -50.207568,
      -9.749611,
      -51.569364
    ]);
    poly[741] = _TzPolygon([
      -9.748706,
      -51.569364,
      -9.839025,
      -50.207568,
      -9.897629,
      -50.265472,
      -10.014416,
      -50.291609,
      -10.069593,
      -50.325337,
      -10.126163,
      -50.388527,
      -10.215457,
      -50.384970,
      -10.354558,
      -50.424904,
      -10.410928,
      -50.475486,
      -10.488920,
      -50.481633,
      -10.498349,
      -50.509408,
      -10.595520,
      -50.532919,
      -10.662516,
      -50.604279,
      -10.731887,
      -50.574772,
      -10.835137,
      -50.619708,
      -10.898648,
      -50.602726,
      -10.932006,
      -50.631639,
      -11.073347,
      -50.607809,
      -11.103888,
      -50.644832,
      -11.159169,
      -50.665274,
      -11.258700,
      -50.660784,
      -11.372569,
      -50.725989,
      -11.396548,
      -50.731113,
      -11.396548,
      -51.569364
    ]);
    poly[742] = _TzPolygon([
      -13.031307,
      -48.633171,
      -13.060000,
      -48.601000,
      -13.123000,
      -48.577000,
      -13.152000,
      -48.596000,
      -13.207000,
      -48.579000,
      -13.238000,
      -48.600000,
      -13.317000,
      -48.586000,
      -13.302000,
      -48.553000,
      -13.205000,
      -48.554000,
      -13.192000,
      -48.530000,
      -13.128000,
      -48.508000,
      -13.134000,
      -48.475000,
      -13.234814,
      -48.475659,
      -13.292320,
      -48.441832,
      -13.271128,
      -48.430019,
      -13.248304,
      -48.340170,
      -13.228226,
      -48.342154,
      -13.236999,
      -48.307785,
      -13.168814,
      -48.230914,
      -13.152548,
      -48.143361,
      -13.186969,
      -48.165129,
      -13.305000,
      -48.165000,
      -13.288000,
      -48.083000,
      -13.235000,
      -48.062000,
      -13.274000,
      -48.032000,
      -13.276000,
      -47.986000,
      -13.315000,
      -47.966000,
      -13.290000,
      -47.935000,
      -13.310698,
      -47.899123,
      -13.692378,
      -47.899123,
      -13.692378,
      -48.633171
    ]);
    poly[743] = _TzPolygon([
      -13.310698,
      -47.899123,
      -13.320000,
      -47.883000,
      -13.311000,
      -47.824000,
      -13.467000,
      -47.679000,
      -13.368806,
      -47.622118,
      -13.349036,
      -47.650216,
      -13.302845,
      -47.661556,
      -13.264403,
      -47.639744,
      -13.210806,
      -47.667725,
      -13.178216,
      -47.654164,
      -13.166202,
      -47.668819,
      -13.149696,
      -47.643778,
      -13.102477,
      -47.633138,
      -13.119460,
      -47.564005,
      -13.185144,
      -47.561570,
      -13.184793,
      -47.478689,
      -13.220402,
      -47.485932,
      -13.233309,
      -47.431772,
      -13.248632,
      -47.454347,
      -13.290161,
      -47.429135,
      -13.228877,
      -47.376328,
      -13.265073,
      -47.281528,
      -13.194785,
      -47.229772,
      -13.187514,
      -47.183209,
      -13.204812,
      -47.183917,
      -13.208176,
      -47.165075,
      -13.692378,
      -47.165075,
      -13.692378,
      -47.899123
    ]);
    poly[744] = _TzPolygon([
      -13.208176,
      -47.165075,
      -13.210202,
      -47.153726,
      -13.177967,
      -47.132268,
      -13.181853,
      -47.087744,
      -13.121655,
      -47.002117,
      -13.131810,
      -46.978878,
      -13.053000,
      -46.892000,
      -13.067711,
      -46.854772,
      -13.002000,
      -46.819000,
      -12.969000,
      -46.750000,
      -12.971000,
      -46.454000,
      -12.879016,
      -46.431026,
      -13.692378,
      -46.431026,
      -13.692378,
      -47.165075
    ]);
    poly[745] = _TzPolygon([
      -12.544659,
      -46.431026,
      -12.544706,
      -46.256623,
      -12.583927,
      -46.286191,
      -12.636623,
      -46.296309,
      -12.652466,
      -46.260647,
      -12.691911,
      -46.296018,
      -12.714567,
      -46.267086,
      -12.783000,
      -46.283000,
      -12.833092,
      -46.268089,
      -12.863353,
      -46.300430,
      -12.949406,
      -46.304598,
      -12.943699,
      -46.216981,
      -12.909066,
      -46.135060,
      -12.921853,
      -46.117176,
      -12.991000,
      -46.364000,
      -12.863297,
      -46.365778,
      -12.822720,
      -46.416966,
      -12.879016,
      -46.431026
    ]);
    poly[746] = _TzPolygon([
      -12.879016,
      -46.431026,
      -12.822720,
      -46.416966,
      -12.863297,
      -46.365778,
      -12.991000,
      -46.364000,
      -12.956000,
      -46.194000,
      -12.917252,
      -46.114515,
      -12.960931,
      -46.126225,
      -13.010559,
      -46.275942,
      -13.094043,
      -46.330551,
      -13.139390,
      -46.299340,
      -13.250501,
      -46.331131,
      -13.255000,
      -46.298000,
      -13.304257,
      -46.315638,
      -13.314405,
      -46.288966,
      -13.347395,
      -46.279267,
      -13.262093,
      -46.066965,
      -13.277839,
      -46.040892,
      -13.375547,
      -46.134984,
      -13.427123,
      -46.241372,
      -13.465506,
      -46.206111,
      -13.481000,
      -46.230000,
      -13.560361,
      -46.236191,
      -13.567620,
      -46.184156,
      -13.592107,
      -46.162055,
      -13.687374,
      -46.261051,
      -13.692378,
      -46.257237,
      -13.692378,
      -46.431026
    ]);
    poly[747] = _TzPolygon([
      -12.544463,
      -46.255883,
      -12.511466,
      -46.155314,
      -12.483000,
      -46.153000,
      -12.500969,
      -46.250034,
      -12.415971,
      -46.269885,
      -12.406541,
      -46.310777,
      -12.379000,
      -46.285000,
      -12.337000,
      -46.352000,
      -12.303000,
      -46.323000,
      -12.289000,
      -46.374000,
      -12.247000,
      -46.380000,
      -12.224000,
      -46.359000,
      -12.193000,
      -46.391000,
      -12.111000,
      -46.366000,
      -12.036639,
      -46.397316,
      -11.958000,
      -46.325000,
      -11.929000,
      -46.192000,
      -11.900796,
      -46.171040,
      -11.883759,
      -46.190540,
      -11.898000,
      -46.318000,
      -11.872006,
      -46.373243,
      -11.836000,
      -46.373000,
      -11.836032,
      -46.349033,
      -11.770619,
      -46.322708,
      -11.751000,
      -46.373000,
      -11.737000,
      -46.329000,
      -11.692000,
      -46.294000,
      -11.629372,
      -46.313570,
      -11.621000,
      -46.256000,
      -11.656607,
      -46.154109,
      -11.636000,
      -46.083000,
      -11.607222,
      -46.114549,
      -11.602000,
      -46.202000,
      -11.567665,
      -46.230860,
      -11.540957,
      -46.305643,
      -11.541518,
      -46.411000,
      -11.516339,
      -46.479091,
      -11.483052,
      -46.520390,
      -11.396548,
      -46.544406,
      -11.396548,
      -45.696978,
      -12.544463,
      -45.696978
    ]);
    poly[748] = _TzPolygon([
      -11.396548,
      -46.544406,
      -11.380000,
      -46.549000,
      -11.347000,
      -46.601000,
      -11.289000,
      -46.617000,
      -11.255000,
      -46.609000,
      -11.191000,
      -46.472000,
      -10.994000,
      -46.399000,
      -10.906000,
      -46.283000,
      -10.867000,
      -46.297000,
      -10.822576,
      -46.281481,
      -10.797311,
      -46.231065,
      -10.768737,
      -46.228183,
      -10.759787,
      -46.256394,
      -10.718882,
      -46.194125,
      -10.658943,
      -46.207015,
      -10.487598,
      -45.845218,
      -10.367447,
      -45.827029,
      -10.346000,
      -45.743000,
      -10.263000,
      -45.697000,
      -11.396548,
      -45.696978
    ]);
    poly[749] = _TzPolygon([
      -10.248634,
      -45.848099,
      -10.248634,
      -45.764744,
      -10.267000,
      -45.793000
    ]);
    poly[750] = _TzPolygon([
      -10.248634,
      -45.929960,
      -10.262038,
      -46.003648,
      -10.248634,
      -46.007856
    ]);
    poly[751] = _TzPolygon([
      -10.072974,
      -46.431026,
      -10.047000,
      -46.457000,
      -9.988000,
      -46.477000,
      -9.877000,
      -46.472000,
      -9.870000,
      -46.491000,
      -9.855000,
      -46.480000,
      -9.801000,
      -46.509000,
      -9.805000,
      -46.577000,
      -9.758000,
      -46.575000,
      -9.733000,
      -46.646000,
      -9.693000,
      -46.653000,
      -9.665000,
      -46.613000,
      -9.587000,
      -46.592000,
      -9.557000,
      -46.536000,
      -9.517000,
      -46.575000,
      -9.484000,
      -46.561000,
      -9.457000,
      -46.640000,
      -9.411000,
      -46.632000,
      -9.392000,
      -46.666000,
      -9.410000,
      -46.761000,
      -9.365000,
      -46.768000,
      -9.304000,
      -46.813000,
      -9.292000,
      -46.847000,
      -9.260000,
      -46.819000,
      -9.194000,
      -46.827000,
      -9.191000,
      -46.850000,
      -9.154000,
      -46.852000,
      -9.122000,
      -46.893000,
      -9.128000,
      -46.931000,
      -9.100719,
      -46.927536,
      -9.100719,
      -46.431026
    ]);
    poly[752] = _TzPolygon([
      -10.248634,
      -45.697459,
      -10.184369,
      -45.699510,
      -10.155000,
      -45.723000,
      -10.144635,
      -45.696978,
      -10.248634,
      -45.696978
    ]);
    poly[753] = _TzPolygon([
      -10.248634,
      -46.007856,
      -10.176344,
      -46.030550,
      -10.213038,
      -46.098648,
      -10.214038,
      -46.164648,
      -10.169000,
      -46.210000,
      -10.183000,
      -46.327000,
      -10.168000,
      -46.367000,
      -10.120000,
      -46.384000,
      -10.072974,
      -46.431026,
      -9.100719,
      -46.431026,
      -9.100719,
      -45.696978,
      -10.146481,
      -45.696978,
      -10.156000,
      -45.726000,
      -10.228000,
      -45.733000,
      -10.248634,
      -45.764744,
      -10.248634,
      -45.848099,
      -10.239000,
      -45.877000,
      -10.248634,
      -45.929960
    ]);
    poly[754] = _TzPolygon([
      -9.100719,
      -49.873703,
      -9.027000,
      -49.842000,
      -8.906170,
      -49.745053,
      -8.856482,
      -49.684323,
      -8.839499,
      -49.592377,
      -8.612505,
      -49.451439,
      -8.580010,
      -49.409856,
      -8.451000,
      -49.374000,
      -8.379565,
      -49.283292,
      -8.175498,
      -49.209552,
      -8.050561,
      -49.174851,
      -7.976973,
      -49.181999,
      -7.807000,
      -49.148000,
      -7.677804,
      -49.328050,
      -7.546167,
      -49.383926,
      -7.497000,
      -49.378000,
      -7.325000,
      -49.231000,
      -7.235182,
      -49.185257,
      -6.925000,
      -49.209000,
      -6.784000,
      -49.018000,
      -6.754000,
      -48.832000,
      -6.678000,
      -48.682000,
      -6.639963,
      -48.651939,
      -6.570583,
      -48.664336,
      -6.507020,
      -48.645319,
      -6.493425,
      -48.633171,
      -9.100719,
      -48.633171
    ]);
    poly[755] = _TzPolygon([
      -5.406690,
      -48.633171,
      -5.352899,
      -48.756746,
      -5.351000,
      -48.708000,
      -5.305000,
      -48.679000,
      -5.324462,
      -48.633171
    ]);
    poly[756] = _TzPolygon([
      -5.324462,
      -48.633171,
      -5.305000,
      -48.679000,
      -5.351000,
      -48.708000,
      -5.349680,
      -48.756078,
      -5.253833,
      -48.633171
    ]);
    poly[757] = _TzPolygon([
      -7.878427,
      -47.165075,
      -7.855996,
      -47.175725,
      -7.816251,
      -47.245438,
      -7.758117,
      -47.246762,
      -7.760829,
      -47.267205,
      -7.730288,
      -47.275092,
      -7.730635,
      -47.314195,
      -7.690078,
      -47.302592,
      -7.666745,
      -47.338576,
      -7.659538,
      -47.315140,
      -7.616037,
      -47.358027,
      -7.624544,
      -47.373729,
      -7.648132,
      -47.353403,
      -7.654268,
      -47.382371,
      -7.568361,
      -47.399248,
      -7.556380,
      -47.439519,
      -7.527798,
      -47.425125,
      -7.518483,
      -47.461732,
      -7.533825,
      -47.475309,
      -7.439870,
      -47.501588,
      -7.439316,
      -47.591812,
      -7.372367,
      -47.487733,
      -7.298306,
      -47.496660,
      -7.267826,
      -47.532880,
      -7.265102,
      -47.588670,
      -7.305968,
      -47.647722,
      -7.249436,
      -47.680166,
      -7.202985,
      -47.747027,
      -7.161428,
      -47.742392,
      -7.142181,
      -47.715956,
      -7.144396,
      -47.643000,
      -6.985452,
      -47.531935,
      -6.907237,
      -47.506701,
      -6.833442,
      -47.529703,
      -6.804889,
      -47.516896,
      -6.804889,
      -47.165075
    ]);
    poly[758] = _TzPolygon([
      -7.878427,
      -47.165075,
      -7.924883,
      -47.143017,
      -7.937121,
      -47.108279,
      -7.990091,
      -47.107681,
      -7.998242,
      -47.067543,
      -8.053163,
      -47.045541,
      -8.066565,
      -46.997502,
      -8.005942,
      -46.953601,
      -7.985700,
      -46.895493,
      -7.955249,
      -46.872846,
      -7.964359,
      -46.830455,
      -7.922890,
      -46.756394,
      -7.896000,
      -46.614000,
      -7.920000,
      -46.562000,
      -8.012000,
      -46.477000,
      -8.074000,
      -46.467000,
      -8.166000,
      -46.514000,
      -8.200000,
      -46.487000,
      -8.270000,
      -46.507000,
      -8.319000,
      -46.543000,
      -8.321000,
      -46.641000,
      -8.351000,
      -46.706000,
      -8.383000,
      -46.726000,
      -8.368000,
      -46.782000,
      -8.399000,
      -46.787000,
      -8.399000,
      -46.806000,
      -8.446000,
      -46.796000,
      -8.476000,
      -46.851000,
      -8.533000,
      -46.846000,
      -8.595000,
      -46.916000,
      -8.601000,
      -46.897000,
      -8.648000,
      -46.916000,
      -8.686000,
      -46.887000,
      -8.726000,
      -46.931000,
      -8.778000,
      -46.904000,
      -8.847000,
      -46.913000,
      -8.880000,
      -46.993000,
      -8.914000,
      -46.970000,
      -8.953000,
      -47.018000,
      -8.988000,
      -47.021000,
      -8.979000,
      -47.035000,
      -9.012000,
      -47.068000,
      -9.026000,
      -47.043000,
      -9.063000,
      -47.068000,
      -9.082000,
      -47.007000,
      -9.065000,
      -46.923000,
      -9.100719,
      -46.927536,
      -9.100719,
      -47.165075
    ]);
    poly[759] = _TzPolygon([
      -5.656975,
      -48.633171,
      -5.656975,
      -48.156071,
      -5.709958,
      -48.173579,
      -5.725504,
      -48.272526,
      -5.751209,
      -48.293495,
      -5.839441,
      -48.290797,
      -5.946152,
      -48.231613,
      -6.004288,
      -48.334699,
      -6.038282,
      -48.332694,
      -6.070405,
      -48.285771,
      -6.116904,
      -48.303836,
      -6.177306,
      -48.431919,
      -6.298599,
      -48.417104,
      -6.328617,
      -48.381163,
      -6.375638,
      -48.381301,
      -6.350940,
      -48.500196,
      -6.453741,
      -48.613134,
      -6.496713,
      -48.633171
    ]);
    poly[760] = _TzPolygon([
      -6.804889,
      -47.516896,
      -6.753839,
      -47.493998,
      -6.661265,
      -47.496229,
      -6.488004,
      -47.417265,
      -6.429839,
      -47.433230,
      -6.266000,
      -47.377000,
      -6.112000,
      -47.433000,
      -6.039000,
      -47.428000,
      -5.993000,
      -47.448000,
      -5.869000,
      -47.431000,
      -5.730000,
      -47.493000,
      -5.662000,
      -47.473000,
      -5.656975,
      -47.473990,
      -5.656975,
      -47.165075,
      -6.804889,
      -47.165075
    ]);
    poly[761] = _TzPolygon([
      -5.656975,
      -48.149720,
      -5.618144,
      -48.132234,
      -5.554253,
      -48.212586,
      -5.523020,
      -48.300691,
      -5.395996,
      -48.381593,
      -5.429833,
      -48.513886,
      -5.422558,
      -48.596716,
      -5.406690,
      -48.633171,
      -5.324462,
      -48.633171,
      -5.336000,
      -48.606000,
      -5.283000,
      -48.568000,
      -5.230000,
      -48.561000,
      -5.193000,
      -48.523000,
      -5.168000,
      -48.363000,
      -5.260000,
      -48.178000,
      -5.275000,
      -48.079000,
      -5.234000,
      -48.004000,
      -5.260000,
      -47.885000,
      -5.376000,
      -47.843000,
      -5.380000,
      -47.744000,
      -5.459000,
      -47.618000,
      -5.465000,
      -47.555000,
      -5.565000,
      -47.483000,
      -5.656975,
      -47.473518
    ]);
    poly[762] = _TzPolygon([
      -4.509060,
      -47.577612,
      -4.557372,
      -47.611933,
      -4.608632,
      -47.679948,
      -4.586425,
      -47.792559,
      -5.070390,
      -48.396258,
      -5.073671,
      -48.440315,
      -5.098137,
      -48.433519,
      -5.253833,
      -48.633171,
      -4.509060,
      -48.633171
    ]);
    poly[763] = _TzPolygon([
      -5.397041,
      -48.633171,
      -5.422558,
      -48.596716,
      -5.429833,
      -48.513886,
      -5.395996,
      -48.381593,
      -5.523020,
      -48.300691,
      -5.602704,
      -48.138137,
      -5.656975,
      -48.156071,
      -5.656975,
      -48.633171
    ]);
    poly[764] = _TzPolygon([
      -4.509060,
      -47.577612,
      -4.403721,
      -47.502780,
      -4.315058,
      -47.474727,
      -4.245600,
      -47.371761,
      -4.048590,
      -47.320411,
      -4.058926,
      -47.304202,
      -3.997500,
      -47.240367,
      -3.983435,
      -47.188670,
      -3.923936,
      -47.172673,
      -3.918023,
      -47.165075,
      -4.509060,
      -47.165075
    ]);
    poly[765] = _TzPolygon([
      -3.361145,
      -47.165075,
      -3.361145,
      -46.911764,
      -3.377694,
      -46.943736,
      -3.477093,
      -46.947728,
      -3.494726,
      -46.981203,
      -3.529812,
      -46.975664,
      -3.562288,
      -47.038954,
      -3.599278,
      -47.027046,
      -3.655079,
      -47.056735,
      -3.668470,
      -47.037169,
      -3.855893,
      -47.085241,
      -3.918023,
      -47.165075
    ]);
    poly[766] = _TzPolygon([
      -3.361145,
      -46.911764,
      -3.310148,
      -46.813238,
      -3.297896,
      -46.826665,
      -3.243889,
      -46.804763,
      -3.215703,
      -46.754245,
      -3.178230,
      -46.771359,
      -3.189384,
      -46.750557,
      -3.165592,
      -46.748191,
      -3.157460,
      -46.720290,
      -3.122403,
      -46.747861,
      -3.109215,
      -46.719025,
      -3.126579,
      -46.705322,
      -3.101247,
      -46.706478,
      -3.094763,
      -46.675825,
      -3.034810,
      -46.677751,
      -3.012059,
      -46.657500,
      -2.998650,
      -46.672964,
      -2.996397,
      -46.651171,
      -2.970537,
      -46.646776,
      -2.948735,
      -46.670899,
      -2.931028,
      -46.653691,
      -2.882774,
      -46.679822,
      -2.880112,
      -46.633950,
      -2.851671,
      -46.639798,
      -2.858185,
      -46.612505,
      -2.829515,
      -46.613419,
      -2.842045,
      -46.574537,
      -2.789393,
      -46.601788,
      -2.805077,
      -46.619194,
      -2.792297,
      -46.637056,
      -2.754124,
      -46.635727,
      -2.758107,
      -46.650516,
      -2.729103,
      -46.652260,
      -2.733211,
      -46.673820,
      -2.705767,
      -46.669487,
      -2.684148,
      -46.632723,
      -2.643855,
      -46.616895,
      -2.665516,
      -46.591347,
      -2.633383,
      -46.580935,
      -2.615871,
      -46.505995,
      -2.536897,
      -46.488630,
      -2.534345,
      -46.431026,
      -3.361145,
      -46.431026
    ]);
    poly[767] = _TzPolygon(
        [-2.473229, -46.431026, -2.418928, -46.441536, -2.403426, -46.431026]);
    poly[768] = _TzPolygon(
        [-2.372118, -46.431026, -2.374343, -46.466752, -2.332935, -46.431026]);
    poly[769] = _TzPolygon([
      -2.213230,
      -46.344550,
      -2.249627,
      -46.382844,
      -2.237261,
      -46.431026,
      -2.213230,
      -46.431026
    ]);
    poly[770] = _TzPolygon(
        [-2.237850, -46.431026, -2.270263, -46.415345, -2.332935, -46.431026]);
    poly[771] = _TzPolygon(
        [-2.372118, -46.431026, -2.370737, -46.408864, -2.403426, -46.431026]);
    poly[772] = _TzPolygon(
        [-2.473229, -46.431026, -2.533826, -46.419298, -2.534345, -46.431026]);
    poly[773] = _TzPolygon([
      -2.213230,
      -46.344550,
      -2.154732,
      -46.283003,
      -2.140406,
      -46.302664,
      -2.119064,
      -46.271699,
      -2.055695,
      -46.274354,
      -1.914142,
      -46.222282,
      -1.882624,
      -46.244494,
      -1.832465,
      -46.210261,
      -1.795441,
      -46.255300,
      -1.805730,
      -46.311426,
      -1.761297,
      -46.322212,
      -1.728546,
      -46.303525,
      -1.732026,
      -46.221973,
      -1.681433,
      -46.156636,
      -1.629189,
      -46.164451,
      -1.579437,
      -46.133064,
      -1.517989,
      -46.143580,
      -1.474909,
      -46.175964,
      -1.441682,
      -46.138480,
      -1.420988,
      -46.153623,
      -1.337668,
      -46.103532,
      -1.332389,
      -46.130347,
      -1.285547,
      -46.160436,
      -1.247109,
      -46.139842,
      -1.227820,
      -46.151203,
      -1.201486,
      -46.094943,
      -0.759383,
      -45.943794,
      -0.832976,
      -45.696978,
      -2.213230,
      -45.696978
    ]);
    poly[774] = _TzPolygon([
      -10.477527,
      -45.422756,
      -10.477527,
      -44.026742,
      -10.582053,
      -44.074150,
      -10.644000,
      -44.153000,
      -10.615000,
      -44.208000,
      -10.624000,
      -44.264000,
      -10.548000,
      -44.333000,
      -10.606000,
      -44.398000,
      -10.606193,
      -44.452010,
      -10.650000,
      -44.504000,
      -10.626000,
      -44.577000,
      -10.670695,
      -44.617842,
      -10.682000,
      -44.666000,
      -10.761741,
      -44.669426,
      -10.775770,
      -44.743468,
      -10.804000,
      -44.759000,
      -10.808000,
      -44.788000,
      -10.900000,
      -44.844000,
      -10.883040,
      -44.859037,
      -10.928056,
      -44.931457,
      -10.840268,
      -45.073164,
      -10.822000,
      -45.248000,
      -10.775873,
      -45.268381,
      -10.732000,
      -45.358000,
      -10.653676,
      -45.382851,
      -10.629463,
      -45.432561,
      -10.559340,
      -45.446847,
      -10.507000,
      -45.447000
    ]);
    poly[775] = _TzPolygon([
      -10.477527,
      -45.422756,
      -10.445000,
      -45.396000,
      -10.421081,
      -45.426411,
      -10.360000,
      -45.430000,
      -10.281999,
      -45.520890,
      -10.111557,
      -45.590503,
      -10.146481,
      -45.696978,
      -7.262677,
      -45.696978,
      -7.262677,
      -42.929790,
      -9.521088,
      -42.929790,
      -9.518000,
      -42.946000,
      -9.405803,
      -42.975005,
      -9.419000,
      -43.057000,
      -9.394160,
      -43.062035,
      -9.371000,
      -43.119000,
      -9.378729,
      -43.160720,
      -9.420000,
      -43.191000,
      -9.399618,
      -43.213944,
      -9.424215,
      -43.280005,
      -9.356036,
      -43.369740,
      -9.272000,
      -43.427000,
      -9.265000,
      -43.485000,
      -9.414411,
      -43.680771,
      -9.446293,
      -43.776005,
      -9.550014,
      -43.851280,
      -9.637000,
      -43.842000,
      -9.692000,
      -43.799000,
      -9.762000,
      -43.785000,
      -9.839000,
      -43.653000,
      -9.913000,
      -43.709000,
      -9.929000,
      -43.690000,
      -9.966000,
      -43.703000,
      -10.008968,
      -43.661865,
      -10.077000,
      -43.693000,
      -10.079821,
      -43.765831,
      -10.179861,
      -43.779005,
      -10.250661,
      -43.837480,
      -10.304000,
      -43.838000,
      -10.383785,
      -43.914419,
      -10.428977,
      -43.918148,
      -10.432416,
      -43.973781,
      -10.407645,
      -44.023301,
      -10.477527,
      -44.026742
    ]);
    poly[776] = _TzPolygon([
      -9.522465,
      -42.929790,
      -9.526000,
      -42.904000,
      -9.563117,
      -42.873630,
      -9.550000,
      -42.837000,
      -9.620605,
      -42.819823,
      -9.619662,
      -42.771478,
      -9.558000,
      -42.718000,
      -9.531000,
      -42.720000,
      -9.549000,
      -42.680000,
      -9.541604,
      -42.623740,
      -9.496000,
      -42.586000,
      -9.493000,
      -42.491000,
      -9.462000,
      -42.489000,
      -9.456000,
      -42.440000,
      -9.411307,
      -42.420782,
      -9.377000,
      -42.359000,
      -9.316404,
      -42.316777,
      -9.283625,
      -42.234362,
      -9.286630,
      -42.132157,
      -9.249000,
      -42.022000,
      -9.266000,
      -42.000000,
      -9.248000,
      -41.972000,
      -9.278845,
      -41.921380,
      -9.237000,
      -41.870000,
      -9.242000,
      -41.838000,
      -9.148000,
      -41.800000,
      -9.094000,
      -41.735000,
      -9.016255,
      -41.726838,
      -9.012000,
      -41.680000,
      -8.957000,
      -41.605000,
      -8.959892,
      -41.546196,
      -10.477527,
      -41.546196,
      -10.477527,
      -42.929790
    ]);
    poly[777] = _TzPolygon([
      -8.870102,
      -41.505075,
      -8.960000,
      -41.544000,
      -8.959892,
      -41.546196,
      -8.870102,
      -41.546196
    ]);
    poly[778] = _TzPolygon([
      -8.870102,
      -40.899999,
      -8.870102,
      -40.162602,
      -9.087664,
      -40.162602,
      -9.053620,
      -40.226410,
      -9.064809,
      -40.257343,
      -9.355719,
      -40.340339,
      -9.373324,
      -40.380828,
      -9.353749,
      -40.423192,
      -9.420253,
      -40.466160,
      -9.405802,
      -40.516439,
      -9.458309,
      -40.555593,
      -9.476359,
      -40.619373,
      -9.444059,
      -40.721872,
      -9.448434,
      -40.775842,
      -9.401902,
      -40.742315,
      -9.336000,
      -40.737000,
      -9.313000,
      -40.755000,
      -9.278000,
      -40.687000,
      -9.233162,
      -40.694383,
      -9.159000,
      -40.667000,
      -9.081863,
      -40.819049,
      -8.952000,
      -40.851000
    ]);
    poly[779] = _TzPolygon([
      -8.870102,
      -41.505075,
      -8.863000,
      -41.502000,
      -8.802000,
      -41.424000,
      -8.707000,
      -41.381000,
      -8.736100,
      -41.281538,
      -8.704702,
      -41.226978,
      -8.703797,
      -41.113710,
      -8.752674,
      -41.124569,
      -8.781964,
      -41.101761,
      -8.785876,
      -41.036234,
      -8.843561,
      -41.021241,
      -8.823417,
      -40.979094,
      -8.843379,
      -40.955093,
      -8.835000,
      -40.921000,
      -8.870102,
      -40.899999
    ]);
    poly[780] = _TzPolygon([
      -8.066389,
      -41.546196,
      -8.066389,
      -40.590084,
      -8.095330,
      -40.603123,
      -8.138808,
      -40.589698,
      -8.139449,
      -40.633951,
      -8.223494,
      -40.707256,
      -8.253304,
      -40.782482,
      -8.301933,
      -40.779880,
      -8.321909,
      -40.819509,
      -8.363494,
      -40.820098,
      -8.380528,
      -40.850212,
      -8.357310,
      -40.893472,
      -8.421627,
      -40.901535,
      -8.446326,
      -40.925149,
      -8.400300,
      -40.999953,
      -8.436657,
      -41.043718,
      -8.480474,
      -41.051099,
      -8.472503,
      -41.078927,
      -8.518533,
      -41.095584,
      -8.541956,
      -41.126733,
      -8.533119,
      -41.149250,
      -8.583091,
      -41.168746,
      -8.601820,
      -41.212288,
      -8.644155,
      -41.213543,
      -8.660839,
      -41.287434,
      -8.708357,
      -41.336917,
      -8.707000,
      -41.381000,
      -8.802000,
      -41.424000,
      -8.863000,
      -41.502000,
      -8.870102,
      -41.505075,
      -8.870102,
      -41.546196
    ]);
    poly[781] = _TzPolygon([
      -8.066389,
      -40.590084,
      -7.964597,
      -40.544222,
      -7.845993,
      -40.540459,
      -7.808759,
      -40.568405,
      -7.764829,
      -40.672072,
      -7.651360,
      -40.621990,
      -7.484437,
      -40.715536,
      -7.456356,
      -40.701201,
      -7.392691,
      -40.548464,
      -7.318450,
      -40.523723,
      -7.368168,
      -40.393878,
      -7.303000,
      -40.318000,
      -7.301000,
      -40.263000,
      -7.358000,
      -40.195000,
      -7.365500,
      -40.162602,
      -8.066389,
      -40.162602
    ]);
    poly[782] = _TzPolygon([
      -10.996508,
      -38.150959,
      -10.989100,
      -38.169865,
      -10.943094,
      -38.180882,
      -10.915598,
      -38.227116,
      -10.823000,
      -38.245000,
      -10.760454,
      -38.209420,
      -10.711876,
      -38.209194,
      -10.713416,
      -38.150959
    ]);
    poly[783] = _TzPolygon([
      -10.477527,
      -37.830002,
      -10.507128,
      -37.812934,
      -10.549990,
      -37.840595,
      -10.691000,
      -37.814000,
      -10.759000,
      -37.985000,
      -10.696816,
      -38.049217,
      -10.715615,
      -38.067819,
      -10.713416,
      -38.150959,
      -10.477527,
      -38.150959
    ]);
    poly[784] = _TzPolygon([
      -10.996508,
      -38.150959,
      -11.015465,
      -38.102576,
      -11.171866,
      -38.062035,
      -11.193788,
      -37.973766,
      -11.271176,
      -37.986544,
      -11.285007,
      -38.014922,
      -11.374263,
      -37.969081,
      -11.392738,
      -37.977837,
      -11.394521,
      -37.952903,
      -11.424283,
      -37.944280,
      -11.401494,
      -37.927887,
      -11.407926,
      -37.905827,
      -11.438341,
      -37.898936,
      -11.426324,
      -37.867360,
      -11.433506,
      -37.880199,
      -11.443227,
      -37.847884,
      -11.466675,
      -37.864241,
      -11.496979,
      -37.808704,
      -11.516852,
      -37.812183,
      -11.525184,
      -37.757500,
      -11.553604,
      -37.726724,
      -11.540075,
      -37.702440,
      -11.566795,
      -37.689527,
      -11.564462,
      -37.669953,
      -11.516666,
      -37.651076,
      -11.538825,
      -37.614597,
      -11.531555,
      -37.580674,
      -11.551977,
      -37.578490,
      -11.548601,
      -37.519892,
      -11.443058,
      -37.345636,
      -11.566876,
      -37.188891,
      -12.342119,
      -37.602013,
      -12.758442,
      -37.896682,
      -13.023639,
      -38.150959
    ]);
    poly[785] = _TzPolygon([
      -8.870102,
      -39.900631,
      -8.946297,
      -39.881876,
      -9.050080,
      -39.960302,
      -9.058922,
      -40.066717,
      -9.104982,
      -40.130142,
      -9.087664,
      -40.162602,
      -8.870102,
      -40.162602
    ]);
    poly[786] = _TzPolygon([
      -10.477527,
      -37.830002,
      -10.427441,
      -37.858882,
      -10.378628,
      -37.838096,
      -10.332944,
      -37.734469,
      -10.003340,
      -37.827808,
      -9.971000,
      -37.957000,
      -9.916000,
      -37.997000,
      -9.816323,
      -37.966554,
      -9.770450,
      -38.032473,
      -9.697284,
      -38.045032,
      -9.673815,
      -38.017995,
      -9.673815,
      -37.395413,
      -10.477527,
      -37.395413
    ]);
    poly[787] = _TzPolygon([
      -9.440806,
      -38.087210,
      -9.441517,
      -38.153353,
      -9.417717,
      -38.204447,
      -9.384757,
      -38.194388,
      -9.329000,
      -38.237000,
      -9.284869,
      -38.173426,
      -9.217604,
      -38.144180,
      -9.174213,
      -38.093824,
      -9.173042,
      -38.087210
    ]);
    poly[788] = _TzPolygon([
      -8.870102,
      -38.087210,
      -9.173042,
      -38.087210,
      -9.174213,
      -38.093824,
      -9.217604,
      -38.144180,
      -9.284869,
      -38.173426,
      -9.329000,
      -38.237000,
      -9.141890,
      -38.313040,
      -9.076336,
      -38.318599,
      -9.043619,
      -38.285984,
      -9.013298,
      -38.297412,
      -8.987093,
      -38.331130,
      -9.044636,
      -38.398937,
      -9.020046,
      -38.472949,
      -8.960360,
      -38.510792,
      -8.870102,
      -38.480187
    ]);
    poly[789] = _TzPolygon([
      -8.870102,
      -38.587455,
      -8.936987,
      -38.605652,
      -8.988009,
      -38.647331,
      -8.967323,
      -38.679775,
      -8.870102,
      -38.700880
    ]);
    poly[790] = _TzPolygon([
      -9.440806,
      -38.087210,
      -9.440725,
      -38.079699,
      -9.498061,
      -37.999748,
      -9.599740,
      -38.040243,
      -9.647294,
      -37.987442,
      -9.673815,
      -38.017995,
      -9.673815,
      -38.087210
    ]);
    poly[791] = _TzPolygon([
      -8.870102,
      -37.798192,
      -8.884960,
      -37.825003,
      -8.974046,
      -37.834476,
      -9.154820,
      -37.984325,
      -9.173042,
      -38.087210,
      -8.870102,
      -38.087210
    ]);
    poly[792] = _TzPolygon([
      -9.025042,
      -37.395413,
      -9.009283,
      -37.410992,
      -8.993360,
      -37.493205,
      -8.968132,
      -37.499862,
      -8.959930,
      -37.531377,
      -8.969040,
      -37.597362,
      -9.003746,
      -37.637978,
      -8.991062,
      -37.698244,
      -8.974468,
      -37.672228,
      -8.870102,
      -37.739949,
      -8.870102,
      -37.395413
    ]);
    poly[793] = _TzPolygon([
      -8.870102,
      -39.900631,
      -8.859220,
      -39.903309,
      -8.827261,
      -39.891612,
      -8.785954,
      -39.675018,
      -8.659776,
      -39.694122,
      -8.656109,
      -39.610345,
      -8.526006,
      -39.383090,
      -8.556779,
      -39.344434,
      -8.568614,
      -39.274847,
      -8.687226,
      -39.216939,
      -8.681626,
      -39.182950,
      -8.709840,
      -39.146651,
      -8.734273,
      -39.036960,
      -8.798403,
      -38.953875,
      -8.783810,
      -38.793415,
      -8.796716,
      -38.779007,
      -8.870102,
      -38.779007
    ]);
    poly[794] = _TzPolygon([
      -7.365500,
      -40.162602,
      -7.383000,
      -40.087000,
      -7.325210,
      -39.851448,
      -7.335000,
      -39.715000,
      -7.372000,
      -39.653000,
      -7.425000,
      -39.629000,
      -7.430746,
      -39.571274,
      -7.483942,
      -39.545853,
      -7.464000,
      -39.502000,
      -7.474000,
      -39.458000,
      -7.538000,
      -39.485000,
      -7.575000,
      -39.472000,
      -7.573000,
      -39.435000,
      -7.604000,
      -39.419000,
      -7.614000,
      -39.372000,
      -7.666000,
      -39.305000,
      -7.660159,
      -39.272504,
      -7.705000,
      -39.252000,
      -7.689000,
      -39.208000,
      -7.723549,
      -39.135682,
      -7.775792,
      -39.099994,
      -7.857991,
      -39.091019,
      -7.819305,
      -39.053756,
      -7.812238,
      -39.015771,
      -7.840219,
      -39.001137,
      -7.844007,
      -38.961835,
      -7.758000,
      -38.939000,
      -7.747000,
      -38.881000,
      -7.711000,
      -38.869000,
      -7.719000,
      -38.828000,
      -7.664000,
      -38.819000,
      -7.661922,
      -38.779007,
      -8.066389,
      -38.779007,
      -8.066389,
      -40.162602
    ]);
    poly[795] = _TzPolygon(
        [-8.796716, -38.779007, -8.870102, -38.697086, -8.870102, -38.779007]);
    poly[796] = _TzPolygon([
      -8.870102,
      -38.596874,
      -8.859881,
      -38.594353,
      -8.821451,
      -38.556775,
      -8.819460,
      -38.526378,
      -8.861840,
      -38.477386,
      -8.870102,
      -38.481186
    ]);
    poly[797] = _TzPolygon([
      -7.357409,
      -37.395413,
      -7.364822,
      -37.496038,
      -7.395054,
      -37.486958,
      -7.472953,
      -37.533067,
      -7.532511,
      -37.630378,
      -7.523137,
      -37.659530,
      -7.550584,
      -37.706506,
      -7.619522,
      -37.755848,
      -7.662889,
      -37.750648,
      -7.625798,
      -37.785828,
      -7.651969,
      -37.857159,
      -7.694737,
      -37.902747,
      -7.713626,
      -37.894335,
      -7.715112,
      -37.923935,
      -7.777577,
      -37.970600,
      -7.748000,
      -38.039000,
      -7.772324,
      -38.069478,
      -7.830000,
      -38.077000,
      -7.779909,
      -38.164219,
      -7.830726,
      -38.238571,
      -7.830922,
      -38.285707,
      -7.763196,
      -38.299817,
      -7.764607,
      -38.316760,
      -7.716313,
      -38.312029,
      -7.677162,
      -38.357496,
      -7.730493,
      -38.409508,
      -7.717581,
      -38.455018,
      -7.751482,
      -38.500548,
      -7.755681,
      -38.589958,
      -7.677637,
      -38.642084,
      -7.621919,
      -38.715113,
      -7.660000,
      -38.742000,
      -7.661922,
      -38.779007,
      -7.262677,
      -38.779007,
      -7.262677,
      -37.395413
    ]);
    poly[798] = _TzPolygon(
        [-8.870102, -37.798287, -8.846362, -37.755354, -8.870102, -37.739949]);
    poly[799] = _TzPolygon([
      -8.870102,
      -37.395413,
      -8.870102,
      -35.918307,
      -8.902397,
      -35.963395,
      -8.915000,
      -36.064000,
      -8.955000,
      -36.126000,
      -9.017000,
      -36.111000,
      -9.044786,
      -36.195725,
      -9.103490,
      -36.236458,
      -9.103924,
      -36.268391,
      -9.171277,
      -36.262445,
      -9.172362,
      -36.309791,
      -9.220000,
      -36.353000,
      -9.229569,
      -36.419799,
      -9.212100,
      -36.437004,
      -9.262408,
      -36.491338,
      -9.292583,
      -36.571840,
      -9.332135,
      -36.567469,
      -9.341508,
      -36.605047,
      -9.271457,
      -36.761772,
      -9.288628,
      -36.836041,
      -9.268084,
      -36.871259,
      -9.299021,
      -36.915820,
      -9.383022,
      -36.946486,
      -9.352613,
      -37.003364,
      -9.315715,
      -37.024290,
      -9.317540,
      -37.057584,
      -9.281788,
      -37.057200,
      -9.246362,
      -37.090672,
      -9.240931,
      -37.116475,
      -9.275705,
      -37.164334,
      -9.239102,
      -37.158947,
      -9.215482,
      -37.198315,
      -9.240000,
      -37.234000,
      -9.160000,
      -37.262000,
      -9.025042,
      -37.395413
    ]);
  }
}

class _Initializer9 {
  static void _init() {
    poly[800] = _TzPolygon([
      -8.870102,
      -34.914857,
      -8.989445,
      -34.963436,
      -8.913959,
      -35.154664,
      -8.890561,
      -35.171232,
      -8.870102,
      -35.288689
    ]);
    poly[801] = _TzPolygon([
      -8.870102,
      -35.614737,
      -8.882510,
      -35.633650,
      -8.916685,
      -35.748088,
      -8.897076,
      -35.782670,
      -8.870102,
      -35.777838
    ]);
    poly[802] = _TzPolygon(
        [-8.870102, -35.837774, -8.872459, -35.842204, -8.870102, -35.849200]);
    poly[803] = _TzPolygon([
      -8.066389,
      -37.146464,
      -8.066389,
      -36.641486,
      -8.079809,
      -36.658682,
      -8.111050,
      -36.628612,
      -8.140773,
      -36.693862,
      -8.155679,
      -36.687036,
      -8.150965,
      -36.722810,
      -8.167316,
      -36.715781,
      -8.196294,
      -36.761570,
      -8.190509,
      -36.797395,
      -8.240820,
      -36.895950,
      -8.299273,
      -36.954629,
      -8.302955,
      -36.991154,
      -8.264560,
      -37.043334,
      -8.266374,
      -37.081202,
      -8.230102,
      -37.067418,
      -8.233707,
      -37.100428,
      -8.209066,
      -37.122915,
      -8.175352,
      -37.118260,
      -8.165762,
      -37.163616,
      -8.117945,
      -37.142558
    ]);
    poly[804] = _TzPolygon([
      -7.357409,
      -37.395413,
      -7.356694,
      -37.385714,
      -7.337028,
      -37.349512,
      -7.288283,
      -37.330586,
      -7.272954,
      -37.241907,
      -7.336595,
      -37.165341,
      -7.386044,
      -37.025623,
      -7.440197,
      -37.021226,
      -7.482262,
      -36.984226,
      -7.518336,
      -37.087455,
      -7.574715,
      -37.163569,
      -7.635298,
      -37.197946,
      -7.741934,
      -37.140003,
      -7.779844,
      -37.151951,
      -7.819002,
      -37.243656,
      -7.842250,
      -37.222093,
      -7.846804,
      -37.247150,
      -7.874900,
      -37.244648,
      -7.910502,
      -37.322172,
      -7.934176,
      -37.308976,
      -7.946644,
      -37.349904,
      -7.974956,
      -37.357368,
      -7.960598,
      -37.192676,
      -7.982867,
      -37.193395,
      -8.015264,
      -37.150338,
      -8.066389,
      -37.146464,
      -8.066389,
      -37.395413
    ]);
    poly[805] = _TzPolygon([
      -8.066389,
      -36.641486,
      -8.055749,
      -36.627852,
      -7.947897,
      -36.611877,
      -7.957434,
      -36.573482,
      -7.900998,
      -36.563879,
      -7.924763,
      -36.480136,
      -7.915283,
      -36.444110,
      -7.815778,
      -36.424048,
      -7.806687,
      -36.309131,
      -7.832077,
      -36.261333,
      -7.817681,
      -36.240012,
      -7.792145,
      -36.252000,
      -7.764104,
      -36.216634,
      -7.789903,
      -36.200958,
      -7.779056,
      -36.080932,
      -7.807344,
      -36.011819,
      -8.066389,
      -36.011819
    ]);
    poly[806] = _TzPolygon([
      -7.500578,
      -34.628225,
      -7.579204,
      -34.634021,
      -7.538311,
      -34.959296,
      -7.461997,
      -34.985000,
      -7.398000,
      -35.070000,
      -7.397943,
      -35.190783,
      -7.374681,
      -35.248589,
      -7.406804,
      -35.335021,
      -7.440261,
      -35.351103,
      -7.471900,
      -35.414605,
      -7.453411,
      -35.450370,
      -7.482206,
      -35.494312,
      -7.580643,
      -35.537272,
      -7.585021,
      -35.515194,
      -7.621666,
      -35.531687,
      -7.643247,
      -35.515070,
      -7.654818,
      -35.532812,
      -7.653779,
      -35.609662,
      -7.695248,
      -35.646429,
      -7.707551,
      -35.683556,
      -7.691000,
      -35.700000,
      -7.738000,
      -35.780000,
      -7.750055,
      -35.873721,
      -7.792000,
      -35.905000,
      -7.789000,
      -35.970000,
      -7.813000,
      -35.998000,
      -7.807344,
      -36.011819,
      -7.262677,
      -36.011819,
      -7.262677,
      -34.628225
    ]);
    poly[807] = _TzPolygon(
        [-8.870102, -35.918555, -8.854268, -35.896200, -8.870102, -35.849200]);
    poly[808] = _TzPolygon([
      -8.870102,
      -35.837928,
      -8.846933,
      -35.795899,
      -8.857991,
      -35.775669,
      -8.870102,
      -35.777838
    ]);
    poly[809] = _TzPolygon([
      -8.870102,
      -35.614737,
      -8.820224,
      -35.538710,
      -8.813128,
      -35.470125,
      -8.841230,
      -35.454446,
      -8.870102,
      -35.288689
    ]);
    poly[810] = _TzPolygon([
      -12.365968,
      -64.499112,
      -12.352837,
      -64.513848,
      -12.307635,
      -64.499112
    ]);
    poly[811] = _TzPolygon([
      -12.271131,
      -64.499112,
      -12.224617,
      -64.512818,
      -12.240862,
      -64.553698,
      -12.209966,
      -64.576442,
      -12.182029,
      -64.704142,
      -12.106357,
      -64.709650,
      -12.106357,
      -64.499112
    ]);
    poly[812] = _TzPolygon([
      -12.106357,
      -64.727094,
      -12.153883,
      -64.762605,
      -12.106357,
      -64.759576
    ]);
    poly[813] = _TzPolygon([
      -12.106357,
      -64.499112,
      -12.106357,
      -64.709650,
      -12.085084,
      -64.711199,
      -12.106357,
      -64.727094,
      -12.106357,
      -64.759576,
      -12.096270,
      -64.758933,
      -12.086325,
      -64.803680,
      -12.009934,
      -64.841233,
      -12.026686,
      -64.917729,
      -11.992795,
      -64.946952,
      -12.018429,
      -64.977854,
      -11.996007,
      -65.033496,
      -11.962479,
      -65.042237,
      -11.925706,
      -65.020423,
      -11.888924,
      -65.029705,
      -11.872954,
      -65.070546,
      -11.791463,
      -65.059477,
      -11.708204,
      -65.086718,
      -11.722659,
      -65.189838,
      -11.756092,
      -65.182161,
      -11.710531,
      -65.259304,
      -11.647631,
      -65.215687,
      -11.604841,
      -65.234130,
      -11.528565,
      -65.211777,
      -11.496155,
      -65.308524,
      -11.336877,
      -65.332515,
      -11.320296,
      -65.290214,
      -11.304439,
      -65.346360,
      -11.220303,
      -65.359926,
      -11.195782,
      -65.312944,
      -11.186160,
      -65.352080,
      -11.146774,
      -65.362137,
      -11.115156,
      -65.343426,
      -11.090091,
      -65.282689,
      -11.031416,
      -65.300713,
      -10.985063,
      -65.250529,
      -10.954286,
      -65.272973,
      -10.873020,
      -65.274764,
      -10.797576,
      -65.366613,
      -10.767308,
      -65.343226,
      -10.681551,
      -65.346670,
      -10.639345,
      -65.405689,
      -10.574560,
      -65.399380,
      -10.520335,
      -65.417995,
      -10.520335,
      -64.499112
    ]);
    poly[814] = _TzPolygon([
      -12.607694,
      -63.438697,
      -12.607484,
      -63.440830,
      -12.580776,
      -63.438697
    ]);
    poly[815] = _TzPolygon([
      -12.564317,
      -63.438697,
      -12.565669,
      -63.504103,
      -12.505207,
      -63.556113,
      -12.427762,
      -63.785395,
      -12.462080,
      -63.834380,
      -12.445841,
      -63.889051,
      -12.503000,
      -63.901022,
      -12.529773,
      -63.955007,
      -12.501491,
      -63.992648,
      -12.516684,
      -64.038730,
      -12.483483,
      -64.093717,
      -12.505066,
      -64.124276,
      -12.476336,
      -64.132904,
      -12.513517,
      -64.167248,
      -12.466398,
      -64.173935,
      -12.453638,
      -64.230675,
      -12.501809,
      -64.290626,
      -12.457403,
      -64.294789,
      -12.444235,
      -64.411279,
      -12.365968,
      -64.499112,
      -12.307635,
      -64.499112,
      -12.290305,
      -64.493463,
      -12.271131,
      -64.499112,
      -12.106357,
      -64.499112,
      -12.106357,
      -63.438697
    ]);
    poly[816] = _TzPolygon([
      -13.137830,
      -62.378281,
      -13.134210,
      -62.392789,
      -13.112436,
      -62.398914,
      -13.127748,
      -62.415131,
      -13.061647,
      -62.458321,
      -13.082214,
      -62.504195,
      -13.042912,
      -62.609928,
      -13.015035,
      -62.599686,
      -13.014799,
      -62.630778,
      -12.964470,
      -62.648866,
      -13.002801,
      -62.701571,
      -13.008484,
      -62.780986,
      -12.940761,
      -62.805431,
      -12.948139,
      -62.847673,
      -12.923906,
      -62.843354,
      -12.908358,
      -62.872382,
      -12.855820,
      -62.894137,
      -12.839220,
      -62.927814,
      -12.859513,
      -62.976143,
      -12.835793,
      -63.011697,
      -12.741199,
      -63.046459,
      -12.723104,
      -63.081902,
      -12.686117,
      -63.061626,
      -12.682390,
      -63.098465,
      -12.655099,
      -63.084272,
      -12.624739,
      -63.114698,
      -12.637820,
      -63.146179,
      -12.612935,
      -63.160901,
      -12.642617,
      -63.168152,
      -12.623117,
      -63.193972,
      -12.657564,
      -63.198600,
      -12.663512,
      -63.248008,
      -12.689157,
      -63.235712,
      -12.682514,
      -63.296871,
      -12.658589,
      -63.374306,
      -12.610331,
      -63.411864,
      -12.607694,
      -63.438697,
      -12.564290,
      -63.437380,
      -12.564317,
      -63.438697,
      -12.106357,
      -63.438697,
      -12.106357,
      -62.378281
    ]);
    poly[817] = _TzPolygon([
      -9.727325,
      -66.619944,
      -9.727325,
      -65.559528,
      -9.806452,
      -65.559528,
      -9.811317,
      -65.565034,
      -9.845653,
      -65.560742,
      -9.843351,
      -65.597146,
      -9.825378,
      -65.599841,
      -9.838042,
      -65.627003,
      -9.781288,
      -65.669630,
      -9.813695,
      -65.688837,
      -9.808573,
      -65.710231,
      -9.769413,
      -65.708825,
      -9.767458,
      -65.680474,
      -9.749925,
      -65.683947,
      -9.782964,
      -65.743200,
      -9.734417,
      -65.770134,
      -9.792952,
      -65.794374,
      -9.772557,
      -65.813511,
      -9.757469,
      -65.799052,
      -9.755513,
      -65.816488,
      -9.791136,
      -65.841153,
      -9.793231,
      -65.870355,
      -9.767248,
      -65.862487,
      -9.752230,
      -65.886090,
      -9.771736,
      -65.968240,
      -9.803461,
      -65.964420,
      -9.810112,
      -65.982222,
      -9.794689,
      -66.002436,
      -9.813292,
      -66.023539,
      -9.785443,
      -66.036673,
      -9.782774,
      -66.069937,
      -9.814000,
      -66.093000,
      -9.782092,
      -66.103191,
      -9.784161,
      -66.152512,
      -9.804644,
      -66.195089,
      -9.835108,
      -66.203793,
      -9.812807,
      -66.235559,
      -9.844470,
      -66.285110,
      -9.838167,
      -66.347211,
      -9.865348,
      -66.358922,
      -9.863209,
      -66.404375,
      -9.899325,
      -66.427963,
      -9.865207,
      -66.436588,
      -9.879904,
      -66.562275,
      -9.904283,
      -66.580991,
      -9.888653,
      -66.619944
    ]);
    poly[818] = _TzPolygon([
      -9.673151,
      -66.619944,
      -9.664898,
      -66.609449,
      -9.673559,
      -66.586307,
      -9.633564,
      -66.500613,
      -9.601583,
      -66.494917,
      -9.500480,
      -66.392414,
      -9.406947,
      -66.408858,
      -9.436845,
      -66.307497,
      -9.409763,
      -66.267804,
      -9.434419,
      -66.173633,
      -9.408779,
      -66.123891,
      -9.413160,
      -65.970301,
      -9.483750,
      -65.912634,
      -9.530091,
      -65.825077,
      -9.585644,
      -65.791522,
      -9.553623,
      -65.750327,
      -9.559057,
      -65.723548,
      -9.500407,
      -65.680998,
      -9.451393,
      -65.679435,
      -9.413865,
      -65.596776,
      -9.427832,
      -65.559528,
      -9.727325,
      -65.559528,
      -9.727325,
      -66.619944
    ]);
    poly[819] = _TzPolygon([
      -9.844841,
      -65.559528,
      -9.844976,
      -65.556107,
      -9.832076,
      -65.559528,
      -9.806452,
      -65.559528,
      -9.782153,
      -65.532028,
      -9.785605,
      -65.500489,
      -9.730284,
      -65.501347,
      -9.696275,
      -65.446169,
      -9.668944,
      -65.444294,
      -9.700200,
      -65.372874,
      -9.853466,
      -65.284297,
      -9.965000,
      -65.333000,
      -10.214544,
      -65.288429,
      -10.301000,
      -65.324000,
      -10.372842,
      -65.391526,
      -10.433469,
      -65.382564,
      -10.485047,
      -65.430109,
      -10.520335,
      -65.417995,
      -10.520335,
      -65.559528
    ]);
    poly[820] = _TzPolygon([
      -8.977581,
      -64.499112,
      -8.978271,
      -64.550124,
      -9.016452,
      -64.611074,
      -9.014796,
      -64.671376,
      -8.988262,
      -64.699267,
      -9.020748,
      -64.753570,
      -8.986403,
      -64.791627,
      -8.994111,
      -64.839324,
      -9.043141,
      -64.917267,
      -9.124566,
      -64.939930,
      -9.220280,
      -64.919683,
      -9.255811,
      -64.936078,
      -9.304614,
      -65.000515,
      -9.343529,
      -65.005847,
      -9.432516,
      -65.097850,
      -9.446812,
      -65.142881,
      -9.427032,
      -65.185463,
      -9.385448,
      -65.173544,
      -9.375263,
      -65.196158,
      -9.285633,
      -65.208025,
      -9.257664,
      -65.246661,
      -9.338031,
      -65.385211,
      -9.316376,
      -65.447018,
      -9.401209,
      -65.456600,
      -9.466333,
      -65.434716,
      -9.473664,
      -65.492801,
      -9.447698,
      -65.506550,
      -9.427832,
      -65.559528,
      -8.934314,
      -65.559528,
      -8.934314,
      -64.499112
    ]);
    poly[821] = _TzPolygon([
      -8.977581,
      -64.499112,
      -8.976870,
      -64.446574,
      -8.928861,
      -64.323400,
      -8.996471,
      -64.311318,
      -8.992308,
      -64.233205,
      -8.958937,
      -64.149452,
      -8.843167,
      -64.158203,
      -8.805163,
      -64.129459,
      -8.776447,
      -64.144762,
      -8.722160,
      -64.130868,
      -8.715666,
      -64.027869,
      -8.693558,
      -64.035482,
      -8.585634,
      -63.986210,
      -8.609485,
      -63.945954,
      -8.575525,
      -63.924569,
      -8.487238,
      -63.974505,
      -8.452264,
      -63.940838,
      -8.420133,
      -63.977895,
      -8.387826,
      -63.945373,
      -8.331188,
      -63.944122,
      -8.328525,
      -63.910836,
      -8.288820,
      -63.870759,
      -8.333215,
      -63.791231,
      -8.320733,
      -63.773508,
      -8.249499,
      -63.722761,
      -8.198583,
      -63.747034,
      -8.121743,
      -63.669898,
      -8.081603,
      -63.667000,
      -8.029611,
      -63.621779,
      -7.969294,
      -63.620789,
      -7.975000,
      -62.866000,
      -8.093000,
      -62.692000,
      -8.145000,
      -62.673000,
      -8.173000,
      -62.686000,
      -8.229000,
      -62.654000,
      -8.284000,
      -62.561000,
      -8.358000,
      -62.551000,
      -8.383000,
      -62.526000,
      -8.339000,
      -62.465000,
      -8.372000,
      -62.432000,
      -8.387234,
      -62.378281,
      -10.520335,
      -62.378281,
      -10.520335,
      -64.499112
    ]);
    poly[822] = _TzPolygon([
      -13.506974,
      -61.317865,
      -13.554391,
      -61.469123,
      -13.518000,
      -61.572000,
      -13.487156,
      -61.578408,
      -13.516922,
      -61.624930,
      -13.499180,
      -61.694920,
      -13.527512,
      -61.731490,
      -13.519548,
      -61.754158,
      -13.540950,
      -61.758579,
      -13.516062,
      -61.773419,
      -13.537000,
      -61.784000,
      -13.521547,
      -61.825910,
      -13.538209,
      -61.856028,
      -13.428100,
      -61.895816,
      -13.407237,
      -61.969467,
      -13.368082,
      -61.974567,
      -13.357314,
      -62.013069,
      -13.327000,
      -62.017000,
      -13.259315,
      -62.114773,
      -13.157411,
      -62.116838,
      -13.163114,
      -62.150019,
      -13.113436,
      -62.167454,
      -13.153345,
      -62.193053,
      -13.110534,
      -62.215510,
      -13.157298,
      -62.274155,
      -13.133860,
      -62.313733,
      -13.151783,
      -62.322354,
      -13.137830,
      -62.378281,
      -12.106357,
      -62.378281,
      -12.106357,
      -61.317865
    ]);
    poly[823] = _TzPolygon([
      -13.692378,
      -60.703664,
      -13.681474,
      -60.715408,
      -13.576999,
      -60.633702,
      -13.561629,
      -60.566220,
      -13.515625,
      -60.527812,
      -13.449131,
      -60.383553,
      -13.314490,
      -60.371922,
      -13.254758,
      -60.326648,
      -13.178671,
      -60.305838,
      -13.147531,
      -60.269076,
      -13.080327,
      -60.284207,
      -13.059614,
      -60.257449,
      -13.692378,
      -60.257449
    ]);
    poly[824] = _TzPolygon([
      -13.506974,
      -61.317865,
      -13.503506,
      -61.306803,
      -13.477885,
      -61.299322,
      -13.506025,
      -61.279501,
      -13.496628,
      -61.246240,
      -13.526062,
      -61.233959,
      -13.536951,
      -61.194749,
      -13.506021,
      -61.183493,
      -13.532031,
      -61.149166,
      -13.531713,
      -61.103781,
      -13.491797,
      -61.095334,
      -13.512637,
      -61.056557,
      -13.500042,
      -61.035846,
      -13.485916,
      -61.048506,
      -13.488399,
      -61.015182,
      -13.501097,
      -60.988398,
      -13.509369,
      -61.010018,
      -13.550627,
      -61.007620,
      -13.541634,
      -60.921551,
      -13.619847,
      -60.877575,
      -13.659827,
      -60.773806,
      -13.683296,
      -60.768435,
      -13.690981,
      -60.707804,
      -13.692378,
      -60.707010,
      -13.692378,
      -61.317865
    ]);
    poly[825] = _TzPolygon([
      -11.099787,
      -60.257449,
      -11.095172,
      -60.277004,
      -11.057011,
      -60.299105,
      -11.074154,
      -60.347466,
      -11.108762,
      -60.348078,
      -11.092829,
      -60.392020,
      -11.043414,
      -60.414142,
      -11.042306,
      -60.446343,
      -11.018485,
      -60.437461,
      -10.989132,
      -60.459159,
      -10.986000,
      -61.550000,
      -10.949000,
      -61.519000,
      -10.794000,
      -61.511000,
      -10.797000,
      -61.473000,
      -10.736000,
      -61.488000,
      -10.715000,
      -61.472000,
      -10.700000,
      -61.498000,
      -10.520335,
      -61.474259,
      -10.520335,
      -60.257449
    ]);
    poly[826] = _TzPolygon([
      -11.099787,
      -60.257449,
      -11.113682,
      -60.198581,
      -11.095185,
      -60.158166,
      -11.110225,
      -60.098000,
      -11.096554,
      -60.083326,
      -11.124512,
      -60.064788,
      -11.130166,
      -60.024745,
      -11.114233,
      -59.982762,
      -11.155365,
      -59.995712,
      -11.188908,
      -59.963182,
      -11.234010,
      -59.983333,
      -11.295597,
      -59.958885,
      -11.323153,
      -59.919644,
      -11.398475,
      -59.920234,
      -11.589060,
      -60.113932,
      -11.713352,
      -60.120458,
      -11.799353,
      -60.095094,
      -11.838985,
      -60.108377,
      -11.895409,
      -60.060225,
      -11.912337,
      -59.983142,
      -12.027704,
      -59.978271,
      -12.117000,
      -59.899000,
      -12.186000,
      -59.910000,
      -12.245000,
      -59.892000,
      -12.340956,
      -59.774353,
      -12.401399,
      -59.832549,
      -12.472052,
      -59.847975,
      -12.487084,
      -59.935226,
      -12.613183,
      -60.067942,
      -12.727950,
      -60.090551,
      -12.889304,
      -60.081283,
      -12.959556,
      -60.117165,
      -12.971143,
      -60.189278,
      -13.026981,
      -60.215292,
      -13.059614,
      -60.257449
    ]);
    poly[827] = _TzPolygon([
      -8.934314,
      -62.378281,
      -8.934314,
      -61.476608,
      -9.092000,
      -61.555000,
      -9.191000,
      -61.520000,
      -9.242000,
      -61.524000,
      -9.237000,
      -61.575000,
      -9.270000,
      -61.633000,
      -9.279000,
      -61.612000,
      -9.363017,
      -61.625118,
      -9.387068,
      -61.552081,
      -9.472912,
      -61.578226,
      -9.502664,
      -61.526441,
      -9.515855,
      -61.550012,
      -9.528991,
      -61.513039,
      -9.614911,
      -61.503290,
      -9.629468,
      -61.476681,
      -9.694114,
      -61.506750,
      -9.720390,
      -61.574614,
      -9.740763,
      -61.530186,
      -9.789105,
      -61.547923,
      -9.797984,
      -61.524793,
      -9.888045,
      -61.507478,
      -9.989046,
      -61.531009,
      -10.060565,
      -61.584533,
      -10.153708,
      -61.602022,
      -10.198264,
      -61.551418,
      -10.226150,
      -61.576724,
      -10.307000,
      -61.553000,
      -10.420000,
      -61.461000,
      -10.520335,
      -61.474259,
      -10.520335,
      -62.378281
    ]);
    poly[828] = _TzPolygon([
      -8.934314,
      -61.476608,
      -8.917000,
      -61.468000,
      -8.818000,
      -61.523000,
      -8.798000,
      -61.583000,
      -8.795372,
      -60.257449,
      -8.934314,
      -60.257449
    ]);
    poly[829] = _TzPolygon([
      -7.348293,
      -60.257449,
      -8.795372,
      -60.257449,
      -8.798000,
      -61.583000,
      -8.794000,
      -61.606000,
      -8.722000,
      -61.630000,
      -8.707000,
      -61.705000,
      -8.687000,
      -61.713000,
      -8.695000,
      -61.741000,
      -8.748000,
      -61.774000,
      -8.732000,
      -61.836000,
      -8.853000,
      -61.860000,
      -8.878000,
      -61.985000,
      -8.799000,
      -62.031000,
      -8.801000,
      -62.124000,
      -8.679000,
      -62.165000,
      -8.644000,
      -62.200000,
      -8.628000,
      -62.174000,
      -8.590000,
      -62.188000,
      -8.575000,
      -62.268000,
      -8.605000,
      -62.294000,
      -8.638000,
      -62.281000,
      -8.609000,
      -62.335000,
      -8.563000,
      -62.325000,
      -8.493000,
      -62.366000,
      -8.391000,
      -62.365000,
      -8.387234,
      -62.378281,
      -7.348293,
      -62.378281
    ]);
    poly[830] = _TzPolygon([
      -7.348293,
      -58.136618,
      -7.433057,
      -58.214826,
      -7.553880,
      -58.220718,
      -7.619386,
      -58.199253,
      -7.699793,
      -58.279950,
      -7.772465,
      -58.296936,
      -7.840018,
      -58.386491,
      -7.907399,
      -58.376803,
      -8.093244,
      -58.285527,
      -8.130725,
      -58.287026,
      -8.172392,
      -58.323713,
      -8.321075,
      -58.315512,
      -8.344705,
      -58.349897,
      -8.393233,
      -58.354812,
      -8.490757,
      -58.418472,
      -8.571692,
      -58.410872,
      -8.600714,
      -58.388627,
      -8.695925,
      -58.440913,
      -8.721038,
      -58.413618,
      -8.704239,
      -58.357314,
      -8.720000,
      -58.326000,
      -8.791710,
      -58.409868,
      -8.795372,
      -60.257449,
      -7.348293,
      -60.257449
    ]);
    poly[831] = _TzPolygon([
      -9.507748,
      -54.852991,
      -9.367000,
      -56.671000,
      -9.405829,
      -56.760717,
      -9.249875,
      -56.816135,
      -9.218699,
      -56.964107,
      -9.233879,
      -56.995826,
      -9.185018,
      -57.061119,
      -9.099051,
      -57.037578,
      -8.922048,
      -57.205291,
      -8.913569,
      -57.297473,
      -8.885925,
      -57.315498,
      -8.875409,
      -57.395492,
      -8.859975,
      -57.417979,
      -8.782793,
      -57.425704,
      -8.784829,
      -57.465015,
      -8.744620,
      -57.529388,
      -8.761640,
      -57.556745,
      -8.748818,
      -57.615558,
      -8.694541,
      -57.595336,
      -8.640954,
      -57.625396,
      -8.591889,
      -57.620883,
      -8.576383,
      -57.648568,
      -8.518282,
      -57.633337,
      -8.405803,
      -57.690749,
      -8.211994,
      -57.639431,
      -8.152524,
      -57.720447,
      -8.095886,
      -57.726088,
      -7.971690,
      -57.832370,
      -7.671277,
      -57.898862,
      -7.652735,
      -57.939681,
      -7.534771,
      -57.973042,
      -7.422430,
      -58.048319,
      -7.348293,
      -58.134040,
      -7.348293,
      -54.852991
    ]);
    poly[832] = _TzPolygon([
      -9.509851,
      -54.852991,
      -9.645000,
      -53.133000,
      -9.748706,
      -51.569364,
      -13.692378,
      -51.569364,
      -13.692378,
      -54.852991
    ]);
    poly[833] = _TzPolygon([
      -9.507748,
      -54.852991,
      -7.348293,
      -54.852991,
      -7.348293,
      -52.593568,
      -7.385987,
      -52.644412,
      -7.476279,
      -52.691968,
      -7.511084,
      -52.665881,
      -7.583271,
      -52.664690,
      -7.648235,
      -52.735344,
      -7.817867,
      -52.755433,
      -7.866048,
      -52.797975,
      -8.052924,
      -52.698243,
      -8.087284,
      -52.714635,
      -8.201856,
      -52.669478,
      -8.222074,
      -52.626713,
      -8.420269,
      -52.649199,
      -8.542102,
      -52.547414,
      -8.571108,
      -52.477278,
      -8.566137,
      -52.388256,
      -8.626850,
      -52.294708,
      -8.714351,
      -52.267517,
      -8.827187,
      -52.277259,
      -8.849137,
      -52.258365,
      -8.854096,
      -52.197701,
      -8.925626,
      -52.108253,
      -9.092381,
      -52.046481,
      -9.163788,
      -52.071205,
      -9.187722,
      -52.059151,
      -9.189832,
      -52.025997,
      -9.219322,
      -52.034532,
      -9.273992,
      -52.001480,
      -9.349514,
      -52.085728,
      -9.403502,
      -52.099967,
      -9.427780,
      -52.148118,
      -9.495018,
      -52.147860,
      -9.644281,
      -52.202728,
      -9.664709,
      -52.255465,
      -9.648736,
      -52.383533,
      -9.587321,
      -52.534129,
      -9.601578,
      -52.568405,
      -9.647512,
      -52.574291,
      -9.648147,
      -52.603277,
      -9.680658,
      -52.619543
    ]);
    poly[834] = _TzPolygon([
      -5.656006,
      -53.833182,
      -5.656006,
      -52.684397,
      -5.735777,
      -52.658330,
      -5.816239,
      -52.546868,
      -5.871674,
      -52.554452,
      -5.909746,
      -52.603296,
      -6.024220,
      -52.600740,
      -6.084128,
      -52.566542,
      -6.128161,
      -52.509823,
      -6.276077,
      -52.489279,
      -6.305916,
      -52.471132,
      -6.323532,
      -52.409736,
      -6.404354,
      -52.350037,
      -6.564949,
      -52.277660,
      -6.591612,
      -52.218639,
      -6.547637,
      -52.081771,
      -6.710313,
      -51.974096,
      -6.886320,
      -52.023831,
      -6.897053,
      -52.095773,
      -6.935059,
      -52.131256,
      -6.964548,
      -52.334717,
      -7.001692,
      -52.423267,
      -7.105024,
      -52.459563,
      -7.142700,
      -52.539952,
      -7.206091,
      -52.575448,
      -7.330391,
      -52.569421,
      -7.348293,
      -52.593568,
      -7.348293,
      -53.833182
    ]);
    poly[835] = _TzPolygon([
      -3.963720,
      -52.599364,
      -3.972148,
      -52.605578,
      -4.083343,
      -52.583367,
      -4.165500,
      -52.634832,
      -4.190043,
      -52.630723,
      -4.227341,
      -52.695795,
      -4.325072,
      -52.733871,
      -4.364305,
      -52.723838,
      -4.438751,
      -52.652791,
      -4.483196,
      -52.709086,
      -4.656596,
      -52.724191,
      -4.750731,
      -52.754854,
      -4.825731,
      -52.829882,
      -4.897750,
      -52.837800,
      -5.005157,
      -52.921855,
      -5.082516,
      -52.929976,
      -5.189791,
      -52.898913,
      -5.377332,
      -52.889760,
      -5.408598,
      -52.864065,
      -5.458191,
      -52.734948,
      -5.509346,
      -52.678722,
      -5.571225,
      -52.672022,
      -5.617383,
      -52.697018,
      -5.656006,
      -52.684397,
      -5.656006,
      -53.833182,
      -3.963720,
      -53.833182
    ]);
    poly[836] = _TzPolygon([
      -2.271433,
      -53.833182,
      -2.271433,
      -52.145543,
      -2.565518,
      -51.994041,
      -2.619703,
      -51.991087,
      -2.702329,
      -52.029778,
      -2.835458,
      -52.011159,
      -2.916001,
      -51.902196,
      -3.101009,
      -51.794203,
      -3.130921,
      -51.657439,
      -3.155150,
      -51.659226,
      -3.153172,
      -51.608760,
      -3.196974,
      -51.620406,
      -3.242465,
      -51.691153,
      -3.260383,
      -51.678926,
      -3.266332,
      -51.709922,
      -3.318269,
      -51.715497,
      -3.333299,
      -51.760567,
      -3.358228,
      -51.722862,
      -3.412265,
      -51.743584,
      -3.481349,
      -51.688111,
      -3.510755,
      -51.745207,
      -3.614334,
      -51.838303,
      -3.528187,
      -51.948544,
      -3.433605,
      -51.945626,
      -3.375168,
      -52.004348,
      -3.280065,
      -52.029321,
      -3.234228,
      -52.076816,
      -3.216840,
      -52.130684,
      -3.236033,
      -52.189470,
      -3.339631,
      -52.185738,
      -3.401562,
      -52.210671,
      -3.419109,
      -52.225259,
      -3.410395,
      -52.262579,
      -3.484153,
      -52.264744,
      -3.644003,
      -52.373578,
      -3.789506,
      -52.578465,
      -3.864336,
      -52.596051,
      -3.941910,
      -52.583283,
      -3.963720,
      -52.599364,
      -3.963720,
      -53.833182
    ]);
    poly[837] = _TzPolygon([
      -0.579146,
      -52.652003,
      -0.593881,
      -52.639497,
      -0.579146,
      -52.591262,
      -0.579146,
      -52.553743,
      -0.592654,
      -52.526124,
      -0.732208,
      -52.495204,
      -0.787399,
      -52.526122,
      -0.817069,
      -52.514779,
      -0.853933,
      -52.545021,
      -0.826316,
      -52.453710,
      -0.877000,
      -52.403000,
      -0.914382,
      -52.400854,
      -0.935710,
      -52.437259,
      -1.009000,
      -52.414000,
      -1.050000,
      -52.427000,
      -1.062000,
      -52.358000,
      -1.116000,
      -52.333000,
      -1.146000,
      -52.120000,
      -1.218000,
      -52.109000,
      -1.236000,
      -52.070000,
      -1.219000,
      -52.047000,
      -1.186000,
      -52.064000,
      -1.171000,
      -51.991000,
      -1.116814,
      -51.979523,
      -1.167000,
      -51.961000,
      -1.132000,
      -51.926000,
      -1.166000,
      -51.882000,
      -1.180968,
      -51.909927,
      -1.280889,
      -51.900380,
      -1.434735,
      -51.955011,
      -1.490627,
      -51.926051,
      -1.516168,
      -51.846453,
      -1.598946,
      -52.024070,
      -1.618971,
      -52.159274,
      -1.661343,
      -52.187387,
      -1.692092,
      -52.252444,
      -1.734757,
      -52.263777,
      -1.811579,
      -52.230718,
      -2.089464,
      -52.211863,
      -2.192955,
      -52.185972,
      -2.271433,
      -52.145543,
      -2.271433,
      -53.833182,
      -0.579146,
      -53.833182
    ]);
    poly[838] = _TzPolygon([
      1.848602,
      -56.097000,
      1.835521,
      -55.983212,
      1.888028,
      -55.903854,
      1.986466,
      -55.936349,
      1.990519,
      -55.913739,
      2.041078,
      -55.903102,
      2.057741,
      -55.932820,
      2.078634,
      -55.929095,
      2.088428,
      -55.966816,
      2.167602,
      -56.003072,
      2.184641,
      -56.055046,
      2.227783,
      -56.042880,
      2.249186,
      -56.097000,
      2.317191,
      -56.097000,
      2.321170,
      -56.093761,
      2.372277,
      -56.090122,
      2.334981,
      -56.050601,
      2.342469,
      -56.021814,
      2.366272,
      -56.039965,
      2.420327,
      -55.987015,
      2.452820,
      -56.011511,
      2.489609,
      -55.977487,
      2.504548,
      -55.992877,
      2.527329,
      -55.978236,
      2.530541,
      -55.924157,
      2.462176,
      -55.838819,
      2.455237,
      -55.766629,
      2.410445,
      -55.746961,
      2.399167,
      -55.716944,
      2.421543,
      -55.698344,
      2.443237,
      -55.499712,
      2.418360,
      -55.385327,
      2.447988,
      -55.345572,
      2.475558,
      -55.356155,
      2.515368,
      -55.320184,
      2.503380,
      -55.234736,
      2.559342,
      -55.172796,
      2.567624,
      -55.123404,
      2.525640,
      -55.103017,
      2.590930,
      -55.003738,
      2.585203,
      -54.965091,
      1.113140,
      -54.965091,
      1.113140,
      -56.097000
    ]);
    poly[839] = _TzPolygon([
      1.393358,
      -53.833182,
      1.393595,
      -53.854160,
      1.408963,
      -53.848838,
      1.404903,
      -53.888092,
      1.440462,
      -53.876888,
      1.456625,
      -53.894259,
      1.437492,
      -53.934754,
      1.470758,
      -53.922421,
      1.478050,
      -53.991568,
      1.523632,
      -54.005169,
      1.493483,
      -54.083125,
      1.533970,
      -54.082824,
      1.563517,
      -54.116933,
      1.598703,
      -54.100725,
      1.601860,
      -54.135773,
      1.611747,
      -54.120618,
      1.651893,
      -54.146340,
      1.664937,
      -54.182404,
      1.632608,
      -54.190920,
      1.749627,
      -54.312001,
      1.747108,
      -54.345319,
      1.773908,
      -54.376831,
      1.755641,
      -54.387811,
      1.770375,
      -54.464637,
      1.754175,
      -54.495435,
      1.795369,
      -54.575081,
      1.774899,
      -54.670153,
      1.786782,
      -54.745970,
      1.809181,
      -54.757742,
      1.841569,
      -54.736527,
      1.950768,
      -54.777325,
      1.959283,
      -54.769780,
      1.959283,
      -53.833182
    ]);
    poly[840] = _TzPolygon([
      2.209549,
      -54.399136,
      2.210833,
      -54.463889,
      2.265556,
      -54.537778,
      2.289722,
      -54.515000,
      2.316389,
      -54.541944,
      2.333698,
      -54.602780,
      2.354270,
      -54.572203,
      2.338536,
      -54.505196,
      2.392735,
      -54.504504,
      2.433976,
      -54.473760,
      2.436233,
      -54.420328,
      2.457414,
      -54.399136
    ]);
    poly[841] = _TzPolygon([
      2.805427,
      -54.399136,
      2.461419,
      -54.399136,
      2.436233,
      -54.420328,
      2.433976,
      -54.473760,
      2.392735,
      -54.504504,
      2.338536,
      -54.505196,
      2.332285,
      -54.526094,
      2.354270,
      -54.572203,
      2.321111,
      -54.628889,
      2.324722,
      -54.688611,
      2.378611,
      -54.712500,
      2.403333,
      -54.683889,
      2.453889,
      -54.689167,
      2.471667,
      -54.753611,
      2.435556,
      -54.806389,
      2.439886,
      -54.868459,
      2.518489,
      -54.935354,
      2.583595,
      -54.954239,
      2.585203,
      -54.965091,
      2.805427,
      -54.965091
    ]);
    poly[842] = _TzPolygon([
      2.585203,
      -54.965091,
      2.583595,
      -54.954239,
      2.518489,
      -54.935354,
      2.313064,
      -54.793775,
      2.266709,
      -54.810946,
      2.206311,
      -54.769949,
      2.150586,
      -54.813071,
      2.078793,
      -54.818782,
      2.034643,
      -54.807204,
      1.976553,
      -54.754478,
      1.959283,
      -54.769780,
      1.959283,
      -54.965091
    ]);
    poly[843] = _TzPolygon([
      2.210239,
      -54.399136,
      2.208889,
      -54.365833,
      2.164444,
      -54.328056,
      2.146667,
      -54.249167,
      2.172500,
      -54.180556,
      2.113611,
      -54.123333,
      2.135556,
      -54.079444,
      2.194444,
      -54.057500,
      2.181389,
      -54.013056,
      2.219167,
      -53.940833,
      2.271944,
      -53.931944,
      2.267778,
      -53.886667,
      2.302778,
      -53.866944,
      2.307330,
      -53.833182,
      1.959283,
      -53.833182,
      1.959283,
      -54.399136
    ]);
    poly[844] = _TzPolygon([
      2.805427,
      -54.206802,
      2.776701,
      -54.205764,
      2.629595,
      -54.317442,
      2.521251,
      -54.348794,
      2.461419,
      -54.399136,
      2.805427,
      -54.399136
    ]);
    poly[845] = _TzPolygon([
      1.113140,
      -53.833182,
      1.113140,
      -53.463759,
      1.080004,
      -53.460914,
      1.036818,
      -53.427382,
      0.930899,
      -53.420126,
      0.854371,
      -53.302163,
      0.770775,
      -53.200589,
      0.694640,
      -53.150290,
      0.679830,
      -53.109991,
      0.584389,
      -53.155590,
      0.475490,
      -53.159951,
      0.445116,
      -53.181115,
      0.391775,
      -53.165252,
      0.365235,
      -53.184311,
      0.257047,
      -53.092774,
      0.230959,
      -53.108450,
      0.193677,
      -53.096309,
      0.080780,
      -53.005777,
      0.049990,
      -53.018130,
      0.018448,
      -52.984895,
      -0.034665,
      -52.987842,
      -0.144973,
      -52.937093,
      -0.151066,
      -52.841204,
      -0.285729,
      -52.740119,
      -0.315273,
      -52.684399,
      -0.369728,
      -52.678157,
      -0.385292,
      -52.707545,
      -0.425759,
      -52.677554,
      -0.460133,
      -52.703562,
      -0.549633,
      -52.677052,
      -0.579146,
      -52.652003,
      -0.579146,
      -53.833182
    ]);
    poly[846] = _TzPolygon(
        [-0.579146, -52.591262, -0.572092, -52.568168, -0.579146, -52.553743]);
    poly[847] = _TzPolygon([
      2.805427,
      -52.701273,
      2.354921,
      -52.701273,
      2.281581,
      -52.858262,
      2.186179,
      -52.902663,
      2.194554,
      -52.934445,
      2.167271,
      -52.983894,
      2.222500,
      -53.105000,
      2.208333,
      -53.239167,
      2.186027,
      -53.278992,
      2.253333,
      -53.216667,
      2.353333,
      -53.328333,
      2.316389,
      -53.352222,
      2.257500,
      -53.458611,
      2.249167,
      -53.529722,
      2.312222,
      -53.733889,
      2.344444,
      -53.719444,
      2.373056,
      -53.751111,
      2.350556,
      -53.802500,
      2.309444,
      -53.817500,
      2.307330,
      -53.833182,
      2.805427,
      -53.833182
    ]);
    poly[848] = _TzPolygon([
      1.393358,
      -53.833182,
      1.393107,
      -53.810961,
      1.415809,
      -53.825925,
      1.425581,
      -53.809119,
      1.387243,
      -53.738435,
      1.432833,
      -53.723336,
      1.422835,
      -53.700326,
      1.383820,
      -53.717320,
      1.373071,
      -53.682054,
      1.408928,
      -53.652728,
      1.340896,
      -53.661150,
      1.358111,
      -53.598287,
      1.337633,
      -53.578931,
      1.341015,
      -53.543594,
      1.320646,
      -53.539534,
      1.301254,
      -53.568781,
      1.263370,
      -53.528933,
      1.211581,
      -53.542918,
      1.250216,
      -53.435630,
      1.163398,
      -53.406083,
      1.134909,
      -53.465628,
      1.113140,
      -53.463759,
      1.113140,
      -53.833182
    ]);
    poly[849] = _TzPolygon([
      2.805427,
      -52.460509,
      2.658948,
      -52.526181,
      2.636944,
      -52.555107,
      2.580248,
      -52.526030,
      2.550042,
      -52.560563,
      2.521360,
      -52.550583,
      2.474813,
      -52.618508,
      2.451998,
      -52.609433,
      2.432128,
      -52.644964,
      2.373960,
      -52.660520,
      2.354921,
      -52.701273,
      2.805427,
      -52.701273
    ]);
    poly[850] = _TzPolygon([
      4.497713,
      -56.097000,
      4.497713,
      -54.450728,
      4.419722,
      -54.440556,
      4.416207,
      -54.415744,
      4.377058,
      -54.417878,
      4.350923,
      -54.385724,
      4.202654,
      -54.396180,
      4.144626,
      -54.323096,
      4.049060,
      -54.357870,
      4.015002,
      -54.318865,
      3.933333,
      -54.289373,
      3.908455,
      -54.248859,
      3.860055,
      -54.236573,
      3.846573,
      -54.191432,
      3.806615,
      -54.198437,
      3.797916,
      -54.126840,
      3.715196,
      -54.078994,
      3.675445,
      -54.083339,
      3.634973,
      -54.050979,
      3.649319,
      -54.007628,
      3.607456,
      -53.979968,
      3.537236,
      -54.009320,
      3.427073,
      -54.011871,
      3.383789,
      -54.059835,
      3.307490,
      -54.066584,
      3.286256,
      -54.128097,
      3.150779,
      -54.214045,
      3.126416,
      -54.210407,
      3.135435,
      -54.183599,
      3.108115,
      -54.173808,
      3.072313,
      -54.174362,
      3.064080,
      -54.194711,
      3.015218,
      -54.169726,
      2.984569,
      -54.181711,
      2.968434,
      -54.160540,
      2.920989,
      -54.191982,
      2.854723,
      -54.179848,
      2.829119,
      -54.207658,
      2.805427,
      -54.206802,
      2.805427,
      -56.097000
    ]);
    poly[851] = _TzPolygon([
      4.497713,
      -54.450728,
      4.509167,
      -54.452222,
      4.593333,
      -54.420000,
      4.714167,
      -54.435833,
      4.747778,
      -54.477500,
      4.898611,
      -54.486389,
      4.936571,
      -54.445255,
      5.084167,
      -54.405556,
      5.240556,
      -54.296667,
      5.315000,
      -54.193056,
      5.551073,
      -54.007772,
      5.629444,
      -54.025278,
      5.688611,
      -54.009444,
      5.978000,
      -53.843336,
      5.973019,
      -53.833182,
      4.497713,
      -53.833182
    ]);
    poly[852] = _TzPolygon([
      2.805427,
      -52.460509,
      2.891049,
      -52.422122,
      2.917353,
      -52.377061,
      2.947570,
      -52.393193,
      3.078800,
      -52.325965,
      3.126440,
      -52.352973,
      3.171378,
      -52.331107,
      3.173522,
      -52.301351,
      3.227270,
      -52.292286,
      3.253042,
      -52.261923,
      3.239441,
      -52.236381,
      3.298745,
      -52.189622,
      3.627774,
      -51.988706,
      3.706957,
      -51.971035,
      3.724219,
      -51.921484,
      3.781984,
      -51.919006,
      3.888877,
      -51.797307,
      3.974056,
      -51.777827,
      4.052762,
      -51.658667,
      4.235524,
      -51.614710,
      4.394939,
      -51.645669,
      4.508337,
      -51.637160,
      4.587060,
      -51.569364,
      2.805427,
      -51.569364
    ]);
    poly[853] = _TzPolygon([
      9.128479,
      -72.858752,
      9.132962,
      -72.881197,
      9.102942,
      -72.887292,
      9.091651,
      -72.947697,
      9.142360,
      -72.986913,
      9.181240,
      -72.955915,
      9.220787,
      -72.996219,
      9.252937,
      -72.985821,
      9.291294,
      -73.010613,
      9.263387,
      -73.073045,
      9.225558,
      -73.090361,
      9.228309,
      -73.131298,
      9.177167,
      -73.176580,
      9.183647,
      -73.213782,
      9.158209,
      -73.250146,
      9.173405,
      -73.347262,
      9.217530,
      -73.352963,
      9.213054,
      -73.333753,
      9.402898,
      -73.240894,
      9.445538,
      -73.189263,
      9.469263,
      -73.203259,
      9.480631,
      -73.172017,
      9.550467,
      -73.136668,
      9.556277,
      -73.085190,
      9.678263,
      -73.054816,
      9.837627,
      -72.945436,
      9.875025,
      -72.992808,
      9.888767,
      -72.977466,
      9.923865,
      -72.999036,
      10.066003,
      -72.954089,
      10.112724,
      -72.911633,
      10.446657,
      -72.893301,
      10.475010,
      -72.858752
    ]);
    poly[854] = _TzPolygon([
      8.603884,
      -72.644071,
      8.614665,
      -72.655109,
      9.105581,
      -72.766384,
      9.103230,
      -72.796340,
      9.140538,
      -72.821919,
      9.121627,
      -72.824447,
      9.128479,
      -72.858752,
      10.475010,
      -72.858752,
      10.485797,
      -72.845609,
      10.570206,
      -72.820645,
      10.651463,
      -72.735114,
      10.740116,
      -72.716567,
      10.763971,
      -72.679952,
      10.879546,
      -72.648966,
      10.882702,
      -72.612404,
      10.940204,
      -72.553774,
      11.059113,
      -72.481635,
      11.085886,
      -72.497640,
      11.127658,
      -72.443589,
      11.151373,
      -72.349314,
      11.140186,
      -72.249416,
      11.646267,
      -71.971363,
      11.686839,
      -71.782694,
      11.812129,
      -71.378405,
      11.830439,
      -71.386725,
      11.849232,
      -71.341823,
      11.961238,
      -70.927056,
      8.603884,
      -70.927056
    ]);
    poly[855] = _TzPolygon([
      12.157405,
      -70.927056,
      12.287395,
      -71.048794,
      12.401962,
      -71.079828,
      12.523406,
      -71.146887,
      12.599194,
      -71.122362,
      12.662434,
      -71.070873,
      12.702673,
      -71.002730,
      12.716034,
      -70.927056
    ]);
    poly[856] = _TzPolygon([
      12.157405,
      -70.927056,
      12.716034,
      -70.927056,
      12.716688,
      -70.923351,
      12.558597,
      -70.416674,
      12.350026,
      -70.416662,
      12.350000,
      -70.164167,
      12.365000,
      -70.140278,
      12.262778,
      -69.736667,
      12.218782,
      -69.661226,
      8.603884,
      -69.661226,
      8.603884,
      -70.927056,
      11.961238,
      -70.927056
    ]);
    poly[857] = _TzPolygon([
      12.218782,
      -69.661226,
      11.879296,
      -69.079095,
      11.758230,
      -68.954252,
      11.741638,
      -68.829117,
      11.666679,
      -68.600038,
      11.666678,
      -67.990797,
      8.603884,
      -67.990797,
      8.603884,
      -69.661226
    ]);
    poly[858] = _TzPolygon([
      12.592000,
      -69.147203,
      12.524000,
      -68.966469,
      12.466000,
      -68.904144,
      12.376000,
      -68.857011,
      12.356000,
      -68.767062,
      12.292000,
      -68.672990,
      11.932000,
      -68.441347,
      11.818000,
      -68.518527,
      11.777000,
      -68.645296,
      11.864000,
      -68.912221,
      12.043000,
      -69.210695,
      12.211000,
      -69.342189,
      12.381000,
      -69.367349,
      12.463000,
      -69.349015,
      12.532000,
      -69.300835,
      12.578000,
      -69.229781
    ]);
    poly[859] = _TzPolygon([
      11.562837,
      -67.990797,
      11.562837,
      -62.803121,
      10.947917,
      -61.729444,
      10.714445,
      -61.802778,
      10.588889,
      -61.802778,
      10.588611,
      -61.862500,
      10.046111,
      -62.083056,
      9.986667,
      -61.855000,
      9.970000,
      -61.500000,
      9.874531,
      -61.207427,
      9.799487,
      -61.093013,
      9.751163,
      -60.900960,
      8.685788,
      -59.542708,
      8.603884,
      -59.773739,
      8.603884,
      -67.990797
    ]);
    poly[860] = _TzPolygon([
      12.324735,
      -61.861472,
      12.494000,
      -61.702626,
      12.596653,
      -61.665747,
      12.530136,
      -61.382722,
      12.516655,
      -61.173214,
      12.404000,
      -61.207000,
      12.324735,
      -61.280369
    ]);
    poly[861] = _TzPolygon([
      13.583000,
      -61.133776,
      13.583000,
      -60.791134,
      13.536000,
      -60.837991,
      13.508000,
      -60.950006,
      13.580148,
      -61.130393
    ]);
    poly[862] = _TzPolygon([
      -28.570615,
      16.475659,
      -28.572880,
      16.468250,
      -28.632768,
      16.453131,
      -28.800418,
      16.333521,
      -28.685516,
      16.158932,
      -28.570615,
      16.040387
    ]);
    poly[863] = _TzPolygon([
      -28.570615,
      17.396573,
      -28.570615,
      19.544312,
      -28.587130,
      19.536050,
      -28.601000,
      19.503870,
      -28.706090,
      19.466820,
      -28.736820,
      19.403650,
      -28.743930,
      19.267700,
      -28.812590,
      19.239190,
      -28.869640,
      19.265030,
      -28.885420,
      19.296390,
      -28.908180,
      19.285380,
      -28.902520,
      19.245200,
      -28.949980,
      19.191380,
      -28.969450,
      19.118470,
      -28.929020,
      19.008740,
      -28.870530,
      18.972240,
      -28.844400,
      18.855710,
      -28.840450,
      18.632120,
      -28.889460,
      18.512180,
      -28.900820,
      18.423470,
      -28.879390,
      18.263490,
      -28.916150,
      18.188440,
      -28.870650,
      18.083120,
      -28.874270,
      18.046070,
      -28.809500,
      17.993520,
      -28.764090,
      17.917600,
      -28.739910,
      17.749510,
      -28.773690,
      17.647070,
      -28.760670,
      17.616110,
      -28.694650,
      17.598860,
      -28.685590,
      17.568380,
      -28.722870,
      17.420360,
      -28.574220,
      17.431770
    ]);
    poly[864] = _TzPolygon([
      -34.965818,
      19.544312,
      -28.570615,
      19.544312,
      -28.570615,
      29.455710,
      -32.001322,
      29.455710,
      -32.217014,
      29.260385,
      -32.701593,
      28.732420,
      -32.855333,
      28.529802,
      -32.957649,
      28.321425,
      -33.061846,
      28.238536,
      -33.200424,
      28.049854,
      -33.285753,
      27.878084,
      -33.691140,
      27.245590,
      -33.747017,
      27.121748,
      -34.029603,
      26.372758,
      -34.240225,
      25.691531,
      -34.413295,
      24.856936,
      -34.294419,
      22.990015,
      -34.378139,
      22.260436,
      -34.530805,
      22.031103,
      -34.570496,
      21.890081,
      -34.668559,
      20.916269,
      -35.009194,
      20.125081,
      -35.033759,
      20.010019
    ]);
    poly[865] = _TzPolygon([
      -28.570615,
      16.475659,
      -28.533880,
      16.595830,
      -28.472350,
      16.672430,
      -28.499450,
      16.724770,
      -28.453020,
      16.768930,
      -28.396840,
      16.768960,
      -28.361950,
      16.808440,
      -28.272790,
      16.754490,
      -28.269020,
      16.824740,
      -28.222020,
      16.803060,
      -28.211690,
      16.856060,
      -28.166680,
      16.831280,
      -28.172880,
      16.887930,
      -28.074550,
      16.898460,
      -28.058730,
      16.973810,
      -28.075480,
      17.002030,
      -28.032820,
      17.078510,
      -28.034887,
      17.080560,
      -28.570615,
      17.080560
    ]);
    poly[866] = _TzPolygon([
      -28.570615,
      17.396573,
      -28.568940,
      17.380220,
      -28.475540,
      17.333100,
      -28.439030,
      17.348670,
      -28.436960,
      17.384800,
      -28.399580,
      17.410000,
      -28.570615,
      17.410000
    ]);
    poly[867] = _TzPolygon([
      -28.399580,
      17.410000,
      -28.295600,
      17.382140,
      -28.225790,
      17.333270,
      -28.247790,
      17.214560,
      -28.203430,
      17.182450,
      -28.108230,
      17.191930,
      -28.093060,
      17.138230,
      -28.032820,
      17.080727,
      -28.032820,
      17.410000
    ]);
    poly[868] = _TzPolygon([
      -17.390082,
      17.410000,
      -17.391599,
      14.216120,
      -17.410048,
      14.212641,
      -17.438732,
      14.102125,
      -17.414675,
      14.015962,
      -17.433032,
      13.955744,
      -17.361674,
      13.899746,
      -17.141411,
      13.517756,
      -17.091584,
      13.521684,
      -17.010657,
      13.462121,
      -16.974122,
      13.352983,
      -17.001320,
      13.246339,
      -16.963485,
      13.168592,
      -16.982309,
      12.983381,
      -17.171882,
      12.713012,
      -17.172918,
      12.672225,
      -17.231577,
      12.605614,
      -17.247705,
      12.541325,
      -17.241959,
      12.478201,
      -17.264055,
      12.445918,
      -17.222583,
      12.436147,
      -17.206483,
      12.405918,
      -17.233798,
      12.369511,
      -17.218725,
      12.351356,
      -17.240072,
      12.249843,
      -17.161959,
      12.161349,
      -17.141877,
      12.079883,
      -17.181981,
      11.941650,
      -17.273769,
      11.794818,
      -17.250000,
      11.748939,
      -17.250000,
      11.542102,
      -16.839570,
      11.566921,
      -16.681235,
      11.490233,
      -16.554324,
      11.460979,
      -16.467022,
      11.476127,
      -16.204559,
      11.589178,
      -16.052299,
      11.586924,
      -15.948462,
      11.531774,
      -15.827162,
      11.531171,
      -15.662271,
      11.610470,
      -15.609703,
      11.702113,
      -15.609703,
      17.410000
    ]);
    poly[869] = _TzPolygon([
      -28.570615,
      19.544312,
      -28.527680,
      19.565790,
      -28.510930,
      19.625200,
      -28.531090,
      19.668340,
      -28.485740,
      19.738630,
      -28.508300,
      19.813250,
      -28.442730,
      19.877050,
      -28.427820,
      19.999160,
      -25.330387,
      19.999077,
      -25.330387,
      20.421428,
      -28.570615,
      20.421428
    ]);
    poly[870] = _TzPolygon([
      -26.140444,
      20.858664,
      -26.140444,
      21.927141,
      -26.668094,
      21.927141,
      -26.659689,
      21.823459,
      -26.675893,
      21.787415,
      -26.695158,
      21.769098,
      -26.770724,
      21.793350,
      -26.802320,
      21.780990,
      -26.861270,
      21.694700,
      -26.866650,
      21.626880,
      -26.839900,
      21.575570,
      -26.861840,
      21.525380,
      -26.822130,
      21.404200,
      -26.873652,
      21.133666,
      -26.796300,
      20.898120,
      -26.819270,
      20.820700,
      -26.841660,
      20.816340,
      -26.866350,
      20.763510,
      -26.870140,
      20.714980,
      -26.905967,
      20.687731,
      -26.840039,
      20.682511,
      -26.828786,
      20.644931,
      -26.786523,
      20.621967,
      -26.592177,
      20.632371,
      -26.514271,
      20.604604,
      -26.443589,
      20.617644,
      -26.397360,
      20.693374
    ]);
    poly[871] = _TzPolygon([
      -25.330387,
      20.549922,
      -25.389223,
      20.562036,
      -25.394550,
      20.601450,
      -25.428003,
      20.603086,
      -25.425072,
      20.630937,
      -25.461874,
      20.622275,
      -25.450100,
      20.672970,
      -25.475252,
      20.636163,
      -25.519582,
      20.629782,
      -25.592363,
      20.698419,
      -25.635752,
      20.651556,
      -25.635006,
      20.687540,
      -25.686363,
      20.677122,
      -25.716297,
      20.716710,
      -25.770017,
      20.730998,
      -25.780633,
      20.762952,
      -25.822917,
      20.739748,
      -25.801138,
      20.786729,
      -25.853770,
      20.783002,
      -25.868332,
      20.812756,
      -25.920194,
      20.803538,
      -25.959447,
      20.840679,
      -26.007501,
      20.816594,
      -26.081693,
      20.842087,
      -26.105367,
      20.821092,
      -26.133663,
      20.863027,
      -26.140444,
      20.858664,
      -26.140444,
      20.421428,
      -25.330387,
      20.421428
    ]);
    poly[872] = _TzPolygon([
      -25.330387,
      23.011181,
      -25.335860,
      23.011320,
      -25.339860,
      22.977940,
      -25.381140,
      22.970000,
      -25.422310,
      22.909950,
      -25.468390,
      22.885740,
      -25.486850,
      22.900440,
      -25.490170,
      22.846370,
      -25.533510,
      22.853490,
      -25.582420,
      22.814070,
      -25.615170,
      22.853370,
      -25.632770,
      22.800420,
      -25.657770,
      22.830210,
      -25.690470,
      22.821480,
      -25.732840,
      22.769320,
      -25.788660,
      22.759330,
      -25.793660,
      22.734580,
      -25.823267,
      22.781717,
      -25.892960,
      22.712030,
      -25.918000,
      22.749240,
      -25.950090,
      22.723900,
      -26.015240,
      22.724745,
      -26.017900,
      22.665710,
      -26.073460,
      22.673118,
      -26.094500,
      22.631720,
      -26.149219,
      22.604859,
      -26.142098,
      22.578233,
      -26.223450,
      22.555180,
      -26.199990,
      22.473360,
      -26.227900,
      22.454130,
      -26.224420,
      22.420060,
      -26.272700,
      22.402910,
      -26.285780,
      22.363110,
      -26.325530,
      22.362950,
      -26.349940,
      22.242330,
      -26.401133,
      22.189983,
      -26.424780,
      22.200240,
      -26.508589,
      22.163480,
      -26.581345,
      22.077259,
      -26.632661,
      22.051473,
      -26.669849,
      21.948791,
      -26.668094,
      21.927141,
      -25.330387,
      21.927141
    ]);
    poly[873] = _TzPolygon(
        [-25.330387, 23.080325, -25.331970, 23.078690, -25.330387, 23.075817]);
    poly[874] = _TzPolygon([
      -25.330387,
      19.999077,
      -24.763751,
      19.999062,
      -24.833057,
      20.090539,
      -24.884963,
      20.121596,
      -24.923600,
      20.259120,
      -24.980620,
      20.296510,
      -25.034375,
      20.384046,
      -25.061750,
      20.378830,
      -25.082270,
      20.412355,
      -25.154503,
      20.431441,
      -25.156696,
      20.469348,
      -25.199160,
      20.446570,
      -25.228420,
      20.498940,
      -25.268980,
      20.496440,
      -25.286170,
      20.545880,
      -25.317140,
      20.513900,
      -25.320472,
      20.547881,
      -25.330387,
      20.549922
    ]);
    poly[875] = _TzPolygon([
      -25.330387,
      23.011181,
      -25.297230,
      23.010340,
      -25.312930,
      23.030790,
      -25.289940,
      23.058420,
      -25.318610,
      23.054440,
      -25.330387,
      23.075817
    ]);
    poly[876] = _TzPolygon([
      -25.330387,
      23.080325,
      -25.304180,
      23.107390,
      -25.317420,
      23.134540,
      -25.273420,
      23.212020,
      -25.274100,
      23.278050,
      -25.294090,
      23.295010,
      -25.285140,
      23.355550,
      -25.315800,
      23.414300,
      -25.290004,
      23.432855,
      -25.330387,
      23.432855
    ]);
    poly[877] = _TzPolygon([
      -22.090159,
      19.999147,
      -25.330387,
      19.999154,
      -25.330387,
      17.410000,
      -22.090159,
      17.410000
    ]);
    poly[878] = _TzPolygon([
      -25.330387,
      23.495008,
      -25.330387,
      25.692772,
      -25.469921,
      25.662603,
      -25.637943,
      25.581280,
      -25.684239,
      25.513883,
      -25.771152,
      25.337117,
      -25.764394,
      25.121306,
      -25.721419,
      25.038116,
      -25.811055,
      24.897122,
      -25.825693,
      24.794257,
      -25.803883,
      24.728325,
      -25.823921,
      24.683178,
      -25.733024,
      24.447024,
      -25.762427,
      24.400992,
      -25.758313,
      24.357220,
      -25.711003,
      24.326735,
      -25.726032,
      24.285461,
      -25.693234,
      24.287879,
      -25.706748,
      24.260671,
      -25.643839,
      24.226944,
      -25.620144,
      24.191010,
      -25.630058,
      24.160052,
      -25.608195,
      24.157015,
      -25.643005,
      24.085964,
      -25.630771,
      24.067605,
      -25.651297,
      24.061944,
      -25.634072,
      24.030093,
      -25.650899,
      24.005307,
      -25.624664,
      24.012229,
      -25.614548,
      23.969961,
      -25.638234,
      23.928121,
      -25.576443,
      23.879240,
      -25.567294,
      23.839465,
      -25.540935,
      23.835751,
      -25.545718,
      23.809251,
      -25.511608,
      23.820083,
      -25.503013,
      23.762938,
      -25.446292,
      23.729332,
      -25.462722,
      23.703385,
      -25.441387,
      23.666577,
      -25.416255,
      23.669049,
      -25.431580,
      23.637460,
      -25.383920,
      23.616000,
      -25.396460,
      23.589310,
      -25.354660,
      23.559590,
      -25.351570,
      23.496180
    ]);
    poly[879] = _TzPolygon([
      -25.290004,
      23.432855,
      -25.276970,
      23.442230,
      -25.276750,
      23.465790,
      -25.297740,
      23.458140,
      -25.317950,
      23.494320,
      -25.330387,
      23.495008,
      -25.330387,
      23.432855
    ]);
    poly[880] = _TzPolygon([
      -25.330387,
      25.692772,
      -25.289181,
      25.701681,
      -24.924003,
      25.860018,
      -24.914933,
      25.882476,
      -24.753761,
      25.848101,
      -24.747680,
      25.955827,
      -24.645859,
      26.409067,
      -24.614160,
      26.444282,
      -25.330387,
      26.444282
    ]);
    poly[881] = _TzPolygon([
      -23.710273,
      26.444282,
      -23.710273,
      26.970650,
      -23.830736,
      26.958347,
      -23.851342,
      26.932503,
      -23.874114,
      26.955132,
      -24.089470,
      26.884820,
      -24.106560,
      26.860200,
      -24.160110,
      26.879130,
      -24.179130,
      26.864480,
      -24.189501,
      26.883142,
      -24.263576,
      26.856211,
      -24.306752,
      26.785935,
      -24.304237,
      26.733484,
      -24.344145,
      26.675676,
      -24.381112,
      26.663636,
      -24.410788,
      26.587263,
      -24.487944,
      26.509944,
      -24.590480,
      26.470590,
      -24.614160,
      26.444282
    ]);
    poly[882] = _TzPolygon([
      -23.710273,
      26.970650,
      -23.702807,
      26.971413,
      -23.688023,
      27.002312,
      -23.637959,
      27.010103,
      -23.682676,
      27.036909,
      -23.670908,
      27.070547,
      -23.643300,
      27.081145,
      -23.612665,
      27.059168,
      -23.597763,
      27.105162,
      -23.559323,
      27.114118,
      -23.568466,
      27.154126,
      -23.523971,
      27.134548,
      -23.534205,
      27.201212,
      -23.498038,
      27.192819,
      -23.462998,
      27.302833,
      -23.400352,
      27.337171,
      -23.427003,
      27.374634,
      -23.399249,
      27.377333,
      -23.389208,
      27.408208,
      -23.413236,
      27.400950,
      -23.426753,
      27.421567,
      -23.384650,
      27.441615,
      -23.385613,
      27.528416,
      -23.340585,
      27.567361,
      -23.217113,
      27.600830,
      -23.225453,
      27.649987,
      -23.196191,
      27.689376,
      -23.229943,
      27.742540,
      -23.169113,
      27.785435,
      -23.133751,
      27.766923,
      -23.134732,
      27.809310,
      -23.106227,
      27.814230,
      -23.051971,
      27.935635,
      -22.963211,
      27.935178,
      -22.955850,
      27.949996,
      -23.710273,
      27.949996
    ]);
    poly[883] = _TzPolygon([
      -22.090159,
      29.275771,
      -22.195471,
      29.375304,
      -22.178705,
      29.217704,
      -22.215824,
      29.150273,
      -22.217134,
      29.035870,
      -22.305773,
      28.967072,
      -22.376079,
      28.971935,
      -22.460798,
      28.917836,
      -22.453557,
      28.849292,
      -22.488344,
      28.831407,
      -22.588510,
      28.514880,
      -22.571035,
      28.479876,
      -22.574276,
      28.339595,
      -22.687179,
      28.180886,
      -22.774948,
      28.145566,
      -22.833355,
      28.041534,
      -22.911897,
      28.038480,
      -22.954934,
      27.949996,
      -22.090159,
      27.949996
    ]);
    poly[884] = _TzPolygon([
      -22.090159,
      29.275521,
      -22.090159,
      29.455710,
      -22.168830,
      29.455710,
      -22.195188,
      29.373921
    ]);
    poly[885] = _TzPolygon([
      -18.849931,
      17.410000,
      -18.849931,
      20.998919,
      -22.000342,
      20.998739,
      -21.999917,
      19.999147,
      -22.090159,
      19.999147,
      -22.090159,
      17.410000
    ]);
    poly[886] = _TzPolygon([
      -17.390082,
      17.410000,
      -17.389601,
      18.421455,
      -17.582071,
      18.562916,
      -17.601183,
      18.619015,
      -17.635835,
      18.623853,
      -17.736887,
      18.742493,
      -17.735681,
      18.775409,
      -17.765779,
      18.789060,
      -17.772233,
      18.835955,
      -17.819614,
      18.903182,
      -17.836911,
      19.115675,
      -17.808967,
      19.134979,
      -17.805992,
      19.173952,
      -17.833923,
      19.329107,
      -17.854777,
      19.327430,
      -17.874623,
      19.547385,
      -17.849466,
      19.673821,
      -17.911057,
      19.756734,
      -17.867960,
      19.809121,
      -17.883527,
      19.863068,
      -17.862427,
      19.924904,
      -17.905667,
      20.027787,
      -17.885410,
      20.057999,
      -17.910927,
      20.108000,
      -17.876535,
      20.172501,
      -17.892762,
      20.245282,
      -17.866589,
      20.267479,
      -17.862287,
      20.326055,
      -17.897477,
      20.369971,
      -17.907796,
      20.421428,
      -18.849931,
      20.421428,
      -18.849931,
      17.410000
    ]);
    poly[887] = _TzPolygon([
      -18.849931,
      20.998919,
      -18.317569,
      20.998950,
      -18.317647,
      21.453045,
      -18.000819,
      23.098367,
      -18.000786,
      23.296928,
      -18.051877,
      23.334834,
      -18.082758,
      23.324181,
      -18.174641,
      23.402951,
      -18.208107,
      23.397462,
      -18.211625,
      23.432855,
      -18.849931,
      23.432855
    ]);
    poly[888] = _TzPolygon([
      -17.229817,
      22.935474,
      -17.229817,
      23.432855,
      -17.636332,
      23.432855,
      -17.636669,
      23.431158,
      -17.576314,
      23.393338,
      -17.546646,
      23.241295,
      -17.474858,
      23.177693,
      -17.466567,
      23.136133,
      -17.422660,
      23.128194,
      -17.413513,
      23.087139,
      -17.337742,
      23.058643,
      -17.346696,
      23.043989,
      -17.298122,
      22.997069,
      -17.284124,
      23.008831
    ]);
    poly[889] = _TzPolygon([
      -17.907796,
      20.421428,
      -17.914814,
      20.456425,
      -17.950348,
      20.474354,
      -17.981770,
      20.540024,
      -17.976794,
      20.645468,
      -18.037477,
      20.802701,
      -18.029747,
      20.866687,
      -18.003492,
      20.864135,
      -17.957942,
      20.976990,
      -17.928941,
      21.210167,
      -18.026577,
      21.422779,
      -17.633635,
      23.432855,
      -18.211625,
      23.432855,
      -18.208107,
      23.397462,
      -18.174641,
      23.402951,
      -18.082758,
      23.324181,
      -18.051877,
      23.334834,
      -18.000786,
      23.296928,
      -18.000819,
      23.098367,
      -18.317647,
      21.453045,
      -18.317569,
      20.998950,
      -18.849931,
      20.998919,
      -18.849931,
      20.421428
    ]);
    poly[890] = _TzPolygon([
      -17.229817,
      22.935474,
      -17.201125,
      22.896718,
      -17.165340,
      22.801894,
      -17.119929,
      22.791612,
      -16.835108,
      22.492155,
      -16.814755,
      22.496796,
      -16.698761,
      22.350822,
      -16.574116,
      22.252594,
      -16.573296,
      22.218053,
      -16.489624,
      22.149993,
      -16.490233,
      22.120844,
      -16.475143,
      22.148257,
      -16.445372,
      22.125382,
      -16.439482,
      22.139753,
      -16.348122,
      22.120447,
      -16.290252,
      22.070685,
      -16.260905,
      22.081255,
      -16.206397,
      21.999351,
      -15.609703,
      22.000165,
      -15.609703,
      23.432855,
      -17.229817,
      23.432855
    ]);
    poly[891] = _TzPolygon([
      -19.748102,
      26.444282,
      -19.744697,
      26.432339,
      -19.671146,
      26.391709,
      -19.664215,
      26.328035,
      -19.614851,
      26.358608,
      -19.576126,
      26.312335,
      -19.585689,
      26.246967,
      -19.546352,
      26.170226,
      -19.272018,
      26.072390,
      -19.107931,
      25.964528,
      -19.066674,
      25.965343,
      -19.031537,
      25.996584,
      -18.912961,
      25.951755,
      -18.849931,
      25.846455,
      -18.849931,
      26.444282
    ]);
    poly[892] = _TzPolygon([
      -19.748102,
      26.444282,
      -19.781724,
      26.562198,
      -19.881291,
      26.618882,
      -19.887721,
      26.702768,
      -19.939910,
      26.726518,
      -19.961765,
      26.851407,
      -20.014502,
      26.978865,
      -20.008846,
      27.040349,
      -20.079619,
      27.143292,
      -20.081983,
      27.205938,
      -20.296348,
      27.300136,
      -20.498942,
      27.288662,
      -20.468192,
      27.362311,
      -20.482061,
      27.433806,
      -20.467510,
      27.471402,
      -20.494201,
      27.576629,
      -20.486707,
      27.683318,
      -20.513677,
      27.723918,
      -20.652845,
      27.702610,
      -20.703761,
      27.733261,
      -20.759789,
      27.732685,
      -20.866187,
      27.693343,
      -20.934278,
      27.689445,
      -20.957827,
      27.710313,
      -21.086888,
      27.693030,
      -21.153116,
      27.750364,
      -21.175350,
      27.805314,
      -21.302692,
      27.904565,
      -21.456975,
      27.977740,
      -21.472804,
      27.957344,
      -21.484932,
      27.983699,
      -21.517502,
      27.970217,
      -21.516316,
      28.002192,
      -21.573912,
      28.018628,
      -21.603347,
      28.199135,
      -21.589378,
      28.293977,
      -21.602516,
      28.365542,
      -21.668870,
      28.502779,
      -21.629399,
      28.579114,
      -21.755742,
      28.862319,
      -21.771061,
      28.999486,
      -21.817848,
      29.076979,
      -21.914718,
      29.020665,
      -22.022263,
      29.053826,
      -22.072104,
      29.139108,
      -22.059798,
      29.247076,
      -22.090159,
      29.275771,
      -22.090159,
      26.444282
    ]);
    poly[893] = _TzPolygon([
      -18.039874,
      23.432855,
      -18.039874,
      24.175314,
      -18.110516,
      24.108073,
      -18.110019,
      24.051326,
      -18.138270,
      24.048775,
      -18.204400,
      23.931496,
      -18.250542,
      23.932093,
      -18.273432,
      23.876851,
      -18.326792,
      23.844551,
      -18.339950,
      23.802913,
      -18.384526,
      23.786992,
      -18.435161,
      23.720056,
      -18.430790,
      23.686975,
      -18.502334,
      23.616093,
      -18.480732,
      23.567644,
      -18.337226,
      23.558774,
      -18.321951,
      23.528879,
      -18.273114,
      23.525821,
      -18.241818,
      23.500418,
      -18.236191,
      23.453127,
      -18.212885,
      23.445530,
      -18.211625,
      23.432855
    ]);
    poly[894] = _TzPolygon([
      -18.039874,
      24.593143,
      -18.073872,
      24.575423,
      -18.051251,
      24.522129,
      -18.064622,
      24.505998,
      -18.039874,
      24.494100
    ]);
    poly[895] = _TzPolygon([
      -18.039874,
      24.173869,
      -18.019824,
      24.192544,
      -18.011292,
      24.268679,
      -18.036635,
      24.294548,
      -17.949924,
      24.370599,
      -17.951792,
      24.423463,
      -17.963502,
      24.457381,
      -18.039874,
      24.494100
    ]);
    poly[896] = _TzPolygon([
      -18.039874,
      24.593143,
      -17.994370,
      24.616861,
      -17.942878,
      24.699233,
      -17.884268,
      24.739569,
      -17.894948,
      24.757183,
      -17.810075,
      24.911118,
      -17.819921,
      24.931953,
      -17.812516,
      24.938569,
      -18.039874,
      24.938569
    ]);
    poly[897] = _TzPolygon(
        [-17.635802, 23.432855, -17.637867, 23.434227, -17.638132, 23.432855]);
    poly[898] = _TzPolygon([
      -17.549689,
      24.938569,
      -17.554446,
      24.907727,
      -17.527279,
      24.879981,
      -17.536660,
      24.794303,
      -17.509190,
      24.782527,
      -17.497208,
      24.708301,
      -17.539443,
      24.563933,
      -17.509323,
      24.545566,
      -17.513252,
      24.512092,
      -17.479853,
      24.453040,
      -17.470193,
      24.387809,
      -17.491693,
      24.269802,
      -17.474161,
      24.248638,
      -17.636332,
      23.432855,
      -17.229817,
      23.432855,
      -17.229817,
      24.938569
    ]);
    poly[899] = _TzPolygon([
      -18.849931,
      25.846455,
      -18.837364,
      25.825460,
      -18.624486,
      25.782445,
      -18.573010,
      25.692199,
      -18.496100,
      25.647495,
      -18.477895,
      25.603795,
      -18.383926,
      25.523552,
      -18.152886,
      25.415663,
      -18.078031,
      25.319001,
      -18.039874,
      25.300513,
      -18.039874,
      26.444282,
      -18.849931,
      26.444282
    ]);
  }
}

class _Initializer10 {
  static void _init() {
    poly[900] = _TzPolygon([
      -17.812516,
      24.938569,
      -17.788046,
      24.960429,
      -17.792741,
      24.982176,
      -17.804521,
      24.964545,
      -17.825925,
      24.976372,
      -17.815657,
      25.004148,
      -17.838283,
      25.013392,
      -17.807759,
      25.054174,
      -17.841003,
      25.066116,
      -17.807969,
      25.143938,
      -17.778137,
      25.163303,
      -17.791365,
      25.262940,
      -17.912609,
      25.237413,
      -18.039874,
      25.300155,
      -18.039874,
      24.938569
    ]);
    poly[901] = _TzPolygon([
      -18.039874,
      25.300513,
      -17.909412,
      25.237300,
      -17.791365,
      25.262940,
      -17.852310,
      25.379105,
      -17.843568,
      25.455194,
      -17.865503,
      25.515618,
      -17.839720,
      25.546672,
      -17.847747,
      25.591566,
      -17.809454,
      25.687795,
      -17.815563,
      25.691426,
      -18.039874,
      25.691426
    ]);
    poly[902] = _TzPolygon([
      -17.811541,
      25.691426,
      -17.847747,
      25.591566,
      -17.838300,
      25.551086,
      -17.865503,
      25.515618,
      -17.843568,
      25.455194,
      -17.852310,
      25.379105,
      -17.769096,
      25.227601,
      -17.766644,
      25.188462,
      -17.693179,
      25.131022,
      -17.709795,
      25.095413,
      -17.665325,
      25.104993,
      -17.615653,
      25.065729,
      -17.629176,
      25.044002,
      -17.589939,
      25.047172,
      -17.594884,
      25.001807,
      -17.553996,
      24.980040,
      -17.568836,
      24.944715,
      -17.548708,
      24.944930,
      -17.549689,
      24.938569,
      -17.229817,
      24.938569,
      -17.229817,
      25.691426
    ]);
    poly[903] = _TzPolygon([
      -17.811541,
      25.691426,
      -17.229817,
      25.691426,
      -17.229817,
      26.444282,
      -17.957490,
      26.444282,
      -17.936171,
      26.402297,
      -17.917886,
      26.245236,
      -17.884155,
      26.219680,
      -17.934365,
      26.088939,
      -17.950508,
      26.106232,
      -17.980926,
      26.091825,
      -17.976652,
      26.002708,
      -18.002807,
      25.970460,
      -17.974732,
      25.857411,
      -17.911686,
      25.861065,
      -17.852037,
      25.771967,
      -17.838625,
      25.705132,
      -17.810851,
      25.693328
    ]);
    poly[904] = _TzPolygon([
      -17.957490,
      26.444282,
      -15.609703,
      26.444282,
      -15.609703,
      29.455710,
      -15.689937,
      29.455710,
      -15.686468,
      29.415739,
      -15.773155,
      29.213496,
      -15.896434,
      29.048008,
      -15.946526,
      29.013369,
      -15.946578,
      28.928440,
      -16.049160,
      28.845647,
      -16.106913,
      28.869877,
      -16.169391,
      28.838791,
      -16.244067,
      28.857844,
      -16.309486,
      28.820368,
      -16.374302,
      28.851126,
      -16.485549,
      28.815597,
      -16.554306,
      28.735598,
      -16.571297,
      28.642126,
      -16.717970,
      28.269093,
      -16.824720,
      28.135280,
      -16.962498,
      27.829325,
      -17.246623,
      27.630024,
      -17.332630,
      27.624358,
      -17.423784,
      27.543205,
      -17.598943,
      27.311201,
      -17.806452,
      27.144094,
      -17.837013,
      27.152956,
      -17.960873,
      27.042654,
      -17.990846,
      26.836527,
      -18.023852,
      26.803076,
      -18.031394,
      26.732018,
      -18.076594,
      26.695784,
      -18.048905,
      26.598637,
      -17.987772,
      26.563328,
      -17.990030,
      26.508368
    ]);
    poly[905] = _TzPolygon([
      -26.920943,
      33.102357,
      -26.857967,
      32.902228,
      -26.863920,
      32.331050,
      -26.832830,
      32.219200,
      -26.863190,
      32.183970,
      -26.840262,
      32.134622,
      -26.527250,
      32.134992,
      -26.405646,
      32.077418,
      -26.161684,
      32.105350,
      -26.008525,
      32.087300,
      -25.996945,
      32.003050,
      -25.840770,
      31.930550,
      -25.645194,
      32.006099,
      -25.474690,
      31.977400,
      -25.382500,
      32.015280,
      -25.132539,
      32.033716,
      -24.302200,
      31.987130,
      -24.181792,
      31.908179,
      -23.952489,
      31.880591,
      -23.884862,
      31.767769,
      -23.805513,
      31.733502,
      -23.805513,
      33.102357
    ]);
    poly[906] = _TzPolygon([
      -25.718760,
      31.416300,
      -25.999600,
      31.867860,
      -25.952646,
      31.975191,
      -25.996945,
      32.003050,
      -26.008525,
      32.087300,
      -26.161684,
      32.105350,
      -26.405646,
      32.077418,
      -26.527250,
      32.134992,
      -26.840262,
      32.134622,
      -26.804590,
      32.098240,
      -26.810195,
      32.011348,
      -27.116410,
      31.974550,
      -27.317520,
      31.977760,
      -27.315160,
      31.493690,
      -27.202080,
      31.150550,
      -27.036980,
      30.984760,
      -26.992129,
      30.958326,
      -26.908210,
      30.973560,
      -26.859930,
      30.907420,
      -26.785060,
      30.891910,
      -26.844427,
      30.813209,
      -26.712290,
      30.790800,
      -26.466671,
      30.805060,
      -26.320820,
      30.891860,
      -26.261732,
      30.961438,
      -25.921150,
      31.126570,
      -25.743040,
      31.315940
    ]);
    poly[907] = _TzPolygon([
      -21.756560,
      29.455710,
      -21.756560,
      31.982437,
      -22.181870,
      31.574497,
      -22.424110,
      31.307377,
      -22.367550,
      31.268500,
      -22.368690,
      31.213100,
      -22.330700,
      31.171570,
      -22.349164,
      31.088906,
      -22.292080,
      30.839170,
      -22.310960,
      30.663260,
      -22.336290,
      30.631680,
      -22.316350,
      30.489390,
      -22.356250,
      30.290240,
      -22.295860,
      30.231140,
      -22.311050,
      30.126170,
      -22.253630,
      30.025630,
      -22.228940,
      30.017600,
      -22.224170,
      29.969890,
      -22.189930,
      29.925720,
      -22.194560,
      29.884530,
      -22.141420,
      29.773590,
      -22.125110,
      29.656710,
      -22.155690,
      29.610240,
      -22.140900,
      29.580220,
      -22.152660,
      29.539250,
      -22.178000,
      29.527960,
      -22.166120,
      29.464120,
      -22.168830,
      29.455710
    ]);
    poly[908] = _TzPolygon([
      -23.805513,
      31.733502,
      -23.721890,
      31.697390,
      -23.625529,
      31.689984,
      -23.481960,
      31.561020,
      -23.198230,
      31.563600,
      -22.424110,
      31.307377,
      -22.181870,
      31.574497,
      -21.756560,
      31.982437,
      -21.756560,
      33.102357,
      -23.805513,
      33.102357
    ]);
    poly[909] = _TzPolygon([
      -21.756560,
      31.982437,
      -21.315388,
      32.405591,
      -21.328108,
      32.480015,
      -21.206570,
      32.399330,
      -21.169890,
      32.405830,
      -21.136680,
      32.366720,
      -21.011780,
      32.468410,
      -20.914370,
      32.516840,
      -20.618550,
      32.492050,
      -20.560860,
      32.567070,
      -20.556175,
      32.668133,
      -20.339190,
      32.807845,
      -20.287060,
      32.863990,
      -20.234604,
      32.871498,
      -20.221889,
      32.846421,
      -20.195573,
      32.847788,
      -20.187260,
      32.875544,
      -20.124425,
      32.867089,
      -20.126717,
      32.923628,
      -20.038560,
      32.949518,
      -20.034564,
      33.028814,
      -19.776760,
      33.062782,
      -19.723096,
      32.958720,
      -19.707608,
      32.962356,
      -19.707608,
      33.102357,
      -21.756560,
      33.102357
    ]);
    poly[910] = _TzPolygon([
      -19.707608,
      32.962356,
      -19.651273,
      32.975583,
      -19.684140,
      32.892098,
      -19.673529,
      32.834432,
      -19.618549,
      32.857374,
      -19.483646,
      32.845370,
      -19.459900,
      32.777187,
      -19.361320,
      32.776410,
      -19.293630,
      32.849840,
      -19.097870,
      32.877400,
      -19.016390,
      32.833460,
      -19.025069,
      32.713745,
      -18.938757,
      32.698944,
      -18.927924,
      32.735110,
      -18.833630,
      32.711910,
      -18.781340,
      32.813740,
      -18.796280,
      32.892420,
      -18.766280,
      32.927790,
      -18.690190,
      32.954120,
      -18.579074,
      32.885902,
      -18.514440,
      32.887024,
      -18.473269,
      32.978940,
      -18.503376,
      32.984589,
      -18.497591,
      33.020476,
      -18.421125,
      33.018644,
      -18.348660,
      33.068341,
      -18.298522,
      33.016154,
      -18.228579,
      33.021657,
      -18.136801,
      32.972197,
      -18.112054,
      32.982062,
      -18.029428,
      32.950907,
      -18.032621,
      32.936014,
      -18.000010,
      32.955700,
      -17.984939,
      32.937601,
      -17.917999,
      32.983420,
      -17.913181,
      32.953000,
      -17.814939,
      32.960563,
      -17.802794,
      33.018321,
      -17.748261,
      33.029597,
      -17.731547,
      33.007278,
      -17.722220,
      33.029071,
      -17.688635,
      33.015737,
      -17.658655,
      33.029451,
      -17.658655,
      33.102357,
      -19.707608,
      33.102357
    ]);
    poly[911] = _TzPolygon([
      -15.609703,
      30.409697,
      -15.622543,
      30.418988,
      -15.655607,
      30.354065,
      -15.627950,
      30.260218,
      -15.668572,
      30.215112,
      -15.618760,
      30.162200,
      -15.643534,
      29.970554,
      -15.609937,
      29.824518,
      -15.692642,
      29.486878,
      -15.689937,
      29.455710,
      -15.609703,
      29.455710
    ]);
    poly[912] = _TzPolygon([
      -16.005896,
      31.279033,
      -16.007075,
      31.188227,
      -15.983640,
      31.140415,
      -16.016002,
      31.072365,
      -15.996799,
      31.063163,
      -16.060462,
      30.992286,
      -15.999772,
      30.922465,
      -15.999772,
      30.424565,
      -15.628041,
      30.425125,
      -15.609703,
      30.413147,
      -15.609703,
      31.279033
    ]);
    poly[913] = _TzPolygon([
      -16.005896,
      31.279033,
      -16.047333,
      31.344566,
      -16.137150,
      31.404530,
      -16.143692,
      31.434638,
      -16.160553,
      31.427516,
      -16.179633,
      31.630136,
      -16.236710,
      31.770810,
      -16.312560,
      31.835850,
      -16.336470,
      31.893790,
      -16.412870,
      31.913480,
      -16.442370,
      32.037540,
      -16.449170,
      32.344180,
      -16.599970,
      32.709160,
      -16.685540,
      32.709180,
      -16.719202,
      32.887977,
      -16.696047,
      32.923133,
      -16.706877,
      32.978682,
      -16.894220,
      32.912210,
      -16.920759,
      32.835674,
      -17.179280,
      32.986520,
      -17.308570,
      32.997410,
      -17.342273,
      33.052393,
      -17.398695,
      33.004403,
      -17.453704,
      33.000103,
      -17.479926,
      32.965432,
      -17.559455,
      32.983556,
      -17.604780,
      33.054097,
      -17.658655,
      33.029451,
      -17.658655,
      31.279033
    ]);
    poly[914] = _TzPolygon([
      -16.684630,
      34.883663,
      -16.675904,
      34.858255,
      -16.607233,
      34.842530,
      -16.585916,
      34.772473,
      -16.549196,
      34.777199,
      -16.512777,
      34.752435,
      -16.502974,
      34.682276,
      -16.438471,
      34.681017,
      -16.453223,
      34.652059,
      -16.417862,
      34.593880,
      -16.314358,
      34.570420,
      -16.279880,
      34.524020,
      -16.296385,
      34.490161,
      -16.264299,
      34.430902,
      -16.185296,
      34.397689,
      -16.043250,
      34.430168,
      -16.026037,
      34.388325,
      -15.964151,
      34.355377,
      -15.920721,
      34.260136,
      -15.896627,
      34.251476,
      -15.796756,
      34.271990,
      -15.744283,
      34.326264,
      -15.742514,
      34.364462,
      -15.685952,
      34.391429,
      -15.664698,
      34.435165,
      -15.619143,
      34.433392,
      -15.609703,
      34.456021,
      -15.609703,
      34.883663
    ]);
    poly[915] = _TzPolygon([
      -16.684630,
      34.883663,
      -15.609703,
      34.883663,
      -15.609703,
      35.836385,
      -15.964683,
      35.805229,
      -16.027691,
      35.817639,
      -16.101207,
      35.712291,
      -16.095725,
      35.673002,
      -16.133709,
      35.593852,
      -16.121635,
      35.557502,
      -16.168212,
      35.523250,
      -16.120582,
      35.486620,
      -16.113850,
      35.429637,
      -16.229426,
      35.297298,
      -16.325814,
      35.278330,
      -16.345718,
      35.302873,
      -16.398664,
      35.263227,
      -16.474995,
      35.261919,
      -16.562337,
      35.143452,
      -16.619576,
      35.166977,
      -16.646504,
      35.228464,
      -16.710325,
      35.288627,
      -16.796314,
      35.289518,
      -16.830480,
      35.314675,
      -16.940035,
      35.263092,
      -16.981560,
      35.304862,
      -17.034534,
      35.291951,
      -17.062452,
      35.313826,
      -17.123229,
      35.309137,
      -17.129603,
      35.097395,
      -17.107984,
      35.077968,
      -17.087249,
      35.108522,
      -17.049395,
      35.056540,
      -17.010473,
      35.051049,
      -16.937869,
      35.171517,
      -16.873946,
      35.146241,
      -16.839772,
      35.157457,
      -16.818120,
      35.135828,
      -16.828814,
      35.041798,
      -16.789006,
      34.990092,
      -16.748933,
      34.984715,
      -16.747367,
      34.919660,
      -16.693700,
      34.910070
    ]);
    poly[916] = _TzPolygon([
      -15.609703,
      22.000165,
      -12.999688,
      22.003724,
      -13.000767,
      24.058127,
      -12.896038,
      23.981923,
      -12.893796,
      23.939792,
      -12.840515,
      23.893522,
      -12.761026,
      23.899034,
      -12.698194,
      23.932934,
      -12.668182,
      23.923162,
      -12.593419,
      23.959855,
      -12.537001,
      23.947902,
      -12.424420,
      24.065636,
      -12.380775,
      24.077272,
      -12.333960,
      24.043014,
      -12.310366,
      24.066851,
      -12.269437,
      24.062446,
      -12.208033,
      23.999944,
      -12.136440,
      23.980392,
      -11.855963,
      23.998018,
      -11.829245,
      24.023031,
      -11.660648,
      23.960555,
      -11.531225,
      24.037901,
      -11.446033,
      24.024138,
      -11.404498,
      24.087886,
      -15.609703,
      24.087886
    ]);
    poly[917] = _TzPolygon([
      -5.867515,
      14.907735,
      -5.877845,
      14.699551,
      -5.904712,
      14.595772,
      -5.891823,
      14.347963,
      -5.857074,
      14.282713,
      -5.880785,
      14.238951,
      -5.869412,
      14.197609,
      -5.840477,
      14.187767,
      -5.852343,
      14.039940,
      -5.826426,
      13.999907,
      -5.850908,
      13.959918,
      -5.867939,
      13.587086,
      -5.886523,
      13.560470,
      -5.862452,
      13.514261,
      -5.860113,
      13.430998,
      -5.872514,
      13.377478,
      -5.908990,
      13.354151,
      -5.861911,
      13.222670,
      -5.903476,
      13.113667,
      -5.872514,
      13.088219,
      -5.863608,
      13.042413,
      -5.912383,
      12.951224,
      -5.924259,
      12.855794,
      -5.998058,
      12.751033,
      -6.078219,
      12.444385,
      -6.068181,
      12.389689,
      -6.005789,
      12.312360,
      -5.990189,
      12.114648,
      -5.889632,
      12.039074,
      -5.752477,
      12.219062,
      -5.742117,
      12.528415,
      -5.149089,
      12.533084,
      -5.149089,
      14.907735
    ]);
    poly[918] = _TzPolygon([
      -6.712941,
      16.771898,
      -6.712941,
      17.967785,
      -8.087427,
      17.967785,
      -8.080841,
      17.870074,
      -8.113420,
      17.796611,
      -8.100739,
      17.678324,
      -8.131037,
      17.612268,
      -8.128663,
      17.566153,
      -8.079336,
      17.504682,
      -8.045711,
      17.532371,
      -8.002273,
      17.481941,
      -7.949277,
      17.481474,
      -7.942796,
      17.450823,
      -7.870888,
      17.449754,
      -7.866007,
      17.422205,
      -7.834279,
      17.424047,
      -7.840260,
      17.392525,
      -7.813750,
      17.395307,
      -7.823937,
      17.378225,
      -7.776850,
      17.380859,
      -7.779502,
      17.331442,
      -7.752041,
      17.318778,
      -7.719129,
      17.333772,
      -7.692851,
      17.290026,
      -7.622997,
      17.295933,
      -7.580912,
      17.218914,
      -7.497431,
      17.196353,
      -7.470029,
      17.150176,
      -7.427987,
      17.179530,
      -7.403985,
      17.139190,
      -7.424072,
      17.107089,
      -7.349848,
      17.106231,
      -7.295705,
      17.026065,
      -7.292640,
      16.980403,
      -7.233893,
      16.940578,
      -7.203291,
      16.956607,
      -7.105302,
      16.915687,
      -7.117396,
      16.951564,
      -7.053344,
      16.966670,
      -7.021144,
      16.932166,
      -7.023700,
      16.906074,
      -6.909536,
      16.910709,
      -6.879201,
      16.879295,
      -6.881417,
      16.841014,
      -6.824491,
      16.841358,
      -6.800458,
      16.807712,
      -6.731419,
      16.800331
    ]);
    poly[919] = _TzPolygon([
      -5.867515,
      14.907735,
      -5.865682,
      14.944686,
      -5.870391,
      16.424045,
      -5.844012,
      16.491970,
      -5.873342,
      16.577215,
      -5.941343,
      16.576990,
      -5.949734,
      16.603515,
      -6.031511,
      16.587894,
      -6.037144,
      16.624114,
      -6.060165,
      16.599477,
      -6.065140,
      16.644370,
      -6.096889,
      16.636130,
      -6.108667,
      16.688315,
      -6.165673,
      16.730029,
      -6.207245,
      16.703665,
      -6.331354,
      16.720361,
      -6.334030,
      16.676593,
      -6.355352,
      16.694567,
      -6.386121,
      16.678992,
      -6.404484,
      16.723406,
      -6.424688,
      16.695455,
      -6.450201,
      16.718256,
      -6.481435,
      16.708492,
      -6.522611,
      16.752035,
      -6.578477,
      16.731494,
      -6.602692,
      16.756729,
      -6.707211,
      16.763080,
      -6.712941,
      16.771898,
      -6.712941,
      14.907735
    ]);
    poly[920] = _TzPolygon([
      -9.840646,
      22.557861,
      -11.039479,
      22.557861,
      -11.039479,
      22.508930,
      -11.064330,
      22.488848,
      -11.111912,
      22.502364,
      -11.167759,
      22.450266,
      -11.182424,
      22.346240,
      -11.236191,
      22.311464,
      -11.264140,
      22.249898,
      -11.178218,
      22.268516,
      -11.109652,
      22.215734,
      -10.935395,
      22.204812,
      -10.866104,
      22.166880,
      -10.809057,
      22.223055,
      -10.760136,
      22.328300,
      -10.665363,
      22.307268,
      -10.564175,
      22.316125,
      -10.530416,
      22.307143,
      -10.507853,
      22.271488,
      -10.379555,
      22.326257,
      -10.157618,
      22.215177,
      -10.071112,
      22.221668,
      -9.921277,
      22.186838,
      -9.869989,
      22.111170,
      -9.874921,
      22.069119,
      -9.840646,
      22.033681
    ]);
    poly[921] = _TzPolygon([
      -10.901448,
      24.087886,
      -10.887911,
      24.061981,
      -10.905935,
      23.973169,
      -11.035274,
      23.862838,
      -10.987303,
      23.759381,
      -11.003144,
      23.668621,
      -10.940670,
      23.514014,
      -10.946651,
      23.428588,
      -11.108579,
      23.195145,
      -11.081545,
      23.152533,
      -11.113367,
      23.081251,
      -11.090637,
      23.040761,
      -11.086697,
      22.906682,
      -11.062694,
      22.863039,
      -11.118398,
      22.773269,
      -11.113307,
      22.709927,
      -11.070574,
      22.633432,
      -11.039479,
      22.618339,
      -11.039479,
      22.557861,
      -9.840646,
      22.557861,
      -9.840646,
      24.087886
    ]);
    poly[922] = _TzPolygon([
      -11.404498,
      24.087886,
      -11.274737,
      24.031326,
      -11.139054,
      24.035376,
      -11.117166,
      24.001019,
      -11.098018,
      24.021792,
      -10.984795,
      24.024016,
      -10.942299,
      24.018016,
      -10.911178,
      23.980528,
      -10.889962,
      23.999872,
      -10.902345,
      24.087886
    ]);
    poly[923] = _TzPolygon([
      -9.840646,
      22.033681,
      -9.821243,
      22.013620,
      -9.749868,
      21.997780,
      -9.761299,
      21.977561,
      -9.686916,
      21.936724,
      -9.650331,
      21.874344,
      -9.456616,
      21.830953,
      -9.417920,
      21.791151,
      -9.227482,
      21.859537,
      -9.098000,
      21.834214,
      -9.043972,
      21.856104,
      -8.854432,
      21.861063,
      -8.785758,
      21.895816,
      -8.700399,
      21.892762,
      -8.559885,
      21.942593,
      -8.525983,
      21.930005,
      -8.504907,
      21.953438,
      -8.440467,
      21.949169,
      -8.394006,
      21.918374,
      -8.327432,
      21.932700,
      -8.291163,
      21.892738,
      -8.276794,
      21.891596,
      -8.276794,
      24.087886,
      -9.840646,
      24.087886
    ]);
    poly[924] = _TzPolygon([
      -6.712941,
      17.967785,
      -6.712941,
      19.800099,
      -6.769233,
      19.838663,
      -6.860497,
      19.931594,
      -6.991553,
      19.975228,
      -7.000000,
      19.547955,
      -7.055530,
      19.562227,
      -7.167522,
      19.498509,
      -7.243994,
      19.507977,
      -7.315709,
      19.485356,
      -7.457670,
      19.544568,
      -7.504452,
      19.486200,
      -7.571971,
      19.473334,
      -7.571945,
      19.383207,
      -7.591308,
      19.368572,
      -7.701570,
      19.412430,
      -7.901446,
      19.341656,
      -7.909022,
      19.360379,
      -8.000000,
      19.381333,
      -8.000000,
      18.796451,
      -7.913366,
      18.767612,
      -7.916667,
      18.530592,
      -8.000000,
      18.531911,
      -8.000000,
      18.407325,
      -8.024685,
      18.359153,
      -7.977444,
      18.213838,
      -8.036904,
      18.140164,
      -8.029180,
      18.105867,
      -8.096584,
      18.103629,
      -8.087427,
      17.967785
    ]);
    poly[925] = _TzPolygon([
      -6.712941,
      19.800099,
      -6.712941,
      21.027836,
      -7.283333,
      21.027836,
      -7.283333,
      20.553021,
      -7.166636,
      20.562136,
      -7.145907,
      20.546096,
      -7.062430,
      20.594792,
      -6.916668,
      20.627162,
      -6.916667,
      20.321995,
      -7.000000,
      20.302885,
      -7.000045,
      19.966205,
      -6.860497,
      19.931594,
      -6.769233,
      19.838663
    ]);
    poly[926] = _TzPolygon([
      -6.712941,
      19.800099,
      -6.583970,
      19.711743,
      -6.529964,
      19.698210,
      -6.425275,
      19.720918,
      -6.345803,
      19.684782,
      -6.302101,
      19.698657,
      -6.242268,
      19.673775,
      -6.164736,
      19.691198,
      -6.043719,
      19.871099,
      -6.019136,
      19.876593,
      -6.032623,
      19.892900,
      -6.007186,
      19.951952,
      -5.955797,
      20.014952,
      -5.867806,
      20.049235,
      -5.843778,
      20.107026,
      -5.798180,
      20.117669,
      -5.746601,
      20.166421,
      -5.631813,
      20.180669,
      -5.546353,
      20.130119,
      -5.418196,
      20.126857,
      -5.350347,
      20.137328,
      -5.283687,
      20.195693,
      -5.187274,
      20.205135,
      -5.149089,
      20.196621,
      -5.149089,
      21.027836,
      -6.712941,
      21.027836
    ]);
    poly[927] = _TzPolygon([
      -7.283333,
      21.027836,
      -7.283333,
      21.789226,
      -7.374855,
      21.843902,
      -7.409034,
      21.835182,
      -7.426874,
      21.859344,
      -7.524345,
      21.842205,
      -7.560966,
      21.859528,
      -7.775054,
      21.776160,
      -7.907684,
      21.777607,
      -7.940019,
      21.751542,
      -8.028953,
      21.776265,
      -8.070117,
      21.823821,
      -8.143018,
      21.849238,
      -8.176350,
      21.883612,
      -8.276794,
      21.891596,
      -8.276794,
      21.027836
    ]);
    poly[928] = _TzPolygon(
        [-13.998540, 33.239352, -14.001513, 33.205300, -13.998540, 33.203646]);
    poly[929] = _TzPolygon([
      -13.998540,
      33.068531,
      -14.021592,
      33.065137,
      -14.049778,
      33.022606,
      -14.018389,
      32.990661,
      -13.998540,
      32.992559
    ]);
    poly[930] = _TzPolygon([
      -15.609703,
      30.413147,
      -15.539029,
      30.366985,
      -15.476359,
      30.401596,
      -15.437229,
      30.376962,
      -15.369604,
      30.384837,
      -15.322259,
      30.363208,
      -15.264305,
      30.283214,
      -15.087157,
      30.213820,
      -15.035977,
      30.234805,
      -14.996583,
      30.216723,
      -14.959570,
      30.365150,
      -14.784650,
      30.796370,
      -14.620160,
      31.472610,
      -14.506430,
      31.683310,
      -14.323340,
      32.241370,
      -14.282690,
      32.451430,
      -13.998540,
      33.220324,
      -14.006477,
      33.239352,
      -15.609703,
      33.239352
    ]);
    poly[931] = _TzPolygon([
      -13.998540,
      33.242700,
      -13.998540,
      33.701099,
      -14.589984,
      33.701099,
      -14.615774,
      33.665131,
      -14.587152,
      33.634241,
      -14.492111,
      33.607900,
      -14.478512,
      33.562280,
      -14.419739,
      33.528445,
      -14.400989,
      33.470172,
      -14.219747,
      33.385076,
      -14.216961,
      33.341943,
      -14.148215,
      33.298586,
      -14.084435,
      33.322230,
      -14.031888,
      33.300272
    ]);
    poly[932] = _TzPolygon([
      -11.823031,
      25.764102,
      -11.816750,
      25.714760,
      -11.731434,
      25.651065,
      -11.734490,
      25.595910,
      -11.791291,
      25.505670,
      -11.682411,
      25.472349,
      -11.626927,
      25.331983,
      -11.580359,
      25.330556,
      -11.519321,
      25.292853,
      -11.494546,
      25.332053,
      -11.487744,
      25.308400,
      -11.356714,
      25.280046,
      -11.346894,
      25.313482,
      -11.305892,
      25.292007,
      -11.280765,
      25.338032,
      -11.259901,
      25.316404,
      -11.196125,
      25.352400,
      -11.191711,
      25.302179,
      -11.254733,
      25.118359,
      -11.245046,
      25.027824,
      -11.274559,
      24.911632,
      -11.266343,
      24.870439,
      -11.296760,
      24.850607,
      -11.303085,
      24.750497,
      -11.316402,
      24.728572,
      -11.331222,
      24.738843,
      -11.333118,
      24.694038,
      -11.401220,
      24.641617,
      -11.419831,
      24.591436,
      -11.452883,
      24.584336,
      -11.467194,
      24.441231,
      -11.427029,
      24.419887,
      -11.388312,
      24.279586,
      -11.353204,
      24.358136,
      -11.264614,
      24.401644,
      -11.199923,
      24.401878,
      -11.173626,
      24.377202,
      -11.134911,
      24.384727,
      -11.134911,
      25.764102
    ]);
    poly[933] = _TzPolygon([
      -11.823031,
      25.764102,
      -11.830624,
      25.823751,
      -11.808262,
      25.886943,
      -11.868917,
      25.905824,
      -11.907207,
      25.992159,
      -11.947892,
      25.979775,
      -11.937984,
      26.185564,
      -11.920791,
      26.208133,
      -11.963600,
      26.312734,
      -11.910467,
      26.428331,
      -11.918636,
      26.477932,
      -11.952005,
      26.499932,
      -11.985886,
      26.572340,
      -11.967245,
      26.590981,
      -12.006384,
      26.709163,
      -11.955406,
      26.774466,
      -11.986999,
      26.819525,
      -11.984942,
      26.877597,
      -11.919365,
      26.958063,
      -11.842405,
      27.006920,
      -11.749231,
      27.003863,
      -11.707180,
      27.047559,
      -11.614822,
      27.017862,
      -11.593114,
      27.050343,
      -11.601346,
      27.159405,
      -11.563135,
      27.205080,
      -11.683375,
      27.235382,
      -11.785262,
      27.229350,
      -11.830651,
      27.338889,
      -11.911020,
      27.440317,
      -13.998540,
      27.440317,
      -13.998540,
      25.764102
    ]);
    poly[934] = _TzPolygon([
      -10.902345,
      24.087886,
      -10.906289,
      24.115917,
      -11.041632,
      24.149793,
      -11.020549,
      24.186209,
      -11.050664,
      24.244839,
      -11.041385,
      24.301896,
      -11.085121,
      24.379338,
      -11.121481,
      24.392538,
      -11.134911,
      24.388588,
      -11.134911,
      24.087886
    ]);
    poly[935] = _TzPolygon([
      -12.566726,
      28.452285,
      -12.566726,
      29.116533,
      -13.368983,
      29.116533,
      -13.423191,
      29.005688,
      -13.389286,
      28.983248,
      -13.368536,
      28.997128,
      -13.375155,
      28.961744,
      -13.164316,
      28.903924,
      -13.145768,
      28.838489,
      -13.005010,
      28.825697,
      -12.938614,
      28.782722,
      -12.941587,
      28.753871,
      -12.881256,
      28.728959,
      -12.814737,
      28.653806,
      -12.832944,
      28.609886,
      -12.896985,
      28.582595,
      -12.897398,
      28.565177,
      -12.852727,
      28.536460,
      -12.823484,
      28.542954,
      -12.731551,
      28.456652,
      -12.696603,
      28.461419,
      -12.686580,
      28.512810,
      -12.637666,
      28.534695
    ]);
    poly[936] = _TzPolygon([
      -11.911020,
      27.440317,
      -11.928770,
      27.462719,
      -12.052970,
      27.470110,
      -12.058726,
      27.497603,
      -12.177275,
      27.533615,
      -12.221871,
      27.616450,
      -12.270365,
      27.622486,
      -12.293204,
      27.762703,
      -12.251378,
      27.814991,
      -12.221684,
      27.812213,
      -12.241167,
      27.931962,
      -12.314518,
      27.961017,
      -12.359039,
      27.955799,
      -12.338543,
      27.990861,
      -12.348846,
      28.078981,
      -12.439015,
      28.122414,
      -12.427941,
      28.150155,
      -12.398811,
      28.145350,
      -12.377714,
      28.170726,
      -12.422498,
      28.230338,
      -12.407943,
      28.257577,
      -12.425032,
      28.278425,
      -12.566726,
      28.278425,
      -12.566726,
      27.440317
    ]);
    poly[937] = _TzPolygon([
      -12.425032,
      28.278425,
      -12.426979,
      28.280801,
      -12.419597,
      28.322832,
      -12.500387,
      28.399142,
      -12.516378,
      28.447980,
      -12.553842,
      28.437319,
      -12.566726,
      28.452285,
      -12.566726,
      28.278425
    ]);
    poly[938] = _TzPolygon([
      -12.386409,
      29.116533,
      -12.375373,
      29.107468,
      -12.384325,
      29.042280,
      -12.285352,
      29.005695,
      -12.172418,
      28.917526,
      -12.147125,
      28.865528,
      -12.046430,
      28.776206,
      -11.979122,
      28.754472,
      -11.984396,
      28.700062,
      -11.908313,
      28.615380,
      -11.883454,
      28.494273,
      -11.844988,
      28.493235,
      -11.828124,
      28.474798,
      -11.840093,
      28.452747,
      -11.815959,
      28.435590,
      -11.775235,
      28.455284,
      -11.724293,
      28.418661,
      -11.651344,
      28.433904,
      -11.591444,
      28.387422,
      -11.545145,
      28.385353,
      -11.391228,
      28.425843,
      -11.370566,
      28.456353,
      -11.298698,
      28.453816,
      -11.240116,
      28.489466,
      -11.146942,
      28.499752,
      -11.134911,
      28.493335,
      -11.134911,
      29.116533
    ]);
    poly[939] = _TzPolygon([
      -13.368983,
      29.116533,
      -12.386409,
      29.116533,
      -12.396716,
      29.124999,
      -12.360570,
      29.269548,
      -12.422088,
      29.321749,
      -12.412663,
      29.373651,
      -12.460158,
      29.479430,
      -12.405572,
      29.530482,
      -12.396720,
      29.488983,
      -12.333966,
      29.460594,
      -12.249399,
      29.482381,
      -12.230770,
      29.531333,
      -12.181820,
      29.575085,
      -12.221337,
      29.616833,
      -12.232164,
      29.681504,
      -12.204092,
      29.737555,
      -12.149369,
      29.772546,
      -12.149947,
      29.814790,
      -13.444499,
      29.814759,
      -13.433170,
      29.776424,
      -13.459035,
      29.726404,
      -13.424006,
      29.672409,
      -13.433105,
      29.639046,
      -13.403673,
      29.613116,
      -13.375137,
      29.621703,
      -13.363390,
      29.604829,
      -13.349763,
      29.649939,
      -13.294444,
      29.646308,
      -13.251555,
      29.682661,
      -13.224600,
      29.675014,
      -13.243567,
      29.640883,
      -13.203668,
      29.585563,
      -13.247970,
      29.504409,
      -13.313285,
      29.441285,
      -13.325537,
      29.361616,
      -13.353148,
      29.351998,
      -13.333942,
      29.316159,
      -13.374752,
      29.297604,
      -13.448835,
      29.178509,
      -13.404249,
      29.166373,
      -13.367511,
      29.119544
    ]);
    poly[940] = _TzPolygon([
      -11.134911,
      28.493335,
      -11.103479,
      28.476571,
      -11.020340,
      28.512599,
      -10.970210,
      28.510365,
      -10.947537,
      28.540304,
      -10.847130,
      28.549417,
      -10.768615,
      28.603769,
      -10.724992,
      28.608726,
      -10.722300,
      28.662335,
      -10.683519,
      28.663692,
      -10.673800,
      28.697246,
      -10.637592,
      28.688393,
      -10.626490,
      28.659173,
      -10.563421,
      28.673458,
      -10.518294,
      28.629829,
      -10.449687,
      28.647545,
      -10.364691,
      28.618374,
      -10.299902,
      28.634357,
      -10.226195,
      28.575822,
      -10.163785,
      28.626856,
      -10.046194,
      28.644290,
      -9.997119,
      28.621223,
      -9.944905,
      28.627850,
      -9.811769,
      28.675746,
      -9.801607,
      28.696679,
      -9.751002,
      28.668470,
      -9.746895,
      28.635796,
      -9.718205,
      28.618234,
      -9.697828,
      28.631098,
      -9.592655,
      28.612234,
      -9.575947,
      28.581133,
      -9.552457,
      28.618911,
      -9.557359,
      28.576728,
      -9.484813,
      28.571904,
      -9.478083,
      28.535243,
      -9.454917,
      28.537078,
      -9.448200,
      28.513287,
      -9.358889,
      28.520833,
      -9.311667,
      28.402222,
      -9.260833,
      28.372222,
      -9.228889,
      28.395556,
      -9.093889,
      28.622500,
      -8.840000,
      28.860833,
      -8.667778,
      28.961667,
      -8.546944,
      28.937500,
      -8.479167,
      28.896944,
      -8.271282,
      30.792749,
      -11.134911,
      30.792749
    ]);
    poly[941] = _TzPolygon([
      -8.265476,
      30.792749,
      -7.970278,
      30.696944,
      -7.580278,
      30.455833,
      -7.356389,
      30.406944,
      -7.136944,
      30.311389,
      -6.962500,
      30.188333,
      -6.860278,
      30.082500,
      -6.755278,
      29.891389,
      -6.627500,
      29.732500,
      -6.455556,
      29.661111,
      -6.300833,
      29.552500,
      -5.991389,
      29.495833,
      -5.918889,
      29.518889,
      -5.798889,
      29.614167,
      -5.697222,
      29.628333,
      -5.184444,
      29.458611,
      -5.149089,
      29.440749,
      -5.149089,
      30.792749
    ]);
    poly[942] = _TzPolygon([
      -11.786177,
      30.792749,
      -11.786177,
      33.328851,
      -11.890052,
      33.327606,
      -11.923663,
      33.348439,
      -12.140198,
      33.256902,
      -12.186765,
      33.307413,
      -12.248652,
      33.311437,
      -12.347920,
      33.376109,
      -12.325448,
      33.475501,
      -12.363927,
      33.548555,
      -12.421672,
      33.492002,
      -12.417455,
      33.473736,
      -12.474728,
      33.458669,
      -12.553990,
      33.375399,
      -12.532783,
      33.334224,
      -12.548461,
      33.271888,
      -12.637663,
      33.179940,
      -12.613542,
      33.181313,
      -12.598464,
      33.152817,
      -12.599172,
      33.048669,
      -12.768230,
      32.937075,
      -12.860822,
      32.954801,
      -12.903850,
      33.020353,
      -13.112252,
      32.983961,
      -13.210203,
      33.006792,
      -13.298619,
      32.943391,
      -13.405888,
      32.920106,
      -13.463110,
      32.887606,
      -13.468943,
      32.859828,
      -13.525849,
      32.847688,
      -13.576721,
      32.747328,
      -13.559227,
      32.697312,
      -13.574746,
      32.670362,
      -13.639499,
      32.692606,
      -13.649500,
      32.783717,
      -13.707556,
      32.842050,
      -13.785056,
      32.768717,
      -13.815889,
      32.809272,
      -13.839778,
      32.910384,
      -13.883389,
      32.917328,
      -13.942833,
      32.997884,
      -13.998540,
      32.992559,
      -13.998540,
      30.792749
    ]);
    poly[943] = _TzPolygon([
      -13.998540,
      33.068531,
      -13.986615,
      33.070287,
      -13.961167,
      33.135384,
      -13.922746,
      33.161491,
      -13.998540,
      33.215808
    ]);
    poly[944] = _TzPolygon([
      -9.573815,
      33.418387,
      -9.573815,
      33.701099,
      -9.611583,
      33.701099,
      -9.614468,
      33.698889,
      -9.579288,
      33.586555,
      -9.625868,
      33.510781,
      -9.614252,
      33.443259
    ]);
    poly[945] = _TzPolygon([
      -9.573815,
      33.004886,
      -9.626094,
      32.996071,
      -9.616094,
      33.060516,
      -9.665816,
      33.099682,
      -9.586650,
      33.113571,
      -9.603039,
      33.206071,
      -9.792761,
      33.296904,
      -9.823039,
      33.361904,
      -9.912205,
      33.391071,
      -9.936094,
      33.360238,
      -10.051111,
      33.315266,
      -10.212222,
      33.555266,
      -10.341944,
      33.544432,
      -10.462500,
      33.636099,
      -10.510484,
      33.636934,
      -10.577446,
      33.676825,
      -10.568333,
      33.701099,
      -10.702222,
      33.553333,
      -10.776389,
      33.510556,
      -10.807778,
      33.453611,
      -10.793056,
      33.413056,
      -10.807500,
      33.359722,
      -10.861750,
      33.316356,
      -10.845556,
      33.280278,
      -10.889167,
      33.259167,
      -10.938889,
      33.305000,
      -11.070554,
      33.328029,
      -11.158114,
      33.404576,
      -11.235912,
      33.379685,
      -11.376497,
      33.289405,
      -11.433939,
      33.292884,
      -11.403196,
      33.243757,
      -11.417835,
      33.230710,
      -11.474773,
      33.255939,
      -11.587551,
      33.242884,
      -11.611996,
      33.330939,
      -11.786177,
      33.328851,
      -11.786177,
      30.792749,
      -9.573815,
      30.792749
    ]);
    poly[946] = _TzPolygon([
      -9.573815,
      33.002741,
      -9.507483,
      33.016071,
      -9.415387,
      32.948084,
      -9.368326,
      32.992709,
      -9.493295,
      33.144293,
      -9.509750,
      33.212448,
      -9.488116,
      33.244833,
      -9.500823,
      33.278236,
      -9.486112,
      33.326002,
      -9.535027,
      33.394529,
      -9.573815,
      33.418387
    ]);
    poly[947] = _TzPolygon([
      -8.271282,
      30.792749,
      -8.538316,
      30.978071,
      -8.621816,
      31.077941,
      -8.631390,
      31.149640,
      -8.583538,
      31.211052,
      -8.632150,
      31.278122,
      -8.606841,
      31.312361,
      -8.617067,
      31.348050,
      -8.587210,
      31.375010,
      -8.631410,
      31.398140,
      -8.640340,
      31.458730,
      -8.684140,
      31.489520,
      -8.683610,
      31.536170,
      -8.709550,
      31.570480,
      -8.823560,
      31.576390,
      -8.911260,
      31.679900,
      -8.923260,
      31.734750,
      -8.895350,
      31.766370,
      -8.890280,
      31.821660,
      -8.936776,
      31.947051,
      -9.018010,
      31.936660,
      -9.071180,
      31.984380,
      -9.051370,
      32.060910,
      -9.062930,
      32.164072,
      -9.133575,
      32.267020,
      -9.118255,
      32.431400,
      -9.153105,
      32.493520,
      -9.172335,
      32.486630,
      -9.254665,
      32.540910,
      -9.246345,
      32.584490,
      -9.275765,
      32.648529,
      -9.285126,
      32.755682,
      -9.323136,
      32.765450,
      -9.401161,
      32.954093,
      -9.491927,
      32.988849,
      -9.507483,
      33.016071,
      -9.573815,
      33.004886,
      -9.573815,
      30.792749
    ]);
    poly[948] = _TzPolygon([
      -14.386368,
      34.358479,
      -14.431277,
      34.264367,
      -14.458610,
      34.084883,
      -14.489603,
      34.087049,
      -14.470590,
      33.936017,
      -14.549837,
      33.814140,
      -14.501344,
      33.716264,
      -14.537773,
      33.702650,
      -14.577867,
      33.717998,
      -14.589984,
      33.701099,
      -14.386368,
      33.701099
    ]);
    poly[949] = _TzPolygon([
      -15.002667,
      34.358479,
      -15.002667,
      34.622374,
      -15.080658,
      34.571439,
      -15.096157,
      34.591939,
      -15.124790,
      34.568761,
      -15.265405,
      34.603263,
      -15.326200,
      34.574697,
      -15.353738,
      34.518884,
      -15.414064,
      34.510686,
      -15.423293,
      34.441124,
      -15.493324,
      34.426395,
      -15.608898,
      34.457951,
      -15.609004,
      34.358479
    ]);
    poly[950] = _TzPolygon([
      -15.002667,
      34.622374,
      -14.898901,
      34.565292,
      -14.811327,
      34.584002,
      -14.688096,
      34.520733,
      -14.646376,
      34.551564,
      -14.555128,
      34.516104,
      -14.519512,
      34.464636,
      -14.395707,
      34.393408,
      -14.386368,
      34.359039,
      -14.386368,
      34.622374
    ]);
    poly[951] = _TzPolygon([
      -15.609703,
      35.836385,
      -15.419138,
      35.853111,
      -15.169963,
      35.790065,
      -14.895350,
      35.918573,
      -14.895363,
      35.872112,
      -14.675621,
      35.872098,
      -14.386368,
      35.627946,
      -14.386368,
      40.227580,
      -15.609703,
      40.227580
    ]);
    poly[952] = _TzPolygon([
      -14.386368,
      35.627946,
      -14.259227,
      35.520629,
      -14.170657,
      35.486785,
      -13.699308,
      35.089576,
      -13.483110,
      34.866898,
      -13.483110,
      34.607174,
      -13.348167,
      34.561527,
      -13.232242,
      34.576116,
      -12.907414,
      34.532412,
      -12.736354,
      34.535023,
      -12.570796,
      34.455736,
      -12.265443,
      34.417260,
      -12.171652,
      34.378231,
      -12.077048,
      34.428389,
      -12.077048,
      36.964340,
      -14.386368,
      36.964340
    ]);
    poly[953] = _TzPolygon([
      -11.569075,
      35.332719,
      -11.575345,
      34.960433,
      -11.400000,
      34.929000,
      -11.324750,
      34.794750,
      -11.279111,
      34.800529,
      -11.211159,
      34.759604,
      -11.118500,
      34.638000,
      -11.053124,
      34.637388,
      -11.045500,
      34.615000,
      -11.002750,
      34.622750,
      -10.939500,
      34.673250,
      -10.761000,
      34.683250,
      -10.713250,
      34.650000,
      -10.688750,
      34.660750,
      -10.617250,
      34.617250,
      -10.597000,
      34.625750,
      -10.572250,
      34.584500,
      -10.529000,
      34.570000,
      -10.485000,
      34.596500,
      -10.428500,
      34.559500,
      -10.308000,
      34.586750,
      -10.206500,
      34.570500,
      -10.119000,
      34.520500,
      -10.067250,
      34.541500,
      -9.767729,
      34.333988,
      -9.767729,
      35.332719
    ]);
    poly[954] = _TzPolygon([
      -12.077048,
      34.428389,
      -11.972391,
      34.483877,
      -11.856008,
      34.590756,
      -11.739242,
      34.634426,
      -11.573566,
      34.636897,
      -11.568976,
      35.332719,
      -12.077048,
      35.332719
    ]);
    poly[955] = _TzPolygon([
      -11.568976,
      35.332719,
      -11.568913,
      35.342316,
      -11.585084,
      35.387440,
      -11.562091,
      35.415355,
      -11.584215,
      35.441946,
      -11.576507,
      35.478377,
      -11.559626,
      35.477888,
      -11.582192,
      35.515192,
      -11.558688,
      35.528067,
      -11.569741,
      35.550137,
      -11.548838,
      35.574603,
      -11.562921,
      35.644761,
      -11.506730,
      35.711484,
      -11.477472,
      35.711639,
      -11.470657,
      35.774572,
      -11.419842,
      35.810930,
      -11.411228,
      35.843352,
      -11.438248,
      35.913531,
      -11.422892,
      35.943818,
      -11.465587,
      35.957946,
      -11.457663,
      35.985547,
      -11.494471,
      36.042192,
      -11.540585,
      36.062893,
      -11.512823,
      36.120043,
      -11.570353,
      36.154096,
      -11.547985,
      36.183413,
      -11.566800,
      36.175360,
      -11.582068,
      36.199761,
      -11.670874,
      36.183230,
      -11.708525,
      36.217465,
      -11.690431,
      36.270217,
      -11.719746,
      36.307039,
      -11.713096,
      36.355770,
      -11.678515,
      36.386768,
      -11.680225,
      36.482846,
      -11.698283,
      36.517658,
      -11.759261,
      36.511461,
      -11.698523,
      36.573255,
      -11.737779,
      36.627242,
      -11.648194,
      36.768322,
      -11.550491,
      36.814589,
      -11.595382,
      36.867529,
      -11.589811,
      36.964340,
      -12.077048,
      36.964340,
      -12.077048,
      35.332719
    ]);
    poly[956] = _TzPolygon([
      -11.589811,
      36.964340,
      -11.586129,
      37.028323,
      -11.625113,
      37.080046,
      -11.655315,
      37.220281,
      -11.634360,
      37.273811,
      -11.677959,
      37.332265,
      -11.691263,
      37.398726,
      -11.636313,
      37.445275,
      -11.614112,
      37.501854,
      -11.626115,
      37.582392,
      -11.575462,
      37.656892,
      -11.546822,
      37.752804,
      -11.506450,
      37.786640,
      -11.457268,
      37.777250,
      -11.372271,
      37.827490,
      -11.311206,
      37.830280,
      -11.260281,
      37.930590,
      -11.271239,
      38.215691,
      -11.289381,
      38.268840,
      -11.328712,
      38.284052,
      -11.331431,
      38.333561,
      -11.373730,
      38.368672,
      -11.419405,
      38.470308,
      -11.286101,
      38.636391,
      -11.273193,
      38.752408,
      -11.171765,
      38.882995,
      -11.143433,
      39.124245,
      -11.175432,
      39.246038,
      -10.980957,
      39.523081,
      -10.914043,
      39.763603,
      -10.849727,
      39.865150,
      -10.806914,
      39.999104,
      -10.670602,
      40.173255,
      -10.603183,
      40.227580,
      -14.386368,
      40.227580,
      -14.386368,
      36.964340
    ]);
    poly[957] = _TzPolygon([
      -9.611583,
      33.701099,
      -9.583660,
      33.722487,
      -9.586363,
      33.773357,
      -9.718675,
      33.938925,
      -9.619009,
      33.967551,
      -9.559071,
      33.949536,
      -9.493500,
      34.040000,
      -9.757889,
      34.327171,
      -9.767729,
      34.333988,
      -9.767729,
      33.701099
    ]);
    poly[958] = _TzPolygon([
      9.636901,
      -4.286175,
      9.596716,
      -4.312933,
      9.625437,
      -4.341473,
      9.596478,
      -4.390435,
      9.636901,
      -4.413726
    ]);
    poly[959] = _TzPolygon([
      7.088077,
      -4.045655,
      7.088077,
      -3.030016,
      7.071809,
      -3.031893,
      7.052705,
      -3.087603,
      6.822296,
      -3.232027,
      6.777575,
      -3.236115,
      6.731702,
      -3.208998,
      6.623015,
      -3.260786,
      6.601251,
      -3.233268,
      6.252820,
      -3.175691,
      6.251522,
      -3.154513,
      6.153126,
      -3.102740,
      5.985004,
      -3.073809,
      5.856884,
      -3.020033,
      5.709230,
      -3.026427,
      5.716022,
      -2.953969,
      5.641276,
      -2.966448,
      5.619962,
      -2.933506,
      5.657319,
      -2.857874,
      5.599837,
      -2.761294,
      5.437734,
      -2.748967,
      5.387981,
      -2.724216,
      5.342807,
      -2.724146,
      5.356565,
      -2.769282,
      5.304442,
      -2.766837,
      5.289931,
      -2.785249,
      5.250691,
      -2.753181,
      5.216962,
      -2.764245,
      5.140927,
      -2.723532,
      5.101642,
      -2.757012,
      5.128030,
      -2.876199,
      5.126928,
      -2.948670,
      5.103333,
      -2.963056,
      5.134464,
      -3.068524,
      5.124754,
      -3.108305,
      4.895925,
      -3.148288,
      4.994171,
      -3.758068,
      5.046503,
      -3.965016,
      5.038403,
      -4.045655
    ]);
    poly[960] = _TzPolygon([
      7.088077,
      -3.030016,
      7.141769,
      -3.023819,
      7.237718,
      -2.952799,
      7.269923,
      -2.975304,
      7.612207,
      -2.922151,
      7.820013,
      -2.831048,
      7.862630,
      -2.791195,
      7.952178,
      -2.781419,
      7.922653,
      -2.746703,
      8.020386,
      -2.679616,
      8.030426,
      -2.604682,
      8.123750,
      -2.626841,
      8.152074,
      -2.608096,
      8.145660,
      -2.551387,
      8.206478,
      -2.493031,
      8.786579,
      -2.584254,
      8.794263,
      -2.630319,
      8.827969,
      -2.596807,
      8.878310,
      -2.623229,
      8.921731,
      -2.618056,
      8.943087,
      -2.651290,
      9.019233,
      -2.663835,
      9.032116,
      -2.748035,
      9.063156,
      -2.780181,
      9.090598,
      -2.760830,
      9.143359,
      -2.772785,
      9.158293,
      -2.735016,
      9.257247,
      -2.657061,
      9.313522,
      -2.721153,
      9.372280,
      -2.675979,
      9.486392,
      -2.684108,
      9.569059,
      -2.768477,
      9.636901,
      -2.746990,
      9.636901,
      -0.723987,
      7.088077,
      -0.723987
    ]);
    poly[961] = _TzPolygon([
      9.636901,
      -2.961019,
      9.636901,
      -2.746990,
      9.569059,
      -2.768477,
      9.491666,
      -2.687203,
      9.410472,
      -2.767721,
      9.575542,
      -2.935340
    ]);
    poly[962] = _TzPolygon([
      10.271946,
      -7.367323,
      10.274467,
      -7.363089,
      10.332002,
      -7.357427,
      10.337964,
      -7.367323,
      10.998676,
      -7.367323,
      10.998676,
      -6.536906,
      10.591899,
      -6.536906,
      10.628390,
      -6.595214,
      10.671935,
      -6.615223,
      10.673269,
      -6.640854,
      10.634290,
      -6.644065,
      10.598677,
      -6.676063,
      10.536404,
      -6.659395,
      10.526980,
      -6.682369,
      10.467694,
      -6.676656,
      10.438694,
      -6.625990,
      10.398041,
      -6.654553,
      10.364058,
      -6.643946,
      10.340825,
      -6.698501,
      10.386824,
      -6.806505,
      10.344946,
      -6.859148,
      10.354713,
      -6.940187,
      10.262254,
      -7.011270,
      10.218386,
      -6.977491,
      10.172364,
      -6.995023,
      10.147811,
      -7.049049,
      10.165190,
      -7.086045,
      10.209164,
      -7.084597,
      10.251953,
      -7.148583,
      10.266040,
      -7.278004,
      10.236172,
      -7.337537,
      10.242986,
      -7.367323
    ]);
    poly[963] = _TzPolygon([
      10.591899,
      -6.536906,
      10.562645,
      -6.427134,
      10.598567,
      -6.397501,
      10.700758,
      -6.413795,
      10.684025,
      -6.320884,
      10.740197,
      -6.246191,
      10.724488,
      -6.210674,
      10.660038,
      -6.231403,
      10.634245,
      -6.183113,
      10.615769,
      -6.223228,
      10.581067,
      -6.205066,
      10.529258,
      -6.247732,
      10.486274,
      -6.160440,
      10.449091,
      -6.185643,
      10.418941,
      -6.155388,
      10.387995,
      -6.187500,
      10.363453,
      -6.159603,
      10.339240,
      -6.192515,
      10.302649,
      -6.189132,
      10.316304,
      -6.206246,
      10.301972,
      -6.233048,
      10.227152,
      -6.177825,
      10.197135,
      -5.985932,
      10.278032,
      -5.954100,
      10.266982,
      -5.885976,
      10.377784,
      -5.866918,
      10.379406,
      -5.840459,
      10.433439,
      -5.785716,
      10.431181,
      -5.706489,
      9.636901,
      -5.706489,
      9.636901,
      -6.536906
    ]);
    poly[964] = _TzPolygon([
      10.317788,
      -5.197092,
      10.317788,
      -4.876072,
      9.881581,
      -4.876072,
      9.891179,
      -4.912808,
      9.868258,
      -4.929519,
      9.892372,
      -4.966957,
      9.946322,
      -4.963884,
      9.953859,
      -4.940390,
      9.992084,
      -4.987612,
      10.023691,
      -4.961258,
      10.072621,
      -5.015148,
      10.107264,
      -4.999303,
      10.082576,
      -5.055264,
      10.108504,
      -5.038393,
      10.111259,
      -5.073111,
      10.122127,
      -5.036777,
      10.139102,
      -5.069697,
      10.180756,
      -5.060542,
      10.175528,
      -5.104580,
      10.194631,
      -5.080255,
      10.224068,
      -5.083159,
      10.204687,
      -5.121975,
      10.236970,
      -5.105604,
      10.256548,
      -5.119517,
      10.272982,
      -5.097830,
      10.283133,
      -5.120450,
      10.307651,
      -5.110961,
      10.287832,
      -5.188943
    ]);
    poly[965] = _TzPolygon(
        [10.317788, -5.211651, 10.305438, -5.256699, 10.317788, -5.284404]);
    poly[966] = _TzPolygon([
      10.317788,
      -5.292417,
      10.290359,
      -5.322865,
      10.305241,
      -5.348741,
      10.282479,
      -5.362910,
      10.317788,
      -5.429921
    ]);
    poly[967] = _TzPolygon([
      10.431181,
      -5.706489,
      10.431107,
      -5.703907,
      10.468109,
      -5.651395,
      10.451180,
      -5.617637,
      10.463243,
      -5.557725,
      10.424538,
      -5.499865,
      10.321806,
      -5.437546,
      10.317788,
      -5.429921,
      10.317788,
      -5.706489
    ]);
    poly[968] = _TzPolygon(
        [10.317788, -5.292417, 10.320178, -5.289764, 10.317788, -5.284404]);
    poly[969] = _TzPolygon(
        [10.317788, -5.211651, 10.321503, -5.198102, 10.317788, -5.197092]);
    poly[970] = _TzPolygon([
      10.998676,
      -5.706489,
      10.998676,
      -5.481553,
      10.973614,
      -5.492525,
      10.976044,
      -5.452003,
      10.901324,
      -5.451622,
      10.854347,
      -5.402723,
      10.774869,
      -5.432628,
      10.764731,
      -5.468008,
      10.643995,
      -5.461520,
      10.623197,
      -5.478925,
      10.557722,
      -5.456998,
      10.431726,
      -5.512140,
      10.463953,
      -5.559955,
      10.451180,
      -5.617637,
      10.468109,
      -5.649571,
      10.431107,
      -5.703907,
      10.431402,
      -5.706489
    ]);
    poly[971] = _TzPolygon([
      9.636901,
      -4.413726,
      9.664151,
      -4.429427,
      9.646781,
      -4.504978,
      9.751433,
      -4.515380,
      9.741919,
      -4.553703,
      9.718202,
      -4.542943,
      9.693190,
      -4.561851,
      9.725141,
      -4.612509,
      9.702850,
      -4.620837,
      9.713127,
      -4.645830,
      9.686958,
      -4.656353,
      9.678492,
      -4.690594,
      9.747114,
      -4.733283,
      9.755573,
      -4.761698,
      9.736792,
      -4.774956,
      9.783664,
      -4.816693,
      9.781454,
      -4.783853,
      9.835547,
      -4.785854,
      9.872090,
      -4.839742,
      9.881581,
      -4.876072,
      10.998676,
      -4.876072,
      10.998676,
      -4.045655,
      9.810969,
      -4.045655,
      9.803041,
      -4.051230,
      9.847235,
      -4.127239,
      9.773817,
      -4.188891,
      9.760091,
      -4.266451,
      9.640775,
      -4.283595,
      9.636901,
      -4.286175
    ]);
    poly[972] = _TzPolygon([
      10.998676,
      -5.481553,
      11.016507,
      -5.473747,
      11.083035,
      -5.488879,
      11.105675,
      -5.382965,
      11.138299,
      -5.332996,
      11.206331,
      -5.324420,
      11.249399,
      -5.253339,
      11.392515,
      -5.244954,
      11.428803,
      -5.198715,
      11.579182,
      -5.216561,
      11.615543,
      -5.294994,
      11.679406,
      -5.265239,
      11.762937,
      -5.259327,
      11.830716,
      -5.404521,
      11.843171,
      -5.378075,
      11.821165,
      -5.354006,
      11.854764,
      -5.284959,
      11.833182,
      -5.257498,
      11.927671,
      -5.172246,
      11.982503,
      -5.074635,
      12.018711,
      -4.832580,
      11.999476,
      -4.739715,
      12.066080,
      -4.700418,
      12.059607,
      -4.630051,
      12.139016,
      -4.607346,
      12.141653,
      -4.544065,
      12.202869,
      -4.579941,
      12.283371,
      -4.473276,
      12.331783,
      -4.473417,
      12.333753,
      -4.439641,
      12.302590,
      -4.418609,
      12.310532,
      -4.396295,
      12.360451,
      -4.416353,
      12.360451,
      -4.045655,
      10.998676,
      -4.045655
    ]);
    poly[973] = _TzPolygon([
      12.360451,
      -4.416353,
      12.418755,
      -4.439781,
      12.485780,
      -4.419907,
      12.533000,
      -4.364649,
      12.560397,
      -4.402291,
      12.609841,
      -4.411587,
      12.658155,
      -4.480677,
      12.722821,
      -4.479101,
      12.711044,
      -4.431418,
      12.743846,
      -4.346758,
      12.701378,
      -4.300473,
      12.726606,
      -4.232792,
      12.816605,
      -4.208981,
      12.866143,
      -4.226150,
      12.960996,
      -4.218269,
      12.990832,
      -4.265696,
      13.039498,
      -4.274882,
      13.119637,
      -4.346929,
      13.189566,
      -4.288174,
      13.187061,
      -4.225566,
      13.236763,
      -4.258892,
      13.296096,
      -4.136759,
      13.396076,
      -4.092644,
      13.413022,
      -4.045655,
      12.360451,
      -4.045655
    ]);
    poly[974] = _TzPolygon([
      9.810969,
      -4.045655,
      9.835245,
      -4.028583,
      9.832811,
      -3.973394,
      9.874986,
      -3.968127,
      9.873779,
      -3.931369,
      9.905731,
      -3.895923,
      9.894730,
      -3.803282,
      9.926713,
      -3.776553,
      9.928406,
      -3.667671,
      9.958485,
      -3.618287,
      9.934653,
      -3.599631,
      9.910974,
      -3.311272,
      9.870566,
      -3.317644,
      9.845801,
      -3.271703,
      9.935518,
      -3.189225,
      9.840556,
      -3.186587,
      9.851391,
      -3.153830,
      9.820478,
      -3.103454,
      9.725491,
      -3.056710,
      9.743046,
      -3.005442,
      9.636901,
      -2.961019,
      9.636901,
      -4.045655
    ]);
    poly[975] = _TzPolygon([
      9.636901,
      -2.746990,
      9.641285,
      -2.745601,
      9.680714,
      -2.757614,
      9.697108,
      -2.787175,
      9.746514,
      -2.790052,
      9.826363,
      -2.726519,
      9.883963,
      -2.761897,
      9.960741,
      -2.743056,
      10.069591,
      -2.790470,
      10.190787,
      -2.798259,
      10.253004,
      -2.757624,
      10.318830,
      -2.850473,
      10.387842,
      -2.831507,
      10.422508,
      -2.773343,
      10.454496,
      -2.866360,
      10.614443,
      -2.941140,
      10.686122,
      -2.905675,
      10.721892,
      -2.937987,
      10.764413,
      -2.895283,
      10.887705,
      -2.864039,
      10.924999,
      -2.817496,
      10.967128,
      -2.840803,
      11.006688,
      -2.833702,
      10.992322,
      -2.384821,
      9.636901,
      -2.384821
    ]);
    poly[976] = _TzPolygon([
      10.995854,
      -0.723987,
      11.005831,
      -0.807563,
      10.998042,
      -0.855074,
      10.962393,
      -0.893458,
      11.001978,
      -0.916519,
      10.986350,
      -1.387380,
      11.021033,
      -1.425245,
      11.021028,
      -1.615577,
      10.985086,
      -1.616308,
      10.972004,
      -1.749934,
      10.992322,
      -2.384821,
      12.360451,
      -2.384821,
      12.360451,
      -0.723987
    ]);
    poly[977] = _TzPolygon([
      15.084000,
      -0.723987,
      14.785124,
      -1.069027,
      14.729800,
      -1.318300,
      14.501500,
      -1.678000,
      14.475666,
      -1.980500,
      14.191679,
      -1.998162,
      14.147003,
      -2.103259,
      14.248917,
      -2.297285,
      14.299451,
      -2.473564,
      14.135172,
      -2.676377,
      14.054385,
      -2.838967,
      14.006217,
      -2.854854,
      13.992887,
      -2.836147,
      13.823712,
      -2.908240,
      13.727169,
      -2.905943,
      13.654096,
      -2.874002,
      13.624663,
      -2.952490,
      13.657017,
      -3.001398,
      13.613599,
      -3.040313,
      13.688995,
      -3.107995,
      13.677491,
      -3.181224,
      13.706131,
      -3.212181,
      13.707476,
      -3.268807,
      13.683881,
      -3.247434,
      13.585730,
      -3.250420,
      13.555871,
      -3.278835,
      13.288968,
      -3.234142,
      13.276557,
      -3.437479,
      13.178668,
      -3.422262,
      13.158050,
      -3.441779,
      13.166898,
      -3.552322,
      13.196848,
      -3.552500,
      13.200016,
      -3.586656,
      13.303178,
      -3.737571,
      13.372188,
      -3.797905,
      13.377852,
      -3.960441,
      13.407634,
      -3.963190,
      13.442792,
      -3.895670,
      13.452134,
      -3.940362,
      13.504436,
      -3.967139,
      13.474288,
      -3.982839,
      13.490373,
      -3.964923,
      13.472940,
      -3.959626,
      13.435086,
      -3.984476,
      13.413937,
      -4.045655,
      15.084000,
      -4.045655
    ]);
    poly[978] = _TzPolygon([
      6.752252,
      -0.723987,
      6.752252,
      0.607952,
      6.737609,
      0.649959,
      6.641511,
      0.635398,
      6.607584,
      0.657178,
      6.584151,
      0.741341,
      6.562948,
      0.747563,
      6.529177,
      0.712423,
      6.444123,
      0.749588,
      6.380469,
      0.861879,
      6.333333,
      0.893104,
      6.335475,
      1.003468,
      6.256126,
      1.024198,
      6.223399,
      1.063258,
      6.169635,
      1.082896,
      6.169121,
      1.199438,
      6.113160,
      1.199352,
      5.926547,
      1.273294,
      5.866848,
      1.195395,
      5.700248,
      1.127286,
      5.599666,
      0.995806,
      5.566463,
      0.717362,
      5.580780,
      0.334919,
      5.517259,
      0.186659,
      5.438167,
      0.088537,
      5.344039,
      -0.143586,
      5.314208,
      -0.273935,
      5.203790,
      -0.400143,
      5.131994,
      -0.599363,
      5.037841,
      -0.723987
    ]);
    poly[979] = _TzPolygon([
      6.752252,
      1.619171,
      6.752252,
      2.408972,
      6.151687,
      2.408972,
      6.132875,
      2.171817,
      6.039870,
      1.673024,
      6.236389,
      1.629444,
      6.288785,
      1.808761,
      6.308161,
      1.787759,
      6.383226,
      1.785142,
      6.413054,
      1.763948,
      6.427037,
      1.778976,
      6.475095,
      1.752610,
      6.504432,
      1.693843,
      6.555235,
      1.697641,
      6.555580,
      1.671030,
      6.579723,
      1.667192,
      6.613416,
      1.610160,
      6.650991,
      1.615559,
      6.688464,
      1.575055
    ]);
    poly[980] = _TzPolygon([
      6.752252,
      0.607952,
      6.761493,
      0.581441,
      6.788668,
      0.566203,
      6.807286,
      0.579840,
      6.828771,
      0.532145,
      6.921055,
      0.566006,
      6.943217,
      0.522832,
      6.971071,
      0.521241,
      7.022296,
      0.603545,
      7.099326,
      0.614158,
      7.113836,
      0.591430,
      7.317309,
      0.658271,
      7.401160,
      0.644127,
      7.412817,
      0.618530,
      7.392208,
      0.568686,
      7.460079,
      0.519535,
      7.592577,
      0.518090,
      7.622082,
      0.586039,
      7.703112,
      0.590358,
      7.704283,
      0.627113,
      7.753867,
      0.611397,
      7.767771,
      0.631076,
      7.867469,
      0.627453,
      8.093466,
      0.584628,
      8.185035,
      0.613936,
      8.202469,
      0.588614,
      8.215801,
      0.619290,
      8.260299,
      0.638437,
      8.286651,
      0.731133,
      8.340880,
      0.730040,
      8.404740,
      0.696493,
      8.422440,
      0.651659,
      8.466663,
      0.647973,
      8.466663,
      0.842492,
      6.752252,
      0.842492
    ]);
    poly[981] = _TzPolygon([
      6.752252,
      1.619171,
      6.761109,
      1.625297,
      6.799474,
      1.594322,
      6.825103,
      1.612561,
      6.830920,
      1.597624,
      6.905183,
      1.606130,
      6.919701,
      1.578409,
      6.997177,
      1.559175,
      6.995556,
      1.642500,
      7.532500,
      1.655833,
      8.357778,
      1.634722,
      8.374722,
      1.613056,
      8.466663,
      1.648996,
      8.466663,
      2.408972,
      6.752252,
      2.408972
    ]);
    poly[982] = _TzPolygon([
      8.466663,
      0.647973,
      8.493518,
      0.645734,
      8.595649,
      0.469556,
      8.754676,
      0.373824,
      8.756869,
      0.400920,
      8.792793,
      0.380067,
      8.779136,
      0.427770,
      8.811355,
      0.448214,
      8.791780,
      0.469049,
      8.800359,
      0.491319,
      8.877826,
      0.527585,
      8.938686,
      0.516568,
      9.043858,
      0.456238,
      9.108665,
      0.486697,
      9.144977,
      0.476761,
      9.163661,
      0.511570,
      9.209416,
      0.533602,
      9.256413,
      0.505835,
      9.311206,
      0.555794,
      9.323868,
      0.551245,
      9.323868,
      0.842492,
      8.466663,
      0.842492
    ]);
    poly[983] = _TzPolygon([
      9.323868,
      0.551245,
      9.340876,
      0.545134,
      9.405926,
      0.567003,
      9.437939,
      0.499967,
      9.474895,
      0.502923,
      9.499486,
      0.448704,
      9.499213,
      0.359421,
      9.451738,
      0.337541,
      9.427417,
      0.275777,
      9.463508,
      0.229232,
      9.485950,
      0.229040,
      9.478874,
      0.269704,
      9.506631,
      0.311194,
      9.524532,
      0.243250,
      9.574648,
      0.240063,
      9.571963,
      0.351337,
      9.591457,
      0.383690,
      9.625075,
      0.356310,
      9.595625,
      0.295852,
      9.657239,
      0.263496,
      9.686272,
      0.279253,
      9.650912,
      0.322973,
      9.674806,
      0.350878,
      9.717686,
      0.344802,
      9.727898,
      0.318905,
      9.846696,
      0.357399,
      9.921893,
      0.355176,
      9.937388,
      0.387322,
      10.027509,
      0.360492,
      10.020951,
      0.410229,
      10.057604,
      0.417747,
      10.098681,
      0.353076,
      10.181074,
      0.357477,
      10.181074,
      0.842492,
      9.323868,
      0.842492
    ]);
    poly[984] = _TzPolygon([
      8.466663,
      1.648996,
      8.496944,
      1.660833,
      8.548056,
      1.624722,
      9.049722,
      1.617778,
      9.170000,
      1.567222,
      9.321111,
      1.416667,
      9.487500,
      1.390556,
      9.485556,
      1.361111,
      9.542500,
      1.337500,
      9.646667,
      1.373889,
      9.995278,
      1.355000,
      10.181074,
      1.073261,
      10.181074,
      2.408972,
      8.466663,
      2.408972
    ]);
    poly[985] = _TzPolygon([
      10.564411,
      0.059253,
      10.601442,
      0.041287,
      10.632333,
      -0.059247,
      10.711561,
      -0.090090,
      10.720047,
      -0.072346,
      10.769827,
      -0.072847,
      10.818676,
      -0.021767,
      10.963250,
      -0.006107,
      10.978806,
      0.033526,
      11.038280,
      0.026697,
      11.038280,
      0.059253
    ]);
    poly[986] = _TzPolygon([
      11.038280,
      -0.723987,
      11.038280,
      -0.437025,
      11.030337,
      -0.438013,
      11.036049,
      -0.474990,
      10.974715,
      -0.544792,
      10.992317,
      -0.568294,
      10.923578,
      -0.593186,
      10.910424,
      -0.618436,
      10.939680,
      -0.626796,
      10.958282,
      -0.671080,
      10.987498,
      -0.653986,
      10.995854,
      -0.723987
    ]);
    poly[987] = _TzPolygon([
      10.564411,
      0.059253,
      10.560818,
      0.060996,
      10.526270,
      0.142670,
      10.404317,
      0.190356,
      10.426923,
      0.217696,
      10.407587,
      0.259261,
      10.421586,
      0.285950,
      10.376406,
      0.290316,
      10.325151,
      0.338370,
      10.308640,
      0.318671,
      10.312484,
      0.396899,
      10.258108,
      0.361591,
      10.181074,
      0.357477,
      10.181074,
      0.059253
    ]);
    poly[988] = _TzPolygon([
      10.996495,
      0.842492,
      10.997360,
      0.656310,
      10.931000,
      0.494680,
      11.009080,
      0.502850,
      11.038280,
      0.365791,
      11.038280,
      0.842492
    ]);
    poly[989] = _TzPolygon([
      10.333258,
      0.842492,
      10.376667,
      0.776667,
      10.579722,
      0.806944,
      10.714167,
      0.802500,
      10.758635,
      0.842492
    ]);
    poly[990] = _TzPolygon([
      11.038280,
      0.026697,
      11.062617,
      0.023902,
      11.114303,
      -0.017876,
      11.084144,
      -0.081163,
      11.117785,
      -0.143975,
      11.139510,
      -0.136231,
      11.038280,
      0.359778
    ]);
    poly[991] = _TzPolygon([
      11.038280,
      0.842492,
      11.038280,
      0.365791,
      11.174856,
      -0.275282,
      11.147961,
      -0.289357,
      11.126267,
      -0.270947,
      11.109296,
      -0.332746,
      11.069886,
      -0.359076,
      11.123257,
      -0.372445,
      11.114344,
      -0.427566,
      11.038280,
      -0.437025,
      11.038280,
      -0.723987,
      11.895485,
      -0.723987,
      11.895485,
      0.842492
    ]);
    poly[992] = _TzPolygon([
      10.996495,
      0.842492,
      10.996171,
      0.912209,
      10.799722,
      0.879444,
      10.758635,
      0.842492
    ]);
    poly[993] = _TzPolygon(
        [10.333258, 0.842492, 10.181074, 1.073261, 10.181074, 0.842492]);
    poly[994] = _TzPolygon([
      11.038280,
      0.842492,
      11.038280,
      0.944161,
      10.996171,
      0.912209,
      10.996495,
      0.842492
    ]);
    poly[995] = _TzPolygon(
        [11.038280, 1.112318, 11.031799, 1.114305, 11.038280, 1.104793]);
    poly[996] = _TzPolygon([
      11.038280,
      0.944161,
      11.094434,
      0.986770,
      11.087259,
      1.013535,
      11.052707,
      1.026935,
      11.061870,
      1.070169,
      11.038280,
      1.105342
    ]);
    poly[997] = _TzPolygon([
      11.038280,
      1.112661,
      11.121279,
      1.086865,
      11.131734,
      1.049632,
      11.176971,
      1.116670,
      11.169796,
      1.165027,
      11.235653,
      1.156529,
      11.247964,
      1.129548,
      11.279023,
      1.146164,
      11.250064,
      1.262568,
      11.266082,
      1.283863,
      11.302564,
      1.259543,
      11.327434,
      1.269131,
      11.298058,
      1.294360,
      11.292693,
      1.333351,
      11.307367,
      1.351690,
      11.366730,
      1.326673,
      11.368302,
      1.351054,
      11.395803,
      1.359378,
      11.389221,
      1.382343,
      11.444424,
      1.388455,
      11.481042,
      1.447749,
      11.453317,
      1.484943,
      11.478626,
      1.506247,
      11.459650,
      1.500624,
      11.451143,
      1.530884,
      11.478057,
      1.553851,
      11.407897,
      1.589215,
      11.393368,
      1.623846,
      11.407960,
      1.699710,
      11.429130,
      1.714140,
      11.416740,
      1.752390,
      11.444380,
      1.841670,
      11.427710,
      2.019250,
      11.594114,
      2.183972,
      11.679052,
      2.314287,
      11.734176,
      2.304626,
      11.784253,
      2.340799,
      11.791057,
      2.375653,
      11.856788,
      2.380240,
      11.874474,
      2.404186,
      11.895485,
      2.408972,
      11.038280,
      2.408972
    ]);
    poly[998] = _TzPolygon([
      13.489743,
      -0.723987,
      13.489743,
      1.022275,
      13.462500,
      1.031667,
      13.396389,
      1.170833,
      13.393056,
      1.244444,
      13.354469,
      1.284284,
      13.338856,
      1.241580,
      13.380272,
      1.211370,
      13.332141,
      1.202549,
      13.321453,
      1.175468,
      13.374676,
      0.991913,
      13.007796,
      0.973755,
      13.007276,
      1.159573,
      12.611690,
      1.566306,
      12.605380,
      1.868563,
      12.700556,
      1.928056,
      12.692222,
      1.950278,
      12.731111,
      1.988889,
      12.725556,
      2.096111,
      12.694444,
      2.142500,
      12.651499,
      2.154637,
      12.630833,
      2.200833,
      12.593611,
      2.220833,
      12.516389,
      2.225556,
      12.473333,
      2.263889,
      12.418611,
      2.264167,
      12.390000,
      2.087778,
      12.347350,
      2.065588,
      11.902544,
      2.408972,
      11.895485,
      2.405627,
      11.895485,
      -0.723987
    ]);
    poly[999] = _TzPolygon(
        [11.909474, 2.408972, 11.931259, 2.391928, 11.942550, 2.408972]);
  }
}

class _Initializer11 {
  static void _init() {
    poly[1000] = _TzPolygon([
      12.079607,
      2.408972,
      12.112624,
      2.390317,
      12.251282,
      2.381540,
      12.251864,
      2.408972
    ]);
    poly[1001] = _TzPolygon([
      15.084000,
      1.086532,
      14.981871,
      0.968179,
      14.944581,
      0.701735,
      14.998422,
      0.519270,
      14.963993,
      0.394631,
      15.001042,
      0.227435,
      14.974683,
      0.061520,
      15.079000,
      -0.245750,
      15.004103,
      -0.390241,
      15.083284,
      -0.431378,
      15.084000,
      -0.723987
    ]);
    poly[1002] = _TzPolygon([
      15.084000,
      -0.455990,
      15.083284,
      -0.431378,
      15.004103,
      -0.390241,
      15.079000,
      -0.245750,
      14.974683,
      0.061520,
      14.999829,
      0.232230,
      14.914000,
      0.244360,
      14.826320,
      0.196358,
      14.746547,
      0.238139,
      14.522067,
      0.168965,
      14.050911,
      0.381085,
      14.023056,
      0.417222,
      13.983611,
      0.424167,
      13.955556,
      0.471111,
      13.913611,
      0.465000,
      13.788611,
      0.582778,
      13.778056,
      0.616667,
      13.717778,
      0.596944,
      13.686944,
      0.620278,
      13.684167,
      0.781111,
      13.644167,
      0.774444,
      13.622778,
      0.902222,
      13.568056,
      0.995278,
      13.489743,
      1.022275,
      13.489743,
      -0.723987,
      15.084000,
      -0.723987
    ]);
    poly[1003] = _TzPolygon([
      6.822822,
      2.408972,
      6.822822,
      2.736543,
      6.784282,
      2.734515,
      6.747337,
      2.791663,
      6.693531,
      2.783087,
      6.635420,
      2.730245,
      6.569648,
      2.750632,
      6.512052,
      2.704630,
      6.487045,
      2.724148,
      6.464166,
      2.705186,
      6.377422,
      2.706714,
      6.177783,
      2.737949,
      6.151687,
      2.408972
    ]);
    poly[1004] = _TzPolygon([
      9.576548,
      3.223630,
      9.518867,
      3.195059,
      9.496747,
      3.153223,
      9.437560,
      3.132465,
      9.283908,
      3.157868,
      9.232595,
      3.122794,
      9.101948,
      3.088313,
      9.058787,
      2.890086,
      9.067759,
      2.778543,
      8.992706,
      2.791376,
      8.962624,
      2.772463,
      8.939759,
      2.782871,
      8.913874,
      2.755129,
      8.901328,
      2.772379,
      8.869428,
      2.754019,
      8.811296,
      2.766534,
      8.783668,
      2.729577,
      8.708142,
      2.761037,
      8.663585,
      2.734847,
      8.654577,
      2.755364,
      8.537622,
      2.751669,
      8.524398,
      2.769031,
      8.449759,
      2.748016,
      8.422628,
      2.706912,
      8.387939,
      2.717720,
      8.321437,
      2.693104,
      8.187122,
      2.754625,
      7.881580,
      2.676932,
      7.766559,
      2.733560,
      7.636474,
      2.716642,
      7.549986,
      2.734879,
      7.518575,
      2.782252,
      7.479609,
      2.795670,
      7.429746,
      2.793901,
      7.424327,
      2.744840,
      7.133006,
      2.772804,
      7.104953,
      2.740462,
      7.043364,
      2.761423,
      7.016800,
      2.728928,
      6.951420,
      2.712541,
      6.926480,
      2.741998,
      6.822822,
      2.736543,
      6.822822,
      2.408972,
      9.576548,
      2.408972
    ]);
    poly[1005] = _TzPolygon([
      10.953411,
      2.408972,
      10.953411,
      3.764132,
      10.924227,
      3.769666,
      10.817094,
      3.745729,
      10.735134,
      3.780269,
      10.698861,
      3.834232,
      10.592964,
      3.843343,
      10.409030,
      3.788037,
      10.461647,
      3.683455,
      10.417712,
      3.623735,
      10.272266,
      3.576600,
      10.211502,
      3.608029,
      10.176823,
      3.679370,
      10.114262,
      3.662747,
      10.078819,
      3.614454,
      9.968893,
      3.602537,
      9.924857,
      3.560815,
      9.898133,
      3.562172,
      9.861305,
      3.517764,
      9.870738,
      3.462655,
      9.827444,
      3.352287,
      9.771603,
      3.323478,
      9.703206,
      3.358335,
      9.659431,
      3.313877,
      9.655788,
      3.262879,
      9.576548,
      3.223630,
      9.576548,
      2.408972
    ]);
    poly[1006] = _TzPolygon([
      11.028164,
      3.724348,
      11.033867,
      3.715685,
      11.129606,
      3.720315,
      11.295346,
      3.493726,
      11.601921,
      3.549892,
      11.703094,
      3.593725,
      11.693756,
      3.609500,
      11.754747,
      3.680954,
      11.810683,
      3.669243,
      11.830986,
      3.629341,
      11.920285,
      3.619786,
      11.976468,
      3.678461,
      12.119320,
      3.631658,
      12.258877,
      3.666685,
      12.330274,
      3.663104,
      12.330274,
      3.724348
    ]);
    poly[1007] = _TzPolygon([
      12.330274,
      2.923244,
      12.330274,
      3.663104,
      12.258877,
      3.666685,
      12.119320,
      3.631658,
      11.976468,
      3.678461,
      11.920285,
      3.619786,
      11.830986,
      3.629341,
      11.810683,
      3.669243,
      11.754747,
      3.680954,
      11.693756,
      3.609500,
      11.732962,
      3.550077,
      11.774471,
      3.564487,
      11.789583,
      3.520084,
      11.815505,
      3.521887,
      11.860142,
      3.481321,
      11.858333,
      3.432222,
      11.895278,
      3.378056,
      11.890000,
      3.312222,
      11.993569,
      3.255818,
      12.029326,
      3.257076
    ]);
    poly[1008] = _TzPolygon([
      12.330274,
      2.717057,
      12.281421,
      2.695105,
      12.306099,
      2.661749,
      12.272019,
      2.543627,
      12.293979,
      2.517246,
      12.267385,
      2.504335,
      12.274239,
      2.472902,
      12.252995,
      2.462265,
      12.251864,
      2.408972,
      12.330274,
      2.408972
    ]);
    poly[1009] = _TzPolygon(
        [12.079607, 2.408972, 11.979880, 2.465320, 11.954690, 2.408972]);
    poly[1010] = _TzPolygon([
      11.028164,
      3.724348,
      11.008900,
      3.753611,
      10.953411,
      3.764132,
      10.953411,
      3.724348
    ]);
    poly[1011] = _TzPolygon([
      12.330274,
      3.663104,
      12.522698,
      3.653454,
      12.746709,
      3.941830,
      12.987683,
      4.103459,
      13.161925,
      4.142085,
      13.478063,
      4.141604,
      13.477944,
      4.234671,
      13.681421,
      4.465735,
      13.781003,
      4.873818,
      13.734483,
      4.949557,
      13.742946,
      5.246930,
      13.834558,
      5.350681,
      13.885645,
      5.529830,
      13.644750,
      6.155536,
      13.676514,
      6.277334,
      13.600376,
      6.427932,
      13.339288,
      6.696697,
      13.143423,
      6.820123,
      13.003533,
      6.942091,
      13.000072,
      7.052867,
      13.020471,
      7.121574,
      13.129070,
      7.221638,
      13.098325,
      7.388865,
      13.114850,
      7.439373,
      13.256671,
      7.670478,
      12.330274,
      7.670478
    ]);
    poly[1012] = _TzPolygon([
      12.330274,
      2.717057,
      12.364956,
      2.732641,
      12.352390,
      2.765683,
      12.409245,
      2.826144,
      12.330274,
      2.930381
    ]);
    poly[1013] = _TzPolygon([
      21.773345,
      0.151578,
      25.000000,
      -4.833334,
      26.529692,
      -7.367323,
      27.433543,
      -7.367323,
      27.433543,
      0.151578
    ]);
    poly[1014] = _TzPolygon([
      26.529692,
      -7.367323,
      25.000000,
      -4.833334,
      25.000072,
      -6.571880,
      16.500149,
      -5.609034,
      16.333333,
      -5.333333,
      15.500000,
      -5.500000,
      15.500783,
      -7.367323
    ]);
    poly[1015] = _TzPolygon([
      15.084000,
      1.085816,
      15.278128,
      1.311499,
      15.346796,
      2.636366,
      15.338195,
      3.019968,
      15.428574,
      3.031485,
      15.365330,
      3.507104,
      15.403418,
      3.536306,
      15.485183,
      3.536893,
      15.521040,
      3.595828,
      15.648148,
      3.703728,
      15.675656,
      3.833681,
      15.715259,
      3.885853,
      15.804220,
      3.911028,
      15.084000,
      3.911028
    ]);
    poly[1016] = _TzPolygon([
      20.263616,
      2.031303,
      20.242941,
      1.999862,
      20.266976,
      1.978931,
      20.259812,
      1.946854,
      20.224207,
      1.923759,
      20.297235,
      1.882274,
      20.297876,
      1.797805,
      20.337223,
      1.775031,
      20.406402,
      1.668216,
      20.530003,
      1.667574,
      20.596081,
      1.599572,
      20.656598,
      1.383804,
      20.740211,
      1.316550,
      20.723745,
      1.229730,
      20.736148,
      1.165150,
      20.943255,
      1.193591,
      21.116365,
      1.166556,
      21.258772,
      0.946550,
      21.258772,
      2.031303
    ]);
    poly[1017] = _TzPolygon([
      20.263616,
      2.031303,
      21.258772,
      2.031303,
      21.258772,
      3.911028,
      19.076172,
      3.911028,
      18.968147,
      3.357648,
      19.125653,
      3.124732,
      19.155678,
      3.114680,
      19.277088,
      3.200581,
      19.359073,
      3.178257,
      19.417037,
      3.200189,
      19.448499,
      3.266116,
      19.497843,
      3.248110,
      19.526828,
      3.266377,
      19.584463,
      3.231869,
      19.642682,
      3.252191,
      19.713642,
      3.229954,
      19.834791,
      3.254628,
      19.856724,
      3.149014,
      19.952884,
      2.978123,
      19.962732,
      2.831622,
      19.993553,
      2.734948,
      20.101169,
      2.684475,
      20.050863,
      2.665264,
      20.053872,
      2.622458,
      20.032098,
      2.595890,
      20.034096,
      2.560432,
      20.094666,
      2.519918,
      20.098554,
      2.470326,
      20.075615,
      2.412825,
      20.028382,
      2.375423,
      20.133178,
      2.399822,
      20.218177,
      2.317919,
      20.271115,
      2.312027,
      20.318726,
      2.214543,
      20.313352,
      2.192347,
      20.277906,
      2.190171,
      20.238254,
      2.120554,
      20.269614,
      2.040424
    ]);
    poly[1018] = _TzPolygon([
      20.970852,
      7.670478,
      20.842495,
      7.459686,
      19.446978,
      5.810545,
      19.076172,
      3.911028,
      21.258772,
      3.911028,
      21.258772,
      7.670478
    ]);
    poly[1019] = _TzPolygon([
      19.075284,
      3.911028,
      19.144146,
      4.266708,
      17.001741,
      4.266669,
      17.000021,
      4.214297,
      16.395069,
      4.199854,
      16.323219,
      4.097133,
      16.080829,
      3.986066,
      15.940592,
      3.980084,
      15.864421,
      3.928064,
      15.804220,
      3.911028
    ]);
    poly[1020] = _TzPolygon(
        [21.773345, 0.151578, 21.258772, 0.946550, 21.258772, 0.151578]);
    poly[1021] = _TzPolygon([
      -5.149089,
      11.847684,
      -4.874770,
      11.644011,
      -4.706988,
      11.584748,
      -4.633875,
      11.583809,
      -4.388063,
      11.293210,
      -4.388063,
      12.745379,
      -4.414169,
      12.745379,
      -4.407883,
      12.719734,
      -4.441421,
      12.745379,
      -4.496467,
      12.745379,
      -4.477842,
      12.699655,
      -4.562289,
      12.643761,
      -4.563371,
      12.563626,
      -4.588848,
      12.537301,
      -4.565076,
      12.487110,
      -4.602876,
      12.451731,
      -4.609268,
      12.392913,
      -4.665966,
      12.398902,
      -4.790460,
      12.331338,
      -4.814448,
      12.241248,
      -4.798189,
      12.242894,
      -4.790754,
      12.197593,
      -4.896201,
      12.166210,
      -5.040742,
      12.016274
    ]);
    poly[1022] = _TzPolygon([
      -5.149089,
      12.533084,
      -5.144820,
      12.533118,
      -5.120687,
      12.470483,
      -5.080618,
      12.463866,
      -5.047521,
      12.503217,
      -5.058857,
      12.530412,
      -5.024048,
      12.608614,
      -4.949038,
      12.626596,
      -4.949895,
      12.720466,
      -4.899734,
      12.745379,
      -5.149089,
      12.745379
    ]);
    poly[1023] = _TzPolygon([
      -4.899734,
      12.745379,
      -4.869275,
      12.760506,
      -4.875021,
      12.786114,
      -4.847198,
      12.812569,
      -4.750274,
      12.853410,
      -4.764080,
      12.869003,
      -4.735153,
      12.895728,
      -4.747564,
      12.922979,
      -4.705112,
      12.982428,
      -4.715410,
      13.029954,
      -4.674784,
      13.051325,
      -4.691465,
      13.097409,
      -4.622012,
      13.095833,
      -4.582741,
      13.118355,
      -4.758545,
      13.272979,
      -4.799991,
      13.373495,
      -4.858360,
      13.372927,
      -4.916029,
      13.430804,
      -4.862081,
      13.415055,
      -4.853373,
      13.471463,
      -5.149089,
      13.471463,
      -5.149089,
      12.745379
    ]);
    poly[1024] = _TzPolygon([
      -4.496467,
      12.745379,
      -4.505538,
      12.767647,
      -4.488432,
      12.781326,
      -4.441421,
      12.745379,
      -4.414169,
      12.745379,
      -4.417344,
      12.758331,
      -4.388063,
      12.766741,
      -4.437732,
      12.816242,
      -4.442669,
      12.833333,
      -4.415547,
      12.844098,
      -4.683994,
      13.102718,
      -4.674784,
      13.051325,
      -4.715410,
      13.029954,
      -4.705112,
      12.982428,
      -4.747564,
      12.922979,
      -4.735153,
      12.895728,
      -4.764080,
      12.869003,
      -4.750274,
      12.853410,
      -4.847198,
      12.812569,
      -4.875021,
      12.786114,
      -4.869275,
      12.760506,
      -4.899734,
      12.745379
    ]);
    poly[1025] = _TzPolygon([
      -4.388063,
      14.197547,
      -4.397791,
      14.175852,
      -4.409904,
      14.050111,
      -4.514932,
      13.948758,
      -4.495929,
      13.854472,
      -4.464057,
      13.858552,
      -4.425061,
      13.823032,
      -4.444752,
      13.731799,
      -4.590065,
      13.728810,
      -4.612881,
      13.708287,
      -4.637446,
      13.717559,
      -4.653988,
      13.690323,
      -4.678746,
      13.723316,
      -4.705490,
      13.723580,
      -4.712295,
      13.674170,
      -4.744944,
      13.699284,
      -4.768308,
      13.680257,
      -4.735604,
      13.619283,
      -4.754568,
      13.636220,
      -4.805362,
      13.585853,
      -4.747471,
      13.514756,
      -4.853373,
      13.471463,
      -4.388063,
      13.471463
    ]);
    poly[1026] = _TzPolygon([
      -4.388063,
      15.176360,
      -4.390785,
      15.175500,
      -4.480124,
      15.107523,
      -4.688197,
      14.898611,
      -4.820605,
      14.836641,
      -4.913245,
      14.685218,
      -4.903668,
      14.590804,
      -4.864807,
      14.561732,
      -4.845827,
      14.493747,
      -4.895497,
      14.415365,
      -4.860193,
      14.398851,
      -4.651476,
      14.419349,
      -4.553697,
      14.351302,
      -4.511146,
      14.433956,
      -4.438226,
      14.480672,
      -4.388063,
      14.427510
    ]);
    poly[1027] = _TzPolygon([
      -4.388063,
      14.197547,
      -4.363402,
      14.252545,
      -4.319722,
      14.288356,
      -4.316395,
      14.352523,
      -4.295427,
      14.351353,
      -4.278450,
      14.401526,
      -4.355574,
      14.393079,
      -4.388063,
      14.427510
    ]);
    poly[1028] = _TzPolygon([
      -4.278450,
      11.204916,
      -4.214785,
      11.164126,
      -4.101226,
      11.004821,
      -3.923333,
      11.139722,
      -3.693611,
      11.225556,
      -3.604167,
      11.348056,
      -3.591111,
      11.431111,
      -3.511111,
      11.487222,
      -3.507913,
      11.519834,
      -4.278450,
      11.519834
    ]);
    poly[1029] = _TzPolygon([
      -2.433809,
      11.519834,
      -2.433809,
      11.601611,
      -2.503889,
      11.593333,
      -2.550278,
      11.629722,
      -2.620833,
      11.647500,
      -2.715833,
      11.611944,
      -2.793889,
      11.546111,
      -2.856944,
      11.543333,
      -2.867222,
      11.564722,
      -2.818056,
      11.642778,
      -3.013056,
      11.804444,
      -3.047222,
      11.766111,
      -3.050556,
      11.717500,
      -3.178056,
      11.701111,
      -3.311389,
      11.972500,
      -3.351667,
      11.963611,
      -3.394167,
      11.910000,
      -3.556111,
      11.839444,
      -3.589722,
      11.852500,
      -3.636944,
      11.925833,
      -3.710000,
      11.868333,
      -3.694444,
      11.683333,
      -3.535000,
      11.583889,
      -3.506944,
      11.529722,
      -3.507913,
      11.519834
    ]);
    poly[1030] = _TzPolygon([
      -2.433809,
      14.137028,
      -2.496111,
      14.107778,
      -2.475556,
      14.069167,
      -2.499722,
      14.006111,
      -2.468889,
      13.991111,
      -2.490833,
      13.926111,
      -2.474167,
      13.873889,
      -2.433809,
      13.868495
    ]);
    poly[1031] = _TzPolygon(
        [-2.433809, 13.486182, -2.437500, 13.482778, -2.433809, 13.470937]);
    poly[1032] = _TzPolygon(
        [-2.433809, 11.738223, -2.436667, 11.735278, -2.433809, 11.734056]);
    poly[1033] = _TzPolygon([
      -2.433809,
      11.601611,
      -2.333333,
      11.574167,
      -2.353889,
      11.676944,
      -2.390000,
      11.685278,
      -2.398333,
      11.718889,
      -2.433809,
      11.734056
    ]);
    poly[1034] = _TzPolygon([
      -2.433809,
      11.738223,
      -2.372222,
      11.801667,
      -2.357222,
      11.916111,
      -2.331389,
      11.951944,
      -2.416944,
      12.052500,
      -2.327222,
      12.478056,
      -2.299167,
      12.463611,
      -2.226389,
      12.495278,
      -2.164167,
      12.484167,
      -2.095008,
      12.517193,
      -2.081944,
      12.478889,
      -2.024444,
      12.448056,
      -1.895833,
      12.438333,
      -1.877222,
      12.452778,
      -1.921667,
      12.506944,
      -1.872500,
      12.520556,
      -1.827222,
      12.585000,
      -1.822500,
      12.650000,
      -1.857222,
      12.724722,
      -1.900556,
      12.763889,
      -1.912778,
      12.821389,
      -2.039444,
      12.866667,
      -2.074444,
      12.900278,
      -2.096944,
      12.888611,
      -2.111389,
      12.913889,
      -2.131389,
      12.899444,
      -2.184167,
      12.921389,
      -2.182500,
      12.967500,
      -2.265556,
      13.007778,
      -2.271835,
      13.029639,
      -2.281579,
      13.029639,
      -2.372222,
      12.984444,
      -2.336948,
      13.029639,
      -2.433809,
      13.029639
    ]);
    poly[1035] = _TzPolygon([
      -2.433809,
      13.470937,
      -2.416111,
      13.414167,
      -2.428333,
      13.387500,
      -2.360556,
      13.203056,
      -2.372222,
      13.141389,
      -2.327778,
      13.041389,
      -2.336948,
      13.029639,
      -2.281579,
      13.029639,
      -2.273056,
      13.033889,
      -2.271835,
      13.029639,
      -1.511488,
      13.029639,
      -1.511488,
      14.463344,
      -1.545556,
      14.480556,
      -1.610833,
      14.383889,
      -1.671667,
      14.424167,
      -1.686111,
      14.468056,
      -1.750556,
      14.416111,
      -1.891667,
      14.429722,
      -1.973056,
      14.258333,
      -2.011389,
      14.248889,
      -2.039444,
      14.269444,
      -2.137500,
      14.250278,
      -2.153889,
      14.219444,
      -2.190278,
      14.225556,
      -2.238889,
      14.155000,
      -2.292778,
      14.221389,
      -2.352500,
      14.252222,
      -2.360556,
      14.196667,
      -2.391389,
      14.156944,
      -2.433809,
      14.137028,
      -2.433809,
      13.868495,
      -2.418056,
      13.866389,
      -2.352500,
      13.931667,
      -2.318889,
      13.881389,
      -2.144444,
      13.809444,
      -2.088889,
      13.762222,
      -2.184167,
      13.727222,
      -2.287500,
      13.624444,
      -2.321667,
      13.618333,
      -2.330556,
      13.581389,
      -2.433809,
      13.486182
    ]);
    poly[1036] = _TzPolygon([
      -1.511488,
      14.463344,
      -1.492222,
      14.453611,
      -1.406667,
      14.505000,
      -1.338056,
      14.444722,
      -1.283889,
      14.478333,
      -1.212778,
      14.481944,
      -1.166944,
      14.446111,
      -1.120833,
      14.453611,
      -1.033889,
      14.417500,
      -0.906389,
      14.430000,
      -0.841111,
      14.489167,
      -0.785000,
      14.465833,
      -0.720000,
      14.474722,
      -0.644722,
      14.531944,
      -0.589167,
      14.539444,
      -1.511488,
      14.539444
    ]);
    poly[1037] = _TzPolygon([
      2.305104,
      11.529307,
      2.294480,
      11.372882,
      2.243097,
      11.376888,
      2.224767,
      11.351751,
      2.171892,
      11.359863,
      2.161308,
      10.169245,
      2.175300,
      10.157332,
      2.156568,
      10.121555,
      2.197672,
      9.906463,
      2.245694,
      9.848172,
      2.348858,
      9.822532,
      2.337498,
      9.812204,
      2.390620,
      9.761857,
      2.449845,
      9.621122,
      2.449845,
      11.529307
    ]);
    poly[1038] = _TzPolygon([
      -0.589167,
      8.519169,
      -0.518678,
      8.539267,
      0.366974,
      9.103149,
      0.611238,
      9.109213,
      0.753447,
      9.149294,
      0.846457,
      9.354785,
      0.962984,
      9.519126,
      1.022618,
      9.547461,
      1.029444,
      9.620000,
      1.066944,
      9.683056,
      1.064722,
      9.743889,
      1.000989,
      9.796144,
      0.993443,
      9.871259,
      0.953237,
      9.894842,
      0.922017,
      9.952044,
      0.936378,
      9.993269,
      1.002527,
      9.991876,
      1.002160,
      11.353313,
      2.224767,
      11.351751,
      2.263374,
      11.380278,
      2.286241,
      11.363444,
      2.304693,
      11.529307,
      -0.589167,
      11.529307
    ]);
    poly[1039] = _TzPolygon([
      0.930339,
      11.529307,
      0.930339,
      14.478687,
      0.909722,
      14.468056,
      0.872500,
      14.483889,
      0.729722,
      14.366944,
      0.665278,
      14.376389,
      0.566944,
      14.238333,
      0.594167,
      14.143333,
      0.575278,
      14.094444,
      0.537222,
      14.064167,
      0.508056,
      14.083611,
      0.460556,
      14.055278,
      0.406389,
      13.972778,
      0.360833,
      13.943333,
      0.243611,
      13.880000,
      0.158611,
      13.910833,
      0.089444,
      13.908889,
      0.072778,
      13.945278,
      -0.018056,
      13.952222,
      -0.030556,
      13.913056,
      -0.114167,
      13.876667,
      -0.222222,
      13.906667,
      -0.220833,
      13.930278,
      -0.171667,
      13.965278,
      -0.208333,
      14.018889,
      -0.218056,
      14.085000,
      -0.256944,
      14.121944,
      -0.252778,
      14.146667,
      -0.340000,
      14.190000,
      -0.427222,
      14.191389,
      -0.397500,
      14.226667,
      -0.417500,
      14.260278,
      -0.405000,
      14.346944,
      -0.455000,
      14.435000,
      -0.589167,
      14.539444,
      -0.589167,
      11.529307
    ]);
    poly[1040] = _TzPolygon([
      2.304693,
      11.529307,
      2.308893,
      11.567060,
      2.295283,
      11.611840,
      2.318217,
      11.667898,
      2.296779,
      11.746886,
      2.270215,
      11.758190,
      2.290541,
      12.014829,
      2.278983,
      12.109913,
      2.293420,
      12.124026,
      2.272911,
      12.153797,
      2.278762,
      12.209763,
      2.249284,
      12.246226,
      2.288098,
      12.307963,
      2.252029,
      12.454503,
      2.270253,
      12.574430,
      2.221089,
      12.745582,
      2.258038,
      12.819520,
      2.227595,
      12.861641,
      2.254427,
      12.919224,
      2.244885,
      13.034375,
      0.930339,
      13.034375,
      0.930339,
      11.529307
    ]);
    poly[1041] = _TzPolygon([
      0.930339,
      14.478687,
      0.963056,
      14.495556,
      1.015000,
      14.437778,
      1.143056,
      14.392222,
      1.146389,
      14.344167,
      1.338333,
      14.300278,
      1.397778,
      14.243056,
      1.363333,
      14.236111,
      1.396667,
      14.147222,
      1.375278,
      14.073889,
      1.435475,
      14.009031,
      1.414113,
      13.981412,
      1.437290,
      13.804677,
      1.361105,
      13.782488,
      1.347023,
      13.759445,
      1.370402,
      13.735854,
      1.347467,
      13.704845,
      1.345895,
      13.638278,
      1.277134,
      13.560218,
      1.264157,
      13.494808,
      1.298083,
      13.413795,
      1.277655,
      13.397414,
      1.288539,
      13.373097,
      1.262936,
      13.370895,
      1.263901,
      13.322883,
      1.218333,
      13.307858,
      1.215702,
      13.191636,
      1.235743,
      13.151534,
      1.249101,
      13.178621,
      1.290940,
      13.188228,
      1.283353,
      13.222582,
      1.327751,
      13.262767,
      1.340869,
      13.240600,
      1.386200,
      13.256824,
      1.473796,
      13.219008,
      1.485380,
      13.189364,
      1.520694,
      13.188392,
      1.522310,
      13.159675,
      1.582230,
      13.125260,
      1.599301,
      13.148658,
      1.690092,
      13.136769,
      1.690092,
      14.539444,
      0.930339,
      14.539444
    ]);
    poly[1042] = _TzPolygon([
      1.690092,
      13.136769,
      1.701932,
      13.135219,
      1.758564,
      13.183792,
      1.842958,
      13.204052,
      1.892737,
      13.155383,
      1.945911,
      13.214721,
      1.986170,
      13.209987,
      2.039972,
      13.288189,
      2.170589,
      13.294224,
      2.162601,
      14.303220,
      2.187413,
      14.362831,
      2.181393,
      14.413208,
      2.125580,
      14.460679,
      2.162144,
      14.496940,
      2.168588,
      14.539444,
      1.690092,
      14.539444
    ]);
    poly[1043] = _TzPolygon([
      2.244885,
      13.034375,
      2.449845,
      13.034375,
      2.449845,
      14.539444,
      2.168588,
      14.539444,
      2.162144,
      14.496940,
      2.125580,
      14.460679,
      2.181393,
      14.413208,
      2.187413,
      14.362831,
      2.162601,
      14.303220,
      2.170589,
      13.294224,
      2.189960,
      13.285457,
      2.207781,
      13.305611,
      2.248434,
      13.286230,
      2.286593,
      13.157670,
      2.240710,
      13.084764
    ]);
    poly[1044] = _TzPolygon([
      2.449845,
      9.621122,
      2.612062,
      9.628621,
      2.968564,
      9.704413,
      3.095473,
      9.753985,
      3.226388,
      9.698765,
      3.459143,
      9.457561,
      3.551523,
      9.429657,
      3.617881,
      9.437811,
      3.657555,
      9.414185,
      3.770907,
      9.125295,
      3.905936,
      8.983255,
      3.960447,
      8.831346,
      3.989000,
      8.812720,
      3.989000,
      14.539444,
      2.449845,
      14.539444
    ]);
    poly[1045] = _TzPolygon([
      -4.388063,
      15.176360,
      -4.324801,
      15.196357,
      -4.314818,
      15.260017,
      -4.269069,
      15.328294,
      -4.285389,
      15.403775,
      -4.234898,
      15.476578,
      -4.086742,
      15.513317,
      -4.043198,
      15.551151,
      -3.971814,
      15.834901,
      -3.933267,
      15.905928,
      -3.768727,
      15.967675,
      -3.305540,
      16.213361,
      -3.256525,
      16.181260,
      -3.117866,
      16.171475,
      -3.010600,
      16.191880,
      -2.891454,
      16.179864,
      -2.642222,
      16.237222,
      -2.344654,
      16.174668,
      -2.175833,
      16.195833,
      -2.093611,
      16.265556,
      -2.027047,
      16.377385,
      -1.874722,
      16.519444,
      -1.620000,
      16.663056,
      -1.428056,
      16.740000,
      -1.240000,
      16.875278,
      -1.108867,
      17.045704,
      -0.990099,
      17.343811,
      -0.744673,
      17.529677,
      -0.669319,
      17.635592,
      -0.582347,
      17.686841,
      -0.365718,
      17.715508,
      -0.257402,
      17.664696,
      -0.199531,
      17.672457,
      -0.199531,
      18.643611,
      -4.388063,
      18.643611
    ]);
    poly[1046] = _TzPolygon([
      1.894734,
      15.770172,
      1.894734,
      16.086057,
      1.893200,
      16.086779,
      1.892054,
      16.109202,
      1.704376,
      16.149758,
      1.688294,
      16.141673,
      1.696571,
      16.091277,
      1.654666,
      16.056206,
      1.671355,
      16.021178,
      1.765282,
      16.026002,
      1.766502,
      15.960145,
      1.797557,
      15.905648,
      1.785553,
      15.881105,
      1.829640,
      15.867463,
      1.856241,
      15.805292
    ]);
    poly[1047] = _TzPolygon([
      -0.199531,
      17.672457,
      -0.167795,
      17.676713,
      -0.064112,
      17.734219,
      0.122484,
      17.774045,
      0.233377,
      17.821252,
      0.323333,
      17.931111,
      0.378056,
      17.958056,
      0.477778,
      17.965833,
      0.614040,
      17.868029,
      0.775904,
      17.889144,
      0.977926,
      17.839877,
      1.028902,
      17.847945,
      1.145610,
      17.926051,
      1.350010,
      17.971026,
      1.528611,
      18.070556,
      1.855833,
      18.063611,
      1.894734,
      18.072423,
      1.894734,
      18.643611,
      -0.199531,
      18.643611
    ]);
    poly[1048] = _TzPolygon([
      1.950160,
      15.565486,
      1.956340,
      15.528454,
      1.983595,
      15.485659,
      1.912363,
      15.343595,
      1.943548,
      15.334941,
      1.936956,
      15.305682,
      1.990405,
      15.287792,
      2.008040,
      15.245354,
      2.028165,
      15.249450,
      2.039656,
      15.206576,
      2.016482,
      15.175517,
      2.039909,
      15.147149,
      1.982831,
      15.105078,
      2.004381,
      15.062587,
      1.978659,
      15.040876,
      2.036848,
      14.983098,
      2.007908,
      14.968628,
      2.000274,
      14.914725,
      2.021618,
      14.889212,
      2.063766,
      14.911187,
      2.073285,
      14.877485,
      2.110875,
      14.872987,
      2.106380,
      14.856531,
      2.080327,
      14.860396,
      2.063160,
      14.771696,
      2.095891,
      14.770254,
      2.092430,
      14.736802,
      2.108435,
      14.751509,
      2.128189,
      14.723248,
      2.105805,
      14.723036,
      2.135845,
      14.684602,
      2.132700,
      14.644155,
      2.157531,
      14.644020,
      2.206828,
      14.595511,
      2.174433,
      14.577998,
      2.168588,
      14.539444,
      2.941867,
      14.539444,
      2.941867,
      15.565486
    ]);
    poly[1049] = _TzPolygon([
      2.941867,
      16.063824,
      2.941867,
      16.468045,
      2.922500,
      16.465833,
      2.849444,
      16.501667,
      2.215655,
      16.192148,
      2.253401,
      16.159002,
      2.274668,
      16.170339,
      2.352441,
      16.143843,
      2.463001,
      16.073344,
      2.596712,
      16.083097,
      2.645393,
      16.065506,
      2.701181,
      16.087589
    ]);
    poly[1050] = _TzPolygon([
      1.950160,
      15.565486,
      1.919821,
      15.747283,
      1.894734,
      15.770172,
      1.894734,
      15.565486
    ]);
    poly[1051] = _TzPolygon([
      1.894734,
      16.086057,
      1.975333,
      16.048118,
      2.046686,
      16.083190,
      2.066028,
      16.058896,
      2.088539,
      16.085516,
      2.190736,
      16.081278,
      2.198516,
      16.129218,
      2.177135,
      16.144418,
      2.220833,
      16.207222,
      2.849444,
      16.501667,
      2.922500,
      16.465833,
      2.941867,
      16.468045,
      2.941867,
      16.591527,
      1.894734,
      16.591527
    ]);
    poly[1052] = _TzPolygon([
      2.941867,
      16.468045,
      3.002778,
      16.475000,
      3.060556,
      16.512222,
      3.156667,
      16.482778,
      3.242222,
      16.534722,
      3.481944,
      16.588889,
      3.483459,
      16.591527,
      2.941867,
      16.591527
    ]);
    poly[1053] = _TzPolygon([
      3.989000,
      15.101119,
      3.243641,
      15.733623,
      3.270249,
      15.775423,
      3.020453,
      16.056065,
      2.941867,
      16.063824,
      2.941867,
      14.539444,
      3.989000,
      14.539444
    ]);
    poly[1054] = _TzPolygon([
      1.894734,
      18.072423,
      1.956389,
      18.086389,
      2.042500,
      18.071944,
      2.224167,
      18.091944,
      2.288611,
      18.116111,
      2.413611,
      18.222778,
      2.519167,
      18.233056,
      2.612804,
      18.341960,
      2.941867,
      18.482194,
      2.941867,
      18.643611,
      1.894734,
      18.643611
    ]);
    poly[1055] = _TzPolygon([
      3.963134,
      18.643611,
      3.894911,
      18.597684,
      3.776866,
      18.578482,
      3.471247,
      18.625818,
      3.480404,
      18.597423,
      3.598889,
      18.533333,
      3.641944,
      18.481389,
      3.577500,
      18.398056,
      3.583056,
      18.272500,
      3.499167,
      18.233889,
      3.482778,
      18.183889,
      3.541111,
      18.154722,
      3.560556,
      18.119444,
      3.565833,
      18.043333,
      3.539167,
      17.988889,
      3.577500,
      17.938889,
      3.535556,
      17.858889,
      3.618333,
      17.828333,
      3.637500,
      17.739444,
      3.629722,
      17.615278,
      3.713056,
      17.482222,
      3.679722,
      17.413889,
      3.611111,
      17.346667,
      3.628889,
      17.278056,
      3.584444,
      17.234167,
      3.576667,
      17.077222,
      3.540278,
      17.033333,
      3.565833,
      16.876667,
      3.523333,
      16.856667,
      3.522222,
      16.807500,
      3.550556,
      16.761111,
      3.533333,
      16.659722,
      3.473578,
      16.591527,
      3.989000,
      16.591527,
      3.989000,
      18.643611
    ]);
    poly[1056] = _TzPolygon([
      2.941867,
      18.482194,
      3.075556,
      18.539167,
      3.131944,
      18.611667,
      3.204444,
      18.641389,
      3.450833,
      18.633056,
      3.525348,
      18.606642,
      3.776866,
      18.578482,
      3.894911,
      18.597684,
      3.963134,
      18.643611,
      2.941867,
      18.643611
    ]);
    poly[1057] = _TzPolygon([
      5.392003,
      7.670478,
      5.392003,
      8.831418,
      5.184724,
      8.821095,
      5.112839,
      8.783711,
      5.074011,
      8.726946,
      4.915088,
      8.651601,
      4.885393,
      8.605639,
      4.824472,
      8.629359,
      4.798797,
      8.541861,
      4.745622,
      8.525122,
      4.701767,
      8.538976,
      4.633333,
      8.464444,
      4.533333,
      8.407500,
      4.367260,
      8.388005,
      4.334996,
      8.291972,
      4.343220,
      8.047569,
      4.311792,
      7.773734,
      4.273511,
      7.670478
    ]);
    poly[1058] = _TzPolygon([
      3.989000,
      15.101119,
      4.020510,
      15.074380,
      4.056659,
      15.179509,
      3.989000,
      15.179509
    ]);
    poly[1059] = _TzPolygon([
      4.056659,
      15.179509,
      4.072377,
      15.139940,
      4.140126,
      15.099316,
      4.301683,
      15.086756,
      4.367979,
      15.025842,
      4.424309,
      15.007932,
      4.528186,
      14.811149,
      4.613343,
      14.730443,
      4.763390,
      14.702060,
      4.787659,
      14.720689,
      4.868751,
      14.714642,
      4.989378,
      14.676192,
      5.085474,
      14.674379,
      5.099826,
      14.693488,
      5.197609,
      14.664195,
      5.236790,
      14.569226,
      5.284228,
      14.525659,
      5.392003,
      14.574987,
      5.392003,
      15.179509
    ]);
    poly[1060] = _TzPolygon([
      4.053118,
      18.643611,
      4.113147,
      18.629967,
      4.321085,
      18.544872,
      4.370924,
      18.601229,
      4.355917,
      18.623726,
      4.358327,
      18.643611
    ]);
    poly[1061] = _TzPolygon([
      -5.149089,
      20.196621,
      -5.093373,
      20.184198,
      -4.962167,
      20.111568,
      -4.825026,
      20.084791,
      -4.787507,
      20.053543,
      -4.594667,
      20.060758,
      -4.502333,
      20.123901,
      -4.472154,
      20.089354,
      -4.438080,
      20.092421,
      -4.360583,
      20.039462,
      -4.292114,
      20.028132,
      -4.283762,
      20.137767,
      -4.337853,
      20.168323,
      -4.329015,
      20.205279,
      -4.378762,
      20.240936,
      -4.381734,
      20.321151,
      -4.362393,
      20.350162,
      -4.300258,
      20.364925,
      -4.282112,
      20.398055,
      -4.293750,
      20.433715,
      -4.254549,
      20.453112,
      -4.262706,
      20.508213,
      -4.220422,
      20.599537,
      -4.158245,
      20.634504,
      -4.133010,
      20.675140,
      -3.534440,
      20.641899,
      -3.284014,
      20.656448,
      -2.766325,
      20.744471,
      -2.568229,
      20.862217,
      -2.568756,
      20.921967,
      -2.532577,
      21.005298,
      -2.535367,
      21.213981,
      -2.513816,
      21.231263,
      -2.513816,
      21.349804,
      -2.517435,
      21.355610,
      -2.513816,
      21.426639,
      -2.549216,
      21.523458,
      -2.612706,
      21.591087,
      -2.668791,
      21.697429,
      -2.535967,
      21.851638,
      -2.513816,
      21.870083,
      -2.513816,
      23.048844,
      -5.149089,
      23.048844
    ]);
    poly[1062] = _TzPolygon(
        [-2.513816, 21.231263, -2.464549, 21.270770, -2.513816, 21.349804]);
    poly[1063] = _TzPolygon(
        [-2.513816, 21.410194, -2.512893, 21.424115, -2.513816, 21.426639]);
    poly[1064] = _TzPolygon([
      -2.513816,
      21.870083,
      -2.415560,
      21.951901,
      -2.370830,
      22.048599,
      -2.276390,
      22.139700,
      -2.313330,
      22.190599,
      -2.434720,
      22.188299,
      -2.464720,
      22.264401,
      -2.432500,
      22.293301,
      -2.395560,
      22.293900,
      -1.942220,
      22.166401,
      -1.903330,
      22.185000,
      -1.958890,
      22.509701,
      -1.874440,
      22.590000,
      -1.801110,
      22.625601,
      -1.816940,
      22.642799,
      -1.806670,
      22.679701,
      -1.884170,
      22.870300,
      -1.962220,
      22.936701,
      -1.931940,
      23.005800,
      -1.931940,
      23.048844,
      -2.513816,
      23.048844
    ]);
    poly[1065] = _TzPolygon(
        [-0.405810, 23.048844, -0.406005, 22.950006, -0.301638, 23.048844]);
    poly[1066] = _TzPolygon([
      -1.196180,
      23.048844,
      -1.196180,
      23.952777,
      -1.245429,
      24.117882,
      -1.328410,
      24.148030,
      -1.312780,
      24.192542,
      -1.324276,
      24.315046,
      -1.431390,
      24.322201,
      -1.538890,
      24.375799,
      -1.717948,
      24.412389,
      -1.693910,
      24.208231,
      -1.740866,
      24.212141,
      -1.747592,
      24.041633,
      -1.762776,
      24.004826,
      -1.870604,
      23.988210,
      -1.825712,
      23.882300,
      -1.830967,
      23.839135,
      -1.943854,
      23.849276,
      -1.956766,
      23.771667,
      -2.025066,
      23.669920,
      -1.983143,
      23.569383,
      -1.987646,
      23.532797,
      -2.094769,
      23.408106,
      -2.076615,
      23.345186,
      -2.012034,
      23.265102,
      -1.996498,
      23.167227,
      -1.931940,
      23.073900,
      -1.931940,
      23.048844
    ]);
    poly[1067] = _TzPolygon([
      -1.196180,
      23.952777,
      -1.164671,
      23.847147,
      -1.106267,
      23.798967,
      -1.035631,
      23.629960,
      -0.971981,
      23.547773,
      -0.742023,
      23.479608,
      -0.717072,
      23.593020,
      -0.644594,
      23.620001,
      -0.627671,
      23.669479,
      -0.545992,
      23.687649,
      -0.539820,
      23.606477,
      -0.499787,
      23.606666,
      -0.440329,
      23.528824,
      -0.470058,
      23.479577,
      -0.463077,
      23.421659,
      -0.519498,
      23.250842,
      -0.405416,
      23.248982,
      -0.405810,
      23.048844,
      -0.301638,
      23.048844,
      -0.240462,
      23.106779,
      -0.240600,
      23.413102,
      -0.208330,
      23.408300,
      -0.105070,
      23.358014,
      -0.076116,
      23.313948,
      0.035830,
      23.246401,
      0.121457,
      23.169407,
      0.121457,
      25.251460,
      -1.196180,
      25.251460
    ]);
    poly[1068] = _TzPolygon([
      0.320278,
      23.048844,
      0.413330,
      22.972500,
      0.559170,
      22.934700,
      0.599999,
      22.979260,
      0.722951,
      22.883378,
      0.821206,
      22.876812,
      0.902662,
      22.839527,
      0.997360,
      22.842282,
      1.054283,
      22.790428,
      1.111761,
      22.787376,
      1.123663,
      22.764177,
      1.203480,
      22.743846,
      1.236635,
      22.704166,
      1.282429,
      22.700007,
      1.302658,
      22.667177,
      1.353510,
      22.654914,
      1.490396,
      22.477126,
      1.483102,
      22.431593,
      1.521444,
      22.377218,
      1.499053,
      22.358775,
      1.503470,
      22.307403,
      1.531504,
      22.260730,
      1.672559,
      22.289445,
      1.732271,
      22.388322,
      1.790952,
      22.357595,
      1.807766,
      22.415616,
      1.866444,
      22.425401,
      1.914998,
      22.490461,
      1.984309,
      22.470033,
      2.041094,
      22.412870,
      2.055333,
      22.363603,
      2.171983,
      22.361200,
      2.109440,
      22.647499,
      2.014271,
      22.779241,
      2.036389,
      22.793194,
      2.048123,
      22.858602,
      2.100224,
      22.900666,
      2.091718,
      22.922827,
      2.120939,
      22.945653,
      2.142153,
      22.929160,
      2.158767,
      22.972711,
      2.185767,
      22.972703,
      2.176404,
      23.002694,
      2.219834,
      23.018029,
      2.202753,
      23.048844
    ]);
    poly[1069] = _TzPolygon([
      2.574024,
      23.048844,
      2.738620,
      22.887023,
      2.756730,
      22.886339,
      2.756730,
      23.048844
    ]);
    poly[1070] = _TzPolygon([
      4.453945,
      20.846227,
      4.454313,
      20.841387,
      4.422090,
      20.792601,
      4.433132,
      20.709684,
      4.411489,
      20.583090,
      4.518113,
      20.468019,
      4.564489,
      20.446319,
      4.621470,
      20.459608,
      4.666591,
      20.404159,
      4.733572,
      20.385609,
      4.771574,
      20.343094,
      4.789021,
      20.251046,
      4.890803,
      20.174879,
      4.902764,
      20.104129,
      4.971336,
      20.007547,
      4.982619,
      19.913455,
      5.107322,
      19.819689,
      5.146298,
      19.679673,
      5.132353,
      19.429713,
      5.055703,
      19.335296,
      5.008325,
      19.234069,
      4.941531,
      19.196843,
      4.934424,
      19.098873,
      4.767245,
      19.019403,
      4.578829,
      18.829100,
      4.467970,
      18.805757,
      4.403558,
      18.762713,
      4.365344,
      18.706462,
      4.358183,
      18.643611,
      5.392003,
      18.643611,
      5.392003,
      20.846227
    ]);
    poly[1071] = _TzPolygon(
        [4.053118, 18.643611, 3.985847, 18.658901, 3.963134, 18.643611]);
    poly[1072] = _TzPolygon([
      2.756730,
      23.048844,
      2.756730,
      22.886339,
      2.794769,
      22.884903,
      2.809885,
      22.905816,
      2.774617,
      22.948569,
      2.852956,
      22.954060,
      3.014839,
      23.048844
    ]);
    poly[1073] = _TzPolygon([
      3.043771,
      23.048844,
      3.071389,
      23.019725,
      3.053381,
      22.991270,
      3.080576,
      22.921835,
      3.020028,
      22.857884,
      3.018986,
      22.827751,
      3.040205,
      22.788424,
      3.105730,
      22.781702,
      3.123951,
      22.759748,
      3.169179,
      22.574491,
      3.283765,
      22.651379,
      3.349625,
      22.615457,
      3.447500,
      22.667500,
      3.507780,
      22.862801,
      3.548050,
      22.928600,
      3.547500,
      23.037500,
      3.558585,
      23.048844
    ]);
    poly[1074] = _TzPolygon([
      4.074367,
      22.588140,
      4.074367,
      23.048844,
      3.873493,
      23.048844,
      3.845713,
      22.892980,
      3.874144,
      22.878388,
      3.864724,
      22.849893,
      3.905000,
      22.765600,
      3.991390,
      22.758600,
      3.998050,
      22.687201
    ]);
    poly[1075] = _TzPolygon([
      4.453945,
      20.846227,
      4.446182,
      20.948296,
      4.400139,
      21.076638,
      4.342185,
      21.112322,
      4.291088,
      21.213481,
      4.344795,
      21.281970,
      4.282870,
      21.361989,
      4.292571,
      21.443433,
      4.253588,
      21.539015,
      4.313146,
      21.651111,
      4.294658,
      21.704006,
      4.312051,
      21.737176,
      4.246735,
      21.859005,
      4.245458,
      22.001897,
      4.215999,
      22.096310,
      4.154845,
      22.164920,
      4.115013,
      22.258415,
      4.130831,
      22.412604,
      4.113610,
      22.537201,
      4.074367,
      22.588140,
      4.074367,
      20.846227
    ]);
    poly[1076] = _TzPolygon([
      4.074367,
      22.588140,
      4.113610,
      22.537201,
      4.128116,
      22.433401,
      4.218712,
      22.549283,
      4.287764,
      22.544191,
      4.371867,
      22.616653,
      4.393387,
      22.582661,
      4.477131,
      22.592288,
      4.494364,
      22.647461,
      4.466445,
      22.678672,
      4.477382,
      22.704437,
      4.626855,
      22.734063,
      4.714671,
      22.781843,
      4.728591,
      22.801367,
      4.699666,
      22.840577,
      4.709639,
      22.860937,
      4.755851,
      22.897627,
      4.791394,
      22.884383,
      4.817068,
      22.903514,
      4.838412,
      22.969425,
      4.757221,
      23.009905,
      4.735600,
      23.048844,
      4.074367,
      23.048844
    ]);
    poly[1077] = _TzPolygon([
      2.574024,
      23.048844,
      2.518110,
      23.240267,
      2.476124,
      23.296352,
      2.459083,
      23.287909,
      2.460178,
      23.310973,
      2.496908,
      23.311656,
      2.495057,
      23.335673,
      2.566399,
      23.360564,
      2.502884,
      23.427261,
      2.511081,
      23.451921,
      2.451276,
      23.536449,
      2.396540,
      23.572473,
      2.194189,
      23.579607,
      2.183024,
      23.477547,
      2.284941,
      23.321782,
      2.255936,
      23.307842,
      2.105572,
      23.321880,
      2.089857,
      23.312563,
      2.106118,
      23.271167,
      2.085449,
      23.224255,
      2.099406,
      23.177406,
      2.171663,
      23.104929,
      2.202753,
      23.048844
    ]);
    poly[1078] = _TzPolygon([
      0.320278,
      23.048844,
      0.278890,
      23.082800,
      0.156940,
      23.137501,
      0.121457,
      23.169407,
      0.121457,
      23.048844
    ]);
    poly[1079] = _TzPolygon([
      3.873493,
      23.048844,
      3.891806,
      23.151588,
      3.851729,
      23.151588,
      3.869712,
      23.216305,
      3.838541,
      23.329773,
      3.808224,
      23.364448,
      3.839911,
      23.403072,
      3.819700,
      23.515682,
      3.738330,
      23.486900,
      3.609170,
      23.356100,
      3.640560,
      23.300600,
      3.641940,
      23.229401,
      3.678060,
      23.171101,
      3.558585,
      23.048844
    ]);
    poly[1080] = _TzPolygon(
        [3.043771, 23.048844, 3.033441, 23.059735, 3.014839, 23.048844]);
    poly[1081] = _TzPolygon([
      4.735600,
      23.048844,
      4.719582,
      23.077690,
      4.711563,
      23.110598,
      4.741605,
      23.170339,
      4.675616,
      23.230627,
      4.671802,
      23.262300,
      4.633541,
      23.275396,
      4.593090,
      23.420547,
      4.652150,
      23.428613,
      4.698666,
      23.534880,
      4.761270,
      23.591464,
      4.786707,
      23.779477,
      4.834795,
      23.832884,
      4.813071,
      23.854751,
      4.832797,
      23.890871,
      4.810105,
      23.955909,
      4.874777,
      23.961796,
      4.860875,
      24.032528,
      4.918561,
      24.110923,
      4.893947,
      24.150152,
      4.074367,
      24.150152,
      4.074367,
      23.048844
    ]);
    poly[1082] = _TzPolygon([
      4.893947,
      24.150152,
      4.892911,
      24.151802,
      4.957941,
      24.228135,
      4.935432,
      24.267610,
      4.996370,
      24.282078,
      5.008267,
      24.364835,
      5.034679,
      24.397315,
      5.058355,
      24.340874,
      5.113320,
      24.378017,
      5.055809,
      24.441597,
      5.094951,
      24.442763,
      5.104278,
      24.462988,
      5.083030,
      24.533753,
      5.033061,
      24.568374,
      5.023353,
      24.618748,
      4.975240,
      24.631501,
      4.968530,
      24.671286,
      4.918514,
      24.660436,
      4.894933,
      24.723396,
      4.910804,
      24.765870,
      4.895599,
      24.782145,
      4.925747,
      24.797754,
      4.924248,
      24.847961,
      4.955276,
      24.864712,
      4.951207,
      24.910493,
      4.987910,
      24.956665,
      4.926366,
      25.063374,
      4.979266,
      25.086679,
      4.987306,
      25.123522,
      5.011455,
      25.120552,
      5.030072,
      25.149648,
      4.998823,
      25.190979,
      5.018555,
      25.251460,
      4.074367,
      25.251460,
      4.074367,
      24.150152
    ]);
    poly[1083] = _TzPolygon([
      5.018555,
      25.251460,
      5.042864,
      25.325971,
      5.153051,
      25.348446,
      5.149934,
      25.326214,
      5.191158,
      25.308082,
      5.207844,
      25.329194,
      5.263261,
      25.335902,
      5.291217,
      25.376497,
      5.309216,
      25.356921,
      5.316116,
      25.385945,
      5.338343,
      25.390144,
      5.310577,
      25.421530,
      5.340630,
      25.433832,
      5.363830,
      25.478518,
      5.343866,
      25.498601,
      5.357834,
      25.538647,
      5.392003,
      25.532746,
      5.378271,
      25.578793,
      5.348268,
      25.590020,
      5.349458,
      25.622166,
      5.325473,
      25.594588,
      5.304153,
      25.630399,
      5.332135,
      25.647912,
      5.307484,
      25.658072,
      5.302535,
      25.706518,
      5.240455,
      25.739950,
      5.278193,
      25.785064,
      5.240883,
      25.781114,
      5.246614,
      25.802114,
      5.224746,
      25.802114,
      5.220515,
      25.799912,
      5.218235,
      25.802114,
      4.733185,
      25.802114,
      4.733185,
      25.251460
    ]);
    poly[1084] = _TzPolygon(
        [5.246614, 25.802114, 5.250234, 25.815378, 5.224746, 25.802114]);
    poly[1085] = _TzPolygon([
      5.218235,
      25.802114,
      5.190843,
      25.828561,
      5.216922,
      25.842266,
      5.223918,
      25.881028,
      5.168547,
      25.899421,
      5.205500,
      25.903395,
      5.199552,
      25.962596,
      5.247260,
      25.974660,
      5.225250,
      25.986343,
      5.236148,
      26.004379,
      5.210426,
      26.007996,
      5.225440,
      26.048613,
      5.194864,
      26.060582,
      5.217588,
      26.066150,
      5.213591,
      26.093918,
      5.244167,
      26.089516,
      5.261537,
      26.157616,
      5.238789,
      26.156641,
      5.247902,
      26.184837,
      5.223703,
      26.186812,
      5.242458,
      26.205533,
      5.194898,
      26.214420,
      5.213744,
      26.234497,
      5.188542,
      26.233346,
      5.202200,
      26.249740,
      5.177549,
      26.248384,
      5.171267,
      26.285194,
      5.141691,
      26.297234,
      5.160798,
      26.348845,
      5.159834,
      26.352768,
      4.733185,
      26.352768,
      4.733185,
      25.802114
    ]);
    poly[1086] = _TzPolygon([
      5.002966,
      27.454076,
      5.007201,
      27.448175,
      5.097019,
      27.435464,
      5.258413,
      27.272964,
      5.392003,
      27.236097,
      5.392003,
      27.454076
    ]);
    poly[1087] = _TzPolygon([
      5.159834,
      26.352768,
      5.151708,
      26.385822,
      5.123179,
      26.395363,
      5.136004,
      26.412353,
      5.047611,
      26.484716,
      5.046781,
      26.523045,
      5.074380,
      26.536832,
      5.048710,
      26.536990,
      5.087032,
      26.572786,
      5.094020,
      26.613559,
      5.067242,
      26.625988,
      5.093511,
      26.637452,
      5.078233,
      26.652760,
      5.101007,
      26.681046,
      5.109124,
      26.767805,
      5.049289,
      26.802714,
      5.058418,
      26.840721,
      5.035475,
      26.869294,
      5.142063,
      26.933270,
      5.206982,
      27.077302,
      5.201334,
      27.151226,
      5.075767,
      27.440032,
      5.007201,
      27.448175,
      5.002966,
      27.454076,
      4.074367,
      27.454076,
      4.074367,
      26.352768
    ]);
    poly[1088] = _TzPolygon([
      5.392003,
      8.831418,
      5.430745,
      8.833348,
      5.564172,
      8.921486,
      5.625444,
      8.900434,
      5.678747,
      8.838010,
      5.706214,
      8.832639,
      5.707294,
      8.855352,
      5.775102,
      8.883796,
      5.803268,
      8.874202,
      5.794217,
      8.847305,
      5.824821,
      8.841134,
      5.862375,
      8.904176,
      5.903398,
      8.912843,
      6.000294,
      9.054520,
      6.094178,
      9.153626,
      6.133430,
      9.169236,
      6.181325,
      9.264433,
      6.292077,
      9.334492,
      6.352577,
      9.345186,
      6.315655,
      9.432777,
      6.454097,
      9.465081,
      6.442678,
      9.529238,
      6.473631,
      9.587119,
      6.529572,
      9.596785,
      6.512029,
      9.705982,
      6.678206,
      9.749897,
      6.678363,
      9.752025,
      5.392003,
      9.752025
    ]);
    poly[1089] = _TzPolygon([
      6.961340,
      10.792799,
    ]);
  }