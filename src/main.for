#!/usr/bin/env -S bash -c "gfortran -Wall -O3 -ffree-form -o /tmp/main-for ${_} 2>&1 | grep -v -E '      .  1|./main.for:1:2:|Illegal preprocessor directive' ; /tmp/main-for "

program main
    implicit none 

    integer :: i, j, n,  seed = 1
    integer :: mask = int(Z'FFFFFF')
    double precision :: num = 0
    character(len=19) :: str
    real :: start, finish

    call cpu_time (start)
    n = 10000000
    str = '00000000.00000000'
    do i = 1, n
        do j = 1, 17
            if (j /= 9) then
                seed = AND((ishft(seed + 7, 4) / 11), mask)
                str(j:j) = achar(ichar('0') + mod(seed, 10))
            end if
        end do
        read (str,*) num
    end do
    call cpu_time (finish)
    print * , 'Time: ', int(1000*(finish-start)), 'ms ', ' str: ', str, ' num: ', num
    stop
end program main
