This is the PerlBrew initialization file for the Fish shell in a plugin format.
I did not write any of the functionality, just repacked them into a plugin.

# INSTALL

```fish
fisher install acristoffers/perlbrew.fisher
```

You still need to install PerlBrew (see <https://perlbrew.pl>).

# USAGE

In your `config.fish`, set the variable `PERLBREW_ROOT` and then call the
initialization function. Setting the variable is not really necessary, but who
likes non-dot folders being created in the home directory?

```fish
set -x PERLBREW_ROOT ~/.local/perl5/lib/perl5
perlbrew-env
```

How is this faster than the normal approach? Because the completion code in the
original script is slow, and by putting it in the `completions` folder, fish
loads it... I don't know when, but not at startup, so you get your console
faster.

# LICENSE

Copyright (c) 2022 Álan Crístoffer e Sousa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
