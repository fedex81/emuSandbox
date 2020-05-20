0400 -- 0038                        ld    a, ext0
0401 -- B802                        and   a, 0x02
0402 -- 4D50 0400                   bra   z, 0x0400
0404 -- B800                        and   a, 0x00
0405 -- 001B                        ld    x, ext3
0406 -- 0031                        ld    a, x
0407 -- 6800 4F48                   cmp   a, 0x4f48
0409 -- 4D50 0411                   bra   z, 0x0411
040b -- 6800 5254                   cmp   a, 0x5254
040d -- 4D50 C004                   bra   z, 0xc004
040f -- 4C00 0461                   bra   0x0461
0411 -- 1800                        ld    r0, 0x00
0412 -- 1C00                        ld    r4, 0x00
0413 -- 0810 0000                   ld    x, 0x0000
0415 -- 0830 00FF                   ld    a, 0x00ff
0417 -- 0414                        ld    (r0+!), x
0418 -- 0514                        ld    (r4+!), x
0419 -- 3801                        sub   a, 0x01
041a -- 4C70 0417                   bra   ns, 0x0417
041c -- 1CF0                        ld    r4, 0xf0
041d -- 0D04 01C0                   ld    (r4+!), 0x01c0
041f -- 0D04 0000                   ld    (r4+!), 0x0000
0421 -- 0D04 2845                   ld    (r4+!), 0x2845
0423 -- 0D04 5845                   ld    (r4+!), 0x5845
0425 -- 08E0 7F04                   ld    ext6, 0x7f04
0427 -- 08E0 0018                   ld    ext6, 0x0018
0429 -- 000C                        ld    -, ext4
042a -- 003C                        ld    a, ext4
042b -- A000                        and   a, -
042c -- 4D50 0435                   bra   z, 0x0435
042e -- 08E0 7F04                   ld    ext6, 0x7f04
0430 -- 08E0 0018                   ld    ext6, 0x0018
0432 -- 00C0                        ld    ext4, -
0433 -- 08C0 0000                   ld    ext4, 0x0000
0435 -- 8800 0438                   add   a, 0x0438
0437 -- 4A60                        bra   (a)
0438 -- 0425
0439 -- 0448
043a -- 088A
043b -- 0959
043c -- 0C6F
043d -- 0EE5
043e -- 0AEE
043f -- 0BA2
0440 -- 0BC9
0441 -- 10E8
0442 -- 0A3A
0443 -- 0AC1
0444 -- 1158
0445 -- 0425
0446 -- 0425
0447 -- 0425
0448 -- 4800 2784                   call  0x2784
044a -- 4800 2794                   call  0x2794
044c -- 4C00 0425                   bra   0x0425
044e -- B800                        and   a, 0x00
044f -- 0810 0000                   ld    x, 0x0000
0451 -- 0820 03FF                   ld    y, 0x03ff
0453 -- 0C03 FC00                   ld    (r3|00), 0xfc00
0455 -- 0031                        ld    a, x
0456 -- 8A03                        add   a, ((r3|00)+!)
0457 -- 0013                        ld    x, a
0458 -- 0032                        ld    a, y
0459 -- 3801                        sub   a, 0x01
045a -- 0023                        ld    y, a
045b -- 4C70 0455                   bra   ns, 0x0455
045d -- 0031                        ld    a, x
045e -- 9006                        neg   a
045f -- 4C00 045F                   bra   0x045f
0461 -- 0C03 7FC0                   ld    (r3|00), 0x7fc0
0463 -- 0C07 0000                   ld    (r3|01), 0x0000
0465 -- 4800 279C                   call  0x279c
0467 -- 4800 2831                   call  0x2831
0469 -- 4C00 0469                   bra   0x0469
046b -- 0C03 7FC0                   ld    (r3|00), 0x7fc0
046d -- 0C07 000A                   ld    (r3|01), 0x000a
046f -- 4800 279C                   call  0x279c
0471 -- 00C4                        ld    ext4, st
0472 -- 4800 2831                   call  0x2831
0474 -- 4C00 0474                   bra   0x0474
0476 -- 0C03 7FC0                   ld    (r3|00), 0x7fc0
0478 -- 0C07 000B                   ld    (r3|01), 0x000b
047a -- 4800 279C                   call  0x279c
047c -- 13C2                        ld    ext4, r6
047d -- 4800 2831                   call  0x2831
047f -- 4C00 047F                   bra   0x047f
0481 -- 0BE3                        ld    ext6, ((r7|00)+!)
0482 -- 08E0 081C                   ld    ext6, 0x081c
0484 -- 00C0                        ld    ext4, -
0485 -- 0830 0888                   ld    a, 0x0888
0487 -- 2B03                        sub   a, ((r7|00)+!)
0488 -- 0063                        bra   a
0489 -- 0BC3                        ld    ext4, ((r7|00)+!)
048a -- 0BC3                        ld    ext4, ((r7|00)+!)
048b -- 0BC3                        ld    ext4, ((r7|00)+!)
048c -- 0BC3                        ld    ext4, ((r7|00)+!)
048d -- 0BC3                        ld    ext4, ((r7|00)+!)
048e -- 0BC3                        ld    ext4, ((r7|00)+!)
048f -- 0BC3                        ld    ext4, ((r7|00)+!)
0490 -- 0BC3                        ld    ext4, ((r7|00)+!)
0491 -- 0BC3                        ld    ext4, ((r7|00)+!)
0492 -- 0BC3                        ld    ext4, ((r7|00)+!)
0493 -- 0BC3                        ld    ext4, ((r7|00)+!)
0494 -- 0BC3                        ld    ext4, ((r7|00)+!)
0495 -- 0BC3                        ld    ext4, ((r7|00)+!)
0496 -- 0BC3                        ld    ext4, ((r7|00)+!)
0497 -- 0BC3                        ld    ext4, ((r7|00)+!)
0498 -- 0BC3                        ld    ext4, ((r7|00)+!)
0499 -- 0BC3                        ld    ext4, ((r7|00)+!)
049a -- 0BC3                        ld    ext4, ((r7|00)+!)
049b -- 0BC3                        ld    ext4, ((r7|00)+!)
049c -- 0BC3                        ld    ext4, ((r7|00)+!)
049d -- 0BC3                        ld    ext4, ((r7|00)+!)
049e -- 0BC3                        ld    ext4, ((r7|00)+!)
049f -- 0BC3                        ld    ext4, ((r7|00)+!)
04a0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04a9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04aa -- 0BC3                        ld    ext4, ((r7|00)+!)
04ab -- 0BC3                        ld    ext4, ((r7|00)+!)
04ac -- 0BC3                        ld    ext4, ((r7|00)+!)
04ad -- 0BC3                        ld    ext4, ((r7|00)+!)
04ae -- 0BC3                        ld    ext4, ((r7|00)+!)
04af -- 0BC3                        ld    ext4, ((r7|00)+!)
04b0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04b9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04ba -- 0BC3                        ld    ext4, ((r7|00)+!)
04bb -- 0BC3                        ld    ext4, ((r7|00)+!)
04bc -- 0BC3                        ld    ext4, ((r7|00)+!)
04bd -- 0BC3                        ld    ext4, ((r7|00)+!)
04be -- 0BC3                        ld    ext4, ((r7|00)+!)
04bf -- 0BC3                        ld    ext4, ((r7|00)+!)
04c0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04c9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04ca -- 0BC3                        ld    ext4, ((r7|00)+!)
04cb -- 0BC3                        ld    ext4, ((r7|00)+!)
04cc -- 0BC3                        ld    ext4, ((r7|00)+!)
04cd -- 0BC3                        ld    ext4, ((r7|00)+!)
04ce -- 0BC3                        ld    ext4, ((r7|00)+!)
04cf -- 0BC3                        ld    ext4, ((r7|00)+!)
04d0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04d9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04da -- 0BC3                        ld    ext4, ((r7|00)+!)
04db -- 0BC3                        ld    ext4, ((r7|00)+!)
04dc -- 0BC3                        ld    ext4, ((r7|00)+!)
04dd -- 0BC3                        ld    ext4, ((r7|00)+!)
04de -- 0BC3                        ld    ext4, ((r7|00)+!)
04df -- 0BC3                        ld    ext4, ((r7|00)+!)
04e0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04e9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04ea -- 0BC3                        ld    ext4, ((r7|00)+!)
04eb -- 0BC3                        ld    ext4, ((r7|00)+!)
04ec -- 0BC3                        ld    ext4, ((r7|00)+!)
04ed -- 0BC3                        ld    ext4, ((r7|00)+!)
04ee -- 0BC3                        ld    ext4, ((r7|00)+!)
04ef -- 0BC3                        ld    ext4, ((r7|00)+!)
04f0 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f1 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f2 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f3 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f4 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f5 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f6 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f7 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f8 -- 0BC3                        ld    ext4, ((r7|00)+!)
04f9 -- 0BC3                        ld    ext4, ((r7|00)+!)
04fa -- 0BC3                        ld    ext4, ((r7|00)+!)
04fb -- 0BC3                        ld    ext4, ((r7|00)+!)
04fc -- 0BC3                        ld    ext4, ((r7|00)+!)
04fd -- 0BC3                        ld    ext4, ((r7|00)+!)
04fe -- 0BC3                        ld    ext4, ((r7|00)+!)
04ff -- 0BC3                        ld    ext4, ((r7|00)+!)
0500 -- 0BC3                        ld    ext4, ((r7|00)+!)
0501 -- 0BC3                        ld    ext4, ((r7|00)+!)
0502 -- 0BC3                        ld    ext4, ((r7|00)+!)
0503 -- 0BC3                        ld    ext4, ((r7|00)+!)
0504 -- 0BC3                        ld    ext4, ((r7|00)+!)
0505 -- 0BC3                        ld    ext4, ((r7|00)+!)
0506 -- 0BC3                        ld    ext4, ((r7|00)+!)
0507 -- 0BC3                        ld    ext4, ((r7|00)+!)
0508 -- 0BC3                        ld    ext4, ((r7|00)+!)
0509 -- 0BC3                        ld    ext4, ((r7|00)+!)
050a -- 0BC3                        ld    ext4, ((r7|00)+!)
050b -- 0BC3                        ld    ext4, ((r7|00)+!)
050c -- 0BC3                        ld    ext4, ((r7|00)+!)
050d -- 0BC3                        ld    ext4, ((r7|00)+!)
050e -- 0BC3                        ld    ext4, ((r7|00)+!)
050f -- 0BC3                        ld    ext4, ((r7|00)+!)
0510 -- 0BC3                        ld    ext4, ((r7|00)+!)
0511 -- 0BC3                        ld    ext4, ((r7|00)+!)
0512 -- 0BC3                        ld    ext4, ((r7|00)+!)
0513 -- 0BC3                        ld    ext4, ((r7|00)+!)
0514 -- 0BC3                        ld    ext4, ((r7|00)+!)
0515 -- 0BC3                        ld    ext4, ((r7|00)+!)
0516 -- 0BC3                        ld    ext4, ((r7|00)+!)
0517 -- 0BC3                        ld    ext4, ((r7|00)+!)
0518 -- 0BC3                        ld    ext4, ((r7|00)+!)
0519 -- 0BC3                        ld    ext4, ((r7|00)+!)
051a -- 0BC3                        ld    ext4, ((r7|00)+!)
051b -- 0BC3                        ld    ext4, ((r7|00)+!)
051c -- 0BC3                        ld    ext4, ((r7|00)+!)
051d -- 0BC3                        ld    ext4, ((r7|00)+!)
051e -- 0BC3                        ld    ext4, ((r7|00)+!)
051f -- 0BC3                        ld    ext4, ((r7|00)+!)
0520 -- 0BC3                        ld    ext4, ((r7|00)+!)
0521 -- 0BC3                        ld    ext4, ((r7|00)+!)
0522 -- 0BC3                        ld    ext4, ((r7|00)+!)
0523 -- 0BC3                        ld    ext4, ((r7|00)+!)
0524 -- 0BC3                        ld    ext4, ((r7|00)+!)
0525 -- 0BC3                        ld    ext4, ((r7|00)+!)
0526 -- 0BC3                        ld    ext4, ((r7|00)+!)
0527 -- 0BC3                        ld    ext4, ((r7|00)+!)
0528 -- 0BC3                        ld    ext4, ((r7|00)+!)
0529 -- 0BC3                        ld    ext4, ((r7|00)+!)
052a -- 0BC3                        ld    ext4, ((r7|00)+!)
052b -- 0BC3                        ld    ext4, ((r7|00)+!)
052c -- 0BC3                        ld    ext4, ((r7|00)+!)
052d -- 0BC3                        ld    ext4, ((r7|00)+!)
052e -- 0BC3                        ld    ext4, ((r7|00)+!)
052f -- 0BC3                        ld    ext4, ((r7|00)+!)
0530 -- 0BC3                        ld    ext4, ((r7|00)+!)
0531 -- 0BC3                        ld    ext4, ((r7|00)+!)
0532 -- 0BC3                        ld    ext4, ((r7|00)+!)
0533 -- 0BC3                        ld    ext4, ((r7|00)+!)
0534 -- 0BC3                        ld    ext4, ((r7|00)+!)
0535 -- 0BC3                        ld    ext4, ((r7|00)+!)
0536 -- 0BC3                        ld    ext4, ((r7|00)+!)
0537 -- 0BC3                        ld    ext4, ((r7|00)+!)
0538 -- 0BC3                        ld    ext4, ((r7|00)+!)
0539 -- 0BC3                        ld    ext4, ((r7|00)+!)
053a -- 0BC3                        ld    ext4, ((r7|00)+!)
053b -- 0BC3                        ld    ext4, ((r7|00)+!)
053c -- 0BC3                        ld    ext4, ((r7|00)+!)
053d -- 0BC3                        ld    ext4, ((r7|00)+!)
053e -- 0BC3                        ld    ext4, ((r7|00)+!)
053f -- 0BC3                        ld    ext4, ((r7|00)+!)
0540 -- 0BC3                        ld    ext4, ((r7|00)+!)
0541 -- 0BC3                        ld    ext4, ((r7|00)+!)
0542 -- 0BC3                        ld    ext4, ((r7|00)+!)
0543 -- 0BC3                        ld    ext4, ((r7|00)+!)
0544 -- 0BC3                        ld    ext4, ((r7|00)+!)
0545 -- 0BC3                        ld    ext4, ((r7|00)+!)
0546 -- 0BC3                        ld    ext4, ((r7|00)+!)
0547 -- 0BC3                        ld    ext4, ((r7|00)+!)
0548 -- 0BC3                        ld    ext4, ((r7|00)+!)
0549 -- 0BC3                        ld    ext4, ((r7|00)+!)
054a -- 0BC3                        ld    ext4, ((r7|00)+!)
054b -- 0BC3                        ld    ext4, ((r7|00)+!)
054c -- 0BC3                        ld    ext4, ((r7|00)+!)
054d -- 0BC3                        ld    ext4, ((r7|00)+!)
054e -- 0BC3                        ld    ext4, ((r7|00)+!)
054f -- 0BC3                        ld    ext4, ((r7|00)+!)
0550 -- 0BC3                        ld    ext4, ((r7|00)+!)
0551 -- 0BC3                        ld    ext4, ((r7|00)+!)
0552 -- 0BC3                        ld    ext4, ((r7|00)+!)
0553 -- 0BC3                        ld    ext4, ((r7|00)+!)
0554 -- 0BC3                        ld    ext4, ((r7|00)+!)
0555 -- 0BC3                        ld    ext4, ((r7|00)+!)
0556 -- 0BC3                        ld    ext4, ((r7|00)+!)
0557 -- 0BC3                        ld    ext4, ((r7|00)+!)
0558 -- 0BC3                        ld    ext4, ((r7|00)+!)
0559 -- 0BC3                        ld    ext4, ((r7|00)+!)
055a -- 0BC3                        ld    ext4, ((r7|00)+!)
055b -- 0BC3                        ld    ext4, ((r7|00)+!)
055c -- 0BC3                        ld    ext4, ((r7|00)+!)
055d -- 0BC3                        ld    ext4, ((r7|00)+!)
055e -- 0BC3                        ld    ext4, ((r7|00)+!)
055f -- 0BC3                        ld    ext4, ((r7|00)+!)
0560 -- 0BC3                        ld    ext4, ((r7|00)+!)
0561 -- 0BC3                        ld    ext4, ((r7|00)+!)
0562 -- 0BC3                        ld    ext4, ((r7|00)+!)
0563 -- 0BC3                        ld    ext4, ((r7|00)+!)
0564 -- 0BC3                        ld    ext4, ((r7|00)+!)
0565 -- 0BC3                        ld    ext4, ((r7|00)+!)
0566 -- 0BC3                        ld    ext4, ((r7|00)+!)
0567 -- 0BC3                        ld    ext4, ((r7|00)+!)
0568 -- 0BC3                        ld    ext4, ((r7|00)+!)
0569 -- 0BC3                        ld    ext4, ((r7|00)+!)
056a -- 0BC3                        ld    ext4, ((r7|00)+!)
056b -- 0BC3                        ld    ext4, ((r7|00)+!)
056c -- 0BC3                        ld    ext4, ((r7|00)+!)
056d -- 0BC3                        ld    ext4, ((r7|00)+!)
056e -- 0BC3                        ld    ext4, ((r7|00)+!)
056f -- 0BC3                        ld    ext4, ((r7|00)+!)
0570 -- 0BC3                        ld    ext4, ((r7|00)+!)
0571 -- 0BC3                        ld    ext4, ((r7|00)+!)
0572 -- 0BC3                        ld    ext4, ((r7|00)+!)
0573 -- 0BC3                        ld    ext4, ((r7|00)+!)
0574 -- 0BC3                        ld    ext4, ((r7|00)+!)
0575 -- 0BC3                        ld    ext4, ((r7|00)+!)
0576 -- 0BC3                        ld    ext4, ((r7|00)+!)
0577 -- 0BC3                        ld    ext4, ((r7|00)+!)
0578 -- 0BC3                        ld    ext4, ((r7|00)+!)
0579 -- 0BC3                        ld    ext4, ((r7|00)+!)
057a -- 0BC3                        ld    ext4, ((r7|00)+!)
057b -- 0BC3                        ld    ext4, ((r7|00)+!)
057c -- 0BC3                        ld    ext4, ((r7|00)+!)
057d -- 0BC3                        ld    ext4, ((r7|00)+!)
057e -- 0BC3                        ld    ext4, ((r7|00)+!)
057f -- 0BC3                        ld    ext4, ((r7|00)+!)
0580 -- 0BC3                        ld    ext4, ((r7|00)+!)
0581 -- 0BC3                        ld    ext4, ((r7|00)+!)
0582 -- 0BC3                        ld    ext4, ((r7|00)+!)
0583 -- 0BC3                        ld    ext4, ((r7|00)+!)
0584 -- 0BC3                        ld    ext4, ((r7|00)+!)
0585 -- 0BC3                        ld    ext4, ((r7|00)+!)
0586 -- 0BC3                        ld    ext4, ((r7|00)+!)
0587 -- 0BC3                        ld    ext4, ((r7|00)+!)
0588 -- 0BC3                        ld    ext4, ((r7|00)+!)
0589 -- 0BC3                        ld    ext4, ((r7|00)+!)
058a -- 0BC3                        ld    ext4, ((r7|00)+!)
058b -- 0BC3                        ld    ext4, ((r7|00)+!)
058c -- 0BC3                        ld    ext4, ((r7|00)+!)
058d -- 0BC3                        ld    ext4, ((r7|00)+!)
058e -- 0BC3                        ld    ext4, ((r7|00)+!)
058f -- 0BC3                        ld    ext4, ((r7|00)+!)
0590 -- 0BC3                        ld    ext4, ((r7|00)+!)
0591 -- 0BC3                        ld    ext4, ((r7|00)+!)
0592 -- 0BC3                        ld    ext4, ((r7|00)+!)
0593 -- 0BC3                        ld    ext4, ((r7|00)+!)
0594 -- 0BC3                        ld    ext4, ((r7|00)+!)
0595 -- 0BC3                        ld    ext4, ((r7|00)+!)
0596 -- 0BC3                        ld    ext4, ((r7|00)+!)
0597 -- 0BC3                        ld    ext4, ((r7|00)+!)
0598 -- 0BC3                        ld    ext4, ((r7|00)+!)
0599 -- 0BC3                        ld    ext4, ((r7|00)+!)
059a -- 0BC3                        ld    ext4, ((r7|00)+!)
059b -- 0BC3                        ld    ext4, ((r7|00)+!)
059c -- 0BC3                        ld    ext4, ((r7|00)+!)
059d -- 0BC3                        ld    ext4, ((r7|00)+!)
059e -- 0BC3                        ld    ext4, ((r7|00)+!)
059f -- 0BC3                        ld    ext4, ((r7|00)+!)
05a0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05a9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05aa -- 0BC3                        ld    ext4, ((r7|00)+!)
05ab -- 0BC3                        ld    ext4, ((r7|00)+!)
05ac -- 0BC3                        ld    ext4, ((r7|00)+!)
05ad -- 0BC3                        ld    ext4, ((r7|00)+!)
05ae -- 0BC3                        ld    ext4, ((r7|00)+!)
05af -- 0BC3                        ld    ext4, ((r7|00)+!)
05b0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05b9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05ba -- 0BC3                        ld    ext4, ((r7|00)+!)
05bb -- 0BC3                        ld    ext4, ((r7|00)+!)
05bc -- 0BC3                        ld    ext4, ((r7|00)+!)
05bd -- 0BC3                        ld    ext4, ((r7|00)+!)
05be -- 0BC3                        ld    ext4, ((r7|00)+!)
05bf -- 0BC3                        ld    ext4, ((r7|00)+!)
05c0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05c9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05ca -- 0BC3                        ld    ext4, ((r7|00)+!)
05cb -- 0BC3                        ld    ext4, ((r7|00)+!)
05cc -- 0BC3                        ld    ext4, ((r7|00)+!)
05cd -- 0BC3                        ld    ext4, ((r7|00)+!)
05ce -- 0BC3                        ld    ext4, ((r7|00)+!)
05cf -- 0BC3                        ld    ext4, ((r7|00)+!)
05d0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05d9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05da -- 0BC3                        ld    ext4, ((r7|00)+!)
05db -- 0BC3                        ld    ext4, ((r7|00)+!)
05dc -- 0BC3                        ld    ext4, ((r7|00)+!)
05dd -- 0BC3                        ld    ext4, ((r7|00)+!)
05de -- 0BC3                        ld    ext4, ((r7|00)+!)
05df -- 0BC3                        ld    ext4, ((r7|00)+!)
05e0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05e9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05ea -- 0BC3                        ld    ext4, ((r7|00)+!)
05eb -- 0BC3                        ld    ext4, ((r7|00)+!)
05ec -- 0BC3                        ld    ext4, ((r7|00)+!)
05ed -- 0BC3                        ld    ext4, ((r7|00)+!)
05ee -- 0BC3                        ld    ext4, ((r7|00)+!)
05ef -- 0BC3                        ld    ext4, ((r7|00)+!)
05f0 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f1 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f2 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f3 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f4 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f5 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f6 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f7 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f8 -- 0BC3                        ld    ext4, ((r7|00)+!)
05f9 -- 0BC3                        ld    ext4, ((r7|00)+!)
05fa -- 0BC3                        ld    ext4, ((r7|00)+!)
05fb -- 0BC3                        ld    ext4, ((r7|00)+!)
05fc -- 0BC3                        ld    ext4, ((r7|00)+!)
05fd -- 0BC3                        ld    ext4, ((r7|00)+!)
05fe -- 0BC3                        ld    ext4, ((r7|00)+!)
05ff -- 0BC3                        ld    ext4, ((r7|00)+!)
0600 -- 0BC3                        ld    ext4, ((r7|00)+!)
0601 -- 0BC3                        ld    ext4, ((r7|00)+!)
0602 -- 0BC3                        ld    ext4, ((r7|00)+!)
0603 -- 0BC3                        ld    ext4, ((r7|00)+!)
0604 -- 0BC3                        ld    ext4, ((r7|00)+!)
0605 -- 0BC3                        ld    ext4, ((r7|00)+!)
0606 -- 0BC3                        ld    ext4, ((r7|00)+!)
0607 -- 0BC3                        ld    ext4, ((r7|00)+!)
0608 -- 0BC3                        ld    ext4, ((r7|00)+!)
0609 -- 0BC3                        ld    ext4, ((r7|00)+!)
060a -- 0BC3                        ld    ext4, ((r7|00)+!)
060b -- 0BC3                        ld    ext4, ((r7|00)+!)
060c -- 0BC3                        ld    ext4, ((r7|00)+!)
060d -- 0BC3                        ld    ext4, ((r7|00)+!)
060e -- 0BC3                        ld    ext4, ((r7|00)+!)
060f -- 0BC3                        ld    ext4, ((r7|00)+!)
0610 -- 0BC3                        ld    ext4, ((r7|00)+!)
0611 -- 0BC3                        ld    ext4, ((r7|00)+!)
0612 -- 0BC3                        ld    ext4, ((r7|00)+!)
0613 -- 0BC3                        ld    ext4, ((r7|00)+!)
0614 -- 0BC3                        ld    ext4, ((r7|00)+!)
0615 -- 0BC3                        ld    ext4, ((r7|00)+!)
0616 -- 0BC3                        ld    ext4, ((r7|00)+!)
0617 -- 0BC3                        ld    ext4, ((r7|00)+!)
0618 -- 0BC3                        ld    ext4, ((r7|00)+!)
0619 -- 0BC3                        ld    ext4, ((r7|00)+!)
061a -- 0BC3                        ld    ext4, ((r7|00)+!)
061b -- 0BC3                        ld    ext4, ((r7|00)+!)
061c -- 0BC3                        ld    ext4, ((r7|00)+!)
061d -- 0BC3                        ld    ext4, ((r7|00)+!)
061e -- 0BC3                        ld    ext4, ((r7|00)+!)
061f -- 0BC3                        ld    ext4, ((r7|00)+!)
0620 -- 0BC3                        ld    ext4, ((r7|00)+!)
0621 -- 0BC3                        ld    ext4, ((r7|00)+!)
0622 -- 0BC3                        ld    ext4, ((r7|00)+!)
0623 -- 0BC3                        ld    ext4, ((r7|00)+!)
0624 -- 0BC3                        ld    ext4, ((r7|00)+!)
0625 -- 0BC3                        ld    ext4, ((r7|00)+!)
0626 -- 0BC3                        ld    ext4, ((r7|00)+!)
0627 -- 0BC3                        ld    ext4, ((r7|00)+!)
0628 -- 0BC3                        ld    ext4, ((r7|00)+!)
0629 -- 0BC3                        ld    ext4, ((r7|00)+!)
062a -- 0BC3                        ld    ext4, ((r7|00)+!)
062b -- 0BC3                        ld    ext4, ((r7|00)+!)
062c -- 0BC3                        ld    ext4, ((r7|00)+!)
062d -- 0BC3                        ld    ext4, ((r7|00)+!)
062e -- 0BC3                        ld    ext4, ((r7|00)+!)
062f -- 0BC3                        ld    ext4, ((r7|00)+!)
0630 -- 0BC3                        ld    ext4, ((r7|00)+!)
0631 -- 0BC3                        ld    ext4, ((r7|00)+!)
0632 -- 0BC3                        ld    ext4, ((r7|00)+!)
0633 -- 0BC3                        ld    ext4, ((r7|00)+!)
0634 -- 0BC3                        ld    ext4, ((r7|00)+!)
0635 -- 0BC3                        ld    ext4, ((r7|00)+!)
0636 -- 0BC3                        ld    ext4, ((r7|00)+!)
0637 -- 0BC3                        ld    ext4, ((r7|00)+!)
0638 -- 0BC3                        ld    ext4, ((r7|00)+!)
0639 -- 0BC3                        ld    ext4, ((r7|00)+!)
063a -- 0BC3                        ld    ext4, ((r7|00)+!)
063b -- 0BC3                        ld    ext4, ((r7|00)+!)
063c -- 0BC3                        ld    ext4, ((r7|00)+!)
063d -- 0BC3                        ld    ext4, ((r7|00)+!)
063e -- 0BC3                        ld    ext4, ((r7|00)+!)
063f -- 0BC3                        ld    ext4, ((r7|00)+!)
0640 -- 0BC3                        ld    ext4, ((r7|00)+!)
0641 -- 0BC3                        ld    ext4, ((r7|00)+!)
0642 -- 0BC3                        ld    ext4, ((r7|00)+!)
0643 -- 0BC3                        ld    ext4, ((r7|00)+!)
0644 -- 0BC3                        ld    ext4, ((r7|00)+!)
0645 -- 0BC3                        ld    ext4, ((r7|00)+!)
0646 -- 0BC3                        ld    ext4, ((r7|00)+!)
0647 -- 0BC3                        ld    ext4, ((r7|00)+!)
0648 -- 0BC3                        ld    ext4, ((r7|00)+!)
0649 -- 0BC3                        ld    ext4, ((r7|00)+!)
064a -- 0BC3                        ld    ext4, ((r7|00)+!)
064b -- 0BC3                        ld    ext4, ((r7|00)+!)
064c -- 0BC3                        ld    ext4, ((r7|00)+!)
064d -- 0BC3                        ld    ext4, ((r7|00)+!)
064e -- 0BC3                        ld    ext4, ((r7|00)+!)
064f -- 0BC3                        ld    ext4, ((r7|00)+!)
0650 -- 0BC3                        ld    ext4, ((r7|00)+!)
0651 -- 0BC3                        ld    ext4, ((r7|00)+!)
0652 -- 0BC3                        ld    ext4, ((r7|00)+!)
0653 -- 0BC3                        ld    ext4, ((r7|00)+!)
0654 -- 0BC3                        ld    ext4, ((r7|00)+!)
0655 -- 0BC3                        ld    ext4, ((r7|00)+!)
0656 -- 0BC3                        ld    ext4, ((r7|00)+!)
0657 -- 0BC3                        ld    ext4, ((r7|00)+!)
0658 -- 0BC3                        ld    ext4, ((r7|00)+!)
0659 -- 0BC3                        ld    ext4, ((r7|00)+!)
065a -- 0BC3                        ld    ext4, ((r7|00)+!)
065b -- 0BC3                        ld    ext4, ((r7|00)+!)
065c -- 0BC3                        ld    ext4, ((r7|00)+!)
065d -- 0BC3                        ld    ext4, ((r7|00)+!)
065e -- 0BC3                        ld    ext4, ((r7|00)+!)
065f -- 0BC3                        ld    ext4, ((r7|00)+!)
0660 -- 0BC3                        ld    ext4, ((r7|00)+!)
0661 -- 0BC3                        ld    ext4, ((r7|00)+!)
0662 -- 0BC3                        ld    ext4, ((r7|00)+!)
0663 -- 0BC3                        ld    ext4, ((r7|00)+!)
0664 -- 0BC3                        ld    ext4, ((r7|00)+!)
0665 -- 0BC3                        ld    ext4, ((r7|00)+!)
0666 -- 0BC3                        ld    ext4, ((r7|00)+!)
0667 -- 0BC3                        ld    ext4, ((r7|00)+!)
0668 -- 0BC3                        ld    ext4, ((r7|00)+!)
0669 -- 0BC3                        ld    ext4, ((r7|00)+!)
066a -- 0BC3                        ld    ext4, ((r7|00)+!)
066b -- 0BC3                        ld    ext4, ((r7|00)+!)
066c -- 0BC3                        ld    ext4, ((r7|00)+!)
066d -- 0BC3                        ld    ext4, ((r7|00)+!)
066e -- 0BC3                        ld    ext4, ((r7|00)+!)
066f -- 0BC3                        ld    ext4, ((r7|00)+!)
0670 -- 0BC3                        ld    ext4, ((r7|00)+!)
0671 -- 0BC3                        ld    ext4, ((r7|00)+!)
0672 -- 0BC3                        ld    ext4, ((r7|00)+!)
0673 -- 0BC3                        ld    ext4, ((r7|00)+!)
0674 -- 0BC3                        ld    ext4, ((r7|00)+!)
0675 -- 0BC3                        ld    ext4, ((r7|00)+!)
0676 -- 0BC3                        ld    ext4, ((r7|00)+!)
0677 -- 0BC3                        ld    ext4, ((r7|00)+!)
0678 -- 0BC3                        ld    ext4, ((r7|00)+!)
0679 -- 0BC3                        ld    ext4, ((r7|00)+!)
067a -- 0BC3                        ld    ext4, ((r7|00)+!)
067b -- 0BC3                        ld    ext4, ((r7|00)+!)
067c -- 0BC3                        ld    ext4, ((r7|00)+!)
067d -- 0BC3                        ld    ext4, ((r7|00)+!)
067e -- 0BC3                        ld    ext4, ((r7|00)+!)
067f -- 0BC3                        ld    ext4, ((r7|00)+!)
0680 -- 0BC3                        ld    ext4, ((r7|00)+!)
0681 -- 0BC3                        ld    ext4, ((r7|00)+!)
0682 -- 0BC3                        ld    ext4, ((r7|00)+!)
0683 -- 0BC3                        ld    ext4, ((r7|00)+!)
0684 -- 0BC3                        ld    ext4, ((r7|00)+!)
0685 -- 0BC3                        ld    ext4, ((r7|00)+!)
0686 -- 0BC3                        ld    ext4, ((r7|00)+!)
0687 -- 0BC3                        ld    ext4, ((r7|00)+!)
0688 -- 0BC3                        ld    ext4, ((r7|00)+!)
0689 -- 0BC3                        ld    ext4, ((r7|00)+!)
068a -- 0BC3                        ld    ext4, ((r7|00)+!)
068b -- 0BC3                        ld    ext4, ((r7|00)+!)
068c -- 0BC3                        ld    ext4, ((r7|00)+!)
068d -- 0BC3                        ld    ext4, ((r7|00)+!)
068e -- 0BC3                        ld    ext4, ((r7|00)+!)
068f -- 0BC3                        ld    ext4, ((r7|00)+!)
0690 -- 0BC3                        ld    ext4, ((r7|00)+!)
0691 -- 0BC3                        ld    ext4, ((r7|00)+!)
0692 -- 0BC3                        ld    ext4, ((r7|00)+!)
0693 -- 0BC3                        ld    ext4, ((r7|00)+!)
0694 -- 0BC3                        ld    ext4, ((r7|00)+!)
0695 -- 0BC3                        ld    ext4, ((r7|00)+!)
0696 -- 0BC3                        ld    ext4, ((r7|00)+!)
0697 -- 0BC3                        ld    ext4, ((r7|00)+!)
0698 -- 0BC3                        ld    ext4, ((r7|00)+!)
0699 -- 0BC3                        ld    ext4, ((r7|00)+!)
069a -- 0BC3                        ld    ext4, ((r7|00)+!)
069b -- 0BC3                        ld    ext4, ((r7|00)+!)
069c -- 0BC3                        ld    ext4, ((r7|00)+!)
069d -- 0BC3                        ld    ext4, ((r7|00)+!)
069e -- 0BC3                        ld    ext4, ((r7|00)+!)
069f -- 0BC3                        ld    ext4, ((r7|00)+!)
06a0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06a9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06aa -- 0BC3                        ld    ext4, ((r7|00)+!)
06ab -- 0BC3                        ld    ext4, ((r7|00)+!)
06ac -- 0BC3                        ld    ext4, ((r7|00)+!)
06ad -- 0BC3                        ld    ext4, ((r7|00)+!)
06ae -- 0BC3                        ld    ext4, ((r7|00)+!)
06af -- 0BC3                        ld    ext4, ((r7|00)+!)
06b0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06b9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06ba -- 0BC3                        ld    ext4, ((r7|00)+!)
06bb -- 0BC3                        ld    ext4, ((r7|00)+!)
06bc -- 0BC3                        ld    ext4, ((r7|00)+!)
06bd -- 0BC3                        ld    ext4, ((r7|00)+!)
06be -- 0BC3                        ld    ext4, ((r7|00)+!)
06bf -- 0BC3                        ld    ext4, ((r7|00)+!)
06c0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06c9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06ca -- 0BC3                        ld    ext4, ((r7|00)+!)
06cb -- 0BC3                        ld    ext4, ((r7|00)+!)
06cc -- 0BC3                        ld    ext4, ((r7|00)+!)
06cd -- 0BC3                        ld    ext4, ((r7|00)+!)
06ce -- 0BC3                        ld    ext4, ((r7|00)+!)
06cf -- 0BC3                        ld    ext4, ((r7|00)+!)
06d0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06d9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06da -- 0BC3                        ld    ext4, ((r7|00)+!)
06db -- 0BC3                        ld    ext4, ((r7|00)+!)
06dc -- 0BC3                        ld    ext4, ((r7|00)+!)
06dd -- 0BC3                        ld    ext4, ((r7|00)+!)
06de -- 0BC3                        ld    ext4, ((r7|00)+!)
06df -- 0BC3                        ld    ext4, ((r7|00)+!)
06e0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06e9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06ea -- 0BC3                        ld    ext4, ((r7|00)+!)
06eb -- 0BC3                        ld    ext4, ((r7|00)+!)
06ec -- 0BC3                        ld    ext4, ((r7|00)+!)
06ed -- 0BC3                        ld    ext4, ((r7|00)+!)
06ee -- 0BC3                        ld    ext4, ((r7|00)+!)
06ef -- 0BC3                        ld    ext4, ((r7|00)+!)
06f0 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f1 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f2 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f3 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f4 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f5 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f6 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f7 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f8 -- 0BC3                        ld    ext4, ((r7|00)+!)
06f9 -- 0BC3                        ld    ext4, ((r7|00)+!)
06fa -- 0BC3                        ld    ext4, ((r7|00)+!)
06fb -- 0BC3                        ld    ext4, ((r7|00)+!)
06fc -- 0BC3                        ld    ext4, ((r7|00)+!)
06fd -- 0BC3                        ld    ext4, ((r7|00)+!)
06fe -- 0BC3                        ld    ext4, ((r7|00)+!)
06ff -- 0BC3                        ld    ext4, ((r7|00)+!)
0700 -- 0BC3                        ld    ext4, ((r7|00)+!)
0701 -- 0BC3                        ld    ext4, ((r7|00)+!)
0702 -- 0BC3                        ld    ext4, ((r7|00)+!)
0703 -- 0BC3                        ld    ext4, ((r7|00)+!)
0704 -- 0BC3                        ld    ext4, ((r7|00)+!)
0705 -- 0BC3                        ld    ext4, ((r7|00)+!)
0706 -- 0BC3                        ld    ext4, ((r7|00)+!)
0707 -- 0BC3                        ld    ext4, ((r7|00)+!)
0708 -- 0BC3                        ld    ext4, ((r7|00)+!)
0709 -- 0BC3                        ld    ext4, ((r7|00)+!)
070a -- 0BC3                        ld    ext4, ((r7|00)+!)
070b -- 0BC3                        ld    ext4, ((r7|00)+!)
070c -- 0BC3                        ld    ext4, ((r7|00)+!)
070d -- 0BC3                        ld    ext4, ((r7|00)+!)
070e -- 0BC3                        ld    ext4, ((r7|00)+!)
070f -- 0BC3                        ld    ext4, ((r7|00)+!)
0710 -- 0BC3                        ld    ext4, ((r7|00)+!)
0711 -- 0BC3                        ld    ext4, ((r7|00)+!)
0712 -- 0BC3                        ld    ext4, ((r7|00)+!)
0713 -- 0BC3                        ld    ext4, ((r7|00)+!)
0714 -- 0BC3                        ld    ext4, ((r7|00)+!)
0715 -- 0BC3                        ld    ext4, ((r7|00)+!)
0716 -- 0BC3                        ld    ext4, ((r7|00)+!)
0717 -- 0BC3                        ld    ext4, ((r7|00)+!)
0718 -- 0BC3                        ld    ext4, ((r7|00)+!)
0719 -- 0BC3                        ld    ext4, ((r7|00)+!)
071a -- 0BC3                        ld    ext4, ((r7|00)+!)
071b -- 0BC3                        ld    ext4, ((r7|00)+!)
071c -- 0BC3                        ld    ext4, ((r7|00)+!)
071d -- 0BC3                        ld    ext4, ((r7|00)+!)
071e -- 0BC3                        ld    ext4, ((r7|00)+!)
071f -- 0BC3                        ld    ext4, ((r7|00)+!)
0720 -- 0BC3                        ld    ext4, ((r7|00)+!)
0721 -- 0BC3                        ld    ext4, ((r7|00)+!)
0722 -- 0BC3                        ld    ext4, ((r7|00)+!)
0723 -- 0BC3                        ld    ext4, ((r7|00)+!)
0724 -- 0BC3                        ld    ext4, ((r7|00)+!)
0725 -- 0BC3                        ld    ext4, ((r7|00)+!)
0726 -- 0BC3                        ld    ext4, ((r7|00)+!)
0727 -- 0BC3                        ld    ext4, ((r7|00)+!)
0728 -- 0BC3                        ld    ext4, ((r7|00)+!)
0729 -- 0BC3                        ld    ext4, ((r7|00)+!)
072a -- 0BC3                        ld    ext4, ((r7|00)+!)
072b -- 0BC3                        ld    ext4, ((r7|00)+!)
072c -- 0BC3                        ld    ext4, ((r7|00)+!)
072d -- 0BC3                        ld    ext4, ((r7|00)+!)
072e -- 0BC3                        ld    ext4, ((r7|00)+!)
072f -- 0BC3                        ld    ext4, ((r7|00)+!)
0730 -- 0BC3                        ld    ext4, ((r7|00)+!)
0731 -- 0BC3                        ld    ext4, ((r7|00)+!)
0732 -- 0BC3                        ld    ext4, ((r7|00)+!)
0733 -- 0BC3                        ld    ext4, ((r7|00)+!)
0734 -- 0BC3                        ld    ext4, ((r7|00)+!)
0735 -- 0BC3                        ld    ext4, ((r7|00)+!)
0736 -- 0BC3                        ld    ext4, ((r7|00)+!)
0737 -- 0BC3                        ld    ext4, ((r7|00)+!)
0738 -- 0BC3                        ld    ext4, ((r7|00)+!)
0739 -- 0BC3                        ld    ext4, ((r7|00)+!)
073a -- 0BC3                        ld    ext4, ((r7|00)+!)
073b -- 0BC3                        ld    ext4, ((r7|00)+!)
073c -- 0BC3                        ld    ext4, ((r7|00)+!)
073d -- 0BC3                        ld    ext4, ((r7|00)+!)
073e -- 0BC3                        ld    ext4, ((r7|00)+!)
073f -- 0BC3                        ld    ext4, ((r7|00)+!)
0740 -- 0BC3                        ld    ext4, ((r7|00)+!)
0741 -- 0BC3                        ld    ext4, ((r7|00)+!)
0742 -- 0BC3                        ld    ext4, ((r7|00)+!)
0743 -- 0BC3                        ld    ext4, ((r7|00)+!)
0744 -- 0BC3                        ld    ext4, ((r7|00)+!)
0745 -- 0BC3                        ld    ext4, ((r7|00)+!)
0746 -- 0BC3                        ld    ext4, ((r7|00)+!)
0747 -- 0BC3                        ld    ext4, ((r7|00)+!)
0748 -- 0BC3                        ld    ext4, ((r7|00)+!)
0749 -- 0BC3                        ld    ext4, ((r7|00)+!)
074a -- 0BC3                        ld    ext4, ((r7|00)+!)
074b -- 0BC3                        ld    ext4, ((r7|00)+!)
074c -- 0BC3                        ld    ext4, ((r7|00)+!)
074d -- 0BC3                        ld    ext4, ((r7|00)+!)
074e -- 0BC3                        ld    ext4, ((r7|00)+!)
074f -- 0BC3                        ld    ext4, ((r7|00)+!)
0750 -- 0BC3                        ld    ext4, ((r7|00)+!)
0751 -- 0BC3                        ld    ext4, ((r7|00)+!)
0752 -- 0BC3                        ld    ext4, ((r7|00)+!)
0753 -- 0BC3                        ld    ext4, ((r7|00)+!)
0754 -- 0BC3                        ld    ext4, ((r7|00)+!)
0755 -- 0BC3                        ld    ext4, ((r7|00)+!)
0756 -- 0BC3                        ld    ext4, ((r7|00)+!)
0757 -- 0BC3                        ld    ext4, ((r7|00)+!)
0758 -- 0BC3                        ld    ext4, ((r7|00)+!)
0759 -- 0BC3                        ld    ext4, ((r7|00)+!)
075a -- 0BC3                        ld    ext4, ((r7|00)+!)
075b -- 0BC3                        ld    ext4, ((r7|00)+!)
075c -- 0BC3                        ld    ext4, ((r7|00)+!)
075d -- 0BC3                        ld    ext4, ((r7|00)+!)
075e -- 0BC3                        ld    ext4, ((r7|00)+!)
075f -- 0BC3                        ld    ext4, ((r7|00)+!)
0760 -- 0BC3                        ld    ext4, ((r7|00)+!)
0761 -- 0BC3                        ld    ext4, ((r7|00)+!)
0762 -- 0BC3                        ld    ext4, ((r7|00)+!)
0763 -- 0BC3                        ld    ext4, ((r7|00)+!)
0764 -- 0BC3                        ld    ext4, ((r7|00)+!)
0765 -- 0BC3                        ld    ext4, ((r7|00)+!)
0766 -- 0BC3                        ld    ext4, ((r7|00)+!)
0767 -- 0BC3                        ld    ext4, ((r7|00)+!)
0768 -- 0BC3                        ld    ext4, ((r7|00)+!)
0769 -- 0BC3                        ld    ext4, ((r7|00)+!)
076a -- 0BC3                        ld    ext4, ((r7|00)+!)
076b -- 0BC3                        ld    ext4, ((r7|00)+!)
076c -- 0BC3                        ld    ext4, ((r7|00)+!)
076d -- 0BC3                        ld    ext4, ((r7|00)+!)
076e -- 0BC3                        ld    ext4, ((r7|00)+!)
076f -- 0BC3                        ld    ext4, ((r7|00)+!)
0770 -- 0BC3                        ld    ext4, ((r7|00)+!)
0771 -- 0BC3                        ld    ext4, ((r7|00)+!)
0772 -- 0BC3                        ld    ext4, ((r7|00)+!)
0773 -- 0BC3                        ld    ext4, ((r7|00)+!)
0774 -- 0BC3                        ld    ext4, ((r7|00)+!)
0775 -- 0BC3                        ld    ext4, ((r7|00)+!)
0776 -- 0BC3                        ld    ext4, ((r7|00)+!)
0777 -- 0BC3                        ld    ext4, ((r7|00)+!)
0778 -- 0BC3                        ld    ext4, ((r7|00)+!)
0779 -- 0BC3                        ld    ext4, ((r7|00)+!)
077a -- 0BC3                        ld    ext4, ((r7|00)+!)
077b -- 0BC3                        ld    ext4, ((r7|00)+!)
077c -- 0BC3                        ld    ext4, ((r7|00)+!)
077d -- 0BC3                        ld    ext4, ((r7|00)+!)
077e -- 0BC3                        ld    ext4, ((r7|00)+!)
077f -- 0BC3                        ld    ext4, ((r7|00)+!)
0780 -- 0BC3                        ld    ext4, ((r7|00)+!)
0781 -- 0BC3                        ld    ext4, ((r7|00)+!)
0782 -- 0BC3                        ld    ext4, ((r7|00)+!)
0783 -- 0BC3                        ld    ext4, ((r7|00)+!)
0784 -- 0BC3                        ld    ext4, ((r7|00)+!)
0785 -- 0BC3                        ld    ext4, ((r7|00)+!)
0786 -- 0BC3                        ld    ext4, ((r7|00)+!)
0787 -- 0BC3                        ld    ext4, ((r7|00)+!)
0788 -- 0BC3                        ld    ext4, ((r7|00)+!)
0789 -- 0BC3                        ld    ext4, ((r7|00)+!)
078a -- 0BC3                        ld    ext4, ((r7|00)+!)
078b -- 0BC3                        ld    ext4, ((r7|00)+!)
078c -- 0BC3                        ld    ext4, ((r7|00)+!)
078d -- 0BC3                        ld    ext4, ((r7|00)+!)
078e -- 0BC3                        ld    ext4, ((r7|00)+!)
078f -- 0BC3                        ld    ext4, ((r7|00)+!)
0790 -- 0BC3                        ld    ext4, ((r7|00)+!)
0791 -- 0BC3                        ld    ext4, ((r7|00)+!)
0792 -- 0BC3                        ld    ext4, ((r7|00)+!)
0793 -- 0BC3                        ld    ext4, ((r7|00)+!)
0794 -- 0BC3                        ld    ext4, ((r7|00)+!)
0795 -- 0BC3                        ld    ext4, ((r7|00)+!)
0796 -- 0BC3                        ld    ext4, ((r7|00)+!)
0797 -- 0BC3                        ld    ext4, ((r7|00)+!)
0798 -- 0BC3                        ld    ext4, ((r7|00)+!)
0799 -- 0BC3                        ld    ext4, ((r7|00)+!)
079a -- 0BC3                        ld    ext4, ((r7|00)+!)
079b -- 0BC3                        ld    ext4, ((r7|00)+!)
079c -- 0BC3                        ld    ext4, ((r7|00)+!)
079d -- 0BC3                        ld    ext4, ((r7|00)+!)
079e -- 0BC3                        ld    ext4, ((r7|00)+!)
079f -- 0BC3                        ld    ext4, ((r7|00)+!)
07a0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07a9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07aa -- 0BC3                        ld    ext4, ((r7|00)+!)
07ab -- 0BC3                        ld    ext4, ((r7|00)+!)
07ac -- 0BC3                        ld    ext4, ((r7|00)+!)
07ad -- 0BC3                        ld    ext4, ((r7|00)+!)
07ae -- 0BC3                        ld    ext4, ((r7|00)+!)
07af -- 0BC3                        ld    ext4, ((r7|00)+!)
07b0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07b9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07ba -- 0BC3                        ld    ext4, ((r7|00)+!)
07bb -- 0BC3                        ld    ext4, ((r7|00)+!)
07bc -- 0BC3                        ld    ext4, ((r7|00)+!)
07bd -- 0BC3                        ld    ext4, ((r7|00)+!)
07be -- 0BC3                        ld    ext4, ((r7|00)+!)
07bf -- 0BC3                        ld    ext4, ((r7|00)+!)
07c0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07c9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07ca -- 0BC3                        ld    ext4, ((r7|00)+!)
07cb -- 0BC3                        ld    ext4, ((r7|00)+!)
07cc -- 0BC3                        ld    ext4, ((r7|00)+!)
07cd -- 0BC3                        ld    ext4, ((r7|00)+!)
07ce -- 0BC3                        ld    ext4, ((r7|00)+!)
07cf -- 0BC3                        ld    ext4, ((r7|00)+!)
07d0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07d9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07da -- 0BC3                        ld    ext4, ((r7|00)+!)
07db -- 0BC3                        ld    ext4, ((r7|00)+!)
07dc -- 0BC3                        ld    ext4, ((r7|00)+!)
07dd -- 0BC3                        ld    ext4, ((r7|00)+!)
07de -- 0BC3                        ld    ext4, ((r7|00)+!)
07df -- 0BC3                        ld    ext4, ((r7|00)+!)
07e0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07e9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07ea -- 0BC3                        ld    ext4, ((r7|00)+!)
07eb -- 0BC3                        ld    ext4, ((r7|00)+!)
07ec -- 0BC3                        ld    ext4, ((r7|00)+!)
07ed -- 0BC3                        ld    ext4, ((r7|00)+!)
07ee -- 0BC3                        ld    ext4, ((r7|00)+!)
07ef -- 0BC3                        ld    ext4, ((r7|00)+!)
07f0 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f1 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f2 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f3 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f4 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f5 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f6 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f7 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f8 -- 0BC3                        ld    ext4, ((r7|00)+!)
07f9 -- 0BC3                        ld    ext4, ((r7|00)+!)
07fa -- 0BC3                        ld    ext4, ((r7|00)+!)
07fb -- 0BC3                        ld    ext4, ((r7|00)+!)
07fc -- 0BC3                        ld    ext4, ((r7|00)+!)
07fd -- 0BC3                        ld    ext4, ((r7|00)+!)
07fe -- 0BC3                        ld    ext4, ((r7|00)+!)
07ff -- 0BC3                        ld    ext4, ((r7|00)+!)
0800 -- 0BC3                        ld    ext4, ((r7|00)+!)
0801 -- 0BC3                        ld    ext4, ((r7|00)+!)
0802 -- 0BC3                        ld    ext4, ((r7|00)+!)
0803 -- 0BC3                        ld    ext4, ((r7|00)+!)
0804 -- 0BC3                        ld    ext4, ((r7|00)+!)
0805 -- 0BC3                        ld    ext4, ((r7|00)+!)
0806 -- 0BC3                        ld    ext4, ((r7|00)+!)
0807 -- 0BC3                        ld    ext4, ((r7|00)+!)
0808 -- 0BC3                        ld    ext4, ((r7|00)+!)
0809 -- 0BC3                        ld    ext4, ((r7|00)+!)
080a -- 0BC3                        ld    ext4, ((r7|00)+!)
080b -- 0BC3                        ld    ext4, ((r7|00)+!)
080c -- 0BC3                        ld    ext4, ((r7|00)+!)
080d -- 0BC3                        ld    ext4, ((r7|00)+!)
080e -- 0BC3                        ld    ext4, ((r7|00)+!)
080f -- 0BC3                        ld    ext4, ((r7|00)+!)
0810 -- 0BC3                        ld    ext4, ((r7|00)+!)
0811 -- 0BC3                        ld    ext4, ((r7|00)+!)
0812 -- 0BC3                        ld    ext4, ((r7|00)+!)
0813 -- 0BC3                        ld    ext4, ((r7|00)+!)
0814 -- 0BC3                        ld    ext4, ((r7|00)+!)
0815 -- 0BC3                        ld    ext4, ((r7|00)+!)
0816 -- 0BC3                        ld    ext4, ((r7|00)+!)
0817 -- 0BC3                        ld    ext4, ((r7|00)+!)
0818 -- 0BC3                        ld    ext4, ((r7|00)+!)
0819 -- 0BC3                        ld    ext4, ((r7|00)+!)
081a -- 0BC3                        ld    ext4, ((r7|00)+!)
081b -- 0BC3                        ld    ext4, ((r7|00)+!)
081c -- 0BC3                        ld    ext4, ((r7|00)+!)
081d -- 0BC3                        ld    ext4, ((r7|00)+!)
081e -- 0BC3                        ld    ext4, ((r7|00)+!)
081f -- 0BC3                        ld    ext4, ((r7|00)+!)
0820 -- 0BC3                        ld    ext4, ((r7|00)+!)
0821 -- 0BC3                        ld    ext4, ((r7|00)+!)
0822 -- 0BC3                        ld    ext4, ((r7|00)+!)
0823 -- 0BC3                        ld    ext4, ((r7|00)+!)
0824 -- 0BC3                        ld    ext4, ((r7|00)+!)
0825 -- 0BC3                        ld    ext4, ((r7|00)+!)
0826 -- 0BC3                        ld    ext4, ((r7|00)+!)
0827 -- 0BC3                        ld    ext4, ((r7|00)+!)
0828 -- 0BC3                        ld    ext4, ((r7|00)+!)
0829 -- 0BC3                        ld    ext4, ((r7|00)+!)
082a -- 0BC3                        ld    ext4, ((r7|00)+!)
082b -- 0BC3                        ld    ext4, ((r7|00)+!)
082c -- 0BC3                        ld    ext4, ((r7|00)+!)
082d -- 0BC3                        ld    ext4, ((r7|00)+!)
082e -- 0BC3                        ld    ext4, ((r7|00)+!)
082f -- 0BC3                        ld    ext4, ((r7|00)+!)
0830 -- 0BC3                        ld    ext4, ((r7|00)+!)
0831 -- 0BC3                        ld    ext4, ((r7|00)+!)
0832 -- 0BC3                        ld    ext4, ((r7|00)+!)
0833 -- 0BC3                        ld    ext4, ((r7|00)+!)
0834 -- 0BC3                        ld    ext4, ((r7|00)+!)
0835 -- 0BC3                        ld    ext4, ((r7|00)+!)
0836 -- 0BC3                        ld    ext4, ((r7|00)+!)
0837 -- 0BC3                        ld    ext4, ((r7|00)+!)
0838 -- 0BC3                        ld    ext4, ((r7|00)+!)
0839 -- 0BC3                        ld    ext4, ((r7|00)+!)
083a -- 0BC3                        ld    ext4, ((r7|00)+!)
083b -- 0BC3                        ld    ext4, ((r7|00)+!)
083c -- 0BC3                        ld    ext4, ((r7|00)+!)
083d -- 0BC3                        ld    ext4, ((r7|00)+!)
083e -- 0BC3                        ld    ext4, ((r7|00)+!)
083f -- 0BC3                        ld    ext4, ((r7|00)+!)
0840 -- 0BC3                        ld    ext4, ((r7|00)+!)
0841 -- 0BC3                        ld    ext4, ((r7|00)+!)
0842 -- 0BC3                        ld    ext4, ((r7|00)+!)
0843 -- 0BC3                        ld    ext4, ((r7|00)+!)
0844 -- 0BC3                        ld    ext4, ((r7|00)+!)
0845 -- 0BC3                        ld    ext4, ((r7|00)+!)
0846 -- 0BC3                        ld    ext4, ((r7|00)+!)
0847 -- 0BC3                        ld    ext4, ((r7|00)+!)
0848 -- 0BC3                        ld    ext4, ((r7|00)+!)
0849 -- 0BC3                        ld    ext4, ((r7|00)+!)
084a -- 0BC3                        ld    ext4, ((r7|00)+!)
084b -- 0BC3                        ld    ext4, ((r7|00)+!)
084c -- 0BC3                        ld    ext4, ((r7|00)+!)
084d -- 0BC3                        ld    ext4, ((r7|00)+!)
084e -- 0BC3                        ld    ext4, ((r7|00)+!)
084f -- 0BC3                        ld    ext4, ((r7|00)+!)
0850 -- 0BC3                        ld    ext4, ((r7|00)+!)
0851 -- 0BC3                        ld    ext4, ((r7|00)+!)
0852 -- 0BC3                        ld    ext4, ((r7|00)+!)
0853 -- 0BC3                        ld    ext4, ((r7|00)+!)
0854 -- 0BC3                        ld    ext4, ((r7|00)+!)
0855 -- 0BC3                        ld    ext4, ((r7|00)+!)
0856 -- 0BC3                        ld    ext4, ((r7|00)+!)
0857 -- 0BC3                        ld    ext4, ((r7|00)+!)
0858 -- 0BC3                        ld    ext4, ((r7|00)+!)
0859 -- 0BC3                        ld    ext4, ((r7|00)+!)
085a -- 0BC3                        ld    ext4, ((r7|00)+!)
085b -- 0BC3                        ld    ext4, ((r7|00)+!)
085c -- 0BC3                        ld    ext4, ((r7|00)+!)
085d -- 0BC3                        ld    ext4, ((r7|00)+!)
085e -- 0BC3                        ld    ext4, ((r7|00)+!)
085f -- 0BC3                        ld    ext4, ((r7|00)+!)
0860 -- 0BC3                        ld    ext4, ((r7|00)+!)
0861 -- 0BC3                        ld    ext4, ((r7|00)+!)
0862 -- 0BC3                        ld    ext4, ((r7|00)+!)
0863 -- 0BC3                        ld    ext4, ((r7|00)+!)
0864 -- 0BC3                        ld    ext4, ((r7|00)+!)
0865 -- 0BC3                        ld    ext4, ((r7|00)+!)
0866 -- 0BC3                        ld    ext4, ((r7|00)+!)
0867 -- 0BC3                        ld    ext4, ((r7|00)+!)
0868 -- 0BC3                        ld    ext4, ((r7|00)+!)
0869 -- 0BC3                        ld    ext4, ((r7|00)+!)
086a -- 0BC3                        ld    ext4, ((r7|00)+!)
086b -- 0BC3                        ld    ext4, ((r7|00)+!)
086c -- 0BC3                        ld    ext4, ((r7|00)+!)
086d -- 0BC3                        ld    ext4, ((r7|00)+!)
086e -- 0BC3                        ld    ext4, ((r7|00)+!)
086f -- 0BC3                        ld    ext4, ((r7|00)+!)
0870 -- 0BC3                        ld    ext4, ((r7|00)+!)
0871 -- 0BC3                        ld    ext4, ((r7|00)+!)
0872 -- 0BC3                        ld    ext4, ((r7|00)+!)
0873 -- 0BC3                        ld    ext4, ((r7|00)+!)
0874 -- 0BC3                        ld    ext4, ((r7|00)+!)
0875 -- 0BC3                        ld    ext4, ((r7|00)+!)
0876 -- 0BC3                        ld    ext4, ((r7|00)+!)
0877 -- 0BC3                        ld    ext4, ((r7|00)+!)
0878 -- 0BC3                        ld    ext4, ((r7|00)+!)
0879 -- 0BC3                        ld    ext4, ((r7|00)+!)
087a -- 0BC3                        ld    ext4, ((r7|00)+!)
087b -- 0BC3                        ld    ext4, ((r7|00)+!)
087c -- 0BC3                        ld    ext4, ((r7|00)+!)
087d -- 0BC3                        ld    ext4, ((r7|00)+!)
087e -- 0BC3                        ld    ext4, ((r7|00)+!)
087f -- 0BC3                        ld    ext4, ((r7|00)+!)
0880 -- 0BC3                        ld    ext4, ((r7|00)+!)
0881 -- 0BC3                        ld    ext4, ((r7|00)+!)
0882 -- 0BC3                        ld    ext4, ((r7|00)+!)
0883 -- 0BC3                        ld    ext4, ((r7|00)+!)
0884 -- 0BC3                        ld    ext4, ((r7|00)+!)
0885 -- 0BC3                        ld    ext4, ((r7|00)+!)
0886 -- 0BC3                        ld    ext4, ((r7|00)+!)
0887 -- 0BC3                        ld    ext4, ((r7|00)+!)
0888 -- 0BC3                        ld    ext4, ((r7|00)+!)
0889 -- 0065                        ret
088a -- 0034                        ld    a, st
088b -- D860                        or    a, 0x60
088c -- 0043                        ld    st, a
088d -- 0830 00C0                   ld    a, 0x00c0
088f -- 0FE2                        ld    B[0xe2], a
0890 -- 08E0 7F07                   ld    ext6, 0x7f07
0892 -- 08E0 0818                   ld    ext6, 0x0818
0894 -- 000C                        ld    -, ext4
0895 -- 003C                        ld    a, ext4
0896 -- 0FC8                        ld    B[0xc8], a
0897 -- 07F0                        ld    a, B[0xf0]
0898 -- 3801                        sub   a, 0x01
0899 -- 0FF0                        ld    B[0xf0], a
089a -- 1531                        ld    r5, a
089b -- 0D01 089F                   ld    (r5), 0x089f
089d -- 4C00 1265                   bra   0x1265
089f -- 0D03 15B5                   ld    (r7|00), 0x15b5
08a1 -- 0840 0000                   ld    st, 0x0000
08a3 -- 0880 0000                   ld    ext0, 0x0000
08a5 -- 0880 0000                   ld    ext0, 0x0000
08a7 -- 0840 0060                   ld    st, 0x0060
08a9 -- 4800 0481                   call  0x0481
08ab -- 0D03 126F                   ld    (r7|00), 0x126f
08ad -- 0840 0000                   ld    st, 0x0000
08af -- 0880 0000                   ld    ext0, 0x0000
08b1 -- 0880 0000                   ld    ext0, 0x0000
08b3 -- 0840 0060                   ld    st, 0x0060
08b5 -- 4800 0481                   call  0x0481
08b7 -- 07F0                        ld    a, B[0xf0]
08b8 -- 3801                        sub   a, 0x01
08b9 -- 0FF0                        ld    B[0xf0], a
08ba -- 1531                        ld    r5, a
08bb -- 0D01 08BF                   ld    (r5), 0x08bf
08bd -- 4C00 0240                   bra   0x0240
08bf -- 0830 7F40                   ld    a, 0x7f40
08c1 -- 4800 0D4D                   call  0x0d4d
08c3 -- 07F0                        ld    a, B[0xf0]
08c4 -- 3801                        sub   a, 0x01
08c5 -- 0FF0                        ld    B[0xf0], a
08c6 -- 1531                        ld    r5, a
08c7 -- 0D01 08CB                   ld    (r5), 0x08cb
08c9 -- 4C00 17F3                   bra   0x17f3
08cb -- 0D03 19B5                   ld    (r7|00), 0x19b5
08cd -- 0840 0000                   ld    st, 0x0000
08cf -- 0880 0000                   ld    ext0, 0x0000
08d1 -- 0880 0000                   ld    ext0, 0x0000
08d3 -- 0840 0060                   ld    st, 0x0060
08d5 -- 4800 0481                   call  0x0481
08d7 -- 07F0                        ld    a, B[0xf0]
08d8 -- 3801                        sub   a, 0x01
08d9 -- 0FF0                        ld    B[0xf0], a
08da -- 1531                        ld    r5, a
08db -- 0D01 08DF                   ld    (r5), 0x08df
08dd -- 4C00 1957                   bra   0x1957
08df -- 4800 2784                   call  0x2784
08e1 -- 07F0                        ld    a, B[0xf0]
08e2 -- 3801                        sub   a, 0x01
08e3 -- 0FF0                        ld    B[0xf0], a
08e4 -- 1531                        ld    r5, a
08e5 -- 0D01 08E9                   ld    (r5), 0x08e9
08e7 -- 4C00 1E09                   bra   0x1e09
08e9 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
08eb -- 0840 0000                   ld    st, 0x0000
08ed -- 0880 0000                   ld    ext0, 0x0000
08ef -- 0880 0000                   ld    ext0, 0x0000
08f1 -- 0840 0060                   ld    st, 0x0060
08f3 -- 4800 0481                   call  0x0481
08f5 -- 07F0                        ld    a, B[0xf0]
08f6 -- 3801                        sub   a, 0x01
08f7 -- 0FF0                        ld    B[0xf0], a
08f8 -- 1531                        ld    r5, a
08f9 -- 0D01 08FD                   ld    (r5), 0x08fd
08fb -- 4C00 1EA7                   bra   0x1ea7
08fd -- 07C8                        ld    a, B[0xc8]
08fe -- A000                        and   a, -
08ff -- 4D50 0939                   bra   z, 0x0939
0901 -- 07F0                        ld    a, B[0xf0]
0902 -- 3801                        sub   a, 0x01
0903 -- 0FF0                        ld    B[0xf0], a
0904 -- 1531                        ld    r5, a
0905 -- 0D01 0909                   ld    (r5), 0x0909
0907 -- 4C00 17F3                   bra   0x17f3
0909 -- 0D03 19B5                   ld    (r7|00), 0x19b5
090b -- 0840 0000                   ld    st, 0x0000
090d -- 0880 0000                   ld    ext0, 0x0000
090f -- 0880 0000                   ld    ext0, 0x0000
0911 -- 0840 0060                   ld    st, 0x0060
0913 -- 4800 0481                   call  0x0481
0915 -- 07F0                        ld    a, B[0xf0]
0916 -- 3801                        sub   a, 0x01
0917 -- 0FF0                        ld    B[0xf0], a
0918 -- 1531                        ld    r5, a
0919 -- 0D01 091D                   ld    (r5), 0x091d
091b -- 4C00 1935                   bra   0x1935
091d -- 07F0                        ld    a, B[0xf0]
091e -- 3801                        sub   a, 0x01
091f -- 0FF0                        ld    B[0xf0], a
0920 -- 1531                        ld    r5, a
0921 -- 0D01 0925                   ld    (r5), 0x0925
0923 -- 4C00 1E09                   bra   0x1e09
0925 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0927 -- 0840 0000                   ld    st, 0x0000
0929 -- 0880 0000                   ld    ext0, 0x0000
092b -- 0880 0000                   ld    ext0, 0x0000
092d -- 0840 0060                   ld    st, 0x0060
092f -- 4800 0481                   call  0x0481
0931 -- 07F0                        ld    a, B[0xf0]
0932 -- 3801                        sub   a, 0x01
0933 -- 0FF0                        ld    B[0xf0], a
0934 -- 1531                        ld    r5, a
0935 -- 0D01 0939                   ld    (r5), 0x0939
0937 -- 4C00 1E97                   bra   0x1e97
0939 -- 07F0                        ld    a, B[0xf0]
093a -- 3801                        sub   a, 0x01
093b -- 0FF0                        ld    B[0xf0], a
093c -- 1531                        ld    r5, a
093d -- 0D01 0941                   ld    (r5), 0x0941
093f -- 4C00 2275                   bra   0x2275
0941 -- 0D03 229F                   ld    (r7|00), 0x229f
0943 -- 0840 0000                   ld    st, 0x0000
0945 -- 0880 0000                   ld    ext0, 0x0000
0947 -- 0880 0000                   ld    ext0, 0x0000
0949 -- 0840 0060                   ld    st, 0x0060
094b -- 4800 0481                   call  0x0481
094d -- 07F0                        ld    a, B[0xf0]
094e -- 3801                        sub   a, 0x01
094f -- 0FF0                        ld    B[0xf0], a
0950 -- 1531                        ld    r5, a
0951 -- 0D01 0955                   ld    (r5), 0x0955
0953 -- 4C00 0000                   bra   0x0000
0955 -- 4800 2794                   call  0x2794
0957 -- 4C00 0425                   bra   0x0425
0959 -- 0034                        ld    a, st
095a -- D860                        or    a, 0x60
095b -- 0043                        ld    st, a
095c -- 0830 00C0                   ld    a, 0x00c0
095e -- 0FE2                        ld    B[0xe2], a
095f -- 08E0 7F07                   ld    ext6, 0x7f07
0961 -- 08E0 0818                   ld    ext6, 0x0818
0963 -- 000C                        ld    -, ext4
0964 -- 003C                        ld    a, ext4
0965 -- 0FC8                        ld    B[0xc8], a
0966 -- 07F0                        ld    a, B[0xf0]
0967 -- 3801                        sub   a, 0x01
0968 -- 0FF0                        ld    B[0xf0], a
0969 -- 1531                        ld    r5, a
096a -- 0D01 096E                   ld    (r5), 0x096e
096c -- 4C00 1265                   bra   0x1265
096e -- 0D03 15B5                   ld    (r7|00), 0x15b5
0970 -- 0840 0000                   ld    st, 0x0000
0972 -- 0880 0000                   ld    ext0, 0x0000
0974 -- 0880 0000                   ld    ext0, 0x0000
0976 -- 0840 0060                   ld    st, 0x0060
0978 -- 4800 0481                   call  0x0481
097a -- 0D03 126F                   ld    (r7|00), 0x126f
097c -- 0840 0000                   ld    st, 0x0000
097e -- 0880 0000                   ld    ext0, 0x0000
0980 -- 0880 0000                   ld    ext0, 0x0000
0982 -- 0840 0060                   ld    st, 0x0060
0984 -- 4800 0481                   call  0x0481
0986 -- 07F0                        ld    a, B[0xf0]
0987 -- 3801                        sub   a, 0x01
0988 -- 0FF0                        ld    B[0xf0], a
0989 -- 1531                        ld    r5, a
098a -- 0D01 098E                   ld    (r5), 0x098e
098c -- 4C00 0240                   bra   0x0240
098e -- 0D03 146A                   ld    (r7|00), 0x146a
0990 -- 0840 0000                   ld    st, 0x0000
0992 -- 0880 0000                   ld    ext0, 0x0000
0994 -- 0880 0000                   ld    ext0, 0x0000
0996 -- 0840 0060                   ld    st, 0x0060
0998 -- 4800 0481                   call  0x0481
099a -- 07F0                        ld    a, B[0xf0]
099b -- 3801                        sub   a, 0x01
099c -- 0FF0                        ld    B[0xf0], a
099d -- 1531                        ld    r5, a
099e -- 0D01 09A2                   ld    (r5), 0x09a2
09a0 -- 4C00 0240                   bra   0x0240
09a2 -- 07F0                        ld    a, B[0xf0]
09a3 -- 3801                        sub   a, 0x01
09a4 -- 0FF0                        ld    B[0xf0], a
09a5 -- 1531                        ld    r5, a
09a6 -- 0D01 09AA                   ld    (r5), 0x09aa
09a8 -- 4C00 17F3                   bra   0x17f3
09aa -- 0D03 19B5                   ld    (r7|00), 0x19b5
09ac -- 0840 0000                   ld    st, 0x0000
09ae -- 0880 0000                   ld    ext0, 0x0000
09b0 -- 0880 0000                   ld    ext0, 0x0000
09b2 -- 0840 0060                   ld    st, 0x0060
09b4 -- 4800 0481                   call  0x0481
09b6 -- 07F0                        ld    a, B[0xf0]
09b7 -- 3801                        sub   a, 0x01
09b8 -- 0FF0                        ld    B[0xf0], a
09b9 -- 1531                        ld    r5, a
09ba -- 0D01 09BE                   ld    (r5), 0x09be
09bc -- 4C00 1957                   bra   0x1957
09be -- 4800 2784                   call  0x2784
09c0 -- 07F0                        ld    a, B[0xf0]
09c1 -- 3801                        sub   a, 0x01
09c2 -- 0FF0                        ld    B[0xf0], a
09c3 -- 1531                        ld    r5, a
09c4 -- 0D01 09C8                   ld    (r5), 0x09c8
09c6 -- 4C00 1E09                   bra   0x1e09
09c8 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
09ca -- 0840 0000                   ld    st, 0x0000
09cc -- 0880 0000                   ld    ext0, 0x0000
09ce -- 0880 0000                   ld    ext0, 0x0000
09d0 -- 0840 0060                   ld    st, 0x0060
09d2 -- 4800 0481                   call  0x0481
09d4 -- 07F0                        ld    a, B[0xf0]
09d5 -- 3801                        sub   a, 0x01
09d6 -- 0FF0                        ld    B[0xf0], a
09d7 -- 1531                        ld    r5, a
09d8 -- 0D01 09DC                   ld    (r5), 0x09dc
09da -- 4C00 1EA7                   bra   0x1ea7
09dc -- B800                        and   a, 0x00
09dd -- 0FE3                        ld    B[0xe3], a
09de -- 07F0                        ld    a, B[0xf0]
09df -- 3801                        sub   a, 0x01
09e0 -- 0FF0                        ld    B[0xf0], a
09e1 -- 1531                        ld    r5, a
09e2 -- 0D01 09E6                   ld    (r5), 0x09e6
09e4 -- 4C00 17F3                   bra   0x17f3
09e6 -- 0D03 19B5                   ld    (r7|00), 0x19b5
09e8 -- 0840 0000                   ld    st, 0x0000
09ea -- 0880 0000                   ld    ext0, 0x0000
09ec -- 0880 0000                   ld    ext0, 0x0000
09ee -- 0840 0060                   ld    st, 0x0060
09f0 -- 4800 0481                   call  0x0481
09f2 -- 07F0                        ld    a, B[0xf0]
09f3 -- 3801                        sub   a, 0x01
09f4 -- 0FF0                        ld    B[0xf0], a
09f5 -- 1531                        ld    r5, a
09f6 -- 0D01 09FA                   ld    (r5), 0x09fa
09f8 -- 4C00 18CD                   bra   0x18cd
09fa -- 07E3                        ld    a, B[0xe3]
09fb -- A000                        and   a, -
09fc -- 4D50 0A1A                   bra   z, 0x0a1a
09fe -- 07F0                        ld    a, B[0xf0]
09ff -- 3801                        sub   a, 0x01
0a00 -- 0FF0                        ld    B[0xf0], a
0a01 -- 1531                        ld    r5, a
0a02 -- 0D01 0A06                   ld    (r5), 0x0a06
0a04 -- 4C00 1E09                   bra   0x1e09
0a06 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0a08 -- 0840 0000                   ld    st, 0x0000
0a0a -- 0880 0000                   ld    ext0, 0x0000
0a0c -- 0880 0000                   ld    ext0, 0x0000
0a0e -- 0840 0060                   ld    st, 0x0060
0a10 -- 4800 0481                   call  0x0481
0a12 -- 07F0                        ld    a, B[0xf0]
0a13 -- 3801                        sub   a, 0x01
0a14 -- 0FF0                        ld    B[0xf0], a
0a15 -- 1531                        ld    r5, a
0a16 -- 0D01 0A1A                   ld    (r5), 0x0a1a
0a18 -- 4C00 1E90                   bra   0x1e90
0a1a -- 07F0                        ld    a, B[0xf0]
0a1b -- 3801                        sub   a, 0x01
0a1c -- 0FF0                        ld    B[0xf0], a
0a1d -- 1531                        ld    r5, a
0a1e -- 0D01 0A22                   ld    (r5), 0x0a22
0a20 -- 4C00 2275                   bra   0x2275
0a22 -- 0D03 229F                   ld    (r7|00), 0x229f
0a24 -- 0840 0000                   ld    st, 0x0000
0a26 -- 0880 0000                   ld    ext0, 0x0000
0a28 -- 0880 0000                   ld    ext0, 0x0000
0a2a -- 0840 0060                   ld    st, 0x0060
0a2c -- 4800 0481                   call  0x0481
0a2e -- 07F0                        ld    a, B[0xf0]
0a2f -- 3801                        sub   a, 0x01
0a30 -- 0FF0                        ld    B[0xf0], a
0a31 -- 1531                        ld    r5, a
0a32 -- 0D01 0A36                   ld    (r5), 0x0a36
0a34 -- 4C00 0000                   bra   0x0000
0a36 -- 4800 2794                   call  0x2794
0a38 -- 4C00 0425                   bra   0x0425
0a3a -- 0830 00C0                   ld    a, 0x00c0
0a3c -- 0FE2                        ld    B[0xe2], a
0a3d -- B800                        and   a, 0x00
0a3e -- 0FC8                        ld    B[0xc8], a
0a3f -- 07F0                        ld    a, B[0xf0]
0a40 -- 3801                        sub   a, 0x01
0a41 -- 0FF0                        ld    B[0xf0], a
0a42 -- 1531                        ld    r5, a
0a43 -- 0D01 0A47                   ld    (r5), 0x0a47
0a45 -- 4C00 1265                   bra   0x1265
0a47 -- 0D03 15B5                   ld    (r7|00), 0x15b5
0a49 -- 0840 0000                   ld    st, 0x0000
0a4b -- 0880 0000                   ld    ext0, 0x0000
0a4d -- 0880 0000                   ld    ext0, 0x0000
0a4f -- 0840 0060                   ld    st, 0x0060
0a51 -- 4800 0481                   call  0x0481
0a53 -- 0D03 126F                   ld    (r7|00), 0x126f
0a55 -- 0840 0000                   ld    st, 0x0000
0a57 -- 0880 0000                   ld    ext0, 0x0000
0a59 -- 0880 0000                   ld    ext0, 0x0000
0a5b -- 0840 0060                   ld    st, 0x0060
0a5d -- 4800 0481                   call  0x0481
0a5f -- 07F0                        ld    a, B[0xf0]
0a60 -- 3801                        sub   a, 0x01
0a61 -- 0FF0                        ld    B[0xf0], a
0a62 -- 1531                        ld    r5, a
0a63 -- 0D01 0A67                   ld    (r5), 0x0a67
0a65 -- 4C00 02FC                   bra   0x02fc
0a67 -- 07F0                        ld    a, B[0xf0]
0a68 -- 3801                        sub   a, 0x01
0a69 -- 0FF0                        ld    B[0xf0], a
0a6a -- 1531                        ld    r5, a
0a6b -- 0D01 0A6F                   ld    (r5), 0x0a6f
0a6d -- 4C00 17F3                   bra   0x17f3
0a6f -- 0D03 19B5                   ld    (r7|00), 0x19b5
0a71 -- 0840 0000                   ld    st, 0x0000
0a73 -- 0880 0000                   ld    ext0, 0x0000
0a75 -- 0880 0000                   ld    ext0, 0x0000
0a77 -- 0840 0060                   ld    st, 0x0060
0a79 -- 4800 0481                   call  0x0481
0a7b -- 07F0                        ld    a, B[0xf0]
0a7c -- 3801                        sub   a, 0x01
0a7d -- 0FF0                        ld    B[0xf0], a
0a7e -- 1531                        ld    r5, a
0a7f -- 0D01 0A83                   ld    (r5), 0x0a83
0a81 -- 4C00 1957                   bra   0x1957
0a83 -- 4800 2784                   call  0x2784
0a85 -- 07F0                        ld    a, B[0xf0]
0a86 -- 3801                        sub   a, 0x01
0a87 -- 0FF0                        ld    B[0xf0], a
0a88 -- 1531                        ld    r5, a
0a89 -- 0D01 0A8D                   ld    (r5), 0x0a8d
0a8b -- 4C00 1E09                   bra   0x1e09
0a8d -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0a8f -- 0840 0000                   ld    st, 0x0000
0a91 -- 0880 0000                   ld    ext0, 0x0000
0a93 -- 0880 0000                   ld    ext0, 0x0000
0a95 -- 0840 0060                   ld    st, 0x0060
0a97 -- 4800 0481                   call  0x0481
0a99 -- 07F0                        ld    a, B[0xf0]
0a9a -- 3801                        sub   a, 0x01
0a9b -- 0FF0                        ld    B[0xf0], a
0a9c -- 1531                        ld    r5, a
0a9d -- 0D01 0AA1                   ld    (r5), 0x0aa1
0a9f -- 4C00 1EA7                   bra   0x1ea7
0aa1 -- 07F0                        ld    a, B[0xf0]
0aa2 -- 3801                        sub   a, 0x01
0aa3 -- 0FF0                        ld    B[0xf0], a
0aa4 -- 1531                        ld    r5, a
0aa5 -- 0D01 0AA9                   ld    (r5), 0x0aa9
0aa7 -- 4C00 2275                   bra   0x2275
0aa9 -- 0D03 229F                   ld    (r7|00), 0x229f
0aab -- 0840 0000                   ld    st, 0x0000
0aad -- 0880 0000                   ld    ext0, 0x0000
0aaf -- 0880 0000                   ld    ext0, 0x0000
0ab1 -- 0840 0060                   ld    st, 0x0060
0ab3 -- 4800 0481                   call  0x0481
0ab5 -- 07F0                        ld    a, B[0xf0]
0ab6 -- 3801                        sub   a, 0x01
0ab7 -- 0FF0                        ld    B[0xf0], a
0ab8 -- 1531                        ld    r5, a
0ab9 -- 0D01 0ABD                   ld    (r5), 0x0abd
0abb -- 4C00 0000                   bra   0x0000
0abd -- 4800 2794                   call  0x2794
0abf -- 4C00 0425                   bra   0x0425
0ac1 -- 0830 00C0                   ld    a, 0x00c0
0ac3 -- 0FE2                        ld    B[0xe2], a
0ac4 -- 07F0                        ld    a, B[0xf0]
0ac5 -- 3801                        sub   a, 0x01
0ac6 -- 0FF0                        ld    B[0xf0], a
0ac7 -- 1531                        ld    r5, a
0ac8 -- 0D01 0ACC                   ld    (r5), 0x0acc
0aca -- 4C00 1265                   bra   0x1265
0acc -- 0D03 15B5                   ld    (r7|00), 0x15b5
0ace -- 0840 0000                   ld    st, 0x0000
0ad0 -- 0880 0000                   ld    ext0, 0x0000
0ad2 -- 0880 0000                   ld    ext0, 0x0000
0ad4 -- 0840 0060                   ld    st, 0x0060
0ad6 -- 4800 0481                   call  0x0481
0ad8 -- 0D03 126F                   ld    (r7|00), 0x126f
0ada -- 0840 0000                   ld    st, 0x0000
0adc -- 0880 0000                   ld    ext0, 0x0000
0ade -- 0880 0000                   ld    ext0, 0x0000
0ae0 -- 0840 0060                   ld    st, 0x0060
0ae2 -- 4800 0481                   call  0x0481
0ae4 -- 07F0                        ld    a, B[0xf0]
0ae5 -- 3801                        sub   a, 0x01
0ae6 -- 0FF0                        ld    B[0xf0], a
0ae7 -- 1531                        ld    r5, a
0ae8 -- 0D01 0AEC                   ld    (r5), 0x0aec
0aea -- 4C00 0350                   bra   0x0350
0aec -- 4C00 0A67                   bra   0x0a67
0aee -- 0034                        ld    a, st
0aef -- D860                        or    a, 0x60
0af0 -- 0043                        ld    st, a
0af1 -- B800                        and   a, 0x00
0af2 -- 0FC8                        ld    B[0xc8], a
0af3 -- 08E0 7F08                   ld    ext6, 0x7f08
0af5 -- 08E0 0818                   ld    ext6, 0x0818
0af7 -- 000C                        ld    -, ext4
0af8 -- 003C                        ld    a, ext4
0af9 -- 0FE0                        ld    B[0xe0], a
0afa -- A000                        and   a, -
0afb -- 7860                        cmp   a, 0x60
0afc -- 4D50 0B42                   bra   z, 0x0b42
0afe -- 07F0                        ld    a, B[0xf0]
0aff -- 3801                        sub   a, 0x01
0b00 -- 0FF0                        ld    B[0xf0], a
0b01 -- 1531                        ld    r5, a
0b02 -- 0D01 0B06                   ld    (r5), 0x0b06
0b04 -- 4C00 1265                   bra   0x1265
0b06 -- 0D03 15B5                   ld    (r7|00), 0x15b5
0b08 -- 0840 0000                   ld    st, 0x0000
0b0a -- 0880 0000                   ld    ext0, 0x0000
0b0c -- 0880 0000                   ld    ext0, 0x0000
0b0e -- 0840 0060                   ld    st, 0x0060
0b10 -- 4800 0481                   call  0x0481
0b12 -- 0D03 126F                   ld    (r7|00), 0x126f
0b14 -- 0840 0000                   ld    st, 0x0000
0b16 -- 0880 0000                   ld    ext0, 0x0000
0b18 -- 0880 0000                   ld    ext0, 0x0000
0b1a -- 0840 0060                   ld    st, 0x0060
0b1c -- 4800 0481                   call  0x0481
0b1e -- 07F0                        ld    a, B[0xf0]
0b1f -- 3801                        sub   a, 0x01
0b20 -- 0FF0                        ld    B[0xf0], a
0b21 -- 1531                        ld    r5, a
0b22 -- 0D01 0B26                   ld    (r5), 0x0b26
0b24 -- 4C00 02FC                   bra   0x02fc
0b26 -- 07F0                        ld    a, B[0xf0]
0b27 -- 3801                        sub   a, 0x01
0b28 -- 0FF0                        ld    B[0xf0], a
0b29 -- 1531                        ld    r5, a
0b2a -- 0D01 0B2E                   ld    (r5), 0x0b2e
0b2c -- 4C00 17F3                   bra   0x17f3
0b2e -- 0D03 19B5                   ld    (r7|00), 0x19b5
0b30 -- 0840 0000                   ld    st, 0x0000
0b32 -- 0880 0000                   ld    ext0, 0x0000
0b34 -- 0880 0000                   ld    ext0, 0x0000
0b36 -- 0840 0060                   ld    st, 0x0060
0b38 -- 4800 0481                   call  0x0481
0b3a -- 07F0                        ld    a, B[0xf0]
0b3b -- 3801                        sub   a, 0x01
0b3c -- 0FF0                        ld    B[0xf0], a
0b3d -- 1531                        ld    r5, a
0b3e -- 0D01 0B42                   ld    (r5), 0x0b42
0b40 -- 4C00 1957                   bra   0x1957
0b42 -- 4800 2784                   call  0x2784
0b44 -- 4800 0B92                   call  0x0b92
0b46 -- 07F0                        ld    a, B[0xf0]
0b47 -- 3801                        sub   a, 0x01
0b48 -- 0FF0                        ld    B[0xf0], a
0b49 -- 1531                        ld    r5, a
0b4a -- 0D01 0B4E                   ld    (r5), 0x0b4e
0b4c -- 4C00 1E09                   bra   0x1e09
0b4e -- 4800 0B84                   call  0x0b84
0b50 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0b52 -- 0840 0000                   ld    st, 0x0000
0b54 -- 0880 0000                   ld    ext0, 0x0000
0b56 -- 0880 0000                   ld    ext0, 0x0000
0b58 -- 0840 0060                   ld    st, 0x0060
0b5a -- 4800 0481                   call  0x0481
0b5c -- 07F0                        ld    a, B[0xf0]
0b5d -- 3801                        sub   a, 0x01
0b5e -- 0FF0                        ld    B[0xf0], a
0b5f -- 1531                        ld    r5, a
0b60 -- 0D01 0B64                   ld    (r5), 0x0b64
0b62 -- 4C00 1EA7                   bra   0x1ea7
0b64 -- 07F0                        ld    a, B[0xf0]
0b65 -- 3801                        sub   a, 0x01
0b66 -- 0FF0                        ld    B[0xf0], a
0b67 -- 1531                        ld    r5, a
0b68 -- 0D01 0B6C                   ld    (r5), 0x0b6c
0b6a -- 4C00 2275                   bra   0x2275
0b6c -- 0D03 229F                   ld    (r7|00), 0x229f
0b6e -- 0840 0000                   ld    st, 0x0000
0b70 -- 0880 0000                   ld    ext0, 0x0000
0b72 -- 0880 0000                   ld    ext0, 0x0000
0b74 -- 0840 0060                   ld    st, 0x0060
0b76 -- 4800 0481                   call  0x0481
0b78 -- 07F0                        ld    a, B[0xf0]
0b79 -- 3801                        sub   a, 0x01
0b7a -- 0FF0                        ld    B[0xf0], a
0b7b -- 1531                        ld    r5, a
0b7c -- 0D01 0B80                   ld    (r5), 0x0b80
0b7e -- 4C00 02F7                   bra   0x02f7
0b80 -- 4800 2794                   call  0x2794
0b82 -- 4C00 0425                   bra   0x0425
0b84 -- 07E0                        ld    a, B[0xe0]
0b85 -- 3801                        sub   a, 0x01
0b86 -- 4D70 0B91                   bra   s, 0x0b91
0b88 -- B8F0                        and   a, 0xf0
0b89 -- 0013                        ld    x, a
0b8a -- 0820 0020                   ld    y, 0x0020
0b8c -- 0037                        ld    a, p
0b8d -- 001F                        ld    x, ext7
0b8e -- 0031                        ld    a, x
0b8f -- 86F6                        add   a, A[0xf6]
0b90 -- 0EF6                        ld    A[0xf6], a
0b91 -- 0065                        ret
0b92 -- 07E0                        ld    a, B[0xe0]
0b93 -- 3801                        sub   a, 0x01
0b94 -- 4D70 0B9E                   bra   s, 0x0b9e
0b96 -- B8F0                        and   a, 0xf0
0b97 -- 9003                        shl   a
0b98 -- 0013                        ld    x, a
0b99 -- 0830 00C0                   ld    a, 0x00c0
0b9b -- 2001                        sub   a, x
0b9c -- 0FE2                        ld    B[0xe2], a
0b9d -- 0065                        ret
0b9e -- 0830 00C0                   ld    a, 0x00c0
0ba0 -- 0FE2                        ld    B[0xe2], a
0ba1 -- 0065                        ret
0ba2 -- 0034                        ld    a, st
0ba3 -- D860                        or    a, 0x60
0ba4 -- 0043                        ld    st, a
0ba5 -- B800                        and   a, 0x00
0ba6 -- 0FC8                        ld    B[0xc8], a
0ba7 -- 4800 2784                   call  0x2784
0ba9 -- 07F0                        ld    a, B[0xf0]
0baa -- 3801                        sub   a, 0x01
0bab -- 0FF0                        ld    B[0xf0], a
0bac -- 1531                        ld    r5, a
0bad -- 0D01 0BB1                   ld    (r5), 0x0bb1
0baf -- 4C00 2275                   bra   0x2275
0bb1 -- 0D03 229F                   ld    (r7|00), 0x229f
0bb3 -- 0840 0000                   ld    st, 0x0000
0bb5 -- 0880 0000                   ld    ext0, 0x0000
0bb7 -- 0880 0000                   ld    ext0, 0x0000
0bb9 -- 0840 0060                   ld    st, 0x0060
0bbb -- 4800 0481                   call  0x0481
0bbd -- 07F0                        ld    a, B[0xf0]
0bbe -- 3801                        sub   a, 0x01
0bbf -- 0FF0                        ld    B[0xf0], a
0bc0 -- 1531                        ld    r5, a
0bc1 -- 0D01 0BC5                   ld    (r5), 0x0bc5
0bc3 -- 4C00 0337                   bra   0x0337
0bc5 -- 4800 2794                   call  0x2794
0bc7 -- 4C00 0425                   bra   0x0425
0bc9 -- 0034                        ld    a, st
0bca -- D860                        or    a, 0x60
0bcb -- 0043                        ld    st, a
0bcc -- B800                        and   a, 0x00
0bcd -- 0FC8                        ld    B[0xc8], a
0bce -- 07F0                        ld    a, B[0xf0]
0bcf -- 3801                        sub   a, 0x01
0bd0 -- 0FF0                        ld    B[0xf0], a
0bd1 -- 1531                        ld    r5, a
0bd2 -- 0D01 0BD6                   ld    (r5), 0x0bd6
0bd4 -- 4C00 1265                   bra   0x1265
0bd6 -- 0D03 15B5                   ld    (r7|00), 0x15b5
0bd8 -- 0840 0000                   ld    st, 0x0000
0bda -- 0880 0000                   ld    ext0, 0x0000
0bdc -- 0880 0000                   ld    ext0, 0x0000
0bde -- 0840 0060                   ld    st, 0x0060
0be0 -- 4800 0481                   call  0x0481
0be2 -- 0D03 126F                   ld    (r7|00), 0x126f
0be4 -- 0840 0000                   ld    st, 0x0000
0be6 -- 0880 0000                   ld    ext0, 0x0000
0be8 -- 0880 0000                   ld    ext0, 0x0000
0bea -- 0840 0060                   ld    st, 0x0060
0bec -- 4800 0481                   call  0x0481
0bee -- 07F0                        ld    a, B[0xf0]
0bef -- 3801                        sub   a, 0x01
0bf0 -- 0FF0                        ld    B[0xf0], a
0bf1 -- 1531                        ld    r5, a
0bf2 -- 0D01 0BF6                   ld    (r5), 0x0bf6
0bf4 -- 4C00 02FC                   bra   0x02fc
0bf6 -- 07F0                        ld    a, B[0xf0]
0bf7 -- 3801                        sub   a, 0x01
0bf8 -- 0FF0                        ld    B[0xf0], a
0bf9 -- 1531                        ld    r5, a
0bfa -- 0D01 0BFE                   ld    (r5), 0x0bfe
0bfc -- 4C00 17F3                   bra   0x17f3
0bfe -- 0D03 19B5                   ld    (r7|00), 0x19b5
0c00 -- 0840 0000                   ld    st, 0x0000
0c02 -- 0880 0000                   ld    ext0, 0x0000
0c04 -- 0880 0000                   ld    ext0, 0x0000
0c06 -- 0840 0060                   ld    st, 0x0060
0c08 -- 4800 0481                   call  0x0481
0c0a -- 07F0                        ld    a, B[0xf0]
0c0b -- 3801                        sub   a, 0x01
0c0c -- 0FF0                        ld    B[0xf0], a
0c0d -- 1531                        ld    r5, a
0c0e -- 0D01 0C12                   ld    (r5), 0x0c12
0c10 -- 4C00 1957                   bra   0x1957
0c12 -- 4800 2784                   call  0x2784
0c14 -- 07F0                        ld    a, B[0xf0]
0c15 -- 3801                        sub   a, 0x01
0c16 -- 0FF0                        ld    B[0xf0], a
0c17 -- 1531                        ld    r5, a
0c18 -- 0D01 0C1C                   ld    (r5), 0x0c1c
0c1a -- 4C00 1E09                   bra   0x1e09
0c1c -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0c1e -- 0840 0000                   ld    st, 0x0000
0c20 -- 0880 0000                   ld    ext0, 0x0000
0c22 -- 0880 0000                   ld    ext0, 0x0000
0c24 -- 0840 0060                   ld    st, 0x0060
0c26 -- 4800 0481                   call  0x0481
0c28 -- 07F0                        ld    a, B[0xf0]
0c29 -- 3801                        sub   a, 0x01
0c2a -- 0FF0                        ld    B[0xf0], a
0c2b -- 1531                        ld    r5, a
0c2c -- 0D01 0C30                   ld    (r5), 0x0c30
0c2e -- 4C00 1EA7                   bra   0x1ea7
0c30 -- 07F0                        ld    a, B[0xf0]
0c31 -- 3801                        sub   a, 0x01
0c32 -- 0FF0                        ld    B[0xf0], a
0c33 -- 1531                        ld    r5, a
0c34 -- 0D01 0C38                   ld    (r5), 0x0c38
0c36 -- 4C00 2275                   bra   0x2275
0c38 -- 0D03 25EB                   ld    (r7|00), 0x25eb
0c3a -- 0840 0000                   ld    st, 0x0000
0c3c -- 0880 0000                   ld    ext0, 0x0000
0c3e -- 0880 0000                   ld    ext0, 0x0000
0c40 -- 0840 0060                   ld    st, 0x0060
0c42 -- 4800 0481                   call  0x0481
0c44 -- 07F0                        ld    a, B[0xf0]
0c45 -- 3801                        sub   a, 0x01
0c46 -- 0FF0                        ld    B[0xf0], a
0c47 -- 1531                        ld    r5, a
0c48 -- 0D01 0C4C                   ld    (r5), 0x0c4c
0c4a -- 4C00 0000                   bra   0x0000
0c4c -- 0D03 229F                   ld    (r7|00), 0x229f
0c4e -- 0840 0000                   ld    st, 0x0000
0c50 -- 0880 0000                   ld    ext0, 0x0000
0c52 -- 0880 0000                   ld    ext0, 0x0000
0c54 -- 0840 0060                   ld    st, 0x0060
0c56 -- 4800 0481                   call  0x0481
0c58 -- 08E0 7E30                   ld    ext6, 0x7e30
0c5a -- 08E0 2018                   ld    ext6, 0x2018
0c5c -- 000A                        ld    -, ext2
0c5d -- 0830 0019                   ld    a, 0x0019
0c5f -- 0E05                        ld    A[0x05], a
0c60 -- 0830 7E30                   ld    a, 0x7e30
0c62 -- 0E04                        ld    A[0x04], a
0c63 -- 07F0                        ld    a, B[0xf0]
0c64 -- 3801                        sub   a, 0x01
0c65 -- 0FF0                        ld    B[0xf0], a
0c66 -- 1531                        ld    r5, a
0c67 -- 0D01 0C6B                   ld    (r5), 0x0c6b
0c69 -- 4C00 000B                   bra   0x000b
0c6b -- 4800 2794                   call  0x2794
0c6d -- 4C00 0425                   bra   0x0425
0c6f -- 0034                        ld    a, st
0c70 -- D860                        or    a, 0x60
0c71 -- 0043                        ld    st, a
0c72 -- 0830 0060                   ld    a, 0x0060
0c74 -- 0FE2                        ld    B[0xe2], a
0c75 -- 07F0                        ld    a, B[0xf0]
0c76 -- 3801                        sub   a, 0x01
0c77 -- 0FF0                        ld    B[0xf0], a
0c78 -- 1531                        ld    r5, a
0c79 -- 0D01 0C7D                   ld    (r5), 0x0c7d
0c7b -- 4C00 1265                   bra   0x1265
0c7d -- 0D03 15B5                   ld    (r7|00), 0x15b5
0c7f -- 0840 0000                   ld    st, 0x0000
0c81 -- 0880 0000                   ld    ext0, 0x0000
0c83 -- 0880 0000                   ld    ext0, 0x0000
0c85 -- 0840 0060                   ld    st, 0x0060
0c87 -- 4800 0481                   call  0x0481
0c89 -- 0D03 13C9                   ld    (r7|00), 0x13c9
0c8b -- 0840 0000                   ld    st, 0x0000
0c8d -- 0880 0000                   ld    ext0, 0x0000
0c8f -- 0880 0000                   ld    ext0, 0x0000
0c91 -- 0840 0060                   ld    st, 0x0060
0c93 -- 4800 0481                   call  0x0481
0c95 -- 07F0                        ld    a, B[0xf0]
0c96 -- 3801                        sub   a, 0x01
0c97 -- 0FF0                        ld    B[0xf0], a
0c98 -- 1531                        ld    r5, a
0c99 -- 0D01 0C9D                   ld    (r5), 0x0c9d
0c9b -- 4C00 0245                   bra   0x0245
0c9d -- 0830 7F40                   ld    a, 0x7f40
0c9f -- 4800 0D4D                   call  0x0d4d
0ca1 -- 07F0                        ld    a, B[0xf0]
0ca2 -- 3801                        sub   a, 0x01
0ca3 -- 0FF0                        ld    B[0xf0], a
0ca4 -- 1531                        ld    r5, a
0ca5 -- 0D01 0CA9                   ld    (r5), 0x0ca9
0ca7 -- 4C00 0240                   bra   0x0240
0ca9 -- 0830 7F48                   ld    a, 0x7f48
0cab -- 4800 0D4D                   call  0x0d4d
0cad -- 0830 7F40                   ld    a, 0x7f40
0caf -- 4800 0D5B                   call  0x0d5b
0cb1 -- 07F0                        ld    a, B[0xf0]
0cb2 -- 3801                        sub   a, 0x01
0cb3 -- 0FF0                        ld    B[0xf0], a
0cb4 -- 1531                        ld    r5, a
0cb5 -- 0D01 0CB9                   ld    (r5), 0x0cb9
0cb7 -- 4C00 17F3                   bra   0x17f3
0cb9 -- 0D03 19B5                   ld    (r7|00), 0x19b5
0cbb -- 0840 0000                   ld    st, 0x0000
0cbd -- 0880 0000                   ld    ext0, 0x0000
0cbf -- 0880 0000                   ld    ext0, 0x0000
0cc1 -- 0840 0060                   ld    st, 0x0060
0cc3 -- 4800 0481                   call  0x0481
0cc5 -- 07F0                        ld    a, B[0xf0]
0cc6 -- 3801                        sub   a, 0x01
0cc7 -- 0FF0                        ld    B[0xf0], a
0cc8 -- 1531                        ld    r5, a
0cc9 -- 0D01 0CCD                   ld    (r5), 0x0ccd
0ccb -- 4C00 18F5                   bra   0x18f5
0ccd -- 4800 2784                   call  0x2784
0ccf -- 07F0                        ld    a, B[0xf0]
0cd0 -- 3801                        sub   a, 0x01
0cd1 -- 0FF0                        ld    B[0xf0], a
0cd2 -- 1531                        ld    r5, a
0cd3 -- 0D01 0CD7                   ld    (r5), 0x0cd7
0cd5 -- 4C00 1E09                   bra   0x1e09
0cd7 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0cd9 -- 0840 0000                   ld    st, 0x0000
0cdb -- 0880 0000                   ld    ext0, 0x0000
0cdd -- 0880 0000                   ld    ext0, 0x0000
0cdf -- 0840 0060                   ld    st, 0x0060
0ce1 -- 4800 0481                   call  0x0481
0ce3 -- 07F0                        ld    a, B[0xf0]
0ce4 -- 3801                        sub   a, 0x01
0ce5 -- 0FF0                        ld    B[0xf0], a
0ce6 -- 1531                        ld    r5, a
0ce7 -- 0D01 0CEB                   ld    (r5), 0x0ceb
0ce9 -- 4C00 1EA7                   bra   0x1ea7
0ceb -- 0830 7F48                   ld    a, 0x7f48
0ced -- 4800 0D5B                   call  0x0d5b
0cef -- 07F0                        ld    a, B[0xf0]
0cf0 -- 3801                        sub   a, 0x01
0cf1 -- 0FF0                        ld    B[0xf0], a
0cf2 -- 1531                        ld    r5, a
0cf3 -- 0D01 0CF7                   ld    (r5), 0x0cf7
0cf5 -- 4C00 17F3                   bra   0x17f3
0cf7 -- 0D03 19B5                   ld    (r7|00), 0x19b5
0cf9 -- 0840 0000                   ld    st, 0x0000
0cfb -- 0880 0000                   ld    ext0, 0x0000
0cfd -- 0880 0000                   ld    ext0, 0x0000
0cff -- 0840 0060                   ld    st, 0x0060
0d01 -- 4800 0481                   call  0x0481
0d03 -- 07F0                        ld    a, B[0xf0]
0d04 -- 3801                        sub   a, 0x01
0d05 -- 0FF0                        ld    B[0xf0], a
0d06 -- 1531                        ld    r5, a
0d07 -- 0D01 0D0B                   ld    (r5), 0x0d0b
0d09 -- 4C00 18F0                   bra   0x18f0
0d0b -- 07F0                        ld    a, B[0xf0]
0d0c -- 3801                        sub   a, 0x01
0d0d -- 0FF0                        ld    B[0xf0], a
0d0e -- 1531                        ld    r5, a
0d0f -- 0D01 0D13                   ld    (r5), 0x0d13
0d11 -- 4C00 1E09                   bra   0x1e09
0d13 -- 06F6                        ld    a, A[0xf6]
0d14 -- 8800 1800                   add   a, 0x1800
0d16 -- 0EF6                        ld    A[0xf6], a
0d17 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0d19 -- 0840 0000                   ld    st, 0x0000
0d1b -- 0880 0000                   ld    ext0, 0x0000
0d1d -- 0880 0000                   ld    ext0, 0x0000
0d1f -- 0840 0060                   ld    st, 0x0060
0d21 -- 4800 0481                   call  0x0481
0d23 -- 07F0                        ld    a, B[0xf0]
0d24 -- 3801                        sub   a, 0x01
0d25 -- 0FF0                        ld    B[0xf0], a
0d26 -- 1531                        ld    r5, a
0d27 -- 0D01 0D2B                   ld    (r5), 0x0d2b
0d29 -- 4C00 1EA7                   bra   0x1ea7
0d2b -- 07F0                        ld    a, B[0xf0]
0d2c -- 3801                        sub   a, 0x01
0d2d -- 0FF0                        ld    B[0xf0], a
0d2e -- 1531                        ld    r5, a
0d2f -- 0D01 0D33                   ld    (r5), 0x0d33
0d31 -- 4C00 2275                   bra   0x2275
0d33 -- 0D03 229F                   ld    (r7|00), 0x229f
0d35 -- 0840 0000                   ld    st, 0x0000
0d37 -- 0880 0000                   ld    ext0, 0x0000
0d39 -- 0880 0000                   ld    ext0, 0x0000
0d3b -- 0840 0060                   ld    st, 0x0060
0d3d -- 4800 0481                   call  0x0481
0d3f -- 4800 02E0                   call  0x02e0
0d41 -- 07F0                        ld    a, B[0xf0]
0d42 -- 3801                        sub   a, 0x01
0d43 -- 0FF0                        ld    B[0xf0], a
0d44 -- 1531                        ld    r5, a
0d45 -- 0D01 0D49                   ld    (r5), 0x0d49
0d47 -- 4C00 0000                   bra   0x0000
0d49 -- 4800 2794                   call  0x2794
0d4b -- 4C00 0425                   bra   0x0425
0d4d -- 00E3                        ld    ext6, a
0d4e -- 08E0 0818                   ld    ext6, 0x0818
0d50 -- 00C0                        ld    ext4, -
0d51 -- 1CC0                        ld    r4, 0xc0
0d52 -- 03C4                        ld    ext4, (r4+!)
0d53 -- 03C4                        ld    ext4, (r4+!)
0d54 -- 03C4                        ld    ext4, (r4+!)
0d55 -- 03C4                        ld    ext4, (r4+!)
0d56 -- 03C4                        ld    ext4, (r4+!)
0d57 -- 03C4                        ld    ext4, (r4+!)
0d58 -- 03C4                        ld    ext4, (r4+!)
0d59 -- 03C4                        ld    ext4, (r4+!)
0d5a -- 0065                        ret
0d5b -- 00E3                        ld    ext6, a
0d5c -- 08E0 0818                   ld    ext6, 0x0818
0d5e -- 000C                        ld    -, ext4
0d5f -- 1CC0                        ld    r4, 0xc0
0d60 -- 05C4                        ld    (r4+!), ext4
0d61 -- 05C4                        ld    (r4+!), ext4
0d62 -- 05C4                        ld    (r4+!), ext4
0d63 -- 05C4                        ld    (r4+!), ext4
0d64 -- 05C4                        ld    (r4+!), ext4
0d65 -- 05C4                        ld    (r4+!), ext4
0d66 -- 05C4                        ld    (r4+!), ext4
0d67 -- 05C4                        ld    (r4+!), ext4
0d68 -- 0065                        ret
0d69 -- 07C1                        ld    a, B[0xc1]
0d6a -- 8800 0D6D                   add   a, 0x0d6d
0d6c -- 4A60                        bra   (a)
0d6d -- 0E55
0d6e -- 0E55
0d6f -- 1C20                        ld    r4, 0x20
0d70 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0d72 -- 0D04 0800                   ld    (r4+!), 0x0800
0d74 -- 0D04 F000                   ld    (r4+!), 0xf000
0d76 -- 0D04 0000                   ld    (r4+!), 0x0000
0d78 -- 0D04 0AAA                   ld    (r4+!), 0x0aaa
0d7a -- 0D04 F800                   ld    (r4+!), 0xf800
0d7c -- 0D04 0800                   ld    (r4+!), 0x0800
0d7e -- 0D04 0800                   ld    (r4+!), 0x0800
0d80 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0d82 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0d84 -- 07C0                        ld    a, B[0xc0]
0d85 -- 0E27                        ld    A[0x27], a
0d86 -- 0013                        ld    x, a
0d87 -- 0023                        ld    y, a
0d88 -- 0037                        ld    a, p
0d89 -- 9003                        shl   a
0d8a -- 9003                        shl   a
0d8b -- 9003                        shl   a
0d8c -- 0E22                        ld    A[0x22], a
0d8d -- 0E26                        ld    A[0x26], a
0d8e -- 0013                        ld    x, a
0d8f -- 0037                        ld    a, p
0d90 -- 9003                        shl   a
0d91 -- 9003                        shl   a
0d92 -- 9003                        shl   a
0d93 -- 0E21                        ld    A[0x21], a
0d94 -- 0E25                        ld    A[0x25], a
0d95 -- 0E29                        ld    A[0x29], a
0d96 -- 0830 1000                   ld    a, 0x1000
0d98 -- 27C0                        sub   a, B[0xc0]
0d99 -- 0013                        ld    x, a
0d9a -- 0023                        ld    y, a
0d9b -- 0037                        ld    a, p
0d9c -- 9003                        shl   a
0d9d -- 9003                        shl   a
0d9e -- 9003                        shl   a
0d9f -- 0013                        ld    x, a
0da0 -- 0037                        ld    a, p
0da1 -- 9003                        shl   a
0da2 -- 9003                        shl   a
0da3 -- 9003                        shl   a
0da4 -- 0E20                        ld    A[0x20], a
0da5 -- 1D13                        ld    r5, 0x13
0da6 -- 4C00 0E8E                   bra   0x0e8e
0da8 -- 1C20                        ld    r4, 0x20
0da9 -- 0D04 1000                   ld    (r4+!), 0x1000
0dab -- 0D04 1C00                   ld    (r4+!), 0x1c00
0dad -- 0D04 B800                   ld    (r4+!), 0xb800
0daf -- 0D04 3000                   ld    (r4+!), 0x3000
0db1 -- 0D04 0000                   ld    (r4+!), 0x0000
0db3 -- 0D04 F156                   ld    (r4+!), 0xf156
0db5 -- 0D04 1800                   ld    (r4+!), 0x1800
0db7 -- 0D04 0000                   ld    (r4+!), 0x0000
0db9 -- 0D04 0000                   ld    (r4+!), 0x0000
0dbb -- 0D04 02AA                   ld    (r4+!), 0x02aa
0dbd -- 07C0                        ld    a, B[0xc0]
0dbe -- 0E23                        ld    A[0x23], a
0dbf -- 0013                        ld    x, a
0dc0 -- 0023                        ld    y, a
0dc1 -- 0037                        ld    a, p
0dc2 -- 9003                        shl   a
0dc3 -- 9003                        shl   a
0dc4 -- 9003                        shl   a
0dc5 -- 0E22                        ld    A[0x22], a
0dc6 -- 0E26                        ld    A[0x26], a
0dc7 -- 0013                        ld    x, a
0dc8 -- 0037                        ld    a, p
0dc9 -- 9003                        shl   a
0dca -- 9003                        shl   a
0dcb -- 9003                        shl   a
0dcc -- 0E21                        ld    A[0x21], a
0dcd -- 0E25                        ld    A[0x25], a
0dce -- 0E29                        ld    A[0x29], a
0dcf -- 0830 1000                   ld    a, 0x1000
0dd1 -- 27C0                        sub   a, B[0xc0]
0dd2 -- 0013                        ld    x, a
0dd3 -- 0023                        ld    y, a
0dd4 -- 0037                        ld    a, p
0dd5 -- 9003                        shl   a
0dd6 -- 9003                        shl   a
0dd7 -- 9003                        shl   a
0dd8 -- 0013                        ld    x, a
0dd9 -- 0037                        ld    a, p
0dda -- 9003                        shl   a
0ddb -- 9003                        shl   a
0ddc -- 9003                        shl   a
0ddd -- 0E20                        ld    A[0x20], a
0dde -- 1D13                        ld    r5, 0x13
0ddf -- 4C00 0E8E                   bra   0x0e8e
0de1 -- 1C20                        ld    r4, 0x20
0de2 -- 0D04 0400                   ld    (r4+!), 0x0400
0de4 -- 0D04 0955                   ld    (r4+!), 0x0955
0de6 -- 0D04 EC00                   ld    (r4+!), 0xec00
0de8 -- 0D04 0400                   ld    (r4+!), 0x0400
0dea -- 0D04 0955                   ld    (r4+!), 0x0955
0dec -- 0D04 F800                   ld    (r4+!), 0xf800
0dee -- 0D04 0800                   ld    (r4+!), 0x0800
0df0 -- 0D04 0800                   ld    (r4+!), 0x0800
0df2 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0df4 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0df6 -- 07C0                        ld    a, B[0xc0]
0df7 -- 0E23                        ld    A[0x23], a
0df8 -- 0E27                        ld    A[0x27], a
0df9 -- 0013                        ld    x, a
0dfa -- 0023                        ld    y, a
0dfb -- 0037                        ld    a, p
0dfc -- 9003                        shl   a
0dfd -- 9003                        shl   a
0dfe -- 9003                        shl   a
0dff -- 0E22                        ld    A[0x22], a
0e00 -- 0E26                        ld    A[0x26], a
0e01 -- 0013                        ld    x, a
0e02 -- 0037                        ld    a, p
0e03 -- 9003                        shl   a
0e04 -- 9003                        shl   a
0e05 -- 9003                        shl   a
0e06 -- 0E21                        ld    A[0x21], a
0e07 -- 0E25                        ld    A[0x25], a
0e08 -- 0E29                        ld    A[0x29], a
0e09 -- 0830 1000                   ld    a, 0x1000
0e0b -- 27C0                        sub   a, B[0xc0]
0e0c -- 0013                        ld    x, a
0e0d -- 0023                        ld    y, a
0e0e -- 0037                        ld    a, p
0e0f -- 9003                        shl   a
0e10 -- 9003                        shl   a
0e11 -- 9003                        shl   a
0e12 -- 0013                        ld    x, a
0e13 -- 0037                        ld    a, p
0e14 -- 9003                        shl   a
0e15 -- 9003                        shl   a
0e16 -- 9003                        shl   a
0e17 -- 0E20                        ld    A[0x20], a
0e18 -- 1D10                        ld    r5, 0x10
0e19 -- 4C00 0E8E                   bra   0x0e8e
0e1b -- 1C20                        ld    r4, 0x20
0e1c -- 0D04 02AA                   ld    (r4+!), 0x02aa
0e1e -- 0D04 F800                   ld    (r4+!), 0xf800
0e20 -- 0D04 0800                   ld    (r4+!), 0x0800
0e22 -- 0D04 0800                   ld    (r4+!), 0x0800
0e24 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0e26 -- 0D04 0955                   ld    (r4+!), 0x0955
0e28 -- 0D04 EC00                   ld    (r4+!), 0xec00
0e2a -- 0D04 0400                   ld    (r4+!), 0x0400
0e2c -- 0D04 0955                   ld    (r4+!), 0x0955
0e2e -- 0D04 0400                   ld    (r4+!), 0x0400
0e30 -- 07C0                        ld    a, B[0xc0]
0e31 -- 0013                        ld    x, a
0e32 -- 0023                        ld    y, a
0e33 -- 0037                        ld    a, p
0e34 -- 9003                        shl   a
0e35 -- 9003                        shl   a
0e36 -- 9003                        shl   a
0e37 -- 0013                        ld    x, a
0e38 -- 0037                        ld    a, p
0e39 -- 9003                        shl   a
0e3a -- 9003                        shl   a
0e3b -- 9003                        shl   a
0e3c -- 0E29                        ld    A[0x29], a
0e3d -- 0830 1000                   ld    a, 0x1000
0e3f -- 27C0                        sub   a, B[0xc0]
0e40 -- 0E23                        ld    A[0x23], a
0e41 -- 0E27                        ld    A[0x27], a
0e42 -- 0013                        ld    x, a
0e43 -- 0023                        ld    y, a
0e44 -- 0037                        ld    a, p
0e45 -- 9003                        shl   a
0e46 -- 9003                        shl   a
0e47 -- 9003                        shl   a
0e48 -- 0E22                        ld    A[0x22], a
0e49 -- 0E26                        ld    A[0x26], a
0e4a -- 0013                        ld    x, a
0e4b -- 0037                        ld    a, p
0e4c -- 9003                        shl   a
0e4d -- 9003                        shl   a
0e4e -- 9003                        shl   a
0e4f -- 0E20                        ld    A[0x20], a
0e50 -- 0E21                        ld    A[0x21], a
0e51 -- 0E25                        ld    A[0x25], a
0e52 -- 1D13                        ld    r5, 0x13
0e53 -- 4C00 0E8E                   bra   0x0e8e
0e55 -- 1C20                        ld    r4, 0x20
0e56 -- 0D04 02AA                   ld    (r4+!), 0x02aa
0e58 -- 0D04 F156                   ld    (r4+!), 0xf156
0e5a -- 0D04 1800                   ld    (r4+!), 0x1800
0e5c -- 0D04 0000                   ld    (r4+!), 0x0000
0e5e -- 0D04 0000                   ld    (r4+!), 0x0000
0e60 -- 0D04 1C00                   ld    (r4+!), 0x1c00
0e62 -- 0D04 B800                   ld    (r4+!), 0xb800
0e64 -- 0D04 3000                   ld    (r4+!), 0x3000
0e66 -- 0D04 0000                   ld    (r4+!), 0x0000
0e68 -- 0D04 1000                   ld    (r4+!), 0x1000
0e6a -- 07C0                        ld    a, B[0xc0]
0e6b -- 0013                        ld    x, a
0e6c -- 0023                        ld    y, a
0e6d -- 0037                        ld    a, p
0e6e -- 9003                        shl   a
0e6f -- 9003                        shl   a
0e70 -- 9003                        shl   a
0e71 -- 0013                        ld    x, a
0e72 -- 0037                        ld    a, p
0e73 -- 9003                        shl   a
0e74 -- 9003                        shl   a
0e75 -- 9003                        shl   a
0e76 -- 0E29                        ld    A[0x29], a
0e77 -- 0830 1000                   ld    a, 0x1000
0e79 -- 27C0                        sub   a, B[0xc0]
0e7a -- 0E27                        ld    A[0x27], a
0e7b -- 0013                        ld    x, a
0e7c -- 0023                        ld    y, a
0e7d -- 0037                        ld    a, p
0e7e -- 9003                        shl   a
0e7f -- 9003                        shl   a
0e80 -- 9003                        shl   a
0e81 -- 0E22                        ld    A[0x22], a
0e82 -- 0E26                        ld    A[0x26], a
0e83 -- 0013                        ld    x, a
0e84 -- 0037                        ld    a, p
0e85 -- 9003                        shl   a
0e86 -- 9003                        shl   a
0e87 -- 9003                        shl   a
0e88 -- 0E20                        ld    A[0x20], a
0e89 -- 0E21                        ld    A[0x21], a
0e8a -- 0E25                        ld    A[0x25], a
0e8b -- 1D10                        ld    r5, 0x10
0e8c -- 4C00 0E8E                   bra   0x0e8e
0e8e -- 1820                        ld    r0, 0x20
0e8f -- 1C20                        ld    r4, 0x20
0e90 -- B744                        mld   (r0+!), (r4+!)
0e91 -- 8007                        add   a, p
0e92 -- 9003                        shl   a
0e93 -- 9003                        shl   a
0e94 -- 9003                        shl   a
0e95 -- 0E10                        ld    A[0x10], a
0e96 -- B744                        mld   (r0+!), (r4+!)
0e97 -- 9744                        mpya  (r0+!), (r4+!)
0e98 -- 9744                        mpya  (r0+!), (r4+!)
0e99 -- 9744                        mpya  (r0+!), (r4+!)
0e9a -- 8007                        add   a, p
0e9b -- 9003                        shl   a
0e9c -- 9003                        shl   a
0e9d -- 9003                        shl   a
0e9e -- 0E11                        ld    A[0x11], a
0e9f -- B744                        mld   (r0+!), (r4+!)
0ea0 -- 9744                        mpya  (r0+!), (r4+!)
0ea1 -- 9744                        mpya  (r0+!), (r4+!)
0ea2 -- 9744                        mpya  (r0+!), (r4+!)
0ea3 -- 8007                        add   a, p
0ea4 -- 9003                        shl   a
0ea5 -- 9003                        shl   a
0ea6 -- 9003                        shl   a
0ea7 -- 0E12                        ld    A[0x12], a
0ea8 -- B744                        mld   (r0+!), (r4+!)
0ea9 -- 8007                        add   a, p
0eaa -- 9003                        shl   a
0eab -- 9003                        shl   a
0eac -- 9003                        shl   a
0ead -- 0E13                        ld    A[0x13], a
0eae -- 1810                        ld    r0, 0x10
0eaf -- B754                        mld   (r0+!), (r5+!)
0eb0 -- 0305                        ld    -, (r5+!)
0eb1 -- 0305                        ld    -, (r5+!)
0eb2 -- 9754                        mpya  (r0+!), (r5+!)
0eb3 -- 0305                        ld    -, (r5+!)
0eb4 -- 0305                        ld    -, (r5+!)
0eb5 -- 9754                        mpya  (r0+!), (r5+!)
0eb6 -- 0305                        ld    -, (r5+!)
0eb7 -- 0305                        ld    -, (r5+!)
0eb8 -- 9754                        mpya  (r0+!), (r5+!)
0eb9 -- 8007                        add   a, p
0eba -- 9003                        shl   a
0ebb -- 9003                        shl   a
0ebc -- 9003                        shl   a
0ebd -- 0E14                        ld    A[0x14], a
0ebe -- 1331                        ld    a, r5
0ebf -- 3809                        sub   a, 0x09
0ec0 -- 1531                        ld    r5, a
0ec1 -- 1810                        ld    r0, 0x10
0ec2 -- B754                        mld   (r0+!), (r5+!)
0ec3 -- 0305                        ld    -, (r5+!)
0ec4 -- 0305                        ld    -, (r5+!)
0ec5 -- 9754                        mpya  (r0+!), (r5+!)
0ec6 -- 0305                        ld    -, (r5+!)
0ec7 -- 0305                        ld    -, (r5+!)
0ec8 -- 9754                        mpya  (r0+!), (r5+!)
0ec9 -- 0305                        ld    -, (r5+!)
0eca -- 0305                        ld    -, (r5+!)
0ecb -- 9754                        mpya  (r0+!), (r5+!)
0ecc -- 8007                        add   a, p
0ecd -- 9003                        shl   a
0ece -- 9003                        shl   a
0ecf -- 9003                        shl   a
0ed0 -- 0E15                        ld    A[0x15], a
0ed1 -- 1331                        ld    a, r5
0ed2 -- 3809                        sub   a, 0x09
0ed3 -- 1531                        ld    r5, a
0ed4 -- 1810                        ld    r0, 0x10
0ed5 -- B754                        mld   (r0+!), (r5+!)
0ed6 -- 0305                        ld    -, (r5+!)
0ed7 -- 0305                        ld    -, (r5+!)
0ed8 -- 9754                        mpya  (r0+!), (r5+!)
0ed9 -- 0305                        ld    -, (r5+!)
0eda -- 0305                        ld    -, (r5+!)
0edb -- 9754                        mpya  (r0+!), (r5+!)
0edc -- 0305                        ld    -, (r5+!)
0edd -- 0305                        ld    -, (r5+!)
0ede -- 9754                        mpya  (r0+!), (r5+!)
0edf -- 8007                        add   a, p
0ee0 -- 9003                        shl   a
0ee1 -- 9003                        shl   a
0ee2 -- 9003                        shl   a
0ee3 -- 0E16                        ld    A[0x16], a
0ee4 -- 0065                        ret
0ee5 -- 0034                        ld    a, st
0ee6 -- D860                        or    a, 0x60
0ee7 -- 0043                        ld    st, a
0ee8 -- 0830 00C0                   ld    a, 0x00c0
0eea -- 0FE2                        ld    B[0xe2], a
0eeb -- B800                        and   a, 0x00
0eec -- 0FC1                        ld    B[0xc1], a
0eed -- 08E0 7F08                   ld    ext6, 0x7f08
0eef -- 08E0 0018                   ld    ext6, 0x0018
0ef1 -- 000C                        ld    -, ext4
0ef2 -- 003C                        ld    a, ext4
0ef3 -- 0FC0                        ld    B[0xc0], a
0ef4 -- 07F0                        ld    a, B[0xf0]
0ef5 -- 3801                        sub   a, 0x01
0ef6 -- 0FF0                        ld    B[0xf0], a
0ef7 -- 1531                        ld    r5, a
0ef8 -- 0D01 0EFC                   ld    (r5), 0x0efc
0efa -- 4C00 0F84                   bra   0x0f84
0efc -- 07F0                        ld    a, B[0xf0]
0efd -- 3801                        sub   a, 0x01
0efe -- 0FF0                        ld    B[0xf0], a
0eff -- 1531                        ld    r5, a
0f00 -- 0D01 0F04                   ld    (r5), 0x0f04
0f02 -- 4C00 1265                   bra   0x1265
0f04 -- 0D03 15B5                   ld    (r7|00), 0x15b5
0f06 -- 0840 0000                   ld    st, 0x0000
0f08 -- 0880 0000                   ld    ext0, 0x0000
0f0a -- 0880 0000                   ld    ext0, 0x0000
0f0c -- 0840 0060                   ld    st, 0x0060
0f0e -- 4800 0481                   call  0x0481
0f10 -- 0D03 138F                   ld    (r7|00), 0x138f
0f12 -- 0840 0000                   ld    st, 0x0000
0f14 -- 0880 0000                   ld    ext0, 0x0000
0f16 -- 0880 0000                   ld    ext0, 0x0000
0f18 -- 0840 0060                   ld    st, 0x0060
0f1a -- 4800 0481                   call  0x0481
0f1c -- 07F0                        ld    a, B[0xf0]
0f1d -- 3801                        sub   a, 0x01
0f1e -- 0FF0                        ld    B[0xf0], a
0f1f -- 1531                        ld    r5, a
0f20 -- 0D01 0F24                   ld    (r5), 0x0f24
0f22 -- 4C00 0240                   bra   0x0240
0f24 -- 07F0                        ld    a, B[0xf0]
0f25 -- 3801                        sub   a, 0x01
0f26 -- 0FF0                        ld    B[0xf0], a
0f27 -- 1531                        ld    r5, a
0f28 -- 0D01 0F2C                   ld    (r5), 0x0f2c
0f2a -- 4C00 17F3                   bra   0x17f3
0f2c -- 0D03 19B5                   ld    (r7|00), 0x19b5
0f2e -- 0840 0000                   ld    st, 0x0000
0f30 -- 0880 0000                   ld    ext0, 0x0000
0f32 -- 0880 0000                   ld    ext0, 0x0000
0f34 -- 0840 0060                   ld    st, 0x0060
0f36 -- 4800 0481                   call  0x0481
0f38 -- 07F0                        ld    a, B[0xf0]
0f39 -- 3801                        sub   a, 0x01
0f3a -- 0FF0                        ld    B[0xf0], a
0f3b -- 1531                        ld    r5, a
0f3c -- 0D01 0F40                   ld    (r5), 0x0f40
0f3e -- 4C00 18A3                   bra   0x18a3
0f40 -- 4800 2784                   call  0x2784
0f42 -- 07F0                        ld    a, B[0xf0]
0f43 -- 3801                        sub   a, 0x01
0f44 -- 0FF0                        ld    B[0xf0], a
0f45 -- 1531                        ld    r5, a
0f46 -- 0D01 0F4A                   ld    (r5), 0x0f4a
0f48 -- 4C00 1E09                   bra   0x1e09
0f4a -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
0f4c -- 0840 0000                   ld    st, 0x0000
0f4e -- 0880 0000                   ld    ext0, 0x0000
0f50 -- 0880 0000                   ld    ext0, 0x0000
0f52 -- 0840 0060                   ld    st, 0x0060
0f54 -- 4800 0481                   call  0x0481
0f56 -- 07F0                        ld    a, B[0xf0]
0f57 -- 3801                        sub   a, 0x01
0f58 -- 0FF0                        ld    B[0xf0], a
0f59 -- 1531                        ld    r5, a
0f5a -- 0D01 0F5E                   ld    (r5), 0x0f5e
0f5c -- 4C00 1E7D                   bra   0x1e7d
0f5e -- 4800 2794                   call  0x2794
0f60 -- 4C00 0425                   bra   0x0425
0f62 -- 07C1                        ld    a, B[0xc1]
0f63 -- 8800 0F66                   add   a, 0x0f66
0f65 -- 4A60                        bra   (a)
0f66 -- 0F68
0f67 -- 0F7F
0f68 -- 07C0                        ld    a, B[0xc0]
0f69 -- 8800 0020                   add   a, 0x0020
0f6b -- 6800 1001                   cmp   a, 0x1001
0f6d -- 4D70 0F79                   bra   s, 0x0f79
0f6f -- 0830 1000                   ld    a, 0x1000
0f71 -- 07C1                        ld    a, B[0xc1]
0f72 -- 9801                        add   a, 0x01
0f73 -- 0FC1                        ld    B[0xc1], a
0f74 -- 07F0                        ld    a, B[0xf0]
0f75 -- 1531                        ld    r5, a
0f76 -- 9801                        add   a, 0x01
0f77 -- 0FF0                        ld    B[0xf0], a
0f78 -- 0361                        bra   (r5)
0f79 -- 0FC0                        ld    B[0xc0], a
0f7a -- 07F0                        ld    a, B[0xf0]
0f7b -- 1531                        ld    r5, a
0f7c -- 9801                        add   a, 0x01
0f7d -- 0FF0                        ld    B[0xf0], a
0f7e -- 0361                        bra   (r5)
0f7f -- 07F0                        ld    a, B[0xf0]
0f80 -- 1531                        ld    r5, a
0f81 -- 9801                        add   a, 0x01
0f82 -- 0FF0                        ld    B[0xf0], a
0f83 -- 0361                        bra   (r5)
0f84 -- 0C03 1025                   ld    (r3|00), 0x1025
0f86 -- 1D10                        ld    r5, 0x10
0f87 -- 0830 000E                   ld    a, 0x000e
0f89 -- 0A13                        ld    x, ((r3|00)+!)
0f8a -- 0515                        ld    (r5+!), x
0f8b -- 3801                        sub   a, 0x01
0f8c -- 4C70 0F89                   bra   ns, 0x0f89
0f8e -- 4800 0D69                   call  0x0d69
0f90 -- 08E0 7641                   ld    ext6, 0x7641
0f92 -- 08E0 0818                   ld    ext6, 0x0818
0f94 -- 00C0                        ld    ext4, -
0f95 -- 1814                        ld    r0, 0x14
0f96 -- 02C4                        ld    ext4, (r0+!)
0f97 -- 02C4                        ld    ext4, (r0+!)
0f98 -- 02C4                        ld    ext4, (r0+!)
0f99 -- 07C0                        ld    a, B[0xc0]
0f9a -- 9003                        shl   a
0f9b -- 9003                        shl   a
0f9c -- 00C3                        ld    ext4, a
0f9d -- 08E0 7661                   ld    ext6, 0x7661
0f9f -- 08E0 0818                   ld    ext6, 0x0818
0fa1 -- 00C0                        ld    ext4, -
0fa2 -- 1814                        ld    r0, 0x14
0fa3 -- 02C4                        ld    ext4, (r0+!)
0fa4 -- 0234                        ld    a, (r0+!)
0fa5 -- 9006                        neg   a
0fa6 -- 00C3                        ld    ext4, a
0fa7 -- 02C4                        ld    ext4, (r0+!)
0fa8 -- 07C0                        ld    a, B[0xc0]
0fa9 -- 9003                        shl   a
0faa -- 9003                        shl   a
0fab -- 9006                        neg   a
0fac -- 00C3                        ld    ext4, a
0fad -- 08E0 7681                   ld    ext6, 0x7681
0faf -- 08E0 0818                   ld    ext6, 0x0818
0fb1 -- 00C0                        ld    ext4, -
0fb2 -- 1814                        ld    r0, 0x14
0fb3 -- 0234                        ld    a, (r0+!)
0fb4 -- 9006                        neg   a
0fb5 -- 00C3                        ld    ext4, a
0fb6 -- 02C4                        ld    ext4, (r0+!)
0fb7 -- 02C4                        ld    ext4, (r0+!)
0fb8 -- 07C0                        ld    a, B[0xc0]
0fb9 -- 9003                        shl   a
0fba -- 9003                        shl   a
0fbb -- 00C3                        ld    ext4, a
0fbc -- 08E0 76A1                   ld    ext6, 0x76a1
0fbe -- 08E0 0818                   ld    ext6, 0x0818
0fc0 -- 00C0                        ld    ext4, -
0fc1 -- 1814                        ld    r0, 0x14
0fc2 -- 0234                        ld    a, (r0+!)
0fc3 -- 9006                        neg   a
0fc4 -- 00C3                        ld    ext4, a
0fc5 -- 0234                        ld    a, (r0+!)
0fc6 -- 9006                        neg   a
0fc7 -- 00C3                        ld    ext4, a
0fc8 -- 02C4                        ld    ext4, (r0+!)
0fc9 -- 07C0                        ld    a, B[0xc0]
0fca -- 9003                        shl   a
0fcb -- 9003                        shl   a
0fcc -- 9006                        neg   a
0fcd -- 00C3                        ld    ext4, a
0fce -- 0C03 1034                   ld    (r3|00), 0x1034
0fd0 -- 1D10                        ld    r5, 0x10
0fd1 -- 0830 000E                   ld    a, 0x000e
0fd3 -- 0A13                        ld    x, ((r3|00)+!)
0fd4 -- 0515                        ld    (r5+!), x
0fd5 -- 3801                        sub   a, 0x01
0fd6 -- 4C70 0FD3                   bra   ns, 0x0fd3
0fd8 -- 4800 0D69                   call  0x0d69
0fda -- 08E0 7601                   ld    ext6, 0x7601
0fdc -- 08E0 0818                   ld    ext6, 0x0818
0fde -- 00C0                        ld    ext4, -
0fdf -- 1814                        ld    r0, 0x14
0fe0 -- 02C4                        ld    ext4, (r0+!)
0fe1 -- 02C4                        ld    ext4, (r0+!)
0fe2 -- 02C4                        ld    ext4, (r0+!)
0fe3 -- 08C0 0000                   ld    ext4, 0x0000
0fe5 -- 07C0                        ld    a, B[0xc0]
0fe6 -- 9003                        shl   a
0fe7 -- 9003                        shl   a
0fe8 -- 00C3                        ld    ext4, a
0fe9 -- 08E0 7621                   ld    ext6, 0x7621
0feb -- 08E0 0818                   ld    ext6, 0x0818
0fed -- 00C0                        ld    ext4, -
0fee -- 1814                        ld    r0, 0x14
0fef -- 02C4                        ld    ext4, (r0+!)
0ff0 -- 0234                        ld    a, (r0+!)
0ff1 -- 9006                        neg   a
0ff2 -- 00C3                        ld    ext4, a
0ff3 -- 02C4                        ld    ext4, (r0+!)
0ff4 -- 08C0 0000                   ld    ext4, 0x0000
0ff6 -- 07C0                        ld    a, B[0xc0]
0ff7 -- 9003                        shl   a
0ff8 -- 9003                        shl   a
0ff9 -- 9006                        neg   a
0ffa -- 00C3                        ld    ext4, a
0ffb -- 08E0 76C1                   ld    ext6, 0x76c1
0ffd -- 08E0 0818                   ld    ext6, 0x0818
0fff -- 00C0                        ld    ext4, -
1000 -- 1814                        ld    r0, 0x14
1001 -- 0234                        ld    a, (r0+!)
1002 -- 9006                        neg   a
1003 -- 00C3                        ld    ext4, a
1004 -- 02C4                        ld    ext4, (r0+!)
1005 -- 02C4                        ld    ext4, (r0+!)
1006 -- 08C0 0000                   ld    ext4, 0x0000
1008 -- 07C0                        ld    a, B[0xc0]
1009 -- 9003                        shl   a
100a -- 9003                        shl   a
100b -- 00C3                        ld    ext4, a
100c -- 08E0 76E1                   ld    ext6, 0x76e1
100e -- 08E0 0818                   ld    ext6, 0x0818
1010 -- 00C0                        ld    ext4, -
1011 -- 1814                        ld    r0, 0x14
1012 -- 0234                        ld    a, (r0+!)
1013 -- 9006                        neg   a
1014 -- 00C3                        ld    ext4, a
1015 -- 0234                        ld    a, (r0+!)
1016 -- 9006                        neg   a
1017 -- 00C3                        ld    ext4, a
1018 -- 02C4                        ld    ext4, (r0+!)
1019 -- 08C0 0000                   ld    ext4, 0x0000
101b -- 07C0                        ld    a, B[0xc0]
101c -- 9003                        shl   a
101d -- 9003                        shl   a
101e -- 9006                        neg   a
101f -- 00C3                        ld    ext4, a
1020 -- 07F0                        ld    a, B[0xf0]
1021 -- 1531                        ld    r5, a
1022 -- 9801                        add   a, 0x01
1023 -- 0FF0                        ld    B[0xf0], a
1024 -- 0361                        bra   (r5)
1025 -- 0EC0
1026 -- F806
1027 -- 379A
1028 -- 0000
1029 -- 0000
102a -- 1CE0
102b -- F140
102c -- 07FA
102d -- 0225
102e -- FF35
102f -- 0000
1030 -- 02C0
1031 -- 148A
1032 -- F806
1033 -- FD7B
1034 -- BE66
1035 -- F355
1036 -- 37BF
1037 -- DDBC
1038 -- 0000
1039 -- 1CE0
103a -- FD12
103b -- 0CAB
103c -- 0200
103d -- FDA8
103e -- 0000
103f -- 02C0
1040 -- FFB6
1041 -- EF1A
1042 -- FDA0
1043 -- 0C03 1025                   ld    (r3|00), 0x1025
1045 -- 1D10                        ld    r5, 0x10
1046 -- 0830 000E                   ld    a, 0x000e
1048 -- 0A13                        ld    x, ((r3|00)+!)
1049 -- 0515                        ld    (r5+!), x
104a -- 3801                        sub   a, 0x01
104b -- 4C70 1048                   bra   ns, 0x1048
104d -- 07C0                        ld    a, B[0xc0]
104e -- 030A                        ld    -, (r6--)
104f -- 0532                        ld    (r6), a
1050 -- 0830 1000                   ld    a, 0x1000
1052 -- 0FC0                        ld    B[0xc0], a
1053 -- 4800 0D69                   call  0x0d69
1055 -- 0336                        ld    a, (r6+!)
1056 -- 0FC0                        ld    B[0xc0], a
1057 -- 08E0 7641                   ld    ext6, 0x7641
1059 -- 08E0 0818                   ld    ext6, 0x0818
105b -- 00C0                        ld    ext4, -
105c -- 1814                        ld    r0, 0x14
105d -- 02C4                        ld    ext4, (r0+!)
105e -- 02C4                        ld    ext4, (r0+!)
105f -- 02C4                        ld    ext4, (r0+!)
1060 -- 07C0                        ld    a, B[0xc0]
1061 -- 9003                        shl   a
1062 -- 9003                        shl   a
1063 -- 00C3                        ld    ext4, a
1064 -- 08E0 7661                   ld    ext6, 0x7661
1066 -- 08E0 0818                   ld    ext6, 0x0818
1068 -- 00C0                        ld    ext4, -
1069 -- 1814                        ld    r0, 0x14
106a -- 02C4                        ld    ext4, (r0+!)
106b -- 0234                        ld    a, (r0+!)
106c -- 9006                        neg   a
106d -- 00C3                        ld    ext4, a
106e -- 02C4                        ld    ext4, (r0+!)
106f -- 07C0                        ld    a, B[0xc0]
1070 -- 9003                        shl   a
1071 -- 9003                        shl   a
1072 -- 00C3                        ld    ext4, a
1073 -- 08E0 7681                   ld    ext6, 0x7681
1075 -- 08E0 0818                   ld    ext6, 0x0818
1077 -- 00C0                        ld    ext4, -
1078 -- 1814                        ld    r0, 0x14
1079 -- 0234                        ld    a, (r0+!)
107a -- 9006                        neg   a
107b -- 00C3                        ld    ext4, a
107c -- 02C4                        ld    ext4, (r0+!)
107d -- 02C4                        ld    ext4, (r0+!)
107e -- 07C0                        ld    a, B[0xc0]
107f -- 9003                        shl   a
1080 -- 9003                        shl   a
1081 -- 00C3                        ld    ext4, a
1082 -- 08E0 76A1                   ld    ext6, 0x76a1
1084 -- 08E0 0818                   ld    ext6, 0x0818
1086 -- 00C0                        ld    ext4, -
1087 -- 1814                        ld    r0, 0x14
1088 -- 0234                        ld    a, (r0+!)
1089 -- 9006                        neg   a
108a -- 00C3                        ld    ext4, a
108b -- 0234                        ld    a, (r0+!)
108c -- 9006                        neg   a
108d -- 00C3                        ld    ext4, a
108e -- 02C4                        ld    ext4, (r0+!)
108f -- 07C0                        ld    a, B[0xc0]
1090 -- 9003                        shl   a
1091 -- 9003                        shl   a
1092 -- 00C3                        ld    ext4, a
1093 -- 0C03 1034                   ld    (r3|00), 0x1034
1095 -- 1D10                        ld    r5, 0x10
1096 -- 0830 000E                   ld    a, 0x000e
1098 -- 0A13                        ld    x, ((r3|00)+!)
1099 -- 0515                        ld    (r5+!), x
109a -- 3801                        sub   a, 0x01
109b -- 4C70 1098                   bra   ns, 0x1098
109d -- 07C0                        ld    a, B[0xc0]
109e -- 030A                        ld    -, (r6--)
109f -- 0532                        ld    (r6), a
10a0 -- 0830 1000                   ld    a, 0x1000
10a2 -- 0FC0                        ld    B[0xc0], a
10a3 -- 4800 0D69                   call  0x0d69
10a5 -- 0336                        ld    a, (r6+!)
10a6 -- 0FC0                        ld    B[0xc0], a
10a7 -- 08E0 7601                   ld    ext6, 0x7601
10a9 -- 08E0 0818                   ld    ext6, 0x0818
10ab -- 00C0                        ld    ext4, -
10ac -- 1814                        ld    r0, 0x14
10ad -- 02C4                        ld    ext4, (r0+!)
10ae -- 02C4                        ld    ext4, (r0+!)
10af -- 02C4                        ld    ext4, (r0+!)
10b0 -- 07C0                        ld    a, B[0xc0]
10b1 -- 9003                        shl   a
10b2 -- 9003                        shl   a
10b3 -- 00C3                        ld    ext4, a
10b4 -- 08E0 7621                   ld    ext6, 0x7621
10b6 -- 08E0 0818                   ld    ext6, 0x0818
10b8 -- 00C0                        ld    ext4, -
10b9 -- 1814                        ld    r0, 0x14
10ba -- 02C4                        ld    ext4, (r0+!)
10bb -- 0234                        ld    a, (r0+!)
10bc -- 9006                        neg   a
10bd -- 00C3                        ld    ext4, a
10be -- 02C4                        ld    ext4, (r0+!)
10bf -- 07C0                        ld    a, B[0xc0]
10c0 -- 9003                        shl   a
10c1 -- 9003                        shl   a
10c2 -- 00C3                        ld    ext4, a
10c3 -- 08E0 76C1                   ld    ext6, 0x76c1
10c5 -- 08E0 0818                   ld    ext6, 0x0818
10c7 -- 00C0                        ld    ext4, -
10c8 -- 1814                        ld    r0, 0x14
10c9 -- 0234                        ld    a, (r0+!)
10ca -- 9006                        neg   a
10cb -- 00C3                        ld    ext4, a
10cc -- 02C4                        ld    ext4, (r0+!)
10cd -- 02C4                        ld    ext4, (r0+!)
10ce -- 07C0                        ld    a, B[0xc0]
10cf -- 9003                        shl   a
10d0 -- 9003                        shl   a
10d1 -- 00C3                        ld    ext4, a
10d2 -- 08E0 76E1                   ld    ext6, 0x76e1
10d4 -- 08E0 0818                   ld    ext6, 0x0818
10d6 -- 00C0                        ld    ext4, -
10d7 -- 1814                        ld    r0, 0x14
10d8 -- 0234                        ld    a, (r0+!)
10d9 -- 9006                        neg   a
10da -- 00C3                        ld    ext4, a
10db -- 0234                        ld    a, (r0+!)
10dc -- 9006                        neg   a
10dd -- 00C3                        ld    ext4, a
10de -- 02C4                        ld    ext4, (r0+!)
10df -- 07C0                        ld    a, B[0xc0]
10e0 -- 9003                        shl   a
10e1 -- 9003                        shl   a
10e2 -- 00C3                        ld    ext4, a
10e3 -- 07F0                        ld    a, B[0xf0]
10e4 -- 1531                        ld    r5, a
10e5 -- 9801                        add   a, 0x01
10e6 -- 0FF0                        ld    B[0xf0], a
10e7 -- 0361                        bra   (r5)
10e8 -- 0034                        ld    a, st
10e9 -- D860                        or    a, 0x60
10ea -- 0043                        ld    st, a
10eb -- 0830 00C0                   ld    a, 0x00c0
10ed -- 0FE2                        ld    B[0xe2], a
10ee -- 07F0                        ld    a, B[0xf0]
10ef -- 3801                        sub   a, 0x01
10f0 -- 0FF0                        ld    B[0xf0], a
10f1 -- 1531                        ld    r5, a
10f2 -- 0D01 10F6                   ld    (r5), 0x10f6
10f4 -- 4C00 1265                   bra   0x1265
10f6 -- 0D03 15B5                   ld    (r7|00), 0x15b5
10f8 -- 0840 0000                   ld    st, 0x0000
10fa -- 0880 0000                   ld    ext0, 0x0000
10fc -- 0880 0000                   ld    ext0, 0x0000
10fe -- 0840 0060                   ld    st, 0x0060
1100 -- 4800 0481                   call  0x0481
1102 -- 0D03 148D                   ld    (r7|00), 0x148d
1104 -- 0840 0000                   ld    st, 0x0000
1106 -- 0880 0000                   ld    ext0, 0x0000
1108 -- 0880 0000                   ld    ext0, 0x0000
110a -- 0840 0060                   ld    st, 0x0060
110c -- 4800 0481                   call  0x0481
110e -- 07F0                        ld    a, B[0xf0]
110f -- 3801                        sub   a, 0x01
1110 -- 0FF0                        ld    B[0xf0], a
1111 -- 1531                        ld    r5, a
1112 -- 0D01 1116                   ld    (r5), 0x1116
1114 -- 4C00 0240                   bra   0x0240
1116 -- 07F0                        ld    a, B[0xf0]
1117 -- 3801                        sub   a, 0x01
1118 -- 0FF0                        ld    B[0xf0], a
1119 -- 1531                        ld    r5, a
111a -- 0D01 111E                   ld    (r5), 0x111e
111c -- 4C00 17F3                   bra   0x17f3
111e -- 0D03 19B5                   ld    (r7|00), 0x19b5
1120 -- 0840 0000                   ld    st, 0x0000
1122 -- 0880 0000                   ld    ext0, 0x0000
1124 -- 0880 0000                   ld    ext0, 0x0000
1126 -- 0840 0060                   ld    st, 0x0060
1128 -- 4800 0481                   call  0x0481
112a -- 07F0                        ld    a, B[0xf0]
112b -- 3801                        sub   a, 0x01
112c -- 0FF0                        ld    B[0xf0], a
112d -- 1531                        ld    r5, a
112e -- 0D01 1132                   ld    (r5), 0x1132
1130 -- 4C00 1868                   bra   0x1868
1132 -- 4800 2784                   call  0x2784
1134 -- 07E3                        ld    a, B[0xe3]
1135 -- A000                        and   a, -
1136 -- 4D50 1154                   bra   z, 0x1154
1138 -- 07F0                        ld    a, B[0xf0]
1139 -- 3801                        sub   a, 0x01
113a -- 0FF0                        ld    B[0xf0], a
113b -- 1531                        ld    r5, a
113c -- 0D01 1140                   ld    (r5), 0x1140
113e -- 4C00 1E09                   bra   0x1e09
1140 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
1142 -- 0840 0000                   ld    st, 0x0000
1144 -- 0880 0000                   ld    ext0, 0x0000
1146 -- 0880 0000                   ld    ext0, 0x0000
1148 -- 0840 0060                   ld    st, 0x0060
114a -- 4800 0481                   call  0x0481
114c -- 07F0                        ld    a, B[0xf0]
114d -- 3801                        sub   a, 0x01
114e -- 0FF0                        ld    B[0xf0], a
114f -- 1531                        ld    r5, a
1150 -- 0D01 1154                   ld    (r5), 0x1154
1152 -- 4C00 1E76                   bra   0x1e76
1154 -- 4800 2794                   call  0x2794
1156 -- 4C00 0425                   bra   0x0425
1158 -- 0034                        ld    a, st
1159 -- D860                        or    a, 0x60
115a -- 0043                        ld    st, a
115b -- 0830 00C0                   ld    a, 0x00c0
115d -- 0FE2                        ld    B[0xe2], a
115e -- 07F0                        ld    a, B[0xf0]
115f -- 3801                        sub   a, 0x01
1160 -- 0FF0                        ld    B[0xf0], a
1161 -- 1531                        ld    r5, a
1162 -- 0D01 1166                   ld    (r5), 0x1166
1164 -- 4C00 1265                   bra   0x1265
1166 -- 0D03 15B5                   ld    (r7|00), 0x15b5
1168 -- 0840 0000                   ld    st, 0x0000
116a -- 0880 0000                   ld    ext0, 0x0000
116c -- 0880 0000                   ld    ext0, 0x0000
116e -- 0840 0060                   ld    st, 0x0060
1170 -- 4800 0481                   call  0x0481
1172 -- 0D03 1532                   ld    (r7|00), 0x1532
1174 -- 0840 0000                   ld    st, 0x0000
1176 -- 0880 0000                   ld    ext0, 0x0000
1178 -- 0880 0000                   ld    ext0, 0x0000
117a -- 0840 0060                   ld    st, 0x0060
117c -- 4800 0481                   call  0x0481
117e -- 07F0                        ld    a, B[0xf0]
117f -- 3801                        sub   a, 0x01
1180 -- 0FF0                        ld    B[0xf0], a
1181 -- 1531                        ld    r5, a
1182 -- 0D01 1186                   ld    (r5), 0x1186
1184 -- 4C00 0240                   bra   0x0240
1186 -- 07F0                        ld    a, B[0xf0]
1187 -- 3801                        sub   a, 0x01
1188 -- 0FF0                        ld    B[0xf0], a
1189 -- 1531                        ld    r5, a
118a -- 0D01 118E                   ld    (r5), 0x118e
118c -- 4C00 17F3                   bra   0x17f3
118e -- 0D03 19B5                   ld    (r7|00), 0x19b5
1190 -- 0840 0000                   ld    st, 0x0000
1192 -- 0880 0000                   ld    ext0, 0x0000
1194 -- 0880 0000                   ld    ext0, 0x0000
1196 -- 0840 0060                   ld    st, 0x0060
1198 -- 4800 0481                   call  0x0481
119a -- 07F0                        ld    a, B[0xf0]
119b -- 3801                        sub   a, 0x01
119c -- 0FF0                        ld    B[0xf0], a
119d -- 1531                        ld    r5, a
119e -- 0D01 11A2                   ld    (r5), 0x11a2
11a0 -- 4C00 1843                   bra   0x1843
11a2 -- 4800 2784                   call  0x2784
11a4 -- 07F0                        ld    a, B[0xf0]
11a5 -- 3801                        sub   a, 0x01
11a6 -- 0FF0                        ld    B[0xf0], a
11a7 -- 1531                        ld    r5, a
11a8 -- 0D01 11AC                   ld    (r5), 0x11ac
11aa -- 4C00 1E09                   bra   0x1e09
11ac -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
11ae -- 0840 0000                   ld    st, 0x0000
11b0 -- 0880 0000                   ld    ext0, 0x0000
11b2 -- 0880 0000                   ld    ext0, 0x0000
11b4 -- 0840 0060                   ld    st, 0x0060
11b6 -- 4800 0481                   call  0x0481
11b8 -- 07F0                        ld    a, B[0xf0]
11b9 -- 3801                        sub   a, 0x01
11ba -- 0FF0                        ld    B[0xf0], a
11bb -- 1531                        ld    r5, a
11bc -- 0D01 11C0                   ld    (r5), 0x11c0
11be -- 4C00 1EA7                   bra   0x1ea7
11c0 -- 07F0                        ld    a, B[0xf0]
11c1 -- 3801                        sub   a, 0x01
11c2 -- 0FF0                        ld    B[0xf0], a
11c3 -- 1531                        ld    r5, a
11c4 -- 0D01 11C8                   ld    (r5), 0x11c8
11c6 -- 4C00 17F3                   bra   0x17f3
11c8 -- 0D03 19B5                   ld    (r7|00), 0x19b5
11ca -- 0840 0000                   ld    st, 0x0000
11cc -- 0880 0000                   ld    ext0, 0x0000
11ce -- 0880 0000                   ld    ext0, 0x0000
11d0 -- 0840 0060                   ld    st, 0x0060
11d2 -- 4800 0481                   call  0x0481
11d4 -- 07F0                        ld    a, B[0xf0]
11d5 -- 3801                        sub   a, 0x01
11d6 -- 0FF0                        ld    B[0xf0], a
11d7 -- 1531                        ld    r5, a
11d8 -- 0D01 11DC                   ld    (r5), 0x11dc
11da -- 4C00 18CD                   bra   0x18cd
11dc -- 07E3                        ld    a, B[0xe3]
11dd -- A000                        and   a, -
11de -- 4D50 11FC                   bra   z, 0x11fc
11e0 -- 07F0                        ld    a, B[0xf0]
11e1 -- 3801                        sub   a, 0x01
11e2 -- 0FF0                        ld    B[0xf0], a
11e3 -- 1531                        ld    r5, a
11e4 -- 0D01 11E8                   ld    (r5), 0x11e8
11e6 -- 4C00 1E09                   bra   0x1e09
11e8 -- 0D03 1EB7                   ld    (r7|00), 0x1eb7
11ea -- 0840 0000                   ld    st, 0x0000
11ec -- 0880 0000                   ld    ext0, 0x0000
11ee -- 0880 0000                   ld    ext0, 0x0000
11f0 -- 0840 0060                   ld    st, 0x0060
11f2 -- 4800 0481                   call  0x0481
11f4 -- 07F0                        ld    a, B[0xf0]
11f5 -- 3801                        sub   a, 0x01
11f6 -- 0FF0                        ld    B[0xf0], a
11f7 -- 1531                        ld    r5, a
11f8 -- 0D01 11FC                   ld    (r5), 0x11fc
11fa -- 4C00 1E90                   bra   0x1e90
11fc -- 4800 2794                   call  0x2794
11fe -- 4C00 0425                   bra   0x0425
1200 -- 0610                        ld    a, A[0x10]
1201 -- A800 7000                   and   a, 0x7000
1203 -- 4D50 121D                   bra   z, 0x121d
1205 -- 6800 7000                   cmp   a, 0x7000
1207 -- 4950 1254                   call  z, 0x1254
1209 -- 0610                        ld    a, A[0x10]
120a -- A800 0100                   and   a, 0x0100
120c -- 4C50 121E                   bra   nz, 0x121e
120e -- 0610                        ld    a, A[0x10]
120f -- A800 0200                   and   a, 0x0200
1211 -- 4C50 1226                   bra   nz, 0x1226
1213 -- 0610                        ld    a, A[0x10]
1214 -- A800 0800                   and   a, 0x0800
1216 -- 4C50 122E                   bra   nz, 0x122e
1218 -- 0610                        ld    a, A[0x10]
1219 -- A800 0400                   and   a, 0x0400
121b -- 4C50 1236                   bra   nz, 0x1236
121d -- 0065                        ret
121e -- 1C11                        ld    r4, 0x11
121f -- 4800 123E                   call  0x123e
1221 -- 0330                        ld    a, (r4)
1222 -- 8800 0100                   add   a, 0x0100
1224 -- 0530                        ld    (r4), a
1225 -- 0065                        ret
1226 -- 1C11                        ld    r4, 0x11
1227 -- 4800 123E                   call  0x123e
1229 -- 0330                        ld    a, (r4)
122a -- 2800 0100                   sub   a, 0x0100
122c -- 0530                        ld    (r4), a
122d -- 0065                        ret
122e -- 1C14                        ld    r4, 0x14
122f -- 4800 123E                   call  0x123e
1231 -- 0330                        ld    a, (r4)
1232 -- 8800 0040                   add   a, 0x0040
1234 -- 0530                        ld    (r4), a
1235 -- 0065                        ret
1236 -- 1C14                        ld    r4, 0x14
1237 -- 4800 123E                   call  0x123e
1239 -- 0330                        ld    a, (r4)
123a -- 2800 0040                   sub   a, 0x0040
123c -- 0530                        ld    (r4), a
123d -- 0065                        ret
123e -- 0610                        ld    a, A[0x10]
123f -- A800 4000                   and   a, 0x4000
1241 -- 4C50 124E                   bra   nz, 0x124e
1243 -- 0610                        ld    a, A[0x10]
1244 -- A800 1000                   and   a, 0x1000
1246 -- 4C50 124F                   bra   nz, 0x124f
1248 -- 0610                        ld    a, A[0x10]
1249 -- A800 2000                   and   a, 0x2000
124b -- 4C50 1251                   bra   nz, 0x1251
124d -- 0065                        ret
124e -- 0065                        ret
124f -- 0304                        ld    -, (r4+!)
1250 -- 0065                        ret
1251 -- 0304                        ld    -, (r4+!)
1252 -- 0304                        ld    -, (r4+!)
1253 -- 0065                        ret
1254 -- 1C11                        ld    r4, 0x11
1255 -- 0C03 125F                   ld    (r3|00), 0x125f
1257 -- 0830 0005                   ld    a, 0x0005
1259 -- 0A13                        ld    x, ((r3|00)+!)
125a -- 0514                        ld    (r4+!), x
125b -- 3801                        sub   a, 0x01
125c -- 4C70 1259                   bra   ns, 0x1259
125e -- 0065                        ret
125f -- 0000
1260 -- F400
1261 -- 2A00
1262 -- 0040
1263 -- 0000
1264 -- 0000
1265 -- 1C20                        ld    r4, 0x20
1266 -- 0D04 0FFF                   ld    (r4+!), 0x0fff
1268 -- 0D04 0400                   ld    (r4+!), 0x0400
126a -- 07F0                        ld    a, B[0xf0]
126b -- 1531                        ld    r5, a
126c -- 9801                        add   a, 0x01
126d -- 0FF0                        ld    B[0xf0], a
126e -- 0361                        bra   (r5)
126f -- 8240
1270 -- 011D
1271 -- 0830 7600                   ld    a, 0x7600
1273 -- 1C18                        ld    r4, 0x18
1274 -- 4800 00CF                   call  0x00cf
1276 -- 0830 7620                   ld    a, 0x7620
1278 -- 1C10                        ld    r4, 0x10
1279 -- 4800 00CF                   call  0x00cf
127b -- 4800 010C                   call  0x010c
127d -- 4800 014A                   call  0x014a
127f -- 08E0 7607                   ld    ext6, 0x7607
1281 -- 08E0 0818                   ld    ext6, 0x0818
1283 -- 00C0                        ld    ext4, -
1284 -- 4800 00E0                   call  0x00e0
1286 -- 0830 7620                   ld    a, 0x7620
1288 -- 1C10                        ld    r4, 0x10
1289 -- 4800 00CF                   call  0x00cf
128b -- 4800 015A                   call  0x015a
128d -- 08E0 7627                   ld    ext6, 0x7627
128f -- 08E0 0818                   ld    ext6, 0x0818
1291 -- 00C0                        ld    ext4, -
1292 -- 4800 00E0                   call  0x00e0
1294 -- 0830 7640                   ld    a, 0x7640
1296 -- 0E04                        ld    A[0x04], a
1297 -- 07C8                        ld    a, B[0xc8]
1298 -- A000                        and   a, -
1299 -- 0830 0001                   ld    a, 0x0001
129b -- 4C50 026D                   bra   nz, 0x026d
129d -- 9801                        add   a, 0x01
129e -- 0E05                        ld    A[0x05], a
129f -- 0604                        ld    a, A[0x04]
12a0 -- 1C18                        ld    r4, 0x18
12a1 -- 4800 00CF                   call  0x00cf
12a3 -- 4800 017A                   call  0x017a
12a5 -- 4800 00DB                   call  0x00db
12a7 -- 0604                        ld    a, A[0x04]
12a8 -- 9820                        add   a, 0x20
12a9 -- 0E04                        ld    A[0x04], a
12aa -- 0605                        ld    a, A[0x05]
12ab -- 3801                        sub   a, 0x01
12ac -- 0E05                        ld    A[0x05], a
12ad -- 4C70 026E                   bra   ns, 0x026e
12af -- 07C8                        ld    a, B[0xc8]
12b0 -- A000                        and   a, -
12b1 -- 4D50 028F                   bra   z, 0x028f
12b3 -- 0830 76A0                   ld    a, 0x76a0
12b5 -- 1C18                        ld    r4, 0x18
12b6 -- 4800 00CF                   call  0x00cf
12b8 -- 4800 01CA                   call  0x01ca
12ba -- 08E0 76A7                   ld    ext6, 0x76a7
12bc -- 000E                        ld    -, ext6
12bd -- 00C0                        ld    ext4, -
12be -- 4800 00E0                   call  0x00e0
12c0 -- 1804                        ld    r0, 0x04
12c1 -- 0C04 76C0                   ld    (r0+!), 0x76c0
12c3 -- 0C04 0004                   ld    (r0+!), 0x0004
12c5 -- 0604                        ld    a, A[0x04]
12c6 -- 1C18                        ld    r4, 0x18
12c7 -- 4800 00CF                   call  0x00cf
12c9 -- 0718                        ld    a, B[0x18]
12ca -- A000                        and   a, -
12cb -- 4D50 02A0                   bra   z, 0x02a0
12cd -- 4800 015A                   call  0x015a
12cf -- 4800 00DB                   call  0x00db
12d1 -- 0604                        ld    a, A[0x04]
12d2 -- 9820                        add   a, 0x20
12d3 -- 0E04                        ld    A[0x04], a
12d4 -- 0605                        ld    a, A[0x05]
12d5 -- 3801                        sub   a, 0x01
12d6 -- 0E05                        ld    A[0x05], a
12d7 -- 4C70 0294                   bra   ns, 0x0294
12d9 -- 0830 7760                   ld    a, 0x7760
12db -- 0E04                        ld    A[0x04], a
12dc -- 0830 000E                   ld    a, 0x000e
12de -- 0E06                        ld    A[0x06], a
12df -- 0604                        ld    a, A[0x04]
12e0 -- 1C10                        ld    r4, 0x10
12e1 -- 4800 00CF                   call  0x00cf
12e3 -- 0710                        ld    a, B[0x10]
12e4 -- A000                        and   a, -
12e5 -- 4D50 02BF                   bra   z, 0x02bf
12e7 -- 4800 01E4                   call  0x01e4
12e9 -- 4800 00DB                   call  0x00db
12eb -- 0604                        ld    a, A[0x04]
12ec -- 9820                        add   a, 0x20
12ed -- 0E04                        ld    A[0x04], a
12ee -- 4C00 02C9                   bra   0x02c9
12f0 -- 0604                        ld    a, A[0x04]
12f1 -- 9860                        add   a, 0x60
12f2 -- 0E04                        ld    A[0x04], a
12f3 -- 0606                        ld    a, A[0x06]
12f4 -- 3801                        sub   a, 0x01
12f5 -- 0E06                        ld    A[0x06], a
12f6 -- 4C70 02AE                   bra   ns, 0x02ae
12f8 -- 4C00 02E5                   bra   0x02e5
12fa -- 0830 0001                   ld    a, 0x0001
12fc -- 0E05                        ld    A[0x05], a
12fd -- 0604                        ld    a, A[0x04]
12fe -- 1C18                        ld    r4, 0x18
12ff -- 4800 00CF                   call  0x00cf
1301 -- 0718                        ld    a, B[0x18]
1302 -- A000                        and   a, -
1303 -- 4D50 02D8                   bra   z, 0x02d8
1305 -- 4800 020B                   call  0x020b
1307 -- 4800 00DB                   call  0x00db
1309 -- 0604                        ld    a, A[0x04]
130a -- 9820                        add   a, 0x20
130b -- 0E04                        ld    A[0x04], a
130c -- 0605                        ld    a, A[0x05]
130d -- 3801                        sub   a, 0x01
130e -- 0E05                        ld    A[0x05], a
130f -- 4C70 02CC                   bra   ns, 0x02cc
1311 -- 0606                        ld    a, A[0x06]
1312 -- 3801                        sub   a, 0x01
1313 -- 0E06                        ld    A[0x06], a
1314 -- 4C70 02AE                   bra   ns, 0x02ae
1316 -- 0830 7D00                   ld    a, 0x7d00
1318 -- 1C10                        ld    r4, 0x10
1319 -- 4800 00CF                   call  0x00cf
131b -- 0710                        ld    a, B[0x10]
131c -- A000                        and   a, -
131d -- 4D50 02F7                   bra   z, 0x02f7
131f -- 4800 0221                   call  0x0221
1321 -- 08E0 7D07                   ld    ext6, 0x7d07
1323 -- 08E0 0818                   ld    ext6, 0x0818
1325 -- 00C0                        ld    ext4, -
1326 -- 4800 00E0                   call  0x00e0
1328 -- 07F0                        ld    a, B[0xf0]
1329 -- 1531                        ld    r5, a
132a -- 9801                        add   a, 0x01
132b -- 0FF0                        ld    B[0xf0], a
132c -- 0361                        bra   (r5)
132d -- 0830 7600                   ld    a, 0x7600
132f -- 1C18                        ld    r4, 0x18
1330 -- 4800 00CF                   call  0x00cf
1332 -- 0830 7620                   ld    a, 0x7620
1334 -- 1C10                        ld    r4, 0x10
1335 -- 4800 00CF                   call  0x00cf
1337 -- 4800 010C                   call  0x010c
1339 -- 4800 014A                   call  0x014a
133b -- 08E0 7607                   ld    ext6, 0x7607
133d -- 08E0 0818                   ld    ext6, 0x0818
133f -- 00C0                        ld    ext4, -
1340 -- 4800 00E0                   call  0x00e0
1342 -- 0830 7620                   ld    a, 0x7620
1344 -- 1C10                        ld    r4, 0x10
1345 -- 4800 00CF                   call  0x00cf
1347 -- 4800 01E4                   call  0x01e4
1349 -- 08E0 7627                   ld    ext6, 0x7627
134b -- 08E0 0818                   ld    ext6, 0x0818
134d -- 00C0                        ld    ext4, -
134e -- 4800 00E0                   call  0x00e0
1350 -- 0830 7640                   ld    a, 0x7640
1352 -- 0E04                        ld    A[0x04], a
1353 -- 0830 0002                   ld    a, 0x0002
1355 -- 0E05                        ld    A[0x05], a
1356 -- 0604                        ld    a, A[0x04]
1357 -- 1C18                        ld    r4, 0x18
1358 -- 4800 00CF                   call  0x00cf
135a -- 4800 020B                   call  0x020b
135c -- 4800 00DB                   call  0x00db
135e -- 0604                        ld    a, A[0x04]
135f -- 9820                        add   a, 0x20
1360 -- 0E04                        ld    A[0x04], a
1361 -- 0605                        ld    a, A[0x05]
1362 -- 3801                        sub   a, 0x01
1363 -- 0E05                        ld    A[0x05], a
1364 -- 4C70 0325                   bra   ns, 0x0325
1366 -- 1804                        ld    r0, 0x04
1367 -- 0C04 76C0                   ld    (r0+!), 0x76c0
1369 -- 0C04 0004                   ld    (r0+!), 0x0004
136b -- 0604                        ld    a, A[0x04]
136c -- 1C18                        ld    r4, 0x18
136d -- 4800 00CF                   call  0x00cf
136f -- 0718                        ld    a, B[0x18]
1370 -- A000                        and   a, -
1371 -- 4D50 0346                   bra   z, 0x0346
1373 -- 4800 01E4                   call  0x01e4
1375 -- 4800 00DB                   call  0x00db
1377 -- 0604                        ld    a, A[0x04]
1378 -- 9820                        add   a, 0x20
1379 -- 0E04                        ld    A[0x04], a
137a -- 0605                        ld    a, A[0x05]
137b -- 3801                        sub   a, 0x01
137c -- 0E05                        ld    A[0x05], a
137d -- 4C70 033A                   bra   ns, 0x033a
137f -- 4C00 02A8                   bra   0x02a8
1381 -- 08E0 7601                   ld    ext6, 0x7601
1383 -- 08E0 0818                   ld    ext6, 0x0818
1385 -- 000C                        ld    -, ext4
1386 -- 1CC0                        ld    r4, 0xc0
1387 -- 05C4                        ld    (r4+!), ext4
1388 -- 05C4                        ld    (r4+!), ext4
1389 -- 05C4                        ld    (r4+!), ext4
138a -- 05C4                        ld    (r4+!), ext4
138b -- 05C4                        ld    (r4+!), ext4
138c -- 05C4                        ld    (r4+!), ext4
138d -- 4C00 0308                   bra   0x0308
138f -- 8240
1390 -- 0037
1391 -- 1804                        ld    r0, 0x04
1392 -- 0C04 7600                   ld    (r0+!), 0x7600
1394 -- 0C04 0007                   ld    (r0+!), 0x0007
1396 -- 0604                        ld    a, A[0x04]
1397 -- 1C10                        ld    r4, 0x10
1398 -- 4800 00CF                   call  0x00cf
139a -- 0710                        ld    a, B[0x10]
139b -- A000                        and   a, -
139c -- 4D50 0251                   bra   z, 0x0251
139e -- 4800 025E                   call  0x025e
13a0 -- 4800 00DB                   call  0x00db
13a2 -- 0604                        ld    a, A[0x04]
13a3 -- 9820                        add   a, 0x20
13a4 -- 0E04                        ld    A[0x04], a
13a5 -- 0605                        ld    a, A[0x05]
13a6 -- 3801                        sub   a, 0x01
13a7 -- 0E05                        ld    A[0x05], a
13a8 -- 4C70 0245                   bra   ns, 0x0245
13aa -- 07F0                        ld    a, B[0xf0]
13ab -- 1531                        ld    r5, a
13ac -- 9801                        add   a, 0x01
13ad -- 0FF0                        ld    B[0xf0], a
13ae -- 0361                        bra   (r5)
13af -- 1910                        ld    r1, 0x10
13b0 -- 0810 0400                   ld    x, 0x0400
13b2 -- 4800 00C1                   call  0x00c1
13b4 -- 1810                        ld    r0, 0x10
13b5 -- 0715                        ld    a, B[0x15]
13b6 -- 0433                        ld    (r3|00), a
13b7 -- 4800 007C                   call  0x007c
13b9 -- 0714                        ld    a, B[0x14]
13ba -- 0433                        ld    (r3|00), a
13bb -- 4800 0067                   call  0x0067
13bd -- 0716                        ld    a, B[0x16]
13be -- 0433                        ld    (r3|00), a
13bf -- 4800 0093                   call  0x0093
13c1 -- 0711                        ld    a, B[0x11]
13c2 -- 0433                        ld    (r3|00), a
13c3 -- 0712                        ld    a, B[0x12]
13c4 -- 0437                        ld    (r3|01), a
13c5 -- 0713                        ld    a, B[0x13]
13c6 -- 043B                        ld    (r3|10), a
13c7 -- 4C00 0000                   bra   0x0000
13c9 -- 8240
13ca -- 009E
13cb -- 0830 7880                   ld    a, 0x7880
13cd -- 0E04                        ld    A[0x04], a
13ce -- 4C00 0248                   bra   0x0248
13d0 -- 0830 7600                   ld    a, 0x7600
13d2 -- 0E04                        ld    A[0x04], a
13d3 -- 0604                        ld    a, A[0x04]
13d4 -- 1C18                        ld    r4, 0x18
13d5 -- 4800 00CF                   call  0x00cf
13d7 -- 0604                        ld    a, A[0x04]
13d8 -- 9820                        add   a, 0x20
13d9 -- 1C10                        ld    r4, 0x10
13da -- 4800 00CF                   call  0x00cf
13dc -- 4800 010C                   call  0x010c
13de -- 4800 014A                   call  0x014a
13e0 -- 4800 00DB                   call  0x00db
13e2 -- 0604                        ld    a, A[0x04]
13e3 -- 9820                        add   a, 0x20
13e4 -- 0E04                        ld    A[0x04], a
13e5 -- 1C10                        ld    r4, 0x10
13e6 -- 4800 00CF                   call  0x00cf
13e8 -- 0710                        ld    a, B[0x10]
13e9 -- A000                        and   a, -
13ea -- 7801                        cmp   a, 0x01
13eb -- 4950 015A                   call  z, 0x015a
13ed -- 7802                        cmp   a, 0x02
13ee -- 4950 01E4                   call  z, 0x01e4
13f0 -- 4800 00DB                   call  0x00db
13f2 -- 0604                        ld    a, A[0x04]
13f3 -- 9820                        add   a, 0x20
13f4 -- 0E04                        ld    A[0x04], a
13f5 -- 0830 0002                   ld    a, 0x0002
13f7 -- 0E05                        ld    A[0x05], a
13f8 -- 0604                        ld    a, A[0x04]
13f9 -- 1C18                        ld    r4, 0x18
13fa -- 4800 00CF                   call  0x00cf
13fc -- 0718                        ld    a, B[0x18]
13fd -- A000                        and   a, -
13fe -- 7801                        cmp   a, 0x01
13ff -- 4950 017A                   call  z, 0x017a
1401 -- 7802                        cmp   a, 0x02
1402 -- 4950 020B                   call  z, 0x020b
1404 -- 4800 00DB                   call  0x00db
1406 -- 0604                        ld    a, A[0x04]
1407 -- 9820                        add   a, 0x20
1408 -- 0E04                        ld    A[0x04], a
1409 -- 0605                        ld    a, A[0x05]
140a -- 3801                        sub   a, 0x01
140b -- 0E05                        ld    A[0x05], a
140c -- 4C70 026D                   bra   ns, 0x026d
140e -- 0604                        ld    a, A[0x04]
140f -- 9820                        add   a, 0x20
1410 -- 0E04                        ld    A[0x04], a
1411 -- 0830 0004                   ld    a, 0x0004
1413 -- 0E05                        ld    A[0x05], a
1414 -- 0604                        ld    a, A[0x04]
1415 -- 1C18                        ld    r4, 0x18
1416 -- 4800 00CF                   call  0x00cf
1418 -- 0718                        ld    a, B[0x18]
1419 -- A000                        and   a, -
141a -- 4D50 0299                   bra   z, 0x0299
141c -- 7801                        cmp   a, 0x01
141d -- 4950 015A                   call  z, 0x015a
141f -- 7802                        cmp   a, 0x02
1420 -- 4950 01E4                   call  z, 0x01e4
1422 -- 4800 00DB                   call  0x00db
1424 -- 0604                        ld    a, A[0x04]
1425 -- 9820                        add   a, 0x20
1426 -- 0E04                        ld    A[0x04], a
1427 -- 0605                        ld    a, A[0x05]
1428 -- 3801                        sub   a, 0x01
1429 -- 0E05                        ld    A[0x05], a
142a -- 4C70 0289                   bra   ns, 0x0289
142c -- 0604                        ld    a, A[0x04]
142d -- 1C10                        ld    r4, 0x10
142e -- 4800 00CF                   call  0x00cf
1430 -- 0710                        ld    a, B[0x10]
1431 -- A000                        and   a, -
1432 -- 4D50 02DA                   bra   z, 0x02da
1434 -- 4800 01E4                   call  0x01e4
1436 -- 4800 00DB                   call  0x00db
1438 -- 0604                        ld    a, A[0x04]
1439 -- 9820                        add   a, 0x20
143a -- 0E04                        ld    A[0x04], a
143b -- 0830 0002                   ld    a, 0x0002
143d -- 0E05                        ld    A[0x05], a
143e -- 0604                        ld    a, A[0x04]
143f -- 1C18                        ld    r4, 0x18
1440 -- 4800 00CF                   call  0x00cf
1442 -- 4800 020B                   call  0x020b
1444 -- 4800 00DB                   call  0x00db
1446 -- 0604                        ld    a, A[0x04]
1447 -- 9820                        add   a, 0x20
1448 -- 0E04                        ld    A[0x04], a
1449 -- 0605                        ld    a, A[0x05]
144a -- 3801                        sub   a, 0x01
144b -- 0E05                        ld    A[0x05], a
144c -- 4C70 02B3                   bra   ns, 0x02b3
144e -- 0830 0004                   ld    a, 0x0004
1450 -- 0E05                        ld    A[0x05], a
1451 -- 0604                        ld    a, A[0x04]
1452 -- 1C18                        ld    r4, 0x18
1453 -- 4800 00CF                   call  0x00cf
1455 -- 0718                        ld    a, B[0x18]
1456 -- A000                        and   a, -
1457 -- 4D50 02D2                   bra   z, 0x02d2
1459 -- 4800 01E4                   call  0x01e4
145b -- 4800 00DB                   call  0x00db
145d -- 0604                        ld    a, A[0x04]
145e -- 9820                        add   a, 0x20
145f -- 0E04                        ld    A[0x04], a
1460 -- 0605                        ld    a, A[0x05]
1461 -- 3801                        sub   a, 0x01
1462 -- 0E05                        ld    A[0x05], a
1463 -- 4C70 02C6                   bra   ns, 0x02c6
1465 -- 07F0                        ld    a, B[0xf0]
1466 -- 1531                        ld    r5, a
1467 -- 9801                        add   a, 0x01
1468 -- 0FF0                        ld    B[0xf0], a
1469 -- 0361                        bra   (r5)
146a -- 8240
146b -- 0020
146c -- 0830 7D20                   ld    a, 0x7d20
146e -- 1C10                        ld    r4, 0x10
146f -- 4800 00CF                   call  0x00cf
1471 -- 1910                        ld    r1, 0x10
1472 -- 4800 00BB                   call  0x00bb
1474 -- 1810                        ld    r0, 0x10
1475 -- 0714                        ld    a, B[0x14]
1476 -- 0433                        ld    (r3|00), a
1477 -- 4800 0067                   call  0x0067
1479 -- B800                        and   a, 0x00
147a -- 0433                        ld    (r3|00), a
147b -- 0712                        ld    a, B[0x12]
147c -- 0437                        ld    (r3|01), a
147d -- 0713                        ld    a, B[0x13]
147e -- 043B                        ld    (r3|10), a
147f -- 4800 0000                   call  0x0000
1481 -- 08E0 7D27                   ld    ext6, 0x7d27
1483 -- 08E0 0818                   ld    ext6, 0x0818
1485 -- 00C0                        ld    ext4, -
1486 -- 4800 00E0                   call  0x00e0
1488 -- 07F0                        ld    a, B[0xf0]
1489 -- 1531                        ld    r5, a
148a -- 9801                        add   a, 0x01
148b -- 0FF0                        ld    B[0xf0], a
148c -- 0361                        bra   (r5)
148d -- 8240
148e -- 00A2
148f -- 0830 7600                   ld    a, 0x7600
1491 -- 0E04                        ld    A[0x04], a
1492 -- 0830 0005                   ld    a, 0x0005
1494 -- 0E05                        ld    A[0x05], a
1495 -- 0604                        ld    a, A[0x04]
1496 -- 1C10                        ld    r4, 0x10
1497 -- 4800 00CF                   call  0x00cf
1499 -- 0710                        ld    a, B[0x10]
149a -- A000                        and   a, -
149b -- 4D50 0252                   bra   z, 0x0252
149d -- 4800 026D                   call  0x026d
149f -- 4800 00DB                   call  0x00db
14a1 -- 0604                        ld    a, A[0x04]
14a2 -- 9840                        add   a, 0x40
14a3 -- 0E04                        ld    A[0x04], a
14a4 -- 0605                        ld    a, A[0x05]
14a5 -- 3801                        sub   a, 0x01
14a6 -- 0E05                        ld    A[0x05], a
14a7 -- 4C70 0246                   bra   ns, 0x0246
14a9 -- 4800 0286                   call  0x0286
14ab -- 08E0 7F50                   ld    ext6, 0x7f50
14ad -- 08E0 0818                   ld    ext6, 0x0818
14af -- 00C0                        ld    ext4, -
14b0 -- 1DC8                        ld    r5, 0xc8
14b1 -- 0830 0005                   ld    a, 0x0005
14b3 -- 03C5                        ld    ext4, (r5+!)
14b4 -- 3801                        sub   a, 0x01
14b5 -- 4C70 0264                   bra   ns, 0x0264
14b7 -- 07F0                        ld    a, B[0xf0]
14b8 -- 1531                        ld    r5, a
14b9 -- 9801                        add   a, 0x01
14ba -- 0FF0                        ld    B[0xf0], a
14bb -- 0361                        bra   (r5)
14bc -- 1910                        ld    r1, 0x10
14bd -- 4800 00BB                   call  0x00bb
14bf -- 1810                        ld    r0, 0x10
14c0 -- 0715                        ld    a, B[0x15]
14c1 -- 0433                        ld    (r3|00), a
14c2 -- 4800 007C                   call  0x007c
14c4 -- 0714                        ld    a, B[0x14]
14c5 -- 0433                        ld    (r3|00), a
14c6 -- 4800 0067                   call  0x0067
14c8 -- 0716                        ld    a, B[0x16]
14c9 -- 0433                        ld    (r3|00), a
14ca -- 4800 0093                   call  0x0093
14cc -- 0711                        ld    a, B[0x11]
14cd -- 0433                        ld    (r3|00), a
14ce -- 0712                        ld    a, B[0x12]
14cf -- 0437                        ld    (r3|01), a
14d0 -- 0713                        ld    a, B[0x13]
14d1 -- 043B                        ld    (r3|10), a
14d2 -- 4C00 0000                   bra   0x0000
14d4 -- 0065                        ret
14d5 -- 1CC0                        ld    r4, 0xc0
14d6 -- 1DC8                        ld    r5, 0xc8
14d7 -- 0830 7600                   ld    a, 0x7600
14d9 -- 0E04                        ld    A[0x04], a
14da -- 0830 0005                   ld    a, 0x0005
14dc -- 0E05                        ld    A[0x05], a
14dd -- 0604                        ld    a, A[0x04]
14de -- 00E3                        ld    ext6, a
14df -- 08E0 0818                   ld    ext6, 0x0818
14e1 -- 000C                        ld    -, ext4
14e2 -- 003C                        ld    a, ext4
14e3 -- A000                        and   a, -
14e4 -- 0604                        ld    a, A[0x04]
14e5 -- 4C50 0299                   bra   nz, 0x0299
14e7 -- B800                        and   a, 0x00
14e8 -- 0535                        ld    (r5+!), a
14e9 -- 0604                        ld    a, A[0x04]
14ea -- 9803                        add   a, 0x03
14eb -- 00E3                        ld    ext6, a
14ec -- 000E                        ld    -, ext6
14ed -- 000C                        ld    -, ext4
14ee -- 05C4                        ld    (r4+!), ext4
14ef -- 0604                        ld    a, A[0x04]
14f0 -- 9840                        add   a, 0x40
14f1 -- 0E04                        ld    A[0x04], a
14f2 -- 0605                        ld    a, A[0x05]
14f3 -- 3801                        sub   a, 0x01
14f4 -- 0E05                        ld    A[0x05], a
14f5 -- 4C70 028E                   bra   ns, 0x028e
14f7 -- 08E0 7FD0                   ld    ext6, 0x7fd0
14f9 -- 08E0 0818                   ld    ext6, 0x0818
14fb -- 00C0                        ld    ext4, -
14fc -- 1CC0                        ld    r4, 0xc0
14fd -- 0830 000F                   ld    a, 0x000f
14ff -- 03C4                        ld    ext4, (r4+!)
1500 -- 3801                        sub   a, 0x01
1501 -- 4C70 02B0                   bra   ns, 0x02b0
1503 -- 0D03 0004                   ld    (r7|00), 0x0004
1505 -- 0D07 0004                   ld    (r7|01), 0x0004
1507 -- 0337                        ld    a, (r7|01)
1508 -- 053B                        ld    (r7|10), a
1509 -- 1CC0                        ld    r4, 0xc0
150a -- 1DC8                        ld    r5, 0xc8
150b -- 0305                        ld    -, (r5+!)
150c -- 0334                        ld    a, (r4+!)
150d -- 6300                        cmp   a, (r4)
150e -- 4C70 02C9                   bra   ns, 0x02c9
1510 -- 0318                        ld    x, (r4--)
1511 -- 0320                        ld    y, (r4)
1512 -- 0514                        ld    (r4+!), x
1513 -- 0520                        ld    (r4), y
1514 -- 0319                        ld    x, (r5--)
1515 -- 0321                        ld    y, (r5)
1516 -- 0515                        ld    (r5+!), x
1517 -- 0521                        ld    (r5), y
1518 -- 033B                        ld    a, (r7|10)
1519 -- 3801                        sub   a, 0x01
151a -- 053B                        ld    (r7|10), a
151b -- 4C70 02BC                   bra   ns, 0x02bc
151d -- 0337                        ld    a, (r7|01)
151e -- 3801                        sub   a, 0x01
151f -- 0537                        ld    (r7|01), a
1520 -- 0333                        ld    a, (r7|00)
1521 -- 3801                        sub   a, 0x01
1522 -- 0533                        ld    (r7|00), a
1523 -- 4C70 02B8                   bra   ns, 0x02b8
1525 -- 08E0 7FE0                   ld    ext6, 0x7fe0
1527 -- 08E0 0818                   ld    ext6, 0x0818
1529 -- 00C0                        ld    ext4, -
152a -- 1CC0                        ld    r4, 0xc0
152b -- 0830 000F                   ld    a, 0x000f
152d -- 03C4                        ld    ext4, (r4+!)
152e -- 3801                        sub   a, 0x01
152f -- 4C70 02DE                   bra   ns, 0x02de
1531 -- 0065                        ret
1532 -- 8240
1533 -- 0080
1534 -- 0830 7600                   ld    a, 0x7600
1536 -- 0E04                        ld    A[0x04], a
1537 -- 0604                        ld    a, A[0x04]
1538 -- 1C10                        ld    r4, 0x10
1539 -- 4800 00CF                   call  0x00cf
153b -- 0710                        ld    a, B[0x10]
153c -- A000                        and   a, -
153d -- 4D50 0269                   bra   z, 0x0269
153f -- 4800 0293                   call  0x0293
1541 -- 4800 00DB                   call  0x00db
1543 -- 0604                        ld    a, A[0x04]
1544 -- 9820                        add   a, 0x20
1545 -- 0E04                        ld    A[0x04], a
1546 -- 0830 0002                   ld    a, 0x0002
1548 -- 0E05                        ld    A[0x05], a
1549 -- 0604                        ld    a, A[0x04]
154a -- 1C18                        ld    r4, 0x18
154b -- 4800 00CF                   call  0x00cf
154d -- 0718                        ld    a, B[0x18]
154e -- A000                        and   a, -
154f -- 4D50 0261                   bra   z, 0x0261
1551 -- 4800 02AB                   call  0x02ab
1553 -- 4800 00DB                   call  0x00db
1555 -- 0604                        ld    a, A[0x04]
1556 -- 9820                        add   a, 0x20
1557 -- 0E04                        ld    A[0x04], a
1558 -- 0605                        ld    a, A[0x05]
1559 -- 3801                        sub   a, 0x01
155a -- 0E05                        ld    A[0x05], a
155b -- 4C70 0255                   bra   ns, 0x0255
155d -- 0830 0001                   ld    a, 0x0001
155f -- 0E05                        ld    A[0x05], a
1560 -- 0604                        ld    a, A[0x04]
1561 -- 1C18                        ld    r4, 0x18
1562 -- 4800 00CF                   call  0x00cf
1564 -- 0718                        ld    a, B[0x18]
1565 -- A000                        and   a, -
1566 -- 4D50 0278                   bra   z, 0x0278
1568 -- 4800 0293                   call  0x0293
156a -- 4800 00DB                   call  0x00db
156c -- 0604                        ld    a, A[0x04]
156d -- 9820                        add   a, 0x20
156e -- 0E04                        ld    A[0x04], a
156f -- 0605                        ld    a, A[0x05]
1570 -- 3801                        sub   a, 0x01
1571 -- 0E05                        ld    A[0x05], a
1572 -- 4C70 026C                   bra   ns, 0x026c
1574 -- 0830 7D20                   ld    a, 0x7d20
1576 -- 0E04                        ld    A[0x04], a
1577 -- 1C10                        ld    r4, 0x10
1578 -- 4800 00CF                   call  0x00cf
157a -- 0710                        ld    a, B[0x10]
157b -- A000                        and   a, -
157c -- 4D50 028E                   bra   z, 0x028e
157e -- 4800 0293                   call  0x0293
1580 -- 4800 00DB                   call  0x00db
1582 -- 07F0                        ld    a, B[0xf0]
1583 -- 1531                        ld    r5, a
1584 -- 9801                        add   a, 0x01
1585 -- 0FF0                        ld    B[0xf0], a
1586 -- 0361                        bra   (r5)
1587 -- 1910                        ld    r1, 0x10
1588 -- 4800 00BB                   call  0x00bb
158a -- 1810                        ld    r0, 0x10
158b -- 0715                        ld    a, B[0x15]
158c -- 0433                        ld    (r3|00), a
158d -- 4800 007C                   call  0x007c
158f -- 0714                        ld    a, B[0x14]
1590 -- 0433                        ld    (r3|00), a
1591 -- 4800 0067                   call  0x0067
1593 -- 0716                        ld    a, B[0x16]
1594 -- 0433                        ld    (r3|00), a
1595 -- 4800 0093                   call  0x0093
1597 -- 0711                        ld    a, B[0x11]
1598 -- 0433                        ld    (r3|00), a
1599 -- 0712                        ld    a, B[0x12]
159a -- 0437                        ld    (r3|01), a
159b -- 0713                        ld    a, B[0x13]
159c -- 043B                        ld    (r3|10), a
159d -- 4C00 0000                   bra   0x0000
159f -- 1910                        ld    r1, 0x10
15a0 -- 4800 00BB                   call  0x00bb
15a2 -- 1810                        ld    r0, 0x10
15a3 -- 071C                        ld    a, B[0x1c]
15a4 -- 0433                        ld    (r3|00), a
15a5 -- 4800 0067                   call  0x0067
15a7 -- 071D                        ld    a, B[0x1d]
15a8 -- 0433                        ld    (r3|00), a
15a9 -- 4800 007C                   call  0x007c
15ab -- 0719                        ld    a, B[0x19]
15ac -- 0433                        ld    (r3|00), a
15ad -- 071A                        ld    a, B[0x1a]
15ae -- 0437                        ld    (r3|01), a
15af -- 071B                        ld    a, B[0x1b]
15b0 -- 043B                        ld    (r3|10), a
15b1 -- 4800 0000                   call  0x0000
15b3 -- 4C00 0297                   bra   0x0297
15b5 -- 8000
15b6 -- 023B
15b7 -- 0234                        ld    a, (r0+!)
15b8 -- 0435                        ld    (r1+!), a
15b9 -- 0234                        ld    a, (r0+!)
15ba -- 0435                        ld    (r1+!), a
15bb -- 0234                        ld    a, (r0+!)
15bc -- 0435                        ld    (r1+!), a
15bd -- 0234                        ld    a, (r0+!)
15be -- 0435                        ld    (r1+!), a
15bf -- 0234                        ld    a, (r0+!)
15c0 -- 0435                        ld    (r1+!), a
15c1 -- 0234                        ld    a, (r0+!)
15c2 -- 0435                        ld    (r1+!), a
15c3 -- 0234                        ld    a, (r0+!)
15c4 -- 0435                        ld    (r1+!), a
15c5 -- 0234                        ld    a, (r0+!)
15c6 -- 0435                        ld    (r1+!), a
15c7 -- 0234                        ld    a, (r0+!)
15c8 -- 0435                        ld    (r1+!), a
15c9 -- 0234                        ld    a, (r0+!)
15ca -- 8203                        add   a, (r3|00)
15cb -- 0435                        ld    (r1+!), a
15cc -- 0234                        ld    a, (r0+!)
15cd -- 8207                        add   a, (r3|01)
15ce -- 0435                        ld    (r1+!), a
15cf -- 0234                        ld    a, (r0+!)
15d0 -- 820B                        add   a, (r3|10)
15d1 -- 0435                        ld    (r1+!), a
15d2 -- 0065                        ret
15d3 -- 0234                        ld    a, (r0+!)
15d4 -- 0435                        ld    (r1+!), a
15d5 -- 0234                        ld    a, (r0+!)
15d6 -- 0435                        ld    (r1+!), a
15d7 -- 0234                        ld    a, (r0+!)
15d8 -- 0435                        ld    (r1+!), a
15d9 -- 0234                        ld    a, (r0+!)
15da -- 0435                        ld    (r1+!), a
15db -- 0234                        ld    a, (r0+!)
15dc -- 0435                        ld    (r1+!), a
15dd -- 0234                        ld    a, (r0+!)
15de -- 0435                        ld    (r1+!), a
15df -- 0234                        ld    a, (r0+!)
15e0 -- 0435                        ld    (r1+!), a
15e1 -- 0234                        ld    a, (r0+!)
15e2 -- 0435                        ld    (r1+!), a
15e3 -- 0234                        ld    a, (r0+!)
15e4 -- 0435                        ld    (r1+!), a
15e5 -- B800                        and   a, 0x00
15e6 -- 0233                        ld    a, (r3|00)
15e7 -- 9003                        shl   a
15e8 -- 9003                        shl   a
15e9 -- 8204                        add   a, (r0+!)
15ea -- 0435                        ld    (r1+!), a
15eb -- 0237                        ld    a, (r3|01)
15ec -- 9003                        shl   a
15ed -- 9003                        shl   a
15ee -- 8204                        add   a, (r0+!)
15ef -- 0435                        ld    (r1+!), a
15f0 -- 023B                        ld    a, (r3|10)
15f1 -- 9003                        shl   a
15f2 -- 9003                        shl   a
15f3 -- 8204                        add   a, (r0+!)
15f4 -- 0435                        ld    (r1+!), a
15f5 -- 0065                        ret
15f6 -- 1A03                        ld    r2, 0x03
15f7 -- B734                        mld   (r0+!), (r7|00)
15f8 -- 0037                        ld    a, p
15f9 -- 9002                        shr   a
15fa -- 9002                        shr   a
15fb -- 9002                        shr   a
15fc -- 9002                        shr   a
15fd -- 9002                        shr   a
15fe -- 9002                        shr   a
15ff -- 9002                        shr   a
1600 -- 9002                        shr   a
1601 -- 04F5                        ld    (r1+!), ext7
1602 -- B774                        mld   (r0+!), (r7|01)
1603 -- 0037                        ld    a, p
1604 -- 9002                        shr   a
1605 -- 9002                        shr   a
1606 -- 9002                        shr   a
1607 -- 9002                        shr   a
1608 -- 9002                        shr   a
1609 -- 9002                        shr   a
160a -- 9002                        shr   a
160b -- 9002                        shr   a
160c -- 04F5                        ld    (r1+!), ext7
160d -- B7B4                        mld   (r0+!), (r7|10)
160e -- 0037                        ld    a, p
160f -- 9002                        shr   a
1610 -- 9002                        shr   a
1611 -- 9002                        shr   a
1612 -- 9002                        shr   a
1613 -- 9002                        shr   a
1614 -- 9002                        shr   a
1615 -- 9002                        shr   a
1616 -- 9002                        shr   a
1617 -- 04F5                        ld    (r1+!), ext7
1618 -- 1232                        ld    a, r2
1619 -- 3801                        sub   a, 0x01
161a -- 1432                        ld    r2, a
161b -- 4C70 0040                   bra   ns, 0x0040
161d -- 0065                        ret
161e -- 4800 00A8                   call  0x00a8
1620 -- 1A03                        ld    r2, 0x03
1621 -- 0234                        ld    a, (r0+!)
1622 -- 0435                        ld    (r1+!), a
1623 -- B774                        mld   (r0+!), (r7|01)
1624 -- 9738                        mpya  (r0--), (r7|00)
1625 -- 9733                        mpya  (r3|00), (r7|00)
1626 -- 9003                        shl   a
1627 -- 0435                        ld    (r1+!), a
1628 -- B7B4                        mld   (r0+!), (r7|10)
1629 -- 9774                        mpya  (r0+!), (r7|01)
162a -- 9733                        mpya  (r3|00), (r7|00)
162b -- 9003                        shl   a
162c -- 0435                        ld    (r1+!), a
162d -- 1232                        ld    a, r2
162e -- 3801                        sub   a, 0x01
162f -- 1432                        ld    r2, a
1630 -- 4C70 006A                   bra   ns, 0x006a
1632 -- 0065                        ret
1633 -- 4800 00A8                   call  0x00a8
1635 -- 1A03                        ld    r2, 0x03
1636 -- B774                        mld   (r0+!), (r7|01)
1637 -- 0204                        ld    -, (r0+!)
1638 -- 97B8                        mpya  (r0--), (r7|10)
1639 -- 9733                        mpya  (r3|00), (r7|00)
163a -- 9003                        shl   a
163b -- 0435                        ld    (r1+!), a
163c -- 0238                        ld    a, (r0--)
163d -- 0435                        ld    (r1+!), a
163e -- B734                        mld   (r0+!), (r7|00)
163f -- 0204                        ld    -, (r0+!)
1640 -- 9774                        mpya  (r0+!), (r7|01)
1641 -- 9733                        mpya  (r3|00), (r7|00)
1642 -- 9003                        shl   a
1643 -- 0435                        ld    (r1+!), a
1644 -- 1232                        ld    a, r2
1645 -- 3801                        sub   a, 0x01
1646 -- 1432                        ld    r2, a
1647 -- 4C70 007F                   bra   ns, 0x007f
1649 -- 0065                        ret
164a -- 4800 00A8                   call  0x00a8
164c -- 1A03                        ld    r2, 0x03
164d -- B774                        mld   (r0+!), (r7|01)
164e -- 9738                        mpya  (r0--), (r7|00)
164f -- 9733                        mpya  (r3|00), (r7|00)
1650 -- 9003                        shl   a
1651 -- 0435                        ld    (r1+!), a
1652 -- B7B4                        mld   (r0+!), (r7|10)
1653 -- 9774                        mpya  (r0+!), (r7|01)
1654 -- 9733                        mpya  (r3|00), (r7|00)
1655 -- 9003                        shl   a
1656 -- 0435                        ld    (r1+!), a
1657 -- 0234                        ld    a, (r0+!)
1658 -- 0435                        ld    (r1+!), a
1659 -- 1232                        ld    a, r2
165a -- 3801                        sub   a, 0x01
165b -- 1432                        ld    r2, a
165c -- 4C70 0096                   bra   ns, 0x0096
165e -- 0065                        ret
165f -- 0233                        ld    a, (r3|00)
1660 -- A720                        and   a, B[0x20]
1661 -- 87F2                        add   a, B[0xf2]
1662 -- 4A10                        ld    x, (a)
1663 -- 0233                        ld    a, (r3|00)
1664 -- 8721                        add   a, B[0x21]
1665 -- A720                        and   a, B[0x20]
1666 -- 87F2                        add   a, B[0xf2]
1667 -- 4A20                        ld    y, (a)
1668 -- 0031                        ld    a, x
1669 -- 0533                        ld    (r7|00), a
166a -- 9006                        neg   a
166b -- 053B                        ld    (r7|10), a
166c -- 0527                        ld    (r7|01), y
166d -- 0065                        ret
166e -- 0810 4000                   ld    x, 0x4000
1670 -- 4C00 00C1                   bra   0x00c1
1672 -- 0810 1000                   ld    x, 0x1000
1674 -- 4C00 00C1                   bra   0x00c1
1676 -- 0810 0080                   ld    x, 0x0080
1678 -- B800                        and   a, 0x00
1679 -- 0415                        ld    (r1+!), x
167a -- 0435                        ld    (r1+!), a
167b -- 0435                        ld    (r1+!), a
167c -- 0435                        ld    (r1+!), a
167d -- 0415                        ld    (r1+!), x
167e -- 0435                        ld    (r1+!), a
167f -- 0435                        ld    (r1+!), a
1680 -- 0435                        ld    (r1+!), a
1681 -- 0415                        ld    (r1+!), x
1682 -- 0435                        ld    (r1+!), a
1683 -- 0435                        ld    (r1+!), a
1684 -- 0435                        ld    (r1+!), a
1685 -- 0065                        ret
1686 -- 00E3                        ld    ext6, a
1687 -- 08E0 0818                   ld    ext6, 0x0818
1689 -- 000C                        ld    -, ext4
168a -- 05C4                        ld    (r4+!), ext4
168b -- 05C4                        ld    (r4+!), ext4
168c -- 05C4                        ld    (r4+!), ext4
168d -- 05C4                        ld    (r4+!), ext4
168e -- 05C4                        ld    (r4+!), ext4
168f -- 05C4                        ld    (r4+!), ext4
1690 -- 05C4                        ld    (r4+!), ext4
1691 -- 0065                        ret
1692 -- 0604                        ld    a, A[0x04]
1693 -- 9807                        add   a, 0x07
1694 -- 00E3                        ld    ext6, a
1695 -- 000E                        ld    -, ext6
1696 -- 00C0                        ld    ext4, -
1697 -- 1A02                        ld    r2, 0x02
1698 -- 02C4                        ld    ext4, (r0+!)
1699 -- 0204                        ld    -, (r0+!)
169a -- 0204                        ld    -, (r0+!)
169b -- 02C4                        ld    ext4, (r0+!)
169c -- 0204                        ld    -, (r0+!)
169d -- 0204                        ld    -, (r0+!)
169e -- 02C4                        ld    ext4, (r0+!)
169f -- 0204                        ld    -, (r0+!)
16a0 -- 0204                        ld    -, (r0+!)
16a1 -- 02C0                        ld    ext4, (r0)
16a2 -- 1230                        ld    a, r0
16a3 -- 3808                        sub   a, 0x08
16a4 -- 1430                        ld    r0, a
16a5 -- 1232                        ld    a, r2
16a6 -- 3801                        sub   a, 0x01
16a7 -- 1432                        ld    r2, a
16a8 -- 4C70 00E1                   bra   ns, 0x00e1
16aa -- 0065                        ret
16ab -- 1A02                        ld    r2, 0x02
16ac -- 0234                        ld    a, (r0+!)
16ad -- 0435                        ld    (r1+!), a
16ae -- 0204                        ld    -, (r0+!)
16af -- 0204                        ld    -, (r0+!)
16b0 -- 0234                        ld    a, (r0+!)
16b1 -- 0435                        ld    (r1+!), a
16b2 -- 0204                        ld    -, (r0+!)
16b3 -- 0204                        ld    -, (r0+!)
16b4 -- 0234                        ld    a, (r0+!)
16b5 -- 0435                        ld    (r1+!), a
16b6 -- 0204                        ld    -, (r0+!)
16b7 -- 0204                        ld    -, (r0+!)
16b8 -- 0230                        ld    a, (r0)
16b9 -- 0435                        ld    (r1+!), a
16ba -- 1230                        ld    a, r0
16bb -- 3808                        sub   a, 0x08
16bc -- 1430                        ld    r0, a
16bd -- 1232                        ld    a, r2
16be -- 3801                        sub   a, 0x01
16bf -- 1432                        ld    r2, a
16c0 -- 4C70 00F5                   bra   ns, 0x00f5
16c2 -- 0065                        ret
16c3 -- 1910                        ld    r1, 0x10
16c4 -- 4800 00B7                   call  0x00b7
16c6 -- 1810                        ld    r0, 0x10
16c7 -- 071E                        ld    a, B[0x1e]
16c8 -- 0FC5                        ld    B[0xc5], a
16c9 -- 9006                        neg   a
16ca -- 0433                        ld    (r3|00), a
16cb -- 4800 0093                   call  0x0093
16cd -- 071C                        ld    a, B[0x1c]
16ce -- 0FC3                        ld    B[0xc3], a
16cf -- 9006                        neg   a
16d0 -- 0433                        ld    (r3|00), a
16d1 -- 4800 0067                   call  0x0067
16d3 -- 071D                        ld    a, B[0x1d]
16d4 -- 0FC4                        ld    B[0xc4], a
16d5 -- 9006                        neg   a
16d6 -- 0433                        ld    (r3|00), a
16d7 -- 4800 007C                   call  0x007c
16d9 -- 1910                        ld    r1, 0x10
16da -- 4800 00F4                   call  0x00f4
16dc -- 0719                        ld    a, B[0x19]
16dd -- 0533                        ld    (r7|00), a
16de -- 071A                        ld    a, B[0x1a]
16df -- 0FC6                        ld    B[0xc6], a
16e0 -- 0537                        ld    (r7|01), a
16e1 -- 071B                        ld    a, B[0x1b]
16e2 -- 0FC7                        ld    B[0xc7], a
16e3 -- 9006                        neg   a
16e4 -- 053B                        ld    (r7|10), a
16e5 -- 0D0F 0020                   ld    (r7|11), 0x0020
16e7 -- 1810                        ld    r0, 0x10
16e8 -- B734                        mld   (r0+!), (r7|00)
16e9 -- 9774                        mpya  (r0+!), (r7|01)
16ea -- 97B4                        mpya  (r0+!), (r7|10)
16eb -- 97F4                        mpya  (r0+!), (r7|11)
16ec -- 97F0                        mpya  (r0), (r7|11)
16ed -- 9003                        shl   a
16ee -- 8711                        add   a, B[0x11]
16ef -- 0FC0                        ld    B[0xc0], a
16f0 -- B734                        mld   (r0+!), (r7|00)
16f1 -- 9774                        mpya  (r0+!), (r7|01)
16f2 -- 97B4                        mpya  (r0+!), (r7|10)
16f3 -- 97F4                        mpya  (r0+!), (r7|11)
16f4 -- 97F0                        mpya  (r0), (r7|11)
16f5 -- 9003                        shl   a
16f6 -- 8712                        add   a, B[0x12]
16f7 -- 0FC1                        ld    B[0xc1], a
16f8 -- B734                        mld   (r0+!), (r7|00)
16f9 -- 9774                        mpya  (r0+!), (r7|01)
16fa -- 97B4                        mpya  (r0+!), (r7|10)
16fb -- 97F4                        mpya  (r0+!), (r7|11)
16fc -- 97F0                        mpya  (r0), (r7|11)
16fd -- 9003                        shl   a
16fe -- 8713                        add   a, B[0x13]
16ff -- 0FC2                        ld    B[0xc2], a
1700 -- 0065                        ret
1701 -- 1910                        ld    r1, 0x10
1702 -- 4800 00B7                   call  0x00b7
1704 -- 1810                        ld    r0, 0x10
1705 -- 07C4                        ld    a, B[0xc4]
1706 -- 0433                        ld    (r3|00), a
1707 -- 4800 007C                   call  0x007c
1709 -- 07C3                        ld    a, B[0xc3]
170a -- 0433                        ld    (r3|00), a
170b -- 4800 0067                   call  0x0067
170d -- 07C5                        ld    a, B[0xc5]
170e -- 0433                        ld    (r3|00), a
170f -- 4C00 0093                   bra   0x0093
1711 -- 07C8                        ld    a, B[0xc8]
1712 -- A000                        and   a, -
1713 -- 4C50 0194                   bra   nz, 0x0194
1715 -- 1910                        ld    r1, 0x10
1716 -- 4800 00BF                   call  0x00bf
1718 -- 1810                        ld    r0, 0x10
1719 -- 0716                        ld    a, B[0x16]
171a -- 87C5                        add   a, B[0xc5]
171b -- 0433                        ld    (r3|00), a
171c -- 4800 0093                   call  0x0093
171e -- 0714                        ld    a, B[0x14]
171f -- 87C3                        add   a, B[0xc3]
1720 -- 0433                        ld    (r3|00), a
1721 -- 4800 0067                   call  0x0067
1723 -- 0715                        ld    a, B[0x15]
1724 -- 87C4                        add   a, B[0xc4]
1725 -- 0433                        ld    (r3|00), a
1726 -- 4800 007C                   call  0x007c
1728 -- B800                        and   a, 0x00
1729 -- 0433                        ld    (r3|00), a
172a -- 07C6                        ld    a, B[0xc6]
172b -- 9006                        neg   a
172c -- 0437                        ld    (r3|01), a
172d -- 07C7                        ld    a, B[0xc7]
172e -- 043B                        ld    (r3|10), a
172f -- 4C00 001C                   bra   0x001c
1731 -- 07C8                        ld    a, B[0xc8]
1732 -- A000                        and   a, -
1733 -- 4C50 01AC                   bra   nz, 0x01ac
1735 -- 1910                        ld    r1, 0x10
1736 -- 4800 00BF                   call  0x00bf
1738 -- 1810                        ld    r0, 0x10
1739 -- 071C                        ld    a, B[0x1c]
173a -- 0433                        ld    (r3|00), a
173b -- 4800 0067                   call  0x0067
173d -- 071D                        ld    a, B[0x1d]
173e -- 0433                        ld    (r3|00), a
173f -- 4800 007C                   call  0x007c
1741 -- 0719                        ld    a, B[0x19]
1742 -- 0433                        ld    (r3|00), a
1743 -- 071A                        ld    a, B[0x1a]
1744 -- 0437                        ld    (r3|01), a
1745 -- 071B                        ld    a, B[0x1b]
1746 -- 043B                        ld    (r3|10), a
1747 -- 4800 001C                   call  0x001c
1749 -- 4C00 0162                   bra   0x0162
174b -- 1910                        ld    r1, 0x10
174c -- 4800 00BB                   call  0x00bb
174e -- 1810                        ld    r0, 0x10
174f -- 0716                        ld    a, B[0x16]
1750 -- 87C5                        add   a, B[0xc5]
1751 -- 0433                        ld    (r3|00), a
1752 -- 4800 0093                   call  0x0093
1754 -- B800                        and   a, 0x00
1755 -- 0433                        ld    (r3|00), a
1756 -- 0820 0040                   ld    y, 0x0040
1758 -- 07C6                        ld    a, B[0xc6]
1759 -- 9006                        neg   a
175a -- 0013                        ld    x, a
175b -- 0037                        ld    a, p
175c -- 04F7                        ld    (r3|01), ext7
175d -- 07C7                        ld    a, B[0xc7]
175e -- 0013                        ld    x, a
175f -- 0037                        ld    a, p
1760 -- 04FB                        ld    (r3|10), ext7
1761 -- 4C00 0000                   bra   0x0000
1763 -- 1910                        ld    r1, 0x10
1764 -- 4800 00BB                   call  0x00bb
1766 -- 1810                        ld    r0, 0x10
1767 -- 071C                        ld    a, B[0x1c]
1768 -- 0433                        ld    (r3|00), a
1769 -- 4800 0067                   call  0x0067
176b -- 071D                        ld    a, B[0x1d]
176c -- 0433                        ld    (r3|00), a
176d -- 4800 007C                   call  0x007c
176f -- 0820 0040                   ld    y, 0x0040
1771 -- 0719                        ld    a, B[0x19]
1772 -- 0013                        ld    x, a
1773 -- 0037                        ld    a, p
1774 -- 04F3                        ld    (r3|00), ext7
1775 -- 071A                        ld    a, B[0x1a]
1776 -- 0013                        ld    x, a
1777 -- 0037                        ld    a, p
1778 -- 04F7                        ld    (r3|01), ext7
1779 -- 071B                        ld    a, B[0x1b]
177a -- 0013                        ld    x, a
177b -- 0037                        ld    a, p
177c -- 04FB                        ld    (r3|10), ext7
177d -- 4800 0000                   call  0x0000
177f -- 4C00 019D                   bra   0x019d
1781 -- 1910                        ld    r1, 0x10
1782 -- 4800 00BB                   call  0x00bb
1784 -- 1810                        ld    r0, 0x10
1785 -- 071E                        ld    a, B[0x1e]
1786 -- 0433                        ld    (r3|00), a
1787 -- 4800 0093                   call  0x0093
1789 -- 0820 0040                   ld    y, 0x0040
178b -- 0719                        ld    a, B[0x19]
178c -- 0013                        ld    x, a
178d -- 0037                        ld    a, p
178e -- 04F3                        ld    (r3|00), ext7
178f -- 071A                        ld    a, B[0x1a]
1790 -- 0013                        ld    x, a
1791 -- 0037                        ld    a, p
1792 -- 04F7                        ld    (r3|01), ext7
1793 -- 071B                        ld    a, B[0x1b]
1794 -- 0013                        ld    x, a
1795 -- 0037                        ld    a, p
1796 -- 04FB                        ld    (r3|10), ext7
1797 -- 4800 0000                   call  0x0000
1799 -- 4C00 0198                   bra   0x0198
179b -- 1910                        ld    r1, 0x10
179c -- 4800 00BF                   call  0x00bf
179e -- 1810                        ld    r0, 0x10
179f -- 0716                        ld    a, B[0x16]
17a0 -- 0433                        ld    (r3|00), a
17a1 -- 4800 0093                   call  0x0093
17a3 -- 0714                        ld    a, B[0x14]
17a4 -- 0433                        ld    (r3|00), a
17a5 -- 4800 0067                   call  0x0067
17a7 -- 0715                        ld    a, B[0x15]
17a8 -- 0433                        ld    (r3|00), a
17a9 -- 4800 007C                   call  0x007c
17ab -- 0711                        ld    a, B[0x11]
17ac -- 27C0                        sub   a, B[0xc0]
17ad -- 0433                        ld    (r3|00), a
17ae -- 0712                        ld    a, B[0x12]
17af -- 27C1                        sub   a, B[0xc1]
17b0 -- 0437                        ld    (r3|01), a
17b1 -- 0713                        ld    a, B[0x13]
17b2 -- 27C2                        sub   a, B[0xc2]
17b3 -- 043B                        ld    (r3|10), a
17b4 -- 4800 001C                   call  0x001c
17b6 -- 07C4                        ld    a, B[0xc4]
17b7 -- 0433                        ld    (r3|00), a
17b8 -- 4800 007C                   call  0x007c
17ba -- 07C3                        ld    a, B[0xc3]
17bb -- 0433                        ld    (r3|00), a
17bc -- 4800 0067                   call  0x0067
17be -- 07C5                        ld    a, B[0xc5]
17bf -- 0433                        ld    (r3|00), a
17c0 -- 4C00 0093                   bra   0x0093
17c2 -- 1910                        ld    r1, 0x10
17c3 -- 4800 00BF                   call  0x00bf
17c5 -- 1810                        ld    r0, 0x10
17c6 -- 071C                        ld    a, B[0x1c]
17c7 -- 0433                        ld    (r3|00), a
17c8 -- 4800 0067                   call  0x0067
17ca -- 071D                        ld    a, B[0x1d]
17cb -- 0433                        ld    (r3|00), a
17cc -- 4800 007C                   call  0x007c
17ce -- 0719                        ld    a, B[0x19]
17cf -- 0433                        ld    (r3|00), a
17d0 -- 071A                        ld    a, B[0x1a]
17d1 -- 0437                        ld    (r3|01), a
17d2 -- 071B                        ld    a, B[0x1b]
17d3 -- 043B                        ld    (r3|10), a
17d4 -- 4800 001C                   call  0x001c
17d6 -- 4C00 01E8                   bra   0x01e8
17d8 -- 1910                        ld    r1, 0x10
17d9 -- 4800 00BF                   call  0x00bf
17db -- 1810                        ld    r0, 0x10
17dc -- 0711                        ld    a, B[0x11]
17dd -- 27C0                        sub   a, B[0xc0]
17de -- 0433                        ld    (r3|00), a
17df -- 0712                        ld    a, B[0x12]
17e0 -- 27C1                        sub   a, B[0xc1]
17e1 -- 0437                        ld    (r3|01), a
17e2 -- 0713                        ld    a, B[0x13]
17e3 -- 27C2                        sub   a, B[0xc2]
17e4 -- 043B                        ld    (r3|10), a
17e5 -- 4800 001C                   call  0x001c
17e7 -- 07C4                        ld    a, B[0xc4]
17e8 -- 0433                        ld    (r3|00), a
17e9 -- 4800 007C                   call  0x007c
17eb -- 07C3                        ld    a, B[0xc3]
17ec -- 0433                        ld    (r3|00), a
17ed -- 4800 0067                   call  0x0067
17ef -- 07C5                        ld    a, B[0xc5]
17f0 -- 0433                        ld    (r3|00), a
17f1 -- 4C00 0093                   bra   0x0093
17f3 -- 1C10                        ld    r4, 0x10
17f4 -- 0D04 0000                   ld    (r4+!), 0x0000
17f6 -- 0D04 1FFF                   ld    (r4+!), 0x1fff
17f8 -- 0D04 1000                   ld    (r4+!), 0x1000
17fa -- 0D04 6000                   ld    (r4+!), 0x6000
17fc -- 0D04 8000                   ld    (r4+!), 0x8000
17fe -- 0D04 0800                   ld    (r4+!), 0x0800
1800 -- 0D04 FFFC                   ld    (r4+!), 0xfffc
1802 -- 0D04 0400                   ld    (r4+!), 0x0400
1804 -- 0D04 0800                   ld    (r4+!), 0x0800
1806 -- 0D04 FFEF                   ld    (r4+!), 0xffef
1808 -- 0D04 0010                   ld    (r4+!), 0x0010
180a -- 0D04 75F7                   ld    (r4+!), 0x75f7
180c -- 0D04 000B                   ld    (r4+!), 0x000b
180e -- 0D04 0400                   ld    (r4+!), 0x0400
1810 -- 0C03 181F                   ld    (r3|00), 0x181f
1812 -- 1820                        ld    r0, 0x20
1813 -- 0830 0023                   ld    a, 0x0023
1815 -- 0A13                        ld    x, ((r3|00)+!)
1816 -- 0414                        ld    (r0+!), x
1817 -- 3801                        sub   a, 0x01
1818 -- 4C70 1815                   bra   ns, 0x1815
181a -- 07F0                        ld    a, B[0xf0]
181b -- 1531                        ld    r5, a
181c -- 9801                        add   a, 0x01
181d -- 0FF0                        ld    B[0xf0], a
181e -- 0361                        bra   (r5)
181f -- 00EA
1820 -- 01F0
1821 -- 020D
1822 -- 022A
1823 -- 0236
1824 -- 01EF
1825 -- 0253
1826 -- 025F
1827 -- 0274
1828 -- 0291
1829 -- 01EF
182a -- 029D
182b -- 02AC
182c -- 02B8
182d -- 02C7
182e -- 01EF
182f -- 0127
1830 -- 02DB
1831 -- 02EA
1832 -- 0305
1833 -- 0311
1834 -- 0320
1835 -- 032C
1836 -- 02DA
1837 -- 0189
1838 -- 017B
1839 -- 016D
183a -- 0169
183b -- 0165
183c -- 016D
183d -- 019D
183e -- 017F
183f -- 0171
1840 -- 0199
1841 -- 0195
1842 -- 0171
1843 -- 08E0 6000                   ld    ext6, 0x6000
1845 -- 08E0 0818                   ld    ext6, 0x0818
1847 -- 0080                        ld    ext0, -
1848 -- 0830 0096                   ld    a, 0x0096
184a -- 4800 1DBE                   call  0x1dbe
184c -- 4800 1E02                   call  0x1e02
184e -- 0F10                        ld    B[0x10], a
184f -- 0830 0008                   ld    a, 0x0008
1851 -- 8710                        add   a, B[0x10]
1852 -- 0EF4                        ld    A[0xf4], a
1853 -- 0830 4000                   ld    a, 0x4000
1855 -- 0F12                        ld    B[0x12], a
1856 -- 0830 0005                   ld    a, 0x0005
1858 -- 0EF3                        ld    A[0xf3], a
1859 -- 0810 7600                   ld    x, 0x7600
185b -- 07F0                        ld    a, B[0xf0]
185c -- 3801                        sub   a, 0x01
185d -- 0FF0                        ld    B[0xf0], a
185e -- 1531                        ld    r5, a
185f -- 0D01 1863                   ld    (r5), 0x1863
1861 -- 4C00 0000                   bra   0x0000
1863 -- 07F0                        ld    a, B[0xf0]
1864 -- 1531                        ld    r5, a
1865 -- 9801                        add   a, 0x01
1866 -- 0FF0                        ld    B[0xf0], a
1867 -- 0361                        bra   (r5)
1868 -- 08E0 6000                   ld    ext6, 0x6000
186a -- 08E0 0818                   ld    ext6, 0x0818
186c -- 0080                        ld    ext0, -
186d -- B800                        and   a, 0x00
186e -- 0FE3                        ld    B[0xe3], a
186f -- 0830 1000                   ld    a, 0x1000
1871 -- 0F12                        ld    B[0x12], a
1872 -- 0830 0002                   ld    a, 0x0002
1874 -- 0EF4                        ld    A[0xf4], a
1875 -- 0830 0005                   ld    a, 0x0005
1877 -- 0EF3                        ld    A[0xf3], a
1878 -- 08E0 7F50                   ld    ext6, 0x7f50
187a -- 08E0 0818                   ld    ext6, 0x0818
187c -- 000A                        ld    -, ext2
187d -- 003A                        ld    a, ext2
187e -- A000                        and   a, -
187f -- 4D50 1899                   bra   z, 0x1899
1881 -- 0EF2                        ld    A[0xf2], a
1882 -- 06F2                        ld    a, A[0xf2]
1883 -- 9807                        add   a, 0x07
1884 -- 4800 01B5                   call  0x01b5
1886 -- 0031                        ld    a, x
1887 -- 00F2                        ld    ext7, y
1888 -- 4800 0376                   call  0x0376
188a -- 4800 01A5                   call  0x01a5
188c -- 4C70 1899                   bra   ns, 0x1899
188e -- 06F2                        ld    a, A[0xf2]
188f -- 9833                        add   a, 0x33
1890 -- 00E3                        ld    ext6, a
1891 -- 08E0 0818                   ld    ext6, 0x0818
1893 -- 000C                        ld    -, ext4
1894 -- 003C                        ld    a, ext4
1895 -- 001C                        ld    x, ext4
1896 -- 00F1                        ld    ext7, x
1897 -- 4800 0376                   call  0x0376
1899 -- 06F3                        ld    a, A[0xf3]
189a -- 3801                        sub   a, 0x01
189b -- 0EF3                        ld    A[0xf3], a
189c -- 4C70 187D                   bra   ns, 0x187d
189e -- 07F0                        ld    a, B[0xf0]
189f -- 1531                        ld    r5, a
18a0 -- 9801                        add   a, 0x01
18a1 -- 0FF0                        ld    B[0xf0], a
18a2 -- 0361                        bra   (r5)
18a3 -- 0830 FFE0                   ld    a, 0xffe0
18a5 -- 0F16                        ld    B[0x16], a
18a6 -- 0830 1FFF                   ld    a, 0x1fff
18a8 -- 0F11                        ld    B[0x11], a
18a9 -- 0830 0080                   ld    a, 0x0080
18ab -- 0F1A                        ld    B[0x1a], a
18ac -- 08E0 6000                   ld    ext6, 0x6000
18ae -- 08E0 0818                   ld    ext6, 0x0818
18b0 -- 0080                        ld    ext0, -
18b1 -- 0830 0096                   ld    a, 0x0096
18b3 -- 4800 1DBE                   call  0x1dbe
18b5 -- 0830 7FFF                   ld    a, 0x7fff
18b7 -- 0F12                        ld    B[0x12], a
18b8 -- 0830 0002                   ld    a, 0x0002
18ba -- 0EF4                        ld    A[0xf4], a
18bb -- 0830 0007                   ld    a, 0x0007
18bd -- 0EF3                        ld    A[0xf3], a
18be -- 0810 7600                   ld    x, 0x7600
18c0 -- 07F0                        ld    a, B[0xf0]
18c1 -- 3801                        sub   a, 0x01
18c2 -- 0FF0                        ld    B[0xf0], a
18c3 -- 1531                        ld    r5, a
18c4 -- 0D01 18C8                   ld    (r5), 0x18c8
18c6 -- 4C00 0000                   bra   0x0000
18c8 -- 07F0                        ld    a, B[0xf0]
18c9 -- 1531                        ld    r5, a
18ca -- 9801                        add   a, 0x01
18cb -- 0FF0                        ld    B[0xf0], a
18cc -- 0361                        bra   (r5)
18cd -- 08E0 6000                   ld    ext6, 0x6000
18cf -- 08E0 0818                   ld    ext6, 0x0818
18d1 -- 0080                        ld    ext0, -
18d2 -- B800                        and   a, 0x00
18d3 -- 0FE3                        ld    B[0xe3], a
18d4 -- 0830 1000                   ld    a, 0x1000
18d6 -- 0F12                        ld    B[0x12], a
18d7 -- 0830 0002                   ld    a, 0x0002
18d9 -- 0EF4                        ld    A[0xf4], a
18da -- 08E0 7D20                   ld    ext6, 0x7d20
18dc -- 08E0 3018                   ld    ext6, 0x3018
18de -- 000A                        ld    -, ext2
18df -- 003A                        ld    a, ext2
18e0 -- A000                        and   a, -
18e1 -- 4D50 18EB                   bra   z, 0x18eb
18e3 -- 0830 7D27                   ld    a, 0x7d27
18e5 -- 4800 01B5                   call  0x01b5
18e7 -- 0031                        ld    a, x
18e8 -- 00F2                        ld    ext7, y
18e9 -- 4800 0376                   call  0x0376
18eb -- 07F0                        ld    a, B[0xf0]
18ec -- 1531                        ld    r5, a
18ed -- 9801                        add   a, 0x01
18ee -- 0FF0                        ld    B[0xf0], a
18ef -- 0361                        bra   (r5)
18f0 -- 0830 7880                   ld    a, 0x7880
18f2 -- 0EF2                        ld    A[0xf2], a
18f3 -- 4C00 18F8                   bra   0x18f8
18f5 -- 0830 7600                   ld    a, 0x7600
18f7 -- 0EF2                        ld    A[0xf2], a
18f8 -- 4800 1DD9                   call  0x1dd9
18fa -- 4800 1DCD                   call  0x1dcd
18fc -- 08E0 6000                   ld    ext6, 0x6000
18fe -- 08E0 0818                   ld    ext6, 0x0818
1900 -- 0080                        ld    ext0, -
1901 -- 0830 0074                   ld    a, 0x0074
1903 -- 4800 1DBE                   call  0x1dbe
1905 -- 0830 0010                   ld    a, 0x0010
1907 -- 0EF4                        ld    A[0xf4], a
1908 -- 0830 0006                   ld    a, 0x0006
190a -- 0EF1                        ld    A[0xf1], a
190b -- 06F2                        ld    a, A[0xf2]
190c -- 9807                        add   a, 0x07
190d -- 0013                        ld    x, a
190e -- 07F0                        ld    a, B[0xf0]
190f -- 3801                        sub   a, 0x01
1910 -- 0FF0                        ld    B[0xf0], a
1911 -- 1531                        ld    r5, a
1912 -- 0D01 1916                   ld    (r5), 0x1916
1914 -- 4C00 1D7D                   bra   0x1d7d
1916 -- 06F2                        ld    a, A[0xf2]
1917 -- 9820                        add   a, 0x20
1918 -- 0EF2                        ld    A[0xf2], a
1919 -- 0830 0800                   ld    a, 0x0800
191b -- 0F12                        ld    B[0x12], a
191c -- 0830 0002                   ld    a, 0x0002
191e -- 0EF4                        ld    A[0xf4], a
191f -- 0830 0096                   ld    a, 0x0096
1921 -- 4800 1DBE                   call  0x1dbe
1923 -- 0830 0012                   ld    a, 0x0012
1925 -- 0EF3                        ld    A[0xf3], a
1926 -- 06F2                        ld    a, A[0xf2]
1927 -- 0013                        ld    x, a
1928 -- 07F0                        ld    a, B[0xf0]
1929 -- 3801                        sub   a, 0x01
192a -- 0FF0                        ld    B[0xf0], a
192b -- 1531                        ld    r5, a
192c -- 0D01 1930                   ld    (r5), 0x1930
192e -- 4C00 0000                   bra   0x0000
1930 -- 07F0                        ld    a, B[0xf0]
1931 -- 1531                        ld    r5, a
1932 -- 9801                        add   a, 0x01
1933 -- 0FF0                        ld    B[0xf0], a
1934 -- 0361                        bra   (r5)
1935 -- 4800 1DD9                   call  0x1dd9
1937 -- 08E0 6000                   ld    ext6, 0x6000
1939 -- 08E0 0818                   ld    ext6, 0x0818
193b -- 0080                        ld    ext0, -
193c -- 4800 1E02                   call  0x1e02
193e -- A000                        and   a, -
193f -- 9003                        shl   a
1940 -- 9003                        shl   a
1941 -- 9003                        shl   a
1942 -- 9003                        shl   a
1943 -- 9003                        shl   a
1944 -- 0F10                        ld    B[0x10], a
1945 -- 0830 0096                   ld    a, 0x0096
1947 -- 4800 1DBE                   call  0x1dbe
1949 -- 0830 1000                   ld    a, 0x1000
194b -- 0F12                        ld    B[0x12], a
194c -- 0830 0010                   ld    a, 0x0010
194e -- 8710                        add   a, B[0x10]
194f -- 0EF4                        ld    A[0xf4], a
1950 -- 0830 0004                   ld    a, 0x0004
1952 -- 0EF3                        ld    A[0xf3], a
1953 -- 0810 7620                   ld    x, 0x7620
1955 -- 4C00 0000                   bra   0x0000
1957 -- 4800 1DD9                   call  0x1dd9
1959 -- 08E0 6000                   ld    ext6, 0x6000
195b -- 08E0 0818                   ld    ext6, 0x0818
195d -- 0080                        ld    ext0, -
195e -- 4800 1E02                   call  0x1e02
1960 -- 0F10                        ld    B[0x10], a
1961 -- 0830 0074                   ld    a, 0x0074
1963 -- 4800 1DBE                   call  0x1dbe
1965 -- 0830 0010                   ld    a, 0x0010
1967 -- 8710                        add   a, B[0x10]
1968 -- 0EF4                        ld    A[0xf4], a
1969 -- 0830 0007                   ld    a, 0x0007
196b -- 0EF1                        ld    A[0xf1], a
196c -- 0810 7607                   ld    x, 0x7607
196e -- 07F0                        ld    a, B[0xf0]
196f -- 3801                        sub   a, 0x01
1970 -- 0FF0                        ld    B[0xf0], a
1971 -- 1531                        ld    r5, a
1972 -- 0D01 1976                   ld    (r5), 0x1976
1974 -- 4C00 1D7D                   bra   0x1d7d
1976 -- 0830 0800                   ld    a, 0x0800
1978 -- 0F12                        ld    B[0x12], a
1979 -- 0830 0096                   ld    a, 0x0096
197b -- 4800 1DBE                   call  0x1dbe
197d -- 07C8                        ld    a, B[0xc8]
197e -- A000                        and   a, -
197f -- 4C50 1992                   bra   nz, 0x1992
1981 -- 0830 0002                   ld    a, 0x0002
1983 -- 8710                        add   a, B[0x10]
1984 -- 0EF4                        ld    A[0xf4], a
1985 -- 0830 0009                   ld    a, 0x0009
1987 -- 0EF3                        ld    A[0xf3], a
1988 -- 0810 7620                   ld    x, 0x7620
198a -- 07F0                        ld    a, B[0xf0]
198b -- 3801                        sub   a, 0x01
198c -- 0FF0                        ld    B[0xf0], a
198d -- 1531                        ld    r5, a
198e -- 0D01 1992                   ld    (r5), 0x1992
1990 -- 4C00 0000                   bra   0x0000
1992 -- 0830 0006                   ld    a, 0x0006
1994 -- 8710                        add   a, B[0x10]
1995 -- 0EF4                        ld    A[0xf4], a
1996 -- 0830 002C                   ld    a, 0x002c
1998 -- 0EF3                        ld    A[0xf3], a
1999 -- 0810 7760                   ld    x, 0x7760
199b -- 07F0                        ld    a, B[0xf0]
199c -- 3801                        sub   a, 0x01
199d -- 0FF0                        ld    B[0xf0], a
199e -- 1531                        ld    r5, a
199f -- 0D01 19A3                   ld    (r5), 0x19a3
19a1 -- 4C00 0000                   bra   0x0000
19a3 -- 0830 0006                   ld    a, 0x0006
19a5 -- 0EF1                        ld    A[0xf1], a
19a6 -- 0810 7D00                   ld    x, 0x7d00
19a8 -- 07F0                        ld    a, B[0xf0]
19a9 -- 3801                        sub   a, 0x01
19aa -- 0FF0                        ld    B[0xf0], a
19ab -- 1531                        ld    r5, a
19ac -- 0D01 19B0                   ld    (r5), 0x19b0
19ae -- 4C00 1D97                   bra   0x1d97
19b0 -- 07F0                        ld    a, B[0xf0]
19b1 -- 1531                        ld    r5, a
19b2 -- 9801                        add   a, 0x01
19b3 -- 0FF0                        ld    B[0xf0], a
19b4 -- 0361                        bra   (r5)
19b5 -- 8000
19b6 -- 03C5
19b7 -- 0031                        ld    a, x
19b8 -- 00E3                        ld    ext6, a
19b9 -- 08E0 3018                   ld    ext6, 0x3018
19bb -- 000A                        ld    -, ext2
19bc -- 9807                        add   a, 0x07
19bd -- 0EF2                        ld    A[0xf2], a
19be -- 003A                        ld    a, ext2
19bf -- A000                        and   a, -
19c0 -- 4D50 0012                   bra   z, 0x0012
19c2 -- 06F2                        ld    a, A[0xf2]
19c3 -- 4800 01B5                   call  0x01b5
19c5 -- 0031                        ld    a, x
19c6 -- 00F2                        ld    ext7, y
19c7 -- 4800 002C                   call  0x002c
19c9 -- 06F2                        ld    a, A[0xf2]
19ca -- 9820                        add   a, 0x20
19cb -- 0EF2                        ld    A[0xf2], a
19cc -- 06F3                        ld    a, A[0xf3]
19cd -- 3801                        sub   a, 0x01
19ce -- 0EF3                        ld    A[0xf3], a
19cf -- 4C70 0007                   bra   ns, 0x0007
19d1 -- 07F0                        ld    a, B[0xf0]
19d2 -- 1531                        ld    r5, a
19d3 -- 9801                        add   a, 0x01
19d4 -- 0FF0                        ld    B[0xf0], a
19d5 -- 0361                        bra   (r5)
19d6 -- 0820 0001                   ld    y, 0x0001
19d8 -- 8007                        add   a, p
19d9 -- 001F                        ld    x, ext7
19da -- 00E1                        ld    ext6, x
19db -- C715                        or    a, B[0x15]
19dc -- 00E3                        ld    ext6, a
19dd -- 0008                        ld    -, ext0
19de -- 0038                        ld    a, ext0
19df -- 0018                        ld    x, ext0
19e0 -- 00F1                        ld    ext7, x
19e1 -- 9002                        shr   a
19e2 -- C715                        or    a, B[0x15]
19e3 -- 001F                        ld    x, ext7
19e4 -- 00E1                        ld    ext6, x
19e5 -- 00E3                        ld    ext6, a
19e6 -- 0008                        ld    -, ext0
19e7 -- 0038                        ld    a, ext0
19e8 -- 0EED                        ld    A[0xed], a
19e9 -- 0713                        ld    a, B[0x13]
19ea -- 671B                        cmp   a, B[0x1b]
19eb -- 4C70 0053                   bra   ns, 0x0053
19ed -- 0038                        ld    a, ext0
19ee -- 0EEC                        ld    A[0xec], a
19ef -- 0000                        nop
19f0 -- 0000                        nop
19f1 -- 0000                        nop
19f2 -- 19E0                        ld    r1, 0xe0
19f3 -- 4800 0072                   call  0x0072
19f5 -- 4800 0072                   call  0x0072
19f7 -- 4800 0072                   call  0x0072
19f9 -- 06EC                        ld    a, A[0xec]
19fa -- B810                        and   a, 0x10
19fb -- 4C50 0054                   bra   nz, 0x0054
19fd -- 4800 0072                   call  0x0072
19ff -- 4800 01C5                   call  0x01c5
1a01 -- 06EF                        ld    a, A[0xef]
1a02 -- A000                        and   a, -
1a03 -- 4950 01EB                   call  z, 0x01eb
1a05 -- 06ED                        ld    a, A[0xed]
1a06 -- 3801                        sub   a, 0x01
1a07 -- 0EED                        ld    A[0xed], a
1a08 -- 4C70 0032                   bra   ns, 0x0032
1a0a -- 0065                        ret
1a0b -- 4800 01C2                   call  0x01c2
1a0d -- 06EF                        ld    a, A[0xef]
1a0e -- A000                        and   a, -
1a0f -- 4950 02D6                   call  z, 0x02d6
1a11 -- 06ED                        ld    a, A[0xed]
1a12 -- 3801                        sub   a, 0x01
1a13 -- 0EED                        ld    A[0xed], a
1a14 -- 4C70 0032                   bra   ns, 0x0032
1a16 -- 0065                        ret
1a17 -- 06EC                        ld    a, A[0xec]
1a18 -- B810                        and   a, 0x10
1a19 -- 4C50 0067                   bra   nz, 0x0067
1a1b -- 0008                        ld    -, ext0
1a1c -- 0008                        ld    -, ext0
1a1d -- 0008                        ld    -, ext0
1a1e -- 0008                        ld    -, ext0
1a1f -- 0008                        ld    -, ext0
1a20 -- 0008                        ld    -, ext0
1a21 -- 0008                        ld    -, ext0
1a22 -- 0008                        ld    -, ext0
1a23 -- 0008                        ld    -, ext0
1a24 -- 0008                        ld    -, ext0
1a25 -- 0008                        ld    -, ext0
1a26 -- 0008                        ld    -, ext0
1a27 -- 4C00 004E                   bra   0x004e
1a29 -- 06F0                        ld    a, A[0xf0]
1a2a -- 0063                        bra   a
1a2b -- 0038                        ld    a, ext0
1a2c -- 27C0                        sub   a, B[0xc0]
1a2d -- 0533                        ld    (r7|00), a
1a2e -- 0038                        ld    a, ext0
1a2f -- 27C1                        sub   a, B[0xc1]
1a30 -- 0537                        ld    (r7|01), a
1a31 -- 0038                        ld    a, ext0
1a32 -- 27C2                        sub   a, B[0xc2]
1a33 -- 053B                        ld    (r7|10), a
1a34 -- 0D0F 0020                   ld    (r7|11), 0x0020
1a36 -- 1810                        ld    r0, 0x10
1a37 -- B734                        mld   (r0+!), (r7|00)
1a38 -- 9774                        mpya  (r0+!), (r7|01)
1a39 -- 97B4                        mpya  (r0+!), (r7|10)
1a3a -- 97F4                        mpya  (r0+!), (r7|11)
1a3b -- 97F0                        mpya  (r0), (r7|11)
1a3c -- 9003                        shl   a
1a3d -- 0435                        ld    (r1+!), a
1a3e -- B734                        mld   (r0+!), (r7|00)
1a3f -- 9774                        mpya  (r0+!), (r7|01)
1a40 -- 97B4                        mpya  (r0+!), (r7|10)
1a41 -- 97F4                        mpya  (r0+!), (r7|11)
1a42 -- 97F0                        mpya  (r0), (r7|11)
1a43 -- 9003                        shl   a
1a44 -- 0435                        ld    (r1+!), a
1a45 -- B734                        mld   (r0+!), (r7|00)
1a46 -- 9774                        mpya  (r0+!), (r7|01)
1a47 -- 97B4                        mpya  (r0+!), (r7|10)
1a48 -- 97F4                        mpya  (r0+!), (r7|11)
1a49 -- 97F0                        mpya  (r0), (r7|11)
1a4a -- 9003                        shl   a
1a4b -- 0435                        ld    (r1+!), a
1a4c -- 0065                        ret
1a4d -- 0583                        ld    (r7|00), ext0
1a4e -- 0587                        ld    (r7|01), ext0
1a4f -- 058B                        ld    (r7|10), ext0
1a50 -- 0D0F 0400                   ld    (r7|11), 0x0400
1a52 -- 1810                        ld    r0, 0x10
1a53 -- B734                        mld   (r0+!), (r7|00)
1a54 -- 9774                        mpya  (r0+!), (r7|01)
1a55 -- 97B4                        mpya  (r0+!), (r7|10)
1a56 -- 97F4                        mpya  (r0+!), (r7|11)
1a57 -- 97F0                        mpya  (r0), (r7|11)
1a58 -- 9003                        shl   a
1a59 -- 9003                        shl   a
1a5a -- 9003                        shl   a
1a5b -- 0435                        ld    (r1+!), a
1a5c -- B734                        mld   (r0+!), (r7|00)
1a5d -- 9774                        mpya  (r0+!), (r7|01)
1a5e -- 97B4                        mpya  (r0+!), (r7|10)
1a5f -- 97F4                        mpya  (r0+!), (r7|11)
1a60 -- 97F0                        mpya  (r0), (r7|11)
1a61 -- 9003                        shl   a
1a62 -- 9003                        shl   a
1a63 -- 9003                        shl   a
1a64 -- 0435                        ld    (r1+!), a
1a65 -- B734                        mld   (r0+!), (r7|00)
1a66 -- 9774                        mpya  (r0+!), (r7|01)
1a67 -- 97B4                        mpya  (r0+!), (r7|10)
1a68 -- 97F4                        mpya  (r0+!), (r7|11)
1a69 -- 97F0                        mpya  (r0), (r7|11)
1a6a -- 9003                        shl   a
1a6b -- 9003                        shl   a
1a6c -- 9003                        shl   a
1a6d -- 0435                        ld    (r1+!), a
1a6e -- 0065                        ret
1a6f -- 0239                        ld    a, (r1--)
1a70 -- 2710                        sub   a, B[0x10]
1a71 -- 671D                        cmp   a, B[0x1d]
1a72 -- 4C70 00D5                   bra   ns, 0x00d5
1a74 -- 87F3                        add   a, B[0xf3]
1a75 -- 4A10                        ld    x, (a)
1a76 -- 0229                        ld    y, (r1--)
1a77 -- 0037                        ld    a, p
1a78 -- 9003                        shl   a
1a79 -- 9003                        shl   a
1a7a -- 9003                        shl   a
1a7b -- 9003                        shl   a
1a7c -- 0023                        ld    y, a
1a7d -- 9003                        shl   a
1a7e -- 9003                        shl   a
1a7f -- 8002                        add   a, y
1a80 -- 043A                        ld    (r2--), a
1a81 -- 0229                        ld    y, (r1--)
1a82 -- 0037                        ld    a, p
1a83 -- 9003                        shl   a
1a84 -- 9003                        shl   a
1a85 -- 9003                        shl   a
1a86 -- 9003                        shl   a
1a87 -- 9003                        shl   a
1a88 -- 9003                        shl   a
1a89 -- 043A                        ld    (r2--), a
1a8a -- 0065                        ret
1a8b -- 0000                        nop
1a8c -- 9002                        shr   a
1a8d -- 9002                        shr   a
1a8e -- 9002                        shr   a
1a8f -- 9002                        shr   a
1a90 -- 9002                        shr   a
1a91 -- 87F3                        add   a, B[0xf3]
1a92 -- 4A10                        ld    x, (a)
1a93 -- 0229                        ld    y, (r1--)
1a94 -- 0037                        ld    a, p
1a95 -- 9003                        shl   a
1a96 -- 0023                        ld    y, a
1a97 -- 9002                        shr   a
1a98 -- 9002                        shr   a
1a99 -- 8002                        add   a, y
1a9a -- 043A                        ld    (r2--), a
1a9b -- 0229                        ld    y, (r1--)
1a9c -- 0037                        ld    a, p
1a9d -- 9003                        shl   a
1a9e -- 043A                        ld    (r2--), a
1a9f -- 0065                        ret
1aa0 -- 0000                        nop
1aa1 -- 19EB                        ld    r1, 0xeb
1aa2 -- 1A0F                        ld    r2, 0x0f
1aa3 -- 4800 00B8                   call  0x00b8
1aa5 -- 4800 00B8                   call  0x00b8
1aa7 -- 4800 00B8                   call  0x00b8
1aa9 -- 4800 00B8                   call  0x00b8
1aab -- 06EC                        ld    a, A[0xec]
1aac -- B840                        and   a, 0x40
1aad -- 4D50 00FC                   bra   z, 0x00fc
1aaf -- 4800 01A5                   call  0x01a5
1ab1 -- 4C70 0126                   bra   ns, 0x0126
1ab3 -- 4800 0160                   call  0x0160
1ab5 -- 6711                        cmp   a, B[0x11]
1ab6 -- 4C70 0126                   bra   ns, 0x0126
1ab8 -- A716                        and   a, B[0x16]
1ab9 -- 9003                        shl   a
1aba -- 9003                        shl   a
1abb -- 8714                        add   a, B[0x14]
1abc -- 0437                        ld    (r3|01), a
1abd -- 00E3                        ld    ext6, a
1abe -- 08E0 0818                   ld    ext6, 0x0818
1ac0 -- 0009                        ld    -, ext1
1ac1 -- 0039                        ld    a, ext1
1ac2 -- 9801                        add   a, 0x01
1ac3 -- 671A                        cmp   a, B[0x1a]
1ac4 -- 4C70 0126                   bra   ns, 0x0126
1ac6 -- 02E7                        ld    ext6, (r3|01)
1ac7 -- 000E                        ld    -, ext6
1ac8 -- 0090                        ld    ext1, -
1ac9 -- 0093                        ld    ext1, a
1aca -- 8207                        add   a, (r3|01)
1acb -- 00E3                        ld    ext6, a
1acc -- 000E                        ld    -, ext6
1acd -- 0090                        ld    ext1, -
1ace -- 0713                        ld    a, B[0x13]
1acf -- 0093                        ld    ext1, a
1ad0 -- 9809                        add   a, 0x09
1ad1 -- 0F13                        ld    B[0x13], a
1ad2 -- 06EC                        ld    a, A[0xec]
1ad3 -- 0083                        ld    ext0, a
1ad4 -- 1908                        ld    r1, 0x08
1ad5 -- 0285                        ld    ext0, (r1+!)
1ad6 -- 0285                        ld    ext0, (r1+!)
1ad7 -- 0285                        ld    ext0, (r1+!)
1ad8 -- 0285                        ld    ext0, (r1+!)
1ad9 -- 0285                        ld    ext0, (r1+!)
1ada -- 0285                        ld    ext0, (r1+!)
1adb -- 0285                        ld    ext0, (r1+!)
1adc -- 0285                        ld    ext0, (r1+!)
1add -- 0065                        ret
1ade -- 19E8                        ld    r1, 0xe8
1adf -- 1A0D                        ld    r2, 0x0d
1ae0 -- 4800 00B8                   call  0x00b8
1ae2 -- 4800 00B8                   call  0x00b8
1ae4 -- 4800 00B8                   call  0x00b8
1ae6 -- 06EC                        ld    a, A[0xec]
1ae7 -- B840                        and   a, 0x40
1ae8 -- 4D50 0137                   bra   z, 0x0137
1aea -- 4800 01A5                   call  0x01a5
1aec -- 4C70 015F                   bra   ns, 0x015f
1aee -- 4800 0190                   call  0x0190
1af0 -- 6711                        cmp   a, B[0x11]
1af1 -- 4C70 015F                   bra   ns, 0x015f
1af3 -- A716                        and   a, B[0x16]
1af4 -- 9003                        shl   a
1af5 -- 9003                        shl   a
1af6 -- 8714                        add   a, B[0x14]
1af7 -- 0437                        ld    (r3|01), a
1af8 -- 00E3                        ld    ext6, a
1af9 -- 08E0 0818                   ld    ext6, 0x0818
1afb -- 0009                        ld    -, ext1
1afc -- 0039                        ld    a, ext1
1afd -- 9801                        add   a, 0x01
1afe -- 671A                        cmp   a, B[0x1a]
1aff -- 4C70 015F                   bra   ns, 0x015f
1b01 -- 02E7                        ld    ext6, (r3|01)
1b02 -- 000E                        ld    -, ext6
1b03 -- 0090                        ld    ext1, -
1b04 -- 0093                        ld    ext1, a
1b05 -- 8207                        add   a, (r3|01)
1b06 -- 00E3                        ld    ext6, a
1b07 -- 000E                        ld    -, ext6
1b08 -- 0090                        ld    ext1, -
1b09 -- 0713                        ld    a, B[0x13]
1b0a -- 0093                        ld    ext1, a
1b0b -- 9807                        add   a, 0x07
1b0c -- 0F13                        ld    B[0x13], a
1b0d -- 06EC                        ld    a, A[0xec]
1b0e -- 0083                        ld    ext0, a
1b0f -- 1908                        ld    r1, 0x08
1b10 -- 0285                        ld    ext0, (r1+!)
1b11 -- 0285                        ld    ext0, (r1+!)
1b12 -- 0285                        ld    ext0, (r1+!)
1b13 -- 0285                        ld    ext0, (r1+!)
1b14 -- 0285                        ld    ext0, (r1+!)
1b15 -- 0285                        ld    ext0, (r1+!)
1b16 -- 0065                        ret
1b17 -- 06EC                        ld    a, A[0xec]
1b18 -- B807                        and   a, 0x07
1b19 -- 9838                        add   a, 0x38
1b1a -- 1430                        ld    r0, a
1b1b -- 0260                        bra   (r0)
1b1c -- 4800 016D                   call  0x016d
1b1e -- 8717                        add   a, B[0x17]
1b1f -- 0065                        ret
1b20 -- 4800 0189                   call  0x0189
1b22 -- 8718                        add   a, B[0x18]
1b23 -- 0065                        ret
1b24 -- 06EB                        ld    a, A[0xeb]
1b25 -- 66E8                        cmp   a, A[0xe8]
1b26 -- 4C70 0172                   bra   ns, 0x0172
1b28 -- 06E8                        ld    a, A[0xe8]
1b29 -- 66E5                        cmp   a, A[0xe5]
1b2a -- 4C70 0176                   bra   ns, 0x0176
1b2c -- 06E5                        ld    a, A[0xe5]
1b2d -- 66E2                        cmp   a, A[0xe2]
1b2e -- 4C70 017A                   bra   ns, 0x017a
1b30 -- 06E2                        ld    a, A[0xe2]
1b31 -- 0065                        ret
1b32 -- 06EB                        ld    a, A[0xeb]
1b33 -- 66E8                        cmp   a, A[0xe8]
1b34 -- 4D70 0180                   bra   s, 0x0180
1b36 -- 06E8                        ld    a, A[0xe8]
1b37 -- 66E5                        cmp   a, A[0xe5]
1b38 -- 4D70 0184                   bra   s, 0x0184
1b3a -- 06E5                        ld    a, A[0xe5]
1b3b -- 66E2                        cmp   a, A[0xe2]
1b3c -- 4D70 0188                   bra   s, 0x0188
1b3e -- 06E2                        ld    a, A[0xe2]
1b3f -- 0065                        ret
1b40 -- 06E2                        ld    a, A[0xe2]
1b41 -- 86E5                        add   a, A[0xe5]
1b42 -- 86E8                        add   a, A[0xe8]
1b43 -- 86EB                        add   a, A[0xeb]
1b44 -- 9002                        shr   a
1b45 -- 9002                        shr   a
1b46 -- 0065                        ret
1b47 -- 06EC                        ld    a, A[0xec]
1b48 -- B807                        and   a, 0x07
1b49 -- 983E                        add   a, 0x3e
1b4a -- 1430                        ld    r0, a
1b4b -- 0260                        bra   (r0)
1b4c -- 4800 019D                   call  0x019d
1b4e -- 8717                        add   a, B[0x17]
1b4f -- 0065                        ret
1b50 -- 4800 019D                   call  0x019d
1b52 -- 8718                        add   a, B[0x18]
1b53 -- 0065                        ret
1b54 -- 06E2                        ld    a, A[0xe2]
1b55 -- 86E5                        add   a, A[0xe5]
1b56 -- 86E8                        add   a, A[0xe8]
1b57 -- 0013                        ld    x, a
1b58 -- 0820 2AAA                   ld    y, 0x2aaa
1b5a -- 0037                        ld    a, p
1b5b -- 0065                        ret
1b5c -- 060A                        ld    a, A[0x0a]
1b5d -- 260C                        sub   a, A[0x0c]
1b5e -- 0013                        ld    x, a
1b5f -- 0609                        ld    a, A[0x09]
1b60 -- 260B                        sub   a, A[0x0b]
1b61 -- 0023                        ld    y, a
1b62 -- 060B                        ld    a, A[0x0b]
1b63 -- 260D                        sub   a, A[0x0d]
1b64 -- 0433                        ld    (r3|00), a
1b65 -- 0608                        ld    a, A[0x08]
1b66 -- 260A                        sub   a, A[0x0a]
1b67 -- 0533                        ld    (r7|00), a
1b68 -- B800                        and   a, 0x00
1b69 -- 9733                        mpya  (r3|00), (r7|00)
1b6a -- 3733                        mpys  (r3|00), (r7|00)
1b6b -- 0065                        ret
1b6c -- 00E3                        ld    ext6, a
1b6d -- 08E0 0818                   ld    ext6, 0x0818
1b6f -- 000C                        ld    -, ext4
1b70 -- 1810                        ld    r0, 0x10
1b71 -- 071C                        ld    a, B[0x1c]
1b72 -- 04C4                        ld    (r0+!), ext4
1b73 -- 3801                        sub   a, 0x01
1b74 -- 4C70 01BB                   bra   ns, 0x01bb
1b76 -- 001C                        ld    x, ext4
1b77 -- 002C                        ld    y, ext4
1b78 -- 0065                        ret
1b79 -- 1D02                        ld    r5, 0x02
1b7a -- 4C00 01C6                   bra   0x01c6
1b7c -- 1D03                        ld    r5, 0x03
1b7d -- B800                        and   a, 0x00
1b7e -- 0EEF                        ld    A[0xef], a
1b7f -- 0EEE                        ld    A[0xee], a
1b80 -- 1C01                        ld    r4, 0x01
1b81 -- 18E0                        ld    r0, 0xe0
1b82 -- 0234                        ld    a, (r0+!)
1b83 -- 9007                        abs   a
1b84 -- 6712                        cmp   a, B[0x12]
1b85 -- 4D70 01D3                   bra   s, 0x01d3
1b87 -- 06EF                        ld    a, A[0xef]
1b88 -- D300                        or    a, r4
1b89 -- 0EEF                        ld    A[0xef], a
1b8a -- 0204                        ld    -, (r0+!)
1b8b -- 0230                        ld    a, (r0)
1b8c -- 6711                        cmp   a, B[0x11]
1b8d -- 4D70 01DB                   bra   s, 0x01db
1b8f -- 06EF                        ld    a, A[0xef]
1b90 -- D300                        or    a, r4
1b91 -- 0EEF                        ld    A[0xef], a
1b92 -- 0234                        ld    a, (r0+!)
1b93 -- 66F4                        cmp   a, A[0xf4]
1b94 -- 4C70 01E2                   bra   ns, 0x01e2
1b96 -- 06EE                        ld    a, A[0xee]
1b97 -- D300                        or    a, r4
1b98 -- 0EEE                        ld    A[0xee], a
1b99 -- 1330                        ld    a, r4
1b9a -- 9003                        shl   a
1b9b -- 1530                        ld    r4, a
1b9c -- 1331                        ld    a, r5
1b9d -- 3801                        sub   a, 0x01
1b9e -- 1531                        ld    r5, a
1b9f -- 4C70 01CB                   bra   ns, 0x01cb
1ba1 -- 0065                        ret
1ba2 -- 06EE                        ld    a, A[0xee]
1ba3 -- 9820                        add   a, 0x20
1ba4 -- 1430                        ld    r0, a
1ba5 -- 0260                        bra   (r0)
1ba6 -- 0065                        ret
1ba7 -- 1806                        ld    r0, 0x06
1ba8 -- 19E2                        ld    r1, 0xe2
1ba9 -- 1AE5                        ld    r2, 0xe5
1baa -- 4800 0338                   call  0x0338
1bac -- 18E2                        ld    r0, 0xe2
1bad -- 19E2                        ld    r1, 0xe2
1bae -- 1AEB                        ld    r2, 0xeb
1baf -- 4800 0338                   call  0x0338
1bb1 -- 4800 00EA                   call  0x00ea
1bb3 -- 06E3                        ld    a, A[0xe3]
1bb4 -- 0EE6                        ld    A[0xe6], a
1bb5 -- 06E4                        ld    a, A[0xe4]
1bb6 -- 0EE7                        ld    A[0xe7], a
1bb7 -- 06E5                        ld    a, A[0xe5]
1bb8 -- 0EE8                        ld    A[0xe8], a
1bb9 -- 0604                        ld    a, A[0x04]
1bba -- 0EE3                        ld    A[0xe3], a
1bbb -- 0605                        ld    a, A[0x05]
1bbc -- 0EE4                        ld    A[0xe4], a
1bbd -- 0606                        ld    a, A[0x06]
1bbe -- 0EE5                        ld    A[0xe5], a
1bbf -- 06EC                        ld    a, A[0xec]
1bc0 -- D810                        or    a, 0x10
1bc1 -- 0EEC                        ld    A[0xec], a
1bc2 -- 4C00 0127                   bra   0x0127
1bc4 -- 1806                        ld    r0, 0x06
1bc5 -- 19E5                        ld    r1, 0xe5
1bc6 -- 1AE8                        ld    r2, 0xe8
1bc7 -- 4800 0338                   call  0x0338
1bc9 -- 18E5                        ld    r0, 0xe5
1bca -- 19E5                        ld    r1, 0xe5
1bcb -- 1AE2                        ld    r2, 0xe2
1bcc -- 4800 0338                   call  0x0338
1bce -- 4800 00EA                   call  0x00ea
1bd0 -- 06E3                        ld    a, A[0xe3]
1bd1 -- 0EE0                        ld    A[0xe0], a
1bd2 -- 06E4                        ld    a, A[0xe4]
1bd3 -- 0EE1                        ld    A[0xe1], a
1bd4 -- 06E5                        ld    a, A[0xe5]
1bd5 -- 0EE2                        ld    A[0xe2], a
1bd6 -- 0604                        ld    a, A[0x04]
1bd7 -- 0EE3                        ld    A[0xe3], a
1bd8 -- 0605                        ld    a, A[0x05]
1bd9 -- 0EE4                        ld    A[0xe4], a
1bda -- 0606                        ld    a, A[0x06]
1bdb -- 0EE5                        ld    A[0xe5], a
1bdc -- 06EC                        ld    a, A[0xec]
1bdd -- D810                        or    a, 0x10
1bde -- 0EEC                        ld    A[0xec], a
1bdf -- 4C00 0127                   bra   0x0127
1be1 -- 18E5                        ld    r0, 0xe5
1be2 -- 19E5                        ld    r1, 0xe5
1be3 -- 1AE8                        ld    r2, 0xe8
1be4 -- 4800 0338                   call  0x0338
1be6 -- 18E2                        ld    r0, 0xe2
1be7 -- 19E2                        ld    r1, 0xe2
1be8 -- 1AEB                        ld    r2, 0xeb
1be9 -- 4800 0338                   call  0x0338
1beb -- 4C00 00EA                   bra   0x00ea
1bed -- 1806                        ld    r0, 0x06
1bee -- 19E8                        ld    r1, 0xe8
1bef -- 1AEB                        ld    r2, 0xeb
1bf0 -- 4800 0338                   call  0x0338
1bf2 -- 18E8                        ld    r0, 0xe8
1bf3 -- 19E8                        ld    r1, 0xe8
1bf4 -- 1AE5                        ld    r2, 0xe5
1bf5 -- 4800 0338                   call  0x0338
1bf7 -- 4800 00EA                   call  0x00ea
1bf9 -- 06E9                        ld    a, A[0xe9]
1bfa -- 0EE3                        ld    A[0xe3], a
1bfb -- 06EA                        ld    a, A[0xea]
1bfc -- 0EE4                        ld    A[0xe4], a
1bfd -- 06EB                        ld    a, A[0xeb]
1bfe -- 0EE5                        ld    A[0xe5], a
1bff -- 0604                        ld    a, A[0x04]
1c00 -- 0EE0                        ld    A[0xe0], a
1c01 -- 0605                        ld    a, A[0x05]
1c02 -- 0EE1                        ld    A[0xe1], a
1c03 -- 0606                        ld    a, A[0x06]
1c04 -- 0EE2                        ld    A[0xe2], a
1c05 -- 06EC                        ld    a, A[0xec]
1c06 -- D810                        or    a, 0x10
1c07 -- 0EEC                        ld    A[0xec], a
1c08 -- 4C00 0127                   bra   0x0127
1c0a -- 18E8                        ld    r0, 0xe8
1c0b -- 19E8                        ld    r1, 0xe8
1c0c -- 1AEB                        ld    r2, 0xeb
1c0d -- 4800 0338                   call  0x0338
1c0f -- 18E5                        ld    r0, 0xe5
1c10 -- 19E5                        ld    r1, 0xe5
1c11 -- 1AE2                        ld    r2, 0xe2
1c12 -- 4800 0338                   call  0x0338
1c14 -- 4C00 00EA                   bra   0x00ea
1c16 -- 18E5                        ld    r0, 0xe5
1c17 -- 19E8                        ld    r1, 0xe8
1c18 -- 1AEB                        ld    r2, 0xeb
1c19 -- 4800 0338                   call  0x0338
1c1b -- 18E2                        ld    r0, 0xe2
1c1c -- 19E2                        ld    r1, 0xe2
1c1d -- 1AEB                        ld    r2, 0xeb
1c1e -- 4800 0338                   call  0x0338
1c20 -- 06E9                        ld    a, A[0xe9]
1c21 -- 0EE6                        ld    A[0xe6], a
1c22 -- 06EA                        ld    a, A[0xea]
1c23 -- 0EE7                        ld    A[0xe7], a
1c24 -- 06EB                        ld    a, A[0xeb]
1c25 -- 0EE8                        ld    A[0xe8], a
1c26 -- 06EC                        ld    a, A[0xec]
1c27 -- D810                        or    a, 0x10
1c28 -- 0EEC                        ld    A[0xec], a
1c29 -- 4C00 0127                   bra   0x0127
1c2b -- 1806                        ld    r0, 0x06
1c2c -- 19EB                        ld    r1, 0xeb
1c2d -- 1AE2                        ld    r2, 0xe2
1c2e -- 4800 0338                   call  0x0338
1c30 -- 18EB                        ld    r0, 0xeb
1c31 -- 19EB                        ld    r1, 0xeb
1c32 -- 1AE8                        ld    r2, 0xe8
1c33 -- 4800 0338                   call  0x0338
1c35 -- 4800 00EA                   call  0x00ea
1c37 -- 06E9                        ld    a, A[0xe9]
1c38 -- 0EE3                        ld    A[0xe3], a
1c39 -- 06EA                        ld    a, A[0xea]
1c3a -- 0EE4                        ld    A[0xe4], a
1c3b -- 06EB                        ld    a, A[0xeb]
1c3c -- 0EE5                        ld    A[0xe5], a
1c3d -- 0604                        ld    a, A[0x04]
1c3e -- 0EE6                        ld    A[0xe6], a
1c3f -- 0605                        ld    a, A[0x05]
1c40 -- 0EE7                        ld    A[0xe7], a
1c41 -- 0606                        ld    a, A[0x06]
1c42 -- 0EE8                        ld    A[0xe8], a
1c43 -- 06EC                        ld    a, A[0xec]
1c44 -- D810                        or    a, 0x10
1c45 -- 0EEC                        ld    A[0xec], a
1c46 -- 4C00 0127                   bra   0x0127
1c48 -- 18E2                        ld    r0, 0xe2
1c49 -- 19E2                        ld    r1, 0xe2
1c4a -- 1AE5                        ld    r2, 0xe5
1c4b -- 4800 0338                   call  0x0338
1c4d -- 18EB                        ld    r0, 0xeb
1c4e -- 19EB                        ld    r1, 0xeb
1c4f -- 1AE8                        ld    r2, 0xe8
1c50 -- 4800 0338                   call  0x0338
1c52 -- 4C00 00EA                   bra   0x00ea
1c54 -- 18E5                        ld    r0, 0xe5
1c55 -- 19E5                        ld    r1, 0xe5
1c56 -- 1AE8                        ld    r2, 0xe8
1c57 -- 4800 0338                   call  0x0338
1c59 -- 18E2                        ld    r0, 0xe2
1c5a -- 19EB                        ld    r1, 0xeb
1c5b -- 1AE8                        ld    r2, 0xe8
1c5c -- 4800 0338                   call  0x0338
1c5e -- 06EC                        ld    a, A[0xec]
1c5f -- D810                        or    a, 0x10
1c60 -- 0EEC                        ld    A[0xec], a
1c61 -- 4C00 0127                   bra   0x0127
1c63 -- 18EB                        ld    r0, 0xeb
1c64 -- 19EB                        ld    r1, 0xeb
1c65 -- 1AE2                        ld    r2, 0xe2
1c66 -- 4800 0338                   call  0x0338
1c68 -- 18E8                        ld    r0, 0xe8
1c69 -- 19E8                        ld    r1, 0xe8
1c6a -- 1AE5                        ld    r2, 0xe5
1c6b -- 4800 0338                   call  0x0338
1c6d -- 4C00 00EA                   bra   0x00ea
1c6f -- 18E2                        ld    r0, 0xe2
1c70 -- 19E2                        ld    r1, 0xe2
1c71 -- 1AE5                        ld    r2, 0xe5
1c72 -- 4800 0338                   call  0x0338
1c74 -- 18E8                        ld    r0, 0xe8
1c75 -- 19E8                        ld    r1, 0xe8
1c76 -- 1AE5                        ld    r2, 0xe5
1c77 -- 4800 0338                   call  0x0338
1c79 -- 06EC                        ld    a, A[0xec]
1c7a -- D810                        or    a, 0x10
1c7b -- 0EEC                        ld    A[0xec], a
1c7c -- 4C00 0127                   bra   0x0127
1c7e -- 18E8                        ld    r0, 0xe8
1c7f -- 19EB                        ld    r1, 0xeb
1c80 -- 1AE2                        ld    r2, 0xe2
1c81 -- 4800 0338                   call  0x0338
1c83 -- 18E5                        ld    r0, 0xe5
1c84 -- 19E5                        ld    r1, 0xe5
1c85 -- 1AE2                        ld    r2, 0xe2
1c86 -- 4800 0338                   call  0x0338
1c88 -- 06EC                        ld    a, A[0xec]
1c89 -- D810                        or    a, 0x10
1c8a -- 0EEC                        ld    A[0xec], a
1c8b -- 4C00 0127                   bra   0x0127
1c8d -- 06EE                        ld    a, A[0xee]
1c8e -- 9830                        add   a, 0x30
1c8f -- 1430                        ld    r0, a
1c90 -- 0260                        bra   (r0)
1c91 -- 0065                        ret
1c92 -- 18EB                        ld    r0, 0xeb
1c93 -- 19E2                        ld    r1, 0xe2
1c94 -- 1AE8                        ld    r2, 0xe8
1c95 -- 4800 0338                   call  0x0338
1c97 -- 18E2                        ld    r0, 0xe2
1c98 -- 19E2                        ld    r1, 0xe2
1c99 -- 1AE5                        ld    r2, 0xe5
1c9a -- 4800 0338                   call  0x0338
1c9c -- 06EC                        ld    a, A[0xec]
1c9d -- A719                        and   a, B[0x19]
1c9e -- 0EEC                        ld    A[0xec], a
1c9f -- 4C00 00EA                   bra   0x00ea
1ca1 -- 1806                        ld    r0, 0x06
1ca2 -- 19E5                        ld    r1, 0xe5
1ca3 -- 1AE8                        ld    r2, 0xe8
1ca4 -- 4800 0338                   call  0x0338
1ca6 -- 18E5                        ld    r0, 0xe5
1ca7 -- 19E5                        ld    r1, 0xe5
1ca8 -- 1AE2                        ld    r2, 0xe2
1ca9 -- 4800 0338                   call  0x0338
1cab -- 06E6                        ld    a, A[0xe6]
1cac -- 0EE9                        ld    A[0xe9], a
1cad -- 06E7                        ld    a, A[0xe7]
1cae -- 0EEA                        ld    A[0xea], a
1caf -- 06E8                        ld    a, A[0xe8]
1cb0 -- 0EEB                        ld    A[0xeb], a
1cb1 -- 0604                        ld    a, A[0x04]
1cb2 -- 0EE6                        ld    A[0xe6], a
1cb3 -- 0605                        ld    a, A[0x05]
1cb4 -- 0EE7                        ld    A[0xe7], a
1cb5 -- 0606                        ld    a, A[0x06]
1cb6 -- 0EE8                        ld    A[0xe8], a
1cb7 -- 06EC                        ld    a, A[0xec]
1cb8 -- A719                        and   a, B[0x19]
1cb9 -- 0EEC                        ld    A[0xec], a
1cba -- 4C00 00EA                   bra   0x00ea
1cbc -- 18E5                        ld    r0, 0xe5
1cbd -- 19E5                        ld    r1, 0xe5
1cbe -- 1AE8                        ld    r2, 0xe8
1cbf -- 4800 0338                   call  0x0338
1cc1 -- 18E2                        ld    r0, 0xe2
1cc2 -- 19E2                        ld    r1, 0xe2
1cc3 -- 1AE8                        ld    r2, 0xe8
1cc4 -- 4800 0338                   call  0x0338
1cc6 -- 4C00 0127                   bra   0x0127
1cc8 -- 18EB                        ld    r0, 0xeb
1cc9 -- 19E8                        ld    r1, 0xe8
1cca -- 1AE2                        ld    r2, 0xe2
1ccb -- 4800 0338                   call  0x0338
1ccd -- 18E8                        ld    r0, 0xe8
1cce -- 19E8                        ld    r1, 0xe8
1ccf -- 1AE5                        ld    r2, 0xe5
1cd0 -- 4800 0338                   call  0x0338
1cd2 -- 06EC                        ld    a, A[0xec]
1cd3 -- A719                        and   a, B[0x19]
1cd4 -- 0EEC                        ld    A[0xec], a
1cd5 -- 4C00 00EA                   bra   0x00ea
1cd7 -- 18E2                        ld    r0, 0xe2
1cd8 -- 19E2                        ld    r1, 0xe2
1cd9 -- 1AE5                        ld    r2, 0xe5
1cda -- 4800 0338                   call  0x0338
1cdc -- 18E8                        ld    r0, 0xe8
1cdd -- 19E8                        ld    r1, 0xe8
1cde -- 1AE5                        ld    r2, 0xe5
1cdf -- 4800 0338                   call  0x0338
1ce1 -- 4C00 0127                   bra   0x0127
1ce3 -- 18E8                        ld    r0, 0xe8
1ce4 -- 19E8                        ld    r1, 0xe8
1ce5 -- 1AE2                        ld    r2, 0xe2
1ce6 -- 4800 0338                   call  0x0338
1ce8 -- 18E5                        ld    r0, 0xe5
1ce9 -- 19E5                        ld    r1, 0xe5
1cea -- 1AE2                        ld    r2, 0xe2
1ceb -- 4800 0338                   call  0x0338
1ced -- 4C00 0127                   bra   0x0127
1cef -- 0232                        ld    a, (r2)
1cf0 -- 2209                        sub   a, (r1--)
1cf1 -- 87F3                        add   a, B[0xf3]
1cf2 -- 4A10                        ld    x, (a)
1cf3 -- 06F4                        ld    a, A[0xf4]
1cf4 -- 220A                        sub   a, (r2--)
1cf5 -- 0023                        ld    y, a
1cf6 -- 0037                        ld    a, p
1cf7 -- 1D00                        ld    r5, 0x00
1cf8 -- A003                        and   a, a
1cf9 -- 4C70 0346                   bra   ns, 0x0346
1cfb -- 1D01                        ld    r5, 0x01
1cfc -- 9006                        neg   a
1cfd -- 9003                        shl   a
1cfe -- 0533                        ld    (r7|00), a
1cff -- 07F1                        ld    a, B[0xf1]
1d00 -- 9002                        shr   a
1d01 -- 05F7                        ld    (r7|01), ext7
1d02 -- 023A                        ld    a, (r2--)
1d03 -- 2209                        sub   a, (r1--)
1d04 -- 0437                        ld    (r3|01), a
1d05 -- 0236                        ld    a, (r2+!)
1d06 -- 2205                        sub   a, (r1+!)
1d07 -- 0433                        ld    (r3|00), a
1d08 -- 06F4                        ld    a, A[0xf4]
1d09 -- 0438                        ld    (r0--), a
1d0a -- B737                        mld   (r3|01), (r7|00)
1d0b -- 9777                        mpya  (r3|01), (r7|01)
1d0c -- 04FF                        ld    (r3|11), ext7
1d0d -- B800                        and   a, 0x00
1d0e -- 023F                        ld    a, (r3|11)
1d0f -- 9002                        shr   a
1d10 -- 8007                        add   a, p
1d11 -- 9002                        shr   a
1d12 -- 0013                        ld    x, a
1d13 -- 002F                        ld    y, ext7
1d14 -- 1331                        ld    a, r5
1d15 -- A000                        and   a, -
1d16 -- 0031                        ld    a, x
1d17 -- 00F2                        ld    ext7, y
1d18 -- 9056                        neg   nz, a
1d19 -- 820A                        add   a, (r2--)
1d1a -- 0438                        ld    (r0--), a
1d1b -- B733                        mld   (r3|00), (r7|00)
1d1c -- 9773                        mpya  (r3|00), (r7|01)
1d1d -- 04FF                        ld    (r3|11), ext7
1d1e -- B800                        and   a, 0x00
1d1f -- 023F                        ld    a, (r3|11)
1d20 -- 9002                        shr   a
1d21 -- 8007                        add   a, p
1d22 -- 9002                        shr   a
1d23 -- 0013                        ld    x, a
1d24 -- 002F                        ld    y, ext7
1d25 -- 1331                        ld    a, r5
1d26 -- A000                        and   a, -
1d27 -- 0031                        ld    a, x
1d28 -- 00F2                        ld    ext7, y
1d29 -- 9056                        neg   nz, a
1d2a -- 820A                        add   a, (r2--)
1d2b -- 0438                        ld    (r0--), a
1d2c -- 0065                        ret
1d2d -- 001F                        ld    x, ext7
1d2e -- 00E1                        ld    ext6, x
1d2f -- 00E3                        ld    ext6, a
1d30 -- 0008                        ld    -, ext0
1d31 -- 0038                        ld    a, ext0
1d32 -- 0EED                        ld    A[0xed], a
1d33 -- 9801                        add   a, 0x01
1d34 -- 87E3                        add   a, B[0xe3]
1d35 -- 0FE3                        ld    B[0xe3], a
1d36 -- 0038                        ld    a, ext0
1d37 -- 0EEC                        ld    A[0xec], a
1d38 -- 19E0                        ld    r1, 0xe0
1d39 -- 4800 0096                   call  0x0096
1d3b -- 4800 0096                   call  0x0096
1d3d -- 4800 0096                   call  0x0096
1d3f -- 06EC                        ld    a, A[0xec]
1d40 -- B810                        and   a, 0x10
1d41 -- 4C50 0396                   bra   nz, 0x0396
1d43 -- 4800 0096                   call  0x0096
1d45 -- 4800 039E                   call  0x039e
1d47 -- 06ED                        ld    a, A[0xed]
1d48 -- 3801                        sub   a, 0x01
1d49 -- 0EED                        ld    A[0xed], a
1d4a -- 4C70 037F                   bra   ns, 0x037f
1d4c -- 0065                        ret
1d4d -- 4800 03B4                   call  0x03b4
1d4f -- 06ED                        ld    a, A[0xed]
1d50 -- 3801                        sub   a, 0x01
1d51 -- 0EED                        ld    A[0xed], a
1d52 -- 4C70 037F                   bra   ns, 0x037f
1d54 -- 0065                        ret
1d55 -- 19EB                        ld    r1, 0xeb
1d56 -- 1A0F                        ld    r2, 0x0f
1d57 -- 4800 00B8                   call  0x00b8
1d59 -- 4800 00B8                   call  0x00b8
1d5b -- 4800 00B8                   call  0x00b8
1d5d -- 4800 00B8                   call  0x00b8
1d5f -- 06EC                        ld    a, A[0xec]
1d60 -- 0083                        ld    ext0, a
1d61 -- 1908                        ld    r1, 0x08
1d62 -- 0285                        ld    ext0, (r1+!)
1d63 -- 0285                        ld    ext0, (r1+!)
1d64 -- 0285                        ld    ext0, (r1+!)
1d65 -- 0285                        ld    ext0, (r1+!)
1d66 -- 0285                        ld    ext0, (r1+!)
1d67 -- 0285                        ld    ext0, (r1+!)
1d68 -- 0285                        ld    ext0, (r1+!)
1d69 -- 0285                        ld    ext0, (r1+!)
1d6a -- 0065                        ret
1d6b -- 19E8                        ld    r1, 0xe8
1d6c -- 1A0D                        ld    r2, 0x0d
1d6d -- 4800 00B8                   call  0x00b8
1d6f -- 4800 00B8                   call  0x00b8
1d71 -- 4800 00B8                   call  0x00b8
1d73 -- 06EC                        ld    a, A[0xec]
1d74 -- 0083                        ld    ext0, a
1d75 -- 1908                        ld    r1, 0x08
1d76 -- 0285                        ld    ext0, (r1+!)
1d77 -- 0285                        ld    ext0, (r1+!)
1d78 -- 0285                        ld    ext0, (r1+!)
1d79 -- 0285                        ld    ext0, (r1+!)
1d7a -- 0285                        ld    ext0, (r1+!)
1d7b -- 0285                        ld    ext0, (r1+!)
1d7c -- 0065                        ret
1d7d -- 0031                        ld    a, x
1d7e -- 4800 01B5                   call  0x01b5
1d80 -- 18F5                        ld    r0, 0xf5
1d81 -- 0414                        ld    (r0+!), x
1d82 -- 0424                        ld    (r0+!), y
1d83 -- 000E                        ld    -, ext6
1d84 -- 08E0 0818                   ld    ext6, 0x0818
1d86 -- 000A                        ld    -, ext2
1d87 -- 001A                        ld    x, ext2
1d88 -- 18F5                        ld    r0, 0xf5
1d89 -- 0234                        ld    a, (r0+!)
1d8a -- 02F4                        ld    ext7, (r0+!)
1d8b -- 4800 001F                   call  0x001f
1d8d -- 06F1                        ld    a, A[0xf1]
1d8e -- 3801                        sub   a, 0x01
1d8f -- 0EF1                        ld    A[0xf1], a
1d90 -- 4C70 1D87                   bra   ns, 0x1d87
1d92 -- 07F0                        ld    a, B[0xf0]
1d93 -- 1531                        ld    r5, a
1d94 -- 9801                        add   a, 0x01
1d95 -- 0FF0                        ld    B[0xf0], a
1d96 -- 0361                        bra   (r5)
1d97 -- 00E1                        ld    ext6, x
1d98 -- 08E0 0818                   ld    ext6, 0x0818
1d9a -- 000A                        ld    -, ext2
1d9b -- 003A                        ld    a, ext2
1d9c -- A000                        and   a, -
1d9d -- 4D50 1DB9                   bra   z, 0x1db9
1d9f -- 0031                        ld    a, x
1da0 -- 9807                        add   a, 0x07
1da1 -- 4800 01B5                   call  0x01b5
1da3 -- 18F5                        ld    r0, 0xf5
1da4 -- 0414                        ld    (r0+!), x
1da5 -- 0424                        ld    (r0+!), y
1da6 -- 000E                        ld    -, ext6
1da7 -- 08E0 0818                   ld    ext6, 0x0818
1da9 -- 000A                        ld    -, ext2
1daa -- 003A                        ld    a, ext2
1dab -- A000                        and   a, -
1dac -- 4D50 1DB4                   bra   z, 0x1db4
1dae -- 0013                        ld    x, a
1daf -- 18F5                        ld    r0, 0xf5
1db0 -- 0234                        ld    a, (r0+!)
1db1 -- 02F4                        ld    ext7, (r0+!)
1db2 -- 4800 001F                   call  0x001f
1db4 -- 06F1                        ld    a, A[0xf1]
1db5 -- 3801                        sub   a, 0x01
1db6 -- 0EF1                        ld    A[0xf1], a
1db7 -- 4C70 1DAA                   bra   ns, 0x1daa
1db9 -- 07F0                        ld    a, B[0xf0]
1dba -- 1531                        ld    r5, a
1dbb -- 9801                        add   a, 0x01
1dbc -- 0FF0                        ld    B[0xf0], a
1dbd -- 0361                        bra   (r5)
1dbe -- 08E0 803D                   ld    ext6, 0x803d
1dc0 -- 08E0 101C                   ld    ext6, 0x101c
1dc2 -- 00C0                        ld    ext4, -
1dc3 -- 00C3                        ld    ext4, a
1dc4 -- 00C3                        ld    ext4, a
1dc5 -- 00C3                        ld    ext4, a
1dc6 -- 08E0 8047                   ld    ext6, 0x8047
1dc8 -- 08E0 101C                   ld    ext6, 0x101c
1dca -- 00C0                        ld    ext4, -
1dcb -- 00C3                        ld    ext4, a
1dcc -- 0065                        ret
1dcd -- 08E0 8038                   ld    ext6, 0x8038
1dcf -- 08E0 081C                   ld    ext6, 0x081c
1dd1 -- 00C0                        ld    ext4, -
1dd2 -- 08C0 B880                   ld    ext4, 0xb880
1dd4 -- 08C0 4C50                   ld    ext4, 0x4c50
1dd6 -- 08C0 0060                   ld    ext4, 0x0060
1dd8 -- 0065                        ret
1dd9 -- 08E0 7F00                   ld    ext6, 0x7f00
1ddb -- 08E0 0018                   ld    ext6, 0x0018
1ddd -- 000C                        ld    -, ext4
1dde -- 003C                        ld    a, ext4
1ddf -- A000                        and   a, -
1de0 -- 4D50 1E01                   bra   z, 0x1e01
1de2 -- 08E0 80D2                   ld    ext6, 0x80d2
1de4 -- 08E0 081C                   ld    ext6, 0x081c
1de6 -- 00C0                        ld    ext4, -
1de7 -- 08C0 9006                   ld    ext4, 0x9006
1de9 -- 08C0 043A                   ld    ext4, 0x043a
1deb -- 08C0 0065                   ld    ext4, 0x0065
1ded -- 08E0 80E7                   ld    ext6, 0x80e7
1def -- 08E0 081C                   ld    ext6, 0x081c
1df1 -- 00C0                        ld    ext4, -
1df2 -- 08C0 9006                   ld    ext4, 0x9006
1df4 -- 08C0 043A                   ld    ext4, 0x043a
1df6 -- 08C0 0065                   ld    ext4, 0x0065
1df8 -- 08E0 81B2                   ld    ext6, 0x81b2
1dfa -- 08E0 081C                   ld    ext6, 0x081c
1dfc -- 00C0                        ld    ext4, -
1dfd -- 08C0 3733                   ld    ext4, 0x3733
1dff -- 08C0 9733                   ld    ext4, 0x9733
1e01 -- 0065                        ret
1e02 -- 08E0 7F09                   ld    ext6, 0x7f09
1e04 -- 08E0 0018                   ld    ext6, 0x0018
1e06 -- 000C                        ld    -, ext4
1e07 -- 003C                        ld    a, ext4
1e08 -- 0065                        ret
1e09 -- 1C00                        ld    r4, 0x00
1e0a -- 0830 003F                   ld    a, 0x003f
1e0c -- 0810 0000                   ld    x, 0x0000
1e0e -- 0514                        ld    (r4+!), x
1e0f -- 3801                        sub   a, 0x01
1e10 -- 4C70 1E0E                   bra   ns, 0x1e0e
1e12 -- 08E0 7F02                   ld    ext6, 0x7f02
1e14 -- 08E0 0018                   ld    ext6, 0x0018
1e16 -- 000C                        ld    -, ext4
1e17 -- 003C                        ld    a, ext4
1e18 -- 0EF6                        ld    A[0xf6], a
1e19 -- 1975                        ld    r1, 0x75
1e1a -- 0C05 0000                   ld    (r1+!), 0x0000
1e1c -- 07E2                        ld    a, B[0xe2]
1e1d -- 0435                        ld    (r1+!), a
1e1e -- 9801                        add   a, 0x01
1e1f -- 0435                        ld    (r1+!), a
1e20 -- 3802                        sub   a, 0x02
1e21 -- 0435                        ld    (r1+!), a
1e22 -- 9801                        add   a, 0x01
1e23 -- 9002                        shr   a
1e24 -- 0435                        ld    (r1+!), a
1e25 -- 18C0                        ld    r0, 0xc0
1e26 -- 0C03 1E4E                   ld    (r3|00), 0x1e4e
1e28 -- 0830 0027                   ld    a, 0x0027
1e2a -- 0A13                        ld    x, ((r3|00)+!)
1e2b -- 0414                        ld    (r0+!), x
1e2c -- 3801                        sub   a, 0x01
1e2d -- 4C70 1E2A                   bra   ns, 0x1e2a
1e2f -- 18E8                        ld    r0, 0xe8
1e30 -- 0C04 FFF8                   ld    (r0+!), 0xfff8
1e32 -- 0C04 8000                   ld    (r0+!), 0x8000
1e34 -- 0C04 0078                   ld    (r0+!), 0x0078
1e36 -- 0C04 0800                   ld    (r0+!), 0x0800
1e38 -- 0C04 4418                   ld    (r0+!), 0x4418
1e3a -- 0C04 4018                   ld    (r0+!), 0x4018
1e3c -- 0C04 0100                   ld    (r0+!), 0x0100
1e3e -- 18B0                        ld    r0, 0xb0
1e3f -- 0C04 03E2                   ld    (r0+!), 0x03e2
1e41 -- 0810 0002                   ld    x, 0x0002
1e43 -- 0830 000E                   ld    a, 0x000e
1e45 -- 0414                        ld    (r0+!), x
1e46 -- 3801                        sub   a, 0x01
1e47 -- 4C70 1E45                   bra   ns, 0x1e45
1e49 -- 07F0                        ld    a, B[0xf0]
1e4a -- 1531                        ld    r5, a
1e4b -- 9801                        add   a, 0x01
1e4c -- 0FF0                        ld    B[0xf0], a
1e4d -- 0361                        bra   (r5)
1e4e -- FFFF
1e4f -- 0FFF
1e50 -- 00FF
1e51 -- 000F
1e52 -- 0000
1e53 -- F000
1e54 -- FF00
1e55 -- FFF0
1e56 -- F000
1e57 -- 0000
1e58 -- 0F00
1e59 -- 0000
1e5a -- 00F0
1e5b -- 0000
1e5c -- 000F
1e5d -- 0000
1e5e -- FF00
1e5f -- 0000
1e60 -- 0FF0
1e61 -- 0000
1e62 -- 00FF
1e63 -- 0000
1e64 -- 000F
1e65 -- F000
1e66 -- FFF0
1e67 -- 0000
1e68 -- 0FFF
1e69 -- 0000
1e6a -- 00FF
1e6b -- F000
1e6c -- 000F
1e6d -- FF00
1e6e -- FFFF
1e6f -- 0000
1e70 -- 0FFF
1e71 -- F000
1e72 -- 00FF
1e73 -- FF00
1e74 -- 000F
1e75 -- FFF0
1e76 -- 08E0 6000                   ld    ext6, 0x6000
1e78 -- 08E0 0818                   ld    ext6, 0x0818
1e7a -- 000C                        ld    -, ext4
1e7b -- 4C00 03A3                   bra   0x03a3
1e7d -- 0830 0080                   ld    a, 0x0080
1e7f -- 0EFD                        ld    A[0xfd], a
1e80 -- 08E0 FF80                   ld    ext6, 0xff80
1e82 -- 08E0 B818                   ld    ext6, 0xb818
1e84 -- 0008                        ld    -, ext0
1e85 -- 08E0 0080                   ld    ext6, 0x0080
1e87 -- 000F                        ld    -, ext7
1e88 -- 0830 00FF                   ld    a, 0x00ff
1e8a -- 0EFA                        ld    A[0xfa], a
1e8b -- 0830 FF81                   ld    a, 0xff81
1e8d -- 0EFB                        ld    A[0xfb], a
1e8e -- 4C00 037C                   bra   0x037c
1e90 -- 08E0 6000                   ld    ext6, 0x6000
1e92 -- 08E0 0818                   ld    ext6, 0x0818
1e94 -- 000C                        ld    -, ext4
1e95 -- 4C00 03A3                   bra   0x03a3
1e97 -- 0830 0010                   ld    a, 0x0010
1e99 -- 0EFD                        ld    A[0xfd], a
1e9a -- 08E0 9FF0                   ld    ext6, 0x9ff0
1e9c -- 08E0 A818                   ld    ext6, 0xa818
1e9e -- 0008                        ld    -, ext0
1e9f -- 0830 01FF                   ld    a, 0x01ff
1ea1 -- 0EFA                        ld    A[0xfa], a
1ea2 -- 0830 9FF1                   ld    a, 0x9ff1
1ea4 -- 0EFB                        ld    A[0xfb], a
1ea5 -- 4C00 037C                   bra   0x037c
1ea7 -- 0830 0010                   ld    a, 0x0010
1ea9 -- 0EFD                        ld    A[0xfd], a
1eaa -- 08E0 FFF0                   ld    ext6, 0xfff0
1eac -- 08E0 A818                   ld    ext6, 0xa818
1eae -- 0008                        ld    -, ext0
1eaf -- 0830 07FF                   ld    a, 0x07ff
1eb1 -- 0EFA                        ld    A[0xfa], a
1eb2 -- 0830 FFF1                   ld    a, 0xfff1
1eb4 -- 0EFB                        ld    A[0xfb], a
1eb5 -- 4C00 037C                   bra   0x037c
1eb7 -- 8000
1eb8 -- 03B1
1eb9 -- 06F0                        ld    a, A[0xf0]
1eba -- B807                        and   a, 0x07
1ebb -- 9002                        shr   a
1ebc -- 9002                        shr   a
1ebd -- 0EF7                        ld    A[0xf7], a
1ebe -- 06F0                        ld    a, A[0xf0]
1ebf -- A6E8                        and   a, A[0xe8]
1ec0 -- 9003                        shl   a
1ec1 -- 9003                        shl   a
1ec2 -- 86F7                        add   a, A[0xf7]
1ec3 -- 86F3                        add   a, A[0xf3]
1ec4 -- 00E3                        ld    ext6, a
1ec5 -- 000E                        ld    -, ext6
1ec6 -- 00C0                        ld    ext4, -
1ec7 -- 06F2                        ld    a, A[0xf2]
1ec8 -- 9801                        add   a, 0x01
1ec9 -- 0EF2                        ld    A[0xf2], a
1eca -- B80F                        and   a, 0x0f
1ecb -- 98B0                        add   a, 0xb0
1ecc -- 1432                        ld    r2, a
1ecd -- 0232                        ld    a, (r2)
1ece -- 86F3                        add   a, A[0xf3]
1ecf -- 0EF3                        ld    A[0xf3], a
1ed0 -- 036F                        bra   (r7|11)
1ed1 -- 02E3                        ld    ext6, (r3|00)
1ed2 -- 04E3                        ld    (r3|00), ext6
1ed3 -- 000F                        ld    -, ext7
1ed4 -- 06F1                        ld    a, A[0xf1]
1ed5 -- 26F0                        sub   a, A[0xf0]
1ed6 -- 7804                        cmp   a, 0x04
1ed7 -- 4D70 0084                   bra   s, 0x0084
1ed9 -- 66EE                        cmp   a, A[0xee]
1eda -- 4C70 0083                   bra   ns, 0x0083
1edc -- 0EF5                        ld    A[0xf5], a
1edd -- 06F0                        ld    a, A[0xf0]
1ede -- B803                        and   a, 0x03
1edf -- 0EF8                        ld    A[0xf8], a
1ee0 -- 98C0                        add   a, 0xc0
1ee1 -- 1432                        ld    r2, a
1ee2 -- 0233                        ld    a, (r3|00)
1ee3 -- A202                        and   a, (r2)
1ee4 -- 00C3                        ld    ext4, a
1ee5 -- 000E                        ld    -, ext6
1ee6 -- 02EF                        ld    ext6, (r3|11)
1ee7 -- 00C0                        ld    ext4, -
1ee8 -- 06F5                        ld    a, A[0xf5]
1ee9 -- 3803                        sub   a, 0x03
1eea -- 86F8                        add   a, A[0xf8]
1eeb -- 9002                        shr   a
1eec -- 9002                        shr   a
1eed -- 0013                        ld    x, a
1eee -- 06EA                        ld    a, A[0xea]
1eef -- 2001                        sub   a, x
1ef0 -- 0063                        bra   a
1ef1 -- 02C3                        ld    ext4, (r3|00)
1ef2 -- 02C3                        ld    ext4, (r3|00)
1ef3 -- 02C3                        ld    ext4, (r3|00)
1ef4 -- 02C3                        ld    ext4, (r3|00)
1ef5 -- 02C3                        ld    ext4, (r3|00)
1ef6 -- 02C3                        ld    ext4, (r3|00)
1ef7 -- 02C3                        ld    ext4, (r3|00)
1ef8 -- 02C3                        ld    ext4, (r3|00)
1ef9 -- 02C3                        ld    ext4, (r3|00)
1efa -- 02C3                        ld    ext4, (r3|00)
1efb -- 02C3                        ld    ext4, (r3|00)
1efc -- 02C3                        ld    ext4, (r3|00)
1efd -- 02C3                        ld    ext4, (r3|00)
1efe -- 02C3                        ld    ext4, (r3|00)
1eff -- 02C3                        ld    ext4, (r3|00)
1f00 -- 02C3                        ld    ext4, (r3|00)
1f01 -- 02C3                        ld    ext4, (r3|00)
1f02 -- 02C3                        ld    ext4, (r3|00)
1f03 -- 02C3                        ld    ext4, (r3|00)
1f04 -- 02C3                        ld    ext4, (r3|00)
1f05 -- 02C3                        ld    ext4, (r3|00)
1f06 -- 02C3                        ld    ext4, (r3|00)
1f07 -- 02C3                        ld    ext4, (r3|00)
1f08 -- 02C3                        ld    ext4, (r3|00)
1f09 -- 02C3                        ld    ext4, (r3|00)
1f0a -- 02C3                        ld    ext4, (r3|00)
1f0b -- 02C3                        ld    ext4, (r3|00)
1f0c -- 02C3                        ld    ext4, (r3|00)
1f0d -- 02C3                        ld    ext4, (r3|00)
1f0e -- 02C3                        ld    ext4, (r3|00)
1f0f -- 02C3                        ld    ext4, (r3|00)
1f10 -- 02C3                        ld    ext4, (r3|00)
1f11 -- 02C3                        ld    ext4, (r3|00)
1f12 -- 02C3                        ld    ext4, (r3|00)
1f13 -- 02C3                        ld    ext4, (r3|00)
1f14 -- 02C3                        ld    ext4, (r3|00)
1f15 -- 02C3                        ld    ext4, (r3|00)
1f16 -- 02C3                        ld    ext4, (r3|00)
1f17 -- 02C3                        ld    ext4, (r3|00)
1f18 -- 02C3                        ld    ext4, (r3|00)
1f19 -- 02C3                        ld    ext4, (r3|00)
1f1a -- 02C3                        ld    ext4, (r3|00)
1f1b -- 02C3                        ld    ext4, (r3|00)
1f1c -- 02C3                        ld    ext4, (r3|00)
1f1d -- 02C3                        ld    ext4, (r3|00)
1f1e -- 02C3                        ld    ext4, (r3|00)
1f1f -- 02C3                        ld    ext4, (r3|00)
1f20 -- 02C3                        ld    ext4, (r3|00)
1f21 -- 02C3                        ld    ext4, (r3|00)
1f22 -- 02C3                        ld    ext4, (r3|00)
1f23 -- 02C3                        ld    ext4, (r3|00)
1f24 -- 02C3                        ld    ext4, (r3|00)
1f25 -- 02C3                        ld    ext4, (r3|00)
1f26 -- 02C3                        ld    ext4, (r3|00)
1f27 -- 02C3                        ld    ext4, (r3|00)
1f28 -- 02C3                        ld    ext4, (r3|00)
1f29 -- 02C3                        ld    ext4, (r3|00)
1f2a -- 02C3                        ld    ext4, (r3|00)
1f2b -- 02C3                        ld    ext4, (r3|00)
1f2c -- 02C3                        ld    ext4, (r3|00)
1f2d -- 02C3                        ld    ext4, (r3|00)
1f2e -- 02C3                        ld    ext4, (r3|00)
1f2f -- 02C3                        ld    ext4, (r3|00)
1f30 -- 02C3                        ld    ext4, (r3|00)
1f31 -- 000E                        ld    -, ext6
1f32 -- 02EB                        ld    ext6, (r3|10)
1f33 -- 00C0                        ld    ext4, -
1f34 -- 06F1                        ld    a, A[0xf1]
1f35 -- 9801                        add   a, 0x01
1f36 -- B803                        and   a, 0x03
1f37 -- 98C4                        add   a, 0xc4
1f38 -- 1432                        ld    r2, a
1f39 -- 0233                        ld    a, (r3|00)
1f3a -- A202                        and   a, (r2)
1f3b -- 00C3                        ld    ext4, a
1f3c -- 0065                        ret
1f3d -- 9003                        shl   a
1f3e -- 4D70 0096                   bra   s, 0x0096
1f40 -- 9003                        shl   a
1f41 -- 9003                        shl   a
1f42 -- 98C8                        add   a, 0xc8
1f43 -- 0013                        ld    x, a
1f44 -- 06F0                        ld    a, A[0xf0]
1f45 -- B803                        and   a, 0x03
1f46 -- 9003                        shl   a
1f47 -- 8001                        add   a, x
1f48 -- 1432                        ld    r2, a
1f49 -- 0233                        ld    a, (r3|00)
1f4a -- A206                        and   a, (r2+!)
1f4b -- 00C3                        ld    ext4, a
1f4c -- 0233                        ld    a, (r3|00)
1f4d -- A202                        and   a, (r2)
1f4e -- 00C3                        ld    ext4, a
1f4f -- 0065                        ret
1f50 -- 1807                        ld    r0, 0x07
1f51 -- 04C4                        ld    (r0+!), ext4
1f52 -- 003C                        ld    a, ext4
1f53 -- 9880                        add   a, 0x80
1f54 -- 0434                        ld    (r0+!), a
1f55 -- 0679                        ld    a, A[0x79]
1f56 -- 200C                        sub   a, ext4
1f57 -- 0434                        ld    (r0+!), a
1f58 -- 003C                        ld    a, ext4
1f59 -- 9880                        add   a, 0x80
1f5a -- 0434                        ld    (r0+!), a
1f5b -- 0679                        ld    a, A[0x79]
1f5c -- 200C                        sub   a, ext4
1f5d -- 0434                        ld    (r0+!), a
1f5e -- 003C                        ld    a, ext4
1f5f -- 9880                        add   a, 0x80
1f60 -- 0E0C                        ld    A[0x0c], a
1f61 -- 0E0E                        ld    A[0x0e], a
1f62 -- 0679                        ld    a, A[0x79]
1f63 -- 200C                        sub   a, ext4
1f64 -- 0E0D                        ld    A[0x0d], a
1f65 -- 0E0F                        ld    A[0x0f], a
1f66 -- 0607                        ld    a, A[0x07]
1f67 -- B810                        and   a, 0x10
1f68 -- 4C50 00B7                   bra   nz, 0x00b7
1f6a -- 003C                        ld    a, ext4
1f6b -- 9880                        add   a, 0x80
1f6c -- 0E0E                        ld    A[0x0e], a
1f6d -- 0679                        ld    a, A[0x79]
1f6e -- 200C                        sub   a, ext4
1f6f -- 0E0F                        ld    A[0x0f], a
1f70 -- 1809                        ld    r0, 0x09
1f71 -- 1909                        ld    r1, 0x09
1f72 -- 1A0B                        ld    r2, 0x0b
1f73 -- 1D02                        ld    r5, 0x02
1f74 -- 0232                        ld    a, (r2)
1f75 -- 6200                        cmp   a, (r0)
1f76 -- 4C70 00C1                   bra   ns, 0x00c1
1f78 -- 1212                        ld    x, r2
1f79 -- 1410                        ld    r0, x
1f7a -- 6201                        cmp   a, (r1)
1f7b -- 4D70 00C6                   bra   s, 0x00c6
1f7d -- 1212                        ld    x, r2
1f7e -- 1411                        ld    r1, x
1f7f -- 0206                        ld    -, (r2+!)
1f80 -- 0206                        ld    -, (r2+!)
1f81 -- 1331                        ld    a, r5
1f82 -- 3801                        sub   a, 0x01
1f83 -- 1531                        ld    r5, a
1f84 -- 4C70 00BB                   bra   ns, 0x00bb
1f86 -- 0034                        ld    a, st
1f87 -- A6E8                        and   a, A[0xe8]
1f88 -- D803                        or    a, 0x03
1f89 -- 0043                        ld    st, a
1f8a -- 0230                        ld    a, (r0)
1f8b -- 6201                        cmp   a, (r1)
1f8c -- 4D50 02B8                   bra   z, 0x02b8
1f8e -- 1230                        ld    a, r0
1f8f -- 0E06                        ld    A[0x06], a
1f90 -- 0208                        ld    -, (r0--)
1f91 -- 0229                        ld    y, (r1--)
1f92 -- 1211                        ld    x, r1
1f93 -- 020D                        ld    -, (r1++)
1f94 -- 020D                        ld    -, (r1++)
1f95 -- 1231                        ld    a, r1
1f96 -- 0F04                        ld    B[0x04], a
1f97 -- 1411                        ld    r1, x
1f98 -- 0209                        ld    -, (r1--)
1f99 -- 1231                        ld    a, r1
1f9a -- 0F05                        ld    B[0x05], a
1f9b -- 0032                        ld    a, y
1f9c -- 6675                        cmp   a, A[0x75]
1f9d -- 4D70 02B8                   bra   s, 0x02b8
1f9f -- 1A90                        ld    r2, 0x90
1fa0 -- 021C                        ld    x, (r0++)
1fa1 -- 023C                        ld    a, (r0++)
1fa2 -- 6676                        cmp   a, A[0x76]
1fa3 -- 4C70 02B8                   bra   ns, 0x02b8
1fa5 -- 0023                        ld    y, a
1fa6 -- 6675                        cmp   a, A[0x75]
1fa7 -- 4C70 0102                   bra   ns, 0x0102
1fa9 -- 0513                        ld    (r7|00), x
1faa -- 0527                        ld    (r7|01), y
1fab -- 021C                        ld    x, (r0++)
1fac -- 022C                        ld    y, (r0++)
1fad -- 0032                        ld    a, y
1fae -- 6675                        cmp   a, A[0x75]
1faf -- 4D70 00F0                   bra   s, 0x00f0
1fb1 -- 051B                        ld    (r7|10), x
1fb2 -- 052F                        ld    (r7|11), y
1fb3 -- 0675                        ld    a, A[0x75]
1fb4 -- 043F                        ld    (r3|11), a
1fb5 -- 4800 02DF                   call  0x02df
1fb7 -- 0675                        ld    a, A[0x75]
1fb8 -- 0023                        ld    y, a
1fb9 -- 0208                        ld    -, (r0--)
1fba -- 0208                        ld    -, (r0--)
1fbb -- 0416                        ld    (r2+!), x
1fbc -- 0426                        ld    (r2+!), y
1fbd -- 0513                        ld    (r7|00), x
1fbe -- 0527                        ld    (r7|01), y
1fbf -- 021C                        ld    x, (r0++)
1fc0 -- 022C                        ld    y, (r0++)
1fc1 -- 0032                        ld    a, y
1fc2 -- 6676                        cmp   a, A[0x76]
1fc3 -- 4C70 0114                   bra   ns, 0x0114
1fc5 -- 0416                        ld    (r2+!), x
1fc6 -- 0426                        ld    (r2+!), y
1fc7 -- 1230                        ld    a, r0
1fc8 -- 6704                        cmp   a, B[0x04]
1fc9 -- 4C50 0104                   bra   nz, 0x0104
1fcb -- 4C00 011D                   bra   0x011d
1fcd -- 051B                        ld    (r7|10), x
1fce -- 052F                        ld    (r7|11), y
1fcf -- 0676                        ld    a, A[0x76]
1fd0 -- 043F                        ld    (r3|11), a
1fd1 -- 4800 02DF                   call  0x02df
1fd3 -- 0416                        ld    (r2+!), x
1fd4 -- 0676                        ld    a, A[0x76]
1fd5 -- 0436                        ld    (r2+!), a
1fd6 -- 0406                        ld    (r2+!), -
1fd7 -- 0406                        ld    (r2+!), -
1fd8 -- 0606                        ld    a, A[0x06]
1fd9 -- 1430                        ld    r0, a
1fda -- 1AA0                        ld    r2, 0xa0
1fdb -- 0228                        ld    y, (r0--)
1fdc -- 0218                        ld    x, (r0--)
1fdd -- 0032                        ld    a, y
1fde -- 6675                        cmp   a, A[0x75]
1fdf -- 4C70 013A                   bra   ns, 0x013a
1fe1 -- 0513                        ld    (r7|00), x
1fe2 -- 0527                        ld    (r7|01), y
1fe3 -- 0228                        ld    y, (r0--)
1fe4 -- 0218                        ld    x, (r0--)
1fe5 -- 0032                        ld    a, y
1fe6 -- 6675                        cmp   a, A[0x75]
1fe7 -- 4D70 0128                   bra   s, 0x0128
1fe9 -- 051B                        ld    (r7|10), x
1fea -- 052F                        ld    (r7|11), y
1feb -- 0675                        ld    a, A[0x75]
1fec -- 043F                        ld    (r3|11), a
1fed -- 4800 02DF                   call  0x02df
1fef -- 0675                        ld    a, A[0x75]
1ff0 -- 0023                        ld    y, a
1ff1 -- 020C                        ld    -, (r0++)
1ff2 -- 020C                        ld    -, (r0++)
1ff3 -- 0416                        ld    (r2+!), x
1ff4 -- 0426                        ld    (r2+!), y
1ff5 -- 0513                        ld    (r7|00), x
1ff6 -- 0527                        ld    (r7|01), y
1ff7 -- 0228                        ld    y, (r0--)
1ff8 -- 0218                        ld    x, (r0--)
1ff9 -- 0032                        ld    a, y
1ffa -- 6676                        cmp   a, A[0x76]
1ffb -- 4C70 014C                   bra   ns, 0x014c
1ffd -- 0416                        ld    (r2+!), x
1ffe -- 0426                        ld    (r2+!), y
1fff -- 1230                        ld    a, r0
2000 -- 6705                        cmp   a, B[0x05]
2001 -- 4C50 013C                   bra   nz, 0x013c
2003 -- 4C00 0155                   bra   0x0155
2005 -- 051B                        ld    (r7|10), x
2006 -- 052F                        ld    (r7|11), y
2007 -- 0676                        ld    a, A[0x76]
2008 -- 043F                        ld    (r3|11), a
2009 -- 4800 02DF                   call  0x02df
200b -- 0416                        ld    (r2+!), x
200c -- 0676                        ld    a, A[0x76]
200d -- 0436                        ld    (r2+!), a
200e -- 0406                        ld    (r2+!), -
200f -- 0406                        ld    (r2+!), -
2010 -- 0034                        ld    a, st
2011 -- A6E8                        and   a, A[0xe8]
2012 -- 0043                        ld    st, a
2013 -- 0690                        ld    a, A[0x90]
2014 -- 0F06                        ld    B[0x06], a
2015 -- 0F07                        ld    B[0x07], a
2016 -- 1892                        ld    r0, 0x92
2017 -- 4800 036B                   call  0x036b
2019 -- 18A0                        ld    r0, 0xa0
201a -- 4800 036B                   call  0x036b
201c -- 0707                        ld    a, B[0x07]
201d -- 7800                        cmp   a, 0x00
201e -- 4D70 02B8                   bra   s, 0x02b8
2020 -- 0706                        ld    a, B[0x06]
2021 -- 78FF                        cmp   a, 0xff
2022 -- 4C70 02B8                   bra   ns, 0x02b8
2024 -- 7800                        cmp   a, 0x00
2025 -- 4D70 0172                   bra   s, 0x0172
2027 -- 0707                        ld    a, B[0x07]
2028 -- 78FF                        cmp   a, 0xff
2029 -- 4D70 021A                   bra   s, 0x021a
202b -- 1890                        ld    r0, 0x90
202c -- 1990                        ld    r1, 0x90
202d -- 1C0A                        ld    r4, 0x0a
202e -- 1D22                        ld    r5, 0x22
202f -- 4800 030F                   call  0x030f
2031 -- 18A0                        ld    r0, 0xa0
2032 -- 19A0                        ld    r1, 0xa0
2033 -- 1C16                        ld    r4, 0x16
2034 -- 4800 030F                   call  0x030f
2036 -- 1890                        ld    r0, 0x90
2037 -- 19A0                        ld    r1, 0xa0
2038 -- 1C0A                        ld    r4, 0x0a
2039 -- 1D16                        ld    r5, 0x16
203a -- 0722                        ld    a, B[0x22]
203b -- C724                        or    a, B[0x24]
203c -- 4D50 01C4                   bra   z, 0x01c4
203e -- 0675                        ld    a, A[0x75]
203f -- 0023                        ld    y, a
2040 -- 0722                        ld    a, B[0x22]
2041 -- A724                        and   a, B[0x24]
2042 -- 4C50 01AD                   bra   nz, 0x01ad
2044 -- 0722                        ld    a, B[0x22]
2045 -- 7801                        cmp   a, 0x01
2046 -- 4C50 0194                   bra   nz, 0x0194
2048 -- 0C04 0000                   ld    (r0+!), 0x0000
204a -- 0424                        ld    (r0+!), y
204b -- 4C00 019B                   bra   0x019b
204d -- 0722                        ld    a, B[0x22]
204e -- 7802                        cmp   a, 0x02
204f -- 4C50 019B                   bra   nz, 0x019b
2051 -- 0C04 00FF                   ld    (r0+!), 0x00ff
2053 -- 0424                        ld    (r0+!), y
2054 -- 0724                        ld    a, B[0x24]
2055 -- 7801                        cmp   a, 0x01
2056 -- 4C50 01A4                   bra   nz, 0x01a4
2058 -- 0C05 0000                   ld    (r1+!), 0x0000
205a -- 0425                        ld    (r1+!), y
205b -- 4C00 01C4                   bra   0x01c4
205d -- 0724                        ld    a, B[0x24]
205e -- 7802                        cmp   a, 0x02
205f -- 4C50 01C4                   bra   nz, 0x01c4
2061 -- 0C05 00FF                   ld    (r1+!), 0x00ff
2063 -- 0425                        ld    (r1+!), y
2064 -- 4C00 01C4                   bra   0x01c4
2066 -- 0030                        ld    a, -
2067 -- 6300                        cmp   a, (r4)
2068 -- 4D50 01BE                   bra   z, 0x01be
206a -- 6301                        cmp   a, (r5)
206b -- 4D50 01BA                   bra   z, 0x01ba
206d -- 0304                        ld    -, (r4+!)
206e -- 0338                        ld    a, (r4--)
206f -- 0305                        ld    -, (r5+!)
2070 -- 6309                        cmp   a, (r5--)
2071 -- 4C70 01BE                   bra   ns, 0x01be
2073 -- 0334                        ld    a, (r4+!)
2074 -- 0328                        ld    y, (r4--)
2075 -- 4C00 01C0                   bra   0x01c0
2077 -- 0335                        ld    a, (r5+!)
2078 -- 0329                        ld    y, (r5--)
2079 -- 0434                        ld    (r0+!), a
207a -- 0424                        ld    (r0+!), y
207b -- 0435                        ld    (r1+!), a
207c -- 0425                        ld    (r1+!), y
207d -- 0334                        ld    a, (r4+!)
207e -- 0434                        ld    (r0+!), a
207f -- 0314                        ld    x, (r4+!)
2080 -- 0414                        ld    (r0+!), x
2081 -- 7800                        cmp   a, 0x00
2082 -- 4C70 01C4                   bra   ns, 0x01c4
2084 -- 0208                        ld    -, (r0--)
2085 -- 0208                        ld    -, (r0--)
2086 -- 0335                        ld    a, (r5+!)
2087 -- 0435                        ld    (r1+!), a
2088 -- 0315                        ld    x, (r5+!)
2089 -- 0415                        ld    (r1+!), x
208a -- 7800                        cmp   a, 0x00
208b -- 4C70 01CD                   bra   ns, 0x01cd
208d -- 0209                        ld    -, (r1--)
208e -- 0209                        ld    -, (r1--)
208f -- 0676                        ld    a, A[0x76]
2090 -- 0023                        ld    y, a
2091 -- 0723                        ld    a, B[0x23]
2092 -- C725                        or    a, B[0x25]
2093 -- 4D50 0216                   bra   z, 0x0216
2095 -- 0723                        ld    a, B[0x23]
2096 -- A725                        and   a, B[0x25]
2097 -- 4C50 0202                   bra   nz, 0x0202
2099 -- 0723                        ld    a, B[0x23]
209a -- 7801                        cmp   a, 0x01
209b -- 4C50 01E9                   bra   nz, 0x01e9
209d -- 0C04 0000                   ld    (r0+!), 0x0000
209f -- 0424                        ld    (r0+!), y
20a0 -- 4C00 01F0                   bra   0x01f0
20a2 -- 0723                        ld    a, B[0x23]
20a3 -- 7802                        cmp   a, 0x02
20a4 -- 4C50 01F0                   bra   nz, 0x01f0
20a6 -- 0C04 00FF                   ld    (r0+!), 0x00ff
20a8 -- 0424                        ld    (r0+!), y
20a9 -- 0725                        ld    a, B[0x25]
20aa -- 7801                        cmp   a, 0x01
20ab -- 4C50 01F9                   bra   nz, 0x01f9
20ad -- 0C05 0000                   ld    (r1+!), 0x0000
20af -- 0425                        ld    (r1+!), y
20b0 -- 4C00 0216                   bra   0x0216
20b2 -- 0725                        ld    a, B[0x25]
20b3 -- 7802                        cmp   a, 0x02
20b4 -- 4C50 0216                   bra   nz, 0x0216
20b6 -- 0C05 00FF                   ld    (r1+!), 0x00ff
20b8 -- 0425                        ld    (r1+!), y
20b9 -- 4C00 0216                   bra   0x0216
20bb -- 1330                        ld    a, r4
20bc -- 3803                        sub   a, 0x03
20bd -- 1530                        ld    r4, a
20be -- 1331                        ld    a, r5
20bf -- 3803                        sub   a, 0x03
20c0 -- 1531                        ld    r5, a
20c1 -- 0338                        ld    a, (r4--)
20c2 -- 6309                        cmp   a, (r5--)
20c3 -- 4D70 0210                   bra   s, 0x0210
20c5 -- 0334                        ld    a, (r4+!)
20c6 -- 0324                        ld    y, (r4+!)
20c7 -- 4C00 0212                   bra   0x0212
20c9 -- 0335                        ld    a, (r5+!)
20ca -- 0325                        ld    y, (r5+!)
20cb -- 0434                        ld    (r0+!), a
20cc -- 0424                        ld    (r0+!), y
20cd -- 0435                        ld    (r1+!), a
20ce -- 0425                        ld    (r1+!), y
20cf -- 0404                        ld    (r0+!), -
20d0 -- 0404                        ld    (r0+!), -
20d1 -- 0405                        ld    (r1+!), -
20d2 -- 0405                        ld    (r1+!), -
20d3 -- 000E                        ld    -, ext6
20d4 -- 08E0 4418                   ld    ext6, 0x4418
20d6 -- 00C0                        ld    ext4, -
20d7 -- 0C0B 4418                   ld    (r3|10), 0x4418
20d9 -- 1890                        ld    r0, 0x90
20da -- 19A0                        ld    r1, 0xa0
20db -- B800                        and   a, 0x00
20dc -- 0E88                        ld    A[0x88], a
20dd -- 0E89                        ld    A[0x89], a
20de -- 06E9                        ld    a, A[0xe9]
20df -- 0E8C                        ld    A[0x8c], a
20e0 -- 0E8F                        ld    A[0x8f], a
20e1 -- 0215                        ld    x, (r1+!)
20e2 -- 0225                        ld    y, (r1+!)
20e3 -- 0235                        ld    a, (r1+!)
20e4 -- 2001                        sub   a, x
20e5 -- 0533                        ld    (r7|00), a
20e6 -- 0239                        ld    a, (r1--)
20e7 -- 2002                        sub   a, y
20e8 -- 4D50 0228                   bra   z, 0x0228
20ea -- 0209                        ld    -, (r1--)
20eb -- 0209                        ld    -, (r1--)
20ec -- 87F3                        add   a, B[0xf3]
20ed -- 4A20                        ld    y, (a)
20ee -- 0527                        ld    (r7|01), y
20ef -- 0214                        ld    x, (r0+!)
20f0 -- 0224                        ld    y, (r0+!)
20f1 -- 0234                        ld    a, (r0+!)
20f2 -- 2001                        sub   a, x
20f3 -- 0013                        ld    x, a
20f4 -- 0238                        ld    a, (r0--)
20f5 -- 2002                        sub   a, y
20f6 -- 4D50 0236                   bra   z, 0x0236
20f8 -- 0208                        ld    -, (r0--)
20f9 -- 0208                        ld    -, (r0--)
20fa -- 87F3                        add   a, B[0xf3]
20fb -- 4A20                        ld    y, (a)
20fc -- B800                        and   a, 0x00
20fd -- 0230                        ld    a, (r0)
20fe -- 6201                        cmp   a, (r1)
20ff -- 4D70 0254                   bra   s, 0x0254
2101 -- 4C50 0250                   bra   nz, 0x0250
2103 -- 0037                        ld    a, p
2104 -- 0313                        ld    x, (r7|00)
2105 -- 0327                        ld    y, (r7|01)
2106 -- 2007                        sub   a, p
2107 -- 4D70 0254                   bra   s, 0x0254
2109 -- 1210                        ld    x, r0
210a -- 1231                        ld    a, r1
210b -- 1430                        ld    r0, a
210c -- 1411                        ld    r1, x
210d -- 0691                        ld    a, A[0x91]
210e -- 0EF2                        ld    A[0xf2], a
210f -- B80F                        and   a, 0x0f
2110 -- 9003                        shl   a
2111 -- 86F6                        add   a, A[0xf6]
2112 -- 0EF7                        ld    A[0xf7], a
2113 -- 06F2                        ld    a, A[0xf2]
2114 -- B8F0                        and   a, 0xf0
2115 -- 0013                        ld    x, a
2116 -- 0820 0020                   ld    y, 0x0020
2118 -- 0037                        ld    a, p
2119 -- 001F                        ld    x, ext7
211a -- 0031                        ld    a, x
211b -- 86F7                        add   a, A[0xf7]
211c -- 0EF3                        ld    A[0xf3], a
211d -- 0607                        ld    a, A[0x07]
211e -- B820                        and   a, 0x20
211f -- 4D50 0283                   bra   z, 0x0283
2121 -- 0607                        ld    a, A[0x07]
2122 -- A6C5                        and   a, A[0xc5]
2123 -- 06EC                        ld    a, A[0xec]
2124 -- 4D50 026E                   bra   z, 0x026e
2126 -- 06ED                        ld    a, A[0xed]
2127 -- 043F                        ld    (r3|11), a
2128 -- 0607                        ld    a, A[0x07]
2129 -- A6C6                        and   a, A[0xc6]
212a -- 0013                        ld    x, a
212b -- 0820 0080                   ld    y, 0x0080
212d -- 0037                        ld    a, p
212e -- B8FF                        and   a, 0xff
212f -- C001                        or    a, x
2130 -- 0433                        ld    (r3|00), a
2131 -- 06F2                        ld    a, A[0xf2]
2132 -- B801                        and   a, 0x01
2133 -- 4D50 027F                   bra   z, 0x027f
2135 -- 02E3                        ld    ext6, (r3|00)
2136 -- 04E3                        ld    (r3|00), ext6
2137 -- 000F                        ld    -, ext7
2138 -- 0D0F 0018                   ld    (r7|11), 0x0018
213a -- 4C00 02A3                   bra   0x02a3
213c -- 0C0F 4018                   ld    (r3|11), 0x4018
213e -- 0607                        ld    a, A[0x07]
213f -- A6C6                        and   a, A[0xc6]
2140 -- 0013                        ld    x, a
2141 -- 0820 0080                   ld    y, 0x0080
2143 -- 0037                        ld    a, p
2144 -- B8FF                        and   a, 0xff
2145 -- C001                        or    a, x
2146 -- 0433                        ld    (r3|00), a
2147 -- 0D0F 001B                   ld    (r7|11), 0x001b
2149 -- 4C00 02A3                   bra   0x02a3
214b -- 4800 0000                   call  0x0000
214d -- 1A8A                        ld    r2, 0x8a
214e -- 0216                        ld    x, (r2+!)
214f -- 0226                        ld    y, (r2+!)
2150 -- 02F2                        ld    ext7, (r2)
2151 -- 06F0                        ld    a, A[0xf0]
2152 -- 8007                        add   a, p
2153 -- 0EF0                        ld    A[0xf0], a
2154 -- 04F6                        ld    (r2+!), ext7
2155 -- 0216                        ld    x, (r2+!)
2156 -- 0226                        ld    y, (r2+!)
2157 -- 02F2                        ld    ext7, (r2)
2158 -- 06F1                        ld    a, A[0xf1]
2159 -- 8007                        add   a, p
215a -- 0EF1                        ld    A[0xf1], a
215b -- 04F6                        ld    (r2+!), ext7
215c -- 0688                        ld    a, A[0x88]
215d -- 3801                        sub   a, 0x01
215e -- 0E88                        ld    A[0x88], a
215f -- 4C70 02C2                   bra   ns, 0x02c2
2161 -- B800                        and   a, 0x00
2162 -- 06E9                        ld    a, A[0xe9]
2163 -- 0E8C                        ld    A[0x8c], a
2164 -- 0234                        ld    a, (r0+!)
2165 -- 0EF0                        ld    A[0xf0], a
2166 -- 0013                        ld    x, a
2167 -- 0224                        ld    y, (r0+!)
2168 -- 0234                        ld    a, (r0+!)
2169 -- 2001                        sub   a, x
216a -- 0E8A                        ld    A[0x8a], a
216b -- 0238                        ld    a, (r0--)
216c -- 2002                        sub   a, y
216d -- 4D50 02AB                   bra   z, 0x02ab
216f -- 4C70 02BC                   bra   ns, 0x02bc
2171 -- 0034                        ld    a, st
2172 -- A6E8                        and   a, A[0xe8]
2173 -- 0043                        ld    st, a
2174 -- 0065                        ret
2175 -- 3801                        sub   a, 0x01
2176 -- 0E88                        ld    A[0x88], a
2177 -- 87F3                        add   a, B[0xf3]
2178 -- 4A10                        ld    x, (a)
2179 -- 0031                        ld    a, x
217a -- 0E8B                        ld    A[0x8b], a
217b -- 0689                        ld    a, A[0x89]
217c -- 3801                        sub   a, 0x01
217d -- 0E89                        ld    A[0x89], a
217e -- 4C70 0292                   bra   ns, 0x0292
2180 -- B800                        and   a, 0x00
2181 -- 06E9                        ld    a, A[0xe9]
2182 -- 0E8F                        ld    A[0x8f], a
2183 -- 0235                        ld    a, (r1+!)
2184 -- 0EF1                        ld    A[0xf1], a
2185 -- 0013                        ld    x, a
2186 -- 0225                        ld    y, (r1+!)
2187 -- 0235                        ld    a, (r1+!)
2188 -- 2001                        sub   a, x
2189 -- 0E8D                        ld    A[0x8d], a
218a -- 0239                        ld    a, (r1--)
218b -- 2002                        sub   a, y
218c -- 4D50 02CA                   bra   z, 0x02ca
218e -- 4D70 02B8                   bra   s, 0x02b8
2190 -- 3801                        sub   a, 0x01
2191 -- 0E89                        ld    A[0x89], a
2192 -- 87F3                        add   a, B[0xf3]
2193 -- 4A10                        ld    x, (a)
2194 -- 0031                        ld    a, x
2195 -- 0E8E                        ld    A[0x8e], a
2196 -- 4C00 0292                   bra   0x0292
2198 -- 033F                        ld    a, (r7|11)
2199 -- 6307                        cmp   a, (r7|01)
219a -- 4C70 02EA                   bra   ns, 0x02ea
219c -- 0317                        ld    x, (r7|01)
219d -- 0537                        ld    (r7|01), a
219e -- 051F                        ld    (r7|11), x
219f -- 033B                        ld    a, (r7|10)
21a0 -- 0313                        ld    x, (r7|00)
21a1 -- 0533                        ld    (r7|00), a
21a2 -- 051B                        ld    (r7|10), x
21a3 -- A000                        and   a, -
21a4 -- 023F                        ld    a, (r3|11)
21a5 -- 6307                        cmp   a, (r7|01)
21a6 -- 4D50 030B                   bra   z, 0x030b
21a8 -- 630F                        cmp   a, (r7|11)
21a9 -- 4D50 030D                   bra   z, 0x030d
21ab -- 0333                        ld    a, (r7|00)
21ac -- 830B                        add   a, (r7|10)
21ad -- 9801                        add   a, 0x01
21ae -- 9002                        shr   a
21af -- 0013                        ld    x, a
21b0 -- 0337                        ld    a, (r7|01)
21b1 -- 830F                        add   a, (r7|11)
21b2 -- 9801                        add   a, 0x01
21b3 -- 9002                        shr   a
21b4 -- 0023                        ld    y, a
21b5 -- A000                        and   a, -
21b6 -- 620F                        cmp   a, (r3|11)
21b7 -- 4D50 030A                   bra   z, 0x030a
21b9 -- 4C70 0306                   bra   ns, 0x0306
21bb -- 0513                        ld    (r7|00), x
21bc -- 0527                        ld    (r7|01), y
21bd -- 4C00 02F2                   bra   0x02f2
21bf -- 051B                        ld    (r7|10), x
21c0 -- 052F                        ld    (r7|11), y
21c1 -- 4C00 02F2                   bra   0x02f2
21c3 -- 0065                        ret
21c4 -- 0313                        ld    x, (r7|00)
21c5 -- 0065                        ret
21c6 -- 031B                        ld    x, (r7|10)
21c7 -- 0065                        ret
21c8 -- 1A00                        ld    r2, 0x00
21c9 -- 0230                        ld    a, (r0)
21ca -- 7800                        cmp   a, 0x00
21cb -- 4C70 0315                   bra   ns, 0x0315
21cd -- 1A01                        ld    r2, 0x01
21ce -- 78FF                        cmp   a, 0xff
21cf -- 4D70 0319                   bra   s, 0x0319
21d1 -- 1A02                        ld    r2, 0x02
21d2 -- 1232                        ld    a, r2
21d3 -- 0F08                        ld    B[0x08], a
21d4 -- 0535                        ld    (r5+!), a
21d5 -- 0214                        ld    x, (r0+!)
21d6 -- 0224                        ld    y, (r0+!)
21d7 -- A000                        and   a, -
21d8 -- 4C50 0323                   bra   nz, 0x0323
21da -- 0514                        ld    (r4+!), x
21db -- 0524                        ld    (r4+!), y
21dc -- 1A00                        ld    r2, 0x00
21dd -- 0230                        ld    a, (r0)
21de -- 7800                        cmp   a, 0x00
21df -- 4C70 0329                   bra   ns, 0x0329
21e1 -- 1A01                        ld    r2, 0x01
21e2 -- 78FF                        cmp   a, 0xff
21e3 -- 4D70 032D                   bra   s, 0x032d
21e5 -- 1A02                        ld    r2, 0x02
21e6 -- 1232                        ld    a, r2
21e7 -- 0F09                        ld    B[0x09], a
21e8 -- A708                        and   a, B[0x08]
21e9 -- 4C50 0344                   bra   nz, 0x0344
21eb -- 0708                        ld    a, B[0x08]
21ec -- C709                        or    a, B[0x09]
21ed -- 4D50 0340                   bra   z, 0x0340
21ef -- 0708                        ld    a, B[0x08]
21f0 -- 4800 0353                   call  0x0353
21f2 -- 0709                        ld    a, B[0x09]
21f3 -- 4800 0353                   call  0x0353
21f5 -- 0709                        ld    a, B[0x09]
21f6 -- A000                        and   a, -
21f7 -- 4C50 0344                   bra   nz, 0x0344
21f9 -- 0234                        ld    a, (r0+!)
21fa -- 0534                        ld    (r4+!), a
21fb -- 0238                        ld    a, (r0--)
21fc -- 0534                        ld    (r4+!), a
21fd -- 0204                        ld    -, (r0+!)
21fe -- 0204                        ld    -, (r0+!)
21ff -- 0205                        ld    -, (r1+!)
2200 -- 0205                        ld    -, (r1+!)
2201 -- 0709                        ld    a, B[0x09]
2202 -- 0F08                        ld    B[0x08], a
2203 -- 0204                        ld    -, (r0+!)
2204 -- 0238                        ld    a, (r0--)
2205 -- 6000                        cmp   a, -
2206 -- 4C50 0323                   bra   nz, 0x0323
2208 -- 0500                        ld    (r4), -
2209 -- 0709                        ld    a, B[0x09]
220a -- 0535                        ld    (r5+!), a
220b -- 0065                        ret
220c -- 0C0F 0000                   ld    (r3|11), 0x0000
220e -- 7801                        cmp   a, 0x01
220f -- 4D50 035D                   bra   z, 0x035d
2211 -- 0C0F 00FF                   ld    (r3|11), 0x00ff
2213 -- 7802                        cmp   a, 0x02
2214 -- 4C50 036A                   bra   nz, 0x036a
2216 -- 0234                        ld    a, (r0+!)
2217 -- 0537                        ld    (r7|01), a
2218 -- 0238                        ld    a, (r0--)
2219 -- 0533                        ld    (r7|00), a
221a -- 0235                        ld    a, (r1+!)
221b -- 053F                        ld    (r7|11), a
221c -- 0239                        ld    a, (r1--)
221d -- 053B                        ld    (r7|10), a
221e -- 4800 02DF                   call  0x02df
2220 -- 023F                        ld    a, (r3|11)
2221 -- 0534                        ld    (r4+!), a
2222 -- 0514                        ld    (r4+!), x
2223 -- 0065                        ret
2224 -- 0214                        ld    x, (r0+!)
2225 -- 0234                        ld    a, (r0+!)
2226 -- A000                        and   a, -
2227 -- 4D70 037B                   bra   s, 0x037b
2229 -- 0031                        ld    a, x
222a -- 6706                        cmp   a, B[0x06]
222b -- 4C70 0375                   bra   ns, 0x0375
222d -- 0F06                        ld    B[0x06], a
222e -- 6707                        cmp   a, B[0x07]
222f -- 4D70 036B                   bra   s, 0x036b
2231 -- 0F07                        ld    B[0x07], a
2232 -- 4C00 036B                   bra   0x036b
2234 -- 0065                        ret
2235 -- 0038                        ld    a, ext0
2236 -- 3801                        sub   a, 0x01
2237 -- 4D70 0399                   bra   s, 0x0399
2239 -- 0EFC                        ld    A[0xfc], a
223a -- 003E                        ld    a, ext6
223b -- 000E                        ld    -, ext6
223c -- 86FD                        add   a, A[0xfd]
223d -- 00E3                        ld    ext6, a
223e -- 08E0 0818                   ld    ext6, 0x0818
2240 -- 0080                        ld    ext0, -
2241 -- 0880 0000                   ld    ext0, 0x0000
2243 -- 000E                        ld    -, ext6
2244 -- 08E0 0818                   ld    ext6, 0x0818
2246 -- 0009                        ld    -, ext1
2247 -- 0039                        ld    a, ext1
2248 -- 00E3                        ld    ext6, a
2249 -- 000E                        ld    -, ext6
224a -- 000C                        ld    -, ext4
224b -- 4800 0097                   call  0x0097
224d -- 06FC                        ld    a, A[0xfc]
224e -- 3801                        sub   a, 0x01
224f -- 0EFC                        ld    A[0xfc], a
2250 -- 4C70 038E                   bra   ns, 0x038e
2252 -- 06FA                        ld    a, A[0xfa]
2253 -- 3801                        sub   a, 0x01
2254 -- 0EFA                        ld    A[0xfa], a
2255 -- 4C70 037C                   bra   ns, 0x037c
2257 -- 07F0                        ld    a, B[0xf0]
2258 -- 1531                        ld    r5, a
2259 -- 9801                        add   a, 0x01
225a -- 0FF0                        ld    B[0xf0], a
225b -- 0361                        bra   (r5)
225c -- 07E3                        ld    a, B[0xe3]
225d -- 3801                        sub   a, 0x01
225e -- 0FE3                        ld    B[0xe3], a
225f -- 4800 0097                   call  0x0097
2261 -- 07E3                        ld    a, B[0xe3]
2262 -- 3801                        sub   a, 0x01
2263 -- 0FE3                        ld    B[0xe3], a
2264 -- 4C70 03A6                   bra   ns, 0x03a6
2266 -- 07F0                        ld    a, B[0xf0]
2267 -- 1531                        ld    r5, a
2268 -- 9801                        add   a, 0x01
2269 -- 0FF0                        ld    B[0xf0], a
226a -- 0361                        bra   (r5)
226b -- 4800 2831                   call  0x2831
226d -- 0C03 7FC0                   ld    (r3|00), 0x7fc0
226f -- 0C07 0004                   ld    (r3|01), 0x0004
2271 -- 4800 279C                   call  0x279c
2273 -- 4C00 2273                   bra   0x2273
2275 -- 08E0 7F02                   ld    ext6, 0x7f02
2277 -- 08E0 0818                   ld    ext6, 0x0818
2279 -- 000C                        ld    -, ext4
227a -- 003C                        ld    a, ext4
227b -- 0EF6                        ld    A[0xf6], a
227c -- 18B0                        ld    r0, 0xb0
227d -- 0C04 03E2                   ld    (r0+!), 0x03e2
227f -- 0810 0002                   ld    x, 0x0002
2281 -- 0830 000E                   ld    a, 0x000e
2283 -- 0414                        ld    (r0+!), x
2284 -- 3801                        sub   a, 0x01
2285 -- 4C70 2283                   bra   ns, 0x2283
2287 -- 0C03 2296                   ld    (r3|00), 0x2296
2289 -- 18C0                        ld    r0, 0xc0
228a -- 0830 0008                   ld    a, 0x0008
228c -- 0A13                        ld    x, ((r3|00)+!)
228d -- 0414                        ld    (r0+!), x
228e -- 3801                        sub   a, 0x01
228f -- 4C70 228C                   bra   ns, 0x228c
2291 -- 07F0                        ld    a, B[0xf0]
2292 -- 1531                        ld    r5, a
2293 -- 9801                        add   a, 0x01
2294 -- 0FF0                        ld    B[0xf0], a
2295 -- 0361                        bra   (r5)
2296 -- 0021
2297 -- 0034
2298 -- 0162
2299 -- 0095
229a -- 01C4
229b -- 01F7
229c -- 0190
229d -- 00D6
229e -- 0054
229f -- 8000
22a0 -- 0349
22a1 -- 08E0 7E00                   ld    ext6, 0x7e00
22a3 -- 08E0 2018                   ld    ext6, 0x2018
22a5 -- 000A                        ld    -, ext2
22a6 -- 0830 001F                   ld    a, 0x001f
22a8 -- 0E05                        ld    A[0x05], a
22a9 -- 0830 7E00                   ld    a, 0x7e00
22ab -- 0E04                        ld    A[0x04], a
22ac -- 003A                        ld    a, ext2
22ad -- A000                        and   a, -
22ae -- 4D50 0014                   bra   z, 0x0014
22b0 -- 98BF                        add   a, 0xbf
22b1 -- 1430                        ld    r0, a
22b2 -- 0850 0014                   ld    stack, 0x0014
22b4 -- 0260                        bra   (r0)
22b5 -- 0604                        ld    a, A[0x04]
22b6 -- 9808                        add   a, 0x08
22b7 -- 0E04                        ld    A[0x04], a
22b8 -- 0605                        ld    a, A[0x05]
22b9 -- 3801                        sub   a, 0x01
22ba -- 0E05                        ld    A[0x05], a
22bb -- 4C70 000B                   bra   ns, 0x000b
22bd -- 07F0                        ld    a, B[0xf0]
22be -- 1531                        ld    r5, a
22bf -- 9801                        add   a, 0x01
22c0 -- 0FF0                        ld    B[0xf0], a
22c1 -- 0361                        bra   (r5)
22c2 -- 0830 4418                   ld    a, 0x4418
22c4 -- 0EF9                        ld    A[0xf9], a
22c5 -- 0604                        ld    a, A[0x04]
22c6 -- 9802                        add   a, 0x02
22c7 -- 00E3                        ld    ext6, a
22c8 -- 08E0 0818                   ld    ext6, 0x0818
22ca -- 000C                        ld    -, ext4
22cb -- 04C3                        ld    (r3|00), ext4
22cc -- 001C                        ld    x, ext4
22cd -- 002C                        ld    y, ext4
22ce -- 00E2                        ld    ext6, y
22cf -- 00E1                        ld    ext6, x
22d0 -- 000C                        ld    -, ext4
22d1 -- 04CB                        ld    (r3|10), ext4
22d2 -- 04CF                        ld    (r3|11), ext4
22d3 -- 4C00 0215                   bra   0x0215
22d5 -- 0830 4418                   ld    a, 0x4418
22d7 -- 0EF9                        ld    A[0xf9], a
22d8 -- 0604                        ld    a, A[0x04]
22d9 -- 9802                        add   a, 0x02
22da -- 00E3                        ld    ext6, a
22db -- 08E0 0818                   ld    ext6, 0x0818
22dd -- 000C                        ld    -, ext4
22de -- 05C3                        ld    (r7|00), ext4
22df -- 0C0B 0001                   ld    (r3|10), 0x0001
22e1 -- 0C0F 000F                   ld    (r3|11), 0x000f
22e3 -- 001C                        ld    x, ext4
22e4 -- 002C                        ld    y, ext4
22e5 -- 00E2                        ld    ext6, y
22e6 -- 00E1                        ld    ext6, x
22e7 -- 0008                        ld    -, ext0
22e8 -- 0038                        ld    a, ext0
22e9 -- A000                        and   a, -
22ea -- 4D50 0053                   bra   z, 0x0053
22ec -- 3820                        sub   a, 0x20
22ed -- 4850 0288                   call  nz, 0x0288
22ef -- 0333                        ld    a, (r7|00)
22f0 -- 9820                        add   a, 0x20
22f1 -- 0533                        ld    (r7|00), a
22f2 -- 4C00 0047                   bra   0x0047
22f4 -- 0065                        ret
22f5 -- 0830 4418                   ld    a, 0x4418
22f7 -- 0EF9                        ld    A[0xf9], a
22f8 -- 0604                        ld    a, A[0x04]
22f9 -- 9802                        add   a, 0x02
22fa -- 00E3                        ld    ext6, a
22fb -- 08E0 0818                   ld    ext6, 0x0818
22fd -- 0008                        ld    -, ext0
22fe -- 0583                        ld    (r7|00), ext0
22ff -- 0C0B 0001                   ld    (r3|10), 0x0001
2301 -- 0C0F 0007                   ld    (r3|11), 0x0007
2303 -- 4800 012D                   call  0x012d
2305 -- 0234                        ld    a, (r0+!)
2306 -- A000                        and   a, -
2307 -- 4850 0278                   call  nz, 0x0278
2309 -- 0333                        ld    a, (r7|00)
230a -- 9820                        add   a, 0x20
230b -- 0533                        ld    (r7|00), a
230c -- 0234                        ld    a, (r0+!)
230d -- 4800 0278                   call  0x0278
230f -- 0333                        ld    a, (r7|00)
2310 -- 9820                        add   a, 0x20
2311 -- 0533                        ld    (r7|00), a
2312 -- 0830 000B                   ld    a, 0x000b
2314 -- 4800 0278                   call  0x0278
2316 -- 0333                        ld    a, (r7|00)
2317 -- 9820                        add   a, 0x20
2318 -- 0533                        ld    (r7|00), a
2319 -- 0234                        ld    a, (r0+!)
231a -- 4800 0278                   call  0x0278
231c -- 0333                        ld    a, (r7|00)
231d -- 9820                        add   a, 0x20
231e -- 0533                        ld    (r7|00), a
231f -- 0234                        ld    a, (r0+!)
2320 -- 4800 0278                   call  0x0278
2322 -- 0333                        ld    a, (r7|00)
2323 -- 9820                        add   a, 0x20
2324 -- 0533                        ld    (r7|00), a
2325 -- 0830 000A                   ld    a, 0x000a
2327 -- 4800 0278                   call  0x0278
2329 -- 0333                        ld    a, (r7|00)
232a -- 9820                        add   a, 0x20
232b -- 0533                        ld    (r7|00), a
232c -- 0234                        ld    a, (r0+!)
232d -- 4800 0278                   call  0x0278
232f -- 0333                        ld    a, (r7|00)
2330 -- 9820                        add   a, 0x20
2331 -- 0533                        ld    (r7|00), a
2332 -- 0234                        ld    a, (r0+!)
2333 -- 4800 0278                   call  0x0278
2335 -- 0065                        ret
2336 -- 0830 4418                   ld    a, 0x4418
2338 -- 0EF9                        ld    A[0xf9], a
2339 -- 0604                        ld    a, A[0x04]
233a -- 9802                        add   a, 0x02
233b -- 00E3                        ld    ext6, a
233c -- 08E0 0818                   ld    ext6, 0x0818
233e -- 0008                        ld    -, ext0
233f -- 0583                        ld    (r7|00), ext0
2340 -- 0C0B 0001                   ld    (r3|10), 0x0001
2342 -- 0C0F 000F                   ld    (r3|11), 0x000f
2344 -- 4800 012D                   call  0x012d
2346 -- 0234                        ld    a, (r0+!)
2347 -- A000                        and   a, -
2348 -- 4850 0298                   call  nz, 0x0298
234a -- 0333                        ld    a, (r7|00)
234b -- 9820                        add   a, 0x20
234c -- 0533                        ld    (r7|00), a
234d -- 0234                        ld    a, (r0+!)
234e -- 4800 0298                   call  0x0298
2350 -- 0333                        ld    a, (r7|00)
2351 -- 9820                        add   a, 0x20
2352 -- 0533                        ld    (r7|00), a
2353 -- 0830 000B                   ld    a, 0x000b
2355 -- 4800 0298                   call  0x0298
2357 -- 0333                        ld    a, (r7|00)
2358 -- 9820                        add   a, 0x20
2359 -- 0533                        ld    (r7|00), a
235a -- 0234                        ld    a, (r0+!)
235b -- 4800 0298                   call  0x0298
235d -- 0333                        ld    a, (r7|00)
235e -- 9820                        add   a, 0x20
235f -- 0533                        ld    (r7|00), a
2360 -- 0234                        ld    a, (r0+!)
2361 -- 4800 0298                   call  0x0298
2363 -- 0333                        ld    a, (r7|00)
2364 -- 9820                        add   a, 0x20
2365 -- 0533                        ld    (r7|00), a
2366 -- 0830 000A                   ld    a, 0x000a
2368 -- 4800 0298                   call  0x0298
236a -- 0333                        ld    a, (r7|00)
236b -- 9820                        add   a, 0x20
236c -- 0533                        ld    (r7|00), a
236d -- 0234                        ld    a, (r0+!)
236e -- 4800 0298                   call  0x0298
2370 -- 0333                        ld    a, (r7|00)
2371 -- 9820                        add   a, 0x20
2372 -- 0533                        ld    (r7|00), a
2373 -- 0234                        ld    a, (r0+!)
2374 -- 4800 0298                   call  0x0298
2376 -- 0065                        ret
2377 -- 0830 4418                   ld    a, 0x4418
2379 -- 0EF9                        ld    A[0xf9], a
237a -- 0604                        ld    a, A[0x04]
237b -- 9801                        add   a, 0x01
237c -- 00E3                        ld    ext6, a
237d -- 08E0 0818                   ld    ext6, 0x0818
237f -- 0008                        ld    -, ext0
2380 -- 0038                        ld    a, ext0
2381 -- 7840                        cmp   a, 0x40
2382 -- 4C70 012C                   bra   ns, 0x012c
2384 -- 0533                        ld    (r7|00), a
2385 -- 0587                        ld    (r7|01), ext0
2386 -- 4800 012D                   call  0x012d
2388 -- 0234                        ld    a, (r0+!)
2389 -- A000                        and   a, -
238a -- 4850 02A8                   call  nz, 0x02a8
238c -- 0333                        ld    a, (r7|00)
238d -- 9802                        add   a, 0x02
238e -- 0533                        ld    (r7|00), a
238f -- 7840                        cmp   a, 0x40
2390 -- 4C70 012C                   bra   ns, 0x012c
2392 -- 0234                        ld    a, (r0+!)
2393 -- 4800 02A8                   call  0x02a8
2395 -- 0333                        ld    a, (r7|00)
2396 -- 9802                        add   a, 0x02
2397 -- 0533                        ld    (r7|00), a
2398 -- 7840                        cmp   a, 0x40
2399 -- 4C70 012C                   bra   ns, 0x012c
239b -- 0830 000B                   ld    a, 0x000b
239d -- 4800 02A8                   call  0x02a8
239f -- 0333                        ld    a, (r7|00)
23a0 -- 9802                        add   a, 0x02
23a1 -- 0533                        ld    (r7|00), a
23a2 -- 7840                        cmp   a, 0x40
23a3 -- 4C70 012C                   bra   ns, 0x012c
23a5 -- 0234                        ld    a, (r0+!)
23a6 -- 4800 02A8                   call  0x02a8
23a8 -- 0333                        ld    a, (r7|00)
23a9 -- 9802                        add   a, 0x02
23aa -- 0533                        ld    (r7|00), a
23ab -- 7840                        cmp   a, 0x40
23ac -- 4C70 012C                   bra   ns, 0x012c
23ae -- 0234                        ld    a, (r0+!)
23af -- 4800 02A8                   call  0x02a8
23b1 -- 0333                        ld    a, (r7|00)
23b2 -- 9802                        add   a, 0x02
23b3 -- 0533                        ld    (r7|00), a
23b4 -- 7840                        cmp   a, 0x40
23b5 -- 4C70 012C                   bra   ns, 0x012c
23b7 -- 0830 000A                   ld    a, 0x000a
23b9 -- 4800 02A8                   call  0x02a8
23bb -- 0333                        ld    a, (r7|00)
23bc -- 9802                        add   a, 0x02
23bd -- 0533                        ld    (r7|00), a
23be -- 7840                        cmp   a, 0x40
23bf -- 4C70 012C                   bra   ns, 0x012c
23c1 -- 0234                        ld    a, (r0+!)
23c2 -- 4800 02A8                   call  0x02a8
23c4 -- 0333                        ld    a, (r7|00)
23c5 -- 9802                        add   a, 0x02
23c6 -- 0533                        ld    (r7|00), a
23c7 -- 7840                        cmp   a, 0x40
23c8 -- 4C70 012C                   bra   ns, 0x012c
23ca -- 0234                        ld    a, (r0+!)
23cb -- 4800 02A8                   call  0x02a8
23cd -- 0065                        ret
23ce -- 1810                        ld    r0, 0x10
23cf -- 0820 0800                   ld    y, 0x0800
23d1 -- 1902                        ld    r1, 0x02
23d2 -- 0018                        ld    x, ext0
23d3 -- 0037                        ld    a, p
23d4 -- 0434                        ld    (r0+!), a
23d5 -- 0031                        ld    a, x
23d6 -- B80F                        and   a, 0x0f
23d7 -- 0434                        ld    (r0+!), a
23d8 -- 1231                        ld    a, r1
23d9 -- 3801                        sub   a, 0x01
23da -- 1431                        ld    r1, a
23db -- 4C70 0131                   bra   ns, 0x0131
23dd -- 1810                        ld    r0, 0x10
23de -- 0230                        ld    a, (r0)
23df -- A000                        and   a, -
23e0 -- 780A                        cmp   a, 0x0a
23e1 -- 4D70 0146                   bra   s, 0x0146
23e3 -- 380A                        sub   a, 0x0a
23e4 -- 8800 015E                   add   a, 0x015e
23e6 -- 4A60                        bra   (a)
23e7 -- 0065                        ret
23e8 -- 0C00 000C                   ld    (r0), 0x000c
23ea -- 0065                        ret
23eb -- 0C00 000D                   ld    (r0), 0x000d
23ed -- 0065                        ret
23ee -- 0C00 000E                   ld    (r0), 0x000e
23f0 -- 0065                        ret
23f1 -- 0C04 0000                   ld    (r0+!), 0x0000
23f3 -- 0C04 000D                   ld    (r0+!), 0x000d
23f5 -- 0C04 000D                   ld    (r0+!), 0x000d
23f7 -- 0C04 000D                   ld    (r0+!), 0x000d
23f9 -- 0C04 000D                   ld    (r0+!), 0x000d
23fb -- 0C04 000D                   ld    (r0+!), 0x000d
23fd -- 1810                        ld    r0, 0x10
23fe -- 0065                        ret
23ff -- 0147
2400 -- 014A
2401 -- 014D
2402 -- 0150
2403 -- 0830 4418                   ld    a, 0x4418
2405 -- 0EF9                        ld    A[0xf9], a
2406 -- 0604                        ld    a, A[0x04]
2407 -- 9802                        add   a, 0x02
2408 -- 00E3                        ld    ext6, a
2409 -- 08E0 0818                   ld    ext6, 0x0818
240b -- 0008                        ld    -, ext0
240c -- 0583                        ld    (r7|00), ext0
240d -- 0C0B 000F                   ld    (r3|10), 0x000f
240f -- 0C0F 004F                   ld    (r3|11), 0x004f
2411 -- 1810                        ld    r0, 0x10
2412 -- 0820 0800                   ld    y, 0x0800
2414 -- 0038                        ld    a, ext0
2415 -- 8800 26F3                   add   a, 0x26f3
2417 -- 4A10                        ld    x, (a)
2418 -- 0037                        ld    a, p
2419 -- 0434                        ld    (r0+!), a
241a -- 0031                        ld    a, x
241b -- B80F                        and   a, 0x0f
241c -- 0438                        ld    (r0--), a
241d -- 0234                        ld    a, (r0+!)
241e -- A000                        and   a, -
241f -- 4850 02BC                   call  nz, 0x02bc
2421 -- 0333                        ld    a, (r7|00)
2422 -- 8800 00E0                   add   a, 0x00e0
2424 -- 0533                        ld    (r7|00), a
2425 -- 0234                        ld    a, (r0+!)
2426 -- 4800 02BC                   call  0x02bc
2428 -- 0065                        ret
2429 -- 0333                        ld    a, (r7|00)
242a -- 8800 00A0                   add   a, 0x00a0
242c -- 0533                        ld    (r7|00), a
242d -- 0234                        ld    a, (r0+!)
242e -- 4800 02BC                   call  0x02bc
2430 -- 0065                        ret
2431 -- 0830 4418                   ld    a, 0x4418
2433 -- 0EF9                        ld    A[0xf9], a
2434 -- 0604                        ld    a, A[0x04]
2435 -- 9801                        add   a, 0x01
2436 -- 00E3                        ld    ext6, a
2437 -- 08E0 0818                   ld    ext6, 0x0818
2439 -- 0008                        ld    -, ext0
243a -- 0038                        ld    a, ext0
243b -- 7840                        cmp   a, 0x40
243c -- 4C70 01B9                   bra   ns, 0x01b9
243e -- 0533                        ld    (r7|00), a
243f -- 0587                        ld    (r7|01), ext0
2440 -- 1810                        ld    r0, 0x10
2441 -- 0820 0800                   ld    y, 0x0800
2443 -- 0038                        ld    a, ext0
2444 -- 8800 26F3                   add   a, 0x26f3
2446 -- 4A10                        ld    x, (a)
2447 -- 0037                        ld    a, p
2448 -- 0434                        ld    (r0+!), a
2449 -- 0031                        ld    a, x
244a -- B80F                        and   a, 0x0f
244b -- 0438                        ld    (r0--), a
244c -- 0234                        ld    a, (r0+!)
244d -- A000                        and   a, -
244e -- 4850 02CC                   call  nz, 0x02cc
2450 -- 0333                        ld    a, (r7|00)
2451 -- 0333                        ld    a, (r7|00)
2452 -- 980E                        add   a, 0x0e
2453 -- 0533                        ld    (r7|00), a
2454 -- 7840                        cmp   a, 0x40
2455 -- 4C70 01B9                   bra   ns, 0x01b9
2457 -- 0234                        ld    a, (r0+!)
2458 -- 4800 02CC                   call  0x02cc
245a -- 0065                        ret
245b -- 0333                        ld    a, (r7|00)
245c -- 980A                        add   a, 0x0a
245d -- 0533                        ld    (r7|00), a
245e -- 7840                        cmp   a, 0x40
245f -- 4C70 01B9                   bra   ns, 0x01b9
2461 -- 0234                        ld    a, (r0+!)
2462 -- 4800 02CC                   call  0x02cc
2464 -- 0065                        ret
2465 -- 0604                        ld    a, A[0x04]
2466 -- 9802                        add   a, 0x02
2467 -- 00E3                        ld    ext6, a
2468 -- 08E0 0818                   ld    ext6, 0x0818
246a -- 000C                        ld    -, ext4
246b -- 04C3                        ld    (r3|00), ext4
246c -- 001C                        ld    x, ext4
246d -- 002C                        ld    y, ext4
246e -- 00E2                        ld    ext6, y
246f -- 00E1                        ld    ext6, x
2470 -- 000C                        ld    -, ext4
2471 -- 000C                        ld    -, ext4
2472 -- 04C7                        ld    (r3|01), ext4
2473 -- 0233                        ld    a, (r3|00)
2474 -- B81F                        and   a, 0x1f
2475 -- 9002                        shr   a
2476 -- 0EF2                        ld    A[0xf2], a
2477 -- 0233                        ld    a, (r3|00)
2478 -- 86F6                        add   a, A[0xf6]
2479 -- 0433                        ld    (r3|00), a
247a -- 02E3                        ld    ext6, (r3|00)
247b -- 06F9                        ld    a, A[0xf9]
247c -- 00E3                        ld    ext6, a
247d -- 00C0                        ld    ext4, -
247e -- 003C                        ld    a, ext4
247f -- A000                        and   a, -
2480 -- 4D50 01E8                   bra   z, 0x01e8
2482 -- 001C                        ld    x, ext4
2483 -- 00C1                        ld    ext4, x
2484 -- 3801                        sub   a, 0x01
2485 -- 4C50 01E2                   bra   nz, 0x01e2
2487 -- 4C00 01DD                   bra   0x01dd
2489 -- 06F2                        ld    a, A[0xf2]
248a -- 9801                        add   a, 0x01
248b -- 0EF2                        ld    A[0xf2], a
248c -- B80F                        and   a, 0x0f
248d -- 98B0                        add   a, 0xb0
248e -- 1432                        ld    r2, a
248f -- 0232                        ld    a, (r2)
2490 -- 8203                        add   a, (r3|00)
2491 -- 0433                        ld    (r3|00), a
2492 -- 0237                        ld    a, (r3|01)
2493 -- 3801                        sub   a, 0x01
2494 -- 0437                        ld    (r3|01), a
2495 -- 4C70 01D9                   bra   ns, 0x01d9
2497 -- 0065                        ret
2498 -- 0830 4418                   ld    a, 0x4418
249a -- 0EF9                        ld    A[0xf9], a
249b -- 0604                        ld    a, A[0x04]
249c -- 9801                        add   a, 0x01
249d -- 00E3                        ld    ext6, a
249e -- 08E0 0818                   ld    ext6, 0x0818
24a0 -- 000C                        ld    -, ext4
24a1 -- 003C                        ld    a, ext4
24a2 -- 0533                        ld    (r7|00), a
24a3 -- 7840                        cmp   a, 0x40
24a4 -- 4C70 0214                   bra   ns, 0x0214
24a6 -- 05C7                        ld    (r7|01), ext4
24a7 -- 001C                        ld    x, ext4
24a8 -- 002C                        ld    y, ext4
24a9 -- 0031                        ld    a, x
24aa -- 0E07                        ld    A[0x07], a
24ab -- 0032                        ld    a, y
24ac -- 9802                        add   a, 0x02
24ad -- 0E08                        ld    A[0x08], a
24ae -- 00E2                        ld    ext6, y
24af -- 00E1                        ld    ext6, x
24b0 -- 000C                        ld    -, ext4
24b1 -- 04CB                        ld    (r3|10), ext4
24b2 -- 04CF                        ld    (r3|11), ext4
24b3 -- 4C00 0237                   bra   0x0237
24b5 -- 0065                        ret
24b6 -- 0233                        ld    a, (r3|00)
24b7 -- B81F                        and   a, 0x1f
24b8 -- 9002                        shr   a
24b9 -- 0EF2                        ld    A[0xf2], a
24ba -- 0233                        ld    a, (r3|00)
24bb -- 86F6                        add   a, A[0xf6]
24bc -- 0433                        ld    (r3|00), a
24bd -- 023F                        ld    a, (r3|11)
24be -- 0437                        ld    (r3|01), a
24bf -- 02E3                        ld    ext6, (r3|00)
24c0 -- 06F9                        ld    a, A[0xf9]
24c1 -- 00E3                        ld    ext6, a
24c2 -- 00C0                        ld    ext4, -
24c3 -- 023B                        ld    a, (r3|10)
24c4 -- 001C                        ld    x, ext4
24c5 -- 00C1                        ld    ext4, x
24c6 -- 3801                        sub   a, 0x01
24c7 -- 4C70 0223                   bra   ns, 0x0223
24c9 -- 06F2                        ld    a, A[0xf2]
24ca -- 9801                        add   a, 0x01
24cb -- 0EF2                        ld    A[0xf2], a
24cc -- B80F                        and   a, 0x0f
24cd -- 98B0                        add   a, 0xb0
24ce -- 1432                        ld    r2, a
24cf -- 0232                        ld    a, (r2)
24d0 -- 8203                        add   a, (r3|00)
24d1 -- 0433                        ld    (r3|00), a
24d2 -- 0237                        ld    a, (r3|01)
24d3 -- 3801                        sub   a, 0x01
24d4 -- 0437                        ld    (r3|01), a
24d5 -- 4C70 021E                   bra   ns, 0x021e
24d7 -- 0065                        ret
24d8 -- 0333                        ld    a, (r7|00)
24d9 -- B801                        and   a, 0x01
24da -- 0433                        ld    (r3|00), a
24db -- 0333                        ld    a, (r7|00)
24dc -- B83E                        and   a, 0x3e
24dd -- 9003                        shl   a
24de -- 9003                        shl   a
24df -- 9003                        shl   a
24e0 -- 9003                        shl   a
24e1 -- 8203                        add   a, (r3|00)
24e2 -- 8307                        add   a, (r7|01)
24e3 -- 0433                        ld    (r3|00), a
24e4 -- 0333                        ld    a, (r7|00)
24e5 -- 820B                        add   a, (r3|10)
24e6 -- 3840                        sub   a, 0x40
24e7 -- 4D70 0215                   bra   s, 0x0215
24e9 -- 4D50 0215                   bra   z, 0x0215
24eb -- 0023                        ld    y, a
24ec -- 023B                        ld    a, (r3|10)
24ed -- 2002                        sub   a, y
24ee -- 3801                        sub   a, 0x01
24ef -- 0023                        ld    y, a
24f0 -- 0233                        ld    a, (r3|00)
24f1 -- B81F                        and   a, 0x1f
24f2 -- 9002                        shr   a
24f3 -- 0EF2                        ld    A[0xf2], a
24f4 -- 0233                        ld    a, (r3|00)
24f5 -- 86F6                        add   a, A[0xf6]
24f6 -- 0433                        ld    (r3|00), a
24f7 -- 02E3                        ld    ext6, (r3|00)
24f8 -- 06F9                        ld    a, A[0xf9]
24f9 -- 00E3                        ld    ext6, a
24fa -- 00C0                        ld    ext4, -
24fb -- 0608                        ld    a, A[0x08]
24fc -- 00E3                        ld    ext6, a
24fd -- 0607                        ld    a, A[0x07]
24fe -- 00E3                        ld    ext6, a
24ff -- 000C                        ld    -, ext4
2500 -- 0032                        ld    a, y
2501 -- 001C                        ld    x, ext4
2502 -- 00C1                        ld    ext4, x
2503 -- 3801                        sub   a, 0x01
2504 -- 4C70 0260                   bra   ns, 0x0260
2506 -- 0608                        ld    a, A[0x08]
2507 -- 9801                        add   a, 0x01
2508 -- 820B                        add   a, (r3|10)
2509 -- 0E08                        ld    A[0x08], a
250a -- 06F2                        ld    a, A[0xf2]
250b -- 9801                        add   a, 0x01
250c -- 0EF2                        ld    A[0xf2], a
250d -- B80F                        and   a, 0x0f
250e -- 98B0                        add   a, 0xb0
250f -- 1432                        ld    r2, a
2510 -- 0232                        ld    a, (r2)
2511 -- 8203                        add   a, (r3|00)
2512 -- 0433                        ld    (r3|00), a
2513 -- 023F                        ld    a, (r3|11)
2514 -- 3801                        sub   a, 0x01
2515 -- 043F                        ld    (r3|11), a
2516 -- 4C70 0256                   bra   ns, 0x0256
2518 -- 0065                        ret
2519 -- 0013                        ld    x, a
251a -- 0820 0008                   ld    y, 0x0008
251c -- 0830 0807                   ld    a, 0x0807
251e -- 08F0 8000                   ld    ext7, 0x8000
2520 -- 8007                        add   a, p
2521 -- 001F                        ld    x, ext7
2522 -- 00E1                        ld    ext6, x
2523 -- 00E3                        ld    ext6, a
2524 -- 000C                        ld    -, ext4
2525 -- 0333                        ld    a, (r7|00)
2526 -- 0433                        ld    (r3|00), a
2527 -- 4C00 0215                   bra   0x0215
2529 -- 0013                        ld    x, a
252a -- 0820 0010                   ld    y, 0x0010
252c -- 0830 0807                   ld    a, 0x0807
252e -- 08F0 80F0                   ld    ext7, 0x80f0
2530 -- 8007                        add   a, p
2531 -- 001F                        ld    x, ext7
2532 -- 00E1                        ld    ext6, x
2533 -- 00E3                        ld    ext6, a
2534 -- 000C                        ld    -, ext4
2535 -- 0333                        ld    a, (r7|00)
2536 -- 0433                        ld    (r3|00), a
2537 -- 4C00 0215                   bra   0x0215
2539 -- 0013                        ld    x, a
253a -- 0820 0010                   ld    y, 0x0010
253c -- 0830 0807                   ld    a, 0x0807
253e -- 08F0 80F0                   ld    ext7, 0x80f0
2540 -- 8007                        add   a, p
2541 -- 001F                        ld    x, ext7
2542 -- 00E1                        ld    ext6, x
2543 -- 00E3                        ld    ext6, a
2544 -- 000C                        ld    -, ext4
2545 -- 0333                        ld    a, (r7|00)
2546 -- 0433                        ld    (r3|00), a
2547 -- 4C00 0215                   bra   0x0215
2549 -- 1907                        ld    r1, 0x07
254a -- 0C05 0807                   ld    (r1+!), 0x0807
254c -- 0013                        ld    x, a
254d -- 0820 0010                   ld    y, 0x0010
254f -- B800                        and   a, 0x00
2550 -- 08F0 80F0                   ld    ext7, 0x80f0
2552 -- 8007                        add   a, p
2553 -- 04F1                        ld    (r1), ext7
2554 -- 02E9                        ld    ext6, (r1--)
2555 -- 02E1                        ld    ext6, (r1)
2556 -- 000C                        ld    -, ext4
2557 -- 0C0B 0001                   ld    (r3|10), 0x0001
2559 -- 0C0F 000F                   ld    (r3|11), 0x000f
255b -- 4C00 0237                   bra   0x0237
255d -- 0013                        ld    x, a
255e -- 0820 0280                   ld    y, 0x0280
2560 -- 0830 0807                   ld    a, 0x0807
2562 -- 08F0 9130                   ld    ext7, 0x9130
2564 -- 8007                        add   a, p
2565 -- 001F                        ld    x, ext7
2566 -- 00E1                        ld    ext6, x
2567 -- 00E3                        ld    ext6, a
2568 -- 000C                        ld    -, ext4
2569 -- 0333                        ld    a, (r7|00)
256a -- 0433                        ld    (r3|00), a
256b -- 4C00 0215                   bra   0x0215
256d -- 1907                        ld    r1, 0x07
256e -- 0C05 0807                   ld    (r1+!), 0x0807
2570 -- 0013                        ld    x, a
2571 -- 0820 0280                   ld    y, 0x0280
2573 -- B800                        and   a, 0x00
2574 -- 08F0 9130                   ld    ext7, 0x9130
2576 -- 8007                        add   a, p
2577 -- 04F1                        ld    (r1), ext7
2578 -- 02E9                        ld    ext6, (r1--)
2579 -- 02E1                        ld    ext6, (r1)
257a -- 000C                        ld    -, ext4
257b -- 0C0B 000F                   ld    (r3|10), 0x000f
257d -- 0C0F 004F                   ld    (r3|11), 0x004f
257f -- 4C00 0237                   bra   0x0237
2581 -- 06F6                        ld    a, A[0xf6]
2582 -- 8800 1800                   add   a, 0x1800
2584 -- 00E3                        ld    ext6, a
2585 -- 08E0 4018                   ld    ext6, 0x4018
2587 -- 00C0                        ld    ext4, -
2588 -- 0810 1111                   ld    x, 0x1111
258a -- 0830 0007                   ld    a, 0x0007
258c -- 00C1                        ld    ext4, x
258d -- 00C1                        ld    ext4, x
258e -- 00C1                        ld    ext4, x
258f -- 00C1                        ld    ext4, x
2590 -- 00C1                        ld    ext4, x
2591 -- 00C1                        ld    ext4, x
2592 -- 00C1                        ld    ext4, x
2593 -- 00C1                        ld    ext4, x
2594 -- 3801                        sub   a, 0x01
2595 -- 4C70 02EB                   bra   ns, 0x02eb
2597 -- 0065                        ret
2598 -- 07E0                        ld    a, B[0xe0]
2599 -- A000                        and   a, -
259a -- 4D50 0332                   bra   z, 0x0332
259c -- 0830 4018                   ld    a, 0x4018
259e -- 0EF9                        ld    A[0xf9], a
259f -- 07E0                        ld    a, B[0xe0]
25a0 -- 9006                        neg   a
25a1 -- 9003                        shl   a
25a2 -- 9003                        shl   a
25a3 -- 9003                        shl   a
25a4 -- 9003                        shl   a
25a5 -- 9003                        shl   a
25a6 -- 9003                        shl   a
25a7 -- 8800 E61E                   add   a, 0xe61e
25a9 -- 00E3                        ld    ext6, a
25aa -- 08E0 0807                   ld    ext6, 0x0807
25ac -- 000C                        ld    -, ext4
25ad -- 0C0B 003F                   ld    (r3|10), 0x003f
25af -- 07E0                        ld    a, B[0xe0]
25b0 -- 3801                        sub   a, 0x01
25b1 -- 043F                        ld    (r3|11), a
25b2 -- B800                        and   a, 0x00
25b3 -- 0433                        ld    (r3|00), a
25b4 -- 4800 0215                   call  0x0215
25b6 -- 08E0 E620                   ld    ext6, 0xe620
25b8 -- 08E0 0807                   ld    ext6, 0x0807
25ba -- 000C                        ld    -, ext4
25bb -- 0C0B 003F                   ld    (r3|10), 0x003f
25bd -- 07E0                        ld    a, B[0xe0]
25be -- 3801                        sub   a, 0x01
25bf -- 043F                        ld    (r3|11), a
25c0 -- 0830 00C0                   ld    a, 0x00c0
25c2 -- 27E0                        sub   a, B[0xe0]
25c3 -- 0437                        ld    (r3|01), a
25c4 -- B80F                        and   a, 0x0f
25c5 -- 9003                        shl   a
25c6 -- 0433                        ld    (r3|00), a
25c7 -- 0237                        ld    a, (r3|01)
25c8 -- B8F0                        and   a, 0xf0
25c9 -- 0013                        ld    x, a
25ca -- 0820 0020                   ld    y, 0x0020
25cc -- 0037                        ld    a, p
25cd -- 001F                        ld    x, ext7
25ce -- 0031                        ld    a, x
25cf -- 8203                        add   a, (r3|00)
25d0 -- 0433                        ld    (r3|00), a
25d1 -- 4800 0215                   call  0x0215
25d3 -- 07F0                        ld    a, B[0xf0]
25d4 -- 1531                        ld    r5, a
25d5 -- 9801                        add   a, 0x01
25d6 -- 0FF0                        ld    B[0xf0], a
25d7 -- 0361                        bra   (r5)
25d8 -- 0830 4018                   ld    a, 0x4018
25da -- 0EF9                        ld    A[0xf9], a
25db -- 08E0 FE22                   ld    ext6, 0xfe22
25dd -- 08E0 0807                   ld    ext6, 0x0807
25df -- 000C                        ld    -, ext4
25e0 -- 0C03 0000                   ld    (r3|00), 0x0000
25e2 -- 0C07 00BF                   ld    (r3|01), 0x00bf
25e4 -- 4800 01D2                   call  0x01d2
25e6 -- 07F0                        ld    a, B[0xf0]
25e7 -- 1531                        ld    r5, a
25e8 -- 9801                        add   a, 0x01
25e9 -- 0FF0                        ld    B[0xf0], a
25ea -- 0361                        bra   (r5)
25eb -- 8000
25ec -- 0105
25ed -- 08E0 7E00                   ld    ext6, 0x7e00
25ef -- 08E0 2018                   ld    ext6, 0x2018
25f1 -- 000A                        ld    -, ext2
25f2 -- 0830 0C80                   ld    a, 0x0c80
25f4 -- 0E31                        ld    A[0x31], a
25f5 -- 0830 0005                   ld    a, 0x0005
25f7 -- 0E05                        ld    A[0x05], a
25f8 -- 0830 7E00                   ld    a, 0x7e00
25fa -- 0E04                        ld    A[0x04], a
25fb -- 003A                        ld    a, ext2
25fc -- A000                        and   a, -
25fd -- 4D50 001D                   bra   z, 0x001d
25ff -- 0E30                        ld    A[0x30], a
2600 -- 0604                        ld    a, A[0x04]
2601 -- 9801                        add   a, 0x01
2602 -- 00E3                        ld    ext6, a
2603 -- 08E0 0818                   ld    ext6, 0x0818
2605 -- 000C                        ld    -, ext4
2606 -- 4800 002E                   call  0x002e
2608 -- 4800 008A                   call  0x008a
260a -- 0631                        ld    a, A[0x31]
260b -- 8800 0400                   add   a, 0x0400
260d -- 0E31                        ld    A[0x31], a
260e -- 0604                        ld    a, A[0x04]
260f -- 9808                        add   a, 0x08
2610 -- 0E04                        ld    A[0x04], a
2611 -- 0605                        ld    a, A[0x05]
2612 -- 3801                        sub   a, 0x01
2613 -- 0E05                        ld    A[0x05], a
2614 -- 4C70 000E                   bra   ns, 0x000e
2616 -- 07F0                        ld    a, B[0xf0]
2617 -- 1531                        ld    r5, a
2618 -- 9801                        add   a, 0x01
2619 -- 0FF0                        ld    B[0xf0], a
261a -- 0361                        bra   (r5)
261b -- 1810                        ld    r0, 0x10
261c -- 0820 0800                   ld    y, 0x0800
261e -- 003C                        ld    a, ext4
261f -- 1431                        ld    r1, a
2620 -- 8800 26F3                   add   a, 0x26f3
2622 -- 4A10                        ld    x, (a)
2623 -- 0037                        ld    a, p
2624 -- A000                        and   a, -
2625 -- 4C50 003C                   bra   nz, 0x003c
2627 -- 0830 FFF0                   ld    a, 0xfff0
2629 -- 9830                        add   a, 0x30
262a -- 0434                        ld    (r0+!), a
262b -- 0031                        ld    a, x
262c -- B80F                        and   a, 0x0f
262d -- 9830                        add   a, 0x30
262e -- 0434                        ld    (r0+!), a
262f -- 1231                        ld    a, r1
2630 -- 9003                        shl   a
2631 -- 8800 2730                   add   a, 0x2730
2633 -- 0433                        ld    (r3|00), a
2634 -- 0A33                        ld    a, ((r3|00)+!)
2635 -- 0434                        ld    (r0+!), a
2636 -- 0A33                        ld    a, ((r3|00)+!)
2637 -- 0434                        ld    (r0+!), a
2638 -- 0C04 0020                   ld    (r0+!), 0x0020
263a -- 0820 0080                   ld    y, 0x0080
263c -- 001C                        ld    x, ext4
263d -- 0037                        ld    a, p
263e -- 0434                        ld    (r0+!), a
263f -- 0031                        ld    a, x
2640 -- B8FF                        and   a, 0xff
2641 -- 0434                        ld    (r0+!), a
2642 -- 001C                        ld    x, ext4
2643 -- 0037                        ld    a, p
2644 -- 0434                        ld    (r0+!), a
2645 -- 0C04 0020                   ld    (r0+!), 0x0020
2647 -- 0820 0800                   ld    y, 0x0800
2649 -- 003C                        ld    a, ext4
264a -- B80F                        and   a, 0x0f
264b -- 9830                        add   a, 0x30
264c -- 0434                        ld    (r0+!), a
264d -- 0C04 0027                   ld    (r0+!), 0x0027
264f -- 001C                        ld    x, ext4
2650 -- 0037                        ld    a, p
2651 -- 9830                        add   a, 0x30
2652 -- 0434                        ld    (r0+!), a
2653 -- 0031                        ld    a, x
2654 -- B80F                        and   a, 0x0f
2655 -- 9830                        add   a, 0x30
2656 -- 0434                        ld    (r0+!), a
2657 -- 0C04 0022                   ld    (r0+!), 0x0022
2659 -- 001C                        ld    x, ext4
265a -- 0037                        ld    a, p
265b -- 9830                        add   a, 0x30
265c -- 0434                        ld    (r0+!), a
265d -- 0031                        ld    a, x
265e -- B80F                        and   a, 0x0f
265f -- 9830                        add   a, 0x30
2660 -- 0434                        ld    (r0+!), a
2661 -- 0C04 0020                   ld    (r0+!), 0x0020
2663 -- 003C                        ld    a, ext4
2664 -- 9003                        shl   a
2665 -- 9003                        shl   a
2666 -- 9003                        shl   a
2667 -- 8800 2764                   add   a, 0x2764
2669 -- 0433                        ld    (r3|00), a
266a -- 0A33                        ld    a, ((r3|00)+!)
266b -- 0434                        ld    (r0+!), a
266c -- 0A33                        ld    a, ((r3|00)+!)
266d -- 0434                        ld    (r0+!), a
266e -- 0A33                        ld    a, ((r3|00)+!)
266f -- 0434                        ld    (r0+!), a
2670 -- 0A33                        ld    a, ((r3|00)+!)
2671 -- 0434                        ld    (r0+!), a
2672 -- 0A33                        ld    a, ((r3|00)+!)
2673 -- 0434                        ld    (r0+!), a
2674 -- 0A33                        ld    a, ((r3|00)+!)
2675 -- 0434                        ld    (r0+!), a
2676 -- 0065                        ret
2677 -- 0630                        ld    a, A[0x30]
2678 -- A000                        and   a, -
2679 -- 4D70 00A1                   bra   s, 0x00a1
267b -- 3801                        sub   a, 0x01
267c -- 0537                        ld    (r7|01), a
267d -- 0631                        ld    a, A[0x31]
267e -- 0533                        ld    (r7|00), a
267f -- 1810                        ld    r0, 0x10
2680 -- B800                        and   a, 0x00
2681 -- 0234                        ld    a, (r0+!)
2682 -- 3820                        sub   a, 0x20
2683 -- 4850 00B3                   call  nz, 0x00b3
2685 -- 0333                        ld    a, (r7|00)
2686 -- 9820                        add   a, 0x20
2687 -- 0533                        ld    (r7|00), a
2688 -- 0337                        ld    a, (r7|01)
2689 -- 3801                        sub   a, 0x01
268a -- 0537                        ld    (r7|01), a
268b -- 4C70 0093                   bra   ns, 0x0093
268d -- 0065                        ret
268e -- 9006                        neg   a
268f -- 0013                        ld    x, a
2690 -- 9003                        shl   a
2691 -- 9003                        shl   a
2692 -- 9003                        shl   a
2693 -- 9003                        shl   a
2694 -- 9003                        shl   a
2695 -- 8631                        add   a, A[0x31]
2696 -- 0533                        ld    (r7|00), a
2697 -- 0830 0016                   ld    a, 0x0016
2699 -- 2001                        sub   a, x
269a -- 0537                        ld    (r7|01), a
269b -- 0031                        ld    a, x
269c -- 9810                        add   a, 0x10
269d -- 1430                        ld    r0, a
269e -- 4C00 0093                   bra   0x0093
26a0 -- 0013                        ld    x, a
26a1 -- 0820 0010                   ld    y, 0x0010
26a3 -- 0830 0807                   ld    a, 0x0807
26a5 -- 08F0 82D0                   ld    ext7, 0x82d0
26a7 -- 8007                        add   a, p
26a8 -- 001F                        ld    x, ext7
26a9 -- 00E1                        ld    ext6, x
26aa -- 00E3                        ld    ext6, a
26ab -- 000C                        ld    -, ext4
26ac -- 0333                        ld    a, (r7|00)
26ad -- 86F6                        add   a, A[0xf6]
26ae -- 00E3                        ld    ext6, a
26af -- 08E0 0C18                   ld    ext6, 0x0c18
26b1 -- 00C0                        ld    ext4, -
26b2 -- 003C                        ld    a, ext4
26b3 -- 00C3                        ld    ext4, a
26b4 -- 003C                        ld    a, ext4
26b5 -- 00C3                        ld    ext4, a
26b6 -- 003C                        ld    a, ext4
26b7 -- 00C3                        ld    ext4, a
26b8 -- 003C                        ld    a, ext4
26b9 -- 00C3                        ld    ext4, a
26ba -- 003C                        ld    a, ext4
26bb -- 00C3                        ld    ext4, a
26bc -- 003C                        ld    a, ext4
26bd -- 00C3                        ld    ext4, a
26be -- 003C                        ld    a, ext4
26bf -- 00C3                        ld    ext4, a
26c0 -- 003C                        ld    a, ext4
26c1 -- 00C3                        ld    ext4, a
26c2 -- 003C                        ld    a, ext4
26c3 -- 00C3                        ld    ext4, a
26c4 -- 003C                        ld    a, ext4
26c5 -- 00C3                        ld    ext4, a
26c6 -- 003C                        ld    a, ext4
26c7 -- 00C3                        ld    ext4, a
26c8 -- 003C                        ld    a, ext4
26c9 -- 00C3                        ld    ext4, a
26ca -- 003C                        ld    a, ext4
26cb -- 00C3                        ld    ext4, a
26cc -- 003C                        ld    a, ext4
26cd -- 00C3                        ld    ext4, a
26ce -- 003C                        ld    a, ext4
26cf -- 00C3                        ld    ext4, a
26d0 -- 003C                        ld    a, ext4
26d1 -- 00C3                        ld    ext4, a
26d2 -- 003C                        ld    a, ext4
26d3 -- 00C3                        ld    ext4, a
26d4 -- 003C                        ld    a, ext4
26d5 -- 00C3                        ld    ext4, a
26d6 -- 003C                        ld    a, ext4
26d7 -- 00C3                        ld    ext4, a
26d8 -- 003C                        ld    a, ext4
26d9 -- 00C3                        ld    ext4, a
26da -- 003C                        ld    a, ext4
26db -- 00C3                        ld    ext4, a
26dc -- 003C                        ld    a, ext4
26dd -- 00C3                        ld    ext4, a
26de -- 003C                        ld    a, ext4
26df -- 00C3                        ld    ext4, a
26e0 -- 003C                        ld    a, ext4
26e1 -- 00C3                        ld    ext4, a
26e2 -- 003C                        ld    a, ext4
26e3 -- 00C3                        ld    ext4, a
26e4 -- 003C                        ld    a, ext4
26e5 -- 00C3                        ld    ext4, a
26e6 -- 003C                        ld    a, ext4
26e7 -- 00C3                        ld    ext4, a
26e8 -- 003C                        ld    a, ext4
26e9 -- 00C3                        ld    ext4, a
26ea -- 003C                        ld    a, ext4
26eb -- 00C3                        ld    ext4, a
26ec -- 003C                        ld    a, ext4
26ed -- 00C3                        ld    ext4, a
26ee -- 003C                        ld    a, ext4
26ef -- 00C3                        ld    ext4, a
26f0 -- 003C                        ld    a, ext4
26f1 -- 00C3                        ld    ext4, a
26f2 -- 0065                        ret
26f3 -- 0000
26f4 -- 0001
26f5 -- 0002
26f6 -- 0003
26f7 -- 0004
26f8 -- 0005
26f9 -- 0006
26fa -- 0007
26fb -- 0008
26fc -- 0009
26fd -- 0010
26fe -- 0011
26ff -- 0012
2700 -- 0013
2701 -- 0014
2702 -- 0015
2703 -- 0016
2704 -- 0017
2705 -- 0018
2706 -- 0019
2707 -- 0020
2708 -- 0021
2709 -- 0022
270a -- 0023
270b -- 0024
270c -- 0025
270d -- 0026
270e -- 0027
270f -- 0028
2710 -- 0029
2711 -- 0030
2712 -- 0031
2713 -- 0032
2714 -- 0033
2715 -- 0034
2716 -- 0035
2717 -- 0036
2718 -- 0037
2719 -- 0038
271a -- 0039
271b -- 0040
271c -- 0041
271d -- 0042
271e -- 0043
271f -- 0044
2720 -- 0045
2721 -- 0046
2722 -- 0047
2723 -- 0048
2724 -- 0049
2725 -- 0050
2726 -- 0051
2727 -- 0052
2728 -- 0053
2729 -- 0054
272a -- 0055
272b -- 0056
272c -- 0057
272d -- 0058
272e -- 0059
272f -- 0060
2730 -- 0074
2731 -- 0068
2732 -- 0073
2733 -- 0074
2734 -- 006E
2735 -- 0064
2736 -- 0072
2737 -- 0064
2738 -- 0074
2739 -- 0068
273a -- 0074
273b -- 0068
273c -- 0074
273d -- 0068
273e -- 0074
273f -- 0068
2740 -- 0074
2741 -- 0068
2742 -- 0074
2743 -- 0068
2744 -- 0074
2745 -- 0068
2746 -- 0074
2747 -- 0068
2748 -- 0074
2749 -- 0068
274a -- 0074
274b -- 0068
274c -- 0074
274d -- 0068
274e -- 0074
274f -- 0068
2750 -- 0074
2751 -- 0068
2752 -- 0074
2753 -- 0068
2754 -- 0074
2755 -- 0068
2756 -- 0074
2757 -- 0068
2758 -- 0074
2759 -- 0068
275a -- 0073
275b -- 0074
275c -- 006E
275d -- 0064
275e -- 0072
275f -- 0064
2760 -- 0074
2761 -- 0068
2762 -- 0074
2763 -- 0068
2764 -- 007B
2765 -- 007C
2766 -- 007D
2767 -- 007E
2768 -- 007F
2769 -- 0080
276a -- 0020
276b -- 0020
276c -- 0081
276d -- 0082
276e -- 0083
276f -- 0084
2770 -- 0085
2771 -- 0086
2772 -- 0020
2773 -- 0020
2774 -- 0087
2775 -- 0088
2776 -- 0089
2777 -- 008A
2778 -- 008B
2779 -- 008C
277a -- 0020
277b -- 0020
277c -- 008D
277d -- 008E
277e -- 008F
277f -- 0090
2780 -- 0091
2781 -- 0092
2782 -- 0020
2783 -- 0020
2784 -- 08E0 7F03                   ld    ext6, 0x7f03
2786 -- 08E0 0018                   ld    ext6, 0x0018
2788 -- 000C                        ld    -, ext4
2789 -- 003C                        ld    a, ext4
278a -- A000                        and   a, -
278b -- 4D50 2789                   bra   z, 0x2789
278d -- 000E                        ld    -, ext6
278e -- 08E0 0018                   ld    ext6, 0x0018
2790 -- 00C0                        ld    ext4, -
2791 -- 08C0 0000                   ld    ext4, 0x0000
2793 -- 0065                        ret
2794 -- 08E0 7F01                   ld    ext6, 0x7f01
2796 -- 08E0 0018                   ld    ext6, 0x0018
2798 -- 00C0                        ld    ext4, -
2799 -- 08C0 0001                   ld    ext4, 0x0001
279b -- 0065                        ret
279c -- 02E3                        ld    ext6, (r3|00)
279d -- 08E0 0818                   ld    ext6, 0x0818
279f -- 00C0                        ld    ext4, -
27a0 -- 0237                        ld    a, (r3|01)
27a1 -- 8800 27AB                   add   a, 0x27ab
27a3 -- 4A10                        ld    x, (a)
27a4 -- 0417                        ld    (r3|01), x
27a5 -- 0A37                        ld    a, ((r3|01)+!)
27a6 -- 00C3                        ld    ext4, a
27a7 -- A000                        and   a, -
27a8 -- 4C50 27A5                   bra   nz, 0x27a5
27aa -- 0065                        ret
27ab -- 27B7
27ac -- 27C2
27ad -- 27CB
27ae -- 27D2
27af -- 27DA
27b0 -- 27E5
27b1 -- 27EE
27b2 -- 27F8
27b3 -- 27FF
27b4 -- 2806
27b5 -- 280F
27b6 -- 2818
27b7 -- 436F
27b8 -- 6D6D
27b9 -- 756E
27ba -- 6963
27bb -- 6174
27bc -- 696F
27bd -- 6E20
27be -- 4572
27bf -- 726F
27c0 -- 7221
27c1 -- 0000
27c2 -- 4452
27c3 -- 414D
27c4 -- 2063
27c5 -- 6C65
27c6 -- 6172
27c7 -- 2063
27c8 -- 6865
27c9 -- 636B
27ca -- 0000
27cb -- 4472
27cc -- 6177
27cd -- 2073
27ce -- 7461
27cf -- 7274
27d0 -- 2000
27d1 -- 0000
27d2 -- 5265
27d3 -- 6164
27d4 -- 2065
27d5 -- 7272
27d6 -- 6F72
27d7 -- 2021
27d8 -- 2120
27d9 -- 0000
27da -- 4C69
27db -- 6E65
27dc -- 206C
27dd -- 656E
27de -- 6774
27df -- 6820
27e0 -- 6F76
27e1 -- 6572
27e2 -- 2021
27e3 -- 2120
27e4 -- 0000
27e5 -- 4361
27e6 -- 6C63
27e7 -- 756C
27e8 -- 6174
27e9 -- 6520
27ea -- 6D61
27eb -- 7472
27ec -- 6978
27ed -- 0000
27ee -- 4D61
27ef -- 6B65
27f0 -- 2070
27f1 -- 6F6C
27f2 -- 7967
27f3 -- 6F6E
27f4 -- 2064
27f5 -- 6174
27f6 -- 6100
27f7 -- 0000
27f8 -- 4472
27f9 -- 6177
27fa -- 2070
27fb -- 6F6C
27fc -- 7967
27fd -- 6F6E
27fe -- 0000
27ff -- 4472
2800 -- 6177
2801 -- 2062
2802 -- 6974
2803 -- 6D61
2804 -- 7000
2805 -- 0000
2806 -- 4453
2807 -- 5020
2808 -- 636F
2809 -- 6D70
280a -- 6C65
280b -- 7465
280c -- 6420
280d -- 2020
280e -- 0000
280f -- 5354
2810 -- 2072
2811 -- 6567
2812 -- 2065
2813 -- 7272
2814 -- 6F72
2815 -- 2021
2816 -- 2120
2817 -- 0000
2818 -- 536F
2819 -- 6674
281a -- 2053
281b -- 5020
281c -- 6572
281d -- 726F
281e -- 7220
281f -- 2121
2820 -- 0000
2821 -- A000                        and   a, -
2822 -- 4D50 2830                   bra   z, 0x2830
2824 -- 6800 3000                   cmp   a, 0x3000
2826 -- 4D50 2830                   bra   z, 0x2830
2828 -- 0C03 7FC0                   ld    (r3|00), 0x7fc0
282a -- 0C07 0003                   ld    (r3|01), 0x0003
282c -- 4800 279C                   call  0x279c
282e -- 4C00 282E                   bra   0x282e
2830 -- 0065                        ret
2831 -- 08E0 8000                   ld    ext6, 0x8000
2833 -- 08E0 0818                   ld    ext6, 0x0818
2835 -- 00C0                        ld    ext4, -
2836 -- 1800                        ld    r0, 0x00
2837 -- 0830 00FF                   ld    a, 0x00ff
2839 -- 02C4                        ld    ext4, (r0+!)
283a -- 3801                        sub   a, 0x01
283b -- 4C70 2839                   bra   ns, 0x2839
283d -- 0830 00FF                   ld    a, 0x00ff
283f -- 1C00                        ld    r4, 0x00
2840 -- 03C4                        ld    ext4, (r4+!)
2841 -- 3801                        sub   a, 0x01
2842 -- 4C70 2840                   bra   ns, 0x2840
2844 -- 0065                        ret

c004 -- 4C00 C200                   bra   0xc200

c200 -- 08E0 00E5                   ld    ext6, 0x00e5
c202 -- 08E0 0800                   ld    ext6, 0x0800
c204 -- 000C                        ld    -, ext4
c205 -- 003C                        ld    a, ext4
c206 -- A800 1C00                   and   a, 0x1c00
c208 -- 0FCB                        ld    B[0xcb], a
c209 -- 0840 0000                   ld    st, 0x0000
c20b -- 0083                        ld    ext0, a
c20c -- 1EF8                        ld    r6, 0xf8
c20d -- 0D02 FFFC                   ld    (r6), 0xfffc
c20f -- 0B32                        ld    a, ((r6)+!)
c210 -- 0B32                        ld    a, ((r6)+!)
c211 -- 0B32                        ld    a, ((r6)+!)
c212 -- 0B32                        ld    a, ((r6)+!)
c213 -- 0830 0000                   ld    a, 0x0000
c215 -- 1430                        ld    r0, a
c216 -- 1431                        ld    r1, a
c217 -- 1432                        ld    r2, a
c218 -- 1530                        ld    r4, a
c219 -- 1531                        ld    r5, a
c21a -- 1EF8                        ld    r6, 0xf8
c21b -- 08E0 83FA                   ld    ext6, 0x83fa
c21d -- 08E0 081C                   ld    ext6, 0x081c
c21f -- 00C0                        ld    ext4, -
c220 -- 0830 0860                   ld    a, 0x0860
c222 -- 00C3                        ld    ext4, a
c223 -- 08C0 C8F6                   ld    ext4, 0xc8f6
c225 -- 00C3                        ld    ext4, a
c226 -- 08C0 C906                   ld    ext4, 0xc906
c228 -- 00C3                        ld    ext4, a
c229 -- 08C0 C912                   ld    ext4, 0xc912
c22b -- 0830 0000                   ld    a, 0x0000
c22d -- 0FF8                        ld    B[0xf8], a
c22e -- 0FF9                        ld    B[0xf9], a
c22f -- 0FFA                        ld    B[0xfa], a
c230 -- 0FFB                        ld    B[0xfb], a
c231 -- 0840 0000                   ld    st, 0x0000
c233 -- 030A                        ld    -, (r6--)
c234 -- 0D02 C238                   ld    (r6), 0xc238
c236 -- 0860 C289                   bra   0xc289
c238 -- 0013                        ld    x, a
c239 -- 0830 FFFF                   ld    a, 0xffff
c23b -- E001                        eor   a, x
c23c -- 4D50 C265                   bra   z, 0xc265
c23e -- 0830 474F                   ld    a, 0x474f
c240 -- E001                        eor   a, x
c241 -- 4D50 C26E                   bra   z, 0xc26e
c243 -- 0830 5356                   ld    a, 0x5356
c245 -- E001                        eor   a, x
c246 -- 4D50 C251                   bra   z, 0xc251
c248 -- 0031                        ld    a, x
c249 -- A800 FF00                   and   a, 0xff00
c24b -- E800 5400                   eor   a, 0x5400
c24d -- 4D50 C255                   bra   z, 0xc255
c24f -- 0860 C233                   bra   0xc233
c251 -- 0830 4F4B                   ld    a, 0x4f4b
c253 -- 0860 C267                   bra   0xc267
c255 -- 0031                        ld    a, x
c256 -- A800 00FF                   and   a, 0x00ff
c258 -- 8003                        add   a, a
c259 -- 8800 C27D                   add   a, 0xc27d
c25b -- 030A                        ld    -, (r6--)
c25c -- 0D02 C25F                   ld    (r6), 0xc25f
c25e -- 0063                        bra   a
c25f -- A800 00FF                   and   a, 0x00ff
c261 -- C800 5300                   or    a, 0x5300
c263 -- 0860 C267                   bra   0xc267
c265 -- 0830 0000                   ld    a, 0x0000
c267 -- 030A                        ld    -, (r6--)
c268 -- 0D02 C26C                   ld    (r6), 0xc26c
c26a -- 0860 C299                   bra   0xc299
c26c -- 0860 C233                   bra   0xc233
c26e -- 0830 4F4B                   ld    a, 0x4f4b
c270 -- 030A                        ld    -, (r6--)
c271 -- 0D02 C275                   ld    (r6), 0xc275
c273 -- 0860 C299                   bra   0xc299
c275 -- 0860 C275                   bra   0xc275
c277 -- 0830 0000                   ld    a, 0x0000
c279 -- 036E                        bra   (r6++)
c27a -- 0830 FFFF                   ld    a, 0xffff
c27c -- 036E                        bra   (r6++)
c27d -- 0860 C5A3                   bra   0xc5a3
c27f -- 0860 C5F2                   bra   0xc5f2
c281 -- 0860 C739                   bra   0xc739
c283 -- 0860 C2A3                   bra   0xc2a3
c285 -- 0860 C7BF                   bra   0xc7bf
c287 -- 0860 C277                   bra   0xc277
c289 -- 030A                        ld    -, (r6--)
c28a -- 0542                        ld    (r6), st
c28b -- 030A                        ld    -, (r6--)
c28c -- 0512                        ld    (r6), x
c28d -- 0840 0000                   ld    st, 0x0000
c28f -- 0038                        ld    a, ext0
c290 -- A800 0002                   and   a, 0x0002
c292 -- 4D50 C28F                   bra   z, 0xc28f
c294 -- 001B                        ld    x, ext3
c295 -- 0031                        ld    a, x
c296 -- 031E                        ld    x, (r6++)
c297 -- 034E                        ld    st, (r6++)
c298 -- 036E                        bra   (r6++)
c299 -- 030A                        ld    -, (r6--)
c29a -- 0532                        ld    (r6), a
c29b -- 0840 0000                   ld    st, 0x0000
c29d -- 0038                        ld    a, ext0
c29e -- E800 0000                   eor   a, 0x0000
c2a0 -- 033E                        ld    a, (r6++)
c2a1 -- 00B3                        ld    ext3, a
c2a2 -- 036E                        bra   (r6++)
c2a3 -- 030A                        ld    -, (r6--)
c2a4 -- 0512                        ld    (r6), x
c2a5 -- 030A                        ld    -, (r6--)
c2a6 -- 0522                        ld    (r6), y
c2a7 -- 030A                        ld    -, (r6--)
c2a8 -- 0542                        ld    (r6), st
c2a9 -- 0840 0060                   ld    st, 0x0060
c2ab -- 0830 0000                   ld    a, 0x0000
c2ad -- 0810 0000                   ld    x, 0x0000
c2af -- 0820 0000                   ld    y, 0x0000
c2b1 -- 08F0 0000                   ld    ext7, 0x0000
c2b3 -- 08E0 8000                   ld    ext6, 0x8000
c2b5 -- 08E0 0018                   ld    ext6, 0x0018
c2b7 -- 0008                        ld    -, ext0
c2b8 -- 08E0 0000                   ld    ext6, 0x0000
c2ba -- 08E0 0418                   ld    ext6, 0x0418
c2bc -- 0080                        ld    ext0, -
c2bd -- 08E0 FFFF                   ld    ext6, 0xffff
c2bf -- 08E0 0418                   ld    ext6, 0x0418
c2c1 -- 0090                        ld    ext1, -
c2c2 -- 08E0 0000                   ld    ext6, 0x0000
c2c4 -- 08E0 0418                   ld    ext6, 0x0418
c2c6 -- 00A0                        ld    ext2, -
c2c7 -- 08E0 FFFF                   ld    ext6, 0xffff
c2c9 -- 08E0 0418                   ld    ext6, 0x0418
c2cb -- 00B0                        ld    ext3, -
c2cc -- 0880 ABCD                   ld    ext0, 0xabcd
c2ce -- 0840 0000                   ld    st, 0x0000
c2d0 -- 0880 0000                   ld    ext0, 0x0000
c2d2 -- 0880 0000                   ld    ext0, 0x0000
c2d4 -- 0840 0060                   ld    st, 0x0060
c2d6 -- 0082                        ld    ext0, y
c2d7 -- 0092                        ld    ext1, y
c2d8 -- 00A2                        ld    ext2, y
c2d9 -- 00B2                        ld    ext3, y
c2da -- 0082                        ld    ext0, y
c2db -- 0092                        ld    ext1, y
c2dc -- 00A2                        ld    ext2, y
c2dd -- 00B2                        ld    ext3, y
c2de -- 0082                        ld    ext0, y
c2df -- 0092                        ld    ext1, y
c2e0 -- 00A2                        ld    ext2, y
c2e1 -- 00B2                        ld    ext3, y
c2e2 -- 0082                        ld    ext0, y
c2e3 -- 0092                        ld    ext1, y
c2e4 -- 00A2                        ld    ext2, y
c2e5 -- 00B2                        ld    ext3, y
c2e6 -- 0082                        ld    ext0, y
c2e7 -- 0092                        ld    ext1, y
c2e8 -- 00A2                        ld    ext2, y
c2e9 -- 00B2                        ld    ext3, y
c2ea -- 0082                        ld    ext0, y
c2eb -- 0092                        ld    ext1, y
c2ec -- 00A2                        ld    ext2, y
c2ed -- 00B2                        ld    ext3, y
c2ee -- 0082                        ld    ext0, y
c2ef -- 0092                        ld    ext1, y
c2f0 -- 00A2                        ld    ext2, y
c2f1 -- 00B2                        ld    ext3, y
c2f2 -- 0082                        ld    ext0, y
c2f3 -- 0092                        ld    ext1, y
c2f4 -- 00A2                        ld    ext2, y
c2f5 -- 00B2                        ld    ext3, y
c2f6 -- 0000                        nop
c2f7 -- 0000                        nop
c2f8 -- 0082                        ld    ext0, y
c2f9 -- 0000                        nop
c2fa -- 0000                        nop
c2fb -- 0092                        ld    ext1, y
c2fc -- 0000                        nop
c2fd -- 0000                        nop
c2fe -- 00A2                        ld    ext2, y
c2ff -- 0000                        nop
c300 -- 0000                        nop
c301 -- 00B2                        ld    ext3, y
c302 -- 0000                        nop
c303 -- 0000                        nop
c304 -- 0082                        ld    ext0, y
c305 -- 0000                        nop
c306 -- 0000                        nop
c307 -- 0092                        ld    ext1, y
c308 -- 0000                        nop
c309 -- 0000                        nop
c30a -- 00A2                        ld    ext2, y
c30b -- 0000                        nop
c30c -- 0000                        nop
c30d -- 00B2                        ld    ext3, y
c30e -- 0000                        nop
c30f -- 0000                        nop
c310 -- 0082                        ld    ext0, y
c311 -- 0000                        nop
c312 -- 0000                        nop
c313 -- 0092                        ld    ext1, y
c314 -- 0000                        nop
c315 -- 0000                        nop
c316 -- 00A2                        ld    ext2, y
c317 -- 0000                        nop
c318 -- 0000                        nop
c319 -- 00B2                        ld    ext3, y
c31a -- 0000                        nop
c31b -- 0000                        nop
c31c -- 0082                        ld    ext0, y
c31d -- 0000                        nop
c31e -- 0000                        nop
c31f -- 0092                        ld    ext1, y
c320 -- 0000                        nop
c321 -- 0000                        nop
c322 -- 00A2                        ld    ext2, y
c323 -- 0000                        nop
c324 -- 0000                        nop
c325 -- 00B2                        ld    ext3, y
c326 -- 0000                        nop
c327 -- 0000                        nop
c328 -- 0000                        nop
c329 -- 0082                        ld    ext0, y
c32a -- 0000                        nop
c32b -- 0000                        nop
c32c -- 0000                        nop
c32d -- 0092                        ld    ext1, y
c32e -- 0000                        nop
c32f -- 0000                        nop
c330 -- 0000                        nop
c331 -- 00A2                        ld    ext2, y
c332 -- 0000                        nop
c333 -- 0000                        nop
c334 -- 0000                        nop
c335 -- 00B2                        ld    ext3, y
c336 -- 0000                        nop
c337 -- 0000                        nop
c338 -- 0000                        nop
c339 -- 0082                        ld    ext0, y
c33a -- 0000                        nop
c33b -- 0000                        nop
c33c -- 0000                        nop
c33d -- 0092                        ld    ext1, y
c33e -- 0000                        nop
c33f -- 0000                        nop
c340 -- 0000                        nop
c341 -- 00A2                        ld    ext2, y
c342 -- 0000                        nop
c343 -- 0000                        nop
c344 -- 0000                        nop
c345 -- 00B2                        ld    ext3, y
c346 -- 0000                        nop
c347 -- 0000                        nop
c348 -- 0000                        nop
c349 -- 0082                        ld    ext0, y
c34a -- 0000                        nop
c34b -- 0000                        nop
c34c -- 0000                        nop
c34d -- 0092                        ld    ext1, y
c34e -- 0000                        nop
c34f -- 0000                        nop
c350 -- 0000                        nop
c351 -- 00A2                        ld    ext2, y
c352 -- 0000                        nop
c353 -- 0000                        nop
c354 -- 0000                        nop
c355 -- 00B2                        ld    ext3, y
c356 -- 0000                        nop
c357 -- 0000                        nop
c358 -- 0000                        nop
c359 -- 0082                        ld    ext0, y
c35a -- 0000                        nop
c35b -- 0000                        nop
c35c -- 0000                        nop
c35d -- 0092                        ld    ext1, y
c35e -- 0000                        nop
c35f -- 0000                        nop
c360 -- 0000                        nop
c361 -- 00A2                        ld    ext2, y
c362 -- 0000                        nop
c363 -- 0000                        nop
c364 -- 0000                        nop
c365 -- 00B2                        ld    ext3, y
c366 -- 0000                        nop
c367 -- 0000                        nop
c368 -- 0000                        nop
c369 -- 0000                        nop
c36a -- 0082                        ld    ext0, y
c36b -- 0000                        nop
c36c -- 0000                        nop
c36d -- 0000                        nop
c36e -- 0000                        nop
c36f -- 0092                        ld    ext1, y
c370 -- 0000                        nop
c371 -- 0000                        nop
c372 -- 0000                        nop
c373 -- 0000                        nop
c374 -- 00A2                        ld    ext2, y
c375 -- 0000                        nop
c376 -- 0000                        nop
c377 -- 0000                        nop
c378 -- 0000                        nop
c379 -- 00B2                        ld    ext3, y
c37a -- 0000                        nop
c37b -- 0000                        nop
c37c -- 0000                        nop
c37d -- 0000                        nop
c37e -- 0082                        ld    ext0, y
c37f -- 0000                        nop
c380 -- 0000                        nop
c381 -- 0000                        nop
c382 -- 0000                        nop
c383 -- 0092                        ld    ext1, y
c384 -- 0000                        nop
c385 -- 0000                        nop
c386 -- 0000                        nop
c387 -- 0000                        nop
c388 -- 00A2                        ld    ext2, y
c389 -- 0000                        nop
c38a -- 0000                        nop
c38b -- 0000                        nop
c38c -- 0000                        nop
c38d -- 00B2                        ld    ext3, y
c38e -- 0000                        nop
c38f -- 0000                        nop
c390 -- 0000                        nop
c391 -- 0000                        nop
c392 -- 0082                        ld    ext0, y
c393 -- 0000                        nop
c394 -- 0000                        nop
c395 -- 0000                        nop
c396 -- 0000                        nop
c397 -- 0092                        ld    ext1, y
c398 -- 0000                        nop
c399 -- 0000                        nop
c39a -- 0000                        nop
c39b -- 0000                        nop
c39c -- 00A2                        ld    ext2, y
c39d -- 0000                        nop
c39e -- 0000                        nop
c39f -- 0000                        nop
c3a0 -- 0000                        nop
c3a1 -- 00B2                        ld    ext3, y
c3a2 -- 0000                        nop
c3a3 -- 0000                        nop
c3a4 -- 0000                        nop
c3a5 -- 0000                        nop
c3a6 -- 0082                        ld    ext0, y
c3a7 -- 0000                        nop
c3a8 -- 0000                        nop
c3a9 -- 0000                        nop
c3aa -- 0000                        nop
c3ab -- 0092                        ld    ext1, y
c3ac -- 0000                        nop
c3ad -- 0000                        nop
c3ae -- 0000                        nop
c3af -- 0000                        nop
c3b0 -- 00A2                        ld    ext2, y
c3b1 -- 0000                        nop
c3b2 -- 0000                        nop
c3b3 -- 0000                        nop
c3b4 -- 0000                        nop
c3b5 -- 00B2                        ld    ext3, y
c3b6 -- 0000                        nop
c3b7 -- 0000                        nop
c3b8 -- 0000                        nop
c3b9 -- 0000                        nop
c3ba -- 0000                        nop
c3bb -- 0082                        ld    ext0, y
c3bc -- 0000                        nop
c3bd -- 0000                        nop
c3be -- 0000                        nop
c3bf -- 0000                        nop
c3c0 -- 0000                        nop
c3c1 -- 0092                        ld    ext1, y
c3c2 -- 0000                        nop
c3c3 -- 0000                        nop
c3c4 -- 0000                        nop
c3c5 -- 0000                        nop
c3c6 -- 0000                        nop
c3c7 -- 00A2                        ld    ext2, y
c3c8 -- 0000                        nop
c3c9 -- 0000                        nop
c3ca -- 0000                        nop
c3cb -- 0000                        nop
c3cc -- 0000                        nop
c3cd -- 00B2                        ld    ext3, y
c3ce -- 0000                        nop
c3cf -- 0000                        nop
c3d0 -- 0000                        nop
c3d1 -- 0000                        nop
c3d2 -- 0000                        nop
c3d3 -- 0082                        ld    ext0, y
c3d4 -- 0000                        nop
c3d5 -- 0000                        nop
c3d6 -- 0000                        nop
c3d7 -- 0000                        nop
c3d8 -- 0000                        nop
c3d9 -- 0092                        ld    ext1, y
c3da -- 0000                        nop
c3db -- 0000                        nop
c3dc -- 0000                        nop
c3dd -- 0000                        nop
c3de -- 0000                        nop
c3df -- 00A2                        ld    ext2, y
c3e0 -- 0000                        nop
c3e1 -- 0000                        nop
c3e2 -- 0000                        nop
c3e3 -- 0000                        nop
c3e4 -- 0000                        nop
c3e5 -- 00B2                        ld    ext3, y
c3e6 -- 0000                        nop
c3e7 -- 0000                        nop
c3e8 -- 0000                        nop
c3e9 -- 0000                        nop
c3ea -- 0000                        nop
c3eb -- 0082                        ld    ext0, y
c3ec -- 0000                        nop
c3ed -- 0000                        nop
c3ee -- 0000                        nop
c3ef -- 0000                        nop
c3f0 -- 0000                        nop
c3f1 -- 0092                        ld    ext1, y
c3f2 -- 0000                        nop
c3f3 -- 0000                        nop
c3f4 -- 0000                        nop
c3f5 -- 0000                        nop
c3f6 -- 0000                        nop
c3f7 -- 00A2                        ld    ext2, y
c3f8 -- 0000                        nop
c3f9 -- 0000                        nop
c3fa -- 0000                        nop
c3fb -- 0000                        nop
c3fc -- 0000                        nop
c3fd -- 00B2                        ld    ext3, y
c3fe -- 0000                        nop
c3ff -- 0000                        nop
c400 -- 0000                        nop
c401 -- 0000                        nop
c402 -- 0000                        nop
c403 -- 0082                        ld    ext0, y
c404 -- 0000                        nop
c405 -- 0000                        nop
c406 -- 0000                        nop
c407 -- 0000                        nop
c408 -- 0000                        nop
c409 -- 0092                        ld    ext1, y
c40a -- 0000                        nop
c40b -- 0000                        nop
c40c -- 0000                        nop
c40d -- 0000                        nop
c40e -- 0000                        nop
c40f -- 00A2                        ld    ext2, y
c410 -- 0000                        nop
c411 -- 0000                        nop
c412 -- 0000                        nop
c413 -- 0000                        nop
c414 -- 0000                        nop
c415 -- 00B2                        ld    ext3, y
c416 -- 0000                        nop
c417 -- 0000                        nop
c418 -- 0000                        nop
c419 -- 0000                        nop
c41a -- 0000                        nop
c41b -- 0000                        nop
c41c -- 0082                        ld    ext0, y
c41d -- 0000                        nop
c41e -- 0000                        nop
c41f -- 0000                        nop
c420 -- 0000                        nop
c421 -- 0000                        nop
c422 -- 0000                        nop
c423 -- 0092                        ld    ext1, y
c424 -- 0000                        nop
c425 -- 0000                        nop
c426 -- 0000                        nop
c427 -- 0000                        nop
c428 -- 0000                        nop
c429 -- 0000                        nop
c42a -- 00A2                        ld    ext2, y
c42b -- 0000                        nop
c42c -- 0000                        nop
c42d -- 0000                        nop
c42e -- 0000                        nop
c42f -- 0000                        nop
c430 -- 0000                        nop
c431 -- 00B2                        ld    ext3, y
c432 -- 0000                        nop
c433 -- 0000                        nop
c434 -- 0000                        nop
c435 -- 0000                        nop
c436 -- 0000                        nop
c437 -- 0000                        nop
c438 -- 0082                        ld    ext0, y
c439 -- 0000                        nop
c43a -- 0000                        nop
c43b -- 0000                        nop
c43c -- 0000                        nop
c43d -- 0000                        nop
c43e -- 0000                        nop
c43f -- 0092                        ld    ext1, y
c440 -- 0000                        nop
c441 -- 0000                        nop
c442 -- 0000                        nop
c443 -- 0000                        nop
c444 -- 0000                        nop
c445 -- 0000                        nop
c446 -- 00A2                        ld    ext2, y
c447 -- 0000                        nop
c448 -- 0000                        nop
c449 -- 0000                        nop
c44a -- 0000                        nop
c44b -- 0000                        nop
c44c -- 0000                        nop
c44d -- 00B2                        ld    ext3, y
c44e -- 0000                        nop
c44f -- 0000                        nop
c450 -- 0000                        nop
c451 -- 0000                        nop
c452 -- 0000                        nop
c453 -- 0000                        nop
c454 -- 0082                        ld    ext0, y
c455 -- 0000                        nop
c456 -- 0000                        nop
c457 -- 0000                        nop
c458 -- 0000                        nop
c459 -- 0000                        nop
c45a -- 0000                        nop
c45b -- 0092                        ld    ext1, y
c45c -- 0000                        nop
c45d -- 0000                        nop
c45e -- 0000                        nop
c45f -- 0000                        nop
c460 -- 0000                        nop
c461 -- 0000                        nop
c462 -- 00A2                        ld    ext2, y
c463 -- 0000                        nop
c464 -- 0000                        nop
c465 -- 0000                        nop
c466 -- 0000                        nop
c467 -- 0000                        nop
c468 -- 0000                        nop
c469 -- 00B2                        ld    ext3, y
c46a -- 0000                        nop
c46b -- 0000                        nop
c46c -- 0000                        nop
c46d -- 0000                        nop
c46e -- 0000                        nop
c46f -- 0000                        nop
c470 -- 0082                        ld    ext0, y
c471 -- 0000                        nop
c472 -- 0000                        nop
c473 -- 0000                        nop
c474 -- 0000                        nop
c475 -- 0000                        nop
c476 -- 0000                        nop
c477 -- 0092                        ld    ext1, y
c478 -- 0000                        nop
c479 -- 0000                        nop
c47a -- 0000                        nop
c47b -- 0000                        nop
c47c -- 0000                        nop
c47d -- 0000                        nop
c47e -- 00A2                        ld    ext2, y
c47f -- 0000                        nop
c480 -- 0000                        nop
c481 -- 0000                        nop
c482 -- 0000                        nop
c483 -- 0000                        nop
c484 -- 0000                        nop
c485 -- 00B2                        ld    ext3, y
c486 -- 0000                        nop
c487 -- 0000                        nop
c488 -- 0000                        nop
c489 -- 0000                        nop
c48a -- 0000                        nop
c48b -- 0000                        nop
c48c -- 0000                        nop
c48d -- 0082                        ld    ext0, y
c48e -- 0000                        nop
c48f -- 0000                        nop
c490 -- 0000                        nop
c491 -- 0000                        nop
c492 -- 0000                        nop
c493 -- 0000                        nop
c494 -- 0000                        nop
c495 -- 0092                        ld    ext1, y
c496 -- 0000                        nop
c497 -- 0000                        nop
c498 -- 0000                        nop
c499 -- 0000                        nop
c49a -- 0000                        nop
c49b -- 0000                        nop
c49c -- 0000                        nop
c49d -- 00A2                        ld    ext2, y
c49e -- 0000                        nop
c49f -- 0000                        nop
c4a0 -- 0000                        nop
c4a1 -- 0000                        nop
c4a2 -- 0000                        nop
c4a3 -- 0000                        nop
c4a4 -- 0000                        nop
c4a5 -- 00B2                        ld    ext3, y
c4a6 -- 0000                        nop
c4a7 -- 0000                        nop
c4a8 -- 0000                        nop
c4a9 -- 0000                        nop
c4aa -- 0000                        nop
c4ab -- 0000                        nop
c4ac -- 0000                        nop
c4ad -- 0082                        ld    ext0, y
c4ae -- 0000                        nop
c4af -- 0000                        nop
c4b0 -- 0000                        nop
c4b1 -- 0000                        nop
c4b2 -- 0000                        nop
c4b3 -- 0000                        nop
c4b4 -- 0000                        nop
c4b5 -- 0092                        ld    ext1, y
c4b6 -- 0000                        nop
c4b7 -- 0000                        nop
c4b8 -- 0000                        nop
c4b9 -- 0000                        nop
c4ba -- 0000                        nop
c4bb -- 0000                        nop
c4bc -- 0000                        nop
c4bd -- 00A2                        ld    ext2, y
c4be -- 0000                        nop
c4bf -- 0000                        nop
c4c0 -- 0000                        nop
c4c1 -- 0000                        nop
c4c2 -- 0000                        nop
c4c3 -- 0000                        nop
c4c4 -- 0000                        nop
c4c5 -- 00B2                        ld    ext3, y
c4c6 -- 0000                        nop
c4c7 -- 0000                        nop
c4c8 -- 0000                        nop
c4c9 -- 0000                        nop
c4ca -- 0000                        nop
c4cb -- 0000                        nop
c4cc -- 0000                        nop
c4cd -- 0082                        ld    ext0, y
c4ce -- 0000                        nop
c4cf -- 0000                        nop
c4d0 -- 0000                        nop
c4d1 -- 0000                        nop
c4d2 -- 0000                        nop
c4d3 -- 0000                        nop
c4d4 -- 0000                        nop
c4d5 -- 0092                        ld    ext1, y
c4d6 -- 0000                        nop
c4d7 -- 0000                        nop
c4d8 -- 0000                        nop
c4d9 -- 0000                        nop
c4da -- 0000                        nop
c4db -- 0000                        nop
c4dc -- 0000                        nop
c4dd -- 00A2                        ld    ext2, y
c4de -- 0000                        nop
c4df -- 0000                        nop
c4e0 -- 0000                        nop
c4e1 -- 0000                        nop
c4e2 -- 0000                        nop
c4e3 -- 0000                        nop
c4e4 -- 0000                        nop
c4e5 -- 00B2                        ld    ext3, y
c4e6 -- 0000                        nop
c4e7 -- 0000                        nop
c4e8 -- 0000                        nop
c4e9 -- 0000                        nop
c4ea -- 0000                        nop
c4eb -- 0000                        nop
c4ec -- 0000                        nop
c4ed -- 0082                        ld    ext0, y
c4ee -- 0000                        nop
c4ef -- 0000                        nop
c4f0 -- 0000                        nop
c4f1 -- 0000                        nop
c4f2 -- 0000                        nop
c4f3 -- 0000                        nop
c4f4 -- 0000                        nop
c4f5 -- 0092                        ld    ext1, y
c4f6 -- 0000                        nop
c4f7 -- 0000                        nop
c4f8 -- 0000                        nop
c4f9 -- 0000                        nop
c4fa -- 0000                        nop
c4fb -- 0000                        nop
c4fc -- 0000                        nop
c4fd -- 00A2                        ld    ext2, y
c4fe -- 0000                        nop
c4ff -- 0000                        nop
c500 -- 0000                        nop
c501 -- 0000                        nop
c502 -- 0000                        nop
c503 -- 0000                        nop
c504 -- 0000                        nop
c505 -- 00B2                        ld    ext3, y
c506 -- 0000                        nop
c507 -- 0000                        nop
c508 -- 0000                        nop
c509 -- 0000                        nop
c50a -- 0000                        nop
c50b -- 0000                        nop
c50c -- 0000                        nop
c50d -- 0000                        nop
c50e -- 0082                        ld    ext0, y
c50f -- 0000                        nop
c510 -- 0000                        nop
c511 -- 0000                        nop
c512 -- 0000                        nop
c513 -- 0000                        nop
c514 -- 0000                        nop
c515 -- 0000                        nop
c516 -- 0000                        nop
c517 -- 0092                        ld    ext1, y
c518 -- 0000                        nop
c519 -- 0000                        nop
c51a -- 0000                        nop
c51b -- 0000                        nop
c51c -- 0000                        nop
c51d -- 0000                        nop
c51e -- 0000                        nop
c51f -- 0000                        nop
c520 -- 00A2                        ld    ext2, y
c521 -- 0000                        nop
c522 -- 0000                        nop
c523 -- 0000                        nop
c524 -- 0000                        nop
c525 -- 0000                        nop
c526 -- 0000                        nop
c527 -- 0000                        nop
c528 -- 0000                        nop
c529 -- 00B2                        ld    ext3, y
c52a -- 0000                        nop
c52b -- 0000                        nop
c52c -- 0000                        nop
c52d -- 0000                        nop
c52e -- 0000                        nop
c52f -- 0000                        nop
c530 -- 0000                        nop
c531 -- 0000                        nop
c532 -- 0082                        ld    ext0, y
c533 -- 0000                        nop
c534 -- 0000                        nop
c535 -- 0000                        nop
c536 -- 0000                        nop
c537 -- 0000                        nop
c538 -- 0000                        nop
c539 -- 0000                        nop
c53a -- 0000                        nop
c53b -- 0092                        ld    ext1, y
c53c -- 0000                        nop
c53d -- 0000                        nop
c53e -- 0000                        nop
c53f -- 0000                        nop
c540 -- 0000                        nop
c541 -- 0000                        nop
c542 -- 0000                        nop
c543 -- 0000                        nop
c544 -- 00A2                        ld    ext2, y
c545 -- 0000                        nop
c546 -- 0000                        nop
c547 -- 0000                        nop
c548 -- 0000                        nop
c549 -- 0000                        nop
c54a -- 0000                        nop
c54b -- 0000                        nop
c54c -- 0000                        nop
c54d -- 00B2                        ld    ext3, y
c54e -- 0000                        nop
c54f -- 0000                        nop
c550 -- 0000                        nop
c551 -- 0000                        nop
c552 -- 0000                        nop
c553 -- 0000                        nop
c554 -- 0000                        nop
c555 -- 0000                        nop
c556 -- 0082                        ld    ext0, y
c557 -- 0000                        nop
c558 -- 0000                        nop
c559 -- 0000                        nop
c55a -- 0000                        nop
c55b -- 0000                        nop
c55c -- 0000                        nop
c55d -- 0000                        nop
c55e -- 0000                        nop
c55f -- 0092                        ld    ext1, y
c560 -- 0000                        nop
c561 -- 0000                        nop
c562 -- 0000                        nop
c563 -- 0000                        nop
c564 -- 0000                        nop
c565 -- 0000                        nop
c566 -- 0000                        nop
c567 -- 0000                        nop
c568 -- 00A2                        ld    ext2, y
c569 -- 0000                        nop
c56a -- 0000                        nop
c56b -- 0000                        nop
c56c -- 0000                        nop
c56d -- 0000                        nop
c56e -- 0000                        nop
c56f -- 0000                        nop
c570 -- 0000                        nop
c571 -- 00B2                        ld    ext3, y
c572 -- 0000                        nop
c573 -- 0000                        nop
c574 -- 0000                        nop
c575 -- 0000                        nop
c576 -- 0000                        nop
c577 -- 0000                        nop
c578 -- 0000                        nop
c579 -- 0000                        nop
c57a -- 0082                        ld    ext0, y
c57b -- 0000                        nop
c57c -- 0000                        nop
c57d -- 0000                        nop
c57e -- 0000                        nop
c57f -- 0000                        nop
c580 -- 0000                        nop
c581 -- 0000                        nop
c582 -- 0000                        nop
c583 -- 0092                        ld    ext1, y
c584 -- 0000                        nop
c585 -- 0000                        nop
c586 -- 0000                        nop
c587 -- 0000                        nop
c588 -- 0000                        nop
c589 -- 0000                        nop
c58a -- 0000                        nop
c58b -- 0000                        nop
c58c -- 00A2                        ld    ext2, y
c58d -- 0000                        nop
c58e -- 0000                        nop
c58f -- 0000                        nop
c590 -- 0000                        nop
c591 -- 0000                        nop
c592 -- 0000                        nop
c593 -- 0000                        nop
c594 -- 0000                        nop
c595 -- 00B2                        ld    ext3, y
c596 -- 0038                        ld    a, ext0
c597 -- E800 EEEE                   eor   a, 0xeeee
c599 -- 4D50 C59D                   bra   z, 0xc59d
c59b -- 4C00 C2CE                   bra   0xc2ce
c59d -- 034E                        ld    st, (r6++)
c59e -- 032E                        ld    y, (r6++)
c59f -- 031E                        ld    x, (r6++)
c5a0 -- 0830 0001                   ld    a, 0x0001
c5a2 -- 036E                        bra   (r6++)
c5a3 -- 0830 C5A7                   ld    a, 0xc5a7
c5a5 -- 0860 C8DA                   bra   0xc8da
c5a7 -- C5AA
c5a8 -- 0048
c5a9 -- 0000
c5aa -- 030A                        ld    -, (r6--)
c5ab -- 0512                        ld    (r6), x
c5ac -- 030A                        ld    -, (r6--)
c5ad -- 0522                        ld    (r6), y
c5ae -- 030A                        ld    -, (r6--)
c5af -- 0542                        ld    (r6), st
c5b0 -- 0840 0060                   ld    st, 0x0060
c5b2 -- 0810 000A                   ld    x, 0x000a
c5b4 -- 030A                        ld    -, (r6--)
c5b5 -- 0512                        ld    (r6), x
c5b6 -- 030A                        ld    -, (r6--)
c5b7 -- 0D02 0011                   ld    (r6), 0x0011
c5b9 -- 0860 0028                   bra   0x0028
c5bb -- E800 0001                   eor   a, 0x0001
c5bd -- 4C50 0021                   bra   nz, 0x0021
c5bf -- 033E                        ld    a, (r6++)
c5c0 -- 2800 0001                   sub   a, 0x0001
c5c2 -- 0013                        ld    x, a
c5c3 -- 4C50 000A                   bra   nz, 0x000a
c5c5 -- 034E                        ld    st, (r6++)
c5c6 -- 032E                        ld    y, (r6++)
c5c7 -- 031E                        ld    x, (r6++)
c5c8 -- 0830 0001                   ld    a, 0x0001
c5ca -- 036E                        bra   (r6++)
c5cb -- 031E                        ld    x, (r6++)
c5cc -- 034E                        ld    st, (r6++)
c5cd -- 032E                        ld    y, (r6++)
c5ce -- 031E                        ld    x, (r6++)
c5cf -- 0830 0002                   ld    a, 0x0002
c5d1 -- 036E                        bra   (r6++)
c5d2 -- 1800                        ld    r0, 0x00
c5d3 -- 0C00 0400                   ld    (r0), 0x0400
c5d5 -- 08E0 0400                   ld    ext6, 0x0400
c5d7 -- 08E0 0800                   ld    ext6, 0x0800
c5d9 -- 0009                        ld    -, ext1
c5da -- 0810 7C00                   ld    x, 0x7c00
c5dc -- 08F0 0000                   ld    ext7, 0x0000
c5de -- 0039                        ld    a, ext1
c5df -- EA00                        eor   a, ((r0)+!)
c5e0 -- 4C50 0045                   bra   nz, 0x0045
c5e2 -- 0039                        ld    a, ext1
c5e3 -- EA00                        eor   a, ((r0)+!)
c5e4 -- 4C50 0045                   bra   nz, 0x0045
c5e6 -- 0031                        ld    a, x
c5e7 -- 2800 0001                   sub   a, 0x0001
c5e9 -- 0013                        ld    x, a
c5ea -- 4C50 0034                   bra   nz, 0x0034
c5ec -- 0830 0001                   ld    a, 0x0001
c5ee -- 036E                        bra   (r6++)
c5ef -- 0830 0002                   ld    a, 0x0002
c5f1 -- 036E                        bra   (r6++)
c5f2 -- 0830 C5F6                   ld    a, 0xc5f6
c5f4 -- 0860 C8DA                   bra   0xc8da
c5f6 -- C5F9
c5f7 -- 0140
c5f8 -- 0000
c5f9 -- 030A                        ld    -, (r6--)
c5fa -- 0512                        ld    (r6), x
c5fb -- 030A                        ld    -, (r6--)
c5fc -- 0522                        ld    (r6), y
c5fd -- 030A                        ld    -, (r6--)
c5fe -- 0542                        ld    (r6), st
c5ff -- 0840 0060                   ld    st, 0x0060
c601 -- 0810 0004                   ld    x, 0x0004
c603 -- 030A                        ld    -, (r6--)
c604 -- 0512                        ld    (r6), x
c605 -- 030A                        ld    -, (r6--)
c606 -- 0D02 0011                   ld    (r6), 0x0011
c608 -- 0860 0032                   bra   0x0032
c60a -- E800 0001                   eor   a, 0x0001
c60c -- 4C50 0026                   bra   nz, 0x0026
c60e -- 033E                        ld    a, (r6++)
c60f -- 2800 0001                   sub   a, 0x0001
c611 -- 0013                        ld    x, a
c612 -- 4C50 000A                   bra   nz, 0x000a
c614 -- 030A                        ld    -, (r6--)
c615 -- 0D02 0020                   ld    (r6), 0x0020
c617 -- 0860 0127                   bra   0x0127
c619 -- 034E                        ld    st, (r6++)
c61a -- 032E                        ld    y, (r6++)
c61b -- 031E                        ld    x, (r6++)
c61c -- 0830 0001                   ld    a, 0x0001
c61e -- 036E                        bra   (r6++)
c61f -- 031E                        ld    x, (r6++)
c620 -- 030A                        ld    -, (r6--)
c621 -- 0D02 002C                   ld    (r6), 0x002c
c623 -- 0860 0127                   bra   0x0127
c625 -- 034E                        ld    st, (r6++)
c626 -- 032E                        ld    y, (r6++)
c627 -- 031E                        ld    x, (r6++)
c628 -- 0830 0002                   ld    a, 0x0002
c62a -- 036E                        bra   (r6++)
c62b -- 030A                        ld    -, (r6--)
c62c -- 0D02 0037                   ld    (r6), 0x0037
c62e -- 0860 0127                   bra   0x0127
c630 -- 08E0 0000                   ld    ext6, 0x0000
c632 -- 08E0 0818                   ld    ext6, 0x0818
c634 -- 0009                        ld    -, ext1
c635 -- 0810 4000                   ld    x, 0x4000
c637 -- 08F0 0000                   ld    ext7, 0x0000
c639 -- 0820 0004                   ld    y, 0x0004
c63b -- 0039                        ld    a, ext1
c63c -- E800 0000                   eor   a, 0x0000
c63e -- 4C50 0124                   bra   nz, 0x0124
c640 -- 0032                        ld    a, y
c641 -- 2800 0001                   sub   a, 0x0001
c643 -- 0023                        ld    y, a
c644 -- 4C50 0042                   bra   nz, 0x0042
c646 -- 0031                        ld    a, x
c647 -- 2800 0001                   sub   a, 0x0001
c649 -- 0013                        ld    x, a
c64a -- 4C50 0040                   bra   nz, 0x0040
c64c -- 08E0 0002                   ld    ext6, 0x0002
c64e -- 08E0 0800                   ld    ext6, 0x0800
c650 -- 0008                        ld    -, ext0
c651 -- 08E0 0002                   ld    ext6, 0x0002
c653 -- 08E0 0818                   ld    ext6, 0x0818
c655 -- 0080                        ld    ext0, -
c656 -- 0810 3FFE                   ld    x, 0x3ffe
c658 -- 08F0 0000                   ld    ext7, 0x0000
c65a -- 0820 0004                   ld    y, 0x0004
c65c -- 0038                        ld    a, ext0
c65d -- 0083                        ld    ext0, a
c65e -- 0032                        ld    a, y
c65f -- 2800 0001                   sub   a, 0x0001
c661 -- 0023                        ld    y, a
c662 -- 4C50 0063                   bra   nz, 0x0063
c664 -- 0031                        ld    a, x
c665 -- 2800 0001                   sub   a, 0x0001
c667 -- 0013                        ld    x, a
c668 -- 4C50 0061                   bra   nz, 0x0061
c66a -- 08E0 0002                   ld    ext6, 0x0002
c66c -- 08E0 0818                   ld    ext6, 0x0818
c66e -- 0008                        ld    -, ext0
c66f -- 08E0 0002                   ld    ext6, 0x0002
c671 -- 08E0 0800                   ld    ext6, 0x0800
c673 -- 0009                        ld    -, ext1
c674 -- 0810 3FFE                   ld    x, 0x3ffe
c676 -- 08F0 0000                   ld    ext7, 0x0000
c678 -- 0820 0004                   ld    y, 0x0004
c67a -- 0039                        ld    a, ext1
c67b -- E008                        eor   a, ext0
c67c -- 4C50 0124                   bra   nz, 0x0124
c67e -- 0032                        ld    a, y
c67f -- 2800 0001                   sub   a, 0x0001
c681 -- 0023                        ld    y, a
c682 -- 4C50 0081                   bra   nz, 0x0081
c684 -- 0031                        ld    a, x
c685 -- 2800 0001                   sub   a, 0x0001
c687 -- 0013                        ld    x, a
c688 -- 4C50 007F                   bra   nz, 0x007f
c68a -- 08E0 0002                   ld    ext6, 0x0002
c68c -- 08E0 0818                   ld    ext6, 0x0818
c68e -- 0080                        ld    ext0, -
c68f -- 0810 2AA8                   ld    x, 0x2aa8
c691 -- 08F0 0000                   ld    ext7, 0x0000
c693 -- 0880 000F                   ld    ext0, 0x000f
c695 -- 0880 00FF                   ld    ext0, 0x00ff
c697 -- 0880 00F0                   ld    ext0, 0x00f0
c699 -- 0880 0FF0                   ld    ext0, 0x0ff0
c69b -- 0880 0F00                   ld    ext0, 0x0f00
c69d -- 0880 0F0F                   ld    ext0, 0x0f0f
c69f -- 0031                        ld    a, x
c6a0 -- 2800 0001                   sub   a, 0x0001
c6a2 -- 0013                        ld    x, a
c6a3 -- 4C50 009A                   bra   nz, 0x009a
c6a5 -- 08E0 0002                   ld    ext6, 0x0002
c6a7 -- 08E0 0818                   ld    ext6, 0x0818
c6a9 -- 0008                        ld    -, ext0
c6aa -- 0810 2AA8                   ld    x, 0x2aa8
c6ac -- 08F0 0000                   ld    ext7, 0x0000
c6ae -- 0038                        ld    a, ext0
c6af -- E800 000F                   eor   a, 0x000f
c6b1 -- 4C50 0124                   bra   nz, 0x0124
c6b3 -- 0038                        ld    a, ext0
c6b4 -- E800 00FF                   eor   a, 0x00ff
c6b6 -- 4C50 0124                   bra   nz, 0x0124
c6b8 -- 0038                        ld    a, ext0
c6b9 -- E800 00F0                   eor   a, 0x00f0
c6bb -- 4C50 0124                   bra   nz, 0x0124
c6bd -- 0038                        ld    a, ext0
c6be -- E800 0FF0                   eor   a, 0x0ff0
c6c0 -- 4C50 0124                   bra   nz, 0x0124
c6c2 -- 0038                        ld    a, ext0
c6c3 -- E800 0F00                   eor   a, 0x0f00
c6c5 -- 4C50 0124                   bra   nz, 0x0124
c6c7 -- 0038                        ld    a, ext0
c6c8 -- E800 0F0F                   eor   a, 0x0f0f
c6ca -- 4C50 0124                   bra   nz, 0x0124
c6cc -- 0031                        ld    a, x
c6cd -- 2800 0001                   sub   a, 0x0001
c6cf -- 0013                        ld    x, a
c6d0 -- 4C50 00B5                   bra   nz, 0x00b5
c6d2 -- 08E0 0002                   ld    ext6, 0x0002
c6d4 -- 08E0 0C18                   ld    ext6, 0x0c18
c6d6 -- 0080                        ld    ext0, -
c6d7 -- 0810 2AA8                   ld    x, 0x2aa8
c6d9 -- 08F0 0000                   ld    ext7, 0x0000
c6db -- 0880 000F                   ld    ext0, 0x000f
c6dd -- 0880 00FF                   ld    ext0, 0x00ff
c6df -- 0880 00F0                   ld    ext0, 0x00f0
c6e1 -- 0880 0FF0                   ld    ext0, 0x0ff0
c6e3 -- 0880 0F00                   ld    ext0, 0x0f00
c6e5 -- 0880 0F0F                   ld    ext0, 0x0f0f
c6e7 -- 0031                        ld    a, x
c6e8 -- 2800 0001                   sub   a, 0x0001
c6ea -- 0013                        ld    x, a
c6eb -- 4C50 00E2                   bra   nz, 0x00e2
c6ed -- 08E0 0002                   ld    ext6, 0x0002
c6ef -- 08E0 0818                   ld    ext6, 0x0818
c6f1 -- 0008                        ld    -, ext0
c6f2 -- 0810 2AA8                   ld    x, 0x2aa8
c6f4 -- 08F0 0000                   ld    ext7, 0x0000
c6f6 -- 0038                        ld    a, ext0
c6f7 -- E800 000F                   eor   a, 0x000f
c6f9 -- 4C50 0124                   bra   nz, 0x0124
c6fb -- 0038                        ld    a, ext0
c6fc -- E800 00FF                   eor   a, 0x00ff
c6fe -- 4C50 0124                   bra   nz, 0x0124
c700 -- 0038                        ld    a, ext0
c701 -- E800 00F0                   eor   a, 0x00f0
c703 -- 4C50 0124                   bra   nz, 0x0124
c705 -- 0038                        ld    a, ext0
c706 -- E800 0FF0                   eor   a, 0x0ff0
c708 -- 4C50 0124                   bra   nz, 0x0124
c70a -- 0038                        ld    a, ext0
c70b -- E800 0F00                   eor   a, 0x0f00
c70d -- 4C50 0124                   bra   nz, 0x0124
c70f -- 0038                        ld    a, ext0
c710 -- E800 0F0F                   eor   a, 0x0f0f
c712 -- 4C50 0124                   bra   nz, 0x0124
c714 -- 0031                        ld    a, x
c715 -- 2800 0001                   sub   a, 0x0001
c717 -- 0013                        ld    x, a
c718 -- 4C50 00FD                   bra   nz, 0x00fd
c71a -- 0830 0001                   ld    a, 0x0001
c71c -- 036E                        bra   (r6++)
c71d -- 0830 0002                   ld    a, 0x0002
c71f -- 036E                        bra   (r6++)
c720 -- 030A                        ld    -, (r6--)
c721 -- 0512                        ld    (r6), x
c722 -- 08E0 0000                   ld    ext6, 0x0000
c724 -- 08E0 0818                   ld    ext6, 0x0818
c726 -- 00C0                        ld    ext4, -
c727 -- 0830 4000                   ld    a, 0x4000
c729 -- 08F0 0000                   ld    ext7, 0x0000
c72b -- 0810 0000                   ld    x, 0x0000
c72d -- 00C1                        ld    ext4, x
c72e -- 00C1                        ld    ext4, x
c72f -- 00C1                        ld    ext4, x
c730 -- 00C1                        ld    ext4, x
c731 -- 2800 0001                   sub   a, 0x0001
c733 -- 4C50 0134                   bra   nz, 0x0134
c735 -- 0830 0000                   ld    a, 0x0000
c737 -- 031E                        ld    x, (r6++)
c738 -- 036E                        bra   (r6++)
c739 -- 0840 0060                   ld    st, 0x0060
c73b -- 0820 0100                   ld    y, 0x0100
c73d -- 08E0 0000                   ld    ext6, 0x0000
c73f -- 08E0 0800                   ld    ext6, 0x0800
c741 -- 000C                        ld    -, ext4
c742 -- 08E0 8000                   ld    ext6, 0x8000
c744 -- 08E0 081C                   ld    ext6, 0x081c
c746 -- 00C0                        ld    ext4, -
c747 -- 0830 03F8                   ld    a, 0x03f8
c749 -- 08F0 0000                   ld    ext7, 0x0000
c74b -- 001C                        ld    x, ext4
c74c -- 00C1                        ld    ext4, x
c74d -- 2800 0001                   sub   a, 0x0001
c74f -- 4C50 C74B                   bra   nz, 0xc74b
c751 -- 1800                        ld    r0, 0x00
c752 -- 0C00 0000                   ld    (r0), 0x0000
c754 -- 0810 03F8                   ld    x, 0x03f8
c756 -- 08E0 0000                   ld    ext6, 0x0000
c758 -- 08E0 0800                   ld    ext6, 0x0800
c75a -- 000C                        ld    -, ext4
c75b -- 003C                        ld    a, ext4
c75c -- EA00                        eor   a, ((r0)+!)
c75d -- 4C50 C78C                   bra   nz, 0xc78c
c75f -- 0031                        ld    a, x
c760 -- 2800 0001                   sub   a, 0x0001
c762 -- 0013                        ld    x, a
c763 -- 4C50 C75B                   bra   nz, 0xc75b
c765 -- 1800                        ld    r0, 0x00
c766 -- 0C00 C78F                   ld    (r0), 0xc78f
c768 -- 08E0 8300                   ld    ext6, 0x8300
c76a -- 08E0 081C                   ld    ext6, 0x081c
c76c -- 00C0                        ld    ext4, -
c76d -- 08F0 0000                   ld    ext7, 0x0000
c76f -- 0810 0080                   ld    x, 0x0080
c771 -- 0A30                        ld    a, ((r0)+!)
c772 -- 00C3                        ld    ext4, a
c773 -- 0031                        ld    a, x
c774 -- 2800 0001                   sub   a, 0x0001
c776 -- 0013                        ld    x, a
c777 -- 4C50 C771                   bra   nz, 0xc771
c779 -- 1800                        ld    r0, 0x00
c77a -- 030A                        ld    -, (r6--)
c77b -- 0D02 C77F                   ld    (r6), 0xc77f
c77d -- 0860 0300                   bra   0x0300
c77f -- 6800 0000                   cmp   a, 0x0000
c781 -- 4C50 C78C                   bra   nz, 0xc78c
c783 -- 0032                        ld    a, y
c784 -- 2800 0001                   sub   a, 0x0001
c786 -- 0023                        ld    y, a
c787 -- 4C50 C73D                   bra   nz, 0xc73d
c789 -- 0830 0001                   ld    a, 0x0001
c78b -- 036E                        bra   (r6++)
c78c -- 0830 0002                   ld    a, 0x0002
c78e -- 036E                        bra   (r6++)
c78f -- 08E0 0000                   ld    ext6, 0x0000
c791 -- 08E0 0800                   ld    ext6, 0x0800
c793 -- 000C                        ld    -, ext4
c794 -- 08E0 8000                   ld    ext6, 0x8000
c796 -- 08E0 081C                   ld    ext6, 0x081c
c798 -- 00C0                        ld    ext4, -
c799 -- 0830 0300                   ld    a, 0x0300
c79b -- 08F0 0000                   ld    ext7, 0x0000
c79d -- 001C                        ld    x, ext4
c79e -- 00C1                        ld    ext4, x
c79f -- 2800 0001                   sub   a, 0x0001
c7a1 -- 4C50 030E                   bra   nz, 0x030e
c7a3 -- 1800                        ld    r0, 0x00
c7a4 -- 0C00 0000                   ld    (r0), 0x0000
c7a6 -- 0810 0300                   ld    x, 0x0300
c7a8 -- 08E0 0000                   ld    ext6, 0x0000
c7aa -- 08E0 0800                   ld    ext6, 0x0800
c7ac -- 000C                        ld    -, ext4
c7ad -- 003C                        ld    a, ext4
c7ae -- EA00                        eor   a, ((r0)+!)
c7af -- 4C50 032C                   bra   nz, 0x032c
c7b1 -- 0031                        ld    a, x
c7b2 -- 2800 0001                   sub   a, 0x0001
c7b4 -- 0013                        ld    x, a
c7b5 -- 4C50 031E                   bra   nz, 0x031e
c7b7 -- 0830 0000                   ld    a, 0x0000
c7b9 -- 036E                        bra   (r6++)
c7ba -- 036E                        bra   (r6++)
c7bb -- 0830 FFFF                   ld    a, 0xffff
c7bd -- 036E                        bra   (r6++)
c7be -- 036E                        bra   (r6++)
c7bf -- 0830 C7C3                   ld    a, 0xc7c3
c7c1 -- 0860 C8DA                   bra   0xc8da
c7c3 -- C7C6
c7c4 -- 0114
c7c5 -- 0000
c7c6 -- 030A                        ld    -, (r6--)
c7c7 -- 0512                        ld    (r6), x
c7c8 -- 030A                        ld    -, (r6--)
c7c9 -- 0522                        ld    (r6), y
c7ca -- 030A                        ld    -, (r6--)
c7cb -- 0542                        ld    (r6), st
c7cc -- 0840 0060                   ld    st, 0x0060
c7ce -- 0810 000A                   ld    x, 0x000a
c7d0 -- 030A                        ld    -, (r6--)
c7d1 -- 0512                        ld    (r6), x
c7d2 -- 030A                        ld    -, (r6--)
c7d3 -- 0D02 0011                   ld    (r6), 0x0011
c7d5 -- 0860 0028                   bra   0x0028
c7d7 -- E800 0001                   eor   a, 0x0001
c7d9 -- 4C50 0021                   bra   nz, 0x0021
c7db -- 033E                        ld    a, (r6++)
c7dc -- 2800 0001                   sub   a, 0x0001
c7de -- 0013                        ld    x, a
c7df -- 4C50 000A                   bra   nz, 0x000a
c7e1 -- 034E                        ld    st, (r6++)
c7e2 -- 032E                        ld    y, (r6++)
c7e3 -- 031E                        ld    x, (r6++)
c7e4 -- 0830 0001                   ld    a, 0x0001
c7e6 -- 036E                        bra   (r6++)
c7e7 -- 031E                        ld    x, (r6++)
c7e8 -- 034E                        ld    st, (r6++)
c7e9 -- 032E                        ld    y, (r6++)
c7ea -- 031E                        ld    x, (r6++)
c7eb -- 0830 0002                   ld    a, 0x0002
c7ed -- 036E                        bra   (r6++)
c7ee -- 1800                        ld    r0, 0x00
c7ef -- 1910                        ld    r1, 0x10
c7f0 -- 1A20                        ld    r2, 0x20
c7f1 -- 1C00                        ld    r4, 0x00
c7f2 -- 1D10                        ld    r5, 0x10
c7f3 -- 0C00 0400                   ld    (r0), 0x0400
c7f5 -- 0C01 0400                   ld    (r1), 0x0400
c7f7 -- 0C02 0400                   ld    (r2), 0x0400
c7f9 -- 0D00 0400                   ld    (r4), 0x0400
c7fb -- 0D01 0400                   ld    (r5), 0x0400
c7fd -- 08E0 0400                   ld    ext6, 0x0400
c7ff -- 08E0 0800                   ld    ext6, 0x0800
c801 -- 0009                        ld    -, ext1
c802 -- 0810 F7FF                   ld    x, 0xf7ff
c804 -- 08F0 0000                   ld    ext7, 0x0000
c806 -- 0029                        ld    y, ext1
c807 -- 0032                        ld    a, y
c808 -- EA00                        eor   a, ((r0)+!)
c809 -- 4C50 0111                   bra   nz, 0x0111
c80b -- 0032                        ld    a, y
c80c -- EA01                        eor   a, ((r1)+!)
c80d -- 4C50 0111                   bra   nz, 0x0111
c80f -- 0032                        ld    a, y
c810 -- EA02                        eor   a, ((r2)+!)
c811 -- 4C50 0111                   bra   nz, 0x0111
c813 -- 0032                        ld    a, y
c814 -- EB00                        eor   a, ((r4)+!)
c815 -- 4C50 0111                   bra   nz, 0x0111
c817 -- 0032                        ld    a, y
c818 -- EB01                        eor   a, ((r5)+!)
c819 -- 4C50 0111                   bra   nz, 0x0111
c81b -- 0031                        ld    a, x
c81c -- 2800 0001                   sub   a, 0x0001
c81e -- 0013                        ld    x, a
c81f -- 4C50 0040                   bra   nz, 0x0040
c821 -- 1800                        ld    r0, 0x00
c822 -- 1332                        ld    a, r6
c823 -- 0430                        ld    (r0), a
c824 -- 1E20                        ld    r6, 0x20
c825 -- 0D02 0400                   ld    (r6), 0x0400
c827 -- 08E0 0400                   ld    ext6, 0x0400
c829 -- 08E0 0800                   ld    ext6, 0x0800
c82b -- 0009                        ld    -, ext1
c82c -- 0810 F7FF                   ld    x, 0xf7ff
c82e -- 08F0 0000                   ld    ext7, 0x0000
c830 -- 0039                        ld    a, ext1
c831 -- EB02                        eor   a, ((r6)+!)
c832 -- 4D50 0072                   bra   z, 0x0072
c834 -- 0230                        ld    a, (r0)
c835 -- 1532                        ld    r6, a
c836 -- 4C00 0111                   bra   0x0111
c838 -- 0031                        ld    a, x
c839 -- 2800 0001                   sub   a, 0x0001
c83b -- 0013                        ld    x, a
c83c -- 4C50 006A                   bra   nz, 0x006a
c83e -- 0230                        ld    a, (r0)
c83f -- 1532                        ld    r6, a
c840 -- 08E0 8000                   ld    ext6, 0x8000
c842 -- 08E0 0818                   ld    ext6, 0x0818
c844 -- 0090                        ld    ext1, -
c845 -- 08E0 8000                   ld    ext6, 0x8000
c847 -- 08E0 0818                   ld    ext6, 0x0818
c849 -- 0009                        ld    -, ext1
c84a -- 1C00                        ld    r4, 0x00
c84b -- 0810 0100                   ld    x, 0x0100
c84d -- 08F0 0000                   ld    ext7, 0x0000
c84f -- 033C                        ld    a, (r4++)
c850 -- 0093                        ld    ext1, a
c851 -- 0031                        ld    a, x
c852 -- 2800 0001                   sub   a, 0x0001
c854 -- 0013                        ld    x, a
c855 -- 4C50 0089                   bra   nz, 0x0089
c857 -- 1392                        ld    ext1, r6
c858 -- 08E0 0000                   ld    ext6, 0x0000
c85a -- 08E0 0800                   ld    ext6, 0x0800
c85c -- 0008                        ld    -, ext0
c85d -- 1800                        ld    r0, 0x00
c85e -- 1C00                        ld    r4, 0x00
c85f -- 0810 0100                   ld    x, 0x0100
c861 -- 08F0 0000                   ld    ext7, 0x0000
c863 -- 0038                        ld    a, ext0
c864 -- 0434                        ld    (r0+!), a
c865 -- 0534                        ld    (r4+!), a
c866 -- 0031                        ld    a, x
c867 -- 2800 0001                   sub   a, 0x0001
c869 -- 0013                        ld    x, a
c86a -- 4C50 009D                   bra   nz, 0x009d
c86c -- 0810 0100                   ld    x, 0x0100
c86e -- 0234                        ld    a, (r0+!)
c86f -- E304                        eor   a, (r4+!)
c870 -- 4C50 0103                   bra   nz, 0x0103
c872 -- 0031                        ld    a, x
c873 -- 2800 0001                   sub   a, 0x0001
c875 -- 0013                        ld    x, a
c876 -- 4C50 00A8                   bra   nz, 0x00a8
c878 -- 08E0 1000                   ld    ext6, 0x1000
c87a -- 08E0 0800                   ld    ext6, 0x0800
c87c -- 0008                        ld    -, ext0
c87d -- 1900                        ld    r1, 0x00
c87e -- 1D00                        ld    r5, 0x00
c87f -- 0810 0100                   ld    x, 0x0100
c881 -- 08F0 0000                   ld    ext7, 0x0000
c883 -- 0038                        ld    a, ext0
c884 -- 0435                        ld    (r1+!), a
c885 -- 0535                        ld    (r5+!), a
c886 -- 0031                        ld    a, x
c887 -- 2800 0001                   sub   a, 0x0001
c889 -- 0013                        ld    x, a
c88a -- 4C50 00BD                   bra   nz, 0x00bd
c88c -- 0810 0100                   ld    x, 0x0100
c88e -- 0235                        ld    a, (r1+!)
c88f -- E305                        eor   a, (r5+!)
c890 -- 4C50 0103                   bra   nz, 0x0103
c892 -- 0031                        ld    a, x
c893 -- 2800 0001                   sub   a, 0x0001
c895 -- 0013                        ld    x, a
c896 -- 4C50 00C8                   bra   nz, 0x00c8
c898 -- 08E0 2000                   ld    ext6, 0x2000
c89a -- 08E0 0800                   ld    ext6, 0x0800
c89c -- 0008                        ld    -, ext0
c89d -- 1A00                        ld    r2, 0x00
c89e -- 1E00                        ld    r6, 0x00
c89f -- 0810 0100                   ld    x, 0x0100
c8a1 -- 08F0 0000                   ld    ext7, 0x0000
c8a3 -- 0038                        ld    a, ext0
c8a4 -- 0436                        ld    (r2+!), a
c8a5 -- 0536                        ld    (r6+!), a
c8a6 -- 0031                        ld    a, x
c8a7 -- 2800 0001                   sub   a, 0x0001
c8a9 -- 0013                        ld    x, a
c8aa -- 4C50 00DD                   bra   nz, 0x00dd
c8ac -- 0810 0100                   ld    x, 0x0100
c8ae -- 0236                        ld    a, (r2+!)
c8af -- E306                        eor   a, (r6+!)
c8b0 -- 4C50 0103                   bra   nz, 0x0103
c8b2 -- 0031                        ld    a, x
c8b3 -- 2800 0001                   sub   a, 0x0001
c8b5 -- 0013                        ld    x, a
c8b6 -- 4C50 00E8                   bra   nz, 0x00e8
c8b8 -- 1C00                        ld    r4, 0x00
c8b9 -- 0810 0100                   ld    x, 0x0100
c8bb -- 08F0 0000                   ld    ext7, 0x0000
c8bd -- 0039                        ld    a, ext1
c8be -- 053C                        ld    (r4++), a
c8bf -- 0031                        ld    a, x
c8c0 -- 2800 0001                   sub   a, 0x0001
c8c2 -- 0013                        ld    x, a
c8c3 -- 4C50 00F7                   bra   nz, 0x00f7
c8c5 -- 1592                        ld    r6, ext1
c8c6 -- 0830 0001                   ld    a, 0x0001
c8c8 -- 036E                        bra   (r6++)
c8c9 -- 1C00                        ld    r4, 0x00
c8ca -- 0810 0100                   ld    x, 0x0100
c8cc -- 08F0 0000                   ld    ext7, 0x0000
c8ce -- 0039                        ld    a, ext1
c8cf -- 053C                        ld    (r4++), a
c8d0 -- 0031                        ld    a, x
c8d1 -- 2800 0001                   sub   a, 0x0001
c8d3 -- 0013                        ld    x, a
c8d4 -- 4C50 0108                   bra   nz, 0x0108
c8d6 -- 1592                        ld    r6, ext1
c8d7 -- 0830 0002                   ld    a, 0x0002
c8d9 -- 036E                        bra   (r6++)
c8da -- 1800                        ld    r0, 0x00
c8db -- 0430                        ld    (r0), a
c8dc -- 08E0 8000                   ld    ext6, 0x8000
c8de -- 08E0 081C                   ld    ext6, 0x081c
c8e0 -- 00C0                        ld    ext4, -
c8e1 -- 08F0 0000                   ld    ext7, 0x0000
c8e3 -- 0810 01FF                   ld    x, 0x01ff
c8e5 -- 0A30                        ld    a, ((r0)+!)
c8e6 -- 0023                        ld    y, a
c8e7 -- 0A30                        ld    a, ((r0)+!)
c8e8 -- 0013                        ld    x, a
c8e9 -- 0A30                        ld    a, ((r0)+!)
c8ea -- 0420                        ld    (r0), y
c8eb -- 0023                        ld    y, a
c8ec -- 0A30                        ld    a, ((r0)+!)
c8ed -- 00C3                        ld    ext4, a
c8ee -- 0031                        ld    a, x
c8ef -- 2800 0001                   sub   a, 0x0001
c8f1 -- 0013                        ld    x, a
c8f2 -- 4C50 C8EC                   bra   nz, 0xc8ec
c8f4 -- 1800                        ld    r0, 0x00
c8f5 -- 0062                        bra   y
c8f6 -- 030A                        ld    -, (r6--)
c8f7 -- 0542                        ld    (r6), st
c8f8 -- 030A                        ld    -, (r6--)
c8f9 -- 0532                        ld    (r6), a
c8fa -- 07F8                        ld    a, B[0xf8]
c8fb -- 8800 0001                   add   a, 0x0001
c8fd -- 0FF8                        ld    B[0xf8], a
c8fe -- 0830 0000                   ld    a, 0x0000
c900 -- 0FF9                        ld    B[0xf9], a
c901 -- 0FFA                        ld    B[0xfa], a
c902 -- 033E                        ld    a, (r6++)
c903 -- 034E                        ld    st, (r6++)
c904 -- 9405                        setie
c905 -- 0065                        ret
c906 -- 030A                        ld    -, (r6--)
c907 -- 0542                        ld    (r6), st
c908 -- 030A                        ld    -, (r6--)
c909 -- 0532                        ld    (r6), a
c90a -- 07F9                        ld    a, B[0xf9]
c90b -- 8800 0001                   add   a, 0x0001
c90d -- 0FF9                        ld    B[0xf9], a
c90e -- 033E                        ld    a, (r6++)
c90f -- 034E                        ld    st, (r6++)
c910 -- 9405                        setie
c911 -- 0065                        ret
c912 -- 030A                        ld    -, (r6--)
c913 -- 0542                        ld    (r6), st
c914 -- 030A                        ld    -, (r6--)
c915 -- 0532                        ld    (r6), a
c916 -- 07CF                        ld    a, B[0xcf]
c917 -- 6800 00FF                   cmp   a, 0x00ff
c919 -- 4D50 C933                   bra   z, 0xc933
c91b -- 6800 FF00                   cmp   a, 0xff00
c91d -- 4D50 C929                   bra   z, 0xc929
c91f -- 6800 F00F                   cmp   a, 0xf00f
c921 -- 4D50 C93D                   bra   z, 0xc93d
c923 -- 07FA                        ld    a, B[0xfa]
c924 -- 8800 0001                   add   a, 0x0001
c926 -- 0FFA                        ld    B[0xfa], a
c927 -- 4C00 C947                   bra   0xc947
c929 -- 0840 0020                   ld    st, 0x0020
c92b -- 0038                        ld    a, ext0
c92c -- 0083                        ld    ext0, a
c92d -- 07CE                        ld    a, B[0xce]
c92e -- 2800 0001                   sub   a, 0x0001
c930 -- 0FCE                        ld    B[0xce], a
c931 -- 4C00 C947                   bra   0xc947
c933 -- 0840 0020                   ld    st, 0x0020
c935 -- 0039                        ld    a, ext1
c936 -- 0093                        ld    ext1, a
c937 -- 07CE                        ld    a, B[0xce]
c938 -- 2800 0001                   sub   a, 0x0001
c93a -- 0FCE                        ld    B[0xce], a
c93b -- 4C00 C947                   bra   0xc947
c93d -- 0840 0020                   ld    st, 0x0020
c93f -- 0038                        ld    a, ext0
c940 -- 0083                        ld    ext0, a
c941 -- 0039                        ld    a, ext1
c942 -- 0093                        ld    ext1, a
c943 -- 07CE                        ld    a, B[0xce]
c944 -- 2800 0001                   sub   a, 0x0001
c946 -- 0FCE                        ld    B[0xce], a
c947 -- 033E                        ld    a, (r6++)
c948 -- 034E                        ld    st, (r6++)
c949 -- 9405                        setie
c94a -- 0065                        ret
c94b -- 0FFF                        ld    B[0xff], a
c94c -- 0034                        ld    a, st
c94d -- 0FFE                        ld    B[0xfe], a
c94e -- 9003                        shl   a
c94f -- 9003                        shl   a
c950 -- 9003                        shl   a
c951 -- 9003                        shl   a
c952 -- 9003                        shl   a
c953 -- 9003                        shl   a
c954 -- 9003                        shl   a
c955 -- 9003                        shl   a
c956 -- 0FFD                        ld    B[0xfd], a
c957 -- 9003                        shl   a
c958 -- 9003                        shl   a
c959 -- 9003                        shl   a
c95a -- 9003                        shl   a
c95b -- 9003                        shl   a
c95c -- 9003                        shl   a
c95d -- 9003                        shl   a
c95e -- 9003                        shl   a
c95f -- 0FFC                        ld    B[0xfc], a
c960 -- 0000                        nop
c961 -- 0000                        nop
c962 -- 0860 C962                   bra   0xc962
c964 -- 07FC                        ld    a, B[0xfc]
c965 -- 9002                        shr   a
c966 -- 9002                        shr   a
c967 -- 9002                        shr   a
c968 -- 9002                        shr   a
c969 -- 9002                        shr   a
c96a -- 9002                        shr   a
c96b -- 9002                        shr   a
c96c -- 9002                        shr   a
c96d -- 07FD                        ld    a, B[0xfd]
c96e -- 9002                        shr   a
c96f -- 9002                        shr   a
c970 -- 9002                        shr   a
c971 -- 9002                        shr   a
c972 -- 9002                        shr   a
c973 -- 9002                        shr   a
c974 -- 9002                        shr   a
c975 -- 9002                        shr   a
c976 -- 07FE                        ld    a, B[0xfe]
c977 -- 0043                        ld    st, a
c978 -- 07FF                        ld    a, B[0xff]
c979 -- 036E                        bra   (r6++)
