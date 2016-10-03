//      TITLE("Alpha AXP Trignometric Tables")
//++
//
// Copyright (c) 1993, 1994  Digital Equipment Corporation
//
// Module Name:
//
//    trig_tab.s
//
// Abstract:
//
//    This module implements lookup tables for high-performance Alpha AXP
//    specific routines for IEEE double format sine, cosine and tangent.
//
// Author:
//
//    Bob Hanek 1-Oct-1991
//
// Environment:
//
//    User mode.
//
// Revision History:
//
//    Thomas Van Baak (tvb) 11-Feb-1994
//
//        Adapted for NT.
//
//--

#include "ksalpha.h"

        .rdata
        .align  3
        .globl  __trig_cons

__trig_cons:

/* argument reduction constants */
        .double  1.6297466172610083e+002        /* 2^K / pi / 4 */
        .double  6.1359231476671994e-003        /* pi / 4 / 2^K in 5 parts */
        .double  3.8753655503837720e-012
        .double -4.7566608519053990e-021
        .double  1.1343187409110769e-030
        .double -1.0753892652515905e-039
        .double  1.5707963267948966e+000        /* pi / 2 high and low */
        .double  6.1232339957367660e-017
        .double  3.1415926535897931e+000        /* pi high and low */
        .double  1.2246467991473532e-016
        .double  4.7123889803846897e+000        /* 3 * pi / 2 high and low */
        .double  1.8369701987210297e-016
        .double  6.2831853071795862e+000        /* 2 * pi high and low */
        .double  2.4492935982947064e-016
        .double  1.6297466172610083e+002        /* 2^K / pi / 4 */

/* p_coefs_t */
        .double  1.6666666666665642e-001
        .double -8.3333304811689379e-003

/* q_coefs_t */
        .double  4.9999999999992822e-001
        .double -4.1666646701511267e-002

/* s_coefs_t */
        .double  1.6666666666666480e-001
        .double -8.3333333328297430e-003
        .double  1.9841265065944337e-004
        .double -2.7538833799313716e-006

/* c_coefs_t */
        .double  5.0000000000000000e-001
        .double -4.1666666666666012e-002
        .double  1.3888888887947587e-003
        .double -2.4801581156849588e-005
        .double  2.7538826818007804e-007

/* Table of a, sin(a) and cos(a) */
        .double  1.6873788666743875e-001        /*     a   */
        .double  1.6793829497474913e-001        /* sin(a)  */
        .double  9.8579750916756437e-001        /* cos(a)  */
        .double  1.7487380981893508e-001
        .double  1.7398387338743623e-001
        .double  9.8474850180190909e-001
        .double  1.8100973297048850e-001
        .double  1.8002290140568264e-001
        .double  9.8366241921173336e-001
        .double  1.8714565612219033e-001
        .double  1.8605515166358627e-001
        .double  9.8253930228741482e-001
        .double  1.9328157927362843e-001
        .double  1.9208039704992938e-001
        .double  9.8137919331374734e-001
        .double  1.9941750242513653e-001
        .double  1.9809841071795670e-001
        .double  9.8018213596811676e-001
        .double  2.0555342557666775e-001
        .double  2.0410896609280887e-001
        .double  9.7894817531906386e-001
        .double  2.1168934872823247e-001
        .double  2.1011183688048329e-001
        .double  9.7767735782450704e-001
        .double  2.1782527187976777e-001
        .double  2.1610679707622607e-001
        .double  9.7636973133001970e-001
        .double  2.2396119503130274e-001
        .double  2.2209362097320268e-001
        .double  9.7502534506699434e-001
        .double  2.3009711818289025e-001
        .double  2.2807208317092864e-001
        .double  9.7364424965080187e-001
        .double  2.3623304133440029e-001
        .double  2.3404195858355464e-001
        .double  9.7222649707893360e-001
        .double  2.4236896448593759e-001
        .double  2.4000302244874758e-001
        .double  9.7077214072894880e-001
        .double  2.4850488763740328e-001
        .double  2.4595505033572618e-001
        .double  9.6928123535656585e-001
        .double  2.5464081078901979e-001
        .double  2.5189781815422019e-001
        .double  9.6775383709347462e-001
        .double  2.6077673394054457e-001
        .double  2.5783110216214505e-001
        .double  9.6619000344541628e-001
        .double  2.6691265709209555e-001
        .double  2.6375467897482557e-001
        .double  9.6458979328981431e-001
        .double  2.7304858024368822e-001
        .double  2.6966832557295756e-001
        .double  9.6295326687367200e-001
        .double  2.7918450339517825e-001
        .double  2.7557181931095004e-001
        .double  9.6128048581132297e-001
        .double  2.8532042654675416e-001
        .double  2.8146493792578187e-001
        .double  9.5957151308197752e-001
        .double  2.9145634969861178e-001
        .double  2.8734745954505514e-001
        .double  9.5782641302743521e-001
        .double  2.9759227284983081e-001
        .double  2.9321916269427434e-001
        .double  9.5604525134999163e-001
        .double  3.0372819600136575e-001
        .double  2.9907982630804886e-001
        .double  9.5422809510910300e-001
        .double  3.0986411915294315e-001
        .double  3.0492922973544395e-001
        .double  9.5237501271975256e-001
        .double  3.1600004230440715e-001
        .double  3.1076715274957828e-001
        .double  9.5048607394949258e-001
        .double  3.2213596545600998e-001
        .double  3.1659337555618988e-001
        .double  9.4856134991572227e-001
        .double  3.2827188860755074e-001
        .double  3.2240767880109211e-001
        .double  9.4660091308327599e-001
        .double  3.3440781175905460e-001
        .double  3.2820984357907818e-001
        .double  9.4460483726148525e-001
        .double  3.4054373491063300e-001
        .double  3.3399965144202887e-001
        .double  9.4257319760143998e-001
        .double  3.4667965806221807e-001
        .double  3.3977688440688625e-001
        .double  9.4050607059324687e-001
        .double  3.5281558121368639e-001
        .double  3.4554132496397866e-001
        .double  9.3840353406311194e-001
        .double  3.5895150436583700e-001
        .double  3.5129275608612603e-001
        .double  9.3626566717006854e-001
        .double  3.6508742751687479e-001
        .double  3.5703096123351613e-001
        .double  9.3409255040422601e-001
        .double  3.7122335066826967e-001
        .double  3.6275572436734549e-001
        .double  9.3188426558168824e-001
        .double  3.7735927381996309e-001
        .double  3.6846682995346097e-001
        .double  9.2964089584314613e-001
        .double  3.8349519697141676e-001
        .double  3.7416406297146398e-001
        .double  9.2736252565039867e-001
        .double  3.8963112012302625e-001
        .double  3.7984720892411905e-001
        .double  9.2504924078264972e-001
        .double  3.9576704327591361e-001
        .double  3.8551605384522741e-001
        .double  9.2270112833333184e-001
        .double  4.0190296642611428e-001
        .double  3.9117038430232409e-001
        .double  9.2031827670908073e-001
        .double  4.0803888957752116e-001
        .double  3.9680998741665580e-001
        .double  9.1790077562141403e-001
        .double  4.1417481272918655e-001
        .double  4.0243465085947649e-001
        .double  9.1544871608824230e-001
        .double  4.2031073588067647e-001
        .double  4.0804416286498851e-001
        .double  9.1296219042839377e-001
        .double  4.2644665903220358e-001
        .double  4.1363831223843028e-001
        .double  9.1044129225806913e-001
        .double  4.3258258218370754e-001
        .double  4.1921688836318466e-001
        .double  9.0788611648768436e-001
        .double  4.3871850533523266e-001
        .double  4.2477968120905385e-001
        .double  9.0529675931814457e-001
        .double  4.4485442848684958e-001
        .double  4.3032648134009494e-001
        .double  9.0267331823725294e-001
        .double  4.5099035163837764e-001
        .double  4.3585707992225470e-001
        .double  9.0001589201616061e-001
        .double  4.5712627478987899e-001
        .double  4.4137126873167892e-001
        .double  8.9732458070543686e-001
        .double  4.6326219794198137e-001
        .double  4.4686884016283734e-001
        .double  8.9459948563115133e-001
        .double  4.6939812109297580e-001
        .double  4.5234958723374374e-001
        .double  8.9184070939235649e-001
        .double  4.7553404424453299e-001
        .double  4.5781330359886319e-001
        .double  8.8904835585467179e-001
        .double  4.8166996739612944e-001
        .double  4.6325978355189396e-001
        .double  8.8622253014886299e-001
        .double  4.8780589054764745e-001
        .double  4.6868882203583989e-001
        .double  8.8336333866572525e-001
        .double  4.9394181369918916e-001
        .double  4.7410021465056118e-001
        .double  8.8047088905215476e-001
        .double  5.0007773685103474e-001
        .double  4.7949375766043006e-001
        .double  8.7754529020710992e-001
        .double  5.0621366000216750e-001
        .double  4.8486924800070880e-001
        .double  8.7458665227822174e-001
        .double  5.1234958315385615e-001
        .double  4.9022648328833646e-001
        .double  8.7159508665592555e-001
        .double  5.1848550630527146e-001
        .double  4.9556526182570715e-001
        .double  8.6857070597137820e-001
        .double  5.2462142945689461e-001
        .double  5.0088538261124538e-001
        .double  8.6551362409056642e-001
        .double  5.3075735260824397e-001
        .double  5.0618664534499325e-001
        .double  8.6242395611113565e-001
        .double  5.3689327575983103e-001
        .double  5.1146885043784718e-001
        .double  8.5930181835708175e-001
        .double  5.4302919891168933e-001
        .double  5.1673179901779742e-001
        .double  8.5614732837510543e-001
        .double  5.4916512206327295e-001
        .double  5.2197529293733635e-001
        .double  8.5296060493025228e-001
        .double  5.5530104521459211e-001
        .double  5.2719913478189284e-001
        .double  8.4974176800085777e-001
        .double  5.6143696836616441e-001
        .double  5.3240312787721467e-001
        .double  8.4649093877404158e-001
        .double  5.6757289151762158e-001
        .double  5.3758707629559010e-001
        .double  8.4320823964188074e-001
        .double  5.7370881466948875e-001
        .double  5.4275078486473338e-001
        .double  8.3989379419585897e-001
        .double  5.7984473782067447e-001
        .double  5.4789405917301826e-001
        .double  8.3654772722356563e-001
        .double  5.8598066097196122e-001
        .double  5.5301670557973281e-001
        .double  8.3317016470210881e-001
        .double  5.9211658412379087e-001
        .double  5.5811853122050081e-001
        .double  8.2976123379456024e-001
        .double  5.9825250727594070e-001
        .double  5.6319934401428084e-001
        .double  8.2632106284535900e-001
        .double  6.0438843042663359e-001
        .double  5.6825895266987725e-001
        .double  8.2284978137600195e-001
        .double  6.1052435357861623e-001
        .double  5.7329716669814956e-001
        .double  8.1934752007672185e-001
        .double  6.1666027673006196e-001
        .double  5.7831379641168346e-001
        .double  8.1581441080671402e-001
        .double  6.2279619988188006e-001
        .double  5.8330865293794987e-001
        .double  8.1225058658502325e-001
        .double  6.2893212303280266e-001
        .double  5.8828154822239442e-001
        .double  8.0865618158835750e-001
        .double  6.3506804618462842e-001
        .double  5.9323229503977803e-001
        .double  8.0503133114297964e-001
        .double  6.4120396933591495e-001
        .double  5.9816070699611545e-001
        .double  8.0137617172330955e-001
        .double  6.4733989248666080e-001
        .double  6.0306659853948685e-001
        .double  7.9769084094404230e-001
        .double  6.5347581563949608e-001
        .double  6.0794978496794272e-001
        .double  7.9397547755420772e-001
        .double  6.5961173879086255e-001
        .double  6.1281008242943880e-001
        .double  7.9023022143728749e-001
        .double  6.6574766194233970e-001
        .double  6.1764730793778144e-001
        .double  7.8645521359910342e-001
        .double  6.7188358509391355e-001
        .double  6.2246127937415208e-001
        .double  7.8265059616657406e-001
        .double  6.7801950824549073e-001
        .double  6.2725181549517317e-001
        .double  7.7881651238145255e-001
        .double  6.8415543139719159e-001
        .double  6.3201873593996061e-001
        .double  7.7495310659475025e-001
        .double  6.9029135454861223e-001
        .double  6.3676186123634104e-001
        .double  7.7106052426176686e-001
        .double  6.9642727770028012e-001
        .double  6.4148101280873582e-001
        .double  7.6713891193569272e-001
        .double  7.0256320085180513e-001
        .double  6.4617601298345484e-001
        .double  7.6318841726326403e-001
        .double  7.0869912400311297e-001
        .double  6.5084668499634046e-001
        .double  7.5920918897842271e-001
        .double  7.1483504715460733e-001
        .double  6.5549285299953874e-001
        .double  7.5520137689660305e-001
        .double  7.2097097030632040e-001
        .double  6.6011434206747233e-001
        .double  7.5116513190964085e-001
        .double  7.2710689345788315e-001
        .double  6.6471097820341152e-001
        .double  7.4710060598012085e-001
        .double  7.3324281660919000e-001
        .double  6.6928258834652721e-001
        .double  7.4300795213521975e-001
        .double  7.3937873976117685e-001
        .double  6.7382900037897608e-001
        .double  7.3888732446041450e-001
        .double  7.4551466291281177e-001
        .double  6.7835004313014813e-001
        .double  7.3473887809569882e-001
        .double  7.5165058606413959e-001
        .double  6.8284554638537620e-001
        .double  7.3056276922770780e-001
        .double  7.5778650921542079e-001
        .double  6.8731534089169666e-001
        .double  7.2635915508440507e-001
        .double  7.6392243236702362e-001
        .double  6.9175925836413921e-001
        .double  7.2212819392923311e-001
        .double  7.7005835551857726e-001
        .double  6.9617713149145244e-001
        .double  7.1787004505574192e-001
        .double  7.7619427867013535e-001
        .double  7.0056879394324900e-001
        .double  7.1358486878079297e-001
        .double  7.8233020182165414e-001
        .double  7.0493408037588867e-001
        .double  7.0927282643888179e-001

/* e_coefs_t */
        .double -3.3333333333333498e-001
        .double -1.3333333333262590e-001
        .double -5.3968254084035876e-002
        .double -2.1869479239926222e-002
        .double -8.8636401864079888e-003
        .double -3.5824012035897486e-003
        .double -1.5766189968704179e-003

/* f_coefs_t */
        .double  3.3333333333333331e-001
        .double  2.2222222222234297e-002
        .double  2.1164021149254063e-003
        .double  2.1164029762895965e-004
        .double  2.1375230108053778e-005
        .double  2.2024029026219318e-006

/* g_coefs_t */
        .double -3.3333333329030146e-001
        .double -1.3333638120728455e-001

/* Table of a, tan(a), cot(a) and -cot(a)/tan(a) */
        .double  2.1782527187985032e-001        /* a */
        .double  2.2133705105946697e-001        /* tan(a) */
        .double  4.5179964005724846e+000        /* cot(a) */
        .double  4.7393334516319516e+000        /* -cot(a) / tan(a) */
        .double  2.2396119503140927e-001
        .double  2.2778240801325200e-001
        .double  4.3901546599762948e+000
        .double  4.6179370679895468e+000
        .double  2.3009711818284290e-001
        .double  2.3424580718540494e-001
        .double  4.2690198472090586e+000
        .double  4.5032656543944638e+000
        .double  2.3623304133439546e-001
        .double  2.4072781320683154e-001
        .double  4.1540692231553962e+000
        .double  4.3947970363622275e+000
        .double  2.4236896448590334e-001
        .double  2.4722899677415033e-001
        .double  4.0448329809529753e+000
        .double  4.2920619777271254e+000
        .double  2.4850488763747661e-001
        .double  2.5374993486314967e-001
        .double  3.9408877111212335e+000
        .double  4.1946376459843835e+000
        .double  2.5464081078901402e-001
        .double  2.6029121094549956e-001
        .double  3.8418508115104300e+000
        .double  4.1021420224559293e+000
        .double  2.6077673394051260e-001
        .double  2.6685341521097389e-001
        .double  3.7473756864209573e+000
        .double  4.0142291016319316e+000
        .double  2.6691265709215639e-001
        .double  2.7343714479429770e-001
        .double  3.6571476079165604e+000
        .double  3.9305847527108582e+000
        .double  2.7304858024366946e-001
        .double  2.8004300400625293e-001
        .double  3.5708801351726378e+000
        .double  3.8509231391788905e+000
        .double  2.7918450339522155e-001
        .double  2.8667160457169982e-001
        .double  3.4883120059764714e+000
        .double  3.7749836105481713e+000
        .double  2.8532042654664169e-001
        .double  2.9332356587123770e-001
        .double  3.4092044293467270e+000
        .double  3.7025279952179648e+000
        .double  2.9145634969825540e-001
        .double  2.9999951519028795e-001
        .double  3.3333387201166169e+000
        .double  3.6333382353069048e+000
        .double  2.9759227284976519e-001
        .double  3.0670008797194814e-001
        .double  3.2605142261695845e+000
        .double  3.5672143141415327e+000
        .double  3.0372819600135798e-001
        .double  3.1342592807838571e-001
        .double  3.1905465068923933e+000
        .double  3.5039724349707790e+000
        .double  3.0986411915290263e-001
        .double  3.2017768805651181e-001
        .double  3.1232657280712783e+000
        .double  3.4434434161277903e+000
        .double  3.1600004230430800e-001
        .double  3.2695602941152369e-001
        .double  3.0585152437771641e+000
        .double  3.3854712731886880e+000
        .double  3.2213596545599910e-001
        .double  3.3376162288744643e-001
        .double  2.9961503403200656e+000
        .double  3.3299119632075120e+000
        .double  3.2827188860753653e-001
        .double  3.4059514875273916e-001
        .double  2.9360371210864398e+000
        .double  3.2766322698391788e+000
        .double  3.3440781175906148e-001
        .double  3.4745729709642648e-001
        .double  2.8780515141188117e+000
        .double  3.2255088112152381e+000
        .double  3.4054373491065998e-001
        .double  3.5434876812960975e-001
        .double  2.8220783870038209e+000
        .double  3.1764271551334304e+000
        .double  3.4667965806236861e-001
        .double  3.6127027249566168e-001
        .double  2.7680107557479934e+000
        .double  3.1292810282436552e+000
        .double  3.5281558121374068e-001
        .double  3.6822253158820401e-001
        .double  2.7157490762089882e+000
        .double  3.0839716077971921e+000
        .double  3.5895150436536694e-001
        .double  3.7520627787990135e-001
        .double  2.6652006081840853e+000
        .double  3.0404068860639866e+000
        .double  3.6508742751675222e-001
        .double  3.8222225525605652e-001
        .double  2.6162788436536348e+000
        .double  2.9985010989096912e+000
        .double  3.7122335066826212e-001
        .double  3.8927121936209846e-001
        .double  2.5689029916948578e+000
        .double  2.9581742110569564e+000
        .double  3.7735927381994766e-001
        .double  3.9635393795715074e-001
        .double  2.5229975136720064e+000
        .double  2.9193514516291570e+000
        .double  3.8349519697148382e-001
        .double  4.0347119127885739e-001
        .double  2.4784917030392246e+000
        .double  2.8819628943180819e+000
        .double  3.8963112012272882e-001
        .double  4.1062377241931786e-001
        .double  2.4353193048424560e+000
        .double  2.8459430772617740e+000
        .double  3.9576704327446055e-001
        .double  4.1781248771203672e-001
        .double  2.3934181706153708e+000
        .double  2.8112306583274074e+000
        .double  4.0190296642601137e-001
        .double  4.2503815712644383e-001
        .double  2.3527299449082446e+000
        .double  2.7777681020346883e+000
        .double  4.0803888957749385e-001
        .double  4.3230161467941647e-001
        .double  2.3131997800692319e+000
        .double  2.7455013947486484e+000
        .double  4.1417481273072976e-001
        .double  4.3960370885742833e-001
        .double  2.2747760763872868e+000
        .double  2.7143797852447151e+000
        .double  4.2031073588058343e-001
        .double  4.4694530303978747e-001
        .double  2.2374102450540332e+000
        .double  2.6843555480938206e+000
        .double  4.2644665903229395e-001
        .double  4.5432727596595179e-001
        .double  2.2010564914331536e+000
        .double  2.6553837673991056e+000
        .double  4.3258258218368612e-001
        .double  4.6175052217449325e-001
        .double  2.1656716169821784e+000
        .double  2.6274221391566717e+000
        .double  4.3871850533549811e-001
        .double  4.6921595248974990e-001
        .double  2.1312148376324549e+000
        .double  2.6004307901222048e+000
        .double  4.4485442848660378e-001
        .double  4.7672449450501908e-001
        .double  2.0976476172853160e+000
        .double  2.5743721117903351e+000
        .double  4.5099035163826329e-001
        .double  4.8427709309193112e-001
        .double  2.0649335148506980e+000
        .double  2.5492106079426291e+000
        .double  4.5712627478992174e-001
        .double  4.9187471091535240e-001
        .double  2.0330380436494768e+000
        .double  2.5249127545648293e+000
        .double  4.6326219794154727e-001
        .double  4.9951832897274745e-001
        .double  2.0019285419545789e+000
        .double  2.5014468709273263e+000
        .double  4.6939812109297535e-001
        .double  5.0720894714701403e-001
        .double  1.9715740537008921e+000
        .double  2.4787830008479061e+000
        .double  4.7553404424473472e-001
        .double  5.1494758477898417e-001
        .double  1.9419452184229598e+000
        .double  2.4568928032019439e+000
        .double  4.8166996739605061e-001
        .double  5.2273528125491131e-001
        .double  1.9130141696181993e+000
        .double  2.4357494508731108e+000
        .double  4.8780589054762180e-001
        .double  5.3057309661927010e-001
        .double  1.8847544407582022e+000
        .double  2.4153275373774723e+000
        .double  4.9394181369915963e-001
        .double  5.3846211220101370e-001
        .double  1.8571408783292245e+000
        .double  2.3956029905302381e+000
        .double  5.0007773685083068e-001
        .double  5.4640343126567514e-001
        .double  1.8301495612566436e+000
        .double  2.3765529925223188e+000
        .double  5.0621366000230694e-001
        .double  5.5439817968617089e-001
        .double  1.8037577261997355e+000
        .double  2.3581559058859063e+000
        .double  5.1234958315368029e-001
        .double  5.6244750663866294e-001
        .double  1.7779436982061989e+000
        .double  2.3403912048448618e+000
        .double  5.1848550630524104e-001
        .double  5.7055258532055808e-001
        .double  1.7526868262951820e+000
        .double  2.3232394116157402e+000
        .double  5.2462142945731782e-001
        .double  5.7871461369315458e-001
        .double  1.7279674235602056e+000
        .double  2.3066820372533603e+000
        .double  5.3075735260843893e-001
        .double  5.8693481524762969e-001
        .double  1.7037667114330179e+000
        .double  2.2907015266806474e+000
        .double  5.3689327575978241e-001
        .double  5.9521443980611988e-001
        .double  1.6800667677446326e+000
        .double  2.2752812075507522e+000
        .double  5.4302919891141332e-001
        .double  6.0355476433967026e-001
        .double  1.6568504783390579e+000
        .double  2.2604052426787282e+000
        .double  5.4916512206305668e-001
        .double  6.1195709382119168e-001
        .double  1.6341014919130767e+000
        .double  2.2460585857342683e+000
        .double  5.5530104521453705e-001
        .double  6.2042276210823599e-001
        .double  1.6118041778511421e+000
        .double  2.2322269399593782e+000
        .double  5.6143696836616308e-001
        .double  6.2895313285725596e-001
        .double  1.5899435868251808e+000
        .double  2.2188967196824367e+000
        .double  5.6757289151765378e-001
        .double  6.3754960046873721e-001
        .double  1.5685054139549035e+000
        .double  2.2060550144236406e+000
        .double  5.7370881466930135e-001
        .double  6.4621359106975795e-001
        .double  1.5474759643240794e+000
        .double  2.1936895553938371e+000
        .double  5.7984473782075241e-001
        .double  6.5494656352905001e-001
        .double  1.5268421206940881e+000
        .double  2.1817886842231382e+000
        .double  5.8598066097280455e-001
        .double  6.6375001051372295e-001
        .double  1.5065913132355802e+000
        .double  2.1703413237493030e+000
        .double  5.9211658412388102e-001
        .double  6.7262545957743969e-001
        .double  1.4867114911591739e+000
        .double  2.1593369507366136e+000
        .double  5.9825250727542312e-001
        .double  6.8157447430219242e-001
        .double  1.4671910960630048e+000
        .double  2.1487655703651973e+000
        .double  6.0438843042675905e-001
        .double  6.9059865546754429e-001
        .double  1.4480190369368544e+000
        .double  2.1386176924043987e+000
        .double  6.1052435357803003e-001
        .double  6.9969964227602943e-001
        .double  1.4291846666480115e+000
        .double  2.1288843089240408e+000
        .double  6.1666027673074542e-001
        .double  7.0887911362175926e-001
        .double  1.4106777598381546e+000
        .double  2.1195568734599139e+000
        .double  6.2279619988164980e-001
        .double  7.1813878939760900e-001
        .double  1.3924884921462362e+000
        .double  2.1106272815438452e+000
        .double  6.2893212303307089e-001
        .double  7.2748043187801659e-001
        .double  1.3746074205988805e+000
        .double  2.1020878524768971e+000
        .double  6.3506804618466861e-001
        .double  7.3690584712716656e-001
        .double  1.3570254651913920e+000
        .double  2.0939313123185586e+000
        .double  6.4120396933628243e-001
        .double  7.4641688647950022e-001
        .double  1.3397338914939785e+000
        .double  2.0861507779734789e+000
        .double  6.4733989248741663e-001
        .double  7.5601544807349652e-001
        .double  1.3227242942564639e+000
        .double  2.0787397423299603e+000
        .double  6.5347581563917811e-001
        .double  7.6570347845035958e-001
        .double  1.3059885819296690e+000
        .double  2.0716920603800286e+000
        .double  6.5961173879104307e-001
        .double  7.7548297420854806e-001
        .double  1.2895189620643732e+000
        .double  2.0650019362729211e+000
        .double  6.6574766194234480e-001
        .double  7.8535598373264071e-001
        .double  1.2733079275046699e+000
        .double  2.0586639112373106e+000
        .double  6.7188358509360024e-001
        .double  7.9532460899227542e-001
        .double  1.2573482433381016e+000
        .double  2.0526728523303768e+000
        .double  6.7801950824543344e-001
        .double  8.0539100741084590e-001
        .double  1.2416329345602939e+000
        .double  2.0470239419711396e+000
        .double  6.8415543139756574e-001
        .double  8.1555739381137526e-001
        .double  1.2261552744027764e+000
        .double  2.0417126682141515e+000
        .double  6.9029135454847523e-001
        .double  8.2582604244435354e-001
        .double  1.2109087732812480e+000
        .double  2.0367348157256018e+000
        .double  6.9642727770014579e-001
        .double  8.3619928910910779e-001
        .double  1.1958871683153505e+000
        .double  2.0320864574244584e+000
        .double  7.0256320085154866e-001
        .double  8.4667953334545765e-001
        .double  1.1810844134246781e+000
        .double  2.0277639467701358e+000
        .double  7.0869912400325685e-001
        .double  8.5726924073758481e-001
        .double  1.1664946699121168e+000
        .double  2.0237639106497016e+000
        .double  7.1483504715466040e-001
        .double  8.6797094530371144e-001
        .double  1.1521122975494189e+000
        .double  2.0200832428531306e+000
        .double  7.2097097030618651e-001
        .double  8.7878725199760810e-001
        .double  1.1379318461059353e+000
        .double  2.0167190981035437e+000
        .double  7.2710689345788626e-001
        .double  8.8972083931237311e-001
        .double  1.1239480473143204e+000
        .double  2.0136688866266934e+000
        .double  7.3324281660914026e-001
        .double  9.0077446200018296e-001
        .double  1.1101558072366808e+000
        .double  2.0109302692368636e+000
        .double  7.3937873976090618e-001
        .double  9.1195095391666825e-001
        .double  1.0965501990048661e+000
        .double  2.0085011529215344e+000
        .double  7.4551466291241586e-001
        .double  9.2325323098154477e-001
        .double  1.0831264559311240e+000
        .double  2.0063796869126689e+000
        .double  7.5165058606392221e-001
        .double  9.3468429428306077e-001
        .double  1.0698799649426429e+000
        .double  2.0045642592257038e+000
        .double  7.5778650921651458e-001
        .double  9.4624723331715210e-001
        .double  1.0568062603410875e+000
        .double  2.0030534936582396e+000
        .double  7.6392243236715107e-001
        .double  9.5794522936478299e-001
        .double  1.0439010178724974e+000
        .double  2.0018462472372804e+000
        .double  7.7005835551860857e-001
        .double  9.6978155905284857e-001
        .double  1.0311600490492567e+000
        .double  2.0009416081021052e+000
        .double  7.7619427867019419e-001
        .double  9.8175959804234592e-001
        .double  1.0185792957807858e+000
        .double  2.0003388938231317e+000
        .double  7.8233020182167123e-001
        .double  9.9388282491414059e-001
        .double  1.0061548252294106e+000
        .double  2.0000376501435513e+000

//
// End of table.
//