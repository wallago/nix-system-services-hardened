{
  systemd.services.dbus-broker.serviceConfig = {
    NoNewPrivileges = true;
    ProtectSystem = "strict";
    ProtectControlGroups = true;
    ProtectHome = true;
    ProtectHostname = true;
    ProtectKernelTunables = true;
    ProtectKernelModules = true;
    ProtectKernelLogs = true;
    PrivateMounts = true;
    PrivateDevices = true;
    PrivateTmp = true;
    RestrictSUIDSGID = true;
    RestrictRealtime = true;
    RestrictAddressFamilies = [
      "AF_UNIX"
    ];
    RestrictNamespaces = true;
    SystemCallErrorNumber = "EPERM";
    SystemCallArchitectures = "native";
    SystemCallFilter = [
      "~@obsolete"
      "~@resources"
      "~@debug"
      "~@mount"
      "~@reboot"
      "~@swap"
      "~@cpu-emulation"
    ];
    LockPersonality = true;
    IPAddressDeny = [
      "0.0.0.0/0"
      "::/0"
    ];
    MemoryDenyWriteExecute = true;
    DevicePolicy = "closed";
    UMask = 0077;
  };
}
