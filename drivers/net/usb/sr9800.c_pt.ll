; ModuleID = '/llk/IR_all_yes/drivers/net/usb/sr9800.c_pt.bc'
source_filename = "../drivers/net/usb/sr9800.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i16, i16, i16 }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.122, i32 }
%union.anon.122 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sr9800_int_data = type <{ i16, i8, i16, i8, i16 }>
%struct.ethtool_cmd = type { i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i32, i32, i16, i8, i8, i32, [2 x i32] }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.105, %union.anon.106 }
%union.anon.105 = type { [16 x i8] }
%union.anon.106 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }

@SR9800_BULKIN_SIZE = dso_local global { [8 x %struct.anon], [48 x i8] } { [8 x %struct.anon] [%struct.anon { i16 2048, i16 -32768, i16 -32767 }, %struct.anon { i16 4096, i16 -32512, i16 -32441 }, %struct.anon { i16 6144, i16 -32256, i16 -32277 }, %struct.anon { i16 8192, i16 -32000, i16 -31785 }, %struct.anon { i16 16384, i16 -31744, i16 -31458 }, %struct.anon { i16 20480, i16 -31488, i16 -31130 }, %struct.anon { i16 24576, i16 -31232, i16 -30802 }, %struct.anon { i16 -32768, i16 -30976, i16 -30147 }], [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_sr9800__367_870_sr_driver_init6 = internal global ptr @sr_driver_init, section ".initcall6.init", align 4
@sr_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sr_driver_exit = internal global ptr @sr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author368 = internal constant [52 x i8] c"sr9800.author=Liu Junliang <liujunliang_ljl@163.com\00", section ".modinfo", align 1
@__UNIQUE_ID_version369 = internal constant [27 x i8] c"sr9800.version=11-Nov-2013\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sr9800\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"11-Nov-2013\00", [20 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_description370 = internal constant [75 x i8] c"sr9800.description=SR9800 USB 2.0 USB2NET Dev : http://www.corechip-sz.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file371 = internal constant [35 x i8] c"sr9800.file=drivers/net/usb/sr9800\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [19 x i8] c"sr9800.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CoreChips\00", [22 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4070, i16 -26624, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @sr9800_driver_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sr9800_driver_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.4, i32 10336, ptr @sr9800_bind, ptr null, ptr @sr9800_reset, ptr null, ptr null, ptr null, ptr @sr_status, ptr @sr9800_link_reset, ptr @sr_rx_fixup, ptr @sr_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CoreChip SR9800 USB 2.0 Ethernet\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set LINK LED failed : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sr9800_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/sr9800.c\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read MAC address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.9, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac addr : %pM\0A\00", [16 x i8] zeroinitializer }, align 32
@sr9800_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @sr_set_multicast, ptr @sr_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @sr_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sr9800_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @sr_get_drvinfo, ptr null, ptr null, ptr @sr_get_wol, ptr @sr_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @sr_get_link, ptr null, ptr @sr_get_eeprom_len, ptr @sr_get_eeprom, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.10, i8 0, i8 -61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Select PHY #1 failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.11, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RX_CTL is 0x%04x after software reset\0A\00", [57 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.12, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RX_CTL is 0x%04x setting to 0x0000\0A\00", [60 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.13, i8 0, i8 -56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PHYID=0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Reset RX_CTL failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sr9800_bind.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.15, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s : setting rx_urb_size with : %zu\0A\00", [59 x i8] zeroinitializer }, align 32
@sr_mdio_read.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr_mdio_read\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s : phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable software MII access\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable hardware MII access\0A\00", [58 x i8] zeroinitializer }, align 32
@sr_mdio_write.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.20, ptr @.str.7, ptr @.str.21, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_mdio_write\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s : phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s : Error reading PHYID register:%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.sr_get_phy_addr = private unnamed_addr constant [16 x i8] c"sr_get_phy_addr\00", align 1
@sr_get_phy_addr.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.sr_get_phy_addr, ptr @.str.7, ptr @.str.23, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s : returning 0x%04x\0A\00", [41 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to power down PHY : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to reset PHY: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to power up PHY: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send software reset:%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error reading RX_CTL register:%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@sr_write_rx_ctl.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.7, ptr @.str.30, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sr_write_rx_ctl\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s : mode = 0x%04x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write RX_CTL mode to 0x%04x:%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sr9800_set_default_mode.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.7, ptr @.str.33, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sr9800_set_default_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sr9800_set_default_mode.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.7, ptr @.str.34, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", [52 x i8] zeroinitializer }, align 32
@sr9800_set_default_mode.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.7, ptr @.str.35, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Medium Status:0x%04x after all initializations\0A\00", [48 x i8] zeroinitializer }, align 32
@sr_write_medium_mode.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.7, ptr @.str.30, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sr_write_medium_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to write Medium Mode mode to 0x%04x:%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error reading Medium Status register:%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@sr9800_reset.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.7, ptr @.str.10, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sr9800_reset\00", [19 x i8] zeroinitializer }, align 32
@sr9800_reset.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.7, ptr @.str.11, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sr9800_reset.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.7, ptr @.str.12, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sr_write_gpio.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.7, ptr @.str.41, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr_write_gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s : value = 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to write GPIO value 0x%04x:%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@sr_status.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.43, ptr @.str.7, ptr @.str.44, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sr_status\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Link Status is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@sr9800_link_reset.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.7, ptr @.str.46, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sr9800_link_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s : speed: %u duplex: %d mode: 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : Bad Header Length\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.sr_rx_fixup = private unnamed_addr constant [12 x i8] c"sr_rx_fixup\00", align 1
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s : Bad RX Length %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s : Bad SKB Length %d\0A\00", [40 x i8] zeroinitializer }, align 32
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CoreChips\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"11-Nov-2013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"SR9800_BULKIN_SIZE\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../drivers/net/usb/sr9800.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 166, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"sr_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 860, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 873, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 861, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 850, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"sr9800_driver_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 839, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 840, i32 17 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 753, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 760, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 764, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"sr9800_netdev_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 678, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"sr9800_ethtool_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 520, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 781, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 791, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 797, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 801, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 814, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 831, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 346, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 174, i32 24 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 184, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 359, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 195, i32 24 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 199, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 698, i32 24 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 706, i32 24 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 714, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 214, i32 24 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 227, i32 24 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 241, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 245, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 576, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 586, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 590, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 270, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 274, i32 7 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 259, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 613, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 283, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 286, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 162, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 549, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 79, i32 25 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 86, i32 25 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [28 x i8] c"../drivers/net/usb/sr9800.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 102, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"str.50\00", align 1
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_description370, ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__UNIQUE_ID_version369, ptr @__exitcall_sr_driver_exit, ptr @__initcall__kmod_sr9800__367_870_sr_driver_init6, ptr @__modver_attr, ptr @sr_driver_exit, ptr @SR9800_BULKIN_SIZE, ptr @sr_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @products, ptr @sr9800_driver_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sr9800_netdev_ops, ptr @sr9800_ethtool_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @str, ptr @str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SR9800_BULKIN_SIZE to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9800_driver_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9800_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr9800_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sr_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @sr_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

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
define internal i32 @sr9800_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %v.i309 = alloca i16, align 2
  %v.i = alloca i16, align 2
  %buf.i = alloca [2 x i8], align 2
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %eeprom_len = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 4
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %1 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %eeprom_len, align 1
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #8
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 112, i8 noundef zeroext 64, i16 noundef zeroext 16512, i16 noundef zeroext 16385, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp2.i, i32 -22, i32 %call.i
  %err.0.i = select i1 %cmp.not.i, i32 0, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %err.0.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i277 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 19, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %addr, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i277)
  %cmp.not.i278 = icmp eq i32 %call.i277, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i277)
  %cmp2.i279 = icmp sgt i32 %call.i277, -1
  %spec.store.select.i280 = select i1 %cmp2.i279, i32 -22, i32 %call.i277
  %err.0.i281 = select i1 %cmp.not.i278, i32 6, i32 %spec.store.select.i280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i281)
  %cmp4 = icmp slt i32 %err.0.i281, 0
  br i1 %cmp4, label %do.body6, label %if.end15

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !149

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %net11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net11, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug360, ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %err.0.i281) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %net16 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net16, align 4
  call void @dev_addr_mod(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then31)) #8
          to label %do.end38 [label %if.then31], !srcloc !149

if.then31:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net16, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug361, ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef %11) #8
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %if.end15
  %12 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net16, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev40 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %14 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev40, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %15 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sr_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %16 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sr_mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %17 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %phy_id_mask, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %18 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31, ptr %reg_num_mask, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %buf.i, align 2, !annotation !150
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %20, align 1, !annotation !150
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 25, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp2.i.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i = select i1 %cmp2.i.i, i32 -22, i32 %call.i.i
  %err.0.i.i = select i1 %cmp.not.i.i, i32 2, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body1.i

if.then.i:                                        ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sr_get_phy_addr, i32 noundef %err.0.i.i) #11
  br label %sr_get_phy_addr.exit

do.body1.i:                                       ; preds = %do.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_get_phy_addr.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then5.i)) #8
          to label %do.end10.i [label %if.then5.i], !srcloc !149

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net16, align 4
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %buf.i, align 2
  %conv.i = zext i16 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_get_phy_addr.__UNIQUE_ID_ddebug347, ptr noundef %25, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.sr_get_phy_addr, i32 noundef %conv.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %do.body1.i
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %20, align 1
  %conv11.i = zext i8 %29 to i32
  br label %sr_get_phy_addr.exit

sr_get_phy_addr.exit:                             ; preds = %do.end10.i, %if.then.i
  %ret.0.i = phi i32 [ %spec.store.select.i.i, %if.then.i ], [ %conv11.i, %do.end10.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %30 = ptrtoint ptr %mii to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ret.0.i, ptr %mii, align 4
  %31 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net16, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sr9800_netdev_ops, ptr %netdev_ops, align 8
  %34 = load ptr, ptr %net16, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sr9800_ethtool_ops, ptr %ethtool_ops, align 16
  %36 = load i32, ptr %mii, align 4
  %and = and i32 %36, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp51 = icmp eq i32 %and, 16
  %conv = zext i1 %cmp51 to i16
  %call.i282 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282)
  %cmp.not.i283 = icmp eq i32 %call.i282, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i282)
  %cmp2.i284 = icmp sgt i32 %call.i282, -1
  %spec.store.select.i285 = select i1 %cmp2.i284, i32 -22, i32 %call.i282
  %err.0.i286 = select i1 %cmp.not.i283, i32 0, i32 %spec.store.select.i285
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i286)
  %cmp53 = icmp slt i32 %err.0.i286, 0
  br i1 %cmp53, label %do.body57, label %if.end76

do.body57:                                        ; preds = %sr_get_phy_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then69)) #8
          to label %cleanup [label %if.then69], !srcloc !149

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug362, ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %err.0.i286) #8
  br label %cleanup

if.end76:                                         ; preds = %sr_get_phy_addr.exit
  %call.i.i.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 96, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp2.i.i.i = icmp sgt i32 %call.i.i.i, -1
  %spec.store.select.i.i.i = select i1 %cmp2.i.i.i, i32 -22, i32 %call.i.i.i
  %err.0.i.i.i = select i1 %cmp.not.i.i.i, i32 0, i32 %spec.store.select.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %cmp.i.i = icmp slt i32 %err.0.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.i287, label %if.end.i

if.then.i287:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i.i) #11
  %41 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.24, i32 noundef %err.0.i.i.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end76
  call void @msleep(i32 noundef 20) #8
  %call.i.i34.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %cmp.not.i.i35.i = icmp eq i32 %call.i.i34.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i34.i)
  %cmp2.i.i36.i = icmp sgt i32 %call.i.i34.i, -1
  %spec.store.select.i.i37.i = select i1 %cmp2.i.i36.i, i32 -22, i32 %call.i.i34.i
  %err.0.i.i38.i = select i1 %cmp.not.i.i35.i, i32 0, i32 %spec.store.select.i.i37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i38.i)
  %cmp.i39.i = icmp slt i32 %err.0.i.i38.i, 0
  br i1 %cmp.i39.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i38.i) #11
  %45 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.25, i32 noundef %err.0.i.i38.i) #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 600) #8
  %call.i.i43.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43.i)
  %cmp.not.i.i44.i = icmp eq i32 %call.i.i43.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i43.i)
  %cmp2.i.i45.i = icmp sgt i32 %call.i.i43.i, -1
  %spec.store.select.i.i46.i = select i1 %cmp2.i.i45.i, i32 -22, i32 %call.i.i43.i
  %err.0.i.i47.i = select i1 %cmp.not.i.i44.i, i32 0, i32 %spec.store.select.i.i46.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i47.i)
  %cmp.i48.i = icmp slt i32 %err.0.i.i47.i, 0
  br i1 %cmp.i48.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i47.i) #11
  %49 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.26, i32 noundef %err.0.i.i47.i) #11
  br label %cleanup

if.end10.i:                                       ; preds = %if.end5.i
  call void @msleep(i32 noundef 20) #8
  %call.i.i52.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52.i)
  %cmp.not.i.i53.i = icmp eq i32 %call.i.i52.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52.i)
  %cmp2.i.i54.i = icmp sgt i32 %call.i.i52.i, -1
  %spec.store.select.i.i55.i = select i1 %cmp2.i.i54.i, i32 -22, i32 %call.i.i52.i
  %err.0.i.i56.i = select i1 %cmp.not.i.i53.i, i32 0, i32 %spec.store.select.i.i55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i56.i)
  %cmp.i57.i = icmp slt i32 %err.0.i.i56.i, 0
  br i1 %cmp.i57.i, label %if.then13.i, label %if.end81

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %52, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i56.i) #11
  %53 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull @.str.25, i32 noundef %err.0.i.i56.i) #11
  br label %cleanup

if.end81:                                         ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i) #8
  %55 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %v.i, align 2, !annotation !150
  %call.i.i289 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i289)
  %cmp.not.i.i290 = icmp eq i32 %call.i.i289, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i289)
  %cmp2.i.i291 = icmp sgt i32 %call.i.i289, -1
  %spec.store.select.i.i292 = select i1 %cmp2.i.i291, i32 -22, i32 %call.i.i289
  %err.0.i.i293 = select i1 %cmp.not.i.i290, i32 2, i32 %spec.store.select.i.i292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i293)
  %cmp.i294 = icmp slt i32 %err.0.i.i293, 0
  br i1 %cmp.i294, label %if.then.i296, label %if.end.i298

if.then.i296:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.28, i32 noundef %err.0.i.i293) #11
  br label %sr_read_rx_ctl.exit

if.end.i298:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %v.i, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #8
  %conv.i297 = zext i16 %60 to i32
  br label %sr_read_rx_ctl.exit

sr_read_rx_ctl.exit:                              ; preds = %if.end.i298, %if.then.i296
  %ret.0.i299 = phi i32 [ %spec.store.select.i.i292, %if.then.i296 ], [ %conv.i297, %if.end.i298 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then96)) #8
          to label %do.end103 [label %if.then96], !srcloc !149

if.then96:                                        ; preds = %sr_read_rx_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net16, align 4
  %conv98 = and i32 %ret.0.i299, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug363, ptr noundef %62, ptr noundef nonnull @.str.11, i32 noundef %conv98) #8
  br label %do.end103

do.end103:                                        ; preds = %if.then96, %sr_read_rx_ctl.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then.i301)) #8
          to label %do.end5.i [label %if.then.i301], !srcloc !149

if.then.i301:                                     ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, ptr noundef %64, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 0) #8
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i301, %do.end103
  %call.i.i302 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i302)
  %cmp.not.i.i303 = icmp eq i32 %call.i.i302, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i302)
  %cmp2.i.i304 = icmp sgt i32 %call.i.i302, -1
  %spec.store.select.i.i305 = select i1 %cmp2.i.i304, i32 -22, i32 %call.i.i302
  %err.0.i.i306 = select i1 %cmp.not.i.i303, i32 0, i32 %spec.store.select.i.i305
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i306)
  %cmp.i307 = icmp slt i32 %err.0.i.i306, 0
  br i1 %cmp.i307, label %sr_write_rx_ctl.exit.thread, label %if.end108

sr_write_rx_ctl.exit.thread:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %66, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %err.0.i.i306) #11
  br label %cleanup

if.end108:                                        ; preds = %do.end5.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i309) #8
  %67 = ptrtoint ptr %v.i309 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -1, ptr %v.i309, align 2, !annotation !150
  %call.i.i310 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i309, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i310)
  %cmp.not.i.i311 = icmp eq i32 %call.i.i310, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i310)
  %cmp2.i.i312 = icmp sgt i32 %call.i.i310, -1
  %spec.store.select.i.i313 = select i1 %cmp2.i.i312, i32 -22, i32 %call.i.i310
  %err.0.i.i314 = select i1 %cmp.not.i.i311, i32 2, i32 %spec.store.select.i.i313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i314)
  %cmp.i315 = icmp slt i32 %err.0.i.i314, 0
  br i1 %cmp.i315, label %if.then.i317, label %if.end.i319

if.then.i317:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.28, i32 noundef %err.0.i.i314) #11
  br label %sr_read_rx_ctl.exit322

if.end.i319:                                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %v.i309 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %v.i309, align 2
  %72 = call i16 @llvm.bswap.i16(i16 %71) #8
  %conv.i318 = zext i16 %72 to i32
  br label %sr_read_rx_ctl.exit322

sr_read_rx_ctl.exit322:                           ; preds = %if.end.i319, %if.then.i317
  %ret.0.i320 = phi i32 [ %spec.store.select.i.i313, %if.then.i317 ], [ %conv.i318, %if.end.i319 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i309) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then123)) #8
          to label %for.body.i [label %if.then123], !srcloc !149

if.then123:                                       ; preds = %sr_read_rx_ctl.exit322
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %net16, align 4
  %conv125 = and i32 %ret.0.i320, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug364, ptr noundef %74, ptr noundef nonnull @.str.12, i32 noundef %conv125) #8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i325.for.body.i_crit_edge, %if.then123, %sr_read_rx_ctl.exit322
  %i.029.i = phi i32 [ %inc.i, %if.end.i325.for.body.i_crit_edge ], [ 0, %sr_read_rx_ctl.exit322 ], [ 0, %if.then123 ]
  %75 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net16, align 4
  %77 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mii, align 4
  %call.i324 = call i32 @sr_mdio_read(ptr noundef %76, i32 noundef %78, i32 noundef 2) #8
  %79 = zext i32 %call.i324 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i324, label %for.body.i.for.end.i_crit_edge [
    i32 0, label %for.body.i.if.end.i325_crit_edge
    i32 65535, label %for.body.i.if.end.i325_crit_edge346
  ]

for.body.i.if.end.i325_crit_edge346:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i325

for.body.i.if.end.i325_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i325

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i325:                                      ; preds = %for.body.i.if.end.i325_crit_edge, %for.body.i.if.end.i325_crit_edge346
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #8
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %if.end.i325.for.end.i_crit_edge, label %if.end.i325.for.body.i_crit_edge

if.end.i325.for.body.i_crit_edge:                 ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i325.for.end.i_crit_edge:                  ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i325.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i324)
  %cmp4.i = icmp slt i32 %call.i324, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i324)
  %cmp5.i = icmp eq i32 %call.i324, 65535
  %or.cond.i = or i1 %cmp4.i, %cmp5.i
  br i1 %or.cond.i, label %for.end.i.sr_get_phyid.exit_crit_edge, label %if.end7.i

for.end.i.sr_get_phyid.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_get_phyid.exit

if.end7.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %net16, align 4
  %83 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mii, align 4
  %call11.i = call i32 @sr_mdio_read(ptr noundef %82, i32 noundef %84, i32 noundef 3) #8
  %shl.i = shl i32 %call.i324, 16
  %and15.i = and i32 %call11.i, 65535
  %or.i = or i32 %and15.i, %shl.i
  br label %sr_get_phyid.exit

sr_get_phyid.exit:                                ; preds = %if.end7.i, %for.end.i.sr_get_phyid.exit_crit_edge
  %retval.0.i326 = phi i32 [ %or.i, %if.end7.i ], [ 0, %for.end.i.sr_get_phyid.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then145)) #8
          to label %do.end151 [label %if.then145], !srcloc !149

if.then145:                                       ; preds = %sr_get_phyid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug365, ptr noundef %86, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i326) #8
  br label %do.end151

do.end151:                                        ; preds = %if.then145, %sr_get_phyid.exit
  %call152 = call fastcc i32 @sr9800_set_default_mode(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp slt i32 %call152, 0
  br i1 %cmp153, label %do.end151.cleanup_crit_edge, label %if.end156

do.end151.cleanup_crit_edge:                      ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end156:                                        ; preds = %do.end151
  %87 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp157 = icmp eq i32 %90, 3
  br i1 %cmp157, label %if.then159, label %if.else

if.then159:                                       ; preds = %if.end156
  %91 = load i16, ptr getelementptr inbounds ([8 x %struct.anon], ptr @SR9800_BULKIN_SIZE, i32 0, i32 1, i32 1), align 2
  %92 = load i16, ptr getelementptr inbounds ([8 x %struct.anon], ptr @SR9800_BULKIN_SIZE, i32 0, i32 1, i32 2), align 2
  %call.i327 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 42, i8 noundef zeroext 64, i16 noundef zeroext %91, i16 noundef zeroext %92, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %cmp.not.i328 = icmp eq i32 %call.i327, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i327)
  %cmp2.i329 = icmp sgt i32 %call.i327, -1
  %spec.store.select.i330 = select i1 %cmp2.i329, i32 -22, i32 %call.i327
  %err.0.i331 = select i1 %cmp.not.i328, i32 0, i32 %spec.store.select.i330
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i331)
  %cmp161 = icmp slt i32 %err.0.i331, 0
  br i1 %cmp161, label %if.then163, label %if.then159.do.body177_crit_edge

if.then159.do.body177_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body177

if.then163:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %94, ptr noundef nonnull @.str.14, i32 noundef %err.0.i331) #11
  br label %cleanup

if.else:                                          ; preds = %if.end156
  %95 = load i16, ptr getelementptr inbounds ([8 x %struct.anon], ptr @SR9800_BULKIN_SIZE, i32 0, i32 0, i32 1), align 2
  %96 = load i16, ptr getelementptr inbounds ([8 x %struct.anon], ptr @SR9800_BULKIN_SIZE, i32 0, i32 0, i32 2), align 2
  %call.i332 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 42, i8 noundef zeroext 64, i16 noundef zeroext %95, i16 noundef zeroext %96, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %cmp.not.i333 = icmp eq i32 %call.i332, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i332)
  %cmp2.i334 = icmp sgt i32 %call.i332, -1
  %spec.store.select.i335 = select i1 %cmp2.i334, i32 -22, i32 %call.i332
  %err.0.i336 = select i1 %cmp.not.i333, i32 0, i32 %spec.store.select.i335
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i336)
  %cmp168 = icmp slt i32 %err.0.i336, 0
  br i1 %cmp168, label %if.then170, label %if.else.do.body177_crit_edge

if.else.do.body177_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body177

if.then170:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %net16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %98, ptr noundef nonnull @.str.14, i32 noundef %err.0.i336) #11
  br label %cleanup

do.body177:                                       ; preds = %if.else.do.body177_crit_edge, %if.then159.do.body177_crit_edge
  %SR9800_BULKIN_SIZE.sink = phi ptr [ getelementptr inbounds ([8 x %struct.anon], ptr @SR9800_BULKIN_SIZE, i32 0, i32 1), %if.then159.do.body177_crit_edge ], [ @SR9800_BULKIN_SIZE, %if.else.do.body177_crit_edge ]
  %99 = ptrtoint ptr %SR9800_BULKIN_SIZE.sink to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %SR9800_BULKIN_SIZE.sink, align 2
  %conv173 = zext i16 %100 to i32
  %rx_urb_size174 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %101 = ptrtoint ptr %rx_urb_size174 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %conv173, ptr %rx_urb_size174, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_bind.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_bind, %if.then189)) #8
          to label %cleanup [label %if.then189], !srcloc !149

if.then189:                                       ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %net16 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %net16, align 4
  %rx_urb_size191 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %104 = ptrtoint ptr %rx_urb_size191 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_urb_size191, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_bind.__UNIQUE_ID_ddebug366, ptr noundef %103, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.6, i32 noundef %105) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then189, %do.body177, %if.then170, %if.then163, %do.end151.cleanup_crit_edge, %sr_write_rx_ctl.exit.thread, %if.then13.i, %if.then8.i, %if.then3.i, %if.then.i287, %if.then69, %do.body57, %if.then10, %do.body6, %if.then
  %retval.0 = phi i32 [ %spec.store.select.i280, %if.then10 ], [ %spec.store.select.i285, %if.then69 ], [ 0, %if.then189 ], [ %spec.store.select.i, %if.then ], [ %call152, %do.end151.cleanup_crit_edge ], [ %spec.store.select.i330, %if.then163 ], [ %spec.store.select.i335, %if.then170 ], [ %spec.store.select.i280, %do.body6 ], [ %spec.store.select.i285, %do.body57 ], [ %spec.store.select.i.i305, %sr_write_rx_ctl.exit.thread ], [ 0, %do.body177 ], [ %spec.store.select.i.i55.i, %if.then13.i ], [ %spec.store.select.i.i46.i, %if.then8.i ], [ %spec.store.select.i.i37.i, %if.then3.i ], [ %spec.store.select.i.i.i, %if.then.i287 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9800_reset(ptr noundef %dev) #2 align 64 {
entry:
  %v.i207 = alloca i16, align 2
  %v.i = alloca i16, align 2
  %buf.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sr_write_gpio(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 2, !annotation !150
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !150
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 25, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp2.i.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i = select i1 %cmp2.i.i, i32 -22, i32 %call.i.i
  %err.0.i.i = select i1 %cmp.not.i.i, i32 2, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body1.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sr_get_phy_addr, i32 noundef %err.0.i.i) #11
  br label %sr_get_phy_addr.exit

do.body1.i:                                       ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_get_phy_addr.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_reset, %if.then5.i)) #8
          to label %do.end10.i [label %if.then5.i], !srcloc !149

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  %net6.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %net6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net6.i, align 4
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %buf.i, align 2
  %conv.i = zext i16 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_get_phy_addr.__UNIQUE_ID_ddebug347, ptr noundef %6, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.sr_get_phy_addr, i32 noundef %conv.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %do.body1.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  %conv11.i = zext i8 %10 to i32
  br label %sr_get_phy_addr.exit

sr_get_phy_addr.exit:                             ; preds = %do.end10.i, %if.then.i
  %ret.0.i = phi i32 [ %spec.store.select.i.i, %if.then.i ], [ %conv11.i, %do.end10.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  %and = and i32 %ret.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp3 = icmp eq i32 %and, 16
  %conv = zext i1 %cmp3 to i16
  %call.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 34, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp2.i, i32 -22, i32 %call.i
  %err.0.i = select i1 %cmp.not.i, i32 0, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp5 = icmp slt i32 %err.0.i, 0
  br i1 %cmp5, label %do.body8, label %if.end16

do.body8:                                         ; preds = %sr_get_phy_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_reset.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_reset, %if.then12)) #8
          to label %out [label %if.then12], !srcloc !149

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_reset.__UNIQUE_ID_ddebug357, ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %err.0.i) #8
  br label %out

if.end16:                                         ; preds = %sr_get_phy_addr.exit
  %call.i.i154 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 72, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i154)
  %cmp.not.i.i155 = icmp eq i32 %call.i.i154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i154)
  %cmp2.i.i156 = icmp sgt i32 %call.i.i154, -1
  %spec.store.select.i.i157 = select i1 %cmp2.i.i156, i32 -22, i32 %call.i.i154
  %err.0.i.i158 = select i1 %cmp.not.i.i155, i32 0, i32 %spec.store.select.i.i157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i158)
  %cmp.i159 = icmp slt i32 %err.0.i.i158, 0
  br i1 %cmp.i159, label %sr_sw_reset.exit.thread, label %if.end21

sr_sw_reset.exit.thread:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %net.i160 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net.i160 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i160, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i158) #11
  br label %out

if.end21:                                         ; preds = %if.end16
  call void @msleep(i32 noundef 150) #8
  %call.i.i162 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i162)
  %cmp.not.i.i163 = icmp eq i32 %call.i.i162, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i162)
  %cmp2.i.i164 = icmp sgt i32 %call.i.i162, -1
  %spec.store.select.i.i165 = select i1 %cmp2.i.i164, i32 -22, i32 %call.i.i162
  %err.0.i.i166 = select i1 %cmp.not.i.i163, i32 0, i32 %spec.store.select.i.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i166)
  %cmp.i167 = icmp slt i32 %err.0.i.i166, 0
  br i1 %cmp.i167, label %sr_sw_reset.exit170.thread, label %if.end26

sr_sw_reset.exit170.thread:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %net.i168 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i168 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i168, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i166) #11
  br label %out

if.end26:                                         ; preds = %if.end21
  call void @msleep(i32 noundef 150) #8
  br i1 %cmp3, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  %call.i.i171 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 32, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %cmp.not.i.i172 = icmp eq i32 %call.i.i171, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i171)
  %cmp2.i.i173 = icmp sgt i32 %call.i.i171, -1
  %spec.store.select.i.i174 = select i1 %cmp2.i.i173, i32 -22, i32 %call.i.i171
  %err.0.i.i175 = select i1 %cmp.not.i.i172, i32 0, i32 %spec.store.select.i.i174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i175)
  %cmp.i176 = icmp slt i32 %err.0.i.i175, 0
  br i1 %cmp.i176, label %sr_sw_reset.exit179.thread, label %if.then28.if.end39_crit_edge

if.then28.if.end39_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

sr_sw_reset.exit179.thread:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %net.i177 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net.i177 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net.i177, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i175) #11
  br label %out

if.else:                                          ; preds = %if.end26
  %call.i.i180 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 4, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %cmp.not.i.i181 = icmp eq i32 %call.i.i180, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i180)
  %cmp2.i.i182 = icmp sgt i32 %call.i.i180, -1
  %spec.store.select.i.i183 = select i1 %cmp2.i.i182, i32 -22, i32 %call.i.i180
  %err.0.i.i184 = select i1 %cmp.not.i.i181, i32 0, i32 %spec.store.select.i.i183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i184)
  %cmp.i185 = icmp slt i32 %err.0.i.i184, 0
  br i1 %cmp.i185, label %sr_sw_reset.exit188.thread, label %if.else.if.end39_crit_edge

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

sr_sw_reset.exit188.thread:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %net.i186 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %net.i186 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net.i186, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i184) #11
  br label %out

if.end39:                                         ; preds = %if.else.if.end39_crit_edge, %if.then28.if.end39_crit_edge
  call void @msleep(i32 noundef 150) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i) #8
  %21 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %v.i, align 2, !annotation !150
  %call.i.i189 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i189)
  %cmp.not.i.i190 = icmp eq i32 %call.i.i189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i189)
  %cmp2.i.i191 = icmp sgt i32 %call.i.i189, -1
  %spec.store.select.i.i192 = select i1 %cmp2.i.i191, i32 -22, i32 %call.i.i189
  %err.0.i.i193 = select i1 %cmp.not.i.i190, i32 2, i32 %spec.store.select.i.i192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i193)
  %cmp.i194 = icmp slt i32 %err.0.i.i193, 0
  br i1 %cmp.i194, label %if.then.i196, label %if.end.i

if.then.i196:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %net.i195 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %net.i195 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net.i195, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.28, i32 noundef %err.0.i.i193) #11
  br label %sr_read_rx_ctl.exit

if.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %v.i, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #8
  %conv.i197 = zext i16 %26 to i32
  br label %sr_read_rx_ctl.exit

sr_read_rx_ctl.exit:                              ; preds = %if.end.i, %if.then.i196
  %ret.0.i198 = phi i32 [ %spec.store.select.i.i192, %if.then.i196 ], [ %conv.i197, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_reset.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_reset, %if.then54)) #8
          to label %do.end61 [label %if.then54], !srcloc !149

if.then54:                                        ; preds = %sr_read_rx_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %net55 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %27 = ptrtoint ptr %net55 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net55, align 4
  %conv56 = and i32 %ret.0.i198, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_reset.__UNIQUE_ID_ddebug358, ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %conv56) #8
  br label %do.end61

do.end61:                                         ; preds = %if.then54, %sr_read_rx_ctl.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_reset, %if.then.i200)) #8
          to label %do.end5.i [label %if.then.i200], !srcloc !149

if.then.i200:                                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #10
  %net.i199 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net.i199 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i199, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, ptr noundef %30, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 0) #8
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i200, %do.end61
  %call.i.i201 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201)
  %cmp.not.i.i202 = icmp eq i32 %call.i.i201, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i201)
  %cmp2.i.i203 = icmp sgt i32 %call.i.i201, -1
  %spec.store.select.i.i204 = select i1 %cmp2.i.i203, i32 -22, i32 %call.i.i201
  %err.0.i.i205 = select i1 %cmp.not.i.i202, i32 0, i32 %spec.store.select.i.i204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i205)
  %cmp.i206 = icmp slt i32 %err.0.i.i205, 0
  br i1 %cmp.i206, label %sr_write_rx_ctl.exit.thread, label %if.end66

sr_write_rx_ctl.exit.thread:                      ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %net9.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %31 = ptrtoint ptr %net9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net9.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef %err.0.i.i205) #11
  br label %out

if.end66:                                         ; preds = %do.end5.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i207) #8
  %33 = ptrtoint ptr %v.i207 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %v.i207, align 2, !annotation !150
  %call.i.i208 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i207, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i208)
  %cmp.not.i.i209 = icmp eq i32 %call.i.i208, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i208)
  %cmp2.i.i210 = icmp sgt i32 %call.i.i208, -1
  %spec.store.select.i.i211 = select i1 %cmp2.i.i210, i32 -22, i32 %call.i.i208
  %err.0.i.i212 = select i1 %cmp.not.i.i209, i32 2, i32 %spec.store.select.i.i211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i212)
  %cmp.i213 = icmp slt i32 %err.0.i.i212, 0
  br i1 %cmp.i213, label %if.then.i215, label %if.end.i217

if.then.i215:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %net.i214 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %34 = ptrtoint ptr %net.i214 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i214, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.28, i32 noundef %err.0.i.i212) #11
  br label %sr_read_rx_ctl.exit220

if.end.i217:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %v.i207 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %v.i207, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #8
  %conv.i216 = zext i16 %38 to i32
  br label %sr_read_rx_ctl.exit220

sr_read_rx_ctl.exit220:                           ; preds = %if.end.i217, %if.then.i215
  %ret.0.i218 = phi i32 [ %spec.store.select.i.i211, %if.then.i215 ], [ %conv.i216, %if.end.i217 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i207) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_reset.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_reset, %if.then81)) #8
          to label %do.end88 [label %if.then81], !srcloc !149

if.then81:                                        ; preds = %sr_read_rx_ctl.exit220
  call void @__sanitizer_cov_trace_pc() #10
  %net82 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %net82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net82, align 4
  %conv83 = and i32 %ret.0.i218, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_reset.__UNIQUE_ID_ddebug359, ptr noundef %40, ptr noundef nonnull @.str.12, i32 noundef %conv83) #8
  br label %do.end88

do.end88:                                         ; preds = %if.then81, %sr_read_rx_ctl.exit220
  %call.i.i221 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 8, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i221)
  %cmp.not.i.i222 = icmp eq i32 %call.i.i221, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i221)
  %cmp2.i.i223 = icmp sgt i32 %call.i.i221, -1
  %spec.store.select.i.i224 = select i1 %cmp2.i.i223, i32 -22, i32 %call.i.i221
  %err.0.i.i225 = select i1 %cmp.not.i.i222, i32 0, i32 %spec.store.select.i.i224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i225)
  %cmp.i226 = icmp slt i32 %err.0.i.i225, 0
  br i1 %cmp.i226, label %sr_sw_reset.exit230.thread, label %if.end93

sr_sw_reset.exit230.thread:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #10
  %net.i227 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %41 = ptrtoint ptr %net.i227 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i227, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i225) #11
  br label %out

if.end93:                                         ; preds = %do.end88
  call void @msleep(i32 noundef 150) #8
  %call.i.i231 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext 64, i16 noundef zeroext 40, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i231)
  %cmp.not.i.i232 = icmp eq i32 %call.i.i231, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i231)
  %cmp2.i.i233 = icmp sgt i32 %call.i.i231, -1
  %spec.store.select.i.i234 = select i1 %cmp2.i.i233, i32 -22, i32 %call.i.i231
  %err.0.i.i235 = select i1 %cmp.not.i.i232, i32 0, i32 %spec.store.select.i.i234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i235)
  %cmp.i236 = icmp slt i32 %err.0.i.i235, 0
  br i1 %cmp.i236, label %sr_sw_reset.exit240.thread, label %if.end98

sr_sw_reset.exit240.thread:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %net.i237 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %43 = ptrtoint ptr %net.i237 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i237, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %err.0.i.i235) #11
  br label %out

if.end98:                                         ; preds = %if.end93
  call void @msleep(i32 noundef 150) #8
  %call99 = call fastcc i32 @sr9800_set_default_mode(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.end98.out_crit_edge, label %if.end103

if.end98.out_crit_edge:                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end103:                                        ; preds = %if.end98
  %mac_addr = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %net104 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %45 = ptrtoint ptr %net104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net104, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 86
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  %49 = call ptr @memcpy(ptr %mac_addr, ptr %48, i32 6)
  %call.i241 = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %mac_addr, i16 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i241)
  %cmp.not.i242 = icmp ne i32 %call.i241, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i241)
  %cmp2.i243 = icmp sgt i32 %call.i241, -1
  %spec.store.select.i244 = select i1 %cmp2.i243, i32 -22, i32 %call.i241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i244)
  %cmp108249 = icmp slt i32 %spec.store.select.i244, 0
  %cmp108 = select i1 %cmp.not.i242, i1 %cmp108249, i1 false
  br i1 %cmp108, label %if.end103.out_crit_edge, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end103.out_crit_edge:                          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end103.out_crit_edge, %if.end98.out_crit_edge, %sr_sw_reset.exit240.thread, %sr_sw_reset.exit230.thread, %sr_write_rx_ctl.exit.thread, %sr_sw_reset.exit188.thread, %sr_sw_reset.exit179.thread, %sr_sw_reset.exit170.thread, %sr_sw_reset.exit.thread, %if.then12, %do.body8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %spec.store.select.i, %if.then12 ], [ %call99, %if.end98.out_crit_edge ], [ %spec.store.select.i244, %if.end103.out_crit_edge ], [ %spec.store.select.i, %do.body8 ], [ %spec.store.select.i.i157, %sr_sw_reset.exit.thread ], [ %spec.store.select.i.i165, %sr_sw_reset.exit170.thread ], [ %spec.store.select.i.i174, %sr_sw_reset.exit179.thread ], [ %spec.store.select.i.i183, %sr_sw_reset.exit188.thread ], [ %spec.store.select.i.i204, %sr_write_rx_ctl.exit.thread ], [ %spec.store.select.i.i224, %sr_sw_reset.exit230.thread ], [ %spec.store.select.i.i234, %sr_sw_reset.exit240.thread ]
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end103.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
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
  %link1 = getelementptr inbounds %struct.sr9800_int_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %link1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link1, align 1
  %6 = and i8 %5, 1
  %and = zext i8 %6 to i32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %12 = icmp eq i8 %6, 0
  %cmp3.not = xor i1 %12, %tobool.not.i
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool = icmp ne i8 %6, 0
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool, i1 noundef zeroext true) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_status.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_status, %if.then11)) #8
          to label %cleanup [label %if.then11], !srcloc !149

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_status.__UNIQUE_ID_ddebug346, ptr noundef %14, ptr noundef nonnull @.str.44, i32 noundef %and) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr9800_link_reset(ptr noundef %dev) #2 align 64 {
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
  %speed_hi.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 12
  %3 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %speed_hi.i, align 4
  %conv.i = zext i16 %4 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %speed.i = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %5 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %speed.i, align 4
  %conv1.i = zext i16 %6 to i32
  %or.i = or i32 %shl.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %or.i)
  %cmp.not = icmp eq i32 %or.i, 100
  %spec.select = select i1 %cmp.not, i16 822, i16 310
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp5.not = icmp eq i8 %8, 1
  %9 = and i16 %spec.select, 820
  %mode.1 = select i1 %cmp5.not, i16 %spec.select, i16 %9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_link_reset.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_link_reset, %if.then16)) #8
          to label %do.end23 [label %if.then16], !srcloc !149

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %12 = ptrtoint ptr %speed_hi.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %speed_hi.i, align 4
  %conv.i32 = zext i16 %13 to i32
  %shl.i33 = shl nuw i32 %conv.i32, 16
  %14 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %speed.i, align 4
  %conv1.i35 = zext i16 %15 to i32
  %or.i36 = or i32 %shl.i33, %conv1.i35
  %16 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %duplex, align 2
  %conv19 = zext i8 %17 to i32
  %conv20 = zext i16 %mode.1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_link_reset.__UNIQUE_ID_ddebug353, ptr noundef %11, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %or.i36, i32 noundef %conv19, i32 noundef %conv20) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then16, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_medium_mode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_link_reset, %if.then.i)) #8
          to label %do.end5.i [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %18 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i, align 4
  %conv.i37 = zext i16 %mode.1 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_medium_mode.__UNIQUE_ID_ddebug349, ptr noundef %19, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.36, i32 noundef %conv.i37) #8
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i, %do.end23
  %call.i.i = call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext %mode.1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp2.i.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i = select i1 %cmp2.i.i, i32 -22, i32 %call.i.i
  %err.0.i.i = select i1 %cmp.not.i.i, i32 0, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %if.then8.i, label %do.end5.i.sr_write_medium_mode.exit_crit_edge

do.end5.i.sr_write_medium_mode.exit_crit_edge:    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_write_medium_mode.exit

if.then8.i:                                       ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %net9.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net9.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net9.i, align 4
  %conv10.i = zext i16 %mode.1 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %conv10.i, i32 noundef %err.0.i.i) #11
  br label %sr_write_medium_mode.exit

sr_write_medium_mode.exit:                        ; preds = %if.then8.i, %do.end5.i.sr_write_medium_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_rx_fixup(ptr noundef %dev, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %while.cond.preheader

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup53

while.cond.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp395 = icmp ugt i32 %7, 4
  br i1 %cmp395, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %7, %while.body.lr.ph ], [ %28, %cleanup.while.body_crit_edge ]
  %add97 = phi i32 [ 4, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %offset.096 = phi i32 [ 0, %while.body.lr.ph ], [ %add43, %cleanup.while.body_crit_edge ]
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %offset.096
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %conv6 = and i32 %13, 2047
  %neg = xor i32 %13, -1
  %shr = lshr i32 %neg, 16
  %and8 = and i32 %shr, 2047
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %and8)
  %cmp9.not = icmp eq i32 %conv6, %and8
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  br i1 %cmp9.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.sr_rx_fixup) #11
  br label %cleanup53

if.end13:                                         ; preds = %while.body
  %mtu = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  %add17 = add i32 %17, 18
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %add17)
  %cmp18 = icmp ugt i32 %conv6, %add17
  %add21 = add i32 %conv6, %add97
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %8)
  %cmp23 = icmp ugt i32 %add21, %8
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp23
  br i1 %or.cond, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.sr_rx_fixup, i32 noundef %conv6) #11
  br label %cleanup53

if.end28:                                         ; preds = %if.end13
  %add.i.i = add nuw nsw i32 %conv6, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %15, i32 noundef %add.i.i, i32 noundef 2592) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end28.cleanup53_crit_edge, label %cleanup

if.end28.cleanup53_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup53

cleanup:                                          ; preds = %if.end28
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %call35 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv6) #8
  %22 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %add.ptr38 = getelementptr i8, ptr %25, i32 %add97
  %26 = call ptr @memcpy(ptr %23, ptr %add.ptr38, i32 %conv6)
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i.i) #8
  %add41 = add nuw nsw i32 %conv6, 1
  %and42 = and i32 %add41, 4094
  %add43 = add i32 %and42, %add97
  %add = add i32 %add43, 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %cmp3 = icmp ult i32 %add, %28
  br i1 %cmp3, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %offset.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %add43, %cleanup.while.end_crit_edge ]
  %.lcssa = phi i32 [ %7, %while.cond.preheader.while.end_crit_edge ], [ %28, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %offset.0.lcssa)
  %cmp47.not = icmp eq i32 %.lcssa, %offset.0.lcssa
  br i1 %cmp47.not, label %while.end.cleanup53_crit_edge, label %if.then49

while.end.cleanup53_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup53

if.then49:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.sr_rx_fixup, i32 noundef %.lcssa) #11
  br label %cleanup53

cleanup53:                                        ; preds = %if.then49, %while.end.cleanup53_crit_edge, %if.end28.cleanup53_crit_edge, %if.then25, %if.then11, %entry.cleanup53_crit_edge
  %retval.2 = phi i32 [ 0, %if.then49 ], [ 0, %entry.cleanup53_crit_edge ], [ 1, %while.end.cleanup53_crit_edge ], [ 0, %if.then11 ], [ 0, %if.then25 ], [ 0, %if.end28.cleanup53_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sr_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %entry.skb_tailroom.exit_crit_edge

entry.skb_tailroom.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i59 = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i60 = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i61 = sub i32 %sub.ptr.lhs.cast.i59, %sub.ptr.rhs.cast.i60
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %entry.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i61, %cond.false.i ], [ 0, %entry.skb_tailroom.exit_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add = add i32 %11, 4
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %maxpacket, align 4
  %sub = add i32 %13, -1
  %rem = urem i32 %add, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool.not, i32 4, i32 0
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %14 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %skb_tailroom.exit.land.lhs.true_crit_edge, label %skb_cloned.exit

skb_tailroom.exit.land.lhs.true_crit_edge:        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

skb_cloned.exit:                                  ; preds = %skb_tailroom.exit
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #8
  %17 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i.not, label %skb_cloned.exit.land.lhs.true_crit_edge, label %skb_cloned.exit.if.else_crit_edge

skb_cloned.exit.if.else_crit_edge:                ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

skb_cloned.exit.land.lhs.true_crit_edge:          ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %skb_cloned.exit.land.lhs.true_crit_edge, %skb_tailroom.exit.land.lhs.true_crit_edge
  %add4 = add i32 %cond.i, %sub.ptr.sub.i
  %add5 = add nuw nsw i32 %cond, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %add5)
  %cmp.not = icmp slt i32 %add4, %add5
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i)
  %cmp6 = icmp slt i32 %sub.ptr.sub.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %cond)
  %cmp7 = icmp slt i32 %cond.i, %cond
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp7
  br i1 %or.cond, label %if.then8, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %25 = call ptr @memmove(ptr %add.ptr, ptr %22, i32 %24)
  store ptr %add.ptr, ptr %data.i, align 4
  %26 = load i32, ptr %len, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %26
  %tail.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %tail.i63, align 8
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %skb_cloned.exit.if.else_crit_edge
  %call12 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 4, i32 noundef %cond, i32 noundef %flags) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else.cleanup28_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else.cleanup28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup28

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then8, %if.then.if.end16_crit_edge
  %skb.addr.0 = phi ptr [ %call12, %if.else.if.end16_crit_edge ], [ %skb, %if.then8 ], [ %skb, %if.then.if.end16_crit_edge ]
  %call17 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 4) #8
  %len18 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %28 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len18, align 4
  %sub19 = mul i32 %29, -65535
  %add22 = add i32 %sub19, 196604
  %30 = tail call i32 @llvm.bswap.i32(i32 %add22) #8
  %31 = ptrtoint ptr %call17 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %30, ptr %call17, align 1
  br i1 %tobool.not, label %if.then24, label %if.end16.if.end27_crit_edge

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %tail.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i64, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 65535, ptr %33, align 1
  %call26 = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef 4) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end16.if.end27_crit_edge
  %packets2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 16
  %35 = ptrtoint ptr %packets2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %packets2.i, align 4
  %length.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %36 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %length.i, align 4
  br label %cleanup28

cleanup28:                                        ; preds = %if.end27, %if.else.cleanup28_crit_edge
  %retval.1 = phi ptr [ %skb.addr.0, %if.end27 ], [ null, %if.else.cleanup28_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_mdio_read(ptr noundef %net, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %res, align 2
  %phy_mutex = getelementptr i8, ptr %net, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #8
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %entry.sr_set_sw_mii.exit_crit_edge, label %if.then.i

entry.sr_set_sw_mii.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_set_sw_mii.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr i8, ptr %net, i32 2548
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.18) #11
  br label %sr_set_sw_mii.exit

sr_set_sw_mii.exit:                               ; preds = %if.then.i, %entry.sr_set_sw_mii.exit_crit_edge
  %conv = trunc i32 %phy_id to i16
  %conv2 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 7, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext %conv2, ptr noundef nonnull %res, i16 noundef zeroext 2) #8
  %call.i.i22 = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i.i23, label %sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge, label %if.then.i25

sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge:  ; preds = %sr_set_sw_mii.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_set_hw_mii.exit

if.then.i25:                                      ; preds = %sr_set_sw_mii.exit
  call void @__sanitizer_cov_trace_pc() #10
  %net.i24 = getelementptr i8, ptr %net, i32 2548
  %3 = ptrtoint ptr %net.i24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i24, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.19) #11
  br label %sr_set_hw_mii.exit

sr_set_hw_mii.exit:                               ; preds = %if.then.i25, %sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_read.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_read, %if.then)) #8
          to label %do.end13 [label %if.then], !srcloc !149

if.then:                                          ; preds = %sr_set_hw_mii.exit
  call void @__sanitizer_cov_trace_pc() #10
  %net10 = getelementptr i8, ptr %net, i32 2548
  %5 = ptrtoint ptr %net10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net10, align 4
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %res, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv11 = zext i16 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_read.__UNIQUE_ID_ddebug351, ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %conv11) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then, %sr_set_hw_mii.exit
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %res, align 2
  %12 = call i16 @llvm.bswap.i16(i16 %11)
  %conv14 = zext i16 %12 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #8
  ret i32 %conv14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_mdio_write(ptr noundef %net, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %res = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res) #8
  %conv = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %res, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_mdio_write.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_mdio_write, %if.then)) #8
          to label %do.end7 [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net5 = getelementptr i8, ptr %net, i32 2548
  %2 = ptrtoint ptr %net5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_mdio_write.__UNIQUE_ID_ddebug352, ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %phy_mutex = getelementptr i8, ptr %net, i32 2376
  tail call void @mutex_lock_nested(ptr noundef %phy_mutex, i32 noundef 0) #8
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 6, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i, label %do.end7.sr_set_sw_mii.exit_crit_edge, label %if.then.i

do.end7.sr_set_sw_mii.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_set_sw_mii.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  %net.i = getelementptr i8, ptr %net, i32 2548
  %4 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.18) #11
  br label %sr_set_sw_mii.exit

sr_set_sw_mii.exit:                               ; preds = %if.then.i, %do.end7.sr_set_sw_mii.exit_crit_edge
  %conv9 = trunc i32 %phy_id to i16
  %conv10 = trunc i32 %loc to i16
  %call.i = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 8, i8 noundef zeroext 64, i16 noundef zeroext %conv9, i16 noundef zeroext %conv10, ptr noundef nonnull %res, i16 noundef zeroext 2) #8
  %call.i.i22 = call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 10, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %cmp.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %cmp.not.i.i23, label %sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge, label %if.then.i25

sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge:  ; preds = %sr_set_sw_mii.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sr_set_hw_mii.exit

if.then.i25:                                      ; preds = %sr_set_sw_mii.exit
  call void @__sanitizer_cov_trace_pc() #10
  %net.i24 = getelementptr i8, ptr %net, i32 2548
  %6 = ptrtoint ptr %net.i24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i24, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.19) #11
  br label %sr_set_hw_mii.exit

sr_set_hw_mii.exit:                               ; preds = %if.then.i25, %sr_set_sw_mii.exit.sr_set_hw_mii.exit_crit_edge
  call void @mutex_unlock(ptr noundef %phy_mutex) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr9800_set_default_mode(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %v.i109 = alloca i16, align 2
  %v.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mii, align 4
  tail call void @sr_mdio_write(ptr noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 32768)
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  %6 = ptrtoint ptr %mii to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mii, align 4
  tail call void @sr_mdio_write(ptr noundef %5, i32 noundef %7, i32 noundef 4, i32 noundef 481)
  %call = tail call i32 @mii_nway_restart(ptr noundef %mii) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_medium_mode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_set_default_mode, %if.then.i)) #8
          to label %do.end5.i [label %if.then.i], !srcloc !149

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_medium_mode.__UNIQUE_ID_ddebug349, ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.36, i32 noundef 822) #8
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then.i, %entry
  %call.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 27, i8 noundef zeroext 64, i16 noundef zeroext 822, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp2.i.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i = select i1 %cmp2.i.i, i32 -22, i32 %call.i.i
  %err.0.i.i = select i1 %cmp.not.i.i, i32 0, i32 %spec.store.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %sr_write_medium_mode.exit.thread, label %if.end

sr_write_medium_mode.exit.thread:                 ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.37, i32 noundef 822, i32 noundef %err.0.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %do.end5.i
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext 29, i16 noundef zeroext 18, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp2.i, i32 -22, i32 %call.i
  %err.0.i = select i1 %cmp.not.i, i32 0, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp7 = icmp slt i32 %err.0.i, 0
  br i1 %cmp7, label %do.body9, label %if.end18

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_set_default_mode, %if.then13)) #8
          to label %cleanup [label %if.then13], !srcloc !149

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_set_default_mode.__UNIQUE_ID_ddebug354, ptr noundef %13, ptr noundef nonnull @.str.33, i32 noundef %err.0.i) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_set_default_mode, %if.then.i91)) #8
          to label %do.end5.i98 [label %if.then.i91], !srcloc !149

if.then.i91:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 392) #8
  br label %do.end5.i98

do.end5.i98:                                      ; preds = %if.then.i91, %if.end18
  %call.i.i92 = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext 392, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %cmp.not.i.i93 = icmp eq i32 %call.i.i92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i92)
  %cmp2.i.i94 = icmp sgt i32 %call.i.i92, -1
  %spec.store.select.i.i95 = select i1 %cmp2.i.i94, i32 -22, i32 %call.i.i92
  %err.0.i.i96 = select i1 %cmp.not.i.i93, i32 0, i32 %spec.store.select.i.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i96)
  %cmp.i97 = icmp slt i32 %err.0.i.i96, 0
  br i1 %cmp.i97, label %sr_write_rx_ctl.exit.thread, label %if.end22

sr_write_rx_ctl.exit.thread:                      ; preds = %do.end5.i98
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.31, i32 noundef 392, i32 noundef %err.0.i.i96) #11
  br label %cleanup

if.end22:                                         ; preds = %do.end5.i98
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i) #8
  %18 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %v.i, align 2, !annotation !150
  %call.i.i101 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 15, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i101)
  %cmp.not.i.i102 = icmp eq i32 %call.i.i101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101)
  %cmp2.i.i103 = icmp sgt i32 %call.i.i101, -1
  %spec.store.select.i.i104 = select i1 %cmp2.i.i103, i32 -22, i32 %call.i.i101
  %err.0.i.i105 = select i1 %cmp.not.i.i102, i32 2, i32 %spec.store.select.i.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i105)
  %cmp.i106 = icmp slt i32 %err.0.i.i105, 0
  br i1 %cmp.i106, label %if.then.i108, label %if.end.i

if.then.i108:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef %err.0.i.i105) #11
  br label %sr_read_rx_ctl.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %v.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %v.i, align 2
  %23 = call i16 @llvm.bswap.i16(i16 %22) #8
  %conv.i = zext i16 %23 to i32
  br label %sr_read_rx_ctl.exit

sr_read_rx_ctl.exit:                              ; preds = %if.end.i, %if.then.i108
  %ret.0.i = phi i32 [ %spec.store.select.i.i104, %if.then.i108 ], [ %conv.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_set_default_mode, %if.then37)) #8
          to label %do.end43 [label %if.then37], !srcloc !149

if.then37:                                        ; preds = %sr_read_rx_ctl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %conv = and i32 %ret.0.i, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_set_default_mode.__UNIQUE_ID_ddebug355, ptr noundef %25, ptr noundef nonnull @.str.34, i32 noundef %conv) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then37, %sr_read_rx_ctl.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i109) #8
  %26 = ptrtoint ptr %v.i109 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %v.i109, align 2, !annotation !150
  %call.i.i110 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 26, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %v.i109, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i110)
  %cmp.not.i.i111 = icmp eq i32 %call.i.i110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i110)
  %cmp2.i.i112 = icmp sgt i32 %call.i.i110, -1
  %spec.store.select.i.i113 = select i1 %cmp2.i.i112, i32 -22, i32 %call.i.i110
  %err.0.i.i114 = select i1 %cmp.not.i.i111, i32 2, i32 %spec.store.select.i.i113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i114)
  %cmp.i115 = icmp slt i32 %err.0.i.i114, 0
  br i1 %cmp.i115, label %if.then.i118, label %if.end.i119

if.then.i118:                                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.38, i32 noundef %err.0.i.i114) #11
  %conv.i117 = trunc i32 %err.0.i.i114 to i16
  br label %sr_read_medium_status.exit

if.end.i119:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %v.i109 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %v.i109, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #8
  br label %sr_read_medium_status.exit

sr_read_medium_status.exit:                       ; preds = %if.end.i119, %if.then.i118
  %retval.0.i120 = phi i16 [ %conv.i117, %if.then.i118 ], [ %31, %if.end.i119 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i109) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr9800_set_default_mode, %if.then58)) #8
          to label %cleanup [label %if.then58], !srcloc !149

if.then58:                                        ; preds = %sr_read_medium_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  %conv60 = zext i16 %retval.0.i120 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr9800_set_default_mode.__UNIQUE_ID_ddebug356, ptr noundef %33, ptr noundef nonnull @.str.35, i32 noundef %conv60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %sr_read_medium_status.exit, %sr_write_rx_ctl.exit.thread, %if.then13, %do.body9, %sr_write_medium_mode.exit.thread
  %retval.0 = phi i32 [ 0, %if.then58 ], [ %spec.store.select.i, %if.then13 ], [ %spec.store.select.i.i, %sr_write_medium_mode.exit.thread ], [ %spec.store.select.i, %do.body9 ], [ %spec.store.select.i.i95, %sr_write_rx_ctl.exit.thread ], [ 0, %sr_read_medium_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_set_multicast(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %data1 = getelementptr i8, ptr %net, i32 2556
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end69_crit_edge

entry.if.end69_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

lor.lhs.false:                                    ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp sgt i32 %3, 64
  br i1 %cmp, label %lor.lhs.false.if.end69_crit_edge, label %if.else11

lor.lhs.false.if.end69_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else11:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %if.else11.if.end69_crit_edge, label %if.else17

if.else11.if.end69_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.else17:                                        ; preds = %if.else11
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %data1, align 1
  %5 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.099 = load ptr, ptr %mc, align 4
  %cmp22.not100 = icmp eq ptr %ha.099, %mc
  br i1 %cmp22.not100, label %if.else17.for.end_crit_edge, label %if.else17.cond.end_crit_edge

if.else17.cond.end_crit_edge:                     ; preds = %if.else17
  br label %cond.end

if.else17.for.end_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else17.cond.end_crit_edge
  %ha.0101 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.099, %if.else17.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0101, i32 0, i32 2
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
  %shr54 = zext i8 %9 to i32
  %arrayidx = getelementptr [8 x i8], ptr %data1, i32 0, i32 %shr54
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv57 = or i8 %11, %shl52
  store i8 %conv57, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %ha.0101 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.0101, align 4
  %cmp22.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp22.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.else17.for.end_crit_edge
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 22, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %data1, i16 noundef zeroext 8) #8
  br label %if.end69

if.end69:                                         ; preds = %for.end, %if.else11.if.end69_crit_edge, %lor.lhs.false.if.end69_crit_edge, %if.else.if.end69_crit_edge, %entry.if.end69_crit_edge
  %rx_ctl.0 = phi i16 [ 392, %if.else11.if.end69_crit_edge ], [ 408, %for.end ], [ 393, %entry.if.end69_crit_edge ], [ 394, %lor.lhs.false.if.end69_crit_edge ], [ 394, %if.else.if.end69_crit_edge ]
  %call.i98 = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %rx_ctl.0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_set_mac_address(ptr noundef %net, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end5

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_addr_mod(ptr noundef %net, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  %mac_addr = getelementptr i8, ptr %net, i32 2564
  %7 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 6)
  %call.i = tail call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %mac_addr, i16 noundef zeroext 6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_ioctl(ptr noundef %net, ptr noundef %rq, i32 noundef %cmd) #2 align 64 {
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

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_get_drvinfo(ptr noundef %net, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %info) #8
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %driver, ptr @str, i32 32)
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %1 = call ptr @memcpy(ptr %version, ptr @str.50, i32 32)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sr_get_wol(ptr noundef %net, ptr nocapture noundef %wolinfo) #2 align 64 {
entry:
  %opt = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opt) #8
  %0 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %opt, align 1, !annotation !150
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 28, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %opt, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 1
  %supported2 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  br i1 %cmp.not.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %supported2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %supported2, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %2 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wolopts, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %supported2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33, ptr %supported2, align 4
  %wolopts3 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %4 = ptrtoint ptr %opt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opt, align 1
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = zext i8 %.lobit to i32
  %8 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wolopts3, align 4
  %9 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %7, 32
  %10 = ptrtoint ptr %wolopts3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or12, ptr %wolopts3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opt) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_set_wol(ptr noundef %net, ptr nocapture noundef readonly %wolinfo) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %2 = trunc i32 %1 to i8
  %3 = shl nuw nsw i8 %2, 1
  %4 = and i8 %3, 2
  %5 = lshr i8 %2, 3
  %6 = and i8 %5, 4
  %7 = or i8 %6, %4
  %conv15 = zext i8 %7 to i16
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 29, i8 noundef zeroext 64, i16 noundef zeroext %conv15, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  %spec.select25 = select i1 %cmp.not.i, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select25, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_get_link(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mii = getelementptr i8, ptr %net, i32 2588
  %call1 = tail call i32 @mii_link_ok(ptr noundef %mii) #8
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sr_get_eeprom_len(ptr nocapture noundef readonly %net) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom_len = getelementptr i8, ptr %net, i32 2572
  %0 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %eeprom_len, align 1
  %conv = zext i8 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sr_get_eeprom(ptr noundef %net, ptr nocapture noundef %eeprom, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %rem = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %magic = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 1
  %2 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -559038737, ptr %magic, align 4
  %offset = getelementptr inbounds %struct.ethtool_eeprom, ptr %eeprom, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp18.not = icmp ult i32 %4, 2
  br i1 %cmp18.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.019, 1
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %div16 = lshr i32 %6, 1
  %cmp = icmp ult i32 %inc, %div16
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add = add i32 %8, %i.019
  %conv = trunc i32 %add to i16
  %arrayidx = getelementptr i16, ptr %data, i32 %i.019
  %call.i = tail call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 11, i8 noundef zeroext -64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef %arrayidx, i16 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sr_write_gpio(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sr_write_gpio.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sr_write_gpio, %if.then)) #8
          to label %do.end5 [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sr_write_gpio.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 176) #8
  br label %do.end5

do.end5:                                          ; preds = %if.then, %entry
  %call.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 31, i8 noundef zeroext 64, i16 noundef zeroext 176, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp2.i, i32 -22, i32 %call.i
  %err.0.i = select i1 %cmp.not.i, i32 0, i32 %spec.store.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp slt i32 %err.0.i, 0
  br i1 %cmp, label %if.then8, label %do.end5.if.then13_crit_edge

do.end5.if.then13_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then8:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %net9 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.42, i32 noundef 176, i32 noundef %err.0.i) #11
  br label %if.then13

if.then13:                                        ; preds = %if.then8, %do.end5.if.then13_crit_edge
  tail call void @msleep(i32 noundef 5) #8
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !111, !113, !114, !116, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !136, !138}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @SR9800_BULKIN_SIZE, !1, !"SR9800_BULKIN_SIZE", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/sr9800.h", i32 166, i32 53}
!2 = !{ptr @__initcall__kmod_sr9800__367_870_sr_driver_init6, !3, !"__initcall__kmod_sr9800__367_870_sr_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/net/usb/sr9800.c", i32 870, i32 1}
!4 = !{ptr @__exitcall_sr_driver_exit, !3, !"__exitcall_sr_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author368, !6, !"__UNIQUE_ID_author368", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/sr9800.c", i32 872, i32 1}
!7 = !{ptr @__UNIQUE_ID_version369, !8, !"__UNIQUE_ID_version369", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/sr9800.c", i32 873, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description370, !14, !"__UNIQUE_ID_description370", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/sr9800.c", i32 874, i32 1}
!15 = !{ptr @__UNIQUE_ID_file371, !16, !"__UNIQUE_ID_file371", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/sr9800.c", i32 875, i32 1}
!17 = !{ptr @__UNIQUE_ID_license372, !16, !"__UNIQUE_ID_license372", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/sr9800.c", i32 861, i32 11}
!20 = !{ptr @sr_driver, !21, !"sr_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/sr9800.c", i32 860, i32 26}
!22 = !{ptr @products, !23, !"products", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/sr9800.c", i32 850, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/sr9800.c", i32 840, i32 17}
!26 = !{ptr @sr9800_driver_info, !27, !"sr9800_driver_info", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/sr9800.c", i32 839, i32 33}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/sr9800.c", i32 753, i32 25}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/sr9800.c", i32 760, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug360, !31, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/usb/sr9800.c", i32 764, i32 2}
!37 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug361, !36, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/sr9800.c", i32 781, i32 3}
!40 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug362, !39, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/sr9800.c", i32 791, i32 2}
!43 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug363, !42, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/sr9800.c", i32 797, i32 2}
!46 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug364, !45, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/usb/sr9800.c", i32 801, i32 2}
!49 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug365, !48, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/sr9800.c", i32 814, i32 25}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/sr9800.c", i32 831, i32 2}
!54 = !{ptr @sr9800_bind.__UNIQUE_ID_ddebug366, !53, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/sr9800.c", i32 346, i32 2}
!57 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sr_mdio_read.__UNIQUE_ID_ddebug351, !56, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/usb/sr9800.c", i32 174, i32 24}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/sr9800.c", i32 184, i32 24}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/usb/sr9800.c", i32 359, i32 2}
!65 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sr_mdio_write.__UNIQUE_ID_ddebug352, !64, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/usb/sr9800.c", i32 195, i32 24}
!69 = !{ptr @__func__.sr_get_phy_addr, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/usb/sr9800.c", i32 196, i32 7}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/usb/sr9800.c", i32 199, i32 2}
!73 = !{ptr @sr_get_phy_addr.__UNIQUE_ID_ddebug347, !72, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!74 = !{ptr @sr9800_netdev_ops, !75, !"sr9800_netdev_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/usb/sr9800.c", i32 678, i32 36}
!76 = !{ptr @sr9800_ethtool_ops, !77, !"sr9800_ethtool_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/sr9800.c", i32 520, i32 33}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/usb/sr9800.c", i32 698, i32 24}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/sr9800.c", i32 706, i32 24}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/sr9800.c", i32 714, i32 24}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/usb/sr9800.c", i32 214, i32 24}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/sr9800.c", i32 227, i32 24}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/sr9800.c", i32 241, i32 2}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sr_write_rx_ctl.__UNIQUE_ID_ddebug348, !89, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/usb/sr9800.c", i32 245, i32 7}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/usb/sr9800.c", i32 576, i32 3}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug354, !95, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/usb/sr9800.c", i32 586, i32 2}
!100 = !{ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug355, !99, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/usb/sr9800.c", i32 590, i32 2}
!103 = !{ptr @sr9800_set_default_mode.__UNIQUE_ID_ddebug356, !102, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/usb/sr9800.c", i32 270, i32 2}
!106 = !{ptr @sr_write_medium_mode.__UNIQUE_ID_ddebug349, !105, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/usb/sr9800.c", i32 274, i32 7}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/usb/sr9800.c", i32 259, i32 7}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/usb/sr9800.c", i32 613, i32 3}
!113 = !{ptr @sr9800_reset.__UNIQUE_ID_ddebug357, !112, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!114 = !{ptr @sr9800_reset.__UNIQUE_ID_ddebug358, !115, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!115 = !{!"../drivers/net/usb/sr9800.c", i32 641, i32 2}
!116 = !{ptr @sr9800_reset.__UNIQUE_ID_ddebug359, !117, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!117 = !{!"../drivers/net/usb/sr9800.c", i32 647, i32 2}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/usb/sr9800.c", i32 283, i32 2}
!120 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sr_write_gpio.__UNIQUE_ID_ddebug350, !119, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/usb/sr9800.c", i32 286, i32 24}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/usb/sr9800.c", i32 162, i32 3}
!126 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sr_status.__UNIQUE_ID_ddebug346, !125, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/usb/sr9800.c", i32 549, i32 2}
!130 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @sr9800_link_reset.__UNIQUE_ID_ddebug353, !129, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/usb/sr9800.c", i32 79, i32 25}
!134 = !{ptr @__func__.sr_rx_fixup, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/usb/sr9800.c", i32 80, i32 8}
!136 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/usb/sr9800.c", i32 86, i32 25}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/usb/sr9800.c", i32 102, i32 24}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{i64 2148972471, i64 2148972476, i64 2148972489, i64 2148972533, i64 2148972567, i64 2148972588}
!150 = !{!"auto-init"}
