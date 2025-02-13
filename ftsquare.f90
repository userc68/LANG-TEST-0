program makesquare
  implicit none
  integer :: height, width
  integer :: i, j;

  write(*, '(A)', advance='no') 'Height: '
  read(*,*) height

  write(*, '(A)', advance='no') 'Width: '
  read(*,*) width

  do i = 1, height
    do j = 1, width
      write(*, '(A)', advance='no') '#'
    end do
    print *, ""
  end do
end program makesquare