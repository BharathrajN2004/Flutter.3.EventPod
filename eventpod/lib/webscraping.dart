// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, await_only_futures, prefer_typing_uninitialized_variables
import '/mainpages/registered.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

Webscraping(
    startdate, event_name, college_name, link, imglist, allevent_list) async {
  //
  // start of Base Url fetching
  final url =
      Uri.parse('https://www.knowafest.com/explore/fest-departments/ECE');
  final response = await http.get(url);
  dom.Document html = dom.Document.html(response.body);
  // end of base url
  //
  //

  //
  //

  // startdate fetching
  startdate = html
      .querySelectorAll('tr > td:nth-child(1)')
      .map((e) => e.innerHtml.trim())
      .toList();
  print('startdate completed');

  // event name fetching
  event_name = html
      .querySelectorAll('tr > td:nth-child(3)')
      .map((e) => e.innerHtml.trim())
      .toList();
  print('event_name completed');

  // collage name fetching
  college_name = html
      .querySelectorAll('tr > td:nth-child(7) > span > span')
      .map((e) => e.innerHtml.trim())
      .toList();
  print('collagename completed');

  //
  //
  //

  // for (var i = 0; i < 10; i++) {
  //   print('Start Date : ${startdate[i]},');
  //   print(
  //       "College Name : ${college_name[2 * i]} , Address : ${college_name[(2 * i) + 1]}");
  //   print("Event Name : ${event_name[i]}");
  //   print("All Sub Events : ${allevent_list[i]}");
  //   print("Image Url : ${imglist[i]}");
  // }
  print('completed fetching');
}

class webscraping {
  // required for department form login page
  var department = 'CSE';

  // stratdate list
  var startdate = [];
  // end date list
  var enddate = [];
  // event name list
  var event_name = [];
  // event information
  var event_info = [];
  // collage name list
  var college_name = [];
  // link for detail of an event
  var link = [];
  // event image list
  var imglist = [];
  //  sub events list
  var allevent_list = [];
  // fees
  var fees = [];
  // event mode
  var event_mode = [];
  // contack details
  var contact_details = [];
  // registration link
  var reglink = [];
  // for some events ppt topics
  var ppt_topics = [];
  // registration last date
  var reg_last_date = [];
  // location
  var location = [];

  webscraping(
    this.department,
    this.startdate,
    this.enddate,
    this.event_name,
    this.event_info,
    this.college_name,
    this.link,
    this.imglist,
    this.allevent_list,
    this.fees,
    this.event_mode,
    this.contact_details,
    this.reglink,
    this.ppt_topics,
  );

  fetchdata() async {
    // start of Base Url fetching
    final url = Uri.parse(
        'https://www.knowafest.com/explore/fest-departments/$department');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    // start date fetch
    startdate = html
        .querySelectorAll('tr > td:nth-child(1)')
        .map((e) => e.innerHtml.trim())
        .toList();
    print('startdate completed');

    // event name fetching
    event_name = html
        .querySelectorAll('tr > td:nth-child(3)')
        .map((e) => e.innerHtml.trim())
        .toList();
    print('event_name completed');

    // collage name fetching
    college_name = html
        .querySelectorAll('tr > td:nth-child(7) > span > span')
        .map((e) => e.innerHtml.trim())
        .toList();
    print('collagename completed');

    final links = html
        .querySelectorAll('tr')
        .map((e) => e.attributes['onclick']?.substring(15))
        .toList();

    for (var i = 1; i < links.length; i++) {
      link.add(
          'https://www.knowafest.com/explore${links[i]!.substring(0, (links[i]!.length) - 5)}');
    }

    // for all evet's img (loop)
    for (var li in link) {
      // start fetching img
      final url2 = Uri.parse(li);
      final response2 = await http.get(url2);
      dom.Document html2 = dom.Document.html(response2.body);
      final images = html2
          .querySelectorAll('img.img-fluid')
          .map((e) => e.attributes['src'])
          .toString()
          .substring(1);
      // end of fetching img

      // normalizing the img url
      String p;
      if (images[0] == '/') {
        p = 'https://www.knowafest.com' +
            images.substring(0, images.length - 1);
      } else {
        p = images.substring(0, images.length - 1);
      }
      imglist.add(p);
      // completed img fetching

      // for detailed list of events
      final allevent = html2
          .querySelectorAll('div.row > div.col-6 > p')
          .map((e) => e.innerHtml.trim())
          .toString();
      final content = allevent
          .replaceAll('<br>', "")
          .replaceAll('(', "")
          .replaceAll(')', "");
      allevent_list.add(content);
      //

      // for event registration fees
      final h4check = html2
          .querySelectorAll('div.mb-7')
          .map((e) =>
              e.innerHtml.trim().replaceAll('<h4>', '').replaceAll('<p>', ''))
          .toList();
      final pcheck = html2
          .querySelectorAll('div.mb-7 > p')
          .map((e) => e.innerHtml.trim())
          .toList();

      fees.add(pcheck);
      for (var p in pcheck) {
        if (p.contains('phone')) {
          print(p);
        }
      }

      // for event event_mode
      event_mode.add(html2
          .querySelectorAll('div.card-body > dl > dd')
          .map((e) => e.innerHtml.trim())
          .toList()[1]);

      // event end date
      enddate.add(html2
          .querySelectorAll('div.card-body > dl > dd')
          .map((e) => e.innerHtml.trim())
          .toList()[3]);

      // college location
      location.add(html2
          .querySelectorAll('#stickyBlockStartPoint > div > div > dl > dd')
          .map((e) => e.innerHtml.trim())
          .toList()[4]);

      // registration link
      reglink.add(html2
          .querySelectorAll('div > a.btn-primary')
          .map((e) => e.attributes['href'])
          .toList()[0]);

      // contact details
      contact_details.add(html2
          .querySelectorAll('div.mb-7 > p')
          .map((e) => e.innerHtml.trim())
          .toList());

      // ppt topics
      ppt_topics.add(html2
          .querySelectorAll('div.col-lg-9 > div.mb-7 > p')
          .map((e) => e.innerHtml.trim())
          .toList());

      //
    }
    print('completed');
    // print(allevent_list);
    // print(enddate);
    // print(event_mode);
    for (var i = 0; i < 10; i++) {
      // print('fees : ${fees[i]}');
      // print(fees);
      // print(link[i]);
      // print(fees[i].length);
      // print(ppt_topics[i]);
      // print(contact_details[i]);
      // print(guests[i]);
    }
  }
}
