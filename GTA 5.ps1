# Define an array of options
$options = @("GTA 5 Epic Normal", "GTA 5 Epic Modded", "GTA 5 Steam Normal", "GTA 5 Steam Modded")

# Set initial selection to the first option in the list
$selected = 0

# Loop until the user selects an option
while ($true) {
    # Clear the console
    cls

    # Print the header
    Write-Host "Select the GTA 5 Version you want to Run:" -ForegroundColor Green

    # Print the list of options with the selected option highlighted
    for ($i = 0; $i -lt $options.Length; $i++) {
        if ($i -eq $selected) {
            Write-Host ("> " + $options[$i]) -ForegroundColor Yellow
        } else {
            Write-Host ("  " + $options[$i])
        }
    }

    # Get the user's keypress
    $key = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").VirtualKeyCode

    # Process the user's keypress
    switch ($key) {
        # Up arrow
        38 {
            if ($selected -gt 0) {
                $selected--
            }
        }

        # Down arrow
        40 {
            if ($selected -lt ($options.Length - 1)) {
                $selected++
            }
        }

        # Enter
        13 {
            # Run the selected option
            switch ($selected) {
                0 {
                    # Run Option 1
                    Start-Process ".\Bats\Original GTA Epic.bat" -WindowStyle Hidden
                    Start-Process ".\Bats\Grand Theft Auto V Epic.url"
                    Write-Host "Starting GTA 5 Epic Normal"
                    Start-Sleep -Seconds 3
                }

                1 {
                    # Run Option 2
                    Start-Process ".\Bats\Mod GTA Epic.bat" -WindowStyle Hidden
                    Start-Process ".\Bats\Grand Theft Auto V Epic.url"
                    Write-Host "Starting GTA 5 Epic Modded"
                    Start-Sleep -Seconds 3
                }

                2 {
                    # Run Option 3
                    Start-Process ".\Bats\Original GTA Steam.bat" -WindowStyle Hidden
                    Start-Process ".\Bats\Grand Theft Auto V Steam.url"
                    Write-Host "Starting GTA 5 Steam Normal"
                    Start-Sleep -Seconds 3
                }

                3 {
                    # Run Option 4
                    Start-Process ".\Bats\Mod GTA Steam.bat" -WindowStyle Hidden
                    Start-Process ".\Bats\Grand Theft Auto V Steam.url"
                    Write-Host "Starting GTA 5 Steam Modded"
                    Start-Sleep -Seconds 3
                }
            }
            exit
        }
    }
}
