#!/usr/bin/perl

use File::Path;

my $pip="pip";
my $targ="main.py";

if(-f $targ){

    sub run_f{

        system("python $targ");
    
    };

    sub lib_ki{

        system("$pip install kivy");
        system("$pip install kivymd");
        run_f();

    }

    if (open(my $fh, '<', 'ceck.txt')){

        my $data = do { local $/; <$fh> };

        if ($data =~ /True/i) {
    
            print scalar localtime();
            run_f()

        }else{print "pass1";}

    }else{lib_ki()};

    
}else{print "File non esistente\n\n";}



#   / @@@@@@@@@@@@@@@@@@@@ \
#  $  @                  @  $ 
#  !  @  Script Perl     @  ! 
#  !  @  By Fer - Ati    @  !   
#  !  @  Run App_Python  @  ! 
#  $  @                  @  $
#   \ @@@@@@@@@@@@@@@@@@@@ /

