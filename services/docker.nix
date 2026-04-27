{
  systemd.services.docker.serviceConfig = {
    NoNewPrivileges = true;
    ProtectSystem = "full";
    ProtectHome = true;
    ProtectKernelModules = true;
    ProtectKernelLogs = true;
    ProtectClock = true;
    ProtectProc = "invisible";
    PrivateTmp = true;
    PrivateMounts = true;
    RestrictRealtime = true;
    RestrictAddressFamilies = [ 
      "AF_UNIX"
      "AF_NETLINK"
      "AF_INET" 
      "AF_INET6" 
    ];
    RestrictNamespaces = [
      "~user"
    ];
    SystemCallFilter = [
      "~@debug"
      "~@raw-io"
      "~@reboot"
      "~@clock"
      "~@module"
      "~@swap"
      "~@obsolete" 
      "~@cpu-emulation" 
    ];
    SystemCallArchitectures = "native";
    CapabilityBoundingSet= [
      "~CAP_SYS_RAWIO"
      "~CAP_SYS_PTRACE"
      "~CAP_SYS_BOOT"
    ];
  };
}
