import 'package:flutter/material.dart';

// color consts
// --------------------------------------------------------------
Color customPurpleColor = const Color(0xFFAC50FC);

// --------------------------------------------------------------

// SVG String Consts for img
// --------------------------------------------------------------
// *** صورة خطوط البيضاء في صفحة intor
const String svg_curve =
    '<svg viewBox="-1.7 -47.2 399.2 304.0" ><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, -441.85, -47.06)" d="M 445 77.97821807861328 C 445 77.97821807861328 487.24853515625 33.22148132324219 530.9285888671875 52.2930793762207 C 574.608642578125 71.36467742919922 578.9151611328125 87.0526123046875 618.9039916992188 77.97821807861328 C 658.892822265625 68.90382385253906 731.5891723632813 3.577344417572021 773.4236450195313 12.80553340911865 C 815.2581176757813 22.03372573852539 820.6937255859375 19.68680572509766 820.6937255859375 19.68680572509766" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, -441.85, -60.06)" d="M 445 77.97821807861328 C 445 77.97821807861328 487.24853515625 33.22148132324219 530.9285888671875 52.2930793762207 C 574.608642578125 71.36467742919922 578.9151611328125 87.0526123046875 618.9039916992188 77.97821807861328 C 658.892822265625 68.90382385253906 732.1030883789063 -1.845637321472168 773.9375610351563 7.382552623748779 C 815.7720336914063 16.61074256896973 820.6937255859375 19.68680572509766 820.6937255859375 19.68680572509766" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, -441.85, -77.06)" d="M 445 77.97821807861328 C 445 77.97821807861328 487.24853515625 33.22148132324219 530.9285888671875 52.2930793762207 C 574.608642578125 71.36467742919922 578.9151611328125 87.0526123046875 618.9039916992188 77.97821807861328 C 658.892822265625 68.90382385253906 732.1030883789063 -1.845637321472168 773.9375610351563 7.382552623748779 C 815.7720336914063 16.61074256896973 820.6937255859375 19.68680572509766 820.6937255859375 19.68680572509766" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, -8.0)" d="M 445 103.3557357788086 C 445 103.3557357788086 477.5670166015625 68.23867797851563 508.32763671875 68.85612487792969 C 539.0882568359375 69.47357177734375 558.6131591796875 129.8098754882813 605.3693237304688 115.0447769165039 C 652.12548828125 100.279670715332 752.5194091796875 34.57529830932617 781.4344482421875 49.34040451049805 C 810.3494873046875 64.10551452636719 820.0785522460938 62.75393295288086 820.0785522460938 62.75393295288086" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, -23.0)" d="M 445 103.3557357788086 C 445 103.3557357788086 481.4229125976563 59.55716323852539 512.1835327148438 60.17461013793945 C 542.9442138671875 60.79205703735352 565.4775390625 120.8342895507813 612.2337036132813 106.0691909790039 C 658.9898681640625 91.30408477783203 754.5360107421875 32.43415832519531 783.4510498046875 47.19926071166992 C 812.3660888671875 61.9643669128418 820.0785522460938 62.75393295288086 820.0785522460938 62.75393295288086" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, 26.0)" d="M 445 141.4989166259766 C 445 141.4989166259766 463.2551879882813 167.0269012451172 480.4811401367188 160.8747711181641 C 497.7070922851563 154.7226409912109 537.2611694335938 106.3087768554688 580.9412841796875 122.9195251464844 C 624.6213989257813 139.5302734375 709.3951416015625 165.0415191650391 740.4200439453125 146.4265899658203 C 771.4449462890625 127.8116607666016 823.7114868164063 77.15784454345703 823.7114868164063 77.15784454345703" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, 43.0)" d="M 445 141.4989166259766 C 445 141.4989166259766 463.2551879882813 167.0269012451172 480.4811401367188 160.8747711181641 C 497.7070922851563 154.7226409912109 537.2611694335938 106.3087768554688 580.9412841796875 122.9195251464844 C 624.6213989257813 139.5302734375 709.3951416015625 165.0415191650391 740.4200439453125 146.4265899658203 C 771.4449462890625 127.8116607666016 823.7114868164063 77.15784454345703 823.7114868164063 77.15784454345703" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, 60.0)" d="M 445.20751953125 147.8669281005859 C 445.20751953125 147.8669281005859 464.4358520507813 163.3265380859375 481.6618041992188 157.1744079589844 C 498.8877563476563 151.0222778320313 542.6907958984375 102.5581359863281 586.3709106445313 119.1688842773438 C 630.051025390625 135.7796325683594 712.7963256835938 185.8726654052734 751.189697265625 147.8669281005859 C 789.5830688476563 109.8611907958984 821.383544921875 71.855712890625 821.383544921875 71.855712890625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-445.0, 80.0)" d="M 445.20751953125 147.8669281005859 C 445.20751953125 147.8669281005859 464.4358520507813 163.3265380859375 481.6618041992188 157.1744079589844 C 498.8877563476563 151.0222778320313 542.6907958984375 102.5581359863281 586.3709106445313 119.1688842773438 C 630.051025390625 135.7796325683594 712.7963256835938 185.8726654052734 751.189697265625 147.8669281005859 C 789.5830688476563 109.8611907958984 821.383544921875 71.855712890625 821.383544921875 71.855712890625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-364.0, 15.0)" d="M 563.1538696289063 215.2086029052734 C 563.1538696289063 215.2086029052734 548.0075073242188 205.8908233642578 542.587890625 206.8130645751953 C 537.1682739257813 207.7353057861328 532.9542236328125 210.3650207519531 532.9542236328125 210.3650207519531 C 532.9542236328125 210.3650207519531 532.095703125 214.4852752685547 534.48681640625 215.2086029052734 C 537.7314453125 216.1904907226563 548.008544921875 217.1480407714844 551.8118896484375 217.0017700195313 C 558.0579223632813 217.0017700195313 563.1538696289063 215.2086029052734 563.1538696289063 215.2086029052734 Z" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="bevel" /><path transform="translate(-451.79, 8.9)" d="M 512.444580078125 229.3108367919922 C 512.444580078125 229.3108367919922 565.5230712890625 193.035888671875 603.3414916992188 209.8397216796875 C 641.159912109375 226.6435699462891 527.0411376953125 231.7113647460938 527.0411376953125 231.7113647460938" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-389.79, -213.1)" d="M 611.02294921875 207.7971954345703 C 611.02294921875 207.7971954345703 557.9444580078125 244.0721435546875 520.1260375976563 227.268310546875 C 482.3076171875 210.4644622802734 596.4263916015625 205.3966674804688 596.4263916015625 205.3966674804688" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-459.42, -8.45)" d="M 771.029541015625 244.2387084960938 C 771.029541015625 244.2387084960938 792.8095703125 230.5699615478516 804.7584838867188 219.9788970947266 C 816.7073974609375 209.3878326416016 834.90234375 184.9468841552734 834.90234375 184.9468841552734" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-455.42, 7.55)" d="M 771.029541015625 244.2387084960938 C 771.029541015625 244.2387084960938 792.8095703125 230.5699615478516 804.7584838867188 219.9788970947266 C 816.7073974609375 209.3878326416016 834.90234375 184.9468841552734 834.90234375 184.9468841552734" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(-437.42, 12.55)" d="M 771.029541015625 244.2387084960938 C 771.029541015625 244.2387084960938 792.8095703125 230.5699615478516 804.7584838867188 219.9788970947266 C 816.7073974609375 209.3878326416016 834.90234375 184.9468841552734 834.90234375 184.9468841552734" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
// ***  صورة شغار التطبيق
const String svg_app_tag =
    '<svg viewBox="116.0 298.9 127.2 107.1" ><path transform="translate(115.0, 335.0)" d="M 1 71 L 15.54545593261719 71 L 15.54545593261719 29.00000381469727 L 1 29.00000381469727 L 1 71 Z M 81 32.50000381469727 C 81 28.65000152587891 77.72727203369141 25.5 73.72727203369141 25.5 L 50.78182983398438 25.5 L 54.23637390136719 9.505000114440918 L 54.34546279907227 8.385001182556152 C 54.34546279907227 6.949999809265137 53.72727966308594 5.62000036239624 52.74546432495117 4.675000190734863 L 48.89091873168945 0.9999999403953552 L 24.9636402130127 24.06500053405762 C 23.61818313598633 25.32499694824219 22.81818389892578 27.07500076293945 22.81818389892578 29.00000381469727 L 22.81818389892578 64 C 22.81818389892578 67.84999847412109 26.09091186523438 71 30.09091377258301 71 L 62.81819152832031 71 C 65.83637237548828 71 68.41819763183594 69.25 69.50910186767578 66.73000335693359 L 80.49091339111328 42.05500411987305 C 80.81818389892578 41.25000381469727 81 40.41000366210938 81 39.50000381469727 L 81 32.81500244140625 L 80.96363830566406 32.78000259399414 L 81 32.50000381469727 Z" fill="#e0dbeb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(162.19, 297.94)" d="M 81.00000762939453 1 L 66.45455932617188 1 L 66.45455932617188 43 L 81.00000762939453 43 L 81.00000762939453 1 Z M 1.000007629394531 39.50000381469727 C 1.000007629394531 43.35000610351563 4.272739410400391 46.50000381469727 8.272743225097656 46.50000381469727 L 31.21819496154785 46.50000381469727 L 27.76364707946777 62.49499893188477 L 27.65455627441406 63.61499786376953 C 27.65455627441406 65.04999542236328 28.27273941040039 66.3800048828125 29.25455856323242 67.32499694824219 L 33.10910797119141 71 L 57.03638458251953 47.93500518798828 C 58.3818359375 46.67499923706055 59.18183517456055 44.92500305175781 59.18183517456055 43 L 59.18183517456055 8.000001907348633 C 59.18183517456055 4.149998664855957 55.90911483764648 1 51.90911865234375 1 L 19.18182945251465 1 C 16.16364479064941 1 13.58182144165039 2.750001907348633 12.49091625213623 5.269999504089355 L 1.509096145629883 29.94499778747559 C 1.181825637817383 30.75 1.000007629394531 31.59000015258789 1.000007629394531 32.5 L 1.000007629394531 39.18499755859375 L 1.036372900009155 39.22000885009766 L 1.000007629394531 39.50000381469727 Z" fill="#252427" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
// *** صورة خطوط بيضاء متناسقة من اجل شعار التطبيق في المنتصف
const String her_svg_curve2 =
    '<svg viewBox="0.0 0.0 399.2 416.5" ><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.6, 35.35)" d="M 4.297727648546888e-16 66.06321716308594 C 4.297727648546888e-16 66.06321716308594 42.24853515625 21.30648040771484 85.9285888671875 40.37807846069336 C 129.608642578125 59.44967651367188 133.9151611328125 75.13761138916016 173.9039916992188 66.06321716308594 C 213.892822265625 56.98882293701172 286.5891723632813 -8.337656021118164 328.4236450195313 0.8905324935913086 C 370.2581176757813 10.11872482299805 375.6937255859375 7.771804809570313 375.6937255859375 7.771804809570313" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.88, 17.0)" d="M 3.925763188276411e-16 71.42379760742188 C 3.925763188276411e-16 71.42379760742188 42.24853515625 26.66706085205078 85.9285888671875 45.7386589050293 C 129.608642578125 64.81025695800781 133.9151611328125 80.49819183349609 173.9039916992188 71.42379760742188 C 213.892822265625 62.34940338134766 287.1030883789063 -8.400057792663574 328.9375610351563 0.828132152557373 C 370.7720336914063 10.05632209777832 375.6937255859375 13.13238525390625 375.6937255859375 13.13238525390625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.88, 0.0)" d="M 3.925763188276411e-16 71.42379760742188 C 3.925763188276411e-16 71.42379760742188 42.24853515625 26.66706085205078 85.9285888671875 45.7386589050293 C 129.608642578125 64.81025695800781 133.9151611328125 80.49819183349609 173.9039916992188 71.42379760742188 C 213.892822265625 62.34940338134766 287.1030883789063 -8.400057792663574 328.9375610351563 0.828132152557373 C 370.7720336914063 10.05632209777832 375.6937255859375 13.13238525390625 375.6937255859375 13.13238525390625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.68, 89.38)" d="M 0 58.51271820068359 C 0 58.51271820068359 36.42291259765625 14.71414566040039 67.18353271484375 15.33159255981445 C 97.9442138671875 15.94903945922852 120.4775390625 75.99127197265625 167.2337036132813 61.22617340087891 C 213.9898681640625 46.46106719970703 309.5360107421875 -12.40885925292969 338.4510498046875 2.356243133544922 C 367.3660888671875 17.1213493347168 375.0785522460938 17.91091537475586 375.0785522460938 17.91091537475586" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.89, 256.55)" d="M 0 76.01121520996094 C 0 76.01121520996094 19.22833251953125 91.4708251953125 36.45428466796875 85.31869506835938 C 53.68023681640625 79.16656494140625 97.4832763671875 30.70242309570313 141.1633911132813 47.31317138671875 C 184.843505859375 63.92391967773438 267.5888061523438 114.0169525146484 305.982177734375 76.01121520996094 C 344.3755493164063 38.00547790527344 376.176025390625 0 376.176025390625 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.89, 302.55)" d="M 0 76.01121520996094 C 0 76.01121520996094 19.22833251953125 91.4708251953125 36.45428466796875 85.31869506835938 C 53.68023681640625 79.16656494140625 97.4832763671875 30.70242309570313 141.1633911132813 47.31317138671875 C 163.745849609375 55.90087890625 196.7698974609375 73.43792724609375 228.9703979492188 83.2027587890625 C 258.5469970703125 92.17225646972656 287.4380493164063 94.36810302734375 305.982177734375 76.01121520996094 C 344.3755493164063 38.00547790527344 376.176025390625 0 376.176025390625 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.939693, 0.34202, -0.34202, 0.939693, 182.16, 382.57)" d="M 30.349609375 8.459747314453125 C 30.349609375 8.459747314453125 15.2032470703125 -0.8580322265625 9.78363037109375 0.064208984375 C 4.364013671875 0.9864501953125 0.14996337890625 3.616165161132813 0.14996337890625 3.616165161132813 C 0.14996337890625 3.616165161132813 -0.70855712890625 7.736419677734375 1.68255615234375 8.459747314453125 C 4.92718505859375 9.441635131835938 15.20428466796875 10.39918518066406 19.00762939453125 10.25291442871094 C 25.253662109375 10.25291442871094 30.349609375 8.459747314453125 30.349609375 8.459747314453125 Z" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="bevel" /><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 295.83, 410.72)" d="M 30.349609375 8.459747314453125 C 30.349609375 8.459747314453125 15.2032470703125 -0.8580322265625 9.78363037109375 0.064208984375 C 4.364013671875 0.9864501953125 0.14996337890625 3.616165161132813 0.14996337890625 3.616165161132813 C 0.14996337890625 3.616165161132813 -0.70855712890625 7.736419677734375 1.68255615234375 8.459747314453125 C 4.92718505859375 9.441635131835938 15.20428466796875 10.39918518066406 19.00762939453125 10.25291442871094 C 25.253662109375 10.25291442871094 30.349609375 8.459747314453125 30.349609375 8.459747314453125 Z" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="bevel" /><path transform="translate(124.34, 39.52)" d="M 98.578369140625 2.400527954101563 C 98.578369140625 2.400527954101563 45.4998779296875 38.67547607421875 7.68145751953125 21.87164306640625 C -30.136962890625 5.067794799804688 83.9818115234375 0 83.9818115234375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(313.3, 336.19)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(317.3, 352.19)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(335.3, 357.19)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(6.89, 278.55)" d="M 0 76.01121520996094 C 0 76.01121520996094 19.22833251953125 91.4708251953125 36.45428466796875 85.31869506835938 C 53.68023681640625 79.16656494140625 97.4832763671875 30.70242309570313 141.1633911132813 47.31317138671875 C 163.745849609375 55.90087890625 196.7698974609375 73.43792724609375 228.9703979492188 83.2027587890625 C 258.5469970703125 92.17225646972656 287.4380493164063 94.36810302734375 305.982177734375 76.01121520996094 C 344.3755493164063 38.00547790527344 376.176025390625 0 376.176025390625 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';

const String ver_svg_curve2_2 =
    '<svg viewBox="0.0 0.0 399.2 304.0" ><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.6, 35.35)" d="M 0 66.063232421875 C 0 66.063232421875 42.24853515625 21.30649566650391 85.9285888671875 40.37809371948242 C 129.608642578125 59.44969177246094 133.9151611328125 75.13762664794922 173.9039916992188 66.063232421875 C 213.892822265625 56.98883819580078 286.5891723632813 -8.337640762329102 328.4236450195313 0.8905477523803711 C 370.2581176757813 10.11874008178711 375.6937255859375 7.771820068359375 375.6937255859375 7.771820068359375" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.88, 17.0)" d="M 0 71.42379760742188 C 0 71.42379760742188 42.24853515625 26.66706085205078 85.9285888671875 45.7386589050293 C 129.608642578125 64.81025695800781 133.9151611328125 80.49819183349609 173.9039916992188 71.42379760742188 C 213.892822265625 62.34940338134766 287.1030883789063 -8.400057792663574 328.9375610351563 0.828132152557373 C 370.7720336914063 10.05632209777832 375.6937255859375 13.13238525390625 375.6937255859375 13.13238525390625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="matrix(0.99863, 0.052336, -0.052336, 0.99863, 3.88, 0.0)" d="M 0 71.42379760742188 C 0 71.42379760742188 42.24853515625 26.66706085205078 85.9285888671875 45.7386589050293 C 129.608642578125 64.81025695800781 133.9151611328125 80.49819183349609 173.9039916992188 71.42379760742188 C 213.892822265625 62.34940338134766 287.1030883789063 -8.400057792663574 328.9375610351563 0.828132152557373 C 370.7720336914063 10.05632209777832 375.6937255859375 13.13238525390625 375.6937255859375 13.13238525390625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.68, 65.18)" d="M 0 58.40156936645508 C 0 58.40156936645508 34.06024169921875 23.18880081176758 64.82086181640625 23.80624771118164 C 95.58154296875 24.4236946105957 114.7060546875 66.74150085449219 164.59130859375 58.40156936645508 C 214.4765625 50.0616340637207 309.5360107421875 -12.5200080871582 338.4510498046875 2.245094299316406 C 346.5472412109375 6.379322052001953 359.75634765625 10.67855453491211 375.0785522460938 17.79976654052734" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.89, 184.08)" d="M 0 76.01121520996094 C 0 76.01121520996094 19.22833251953125 91.4708251953125 36.45428466796875 85.31869506835938 C 53.68023681640625 79.16656494140625 72.48870849609375 38.80693054199219 129.3753662109375 47.5587158203125 C 186.2620239257813 56.31050109863281 267.5888061523438 114.0169525146484 305.982177734375 76.01121520996094 C 344.3755493164063 38.00547790527344 376.176025390625 0 376.176025390625 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(1.89, 199.08)" d="M 0 76.01121520996094 C 0 76.01121520996094 19.22833251953125 91.4708251953125 36.45428466796875 85.31869506835938 C 53.68023681640625 79.16656494140625 97.4832763671875 30.70242309570313 141.1633911132813 47.31317138671875 C 184.843505859375 63.92391967773438 267.5888061523438 114.0169525146484 305.982177734375 76.01121520996094 C 344.3755493164063 38.00547790527344 376.176025390625 0 376.176025390625 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(170.49, 268.97)" d="M 30.349609375 8.459747314453125 C 30.349609375 8.459747314453125 15.2032470703125 -0.8580322265625 9.78363037109375 0.064208984375 C 4.364013671875 0.9864501953125 0.14996337890625 3.616165161132813 0.14996337890625 3.616165161132813 C 0.14996337890625 3.616165161132813 -0.70855712890625 7.736419677734375 1.68255615234375 8.459747314453125 C 4.92718505859375 9.441635131835938 15.20428466796875 10.39918518066406 19.00762939453125 10.25291442871094 C 25.253662109375 10.25291442871094 30.349609375 8.459747314453125 30.349609375 8.459747314453125 Z" fill="none" stroke="#ffffff" stroke-width="3" stroke-linecap="round" stroke-linejoin="bevel" /><path transform="translate(62.34, 261.52)" d="M 0 23.91416931152344 C 0 23.91416931152344 53.0784912109375 -12.36077880859375 90.89691162109375 4.44305419921875 C 128.71533203125 21.24690246582031 14.5965576171875 26.314697265625 14.5965576171875 26.314697265625" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(124.34, 39.52)" d="M 98.578369140625 2.400527954101563 C 98.578369140625 2.400527954101563 45.4998779296875 38.67547607421875 7.68145751953125 21.87164306640625 C -30.136962890625 5.067794799804688 83.9818115234375 0 83.9818115234375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(313.29, 223.72)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(317.29, 239.72)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /><path transform="translate(335.29, 244.72)" d="M 0 59.29182434082031 C 0 59.29182434082031 21.780029296875 45.62307739257813 33.72894287109375 35.03201293945313 C 45.6778564453125 24.44094848632813 63.872802734375 0 63.872802734375 0" fill="none" stroke="#ffffff" stroke-width="3" stroke-miterlimit="4" stroke-linecap="round" /></svg>';

// --------------------------------------------------------------
// String Consts for names
// --------------------------------------------------------------
const String app_name = 'سيمفونيا سكول';
const String intro_stam =
    'مرحبا بك ب تطبيق سيمفونيا سكول\n.حيث انه منصة لتقديم فرص العمل\n,لكل مدرس\n,ليجد فرصة عمل مناسب له\n, في المؤسسات التعليمية\n. كم يساعد على تنظيم جدول مقابلاته';
const String auth_stam =
    'مبارك لك لقد أوشكت على الأنتهاء من انشاء الحساب\n,تبقى مرحلة اخيرة فقط \n. لقد أرسلنا إليك شيفرة تفعيل التطبيق \n, على بريدك الاأكتروني \n.رجاءا تحقق من البريد الأكتروني \n ...';
// --------------------------------------------------------------
// consts for fonts
// --------------------------------------------------------------
const List<String> universitySpecificList = [
  'رياضيات',
  'علوم',
  'كمياء',
  'فيزياء',
  'علوم عامة',
  'أدب عربي',
  'أدب أنكليزي',
  'أدب فرنسي',
  'أدب روسي',
  'تاريخ',
  'جغرافيا',
  'تربية دينية',
];
const List<String> provinces = [
  'دمشق',
  'ريف دمشق',
  'حلب',
  'ريف حلب',
  'حمص',
  'ريف حمص',
  'الاذقية',
  'ريف الاذقية',
  'طرطوس',
  'ريف طرطوس',
  'حماة',
  'ريف حماة',
  'بانياس',
  'ريف بانياس',
  'درعا ',
  'ريف درعا',
  'القنيطرة',
  'ريف القنيطرة',
  'الحسكة',
  'ريف الحسكة',
  'الرقة',
  'ريف الرقة',
  'دير الزور',
  'ريف دير الزور',
];

const List<String> nationality = ['سوري', 'فلسطيني', 'غير ذلك'];
const List<String> genderList = ['ذكر', 'انثى'];

// --------------------------------------------------------------
