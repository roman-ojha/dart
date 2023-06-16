/*
    # Guid (https://dart.dev/get-dart)
        -> First install Chocolatey Package manager (https://docs.chocolatey.org/en-us/choco/setup#more-install-options)
            -> run code in cmd
                -> @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
        -> now Install Dart-sdk
            ->  choco install dart-sdk
            -> dart --version
        -> to upgrade:
            ->  choco upgrade dart-sdk
        -> you can use DartPad
          -> No-download or setup needed 
          -> Go online and write code
*/