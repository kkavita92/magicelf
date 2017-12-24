# Secret Santa Generator

Inspired by [this secret santa mailer](https://github.com/deniseyu/secret-santa-mailer).

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

PS: Currently, Magic Elf is only hooked up to Gmail. Long live Gmail.

## How To Use

1. Update ```participants.yml``` with the names and emails of your Secret Santa participants. You can exclude giftees from receiving specific people by adding their names to the giftees' exclusion list.

2. In the [run file](run.rb), replace the Gmail username and password with your own details. You might also have to turn on access for less secure apps for your account [here](https://myaccount.google.com/lesssecureapps).

3. Install Ruby gems.
```
bundle install
```

3. Run the following command in your terminal to make allocations and send emails:
```
ruby run.rb
```

4. If you want to save a master list of your Secret Santa assignments to a folder, run this instead:
```
SAVE_OUTPUT=true ruby run.rb
```


## Pending Updates
* Enabling Magic Elf to work with Gmail XOAuth.
* Implement belated RSpec tests - I've been bad I know.
* Jazz up the email body with Rainbow gem.
* Refactor party (pizza optional).
