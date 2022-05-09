; ModuleID = '/llk/IR_all_yes/drivers/net/usb/dm9601.c_pt.bc'
source_filename = "../drivers/net/usb/dm9601.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@__initcall__kmod_dm9601__351_648_dm9601_driver_init6 = internal global ptr @dm9601_driver_init, section ".initcall6.init", align 4
@dm9601_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_dm9601_driver_exit = internal global ptr @dm9601_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author352 = internal constant [50 x i8] c"dm9601.author=Peter Korsgaard <jacmet@sunsite.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [62 x i8] c"dm9601.description=Davicom DM96xx USB 10/100 ethernet devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [35 x i8] c"dm9601.file=drivers/net/usb/dm9601\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [19 x i8] c"dm9601.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm9601\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [16 x %struct.usb_device_id], [96 x i8] } { [16 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1962, i16 -27135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -27135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 26248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 616, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -31467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2631, i16 -27135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 4070, i16 -32511, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 4070, i16 -26880, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -27104, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -27103, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 -27102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 617, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 2630, i16 4713, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id { i16 3, i16 1414, i16 13351, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @dm9601_info to i32) }, %struct.usb_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@dm9601_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 2080, ptr @dm9601_bind, ptr null, ptr @dm9601_link_reset, ptr null, ptr null, ptr null, ptr @dm9601_status, ptr @dm9601_link_reset, ptr @dm9601_rx_fixup, ptr @dm9601_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Davicom DM96xx USB 10/100 Ethernet\00", [61 x i8] zeroinitializer }, align 32
@dm9601_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @dm9601_set_multicast, ptr @dm9601_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @dm9601_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dm9601_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dm9601_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @dm9601_get_link, ptr null, ptr @dm9601_get_eeprom_len, ptr @dm9601_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dm9601_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Error reading MAC address\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm9601_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/dm9601.c\00", [39 x i8] zeroinitializer }, align 32
@dm9601_bind._entry_ptr = internal global ptr @dm9601_bind._entry, section ".printk_index", align 4
@dm9601_bind._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014dm9601: No valid MAC address in EEPROM, using %pM\0A\00", [43 x i8] zeroinitializer }, align 32
@dm9601_bind._entry_ptr.7 = internal global ptr @dm9601_bind._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error reading chip ID\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error reading MODE_CTRL\0A\00", [39 x i8] zeroinitializer }, align 32
@dm9601_set_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 331, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"not setting invalid mac address %pM\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dm9601_set_mac_address\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dm9601_set_mac_address._entry_ptr = internal global ptr @dm9601_set_mac_address._entry, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s read timed out!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@dm_read_shared_word.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm_read_shared_word\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"read shared %d 0x%02x returned 0x%04x, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@dm9601_mdio_read.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm9601_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Only internal phy supported\0A\00", [35 x i8] zeroinitializer }, align 32
@dm9601_mdio_read.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"dm9601_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", [34 x i8] zeroinitializer }, align 32
@dm9601_mdio_write.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.20, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm9601_mdio_write\00", [46 x i8] zeroinitializer }, align 32
@dm9601_mdio_write.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"dm9601_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s write timed out!\0A\00", [43 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@dm9601_link_reset.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm9601_link_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"link_reset() speed: %u duplex: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dm9601_status.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.4, ptr @.str.28, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm9601_status\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Status is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dm9601_rx_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 451, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected tiny rx frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm9601_rx_fixup\00", [16 x i8] zeroinitializer }, align 32
@dm9601_rx_fixup._entry_ptr = internal global ptr @dm9601_rx_fixup._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"dm9601_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 638, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 648, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 572, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"dm9601_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 561, i32 33 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 562, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"dm9601_netdev_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 341, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"dm9601_ethtool_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 278, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 386, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 397, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 404, i32 24 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 414, i32 25 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 330, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 134, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 134, i32 54 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 134, i32 62 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 142, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 227, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 233, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 247, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 251, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 177, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 555, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 544, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [28 x i8] c"../drivers/net/usb/dm9601.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 451, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_dm9601_driver_exit, ptr @__initcall__kmod_dm9601__351_648_dm9601_driver_init6, ptr @dm9601_bind._entry, ptr @dm9601_bind._entry.5, ptr @dm9601_bind._entry_ptr, ptr @dm9601_bind._entry_ptr.7, ptr @dm9601_driver_exit, ptr @dm9601_rx_fixup._entry, ptr @dm9601_rx_fixup._entry_ptr, ptr @dm9601_set_mac_address._entry, ptr @dm9601_set_mac_address._entry_ptr, ptr @dm9601_driver, ptr @.str, ptr @products, ptr @dm9601_info, ptr @.str.1, ptr @dm9601_netdev_ops, ptr @dm9601_ethtool_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_bind._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_set_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm9601_rx_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @dm9601_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm9601_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @dm9601_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %mac = alloca [6 x i8], align 4
  %id = alloca i8, align 1
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #8
  %0 = getelementptr inbounds [6 x i8], ptr %mac, i32 0, i32 4
  %1 = call ptr @memset(ptr %mac, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id) #8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %id, align 1, !annotation !91
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup68_crit_edge

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dm9601_netdev_ops, ptr %netdev_ops, align 8
  %6 = load ptr, ptr %net, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dm9601_ethtool_ops, ptr %ethtool_ops, align 16
  %8 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %10, 2
  store i16 %add, ptr %hard_header_len, align 2
  %11 = load ptr, ptr %net, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 20
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %hard_header_len6 = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len6, align 2
  %conv7 = zext i16 %15 to i32
  %add8 = add i32 %13, %conv7
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %16 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add8, ptr %hard_mtu, align 4
  %17 = load i32, ptr %mtu, align 4
  %add13 = add i32 %17, 22
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %18 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add13, ptr %rx_urb_size, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev15 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %dev15, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %20 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dm9601_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %21 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dm9601_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %22 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %23 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 31, ptr %reg_num_mask, align 4
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 4294960) #8
  %call.i105 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef nonnull %mac, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i105)
  %cmp.not.i.not = icmp eq i32 %call.i105, 6
  br i1 %cmp.not.i.not, label %if.end25, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %cleanup68

if.end25:                                         ; preds = %if.end
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac, align 4
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not.i = icmp eq i32 %27, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end25.do.end33_crit_edge

if.end25.do.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

is_valid_ether_addr.exit:                         ; preds = %if.end25
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %0, align 4
  %conv.i.i = zext i16 %29 to i32
  %or.i.i = or i32 %26, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end33_crit_edge, label %if.then28

is_valid_ether_addr.exit.do.end33_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

if.then28:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %mac, i32 noundef 6) #8
  br label %if.end37

do.end33:                                         ; preds = %is_valid_ether_addr.exit.do.end33_crit_edge, %if.end25.do.end33_crit_edge
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %33, i32 0, i32 86
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %35) #11
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr.i, align 64
  %call.i.i = call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %39, i16 noundef zeroext 6) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.then28
  %call.i.i106 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 44, ptr noundef nonnull %id, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i106)
  %cmp.not.i.i.not = icmp eq i32 %call.i.i106, 1
  br i1 %cmp.not.i.i.not, label %if.end43, label %if.then41

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.8) #11
  br label %cleanup68

if.end43:                                         ; preds = %if.end37
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp45 = icmp eq i8 %43, 1
  br i1 %cmp45, label %if.then47, label %if.end43.if.end57_crit_edge

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then47:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #8
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %mode, align 1, !annotation !91
  %call.i.i107 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 145, ptr noundef nonnull %mode, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i107)
  %cmp.not.i.i108.not = icmp eq i32 %call.i.i107, 1
  br i1 %cmp.not.i.i108.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mode, align 1
  %47 = and i8 %46, 127
  %conv.i = zext i8 %47 to i16
  %call.i112 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 145, ptr noundef null, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  br label %if.end57

cleanup:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #8
  br label %cleanup68

if.end57:                                         ; preds = %cleanup.thread, %if.end43.if.end57_crit_edge
  %call.i113 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 30, ptr noundef null, i16 noundef zeroext 0) #8
  %call.i114 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 31, ptr noundef null, i16 noundef zeroext 0) #8
  %50 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net, align 4
  call void @dm9601_set_multicast(ptr noundef %51)
  %52 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net, align 4
  %54 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mii, align 4
  call void @dm9601_mdio_write(ptr noundef %53, i32 noundef %55, i32 noundef 0, i32 noundef 32768)
  %56 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net, align 4
  %58 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mii, align 4
  call void @dm9601_mdio_write(ptr noundef %57, i32 noundef %59, i32 noundef 4, i32 noundef 1505)
  %call67 = call i32 @mii_nway_restart(ptr noundef %mii) #8
  br label %cleanup68

cleanup68:                                        ; preds = %if.end57, %cleanup, %if.then41, %do.end, %entry.cleanup68_crit_edge
  %ret.2 = phi i32 [ %call, %entry.cleanup68_crit_edge ], [ -19, %do.end ], [ -19, %if.then41 ], [ -19, %cleanup ], [ 0, %if.end57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #8
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #8
  %0 = getelementptr inbounds i8, ptr %ecmd, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %ecmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ecmd, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef 1, i32 noundef 1) #8
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_link_reset.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_link_reset, %if.then)) #8
          to label %do.end8 [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %5 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %6 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %8 to i32
  %or.i = or i32 %shl.i, %conv1.i
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %9 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %duplex, align 2
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_link_reset.__UNIQUE_ID_ddebug350, ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef %or.i, i32 noundef %conv) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9601_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 64
  %.lobit = lshr exact i8 %6, 6
  %7 = zext i8 %.lobit to i32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 2
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %15)
  %cmp3.not = icmp eq i8 %.lobit, %15
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_status.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_status, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !92

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_status.__UNIQUE_ID_ddebug349, ptr noundef %17, ptr noundef nonnull @.str.28, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_rx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp ult i32 %1, 7
  br i1 %cmp, label %do.end, label %if.end, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv9 = zext i8 %7 to i32
  %and = and i32 %conv9, 191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end55, label %if.then17, !prof !94

if.then17:                                        ; preds = %if.end
  %and19 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then17.if.end22_crit_edge, label %if.then21

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 36, i32 14
  %10 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_fifo_errors, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_fifo_errors, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.then17.if.end22_crit_edge
  %and24 = and i32 %conv9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end30_crit_edge, label %if.then26

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %net27 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net27, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 36, i32 12
  %14 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_crc_errors, align 8
  %inc29 = add i32 %15, 1
  store i32 %inc29, ptr %rx_crc_errors, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end22.if.end30_crit_edge
  %and32 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end38_crit_edge, label %if.then34

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %net35 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net35, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 13
  %18 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_frame_errors, align 4
  %inc37 = add i32 %19, 1
  store i32 %inc37, ptr %rx_frame_errors, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end30.if.end38_crit_edge
  %and40 = and i32 %conv9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.if.end46_crit_edge, label %if.then42

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %net43 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net43, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 36, i32 15
  %22 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_missed_errors, align 4
  %inc45 = add i32 %23, 1
  store i32 %inc45, ptr %rx_missed_errors, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.end38.if.end46_crit_edge
  %and48 = and i32 %conv9, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.then50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %net51 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %24 = ptrtoint ptr %net51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net51, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 10
  %26 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_length_errors, align 8
  %inc53 = add i32 %27, 1
  store i32 %inc53, ptr %rx_length_errors, align 8
  br label %cleanup

if.end55:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7 = getelementptr i8, ptr %5, i32 2
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %arrayidx5 = getelementptr i8, ptr %5, i32 1
  %30 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5, align 1
  %conv = zext i8 %31 to i32
  %or = or i32 %shl, %conv
  %sub = add nsw i32 %or, -4
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 3) #8
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then50, %if.end46.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end55 ], [ 0, %if.then50 ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dm9601_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %add = add i32 %1, 2
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %len.0 = phi i32 [ %add, %entry ], [ %inc, %while.body ]
  %and = and i32 %len.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  %2 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %len.0, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool2.not = icmp eq i32 %rem, 0
  br i1 %tobool2.not, label %lor.rhs.while.body_crit_edge, label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %while.cond.while.body_crit_edge
  %inc = add i32 %len.0, 1
  br label %while.cond

while.end:                                        ; preds = %lor.rhs
  %sub = add i32 %len.0, -2
  %sub4 = sub i32 %sub, %1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 2
  br i1 %cmp, label %while.end.if.then_crit_edge, label %lor.lhs.false

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %while.end
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %lor.lhs.false.skb_tailroom.exit_crit_edge

lor.lhs.false.skb_tailroom.exit_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i46 = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i47 = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i48 = sub i32 %sub.ptr.lhs.cast.i46, %sub.ptr.rhs.cast.i47
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %lor.lhs.false.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i48, %cond.false.i ], [ 0, %lor.lhs.false.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %sub4)
  %cmp6 = icmp slt i32 %cond.i, %sub4
  br i1 %cmp6, label %skb_tailroom.exit.if.then_crit_edge, label %skb_tailroom.exit.if.end10_crit_edge

skb_tailroom.exit.if.end10_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

skb_tailroom.exit.if.then_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %skb_tailroom.exit.if.then_crit_edge, %while.end.if.then_crit_edge
  %call7 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 2, i32 noundef %sub4, i32 noundef %flags) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then.cleanup21_crit_edge, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then.cleanup21_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup21

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %skb_tailroom.exit.if.end10_crit_edge
  %skb.addr.0 = phi ptr [ %call7, %if.then.if.end10_crit_edge ], [ %skb, %skb_tailroom.exit.if.end10_crit_edge ]
  %data.i49 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %14 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i49, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 -2
  store ptr %add.ptr.i, ptr %data.i49, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %17, 2
  store i32 %add.i, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %1)
  %tobool12.not = icmp eq i32 %sub, %1
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub4)
  %data_len.i.i50 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i51 = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i51, label %__skb_put.exit, label %do.body3.i, !prof !94

do.body3.i:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #8, !srcloc !95
  unreachable

__skb_put.exit:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i52 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i52, align 8
  %add.ptr.i53 = getelementptr i8, ptr %22, i32 %sub4
  store ptr %add.ptr.i53, ptr %tail.i52, align 8
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i, align 4
  %add.i54 = add i32 %24, %sub4
  store i32 %add.i54, ptr %len1.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %__skb_put.exit, %if.end10.if.end16_crit_edge
  %conv = trunc i32 %sub to i8
  %25 = ptrtoint ptr %data.i49 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i49, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %26, align 1
  %28 = lshr i32 %sub, 8
  %conv18 = trunc i32 %28 to i8
  %29 = load ptr, ptr %data.i49, align 4
  %arrayidx20 = getelementptr i8, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv18, ptr %arrayidx20, align 1
  br label %cleanup21

cleanup21:                                        ; preds = %if.end16, %if.then.cleanup21_crit_edge
  %retval.1 = phi ptr [ %skb.addr.0, %if.end16 ], [ null, %if.then.cleanup21_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %res, align 2, !annotation !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %tobool.not = icmp eq i32 %phy_id, 0
  br i1 %tobool.not, label %if.end9, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_mdio_read.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_mdio_read, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !92

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr i8, ptr %netdev, i32 2548
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_mdio_read.__UNIQUE_ID_ddebug345, ptr noundef %2, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end9:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %loc to i8
  %call10 = call fastcc i32 @dm_read_shared_word(ptr noundef %add.ptr.i, i32 noundef 1, i8 noundef zeroext %conv, ptr noundef nonnull %res)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_mdio_read.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_mdio_read, %if.then24)) #8
          to label %do.end31 [label %if.then24], !srcloc !92

if.then24:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %net25 = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net25, align 4
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %res, align 2
  %7 = call i16 @llvm.bswap.i16(i16 %6)
  %conv26 = zext i16 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_mdio_read.__UNIQUE_ID_ddebug346, ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %loc, i32 noundef %conv26) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %if.end9
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %res, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  %conv32 = zext i16 %10 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.then6, %do.body1
  %retval.0 = phi i32 [ %conv32, %do.end31 ], [ 0, %if.then6 ], [ 0, %do.body1 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9601_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %value.addr.i = alloca i16, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %tobool.not = icmp eq i32 %phy_id, 0
  br i1 %tobool.not, label %do.body11, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_mdio_write.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_mdio_write, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !92

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr i8, ptr %netdev, i32 2548
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_mdio_write.__UNIQUE_ID_ddebug347, ptr noundef %2, ptr noundef nonnull @.str.20) #8
  br label %cleanup

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm9601_mdio_write.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm9601_mdio_write, %if.then23)) #8
          to label %do.end29 [label %if.then23], !srcloc !92

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %net24 = getelementptr i8, ptr %netdev, i32 2548
  %3 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm9601_mdio_write.__UNIQUE_ID_ddebug348, ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef %loc, i32 noundef %val) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %do.body11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.addr.i)
  %5 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %0, ptr %value.addr.i, align 2
  %phy_mutex.i = getelementptr i8, ptr %netdev, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex.i, i32 noundef 0) #8
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef nonnull %value.addr.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 2
  %spec.store.select.i.i = select i1 %cmp3.i.i, i32 -2147483648, i32 %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  %err.0.i.i = select i1 %cmp1.i.i, i32 %call.i.i, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %do.end29.dm_write_shared_word.exit_crit_edge, label %cond.end.i

do.end29.dm_write_shared_word.exit_crit_edge:     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %dm_write_shared_word.exit

cond.end.i:                                       ; preds = %do.end29
  %conv30 = trunc i32 %loc to i8
  %6 = or i8 %conv30, 64
  %conv.i.i = zext i8 %6 to i16
  %call.i1.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i.i, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0) #8
  %call.i2.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 26, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %cond.end.i
  %i.010.i = phi i32 [ 0, %cond.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %tmp.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748) #8
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef nonnull %tmp.i, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.not.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.not.i, label %if.end14.i, label %cleanup.i

if.end14.i:                                       ; preds = %for.body.i
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tmp.i, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp16.i = icmp eq i8 %11, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br i1 %cmp16.i, label %if.end25.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %dm_write_shared_word.exit

for.inc.i:                                        ; preds = %if.end14.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.then22.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then22.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr i8, ptr %netdev, i32 2548
  %12 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15) #11
  br label %dm_write_shared_word.exit

if.end25.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i3.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %dm_write_shared_word.exit

dm_write_shared_word.exit:                        ; preds = %if.end25.i, %if.then22.i, %cleanup.i, %do.end29.dm_write_shared_word.exit_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %dm_write_shared_word.exit, %if.then6, %do.body1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9601_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr i8, ptr %net, i32 2556
  %0 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 128, ptr %data, align 1
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end64_crit_edge

entry.if.end64_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else:                                          ; preds = %entry
  %and6 = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.end64_crit_edge

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp = icmp sgt i32 %4, 64
  br i1 %cmp, label %lor.lhs.false.if.end64_crit_edge, label %if.else13

lor.lhs.false.if.end64_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.else13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16 = icmp eq i32 %4, 0
  br i1 %cmp16, label %if.else13.if.end64_crit_edge, label %for.cond.preheader

if.else13.if.end64_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

for.cond.preheader:                               ; preds = %if.else13
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.094 = load ptr, ptr %mc, align 4
  %cmp23.not95 = icmp eq ptr %ha.094, %mc
  br i1 %cmp23.not95, label %for.cond.preheader.if.end64_crit_edge, label %for.cond.preheader.cond.end_crit_edge

for.cond.preheader.cond.end_crit_edge:            ; preds = %for.cond.preheader
  br label %cond.end

for.cond.preheader.if.end64_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %for.cond.preheader.cond.end_crit_edge
  %ha.096 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.094, %for.cond.preheader.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.096, i32 0, i32 2
  %call25 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #12
  %6 = and i32 %call25, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr50 = lshr i8 %8, 2
  %and51 = and i8 %shr50, 7
  %shl52 = shl i8 1, %and51
  %9 = lshr i8 %8, 5
  %shr53 = zext i8 %9 to i32
  %arrayidx54 = getelementptr i8, ptr %data, i32 %shr53
  %10 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx54, align 1
  %conv57 = or i8 %11, %shl52
  store i8 %conv57, ptr %arrayidx54, align 1
  %12 = ptrtoint ptr %ha.096 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.096, align 4
  %cmp23.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp23.not, label %cond.end.if.end64_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.if.end64_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.end64:                                         ; preds = %cond.end.if.end64_crit_edge, %for.cond.preheader.if.end64_crit_edge, %if.else13.if.end64_crit_edge, %lor.lhs.false.if.end64_crit_edge, %if.else.if.end64_crit_edge, %entry.if.end64_crit_edge
  %rx_ctl.0 = phi i8 [ 49, %if.else13.if.end64_crit_edge ], [ 51, %entry.if.end64_crit_edge ], [ 57, %lor.lhs.false.if.end64_crit_edge ], [ 57, %if.else.if.end64_crit_edge ], [ 49, %for.cond.preheader.if.end64_crit_edge ], [ 49, %cond.end.if.end64_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef %data, i16 noundef zeroext 8) #8
  %conv.i = zext i8 %rx_ctl.0 to i16
  %call.i93 = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_set_mac_address(ptr noundef %net, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end_crit_edge, label %if.end

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %is_valid_ether_addr.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %dev2 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.10, ptr noundef %sa_data) #11
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %net, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  %net.i = getelementptr i8, ptr %net, i32 2548
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %call.i.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %8, i16 noundef zeroext 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_ioctl(ptr noundef %net, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm9601_get_drvinfo(ptr noundef %net, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %info) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_get_link(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #8
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm9601_get_eeprom_len(ptr nocapture noundef readnone %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm9601_get_eeprom(ptr noundef %net, ptr nocapture noundef readonly %eeprom, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %rem = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %rem1 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1)
  %tobool2.not = icmp eq i32 %rem1, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp22.not = icmp ult i32 %5, 2
  br i1 %cmp22.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %div19 = lshr i32 %7, 1
  %cmp = icmp ult i32 %inc, %div19
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %div520 = lshr i32 %9, 1
  %add = add nuw i32 %div520, %i.023
  %conv = trunc i32 %add to i8
  %arrayidx = getelementptr i16, ptr %data, i32 %i.023
  %call.i = tail call fastcc i32 @dm_read_shared_word(ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext %conv, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_read_shared_word(ptr noundef %dev, i32 noundef %phy, i8 noundef zeroext %reg, ptr noundef %value) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mutex = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy)
  %tobool.not = icmp eq i32 %phy, 0
  %or = or i8 %reg, 64
  %cond = select i1 %tobool.not, i8 %reg, i8 %or
  %conv.i = zext i8 %cond to i16
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 12, ptr noundef null, i16 noundef zeroext 0) #8
  %conv.i58 = select i1 %tobool.not, i16 4, i16 12
  %call.i59 = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext %conv.i58, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmp, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %1(i32 noundef 214748) #8
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef nonnull %tmp, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i.not = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tmp, align 1
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp12 = icmp eq i8 %4, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  br i1 %cmp12, label %if.end21, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp3.i.i.le = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i.le = select i1 %cmp3.i.i.le, i32 -22, i32 %call.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  br label %cleanup38

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %if.then18, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then18:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net, align 4
  %cond20 = select i1 %tobool.not, ptr @.str.16, ptr @.str.15
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond20) #11
  br label %cleanup38

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i60 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0) #8
  %call.i61 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef %value, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %cmp.not.i = icmp eq i32 %call.i61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i61)
  %cmp3.i = icmp sgt i32 %call.i61, -1
  %spec.store.select.i = select i1 %cmp3.i, i32 -22, i32 %call.i61
  %err.0.i = select i1 %cmp.not.i, i32 2, i32 %spec.store.select.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_read_shared_word.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_read_shared_word, %if.then30)) #8
          to label %cleanup38 [label %if.then30], !srcloc !92

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %net31 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net31 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net31, align 4
  %conv32 = zext i8 %reg to i32
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %value, align 2
  %conv33 = zext i16 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @dm_read_shared_word.__UNIQUE_ID_ddebug344, ptr noundef %8, ptr noundef nonnull @.str.18, i32 noundef %phy, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %err.0.i) #8
  br label %cleanup38

cleanup38:                                        ; preds = %if.then30, %if.end21, %if.then18, %cleanup
  %ret.0 = phi i32 [ %spec.store.select.i.i.le, %cleanup ], [ -5, %if.then18 ], [ %err.0.i, %if.then30 ], [ %err.0.i, %if.end21 ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_dm9601__351_648_dm9601_driver_init6, !1, !"__initcall__kmod_dm9601__351_648_dm9601_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/dm9601.c", i32 648, i32 1}
!2 = !{ptr @__exitcall_dm9601_driver_exit, !1, !"__exitcall_dm9601_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author352, !4, !"__UNIQUE_ID_author352", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/dm9601.c", i32 650, i32 1}
!5 = !{ptr @__UNIQUE_ID_description353, !6, !"__UNIQUE_ID_description353", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/dm9601.c", i32 651, i32 1}
!7 = !{ptr @__UNIQUE_ID_file354, !8, !"__UNIQUE_ID_file354", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/dm9601.c", i32 652, i32 1}
!9 = !{ptr @__UNIQUE_ID_license355, !8, !"__UNIQUE_ID_license355", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @dm9601_driver, !12, !"dm9601_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/dm9601.c", i32 638, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/dm9601.c", i32 572, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/dm9601.c", i32 562, i32 17}
!17 = !{ptr @dm9601_info, !18, !"dm9601_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/dm9601.c", i32 561, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/dm9601.c", i32 386, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dm9601_bind._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @dm9601_bind._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/dm9601.c", i32 397, i32 3}
!27 = !{ptr @dm9601_bind._entry.5, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dm9601_bind._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/dm9601.c", i32 404, i32 24}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/usb/dm9601.c", i32 414, i32 25}
!33 = !{ptr @dm9601_netdev_ops, !34, !"dm9601_netdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/dm9601.c", i32 341, i32 36}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/dm9601.c", i32 330, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dm9601_set_mac_address._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @dm9601_set_mac_address._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @dm9601_ethtool_ops, !43, !"dm9601_ethtool_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/dm9601.c", i32 278, i32 33}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/dm9601.c", i32 134, i32 24}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/dm9601.c", i32 134, i32 54}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/dm9601.c", i32 134, i32 62}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/dm9601.c", i32 142, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dm_read_shared_word.__UNIQUE_ID_ddebug344, !51, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/dm9601.c", i32 227, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @dm9601_mdio_read.__UNIQUE_ID_ddebug345, !55, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/dm9601.c", i32 233, i32 2}
!60 = !{ptr @dm9601_mdio_read.__UNIQUE_ID_ddebug346, !59, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/dm9601.c", i32 247, i32 3}
!63 = !{ptr @dm9601_mdio_write.__UNIQUE_ID_ddebug347, !62, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/usb/dm9601.c", i32 251, i32 2}
!66 = !{ptr @dm9601_mdio_write.__UNIQUE_ID_ddebug348, !65, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/dm9601.c", i32 177, i32 24}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/dm9601.c", i32 555, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @dm9601_link_reset.__UNIQUE_ID_ddebug350, !70, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/usb/dm9601.c", i32 544, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @dm9601_status.__UNIQUE_ID_ddebug349, !74, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/usb/dm9601.c", i32 451, i32 3}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dm9601_rx_fixup._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dm9601_rx_fixup._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2148967230, i64 2148967235, i64 2148967248, i64 2148967292, i64 2148967326, i64 2148967347}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2154950892, i64 2154951380, i64 2154950929, i64 2154950985, i64 2154951019, i64 2154951043, i64 2154951084, i64 2154951105, i64 2154951133, i64 2154951167}
