; ModuleID = '/llk/IR_all_yes/drivers/net/usb/ax88172a.c_pt.bc'
source_filename = "../drivers/net/usb/ax88172a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.117, i32 }
%union.anon.117 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax88172a_private = type { ptr, ptr, [20 x i8], i16, i16, i32, %struct.asix_rx_fixup_info }
%struct.asix_rx_fixup_info = type { ptr, i32, i16, i8 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ASIX AX88172A USB 2.0 Ethernet\00", [33 x i8] zeroinitializer }, align 32
@ax88172a_info = dso_local constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str, i32 10336, ptr @ax88172a_bind, ptr @ax88172a_unbind, ptr @ax88172a_reset, ptr @ax88172a_stop, ptr null, ptr null, ptr @ax88172a_status, ptr null, ptr @ax88172a_rx_fixup, ptr @asix_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read MAC address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ax88172a_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @asix_set_multicast, ptr @asix_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl_running, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88172a_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @asix_get_drvinfo, ptr null, ptr null, ptr @asix_get_wol, ptr @asix_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @phy_ethtool_nway_reset, ptr @usbnet_get_link, ptr null, ptr @asix_get_eeprom_len, ptr @asix_get_eeprom, ptr @asix_set_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to read software interface selection register: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ax88172a_bind.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asix\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax88172a_bind\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/usb/ax88172a.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AX_CMD_SW_PHY_STATUS = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@ax88172a_bind.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"use internal phy\0A\00", [46 x i8] zeroinitializer }, align 32
@ax88172a_bind.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"use external phy\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Interface mode not supported by driver\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not allocate MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Asix MDIO Bus\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-%03d:%03d\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"registered mdio bus %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"deregistering mdio bus %s\0A\00", [37 x i8] zeroinitializer }, align 32
@ax88172a_reset.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax88172a_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RX_CTL is 0x%04x after software reset\0A\00", [57 x i8] zeroinitializer }, align 32
@ax88172a_reset.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.18, i8 0, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RX_CTL is 0x%04x setting to 0x0000\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ax88172a_reset.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.20, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", [52 x i8] zeroinitializer }, align 32
@ax88172a_reset.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.16, ptr @.str.5, ptr @.str.21, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Medium Status is 0x%04x after all initializations\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not connect to PHY device %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Connected to phy %s\0A\00", [43 x i8] zeroinitializer }, align 32
@ax88172a_adjust_link.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.25, ptr @.str.5, ptr @.str.26, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ax88172a_adjust_link\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"speed %u duplex %d, setting mode to 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@ax88172a_stop.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax88172a_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Stopping interface\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Disconnecting from phy %s\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 346, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ax88172a_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 345, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 175, i32 24 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"ax88172a_netdev_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 103, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"ax88172a_ethtool_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 116, i32 33 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 187, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 192, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 199, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 203, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 68, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 75, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 77, i32 44 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 82, i32 24 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 86, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 98, i32 24 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 270, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 276, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 284, i32 24 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 301, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 305, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 309, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 316, i32 24 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 322, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 49, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 239, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [30 x i8] c"../drivers/net/usb/ax88172a.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 242, i32 25 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @ax88172a_info, ptr @.str.1, ptr @ax88172a_netdev_ops, ptr @ax88172a_ethtool_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88172a_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88172a_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88172a_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172a_bind(ptr noundef %dev, ptr noundef %intf) #0 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 48) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %call2 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 19, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef nonnull %buf, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2)
  %cmp = icmp slt i32 %call2, 6
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef %call2) #11
  br label %free

if.end4:                                          ; preds = %if.end
  call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %buf, i32 noundef 6) #7
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ax88172a_netdev_ops, ptr %netdev_ops, align 8
  %8 = load ptr, ptr %net, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 44
  %9 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ax88172a_ethtool_ops, ptr %ethtool_ops, align 16
  %call10 = call i32 @asix_read_cmd(ptr noundef %dev, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %buf, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %do.body15

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %call10) #11
  br label %free

do.body15:                                        ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_bind.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_bind, %if.then20)) #7
          to label %do.end24 [label %if.then20], !srcloc !78

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %conv = zext i8 %15 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_bind.__UNIQUE_ID_ddebug357, ptr noundef %13, ptr noundef nonnull @.str.6, i32 noundef %conv) #7
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body15
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf, align 1
  %18 = and i8 %17, 12
  %and = zext i8 %18 to i32
  %19 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 0, label %do.body28
    i32 4, label %do.body49
  ]

do.body28:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_bind.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_bind, %if.then40)) #7
          to label %sw.epilog [label %if.then40], !srcloc !78

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_bind.__UNIQUE_ID_ddebug358, ptr noundef %21, ptr noundef nonnull @.str.7) #7
  br label %sw.epilog

do.body49:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_bind.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_bind, %if.then61)) #7
          to label %sw.epilog [label %if.then61], !srcloc !78

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_bind.__UNIQUE_ID_ddebug359, ptr noundef %23, ptr noundef nonnull @.str.8) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %25, ptr noundef nonnull @.str.9) #11
  br label %free

sw.epilog:                                        ; preds = %if.then61, %do.body49, %if.then40, %do.body28
  %tobool71 = phi i1 [ false, %if.then61 ], [ false, %do.body49 ], [ true, %if.then40 ], [ true, %do.body28 ]
  %.sink = phi i32 [ 0, %if.then61 ], [ 0, %do.body49 ], [ 1, %if.then40 ], [ 1, %do.body28 ]
  %use_embdphy68 = getelementptr inbounds %struct.ax88172a_private, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %use_embdphy68 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %use_embdphy68, align 8
  %call72 = call i32 @asix_read_phy_addr(ptr noundef %dev, i1 noundef zeroext %tobool71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %sw.epilog.free_crit_edge, label %if.end76

sw.epilog.free_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %free

if.end76:                                         ; preds = %sw.epilog
  %use_embdphy70 = getelementptr inbounds %struct.ax88172a_private, ptr %call7.i.i, i32 0, i32 5
  %conv77 = trunc i32 %call72 to i16
  %phy_addr = getelementptr inbounds %struct.ax88172a_private, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv77, ptr %phy_addr, align 4
  %28 = ptrtoint ptr %use_embdphy70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %use_embdphy70, align 8
  %call.i = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end76.ax88172a_reset_phy.exit_crit_edge, label %if.end.i

if.end76.ax88172a_reset_phy.exit_crit_edge:       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax88172a_reset_phy.exit

if.end.i:                                         ; preds = %if.end76
  call void @msleep(i32 noundef 150) #7
  %call1.i = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.ax88172a_reset_phy.exit_crit_edge, label %if.end4.i

if.end.i.ax88172a_reset_phy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax88172a_reset_phy.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %conv.i = select i1 %tobool.not.i, i8 64, i8 32
  %call5.i = call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext %conv.i, i32 noundef 0) #7
  br label %ax88172a_reset_phy.exit

ax88172a_reset_phy.exit:                          ; preds = %if.end4.i, %if.end.i.ax88172a_reset_phy.exit_crit_edge, %if.end76.ax88172a_reset_phy.exit_crit_edge
  %driver_info = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 2
  %30 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_info, align 4
  %flags = getelementptr inbounds %struct.driver_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and80 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %ax88172a_reset_phy.exit.if.end83_crit_edge, label %if.then82

ax88172a_reset_phy.exit.if.end83_crit_edge:       ; preds = %ax88172a_reset_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then82:                                        ; preds = %ax88172a_reset_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %34 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2048, ptr %rx_urb_size, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %ax88172a_reset_phy.exit.if.end83_crit_edge
  %35 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_priv, align 4
  %call.i.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #7
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %36, align 4
  %tobool.not.i127 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i127, label %if.then.i, label %if.end.i128

if.then.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.10) #11
  br label %free

if.end.i128:                                      ; preds = %if.end83
  %priv3.i = getelementptr inbounds %struct.mii_bus, ptr %call.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %priv3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev, ptr %priv3.i, align 8
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  %read.i = getelementptr inbounds %struct.mii_bus, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @asix_mdio_bus_read, ptr %read.i, align 4
  %44 = load ptr, ptr %36, align 4
  %write.i = getelementptr inbounds %struct.mii_bus, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @asix_mdio_bus_write, ptr %write.i, align 8
  %46 = load ptr, ptr %36, align 4
  %name.i = getelementptr inbounds %struct.mii_bus, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.11, ptr %name.i, align 4
  %48 = load ptr, ptr %36, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bus.i, align 8
  %busnum.i = getelementptr inbounds %struct.usb_bus, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %busnum.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %busnum.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 8
  %call9.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id.i, i32 noundef 61, ptr noundef nonnull @.str.12, i32 noundef %54, i32 noundef %56) #7
  %57 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %36, align 4
  %call11.i = call i32 @__mdiobus_register(ptr noundef %58, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %59 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net, align 4
  br i1 %tobool12.not.i, label %ax88172a_init_mdio.exit, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.13) #11
  %61 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %36, align 4
  call void @mdiobus_free(ptr noundef %62) #7
  br label %free

ax88172a_init_mdio.exit:                          ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %36, align 4
  %id18.i = getelementptr inbounds %struct.mii_bus, ptr %64, i32 0, i32 2
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %60, ptr noundef nonnull @.str.14, ptr noundef %id18.i) #11
  br label %cleanup

free:                                             ; preds = %if.then13.i, %if.then.i, %sw.epilog.free_crit_edge, %sw.default, %if.then12, %if.then3
  %ret.0 = phi i32 [ -5, %if.then3 ], [ %call10, %if.then12 ], [ -524, %sw.default ], [ %call72, %sw.epilog.free_crit_edge ], [ -12, %if.then.i ], [ %call11.i, %if.then13.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free, %ax88172a_init_mdio.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %ax88172a_init_mdio.exit ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88172a_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %id.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %id.i) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @mdiobus_unregister(ptr noundef %7) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @mdiobus_free(ptr noundef %9) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172a_reset(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %use_embdphy = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %use_embdphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_embdphy, align 4
  %call.i = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ax88172a_reset_phy.exit_crit_edge, label %if.end.i

entry.ax88172a_reset_phy.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax88172a_reset_phy.exit

if.end.i:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 150) #7
  %call1.i = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.ax88172a_reset_phy.exit_crit_edge, label %if.end4.i

if.end.i.ax88172a_reset_phy.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ax88172a_reset_phy.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %conv.i = select i1 %tobool.not.i, i8 64, i8 32
  %call5.i = tail call i32 @asix_sw_reset(ptr noundef %dev, i8 noundef zeroext %conv.i, i32 noundef 0) #7
  br label %ax88172a_reset_phy.exit

ax88172a_reset_phy.exit:                          ; preds = %if.end4.i, %if.end.i.ax88172a_reset_phy.exit_crit_edge, %entry.ax88172a_reset_phy.exit_crit_edge
  tail call void @msleep(i32 noundef 150) #7
  %call2 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_reset.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_reset, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !78

if.then:                                          ; preds = %ax88172a_reset_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %conv = zext i16 %call2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_reset.__UNIQUE_ID_ddebug361, ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef %conv) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %ax88172a_reset_phy.exit
  %call9 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end8.cleanup_crit_edge, label %if.end12

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %call13 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_reset.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_reset, %if.then27)) #7
          to label %do.end34 [label %if.then27], !srcloc !78

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %net28 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net28, align 4
  %conv29 = zext i16 %call13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_reset.__UNIQUE_ID_ddebug362, ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %conv29) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then27, %if.end12
  tail call void @msleep(i32 noundef 150) #7
  %call35 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 18, i16 noundef zeroext 29, i16 noundef zeroext 18, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %net39 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net39, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %call35) #11
  br label %cleanup

if.end40:                                         ; preds = %do.end34
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %net41 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net41, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = call ptr @memcpy(ptr %mac_addr, ptr %13, i32 6)
  %call44 = tail call i32 @asix_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 6, ptr noundef %mac_addr, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end40.cleanup_crit_edge, label %if.end48

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call49 = tail call i32 @asix_write_rx_ctl(ptr noundef %dev, i16 noundef zeroext 136, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end48.cleanup_crit_edge, label %if.end53

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end48
  %call54 = tail call zeroext i16 @asix_read_rx_ctl(ptr noundef %dev, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_reset.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_reset, %if.then68)) #7
          to label %do.end75 [label %if.then68], !srcloc !78

if.then68:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net41, align 4
  %conv70 = zext i16 %call54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_reset.__UNIQUE_ID_ddebug363, ptr noundef %16, ptr noundef nonnull @.str.20, i32 noundef %conv70) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %if.end53
  %call76 = tail call zeroext i16 @asix_read_medium_status(ptr noundef %dev, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_reset.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_reset, %if.then90)) #7
          to label %do.end97 [label %if.then90], !srcloc !78

if.then90:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net41, align 4
  %conv92 = zext i16 %call76 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_reset.__UNIQUE_ID_ddebug364, ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef %conv92) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then90, %do.end75
  %phy_name = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %20, i32 0, i32 2
  %phy_addr = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %phy_addr, align 4
  %conv100 = zext i16 %22 to i32
  %call101 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phy_name, i32 noundef 20, ptr noundef nonnull @.str.22, ptr noundef %id, i32 noundef %conv100)
  %23 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net41, align 4
  %call105 = tail call ptr @phy_connect(ptr noundef %24, ptr noundef %phy_name, ptr noundef nonnull @ax88172a_adjust_link, i32 noundef 2) #7
  %phydev = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call105, ptr %phydev, align 4
  %cmp.i172 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %net41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net41, align 4
  br i1 %cmp.i172, label %if.then108, label %if.end114

if.then108:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.23, ptr noundef %phy_name) #11
  %28 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phydev, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end114:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef %phy_name) #11
  %31 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phydev, align 4
  %call119 = tail call i32 @genphy_resume(ptr noundef %32) #7
  %33 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phydev, align 4
  tail call void @phy_start(ptr noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.then108, %if.end48.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.then38, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end114 ], [ %call9, %do.end8.cleanup_crit_edge ], [ %call35, %if.then38 ], [ %call44, %if.end40.cleanup_crit_edge ], [ %call49, %if.end48.cleanup_crit_edge ], [ %30, %if.then108 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172a_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_stop.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_stop, %if.then)) #7
          to label %do.end5 [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_stop.__UNIQUE_ID_ddebug360, ptr noundef %3, ptr noundef nonnull @.str.28) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %phydev = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end5.if.end11_crit_edge, label %if.then7

do.end5.if.end11_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %net8 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net8, align 4
  %phy_name = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef %phy_name) #11
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phydev, align 4
  tail call void @phy_stop(ptr noundef %9) #7
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 4
  tail call void @phy_disconnect(ptr noundef %11) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.end5.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ax88172a_status(ptr nocapture noundef %dev, ptr nocapture noundef %urb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88172a_rx_fixup(ptr noundef %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %rx_fixup_info = getelementptr inbounds %struct.ax88172a_private, ptr %1, i32 0, i32 6
  %call = tail call i32 @asix_rx_fixup_internal(ptr noundef %dev, ptr noundef %skb, ptr noundef %rx_fixup_info) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @asix_tx_fixup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_read_phy_addr(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_set_multicast(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_mac_address(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl_running(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_drvinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @asix_get_wol(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_wol(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom_len(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_get_eeprom(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_set_eeprom(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_sw_reset(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_read(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_mdio_bus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_rx_ctl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_rx_ctl(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_cmd(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @asix_read_medium_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88172a_adjust_link(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %driver_priv = getelementptr i8, ptr %netdev, i32 2320
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %5 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp, i16 820, i16 822
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %9)
  %cmp4.not = icmp eq i32 %9, 100
  %10 = and i16 %spec.select, 310
  %spec.select46 = select i1 %cmp4.not, i16 %spec.select, i16 %10
  br label %if.end11

if.end11:                                         ; preds = %if.then, %entry.if.end11_crit_edge
  %mode.1 = phi i16 [ 0, %entry.if.end11_crit_edge ], [ %spec.select46, %if.then ]
  %conv12 = zext i16 %mode.1 to i32
  %oldmode = getelementptr inbounds %struct.ax88172a_private, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %oldmode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %oldmode, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %mode.1, i16 %12)
  %cmp14.not = icmp eq i16 %mode.1, %12
  br i1 %cmp14.not, label %if.end11.if.end31_crit_edge, label %if.then16

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then16:                                        ; preds = %if.end11
  %call17 = tail call i32 @asix_write_medium_mode(ptr noundef %add.ptr.i, i16 noundef zeroext %mode.1, i32 noundef 0) #7
  %13 = ptrtoint ptr %oldmode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %mode.1, ptr %oldmode, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88172a_adjust_link.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88172a_adjust_link, %if.then24)) #7
          to label %do.end30 [label %if.then24], !srcloc !78

if.then24:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %speed25 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %speed25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed25, align 8
  %duplex26 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %duplex26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %duplex26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88172a_adjust_link.__UNIQUE_ID_ddebug356, ptr noundef %netdev, ptr noundef nonnull @.str.26, i32 noundef %15, i32 noundef %17, i32 noundef %conv12) #7
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %if.then16
  tail call void @phy_print_status(ptr noundef %1) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end30, %if.end11.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_write_medium_mode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asix_rx_fixup_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !49, !50, !52, !53, !55, !57, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/ax88172a.c", i32 346, i32 17}
!2 = !{ptr @ax88172a_info, !3, !"ax88172a_info", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/ax88172a.c", i32 345, i32 26}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/usb/ax88172a.c", i32 175, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/usb/ax88172a.c", i32 187, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/usb/ax88172a.c", i32 192, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ax88172a_bind.__UNIQUE_ID_ddebug357, !9, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/usb/ax88172a.c", i32 195, i32 3}
!16 = !{ptr @ax88172a_bind.__UNIQUE_ID_ddebug358, !15, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/ax88172a.c", i32 199, i32 3}
!19 = !{ptr @ax88172a_bind.__UNIQUE_ID_ddebug359, !18, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/ax88172a.c", i32 203, i32 24}
!22 = !{ptr @ax88172a_netdev_ops, !23, !"ax88172a_netdev_ops", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/ax88172a.c", i32 103, i32 36}
!24 = !{ptr @ax88172a_ethtool_ops, !25, !"ax88172a_ethtool_ops", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/ax88172a.c", i32 116, i32 33}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/ax88172a.c", i32 68, i32 24}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/ax88172a.c", i32 75, i32 21}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/ax88172a.c", i32 77, i32 44}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/ax88172a.c", i32 82, i32 24}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/ax88172a.c", i32 86, i32 24}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/ax88172a.c", i32 98, i32 24}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/ax88172a.c", i32 270, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ax88172a_reset.__UNIQUE_ID_ddebug361, !39, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/ax88172a.c", i32 276, i32 2}
!44 = !{ptr @ax88172a_reset.__UNIQUE_ID_ddebug362, !43, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/ax88172a.c", i32 284, i32 24}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/ax88172a.c", i32 301, i32 2}
!49 = !{ptr @ax88172a_reset.__UNIQUE_ID_ddebug363, !48, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/ax88172a.c", i32 305, i32 2}
!52 = !{ptr @ax88172a_reset.__UNIQUE_ID_ddebug364, !51, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/usb/ax88172a.c", i32 309, i32 31}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/ax88172a.c", i32 316, i32 24}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/usb/ax88172a.c", i32 322, i32 24}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/ax88172a.c", i32 49, i32 3}
!61 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ax88172a_adjust_link.__UNIQUE_ID_ddebug356, !60, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/ax88172a.c", i32 239, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ax88172a_stop.__UNIQUE_ID_ddebug360, !64, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/ax88172a.c", i32 242, i32 25}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2148968223, i64 2148968228, i64 2148968241, i64 2148968285, i64 2148968319, i64 2148968340}
