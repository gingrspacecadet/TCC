# TCC
Cross-Compiler for development on the Trident OS

---
## How to use
1. Clone the repository using [git](https://git-scm.com/downloads)
2. Run the bash script `build.sh`
3. Wait for it to compile

---
## Dependencies

<table border="2" cellpadding="4" cellspacing="0" style="margin-top:1em; margin-bottom:1em; background:#f9f9f9; border:1px #aaa solid; border-collapse:collapse; {{{1}}}">

<tbody><tr>
<th>↓ Dependency / OS →
</th>
<td>Source Code
</td>
<td>Debian (Ubuntu, Mint, WSL, ...)
</td>
<td>Gentoo
</td>
<td>Fedora
</td>
<td>Cygwin
</td>
<td>OpenBSD
</td>
<td>Arch
</td></tr>
<tr>
<td>How to install
</td>
<td>Normally
</td>
<td><b><tt>sudo apt install</tt> <i>foo</i></b>
</td>
<td><b><tt>sudo emerge --ask</tt> <i>foo</i></b>
</td>
<td><b><tt>sudo dnf install</tt> <i>foo</i></b>
</td>
<td>Cygwin GUI setup
</td>
<td><b><tt>doas pkg_add</tt> <i>foo</i></b>
</td>
<td><b><tt>pacman -Syu</tt> <i>foo</i></b>
</td></tr>
<tr>
<td>Compiler
</td>
<td>N/A
</td>
<td><b><tt>build-essential</tt></b>
</td>
<td><b><tt>sys-devel/gcc</tt></b>
</td>
<td><b><tt>gcc gcc-c++</tt></b>
</td>
<td><b><tt>mingw64-x86_64-gcc-g++</tt></b> / <b><tt>mingw64-i686-gcc-g++</tt></b>
</td>
<td>Preinstalled
</td>
<td><b><tt>base-devel</tt></b>
</td></tr>
<tr>
<td>Make
</td>
<td>N/A
</td>
<td><b><tt>build-essential</tt></b>
</td>
<td><b><tt>dev-build/make</tt></b>
</td>
<td><b><tt>make</tt></b>
</td>
<td><b><tt>make</tt></b>
</td>
<td>Preinstalled
</td>
<td><b><tt>base-devel</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="https://www.gnu.org/software/bison/">Bison</a>
</td>
<td><a rel="nofollow" class="external autonumber" href="https://ftp.gnu.org/gnu/bison/">[1]</a>
</td>
<td><b><tt>bison</tt></b>
</td>
<td><b><tt>sys-devel/bison</tt></b>
</td>
<td><b><tt>bison</tt></b>
</td>
<td><b><tt>bison</tt></b>
</td>
<td>?
</td>
<td><b><tt>base-devel</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="https://github.com/westes/flex">Flex</a>
</td>
<td><a rel="nofollow" class="external autonumber" href="https://github.com/westes/flex/releases">[2]</a>
</td>
<td><b><tt>flex</tt></b>
</td>
<td><b><tt>sys-devel/flex</tt></b>
</td>
<td><b><tt>flex</tt></b>
</td>
<td><b><tt>flex</tt></b>
</td>
<td>?
</td>
<td><b><tt>base-devel</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="https://gmplib.org/">GMP</a>
</td>
<td><a rel="nofollow" class="external autonumber" href="https://ftp.gnu.org/gnu/gmp/">[3]</a>
</td>
<td><b><tt>libgmp3-dev</tt></b>
</td>
<td><b><tt>dev-libs/gmp</tt></b>
</td>
<td><b><tt>gmp-devel</tt></b>
</td>
<td><b><tt>libgmp-devel</tt></b>
</td>
<td><b><tt>gmp</tt></b>
</td>
<td><b><tt>gmp</tt></b>
</td></tr>
<tr>
<td>MPC
</td>
<td><a rel="nofollow" class="external autonumber" href="https://ftp.gnu.org/gnu/mpc/">[4]</a>
</td>
<td><b><tt>libmpc-dev</tt></b>
</td>
<td><b><tt>dev-libs/mpc</tt></b>
</td>
<td><b><tt>libmpc-devel</tt></b>
</td>
<td><b><tt>libmpc-devel</tt></b>
</td>
<td><b><tt>libmpc</tt></b>
</td>
<td><b><tt>libmpc</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="https://www.mpfr.org/">MPFR</a>
</td>
<td><a rel="nofollow" class="external autonumber" href="https://ftp.gnu.org/gnu/mpfr/">[5]</a>
</td>
<td><b><tt>libmpfr-dev</tt></b>
</td>
<td><b><tt>dev-libs/mpfr</tt></b>
</td>
<td><b><tt>mpfr-devel</tt></b>
</td>
<td><b><tt>libmpfr-devel</tt></b>
</td>
<td><b><tt>mpfr</tt></b>
</td>
<td><b><tt>mpfr</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="https://www.gnu.org/software/texinfo/">Texinfo</a>
</td>
<td><a rel="nofollow" class="external autonumber" href="https://ftp.gnu.org/gnu/texinfo/">[6]</a>
</td>
<td><b><tt>texinfo</tt></b>
</td>
<td><b><tt>sys-apps/texinfo</tt></b>
</td>
<td><b><tt>texinfo</tt></b>
</td>
<td><b><tt>texinfo</tt></b>
</td>
<td><b><tt>texinfo</tt></b>
</td>
<td><b><tt>base-devel</tt></b>
</td></tr>
<tr>
<td><a rel="nofollow" class="external text" href="http://isl.gforge.inria.fr/">ISL</a> (Optional)
</td>
<td><a rel="nofollow" class="external autonumber" href="http://isl.gforge.inria.fr/">[7]</a>
</td>
<td><b><tt>libisl-dev</tt></b>
</td>
<td><b><tt>dev-libs/isl</tt></b>
</td>
<td><b><tt>isl-devel</tt></b>
</td>
<td><b><tt>libisl-devel</tt></b>
</td>
<td>N/A
</td>
<td>N/A
</td></tr></tbody></table>
