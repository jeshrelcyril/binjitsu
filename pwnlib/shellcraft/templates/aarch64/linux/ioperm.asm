
<%
    from pwnlib.shellcraft.aarch64.linux import syscall
%>
<%page args="from, num, turn_on"/>
<%docstring>
Invokes the syscall ioperm.  See 'man 2 ioperm' for more information.

Arguments:
    from(unsigned): from
    num(unsigned): num
    turn_on(int): turn_on
</%docstring>

    ${syscall('SYS_ioperm', from, num, turn_on)}
