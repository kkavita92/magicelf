# Secret Santa Generator

Inspired by [this secret santa mailer](https://github.com/deniseyu/secret-santa-mailer)

```

           *             ,
                       _/^\_
                      <     >
     *                 /.-.\         *
              *        `/&\`                   *
                      ,@.*;@,
                     /_o.I %_\    *
        *           (`'--:o(_@;
                   /`;--.,__ `')             *
                  ;@`o % O,*`'`&\
            *    (`'--)_@ ;o %'()\      *
                 /`;--._`''--._O'@;
                /&*,()~o`;-.,_ `""`)
     *          /`,@ ;+& () o*`;-';\
               (`""--.,_0 +% @' &()\
               /-.,_    ``''--....-'`)  *
          *    /@%;o`:;'--,.__   __.'\
              ;*,&(); @ % &^;~`"`o;@();         *
              /(); o^~; & ().o@*&`;&%O\
        jgs   `"="==""==,,,.,="=="==="`
           __.----.(\-''#####---...___...-----._
         '`         \)_`"""""`
                 .--' ')
               o(  )_-\
                 `"""` `
```

## What Is This Wonderful Thing

Organising a Christmas party 🤶? Need a **randomised Secret Santa Generator** which also sends out automated emails? Don't want to give out your friends' emails (atleast the ones you can still stand) to random websites which would bombard them with spam for the **rest of their lives** 😱?

If you said **YES** to all of the above, then **Magic Elf** is just what you need.


## How To Use

1. Update ```participants.yml``` with the names and emails of your Secret Santa participants. You can exclude giftees from receiving specific people by adding their names to the giftees' exclusion list.

2. In the [run file](run.rb), replace the Gmail username and password with your own details.

3. Run the following in your terminal:
```
bundle install
ruby run.rb
```

4. If you want to save a master list of your Secret Santa assignments to a folder, run:
```
bundle install
SAVE_OUTPUT=true ruby run.rb
```
