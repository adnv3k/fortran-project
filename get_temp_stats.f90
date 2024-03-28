program temperature_stats
    implicit none
    
    integer, parameter :: MAX_DAYS = 365
    real, dimension(MAX_DAYS) :: temperatures
    integer :: num_days, i, io_status
    real :: sum, average, min_temp, max_temp
    logical :: file_exists
    
    inquire(file='random_temperatures.txt', exist=file_exists)
    
    if (file_exists) then
      open(unit=10, file='random_temperatures.txt', status='old')
      
      num_days = 0
      
      do
        read(10, *, iostat=io_status) temperatures(num_days + 1)
        if (io_status /= 0) exit
        num_days = num_days + 1
      end do
      
      close(10)
      
      if (num_days > 0) then
        sum = 0.0
        min_temp = temperatures(1)
        max_temp = temperatures(1)
        
        do i = 1, num_days
          sum = sum + temperatures(i)
          min_temp = min(min_temp, temperatures(i))
          max_temp = max(max_temp, temperatures(i))
        end do
        
        average = sum / num_days
        
        print *, "Number of days: ", num_days
        print *, "Average temperature: ", average
        print *, "Minimum temperature: ", min_temp
        print *, "Maximum temperature: ", max_temp
        print *, "Press enter to conitnue..."
      else
        print *, "No temperature data found in the file."

      endif
      
    else
      print *, "File 'random_temperatures.txt' does not exist."
    endif
    read(*,*)
    
  end program temperature_stats