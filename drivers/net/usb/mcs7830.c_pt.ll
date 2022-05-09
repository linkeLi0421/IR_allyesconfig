; ModuleID = '/llk/IR_all_yes/drivers/net/usb/mcs7830.c_pt.bc'
source_filename = "../drivers/net/usb/mcs7830.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.121, i32 }
%union.anon.121 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
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
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }

@__initcall__kmod_mcs7830__348_638_mcs7830_driver_init6 = internal global ptr @mcs7830_driver_init, section ".initcall6.init", align 4
@mcs7830_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @driver_name, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr @mcs7830_reset_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mcs7830_driver_exit = internal global ptr @mcs7830_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description349 = internal constant [52 x i8] c"mcs7830.description=USB to network adapter MCS7830)\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [37 x i8] c"mcs7830.file=drivers/net/usb/mcs7830\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [20 x i8] c"mcs7830.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcs7830\00", [24 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MOSCHIP usb-ethernet driver\00", [36 x i8] zeroinitializer }, align 32
@products = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 -26864, i16 30770, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @moschip_info to i32) }, %struct.usb_device_id { i16 3, i16 -26864, i16 30768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @moschip_info to i32) }, %struct.usb_device_id { i16 3, i16 -26864, i16 30512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @moschip_info to i32) }, %struct.usb_device_id { i16 3, i16 3574, i16 33, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @sitecom_info to i32) }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mcs7830_apply_base_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot set MAC address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcs7830_apply_base_config\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/usb/mcs7830.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcs7830_apply_base_config._entry_ptr = internal global ptr @mcs7830_apply_base_config._entry, section ".printk_index", align 4
@mcs7830_apply_base_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot set autoneg\0A\00", [44 x i8] zeroinitializer }, align 32
@mcs7830_apply_base_config._entry_ptr.8 = internal global ptr @mcs7830_apply_base_config._entry.6, section ".printk_index", align 4
@mcs7830_write_phy.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcs7830_write_phy\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"write PHY reg %02x: %04x (%d tries)\0A\00", [59 x i8] zeroinitializer }, align 32
@mcs7830_rev_C_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"applying rev.C fixup\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcs7830_rev_C_fixup\00", [44 x i8] zeroinitializer }, align 32
@mcs7830_rev_C_fixup._entry_ptr = internal global ptr @mcs7830_rev_C_fixup._entry, section ".printk_index", align 4
@moschip_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.13, i32 2080, ptr @mcs7830_bind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcs7830_status, ptr null, ptr @mcs7830_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 2, i32 0 }, [52 x i8] zeroinitializer }, align 32
@sitecom_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.25, i32 2080, ptr @mcs7830_bind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcs7830_status, ptr null, ptr @mcs7830_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 2, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MOSCHIP 7830/7832/7730 usb-NET adapter\00", [57 x i8] zeroinitializer }, align 32
@mcs7830_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 493, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot read MAC address\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcs7830_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mcs7830_bind._entry_ptr = internal global ptr @mcs7830_bind._entry, section ".printk_index", align 4
@mcs7830_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @mcs7830_get_drvinfo, ptr @mcs7830_get_regs_len, ptr @mcs7830_get_regs, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mcs7830_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @mcs7830_set_multicast, ptr @mcs7830_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @mcs7830_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@mcs7830_read_phy.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcs7830_read_phy\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"read PHY reg %02x: %04x (%d tries)\0A\00", [60 x i8] zeroinitializer }, align 32
@mcs7830_status.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcs7830_status\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Status is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mcs7830_rx_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 529, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected tiny rx frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcs7830_rx_fixup\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mcs7830_rx_fixup._entry_ptr = internal global ptr @mcs7830_rx_fixup._entry, section ".printk_index", align 4
@mcs7830_rx_fixup.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx fixup status %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Sitecom LN-30 usb-NET adapter\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"mcs7830_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 627, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 638, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 107, i32 19 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 592, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 397, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 404, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 252, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 306, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"moschip_info\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 572, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"sitecom_info\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 582, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 573, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 493, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"mcs7830_ethtool_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 454, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant [19 x i8] c"mcs7830_netdev_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 468, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 209, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 568, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 529, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 537, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private constant [29 x i8] c"../drivers/net/usb/mcs7830.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 583, i32 20 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_mcs7830_driver_exit, ptr @__initcall__kmod_mcs7830__348_638_mcs7830_driver_init6, ptr @mcs7830_apply_base_config._entry, ptr @mcs7830_apply_base_config._entry.6, ptr @mcs7830_apply_base_config._entry_ptr, ptr @mcs7830_apply_base_config._entry_ptr.8, ptr @mcs7830_bind._entry, ptr @mcs7830_bind._entry_ptr, ptr @mcs7830_driver_exit, ptr @mcs7830_rev_C_fixup._entry, ptr @mcs7830_rev_C_fixup._entry_ptr, ptr @mcs7830_rx_fixup._entry, ptr @mcs7830_rx_fixup._entry_ptr, ptr @mcs7830_driver, ptr @.str, ptr @driver_name, ptr @products, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @moschip_info, ptr @sitecom_info, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mcs7830_ethtool_ops, ptr @mcs7830_netdev_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_apply_base_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_apply_base_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_rev_C_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moschip_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sitecom_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcs7830_rx_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mcs7830_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @mcs7830_driver) #7
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
define internal i32 @mcs7830_reset_resume(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @mcs7830_apply_base_config(ptr noundef %1)
  %call2 = tail call i32 @usbnet_resume(ptr noundef %intf) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcs7830_apply_base_config(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %dummy.i.i = alloca [2 x i8], align 1
  %pause_threshold.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef %3, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc i32 @mcs7830_write_phy(ptr noundef %dev, i8 noundef zeroext 4, i16 noundef zeroext 1505) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call fastcc i32 @mcs7830_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5.i, label %if.end.i.do.end7_crit_edge

if.end.i.do.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.end5.i:                                        ; preds = %if.end.i
  %call4.i = tail call fastcc i32 @mcs7830_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not.i, label %mcs7830_set_autoneg.exit, label %if.end5.i.do.end7_crit_edge

if.end5.i.do.end7_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

mcs7830_set_autoneg.exit:                         ; preds = %if.end5.i
  %call8.i = tail call fastcc i32 @mcs7830_write_phy(ptr noundef %dev, i8 noundef zeroext 0, i16 noundef zeroext 4608) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool3.not = icmp eq i32 %call8.i, 0
  br i1 %tobool3.not, label %if.end10, label %mcs7830_set_autoneg.exit.do.end7_crit_edge

mcs7830_set_autoneg.exit.do.end7_crit_edge:       ; preds = %mcs7830_set_autoneg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %mcs7830_set_autoneg.exit.do.end7_crit_edge, %if.end5.i.do.end7_crit_edge, %if.end.i.do.end7_crit_edge, %if.end.do.end7_crit_edge
  %ret.2.i26 = phi i32 [ %call8.i, %mcs7830_set_autoneg.exit.do.end7_crit_edge ], [ %call.i, %if.end.do.end7_crit_edge ], [ %call1.i, %if.end.i.do.end7_crit_edge ], [ %call4.i, %if.end5.i.do.end7_crit_edge ]
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev9 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev9, ptr noundef nonnull @.str.7) #10
  br label %out

if.end10:                                         ; preds = %mcs7830_set_autoneg.exit
  %data.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %call.i.i20 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data.i.i, i16 noundef zeroext 8) #7
  %config.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %call.i.i21 = tail call i32 @usbnet_write_cmd_async(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef %config.i, i16 noundef zeroext 1) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pause_threshold.i) #7
  %8 = ptrtoint ptr %pause_threshold.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %pause_threshold.i, align 1
  %9 = getelementptr inbounds [2 x i8], ptr %dummy.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy.i.i) #7
  %10 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %dummy.i.i, align 1, !annotation !80
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %9, align 1, !annotation !80
  %call.i.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 21, ptr noundef nonnull %dummy.i.i, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp slt i32 %call.i.i.i, 2
  %.call.i.i.i = select i1 %cmp1.i.i.i, i32 -61, i32 %call.i.i.i
  %retval.0.i.i.i = select i1 %cmp.i.i.i, i32 %call.i.i.i, i32 %.call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp.inv.i.i = icmp sgt i32 %retval.0.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy.i.i) #7
  br i1 %cmp.inv.i.i, label %do.end.i, label %if.end10.if.end.i23_crit_edge

if.end10.if.end.i23_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i23

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev2.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.i, ptr noundef nonnull @.str.11) #10
  %call.i.i22 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef nonnull %pause_threshold.i, i16 noundef zeroext 1) #7
  br label %if.end.i23

if.end.i23:                                       ; preds = %do.end.i, %if.end10.if.end.i23_crit_edge
  call void @msleep(i32 noundef 1) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy.i.i) #7
  %14 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %dummy.i.i, align 1, !annotation !80
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %9, align 1, !annotation !80
  %call.i.i.1.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 21, ptr noundef nonnull %dummy.i.i, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %cmp.i.i.1.i = icmp slt i32 %call.i.i.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1.i)
  %cmp1.i.i.1.i = icmp slt i32 %call.i.i.1.i, 2
  %.call.i.i.1.i = select i1 %cmp1.i.i.1.i, i32 -61, i32 %call.i.i.1.i
  %retval.0.i.i.1.i = select i1 %cmp.i.i.1.i, i32 %call.i.i.1.i, i32 %.call.i.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.1.i)
  %cmp.inv.i.1.i = icmp sgt i32 %retval.0.i.i.1.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy.i.i) #7
  br i1 %cmp.inv.i.1.i, label %do.end.1.i, label %if.end.i23.mcs7830_rev_C_fixup.exit_crit_edge

if.end.i23.mcs7830_rev_C_fixup.exit_crit_edge:    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_rev_C_fixup.exit

do.end.1.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %dev2.1.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2.1.i, ptr noundef nonnull @.str.11) #10
  %call.i.1.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 22, ptr noundef nonnull %pause_threshold.i, i16 noundef zeroext 1) #7
  br label %mcs7830_rev_C_fixup.exit

mcs7830_rev_C_fixup.exit:                         ; preds = %do.end.1.i, %if.end.i23.mcs7830_rev_C_fixup.exit_crit_edge
  call void @msleep(i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pause_threshold.i) #7
  br label %out

out:                                              ; preds = %mcs7830_rev_C_fixup.exit, %do.end7, %do.end
  %ret.0 = phi i32 [ %call.i.i, %do.end ], [ %ret.2.i26, %do.end7 ], [ 0, %mcs7830_rev_C_fixup.exit ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcs7830_write_phy(ptr noundef %dev, i8 noundef zeroext %index, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %le_val = alloca i16, align 2
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %le_val) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #7
  %0 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 33, ptr %cmd, align 1
  %conv = zext i8 %index to i32
  %and = and i8 %index, 31
  %or = or i8 %and, -128
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %or, ptr %0, align 1
  %phy_mutex = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #7
  %3 = tail call i16 @llvm.bswap.i16(i16 %val)
  %4 = ptrtoint ptr %le_val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %le_val, align 2
  %call.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef nonnull %le_val, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call.i45 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp4 = icmp slt i32 %call.i45, 0
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.060 = phi i32 [ %inc, %if.end17.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call.i46 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i = icmp slt i32 %call.i46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46)
  %cmp1.i = icmp slt i32 %call.i46, 2
  %.call.i = select i1 %cmp1.i, i32 -61, i32 %call.i46
  %retval.0.i47 = select i1 %cmp.i, i32 %call.i46, i32 %.call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47)
  %cmp12 = icmp slt i32 %retval.0.i47, 0
  br i1 %cmp12, label %for.body.out_crit_edge, label %lor.lhs.false

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %0, align 1
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end17, label %if.end21

if.end17:                                         ; preds = %lor.lhs.false
  call void @msleep(i32 noundef 1) #7
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end17.out_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcs7830_write_phy.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcs7830_write_phy, %if.then26)) #7
          to label %out [label %if.then26], !srcloc !81

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %conv29 = zext i16 %val to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcs7830_write_phy.__UNIQUE_ID_ddebug345, ptr noundef %dev27, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv29, i32 noundef %i.060) #7
  br label %out

out:                                              ; preds = %if.then26, %if.end21, %if.end17.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call.i45, %if.end.out_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end21 ], [ %retval.0.i47, %for.body.out_crit_edge ], [ -5, %if.end17.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %le_val) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_bind(ptr noundef %dev, ptr noundef %udev) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %2 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef nonnull %addr, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 6
  %.call.i.i = select i1 %cmp1.i.i, i32 -61, i32 %call.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %.call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %tobool.not = icmp sgt i32 %retval.0.i.i, -1
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body.1

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.1:                                       ; preds = %entry
  %call.i.i.1 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef nonnull %addr, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.i.1 = icmp slt i32 %call.i.i.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.1)
  %cmp1.i.i.1 = icmp slt i32 %call.i.i.1, 6
  %.call.i.i.1 = select i1 %cmp1.i.i.1, i32 -61, i32 %call.i.i.1
  %retval.0.i.i.1 = select i1 %cmp.i.i.1, i32 %call.i.i.1, i32 %.call.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.1)
  %tobool.not.1 = icmp sgt i32 %retval.0.i.i.1, -1
  br i1 %tobool.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %call.i.i.2 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef nonnull %addr, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.i.2 = icmp slt i32 %call.i.i.2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.2)
  %cmp1.i.i.2 = icmp slt i32 %call.i.i.2, 6
  %.call.i.i.2 = select i1 %cmp1.i.i.2, i32 -61, i32 %call.i.i.2
  %retval.0.i.i.2 = select i1 %cmp.i.i.2, i32 %call.i.i.2, i32 %.call.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.2)
  %tobool.not.2 = icmp sgt i32 %retval.0.i.i.2, -1
  br i1 %tobool.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %call.i.i.3 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef nonnull %addr, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp.i.i.3 = icmp slt i32 %call.i.i.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.3)
  %cmp1.i.i.3 = icmp slt i32 %call.i.i.3, 6
  %.call.i.i.3 = select i1 %cmp1.i.i.3, i32 -61, i32 %call.i.i.3
  %retval.0.i.i.3 = select i1 %cmp.i.i.3, i32 %call.i.i.3, i32 %.call.i.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.3)
  %tobool.not.3 = icmp sgt i32 %retval.0.i.i.3, -1
  br i1 %tobool.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.4 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef nonnull %addr, i16 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %cmp.i.i.4 = icmp slt i32 %call.i.i.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.4)
  %cmp1.i.i.4 = icmp slt i32 %call.i.i.4, 6
  %.call.i.i.4 = select i1 %cmp1.i.i.4, i32 -61, i32 %call.i.i.4
  %retval.0.i.i.4 = select i1 %cmp.i.i.4, i32 %call.i.i.4, i32 %.call.i.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.4)
  %tobool.not.4 = icmp sgt i32 %retval.0.i.i.4, -1
  br label %for.end

for.end:                                          ; preds = %for.body.4, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %entry.for.end_crit_edge
  %retval.0.i.i.lcssa = phi i32 [ %retval.0.i.i, %entry.for.end_crit_edge ], [ %retval.0.i.i.1, %for.body.1.for.end_crit_edge ], [ %retval.0.i.i.2, %for.body.2.for.end_crit_edge ], [ %retval.0.i.i.3, %for.body.3.for.end_crit_edge ], [ %retval.0.i.i.4, %for.body.4 ]
  %tobool.not.lcssa = phi i1 [ %tobool.not, %entry.for.end_crit_edge ], [ %tobool.not.1, %for.body.1.for.end_crit_edge ], [ %tobool.not.2, %for.body.2.for.end_crit_edge ], [ %tobool.not.3, %for.body.3.for.end_crit_edge ], [ %tobool.not.4, %for.body.4 ]
  br i1 %tobool.not.lcssa, label %if.end, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.14) #10
  br label %out

if.end:                                           ; preds = %for.end
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  %data.i.i = getelementptr i8, ptr %1, i32 2556
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %data.i.i, align 1
  %config.i = getelementptr i8, ptr %1, i32 2564
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %config.i, align 1
  %flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 11, ptr %config.i, align 1
  br label %mcs7830_data_set_multicast.exit

if.else.i:                                        ; preds = %if.end
  %and9.i = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.else.i.mcs7830_data_set_multicast.exit_crit_edge

if.else.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %mc.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.i = icmp sgt i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20.i = icmp eq i32 %11, 0
  %or.cond.i = or i1 %cmp.i, %cmp20.i
  br i1 %or.cond.i, label %lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %12 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.097.i = load ptr, ptr %mc.i, align 4
  %cmp28.not98.i = icmp eq ptr %ha.097.i, %mc.i
  br i1 %cmp28.not98.i, label %for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge, label %for.cond.preheader.i.cond.end.i_crit_edge

for.cond.preheader.i.cond.end.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %cond.end.i

for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %for.cond.preheader.i.cond.end.i_crit_edge
  %ha.099.i = phi ptr [ %ha.0.i, %cond.end.i.cond.end.i_crit_edge ], [ %ha.097.i, %for.cond.preheader.i.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.099.i, i32 0, i32 2
  %call31.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #11
  %13 = and i32 %call31.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shr56.i = lshr i8 %15, 2
  %and57.i = and i8 %shr56.i, 7
  %shl58.i = shl i8 1, %and57.i
  %16 = lshr i8 %15, 5
  %shr60.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr %data.i.i, i32 0, i32 %shr60.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv63.i = or i8 %18, %shl58.i
  store i8 %conv63.i, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %ha.099.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0.i = load ptr, ptr %ha.099.i, align 4
  %cmp28.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp28.not.i, label %cond.end.i.mcs7830_data_set_multicast.exit_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.end.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

mcs7830_data_set_multicast.exit:                  ; preds = %cond.end.i.mcs7830_data_set_multicast.exit_crit_edge, %for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge, %lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge, %if.else.i.mcs7830_data_set_multicast.exit_crit_edge, %if.then.i
  %call6 = call fastcc i32 @mcs7830_apply_base_config(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %mcs7830_data_set_multicast.exit.out_crit_edge

mcs7830_data_set_multicast.exit.out_crit_edge:    ; preds = %mcs7830_data_set_multicast.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end9:                                          ; preds = %mcs7830_data_set_multicast.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mcs7830_ethtool_ops, ptr %ethtool_ops, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mcs7830_netdev_ops, ptr %netdev_ops, align 8
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %22 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1515, ptr %rx_urb_size, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %23 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mcs7830_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %24 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mcs7830_mdio_write, ptr %mdio_write, align 4
  %dev12 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %25 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %dev12, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %26 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 63, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %27 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 31, ptr %reg_num_mask, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  %add.ptr = getelementptr i8, ptr %29, i32 1
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %31 to i32
  %32 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv, ptr %mii, align 4
  %call16 = call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %udev) #7
  br label %out

out:                                              ; preds = %if.end9, %mcs7830_data_set_multicast.exit.out_crit_edge, %do.end
  %ret.1 = phi i32 [ %retval.0.i.i.lcssa, %do.end ], [ %call6, %mcs7830_data_set_multicast.exit.out_crit_edge ], [ %call16, %if.end9 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp1 = icmp ne i8 %5, 32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %conv4 = zext i1 %cmp1 to i32
  %11 = xor i1 %cmp1, %tobool.not.i
  br i1 %11, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %cmp1, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcs7830_status.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcs7830_status, %if.then18)) #7
          to label %cleanup [label %if.then18], !srcloc !81

if.then18:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mcs7830_status.__UNIQUE_ID_ddebug347, ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %conv4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_rx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %1, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp6.not = icmp eq i8 %13, 32
  br i1 %cmp6.not, label %if.end.if.end43_crit_edge, label %do.body9

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcs7830_rx_fixup.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcs7830_rx_fixup, %if.then12)) #7
          to label %do.end18 [label %if.then12], !srcloc !81

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcs7830_rx_fixup.__UNIQUE_ID_ddebug346, ptr noundef %dev14, ptr noundef nonnull @.str.24, i32 noundef %conv5) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then12, %do.body9
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 36, i32 4
  %18 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and = and i32 %conv5, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.end18.if.end26_crit_edge, label %if.then22

do.end18.if.end26_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 36, i32 10
  %22 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_length_errors, align 8
  %inc25 = add i32 %23, 1
  store i32 %inc25, ptr %rx_length_errors, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %do.end18.if.end26_crit_edge
  %and28 = and i32 %conv5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 36, i32 13
  %26 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_frame_errors, align 4
  %inc33 = add i32 %27, 1
  store i32 %inc33, ptr %rx_frame_errors, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %and36 = and i32 %conv5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %if.then38

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 12
  %30 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_crc_errors, align 8
  %inc41 = add i32 %31, 1
  store i32 %inc41, ptr %rx_crc_errors, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.end34.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp45 = icmp ne i32 %33, 0
  %conv46 = zext i1 %cmp45 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv46, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %location) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %location to i8
  %call1 = tail call fastcc i32 @mcs7830_read_phy(ptr noundef %add.ptr.i, i8 noundef zeroext %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %conv = trunc i32 %location to i8
  %conv1 = trunc i32 %val to i16
  %call2 = tail call fastcc i32 @mcs7830_write_phy(ptr noundef %add.ptr.i, i8 noundef zeroext %conv, i16 noundef zeroext %conv1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_get_drvinfo(ptr noundef %net, ptr noundef %drvinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %drvinfo) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_get_regs_len(ptr noundef %net) #2 align 64 {
entry:
  %dummy.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy.i) #7
  %0 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dummy.i, align 1, !annotation !80
  %1 = getelementptr inbounds [2 x i8], ptr %dummy.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !80
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 21, ptr noundef nonnull %dummy.i, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 2
  %.call.i.i = select i1 %cmp1.i.i, i32 -61, i32 %call.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %.call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.inv.i = icmp slt i32 %retval.0.i.i, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy.i) #7
  %switch.select4 = select i1 %cmp.inv.i, i32 21, i32 32
  ret i32 %switch.select4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_get_regs(ptr noundef %net, ptr nocapture noundef %regs, ptr noundef %data) #2 align 64 {
entry:
  %dummy.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy.i) #7
  %0 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dummy.i, align 1, !annotation !80
  %1 = getelementptr inbounds [2 x i8], ptr %dummy.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !80
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 21, ptr noundef nonnull %dummy.i, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 2
  %.call.i.i = select i1 %cmp1.i.i, i32 -61, i32 %call.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %.call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i)
  %cmp.inv.i = icmp slt i32 %retval.0.i.i, 1
  %..i = select i1 %cmp.inv.i, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy.i) #7
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %..i, ptr %version, align 4
  %len = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %conv = trunc i32 %5 to i16
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data, i16 noundef zeroext %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcs7830_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i.i = getelementptr i8, ptr %net, i32 2556
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %data.i.i, align 1
  %config.i = getelementptr i8, ptr %net, i32 2564
  %1 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %config.i, align 1
  %flags.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 11, ptr %config.i, align 1
  br label %mcs7830_data_set_multicast.exit

if.else.i:                                        ; preds = %entry
  %and9.i = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.else.i.mcs7830_data_set_multicast.exit_crit_edge

if.else.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %mc.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp.i = icmp sgt i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp20.i = icmp eq i32 %6, 0
  %or.cond.i = or i1 %cmp.i, %cmp20.i
  br i1 %or.cond.i, label %lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge, label %for.cond.preheader.i

lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.097.i = load ptr, ptr %mc.i, align 4
  %cmp28.not98.i = icmp eq ptr %ha.097.i, %mc.i
  br i1 %cmp28.not98.i, label %for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge, label %for.cond.preheader.i.cond.end.i_crit_edge

for.cond.preheader.i.cond.end.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %cond.end.i

for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %for.cond.preheader.i.cond.end.i_crit_edge
  %ha.099.i = phi ptr [ %ha.0.i, %cond.end.i.cond.end.i_crit_edge ], [ %ha.097.i, %for.cond.preheader.i.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.099.i, i32 0, i32 2
  %call31.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #11
  %8 = and i32 %call31.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shr56.i = lshr i8 %10, 2
  %and57.i = and i8 %shr56.i, 7
  %shl58.i = shl i8 1, %and57.i
  %11 = lshr i8 %10, 5
  %shr60.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr %data.i.i, i32 0, i32 %shr60.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv63.i = or i8 %13, %shl58.i
  store i8 %conv63.i, ptr %arrayidx.i, align 1
  %14 = ptrtoint ptr %ha.099.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %ha.0.i = load ptr, ptr %ha.099.i, align 4
  %cmp28.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp28.not.i, label %cond.end.i.mcs7830_data_set_multicast.exit_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.end.i.mcs7830_data_set_multicast.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcs7830_data_set_multicast.exit

mcs7830_data_set_multicast.exit:                  ; preds = %cond.end.i.mcs7830_data_set_multicast.exit_crit_edge, %for.cond.preheader.i.mcs7830_data_set_multicast.exit_crit_edge, %lor.lhs.false.i.mcs7830_data_set_multicast.exit_crit_edge, %if.else.i.mcs7830_data_set_multicast.exit_crit_edge, %if.then.i
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %call.i.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data.i.i, i16 noundef zeroext 8) #7
  %call.i.i5 = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef %config.i, i16 noundef zeroext 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_set_mac_address(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef %sa_data, i16 noundef zeroext 6) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %7, %if.end4.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcs7830_ioctl(ptr noundef %net, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %call2 = tail call i32 @generic_mii_ioctl(ptr noundef %mii, ptr noundef %ifr_ifru.i, i32 noundef %cmd, ptr noundef null) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcs7830_read_phy(ptr noundef %dev, i8 noundef zeroext %index) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  %cmd = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #7
  %1 = getelementptr inbounds [2 x i8], ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 65, ptr %cmd, align 1
  %conv = zext i8 %index to i32
  %or = or i8 %index, -128
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or, ptr %1, align 1
  %phy_mutex = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #7
  %call.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 13, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry.for.body_crit_edge
  %i.063 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i44 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 12, ptr noundef nonnull %cmd, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp.i = icmp slt i32 %call.i44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i44)
  %cmp1.i = icmp slt i32 %call.i44, 2
  %.call.i = select i1 %cmp1.i, i32 -61, i32 %call.i44
  %retval.0.i45 = select i1 %cmp.i, i32 %call.i44, i32 %.call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i45)
  %cmp7 = icmp slt i32 %retval.0.i45, 0
  br i1 %cmp7, label %for.body.out_crit_edge, label %lor.lhs.false

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false:                                    ; preds = %for.body
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end11, label %if.end15

if.end11:                                         ; preds = %lor.lhs.false
  call void @msleep(i32 noundef 1) #7
  %inc = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end11.out_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end15:                                         ; preds = %lor.lhs.false
  %call.i46 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 14, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef nonnull %val, i16 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46)
  %cmp1.i48 = icmp slt i32 %call.i46, 2
  %.call.i49 = select i1 %cmp1.i48, i32 -61, i32 %call.i46
  %retval.0.i50 = select i1 %cmp.i47, i32 %call.i46, i32 %.call.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i50)
  %cmp17 = icmp slt i32 %retval.0.i50, 0
  br i1 %cmp17, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv21 = zext i16 %9 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcs7830_read_phy.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcs7830_read_phy, %if.then26)) #7
          to label %out [label %if.then26], !srcloc !81

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %conv29 = zext i16 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcs7830_read_phy.__UNIQUE_ID_ddebug344, ptr noundef %dev27, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %conv29, i32 noundef %i.063) #7
  br label %out

out:                                              ; preds = %if.then26, %if.end20, %if.end15.out_crit_edge, %if.end11.out_crit_edge, %for.body.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %retval.0.i50, %if.end15.out_crit_edge ], [ %conv21, %if.then26 ], [ %conv21, %if.end20 ], [ %retval.0.i45, %for.body.out_crit_edge ], [ -5, %if.end11.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %phy_mutex) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_mcs7830__348_638_mcs7830_driver_init6, !1, !"__initcall__kmod_mcs7830__348_638_mcs7830_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/mcs7830.c", i32 638, i32 1}
!2 = !{ptr @__exitcall_mcs7830_driver_exit, !1, !"__exitcall_mcs7830_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description349, !4, !"__UNIQUE_ID_description349", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/mcs7830.c", i32 640, i32 1}
!5 = !{ptr @__UNIQUE_ID_file350, !6, !"__UNIQUE_ID_file350", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/mcs7830.c", i32 641, i32 1}
!7 = !{ptr @__UNIQUE_ID_license351, !6, !"__UNIQUE_ID_license351", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mcs7830_driver, !10, !"mcs7830_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/mcs7830.c", i32 627, i32 26}
!11 = !{ptr @driver_name, !12, !"driver_name", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/mcs7830.c", i32 107, i32 19}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/mcs7830.c", i32 397, i32 3}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcs7830_apply_base_config._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @mcs7830_apply_base_config._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/mcs7830.c", i32 404, i32 3}
!23 = !{ptr @mcs7830_apply_base_config._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcs7830_apply_base_config._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/mcs7830.c", i32 252, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mcs7830_write_phy.__UNIQUE_ID_ddebug345, !26, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/mcs7830.c", i32 306, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mcs7830_rev_C_fixup._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mcs7830_rev_C_fixup._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @products, !35, !"products", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/mcs7830.c", i32 592, i32 35}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/mcs7830.c", i32 573, i32 17}
!38 = !{ptr @moschip_info, !39, !"moschip_info", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/mcs7830.c", i32 572, i32 33}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/mcs7830.c", i32 493, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mcs7830_bind._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @mcs7830_bind._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mcs7830_ethtool_ops, !47, !"mcs7830_ethtool_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/mcs7830.c", i32 454, i32 33}
!48 = !{ptr @mcs7830_netdev_ops, !49, !"mcs7830_netdev_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/mcs7830.c", i32 468, i32 36}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/mcs7830.c", i32 209, i32 2}
!52 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mcs7830_read_phy.__UNIQUE_ID_ddebug344, !51, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/mcs7830.c", i32 568, i32 3}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mcs7830_status.__UNIQUE_ID_ddebug347, !55, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/mcs7830.c", i32 529, i32 3}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mcs7830_rx_fixup._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @mcs7830_rx_fixup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/usb/mcs7830.c", i32 537, i32 3}
!66 = !{ptr @mcs7830_rx_fixup.__UNIQUE_ID_ddebug346, !65, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/mcs7830.c", i32 583, i32 20}
!69 = !{ptr @sitecom_info, !70, !"sitecom_info", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/mcs7830.c", i32 582, i32 33}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{i64 2148870840, i64 2148870845, i64 2148870858, i64 2148870902, i64 2148870936, i64 2148870957}
