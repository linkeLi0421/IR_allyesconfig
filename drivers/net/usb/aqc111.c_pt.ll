; ModuleID = '/llk/IR_all_yes/drivers/net/usb/aqc111.c_pt.bc'
source_filename = "../drivers/net/usb/aqc111.c"
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
%struct.atomic_t = type { i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { i8, i8, i8, i8, i8 }
%struct.aqc111_wol_cfg = type { [6 x i8], i8, [283 x i8] }
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
%struct.aqc111_data = type { i16, i8, i8, i8, i8, i32, %struct.anon.122, i32, i8 }
%struct.anon.122 = type { i8, i8, i8 }
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
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.125, i16, i16, i16 }
%union.anon.125 = type { %struct.anon.126 }
%struct.anon.126 = type { [6 x i8], [6 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_aqc111__348_1486_aq_driver_init6 = internal global ptr @aq_driver_init, section ".initcall6.init", align 4
@aq_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @aqc111_suspend, ptr @aqc111_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_aq_driver_exit = internal global ptr @aq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description349 = internal constant [63 x i8] c"aqc111.description=Aquantia AQtion USB to 5/2.5GbE Controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [35 x i8] c"aqc111.file=drivers/net/usb/aqc111\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [19 x i8] c"aqc111.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"aqc111\00", [25 x i8] zeroinitializer }, align 32
@products = internal constant { [11 x %struct.usb_device_id], [88 x i8] } { [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 131, i16 11978, i16 -16127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @aqc111_info to i32) }, %struct.usb_device_id { i16 899, i16 11978, i16 -16127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @aqc111_info to i32) }, %struct.usb_device_id { i16 131, i16 2965, i16 10128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @asix111_info to i32) }, %struct.usb_device_id { i16 899, i16 2965, i16 10128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @asix111_info to i32) }, %struct.usb_device_id { i16 131, i16 2965, i16 10129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @asix112_info to i32) }, %struct.usb_device_id { i16 899, i16 2965, i16 10129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @asix112_info to i32) }, %struct.usb_device_id { i16 131, i16 8436, i16 -8102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @trendnet_info to i32) }, %struct.usb_device_id { i16 899, i16 8436, i16 -8102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @trendnet_info to i32) }, %struct.usb_device_id { i16 131, i16 7172, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @qnap_info to i32) }, %struct.usb_device_id { i16 899, i16 7172, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @qnap_info to i32) }, %struct.usb_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read(0x%x) reg index 0x%04x: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@__aqc111_write_cmd.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__aqc111_write_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/aqc111.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s cmd=%#x reqtype=%#x value=%#x index=%#x size=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to write(0x%x) reg index 0x%04x: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@aqc111_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.6, i32 8544, ptr @aqc111_bind, ptr @aqc111_unbind, ptr @aqc111_reset, ptr @aqc111_stop, ptr null, ptr null, ptr @aqc111_status, ptr @aqc111_link_reset, ptr @aqc111_rx_fixup, ptr @aqc111_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@asix111_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.11, i32 8544, ptr @aqc111_bind, ptr @aqc111_unbind, ptr @aqc111_reset, ptr @aqc111_stop, ptr null, ptr null, ptr @aqc111_status, ptr @aqc111_link_reset, ptr @aqc111_rx_fixup, ptr @aqc111_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@asix112_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.12, i32 8544, ptr @aqc111_bind, ptr @aqc111_unbind, ptr @aqc111_reset, ptr @aqc111_stop, ptr null, ptr null, ptr @aqc111_status, ptr @aqc111_link_reset, ptr @aqc111_rx_fixup, ptr @aqc111_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@trendnet_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.13, i32 8544, ptr @aqc111_bind, ptr @aqc111_unbind, ptr @aqc111_reset, ptr @aqc111_stop, ptr null, ptr null, ptr @aqc111_status, ptr @aqc111_link_reset, ptr @aqc111_rx_fixup, ptr @aqc111_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@qnap_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.14, i32 8544, ptr @aqc111_bind, ptr @aqc111_unbind, ptr @aqc111_reset, ptr @aqc111_stop, ptr null, ptr null, ptr @aqc111_status, ptr @aqc111_link_reset, ptr @aqc111_rx_fixup, ptr @aqc111_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Aquantia AQtion USB to 5GbE Controller\00", [57 x i8] zeroinitializer }, align 32
@aqc111_bind.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aqc111_bind\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usbnet_get_endpoints failed\00", [36 x i8] zeroinitializer }, align 32
@aqc111_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @aqc111_set_rx_mode, ptr @aqc111_set_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqc111_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr @aqc111_vlan_rx_add_vid, ptr @aqc111_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqc111_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@aqc111_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @aqc111_get_drvinfo, ptr null, ptr null, ptr @aqc111_get_wol, ptr @aqc111_set_wol, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aqc111_get_link_ksettings, ptr @aqc111_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@AQC111_BULKIN_SIZE = internal constant { [3 x %struct.anon.124], [17 x i8] } { [3 x %struct.anon.124] [%struct.anon.124 { i8 7, i8 0, i8 1, i8 30, i8 -1 }, %struct.anon.124 { i8 7, i8 -96, i8 0, i8 20, i8 0 }, %struct.anon.124 { i8 7, i8 0, i8 1, i8 24, i8 -1 }], [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u.%u.%u\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Link Speed %d, USB %d\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ASIX USB 3.1 Gen1 to 5G Multi-Gigabit Ethernet Adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ASIX USB 3.1 Gen1 to 2.5G Multi-Gigabit Ethernet Adapter\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"USB-C 3.1 to 5GBASE-T Ethernet Adapter\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"QNAP QNA-UC5G1T USB to 5GbE Adapter\00", [60 x i8] zeroinitializer }, align 32
@switch.table.aqc111_get_link_ksettings = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 5000, i32 2500, i32 1000, i32 -1, i32 100], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 100, i64 1000, i64 2500, i64 5000]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 16, i64 100, i64 1000, i64 2500, i64 5000]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 15, i64 16, i64 17, i64 19]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 100, i64 1000, i64 2500, i64 5000]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 100, i64 1000, i64 2500, i64 5000, i64 4294967295]
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"aq_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1477, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1486, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1467, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 35, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 85, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 102, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"aqc111_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1238, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"asix111_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1255, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"asix112_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1274, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"trendnet_info\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1290, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"qnap_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1304, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1239, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 701, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"aqc111_netdev_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 639, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"aqc111_ethtool_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 410, i32 33 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"AQC111_BULKIN_SIZE\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../drivers/net/usb/aqc111.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 224, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 205, i32 55 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 877, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1256, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1275, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1291, i32 17 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [28 x i8] c"../drivers/net/usb/aqc111.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 1305, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant [39 x i8] c"switch.table.aqc111_get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_aq_driver_exit, ptr @__initcall__kmod_aqc111__348_1486_aq_driver_init6, ptr @aq_driver_exit, ptr @aq_driver, ptr @.str, ptr @products, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @aqc111_info, ptr @asix111_info, ptr @asix112_info, ptr @trendnet_info, ptr @qnap_info, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @aqc111_netdev_ops, ptr @aqc111_ethtool_ops, ptr @AQC111_BULKIN_SIZE, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.aqc111_get_link_ksettings], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqc111_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asix111_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asix112_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trendnet_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qnap_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqc111_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aqc111_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AQC111_BULKIN_SIZE to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aqc111_get_link_ksettings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @aq_driver, ptr noundef null, ptr noundef nonnull @.str) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @aq_driver) #12
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %tmp.i106 = alloca i16, align 2
  %tmp.i94 = alloca i32, align 4
  %tmp.i91 = alloca i32, align 4
  %tmp.i90 = alloca i16, align 2
  %tmp.i84 = alloca i16, align 2
  %tmp.i83 = alloca i16, align 2
  %tmp.i82 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  %wol_cfg = alloca %struct.aqc111_wol_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %4 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %reg16, align 2, !annotation !65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %5 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %reg8, align 1, !annotation !65
  %call2 = tail call i32 @usbnet_suspend(ptr noundef %intf, [1 x i32] %message.coerce) #12
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.aqc111_read16_cmd_nopm.exit_crit_edge, !prof !66

entry.aqc111_read16_cmd_nopm.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd_nopm.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd_nopm.exit

aqc111_read16_cmd_nopm.exit:                      ; preds = %if.then.i.i, %entry.aqc111_read16_cmd_nopm.exit_crit_edge
  %8 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg16, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9) #12
  %11 = and i16 %10, -129
  %12 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %13 = call i16 @llvm.bswap.i16(i16 %11) #12
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i, align 2
  %15 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %call.i.i77 = call i32 @usbnet_read_cmd_nopm(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 38, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp.i.i78 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp.i.i78, label %if.then.i.i80, label %aqc111_read16_cmd_nopm.exit.aqc111_read16_cmd_nopm.exit81_crit_edge, !prof !66

aqc111_read16_cmd_nopm.exit.aqc111_read16_cmd_nopm.exit81_crit_edge: ; preds = %aqc111_read16_cmd_nopm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd_nopm.exit81

if.then.i.i80:                                    ; preds = %aqc111_read16_cmd_nopm.exit
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i79 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %net.i.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i.i79, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i77) #15
  br label %aqc111_read16_cmd_nopm.exit81

aqc111_read16_cmd_nopm.exit81:                    ; preds = %if.then.i.i80, %aqc111_read16_cmd_nopm.exit.aqc111_read16_cmd_nopm.exit81_crit_edge
  %18 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %reg16, align 2
  %20 = or i16 %19, 4096
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %22 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i82) #12
  %23 = ptrtoint ptr %tmp.i82 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %tmp.i82, align 2
  %24 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 38, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i82) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i82) #12
  %25 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %reg8, align 1
  %26 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 185, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %27 = and i16 %10, -241
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i83) #12
  %28 = call i16 @llvm.bswap.i16(i16 %27) #12
  %29 = ptrtoint ptr %tmp.i83 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %tmp.i83, align 2
  %30 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i83) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i83) #12
  %31 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %reg8, align 1
  %32 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 183, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %wol_flags = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %wol_flags to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wol_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %aqc111_read16_cmd_nopm.exit81
  call void @llvm.lifetime.start.p0(i64 290, ptr nonnull %wol_cfg) #12
  %35 = getelementptr inbounds i8, ptr %wol_cfg, i32 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 286)
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 7
  %37 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy_cfg, align 4
  %or16 = or i32 %38, 1048576
  store i32 %or16, ptr %phy_cfg, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %39 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = ptrtoint ptr %wol_cfg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %wol_cfg, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr inbounds i8, ptr %wol_cfg, i32 4
  %48 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %add.ptr1.i, align 4
  %49 = ptrtoint ptr %wol_flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %wol_flags, align 4
  %flags = getelementptr inbounds %struct.aqc111_wol_cfg, ptr %wol_cfg, i32 0, i32 1
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %flags, align 2
  %52 = or i16 %27, 136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i84) #12
  %53 = call i16 @llvm.bswap.i16(i16 %52) #12
  %54 = ptrtoint ptr %tmp.i84 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %tmp.i84, align 2
  %55 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i84) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i84) #12
  %56 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %reg8, align 1
  %57 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %58 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -128, ptr %reg8, align 1
  %59 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %60 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %reg8, align 1
  %61 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 183, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %62 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 7, ptr %reg8, align 1
  %63 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 46, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %64 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %reg8, align 1
  %65 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 47, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %66 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 48, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %67 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %reg8, align 1
  %68 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 49, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %69 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 50, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %call.i.i85 = call i32 @usbnet_read_cmd_nopm(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp.i.i86 = icmp slt i32 %call.i.i85, 0
  br i1 %cmp.i.i86, label %if.then.i.i88, label %if.then.aqc111_read16_cmd_nopm.exit89_crit_edge, !prof !66

if.then.aqc111_read16_cmd_nopm.exit89_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd_nopm.exit89

if.then.i.i88:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %71, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i85) #15
  br label %aqc111_read16_cmd_nopm.exit89

aqc111_read16_cmd_nopm.exit89:                    ; preds = %if.then.i.i88, %if.then.aqc111_read16_cmd_nopm.exit89_crit_edge
  %72 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %reg16, align 2
  %74 = or i16 %73, 1
  %75 = call i16 @llvm.bswap.i16(i16 %74)
  %76 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i90) #12
  %77 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %74, ptr %tmp.i90, align 2
  %78 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i90) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i90) #12
  %intf.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 1
  %79 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %intf.i, align 4
  %call.i = call i32 @usb_autopm_get_interface(ptr noundef %80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aqc111_read16_cmd_nopm.exit89.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_read16_cmd_nopm.exit89.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd_nopm.exit89
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_read16_cmd_nopm.exit89
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 96, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 290, ptr noundef nonnull %wol_cfg) #12
  %81 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %82) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_read16_cmd_nopm.exit89.aqc111_write_cmd.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i91) #12
  %83 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %phy_cfg, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #12
  %86 = ptrtoint ptr %tmp.i91 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i91, align 4
  %87 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %intf.i, align 4
  %call.i.i92 = call i32 @usb_autopm_get_interface(ptr noundef %88) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i92)
  %cmp.i.i93 = icmp slt i32 %call.i.i92, 0
  br i1 %cmp.i.i93, label %aqc111_write_cmd.exit.aqc111_write32_cmd.exit_crit_edge, label %if.end.i.i

aqc111_write_cmd.exit.aqc111_write32_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write32_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i91) #12
  %89 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %90) #12
  br label %aqc111_write32_cmd.exit

aqc111_write32_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_write_cmd.exit.aqc111_write32_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i91) #12
  call void @llvm.lifetime.end.p0(i64 290, ptr nonnull %wol_cfg) #12
  br label %if.end

if.else:                                          ; preds = %aqc111_read16_cmd_nopm.exit81
  %phy_cfg38 = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 7
  %91 = ptrtoint ptr %phy_cfg38 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %phy_cfg38, align 4
  %or39 = or i32 %92, 262144
  store i32 %or39, ptr %phy_cfg38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i94) #12
  %93 = call i32 @llvm.bswap.i32(i32 %or39) #12
  %94 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %tmp.i94, align 4
  %intf.i.i95 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 1
  %95 = ptrtoint ptr %intf.i.i95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf.i.i95, align 4
  %call.i.i96 = call i32 @usb_autopm_get_interface(ptr noundef %96) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %cmp.i.i97 = icmp slt i32 %call.i.i96, 0
  br i1 %cmp.i.i97, label %if.else.aqc111_write32_cmd.exit100_crit_edge, label %if.end.i.i99

if.else.aqc111_write32_cmd.exit100_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write32_cmd.exit100

if.end.i.i99:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i98 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i94) #12
  %97 = ptrtoint ptr %intf.i.i95 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %intf.i.i95, align 4
  call void @usb_autopm_put_interface(ptr noundef %98) #12
  br label %aqc111_write32_cmd.exit100

aqc111_write32_cmd.exit100:                       ; preds = %if.end.i.i99, %if.else.aqc111_write32_cmd.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i94) #12
  %call.i.i101 = call i32 @usbnet_read_cmd_nopm(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.i.i102 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp.i.i102, label %if.then.i.i104, label %aqc111_write32_cmd.exit100.aqc111_read16_cmd_nopm.exit105_crit_edge, !prof !66

aqc111_write32_cmd.exit100.aqc111_read16_cmd_nopm.exit105_crit_edge: ; preds = %aqc111_write32_cmd.exit100
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd_nopm.exit105

if.then.i.i104:                                   ; preds = %aqc111_write32_cmd.exit100
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i103 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %99 = ptrtoint ptr %net.i.i103 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %net.i.i103, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %100, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i101) #15
  br label %aqc111_read16_cmd_nopm.exit105

aqc111_read16_cmd_nopm.exit105:                   ; preds = %if.then.i.i104, %aqc111_write32_cmd.exit100.aqc111_read16_cmd_nopm.exit105_crit_edge
  %101 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %reg16, align 2
  %103 = and i16 %102, -2
  %104 = call i16 @llvm.bswap.i16(i16 %103)
  %105 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i106) #12
  %106 = ptrtoint ptr %tmp.i106 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %103, ptr %tmp.i106, align 2
  %107 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i106) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i106) #12
  br label %if.end

if.end:                                           ; preds = %aqc111_read16_cmd_nopm.exit105, %aqc111_write32_cmd.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_resume(ptr noundef %intf) #2 align 64 {
entry:
  %tmp.i37 = alloca i16, align 2
  %tmp.i36 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 4
  tail call void @netif_carrier_off(ptr noundef %5) #12
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_cfg, align 4
  %or = and i32 %7, -1835009
  %and = or i32 %or, 524288
  store i32 %and, ptr %phy_cfg, align 4
  %8 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %reg8, align 1
  %9 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 4
  %12 = and i16 %11, -129
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %13 = call i16 @llvm.bswap.i16(i16 %12) #12
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %tmp.i, align 2
  %15 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %16 = or i16 %11, 128
  %17 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i36) #12
  %18 = call i16 @llvm.bswap.i16(i16 %16) #12
  %19 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %tmp.i36, align 2
  %20 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i36) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i36) #12
  %autoneg = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autoneg, align 1
  %advertised_speed = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %advertised_speed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %advertised_speed, align 4
  %conv12 = trunc i32 %24 to i16
  call fastcc void @aqc111_set_phy_speed(ptr noundef %1, i8 noundef zeroext %22, i16 noundef zeroext %conv12)
  %call.i.i = call i32 @usbnet_read_cmd_nopm(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.aqc111_read16_cmd_nopm.exit_crit_edge, !prof !66

entry.aqc111_read16_cmd_nopm.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd_nopm.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd_nopm.exit

aqc111_read16_cmd_nopm.exit:                      ; preds = %if.then.i.i, %entry.aqc111_read16_cmd_nopm.exit_crit_edge
  %27 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg16, align 2
  %29 = or i16 %28, 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %31 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i37) #12
  %32 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %29, ptr %tmp.i37, align 2
  %33 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i37) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i37) #12
  %34 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %reg8, align 1
  %35 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 183, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %36 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %reg8, align 1
  %intf.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf.i, align 4
  %call.i = call i32 @usb_autopm_get_interface(ptr noundef %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aqc111_read16_cmd_nopm.exit.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_read16_cmd_nopm.exit.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd_nopm.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_read16_cmd_nopm.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %1, i8 noundef zeroext 1, i16 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %39 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %40) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_read16_cmd_nopm.exit.aqc111_write_cmd.exit_crit_edge
  %call20 = call i32 @usbnet_resume(ptr noundef %intf) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 %call20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd_nopm(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__aqc111_write_cmd(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cmd, i16 noundef zeroext %value, i16 noundef zeroext %index, i16 noundef zeroext %size, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__aqc111_write_cmd.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__aqc111_write_cmd, %if.then)) #12
          to label %do.end9 [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv = zext i8 %cmd to i32
  %conv5 = zext i16 %value to i32
  %conv6 = zext i16 %index to i32
  %conv7 = zext i16 %size to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__aqc111_write_cmd.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef 64, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %tobool10.not = icmp eq ptr %data, null
  br i1 %tobool10.not, label %do.end9.if.end17_crit_edge, label %if.then11

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then11:                                        ; preds = %do.end9
  %conv12 = zext i16 %size to i32
  %call13 = tail call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef %conv12, i32 noundef 3264) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.then11.out_crit_edge, label %if.then11.if.end17_crit_edge

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %do.end9.if.end17_crit_edge
  %buf.0 = phi ptr [ %call13, %if.then11.if.end17_crit_edge ], [ null, %do.end9.if.end17_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 49
  %cond = select i1 %cmp, i32 10000, i32 4000
  %call22 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext %cmd, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %index, ptr noundef %buf.0, i16 noundef zeroext %size, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then31, label %if.end17.if.end35_crit_edge, !prof !66

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %conv20 = zext i8 %cmd to i32
  %net32 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %net32 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net32, align 4
  %conv34 = zext i16 %index to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %conv20, i32 noundef %conv34, i32 noundef %call22) #15
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.end17.if.end35_crit_edge
  tail call void @kfree(ptr noundef %buf.0) #12
  br label %out

out:                                              ; preds = %if.end35, %if.then11.out_crit_edge
  %err.0 = phi i32 [ %call22, %if.end35 ], [ -12, %if.then11.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aqc111_set_phy_speed(ptr nocapture noundef readonly %dev, i8 noundef zeroext %autoneg, i16 noundef zeroext %speed) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_cfg, align 4
  %and = and i32 %3, -253952016
  %or9 = or i32 %and, 52625408
  store i32 %or9, ptr %phy_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %autoneg)
  %cmp = icmp eq i8 %autoneg, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i16 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %speed, label %if.then.if.end_crit_edge [
    i16 5000, label %sw.bb
    i16 2500, label %if.then.sw.bb14_crit_edge
    i16 1000, label %if.then.sw.bb17_crit_edge
    i16 100, label %if.then.sw.bb20_crit_edge
  ]

if.then.sw.bb20_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb20

if.then.sw.bb17_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb17

if.then.sw.bb14_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %or13 = or i32 %and, 52625416
  %5 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or13, ptr %phy_cfg, align 4
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb, %if.then.sw.bb14_crit_edge
  %6 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_cfg, align 4
  %or16 = or i32 %7, 4
  store i32 %or16, ptr %phy_cfg, align 4
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb14, %if.then.sw.bb17_crit_edge
  %8 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_cfg, align 4
  %or19 = or i32 %9, 2
  store i32 %or19, ptr %phy_cfg, align 4
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb17, %if.then.sw.bb20_crit_edge
  %10 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phy_cfg, align 4
  %or22 = or i32 %11, 1
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %12 = zext i16 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %speed, label %if.else.if.end_crit_edge [
    i16 5000, label %sw.bb24
    i16 2500, label %sw.bb27
    i16 1000, label %sw.bb30
    i16 100, label %sw.bb33
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb24:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or26 = or i32 %and, 52625416
  br label %if.end.sink.split

sw.bb27:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or29 = or i32 %and, 52625412
  br label %if.end.sink.split

sw.bb30:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or32 = or i32 %and, 52625410
  br label %if.end.sink.split

sw.bb33:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %or35 = or i32 %and, 52625409
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb24, %sw.bb20
  %or26.sink = phi i32 [ %or26, %sw.bb24 ], [ %or29, %sw.bb27 ], [ %or32, %sw.bb30 ], [ %or35, %sw.bb33 ], [ %or22, %sw.bb20 ]
  %13 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or26.sink, ptr %phy_cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %14 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %phy_cfg, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i, align 4
  %intf.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %18 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf.i.i, align 4
  %call.i.i = tail call i32 @usb_autopm_get_interface(ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.aqc111_write32_cmd.exit_crit_edge, label %if.end.i.i

if.end.aqc111_write32_cmd.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write32_cmd.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i) #12
  %20 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %21) #12
  br label %aqc111_write32_cmd.exit

aqc111_write32_cmd.exit:                          ; preds = %if.end.i.i, %if.end.aqc111_write32_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %speed = getelementptr i8, ptr %1, i32 -100
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %actconfig = getelementptr i8, ptr %1, i32 956
  %4 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %actconfig, align 4
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bConfigurationValue, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call2 = tail call i32 @usb_driver_set_configuration(ptr noundef %add.ptr.i, i32 noundef 1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call4 = tail call i32 @usb_reset_configuration(ptr noundef %9) #12
  %call5 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body9, label %if.end17

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aqc111_bind.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aqc111_bind, %if.then13)) #12
          to label %cleanup [label %if.then13], !srcloc !67

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @aqc111_bind.__UNIQUE_ID_ddebug347, ptr noundef %11, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #16
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #12
  %14 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 32, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %buf.i, i16 noundef zeroext 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  br i1 %cmp.i.i, label %out, label %if.end25, !prof !66

if.end25:                                         ; preds = %if.end21
  %17 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 54
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf.i, align 4
  %20 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %perm_addr.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %17, align 4
  %add.ptr1.i.i = getelementptr %struct.net_device, ptr %16, i32 0, i32 54, i32 4
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %add.ptr1.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #12
  %24 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net.i.i, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 54
  call void @dev_addr_mod(ptr noundef %25, i32 noundef 0, ptr noundef %perm_addr, i32 noundef 6) #12
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %26 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 63488, ptr %rx_urb_size, align 4
  %27 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net.i.i, align 4
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 21
  %29 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %needed_headroom, align 8
  %add = add i16 %30, 8
  store i16 %add, ptr %needed_headroom, align 8
  %31 = load ptr, ptr %net.i.i, align 4
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %needed_tailroom, align 2
  %add33 = add i16 %33, 8
  store i16 %add33, ptr %needed_tailroom, align 2
  %34 = load ptr, ptr %net.i.i, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 31
  %35 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 16334, ptr %max_mtu, align 4
  %36 = load ptr, ptr %net.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @aqc111_netdev_ops, ptr %netdev_ops, align 8
  %38 = load ptr, ptr %net.i.i, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 44
  %39 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @aqc111_ethtool_ops, ptr %ethtool_ops, align 16
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end25.if.end41_crit_edge, label %land.lhs.true.i

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true.i:                                  ; preds = %if.end25
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end41_crit_edge, label %usb_device_no_sg_constraint.exit

land.lhs.true.i.if.end41_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

usb_device_no_sg_constraint.exit:                 ; preds = %land.lhs.true.i
  %no_sg_constraint.i = getelementptr inbounds %struct.usb_bus, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %no_sg_constraint.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %no_sg_constraint.i, align 2
  %45 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool3.i.not = icmp eq i8 %45, 0
  br i1 %tobool3.i.not, label %usb_device_no_sg_constraint.exit.if.end41_crit_edge, label %if.then40

usb_device_no_sg_constraint.exit.if.end41_crit_edge: ; preds = %usb_device_no_sg_constraint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %usb_device_no_sg_constraint.exit
  call void @__sanitizer_cov_trace_pc() #14
  %can_dma_sg = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 12
  %46 = ptrtoint ptr %can_dma_sg to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load = load i8, ptr %can_dma_sg, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %can_dma_sg, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %usb_device_no_sg_constraint.exit.if.end41_crit_edge, %land.lhs.true.i.if.end41_crit_edge, %if.end25.if.end41_crit_edge
  %47 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i.i, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 24
  %49 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %hw_features, align 8
  %or = or i64 %50, 1099511693843
  store i64 %or, ptr %hw_features, align 8
  %51 = load ptr, ptr %net.i.i, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 23
  %52 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features, align 16
  %or44 = or i64 %53, 1099511693715
  store i64 %or44, ptr %features, align 16
  %54 = load ptr, ptr %net.i.i, align 4
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 26
  %55 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %vlan_features, align 8
  %or46 = or i64 %56, 1099511693331
  store i64 %or46, ptr %vlan_features, align 8
  %57 = load ptr, ptr %net.i.i, align 4
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 137
  %58 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 65535, ptr %gso_max_size.i, align 8
  %fw_ver.i = getelementptr inbounds %struct.aqc111_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i84 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 218, i16 noundef zeroext 1, ptr noundef %fw_ver.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %cmp.i.i85 = icmp slt i32 %call.i.i84, 0
  br i1 %cmp.i.i85, label %if.then.i.i, label %if.end41.aqc111_read_cmd.exit.i_crit_edge, !prof !66

if.end41.aqc111_read_cmd.exit.i_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit.i

if.then.i.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %60, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i.i84) #15
  br label %aqc111_read_cmd.exit.i

aqc111_read_cmd.exit.i:                           ; preds = %if.then.i.i, %if.end41.aqc111_read_cmd.exit.i_crit_edge
  %minor.i = getelementptr inbounds %struct.aqc111_data, ptr %call7.i.i, i32 0, i32 6, i32 1
  %call.i18.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 219, i16 noundef zeroext 1, ptr noundef %minor.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i)
  %cmp.i19.i = icmp slt i32 %call.i18.i, 0
  br i1 %cmp.i19.i, label %if.then.i21.i, label %aqc111_read_cmd.exit.i.aqc111_read_cmd.exit22.i_crit_edge, !prof !66

aqc111_read_cmd.exit.i.aqc111_read_cmd.exit22.i_crit_edge: ; preds = %aqc111_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit22.i

if.then.i21.i:                                    ; preds = %aqc111_read_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i18.i) #15
  br label %aqc111_read_cmd.exit22.i

aqc111_read_cmd.exit22.i:                         ; preds = %if.then.i21.i, %aqc111_read_cmd.exit.i.aqc111_read_cmd.exit22.i_crit_edge
  %rev.i = getelementptr inbounds %struct.aqc111_data, ptr %call7.i.i, i32 0, i32 6, i32 2
  %call.i23.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 220, i16 noundef zeroext 1, ptr noundef %rev.i, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %cmp.i24.i = icmp slt i32 %call.i23.i, 0
  br i1 %cmp.i24.i, label %if.then.i26.i, label %aqc111_read_cmd.exit22.i.aqc111_read_cmd.exit27.i_crit_edge, !prof !66

aqc111_read_cmd.exit22.i.aqc111_read_cmd.exit27.i_crit_edge: ; preds = %aqc111_read_cmd.exit22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit27.i

if.then.i26.i:                                    ; preds = %aqc111_read_cmd.exit22.i
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i23.i) #15
  br label %aqc111_read_cmd.exit27.i

aqc111_read_cmd.exit27.i:                         ; preds = %if.then.i26.i, %aqc111_read_cmd.exit22.i.aqc111_read_cmd.exit27.i_crit_edge
  %65 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fw_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %66)
  %tobool.not.i87 = icmp sgt i8 %66, -1
  br i1 %tobool.not.i87, label %aqc111_read_cmd.exit27.i.aqc111_read_fw_version.exit_crit_edge, label %if.then.i

aqc111_read_cmd.exit27.i.aqc111_read_fw_version.exit_crit_edge: ; preds = %aqc111_read_cmd.exit27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_fw_version.exit

if.then.i:                                        ; preds = %aqc111_read_cmd.exit27.i
  call void @__sanitizer_cov_trace_pc() #14
  %and10.i = and i8 %66, 127
  %67 = ptrtoint ptr %fw_ver.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and10.i, ptr %fw_ver.i, align 4
  br label %aqc111_read_fw_version.exit

aqc111_read_fw_version.exit:                      ; preds = %if.then.i, %aqc111_read_cmd.exit27.i.aqc111_read_fw_version.exit_crit_edge
  %autoneg = getelementptr inbounds %struct.aqc111_data, ptr %call7.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp48 = icmp eq i32 %3, 5
  %cond = select i1 %cmp48, i32 5000, i32 1000
  %advertised_speed = getelementptr inbounds %struct.aqc111_data, ptr %call7.i.i, i32 0, i32 5
  %69 = ptrtoint ptr %advertised_speed to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %advertised_speed, align 8
  br label %cleanup

out:                                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 32, i32 noundef 0, i32 noundef %call.i.i) #15
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %aqc111_read_fw_version.exit, %if.end17.cleanup_crit_edge, %if.then13, %do.body9, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call.i.i, %out ], [ 0, %aqc111_read_fw_version.exit ], [ %call5, %if.then13 ], [ -12, %if.end17.cleanup_crit_edge ], [ %call5, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqc111_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  %tmp.i15 = alloca i32, align 4
  %tmp.i14 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4096, ptr %tmp.i, align 2
  %3 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 38, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i14) #12
  %4 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %tmp.i14, align 2
  %5 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 38, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i14) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i14) #12
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_cfg, align 4
  %and = and i32 %7, -786448
  %or = or i32 %and, 262144
  store i32 %or, ptr %phy_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i15) #12
  %8 = call i32 @llvm.bswap.i32(i32 %or) #12
  %9 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i15, align 4
  %10 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i15) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i15) #12
  call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_reset(ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %2 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %reg8, align 1
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %3 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 63488, ptr %rx_urb_size, align 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end_crit_edge, label %usb_device_no_sg_constraint.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

usb_device_no_sg_constraint.exit:                 ; preds = %land.lhs.true.i
  %no_sg_constraint.i = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %no_sg_constraint.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %no_sg_constraint.i, align 2
  %9 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.i.not = icmp eq i8 %9, 0
  br i1 %tobool3.i.not, label %usb_device_no_sg_constraint.exit.if.end_crit_edge, label %if.then

usb_device_no_sg_constraint.exit.if.end_crit_edge: ; preds = %usb_device_no_sg_constraint.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %usb_device_no_sg_constraint.exit
  call void @__sanitizer_cov_trace_pc() #14
  %can_dma_sg = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 12
  %10 = ptrtoint ptr %can_dma_sg to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %can_dma_sg, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %can_dma_sg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %usb_device_no_sg_constraint.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %hw_features, align 8
  %or = or i64 %14, 1099511693843
  store i64 %or, ptr %hw_features, align 8
  %15 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 23
  %16 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features, align 16
  %or2 = or i64 %17, 1099511693715
  store i64 %or2, ptr %features, align 16
  %18 = load ptr, ptr %net, align 4
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlan_features, align 8
  %or4 = or i64 %20, 1099511693331
  store i64 %or4, ptr %vlan_features, align 8
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 524288, ptr %phy_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #12
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2048, ptr %tmp.i, align 4
  %intf.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %23 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %intf.i.i, align 4
  %call.i.i = tail call i32 @usb_autopm_get_interface(ptr noundef %24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.aqc111_write32_cmd.exit_crit_edge, label %if.end.i.i

if.end.aqc111_write32_cmd.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write32_cmd.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i) #12
  %25 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %26) #12
  br label %aqc111_write32_cmd.exit

aqc111_write32_cmd.exit:                          ; preds = %if.end.i.i, %if.end.aqc111_write32_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #12
  %27 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %net, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  %31 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf.i.i, align 4
  %call.i = call i32 @usb_autopm_get_interface(ptr noundef %32) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aqc111_write32_cmd.exit.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_write32_cmd.exit.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_write32_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_write32_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 16, i16 noundef zeroext 6, i16 noundef zeroext 6, ptr noundef %30) #12
  %33 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %34) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_write32_cmd.exit.aqc111_write_cmd.exit_crit_edge
  %35 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %reg8, align 1
  %36 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf.i.i, align 4
  %call.i35 = call i32 @usb_autopm_get_interface(ptr noundef %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp.i36 = icmp slt i32 %call.i35, 0
  br i1 %cmp.i36, label %aqc111_write_cmd.exit.aqc111_write_cmd.exit40_crit_edge, label %if.end.i38

aqc111_write_cmd.exit.aqc111_write_cmd.exit40_crit_edge: ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit40

if.end.i38:                                       ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i37 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %38 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %39) #12
  br label %aqc111_write_cmd.exit40

aqc111_write_cmd.exit40:                          ; preds = %if.end.i38, %aqc111_write_cmd.exit.aqc111_write_cmd.exit40_crit_edge
  %40 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %reg8, align 1
  %41 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf.i.i, align 4
  %call.i42 = call i32 @usb_autopm_get_interface(ptr noundef %42) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp.i43, label %aqc111_write_cmd.exit40.aqc111_write_cmd.exit47_crit_edge, label %if.end.i45

aqc111_write_cmd.exit40.aqc111_write_cmd.exit47_crit_edge: ; preds = %aqc111_write_cmd.exit40
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit47

if.end.i45:                                       ; preds = %aqc111_write_cmd.exit40
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i44 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 177, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %43 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %44) #12
  br label %aqc111_write_cmd.exit47

aqc111_write_cmd.exit47:                          ; preds = %if.end.i45, %aqc111_write_cmd.exit40.aqc111_write_cmd.exit47_crit_edge
  %call.i48 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 36, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.then.i, label %aqc111_write_cmd.exit47.aqc111_read_cmd.exit_crit_edge, !prof !66

aqc111_write_cmd.exit47.aqc111_read_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit

if.then.i:                                        ; preds = %aqc111_write_cmd.exit47
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %46, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i48) #15
  br label %aqc111_read_cmd.exit

aqc111_read_cmd.exit:                             ; preds = %if.then.i, %aqc111_write_cmd.exit47.aqc111_read_cmd.exit_crit_edge
  %47 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %reg8, align 1
  %49 = and i8 %48, -32
  store i8 %49, ptr %reg8, align 1
  %50 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intf.i.i, align 4
  %call.i52 = call i32 @usb_autopm_get_interface(ptr noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.i53 = icmp slt i32 %call.i52, 0
  br i1 %cmp.i53, label %aqc111_read_cmd.exit.aqc111_write_cmd.exit57_crit_edge, label %if.end.i55

aqc111_read_cmd.exit.aqc111_write_cmd.exit57_crit_edge: ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit57

if.end.i55:                                       ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i54 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 36, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %52 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %53) #12
  br label %aqc111_write_cmd.exit57

aqc111_write_cmd.exit57:                          ; preds = %if.end.i55, %aqc111_read_cmd.exit.aqc111_write_cmd.exit57_crit_edge
  %54 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %net, align 4
  call void @netif_carrier_off(ptr noundef %55) #12
  %autoneg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %autoneg, align 1
  %advertised_speed = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %advertised_speed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %advertised_speed, align 4
  %conv15 = trunc i32 %59 to i16
  call fastcc void @aqc111_set_phy_speed(ptr noundef %dev, i8 noundef zeroext %57, i16 noundef zeroext %conv15)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_stop(ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i21 = alloca i32, align 4
  %tmp.i14 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %2 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %reg16, align 2
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.aqc111_read16_cmd.exit_crit_edge, !prof !66

entry.aqc111_read16_cmd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %4, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd.exit

aqc111_read16_cmd.exit:                           ; preds = %if.then.i.i, %entry.aqc111_read16_cmd.exit_crit_edge
  %5 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg16, align 2
  %7 = and i16 %6, -2
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %10 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %7, ptr %tmp.i, align 2
  %intf.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i.i, align 4
  %call.i.i12 = call i32 @usb_autopm_get_interface(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp.i.i13 = icmp slt i32 %call.i.i12, 0
  br i1 %cmp.i.i13, label %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i

aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %13 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %14) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %15 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i14) #12
  %16 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %tmp.i14, align 2
  %17 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i.i, align 4
  %call.i.i16 = call i32 @usb_autopm_get_interface(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %cmp.i.i17 = icmp slt i32 %call.i.i16, 0
  br i1 %cmp.i.i17, label %aqc111_write16_cmd.exit.aqc111_write16_cmd.exit20_crit_edge, label %if.end.i.i19

aqc111_write16_cmd.exit.aqc111_write16_cmd.exit20_crit_edge: ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit20

if.end.i.i19:                                     ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i18 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i14) #12
  %19 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %20) #12
  br label %aqc111_write16_cmd.exit20

aqc111_write16_cmd.exit20:                        ; preds = %if.end.i.i19, %aqc111_write16_cmd.exit.aqc111_write16_cmd.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i14) #12
  %phy_cfg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %phy_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_cfg, align 4
  %or = or i32 %22, 262144
  store i32 %or, ptr %phy_cfg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i21) #12
  %23 = call i32 @llvm.bswap.i32(i32 %or) #12
  %24 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i21, align 4
  %25 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf.i.i, align 4
  %call.i.i23 = call i32 @usb_autopm_get_interface(ptr noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %cmp.i.i24 = icmp slt i32 %call.i.i23, 0
  br i1 %cmp.i.i24, label %aqc111_write16_cmd.exit20.aqc111_write32_cmd.exit_crit_edge, label %if.end.i.i26

aqc111_write16_cmd.exit20.aqc111_write32_cmd.exit_crit_edge: ; preds = %aqc111_write16_cmd.exit20
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write32_cmd.exit

if.end.i.i26:                                     ; preds = %aqc111_write16_cmd.exit20
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i25 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 97, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %tmp.i21) #12
  %27 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %28) #12
  br label %aqc111_write32_cmd.exit

aqc111_write32_cmd.exit:                          ; preds = %if.end.i.i26, %aqc111_write16_cmd.exit20.aqc111_write32_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i21) #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net, align 4
  call void @netif_carrier_off(ptr noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqc111_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %0 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ult i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #12
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %5, align 8
  %10 = trunc i64 %8 to i32
  %11 = lshr i32 %10, 15
  %12 = and i32 %11, 1
  %and3 = lshr i64 %8, 8
  %13 = trunc i64 %and3 to i8
  %conv = and i8 %13, 127
  %link_speed = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %link_speed to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %link_speed, align 1
  %conv4 = trunc i32 %12 to i8
  %link5 = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %link5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv4, ptr %link5, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %16 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = lshr i32 %19, 2
  %.lobit = and i32 %20, 1
  %21 = xor i32 %.lobit, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp7.not = icmp eq i32 %12, %21
  br i1 %cmp7.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usbnet_defer_kevent(ptr noundef %dev, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %tmp.i176 = alloca i16, align 2
  %tmp.i168 = alloca i16, align 2
  %tmp.i155 = alloca i16, align 2
  %tmp.i147 = alloca i16, align 2
  %reg8.i136 = alloca i8, align 1
  %tmp.i128 = alloca i16, align 2
  %tmp.i120 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  %buf.i = alloca [5 x i8], align 1
  %reg8.i = alloca i8, align 1
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %2 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %3 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg8, align 1
  %link = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf.i) #12
  %10 = getelementptr inbounds i8, ptr %buf.i, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8.i) #12
  %12 = ptrtoint ptr %reg8.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %reg8.i, align 1
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  %arrayidx1.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -8, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr inbounds [5 x i8], ptr %buf.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %arrayidx2.i, align 1
  %link_speed3.i = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %link_speed3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %link_speed3.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %17, label %if.then.sw.epilog.i_crit_edge [
    i8 15, label %sw.bb.i
    i8 16, label %sw.bb4.i
    i8 17, label %sw.bb5.i
    i8 19, label %sw.bb6.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %reg8.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %reg8.i, align 1
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -5, ptr %arrayidx1.i, align 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %arrayidx2.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %if.then.sw.epilog.i_crit_edge
  %reg16.0.i = phi i16 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 1599, %sw.bb6.i ], [ 159, %sw.bb5.i ], [ 63, %sw.bb4.i ], [ 31, %sw.bb.i ]
  %link_speed.0.i = phi i32 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 100, %sw.bb6.i ], [ 1000, %sw.bb5.i ], [ 2500, %sw.bb4.i ], [ 5000, %sw.bb.i ]
  %queue_num.0.i = phi i8 [ 0, %if.then.sw.epilog.i_crit_edge ], [ 1, %sw.bb6.i ], [ 0, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb.i ]
  %intf.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %22 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %intf.i.i, align 4
  %call.i.i = tail call i32 @usb_autopm_get_interface(ptr noundef %23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %sw.epilog.i.aqc111_write_cmd.exit.i_crit_edge, label %if.end.i.i

sw.epilog.i.aqc111_write_cmd.exit.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 13, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8.i) #12
  %24 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %25) #12
  br label %aqc111_write_cmd.exit.i

aqc111_write_cmd.exit.i:                          ; preds = %if.end.i.i, %sw.epilog.i.aqc111_write_cmd.exit.i_crit_edge
  %26 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf.i.i, align 4
  %call.i66.i = call i32 @usb_autopm_get_interface(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66.i)
  %cmp.i67.i = icmp slt i32 %call.i66.i, 0
  br i1 %cmp.i67.i, label %aqc111_write_cmd.exit.i.aqc111_write_cmd.exit71.i_crit_edge, label %if.end.i69.i

aqc111_write_cmd.exit.i.aqc111_write_cmd.exit71.i_crit_edge: ; preds = %aqc111_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit71.i

if.end.i69.i:                                     ; preds = %aqc111_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i68.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 178, i16 noundef zeroext 3, i16 noundef zeroext 3, ptr noundef nonnull %buf.i) #12
  %28 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %29) #12
  br label %aqc111_write_cmd.exit71.i

aqc111_write_cmd.exit71.i:                        ; preds = %if.end.i69.i, %aqc111_write_cmd.exit.i.aqc111_write_cmd.exit71.i_crit_edge
  %30 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %9, label %sw.default.i [
    i32 5, label %aqc111_write_cmd.exit71.i.sw.epilog13.i_crit_edge
    i32 3, label %sw.bb11.i
    i32 2, label %aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge
    i32 1, label %aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge198
  ]

aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge198: ; preds = %aqc111_write_cmd.exit71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12.i

aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge:    ; preds = %aqc111_write_cmd.exit71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12.i

aqc111_write_cmd.exit71.i.sw.epilog13.i_crit_edge: ; preds = %aqc111_write_cmd.exit71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog13.i

sw.bb11.i:                                        ; preds = %aqc111_write_cmd.exit71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog13.i

sw.bb12.i:                                        ; preds = %aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge, %aqc111_write_cmd.exit71.i.sw.bb12.i_crit_edge198
  br label %sw.epilog13.i

sw.default.i:                                     ; preds = %aqc111_write_cmd.exit71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog13.i

sw.epilog13.i:                                    ; preds = %sw.default.i, %sw.bb12.i, %sw.bb11.i, %aqc111_write_cmd.exit71.i.sw.epilog13.i_crit_edge
  %usb_host.0.i = phi i32 [ 0, %sw.default.i ], [ 1, %sw.bb12.i ], [ 2, %sw.bb11.i ], [ 3, %aqc111_write_cmd.exit71.i.sw.epilog13.i_crit_edge ]
  %queue_num.1.i = phi i8 [ %queue_num.0.i, %sw.default.i ], [ 0, %sw.bb12.i ], [ %queue_num.0.i, %sw.bb11.i ], [ %queue_num.0.i, %aqc111_write_cmd.exit71.i.sw.epilog13.i_crit_edge ]
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 20
  %33 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mtu.i, align 4
  %35 = add i32 %34, -12501
  call void @__sanitizer_cov_trace_const_cmp4(i32 3834, i32 %35)
  %36 = icmp ult i32 %35, 3834
  %37 = zext i8 %queue_num.1.i to i32
  %idxprom.i = select i1 %36, i32 2, i32 %37
  %arrayidx20.i = getelementptr [3 x %struct.anon.124], ptr @AQC111_BULKIN_SIZE, i32 0, i32 %idxprom.i
  %38 = call ptr @memcpy(ptr %buf.i, ptr %arrayidx20.i, i32 5)
  %39 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf.i.i, align 4
  %call.i73.i = call i32 @usb_autopm_get_interface(ptr noundef %40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp.i74.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp.i74.i, label %sw.epilog13.i.aqc111_write_cmd.exit78.i_crit_edge, label %if.end.i76.i

sw.epilog13.i.aqc111_write_cmd.exit78.i_crit_edge: ; preds = %sw.epilog13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit78.i

if.end.i76.i:                                     ; preds = %sw.epilog13.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i75.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 46, i16 noundef zeroext 5, i16 noundef zeroext 5, ptr noundef nonnull %buf.i) #12
  %41 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %42) #12
  br label %aqc111_write_cmd.exit78.i

aqc111_write_cmd.exit78.i:                        ; preds = %if.end.i76.i, %sw.epilog13.i.aqc111_write_cmd.exit78.i_crit_edge
  %43 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net.i, align 4
  %mtu24.i = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %mtu24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mtu24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4501, i32 %46)
  %cmp25.i = icmp ult i32 %46, 4501
  br i1 %cmp25.i, label %aqc111_write_cmd.exit78.i.if.end48.i_crit_edge, label %if.else.i

aqc111_write_cmd.exit78.i.if.end48.i_crit_edge:   ; preds = %aqc111_write_cmd.exit78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.else.i:                                        ; preds = %aqc111_write_cmd.exit78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9501, i32 %46)
  %cmp30.i = icmp ult i32 %46, 9501
  br i1 %cmp30.i, label %if.else.i.if.end48.i_crit_edge, label %if.else33.i

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.else33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12501, i32 %46)
  %cmp36.i = icmp ult i32 %46, 12501
  br i1 %cmp36.i, label %if.else33.i.if.end48.i_crit_edge, label %if.else39.i

if.else33.i.if.end48.i_crit_edge:                 ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.else39.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 16335, i32 %46)
  %cmp42.i = icmp ult i32 %46, 16335
  %spec.select.i = select i1 %cmp42.i, i16 6688, i16 %reg16.0.i
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else39.i, %if.else33.i.if.end48.i_crit_edge, %if.else.i.if.end48.i_crit_edge, %aqc111_write_cmd.exit78.i.if.end48.i_crit_edge
  %reg16.1.i = phi i16 [ 2064, %aqc111_write_cmd.exit78.i.if.end48.i_crit_edge ], [ 4128, %if.else.i.if.end48.i_crit_edge ], [ 5152, %if.else33.i.if.end48.i_crit_edge ], [ %spec.select.i, %if.else39.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #12
  %47 = call i16 @llvm.bswap.i16(i16 %reg16.1.i) #12
  %48 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %tmp.i.i, align 2
  %49 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf.i.i, align 4
  %call.i.i.i = call i32 @usb_autopm_get_interface(ptr noundef %50) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end48.i.aqc111_configure_rx.exit_crit_edge, label %if.end.i.i.i

if.end48.i.aqc111_configure_rx.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_configure_rx.exit

if.end.i.i.i:                                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 84, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i.i) #12
  %51 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %52) #12
  br label %aqc111_configure_rx.exit

aqc111_configure_rx.exit:                         ; preds = %if.end.i.i.i, %if.end48.i.aqc111_configure_rx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #12
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %54, ptr noundef nonnull @.str.10, i32 noundef %link_speed.0.i, i32 noundef %usb_host.0.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8.i) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf.i) #12
  %55 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net.i, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 23
  %57 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features, align 16
  %and = and i64 %58, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.store.select = select i1 %tobool.not, i8 16, i8 48
  %59 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %spec.store.select, ptr %reg8, align 1
  %60 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %intf.i.i, align 4
  %call.i = call i32 @usb_autopm_get_interface(ptr noundef %61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aqc111_configure_rx.exit.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_configure_rx.exit.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_configure_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_configure_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %62 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %63) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_configure_rx.exit.aqc111_write_cmd.exit_crit_edge
  %64 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %reg8, align 1
  %65 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %intf.i.i, align 4
  %call.i80 = call i32 @usb_autopm_get_interface(ptr noundef %66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp.i81 = icmp slt i32 %call.i80, 0
  br i1 %cmp.i81, label %aqc111_write_cmd.exit.aqc111_write_cmd.exit85_crit_edge, label %if.end.i83

aqc111_write_cmd.exit.aqc111_write_cmd.exit85_crit_edge: ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit85

if.end.i83:                                       ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i82 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 67, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %67 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %68) #12
  br label %aqc111_write_cmd.exit85

aqc111_write_cmd.exit85:                          ; preds = %if.end.i83, %aqc111_write_cmd.exit.aqc111_write_cmd.exit85_crit_edge
  %69 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %intf.i.i, align 4
  %call.i87 = call i32 @usb_autopm_get_interface(ptr noundef %70) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.i88 = icmp slt i32 %call.i87, 0
  br i1 %cmp.i88, label %aqc111_write_cmd.exit85.aqc111_write_cmd.exit92_crit_edge, label %if.end.i90

aqc111_write_cmd.exit85.aqc111_write_cmd.exit92_crit_edge: ; preds = %aqc111_write_cmd.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit92

if.end.i90:                                       ; preds = %aqc111_write_cmd.exit85
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i89 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 70, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %71 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %72) #12
  br label %aqc111_write_cmd.exit92

aqc111_write_cmd.exit92:                          ; preds = %if.end.i90, %aqc111_write_cmd.exit85.aqc111_write_cmd.exit92_crit_edge
  %73 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %intf.i.i, align 4
  %call.i94 = call i32 @usb_autopm_get_interface(ptr noundef %74) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp slt i32 %call.i94, 0
  br i1 %cmp.i95, label %aqc111_write_cmd.exit92.aqc111_write_cmd.exit99_crit_edge, label %if.end.i97

aqc111_write_cmd.exit92.aqc111_write_cmd.exit99_crit_edge: ; preds = %aqc111_write_cmd.exit92
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit99

if.end.i97:                                       ; preds = %aqc111_write_cmd.exit92
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i96 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 158, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %75 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %76) #12
  br label %aqc111_write_cmd.exit99

aqc111_write_cmd.exit99:                          ; preds = %if.end.i97, %aqc111_write_cmd.exit92.aqc111_write_cmd.exit99_crit_edge
  %77 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 520, ptr %reg16, align 2
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 520, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %79 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %reg16, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #12
  %82 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %tmp.i, align 2
  %83 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %intf.i.i, align 4
  %call.i.i101 = call i32 @usb_autopm_get_interface(ptr noundef %84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.i.i102 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp.i.i102, label %aqc111_write_cmd.exit99.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i104

aqc111_write_cmd.exit99.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i104:                                    ; preds = %aqc111_write_cmd.exit99
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i103 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %85 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %86) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i104, %aqc111_write_cmd.exit99.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %87 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %reg8, align 1
  %88 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %intf.i.i, align 4
  %call.i107 = call i32 @usb_autopm_get_interface(ptr noundef %89) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp.i108, label %aqc111_write16_cmd.exit.aqc111_write_cmd.exit112_crit_edge, label %if.end.i110

aqc111_write16_cmd.exit.aqc111_write_cmd.exit112_crit_edge: ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit112

if.end.i110:                                      ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i109 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 183, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %90 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %91) #12
  br label %aqc111_write_cmd.exit112

aqc111_write_cmd.exit112:                         ; preds = %if.end.i110, %aqc111_write16_cmd.exit.aqc111_write_cmd.exit112_crit_edge
  %92 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %reg8, align 1
  %93 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %intf.i.i, align 4
  %call.i114 = call i32 @usb_autopm_get_interface(ptr noundef %94) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %aqc111_write_cmd.exit112.aqc111_write_cmd.exit119_crit_edge, label %if.end.i117

aqc111_write_cmd.exit112.aqc111_write_cmd.exit119_crit_edge: ; preds = %aqc111_write_cmd.exit112
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit119

if.end.i117:                                      ; preds = %aqc111_write_cmd.exit112
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i116 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 185, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %95 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %96) #12
  br label %aqc111_write_cmd.exit119

aqc111_write_cmd.exit119:                         ; preds = %if.end.i117, %aqc111_write_cmd.exit112.aqc111_write_cmd.exit119_crit_edge
  %97 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i120) #12
  %98 = ptrtoint ptr %tmp.i120 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %tmp.i120, align 2
  %99 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %intf.i.i, align 4
  %call.i.i122 = call i32 @usb_autopm_get_interface(ptr noundef %100) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %cmp.i.i123 = icmp slt i32 %call.i.i122, 0
  br i1 %cmp.i.i123, label %aqc111_write_cmd.exit119.aqc111_write16_cmd.exit127_crit_edge, label %if.end.i.i125

aqc111_write_cmd.exit119.aqc111_write16_cmd.exit127_crit_edge: ; preds = %aqc111_write_cmd.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit127

if.end.i.i125:                                    ; preds = %aqc111_write_cmd.exit119
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i124 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i120) #12
  %101 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %102) #12
  br label %aqc111_write16_cmd.exit127

aqc111_write16_cmd.exit127:                       ; preds = %if.end.i.i125, %aqc111_write_cmd.exit119.aqc111_write16_cmd.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i120) #12
  %103 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 3, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i128) #12
  %104 = ptrtoint ptr %tmp.i128 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 768, ptr %tmp.i128, align 2
  %105 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %intf.i.i, align 4
  %call.i.i130 = call i32 @usb_autopm_get_interface(ptr noundef %106) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %cmp.i.i131 = icmp slt i32 %call.i.i130, 0
  br i1 %cmp.i.i131, label %aqc111_write16_cmd.exit127.aqc111_write16_cmd.exit135_crit_edge, label %if.end.i.i133

aqc111_write16_cmd.exit127.aqc111_write16_cmd.exit135_crit_edge: ; preds = %aqc111_write16_cmd.exit127
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit135

if.end.i.i133:                                    ; preds = %aqc111_write16_cmd.exit127
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i132 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i128) #12
  %107 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %108) #12
  br label %aqc111_write16_cmd.exit135

aqc111_write16_cmd.exit135:                       ; preds = %if.end.i.i133, %aqc111_write16_cmd.exit127.aqc111_write16_cmd.exit135_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i128) #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8.i136) #12
  %109 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %net.i, align 4
  %features.i = getelementptr inbounds %struct.net_device, ptr %110, i32 0, i32 23
  %111 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %features.i, align 16
  %and.i = and i64 %112, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 0, i8 103
  %113 = ptrtoint ptr %reg8.i136 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %spec.store.select.i, ptr %reg8.i136, align 1
  %114 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %intf.i.i, align 4
  %call.i.i139 = call i32 @usb_autopm_get_interface(ptr noundef %115) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i139)
  %cmp.i.i140 = icmp slt i32 %call.i.i139, 0
  br i1 %cmp.i.i140, label %aqc111_write16_cmd.exit135.aqc111_write_cmd.exit.i144_crit_edge, label %if.end.i.i142

aqc111_write16_cmd.exit135.aqc111_write_cmd.exit.i144_crit_edge: ; preds = %aqc111_write16_cmd.exit135
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit.i144

if.end.i.i142:                                    ; preds = %aqc111_write16_cmd.exit135
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i141 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 52, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8.i136) #12
  %116 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %117) #12
  br label %aqc111_write_cmd.exit.i144

aqc111_write_cmd.exit.i144:                       ; preds = %if.end.i.i142, %aqc111_write16_cmd.exit135.aqc111_write_cmd.exit.i144_crit_edge
  %118 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %net.i, align 4
  %features3.i = getelementptr inbounds %struct.net_device, ptr %119, i32 0, i32 23
  %120 = ptrtoint ptr %features3.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %features3.i, align 16
  %and4.i = and i64 %121, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4.i)
  %tobool5.not.i = icmp eq i64 %and4.i, 0
  %spec.store.select25.i = select i1 %tobool5.not.i, i8 0, i8 7
  %and13.i = and i64 %121, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i)
  %tobool14.not.i = icmp eq i64 %and13.i, 0
  %122 = or i8 %spec.store.select25.i, 96
  %spec.select.i143 = select i1 %tobool14.not.i, i8 %spec.store.select25.i, i8 %122
  %123 = ptrtoint ptr %reg8.i136 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %spec.select.i143, ptr %reg8.i136, align 1
  %124 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %intf.i.i, align 4
  %call.i27.i = call i32 @usb_autopm_get_interface(ptr noundef %125) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp.i28.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp.i28.i, label %aqc111_write_cmd.exit.i144.aqc111_configure_csum_offload.exit_crit_edge, label %if.end.i30.i

aqc111_write_cmd.exit.i144.aqc111_configure_csum_offload.exit_crit_edge: ; preds = %aqc111_write_cmd.exit.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_configure_csum_offload.exit

if.end.i30.i:                                     ; preds = %aqc111_write_cmd.exit.i144
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i29.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 53, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8.i136) #12
  %126 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %127) #12
  br label %aqc111_configure_csum_offload.exit

aqc111_configure_csum_offload.exit:               ; preds = %if.end.i30.i, %aqc111_write_cmd.exit.i144.aqc111_configure_csum_offload.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8.i136) #12
  %128 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %net.i, align 4
  call void @aqc111_set_rx_mode(ptr noundef %129)
  %call.i.i145 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145)
  %cmp.i.i146 = icmp slt i32 %call.i.i145, 0
  br i1 %cmp.i.i146, label %if.then.i.i, label %aqc111_configure_csum_offload.exit.aqc111_read16_cmd.exit_crit_edge, !prof !66

aqc111_configure_csum_offload.exit.aqc111_read16_cmd.exit_crit_edge: ; preds = %aqc111_configure_csum_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit

if.then.i.i:                                      ; preds = %aqc111_configure_csum_offload.exit
  call void @__sanitizer_cov_trace_pc() #14
  %130 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %131, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i145) #15
  br label %aqc111_read16_cmd.exit

aqc111_read16_cmd.exit:                           ; preds = %if.then.i.i, %aqc111_configure_csum_offload.exit.aqc111_read16_cmd.exit_crit_edge
  %132 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %reg16, align 2
  %134 = call i16 @llvm.bswap.i16(i16 %133) #12
  %135 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %reg16, align 2
  %136 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %net.i, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 20
  %138 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %139)
  %cmp16 = icmp ugt i32 %139, 1500
  br i1 %cmp16, label %if.then18, label %aqc111_read16_cmd.exit.if.end22_crit_edge

aqc111_read16_cmd.exit.if.end22_crit_edge:        ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then18:                                        ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %140 = or i16 %134, 64
  %141 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %reg16, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %aqc111_read16_cmd.exit.if.end22_crit_edge
  %142 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %reg16, align 2
  %144 = or i16 %143, 304
  store i16 %144, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i147) #12
  %145 = call i16 @llvm.bswap.i16(i16 %144) #12
  %146 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %tmp.i147, align 2
  %147 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %intf.i.i, align 4
  %call.i.i149 = call i32 @usb_autopm_get_interface(ptr noundef %148) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i149)
  %cmp.i.i150 = icmp slt i32 %call.i.i149, 0
  br i1 %cmp.i.i150, label %if.end22.aqc111_write16_cmd.exit154_crit_edge, label %if.end.i.i152

if.end22.aqc111_write16_cmd.exit154_crit_edge:    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit154

if.end.i.i152:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i151 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i147) #12
  %149 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %150) #12
  br label %aqc111_write16_cmd.exit154

aqc111_write16_cmd.exit154:                       ; preds = %if.end.i.i152, %if.end22.aqc111_write16_cmd.exit154_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i147) #12
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %1, align 4
  %153 = or i16 %152, 128
  store i16 %153, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i155) #12
  %154 = call i16 @llvm.bswap.i16(i16 %153) #12
  %155 = ptrtoint ptr %tmp.i155 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %tmp.i155, align 2
  %156 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %intf.i.i, align 4
  %call.i.i157 = call i32 @usb_autopm_get_interface(ptr noundef %157) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %cmp.i.i158 = icmp slt i32 %call.i.i157, 0
  br i1 %cmp.i.i158, label %aqc111_write16_cmd.exit154.aqc111_write16_cmd.exit162_crit_edge, label %if.end.i.i160

aqc111_write16_cmd.exit154.aqc111_write16_cmd.exit162_crit_edge: ; preds = %aqc111_write16_cmd.exit154
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit162

if.end.i.i160:                                    ; preds = %aqc111_write16_cmd.exit154
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i159 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i155) #12
  %158 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %159) #12
  br label %aqc111_write16_cmd.exit162

aqc111_write16_cmd.exit162:                       ; preds = %if.end.i.i160, %aqc111_write16_cmd.exit154.aqc111_write16_cmd.exit162_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i155) #12
  %160 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %net.i, align 4
  call void @netif_carrier_on(ptr noundef %161) #12
  br label %if.end48

if.else:                                          ; preds = %entry
  %call.i.i163 = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp.i.i164 = icmp slt i32 %call.i.i163, 0
  br i1 %cmp.i.i164, label %if.then.i.i166, label %if.else.aqc111_read16_cmd.exit167_crit_edge, !prof !66

if.else.aqc111_read16_cmd.exit167_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit167

if.then.i.i166:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i165 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %162 = ptrtoint ptr %net.i.i165 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %net.i.i165, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %163, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i163) #15
  br label %aqc111_read16_cmd.exit167

aqc111_read16_cmd.exit167:                        ; preds = %if.then.i.i166, %if.else.aqc111_read16_cmd.exit167_crit_edge
  %164 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %reg16, align 2
  %166 = and i16 %165, -2
  %167 = call i16 @llvm.bswap.i16(i16 %166)
  %168 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i168) #12
  %169 = ptrtoint ptr %tmp.i168 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %166, ptr %tmp.i168, align 2
  %intf.i.i169 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 1
  %170 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %intf.i.i169, align 4
  %call.i.i170 = call i32 @usb_autopm_get_interface(ptr noundef %171) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i170)
  %cmp.i.i171 = icmp slt i32 %call.i.i170, 0
  br i1 %cmp.i.i171, label %aqc111_read16_cmd.exit167.aqc111_write16_cmd.exit175_crit_edge, label %if.end.i.i173

aqc111_read16_cmd.exit167.aqc111_write16_cmd.exit175_crit_edge: ; preds = %aqc111_read16_cmd.exit167
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit175

if.end.i.i173:                                    ; preds = %aqc111_read16_cmd.exit167
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i172 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i168) #12
  %172 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %intf.i.i169, align 4
  call void @usb_autopm_put_interface(ptr noundef %173) #12
  br label %aqc111_write16_cmd.exit175

aqc111_write16_cmd.exit175:                       ; preds = %if.end.i.i173, %aqc111_read16_cmd.exit167.aqc111_write16_cmd.exit175_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i168) #12
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %1, align 4
  %176 = and i16 %175, -129
  store i16 %176, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i176) #12
  %177 = call i16 @llvm.bswap.i16(i16 %176) #12
  %178 = ptrtoint ptr %tmp.i176 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %tmp.i176, align 2
  %179 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %intf.i.i169, align 4
  %call.i.i178 = call i32 @usb_autopm_get_interface(ptr noundef %180) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i178)
  %cmp.i.i179 = icmp slt i32 %call.i.i178, 0
  br i1 %cmp.i.i179, label %aqc111_write16_cmd.exit175.aqc111_write16_cmd.exit183_crit_edge, label %if.end.i.i181

aqc111_write16_cmd.exit175.aqc111_write16_cmd.exit183_crit_edge: ; preds = %aqc111_write16_cmd.exit175
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit183

if.end.i.i181:                                    ; preds = %aqc111_write16_cmd.exit175
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i180 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 11, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i176) #12
  %181 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %intf.i.i169, align 4
  call void @usb_autopm_put_interface(ptr noundef %182) #12
  br label %aqc111_write16_cmd.exit183

aqc111_write16_cmd.exit183:                       ; preds = %if.end.i.i181, %aqc111_write16_cmd.exit175.aqc111_write16_cmd.exit183_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i176) #12
  %183 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 3, ptr %reg8, align 1
  %184 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %intf.i.i169, align 4
  %call.i185 = call i32 @usb_autopm_get_interface(ptr noundef %185) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %cmp.i186 = icmp slt i32 %call.i185, 0
  br i1 %cmp.i186, label %aqc111_write16_cmd.exit183.aqc111_write_cmd.exit190_crit_edge, label %if.end.i188

aqc111_write16_cmd.exit183.aqc111_write_cmd.exit190_crit_edge: ; preds = %aqc111_write16_cmd.exit183
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit190

if.end.i188:                                      ; preds = %aqc111_write16_cmd.exit183
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i187 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 185, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %186 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %intf.i.i169, align 4
  call void @usb_autopm_put_interface(ptr noundef %187) #12
  br label %aqc111_write_cmd.exit190

aqc111_write_cmd.exit190:                         ; preds = %if.end.i188, %aqc111_write16_cmd.exit183.aqc111_write_cmd.exit190_crit_edge
  %188 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 2, ptr %reg8, align 1
  %189 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %intf.i.i169, align 4
  %call.i192 = call i32 @usb_autopm_get_interface(ptr noundef %190) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %cmp.i193 = icmp slt i32 %call.i192, 0
  br i1 %cmp.i193, label %aqc111_write_cmd.exit190.aqc111_write_cmd.exit197_crit_edge, label %if.end.i195

aqc111_write_cmd.exit190.aqc111_write_cmd.exit197_crit_edge: ; preds = %aqc111_write_cmd.exit190
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit197

if.end.i195:                                      ; preds = %aqc111_write_cmd.exit190
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i194 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %dev, i8 noundef zeroext 1, i16 noundef zeroext 185, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %191 = ptrtoint ptr %intf.i.i169 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %intf.i.i169, align 4
  call void @usb_autopm_put_interface(ptr noundef %192) #12
  br label %aqc111_write_cmd.exit197

aqc111_write_cmd.exit197:                         ; preds = %if.end.i195, %aqc111_write_cmd.exit190.aqc111_write_cmd.exit197_crit_edge
  %net47 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %193 = ptrtoint ptr %net47 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %net47, align 4
  call void @netif_carrier_off(ptr noundef %194) #12
  br label %if.end48

if.end48:                                         ; preds = %aqc111_write_cmd.exit197, %aqc111_write16_cmd.exit162
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %entry.cleanup83_crit_edge, label %if.end

entry.cleanup83_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup83_crit_edge, label %if.end2

if.end.cleanup83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end2:                                          ; preds = %if.end
  %sub = add i32 %3, -8
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef %sub) #12
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %5, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #12
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 13
  %11 = trunc i64 %8 to i16
  %conv7 = and i16 %11, 8191
  %conv8 = zext i16 %conv7 to i32
  %add.neg = mul nsw i32 %conv8, -8
  %sub9 = add i32 %sub, %add.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %sub9, i32 %10)
  %cmp10.not = icmp ne i32 %sub9, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp14.not = icmp uge i32 %10, %3
  %or.cond.not = or i1 %cmp14.not, %cmp10.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7)
  %cmp19 = icmp eq i16 %conv7, 0
  %or.cond136 = select i1 %or.cond.not, i1 true, i1 %cmp19
  br i1 %or.cond136, label %if.end2.cleanup83_crit_edge, label %if.end22

if.end2.cleanup83_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end22:                                         ; preds = %if.end2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %10
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %rx_checksum = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end22
  %dec150.in = phi i16 [ %conv7, %if.end22 ], [ %dec150, %cleanup.while.body_crit_edge ]
  %pkt_desc_ptr.0149 = phi ptr [ %add.ptr, %if.end22 ], [ %pkt_desc_ptr.1, %cleanup.while.body_crit_edge ]
  %pkt_total_offset.0148 = phi i32 [ 0, %if.end22 ], [ %add30, %cleanup.while.body_crit_edge ]
  %dec150 = add nsw i16 %dec150.in, -1
  %14 = ptrtoint ptr %pkt_desc_ptr.0149 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pkt_desc_ptr.0149, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #12
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 16
  %conv27 = and i32 %18, 32767
  %add28 = add nuw nsw i32 %conv27, 7
  %and29 = and i32 %add28, 65528
  %add30 = add i32 %and29, %pkt_total_offset.0148
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %10)
  %cmp31 = icmp ugt i32 %add30, %10
  br i1 %cmp31, label %while.body.cleanup83_crit_edge, label %lor.lhs.false

while.body.cleanup83_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

lor.lhs.false:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec150)
  %cmp34 = icmp eq i16 %dec150, 0
  %cmp34.not = xor i1 %cmp34, true
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %10)
  %cmp36.not = icmp eq i32 %add30, %10
  %or.cond137 = select i1 %cmp34.not, i1 true, i1 %cmp36.not
  br i1 %or.cond137, label %if.end39, label %lor.lhs.false.cleanup83_crit_edge

lor.lhs.false.cleanup83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end39:                                         ; preds = %lor.lhs.false
  %19 = and i64 %16, 2147485696
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %19)
  %.not = icmp eq i64 %19, 2048
  br i1 %.not, label %lor.lhs.false45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false45:                                  ; preds = %if.end39
  %20 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hard_mtu, align 4
  %add46 = add i32 %21, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %conv27, i32 %add46)
  %cmp47 = icmp ugt i32 %conv27, %add46
  br i1 %cmp47, label %lor.lhs.false45.cleanup_crit_edge, label %if.end51

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end51:                                         ; preds = %lor.lhs.false45
  %call52 = tail call ptr @skb_clone(ptr noundef nonnull %skb, i32 noundef 2592) #12
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.cleanup83_crit_edge, label %if.end55

if.end51.cleanup83_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

if.end55:                                         ; preds = %if.end51
  %len56 = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 6
  %22 = ptrtoint ptr %len56 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv27, ptr %len56, align 4
  %call57 = tail call ptr @skb_pull(ptr noundef nonnull %call52, i32 noundef 2) #12
  %23 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len56, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 19
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %24
  %tail.i139 = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 16
  %27 = ptrtoint ptr %tail.i139 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %tail.i139, align 8
  %add61 = add i32 %24, 512
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 20
  %28 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add61, ptr %truesize, align 8
  %29 = ptrtoint ptr %rx_checksum to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_checksum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool62.not = icmp eq i8 %30, 0
  br i1 %tobool62.not, label %if.end55.if.end64_crit_edge, label %if.then63

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then63:                                        ; preds = %if.end55
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %32 = and i64 %16, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %if.end.i, label %if.then63.if.end64_crit_edge

if.then63.if.end64_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end.i:                                         ; preds = %if.then63
  %conv.i = and i32 %17, 28
  %34 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %conv.i, label %if.end.i.if.end64_crit_edge [
    i32 16, label %if.end.i.if.then8.i_crit_edge
    i32 4, label %if.end.i.if.then8.i_crit_edge155
  ]

if.end.i.if.then8.i_crit_edge155:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8.i

if.end.i.if.end64_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge155
  %bf.set12.i = or i16 %bf.clear.i, 512
  %35 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.set12.i, ptr %ip_summed.i, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then8.i, %if.end.i.if.end64_crit_edge, %if.then63.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  %and65 = and i64 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end73_crit_edge, label %if.then67

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %shr68 = lshr i64 %16, 32
  %conv69 = trunc i64 %shr68 to i16
  %and71 = and i16 %conv69, 4095
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 15, i32 0, i32 9
  %36 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -32512, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 15, i32 0, i32 10
  %37 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %and71, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %call52, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i140 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i140, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then67, %if.end64.if.end73_crit_edge
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call52) #12
  br i1 %cmp34, label %if.end73.cleanup83_crit_edge, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end73.cleanup83_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

cleanup:                                          ; preds = %if.end73.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %if.end39.cleanup_crit_edge
  %call79 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %and29) #12
  %pkt_desc_ptr.1 = getelementptr i64, ptr %pkt_desc_ptr.0149, i32 1
  br i1 %cmp34, label %cleanup.cleanup83_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.cleanup83_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup.cleanup83_crit_edge, %if.end73.cleanup83_crit_edge, %if.end51.cleanup83_crit_edge, %lor.lhs.false.cleanup83_crit_edge, %while.body.cleanup83_crit_edge, %if.end2.cleanup83_crit_edge, %if.end.cleanup83_crit_edge, %entry.cleanup83_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2.cleanup83_crit_edge ], [ 0, %if.end.cleanup83_crit_edge ], [ 0, %entry.cleanup83_crit_edge ], [ 1, %cleanup.cleanup83_crit_edge ], [ 1, %if.end73.cleanup83_crit_edge ], [ 0, %lor.lhs.false.cleanup83_crit_edge ], [ 0, %while.body.cleanup83_crit_edge ], [ 0, %if.end51.cleanup83_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aqc111_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxpacket, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %and = and i32 %3, 2097151
  %conv = zext i32 %and to i64
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_size, align 4
  %8 = and i16 %7, 32767
  %9 = zext i16 %8 to i64
  %shl = shl nuw nsw i64 %9, 32
  %or4 = or i64 %shl, %conv
  %rem = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %sub = sub nuw nsw i32 8, %rem
  %spec.select = select i1 %cmp.not, i32 0, i32 %sub
  %add8 = add nuw nsw i32 %spec.select, 8
  %add9 = add i32 %add8, %3
  %rem10 = urem i32 %add9, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10)
  %cmp11 = icmp eq i32 %rem10, 0
  %or15 = or i64 %or4, 268435456
  %padding_size.1 = select i1 %cmp11, i32 %add8, i32 %spec.select
  %tx_desc.0 = select i1 %cmp11, i64 %or15, i64 %or4
  %10 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i, align 16
  %and.i = and i64 %14, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.if.end26_crit_edge, label %if.then.i.i

if.then.i.if.end26_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_tci1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  br label %if.then20

if.else.i:                                        ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %h_vlan_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %h_vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_vlan_proto.i.i, align 2
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %19, label %if.else.i.if.end26_crit_edge [
    i16 -30552, label %if.else.i.if.end.i.i_crit_edge
    i16 -32512, label %if.else.i.if.end.i.i_crit_edge101
  ]

if.else.i.if.end.i.i_crit_edge101:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.else.i.if.end26_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end.i.i:                                       ; preds = %if.else.i.if.end.i.i_crit_edge, %if.else.i.if.end.i.i_crit_edge101
  %h_vlan_TCI.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %17, i32 0, i32 2
  br label %if.then20

if.then20:                                        ; preds = %if.end.i.i, %if.then.i.i
  %vlan_tci1.i.sink.i = phi ptr [ %vlan_tci1.i.i, %if.then.i.i ], [ %h_vlan_TCI.i.i, %if.end.i.i ]
  %21 = ptrtoint ptr %vlan_tci1.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_tci1.i.sink.i, align 2
  %conv22 = zext i16 %22 to i64
  %shl24 = shl nuw i64 %conv22, 48
  %or21 = or i64 %shl24, %tx_desc.0
  %or25 = or i64 %or21, 536870912
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.else.i.if.end26_crit_edge, %if.then.i.if.end26_crit_edge
  %tx_desc.1 = phi i64 [ %or25, %if.then20 ], [ %tx_desc.0, %if.else.i.if.end26_crit_edge ], [ %tx_desc.0, %if.then.i.if.end26_crit_edge ]
  %can_dma_sg = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 12
  %23 = ptrtoint ptr %can_dma_sg to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %can_dma_sg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end26
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %24 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %net, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features, align 16
  %and27 = and i64 %27, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool28.not = icmp eq i64 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true29

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.lhs.true29:                                  ; preds = %land.lhs.true
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %land.lhs.true29.if.end33_crit_edge, label %cond.true.i

land.lhs.true29.if.end33_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

cond.true.i:                                      ; preds = %land.lhs.true29
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %29) #12
  %tobool.not.i.i88 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i88, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end33_crit_edge

cond.true.i.if.end33_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end33:                                         ; preds = %cond.true.i.if.end33_crit_edge, %land.lhs.true29.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data_len.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i89 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i90 = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i90, label %cond.false.i, label %if.end33.skb_tailroom.exit_crit_edge

if.end33.skb_tailroom.exit_crit_edge:             ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i92 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i93 = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i94 = sub i32 %sub.ptr.lhs.cast.i92, %sub.ptr.rhs.cast.i93
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end33.skb_tailroom.exit_crit_edge
  %cond.i95 = phi i32 [ %sub.ptr.sub.i94, %cond.false.i ], [ 0, %if.end33.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp36 = icmp ult i32 %sub.ptr.sub.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i95, i32 %padding_size.1)
  %cmp39.not = icmp slt i32 %cond.i95, %padding_size.1
  %or.cond = select i1 %cmp36, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %if.then41, label %skb_tailroom.exit.if.end46_crit_edge

skb_tailroom.exit.if.end46_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then41:                                        ; preds = %skb_tailroom.exit
  %call42 = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 8, i32 noundef %padding_size.1, i32 noundef %flags) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #12
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then41.cleanup_crit_edge, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %if.then41.if.end46_crit_edge, %skb_tailroom.exit.if.end46_crit_edge
  %skb.addr.0 = phi ptr [ %call42, %if.then41.if.end46_crit_edge ], [ %skb, %skb_tailroom.exit.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %padding_size.1)
  %cmp47.not = icmp eq i32 %padding_size.1, 0
  br i1 %cmp47.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @skb_put(ptr noundef %skb.addr.0, i32 noundef %padding_size.1) #12
  %40 = call ptr @memset(ptr %call.i, i32 0, i32 %padding_size.1)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %call52 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 8) #12
  %41 = tail call i64 @llvm.bswap.i64(i64 %tx_desc.1)
  %42 = ptrtoint ptr %call52 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %call52, align 8
  %packets2.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 16
  %43 = ptrtoint ptr %packets2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %packets2.i, align 4
  %length.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %44 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %length.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.then41.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %skb.addr.0, %if.end51 ], [ null, %if.then41.cleanup_crit_edge ], [ null, %cond.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_configuration(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqc111_set_rx_mode(ptr noundef %net) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %m_filter = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %mc = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %6 = and i16 %5, -20
  store i16 %6, ptr %1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and2 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = or i16 %6, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %1, align 4
  br label %if.end71

if.else:                                          ; preds = %entry
  %and7 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp = icmp sgt i32 %3, 64
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = or i16 %6, 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %1, align 4
  br label %if.end71

if.else15:                                        ; preds = %if.else
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp18 = icmp eq i32 %14, 0
  br i1 %cmp18, label %if.else15.if.end71_crit_edge, label %if.then20

if.else15.if.end71_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.then20:                                        ; preds = %if.else15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %m_filter) #12
  %15 = ptrtoint ptr %m_filter to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %m_filter, align 8
  %16 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.0101 = load ptr, ptr %mc, align 4
  %cmp25.not102 = icmp eq ptr %ha.0101, %mc
  br i1 %cmp25.not102, label %if.then20.for.end_crit_edge, label %if.then20.cond.end_crit_edge

if.then20.cond.end_crit_edge:                     ; preds = %if.then20
  br label %cond.end

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then20.cond.end_crit_edge
  %ha.0103 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0101, %if.then20.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0103, i32 0, i32 2
  %call27 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %17 = and i32 %call27, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i.i, align 1
  %shr52 = lshr i8 %19, 2
  %and53 = and i8 %shr52, 7
  %shl54 = shl i8 1, %and53
  %20 = lshr i8 %19, 5
  %shr55 = zext i8 %20 to i32
  %arrayidx = getelementptr [8 x i8], ptr %m_filter, i32 0, i32 %shr55
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv58 = or i8 %22, %shl54
  store i8 %conv58, ptr %arrayidx, align 1
  %23 = ptrtoint ptr %ha.0103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %ha.0 = load ptr, ptr %ha.0103, align 4
  %cmp25.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp25.not, label %cond.end.for.end_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cond.end.for.end_crit_edge, %if.then20.for.end_crit_edge
  %call.i = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 22, i16 noundef zeroext 8, ptr noundef nonnull %m_filter, i16 noundef zeroext 8) #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %1, align 4
  %26 = or i16 %25, 16
  store i16 %26, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %m_filter) #12
  br label %if.end71

if.end71:                                         ; preds = %for.end, %if.else15.if.end71_crit_edge, %if.then10, %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28) #12
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %tmp.i, align 2
  %call.i.i = call i32 @usbnet_write_cmd_async(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 11, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i, i16 noundef zeroext 2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_set_mac_addr(ptr noundef %net, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %net, ptr noundef %p) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %intf.i = getelementptr i8, ptr %net, i32 2308
  %2 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf.i, align 4
  %call.i = tail call i32 @usb_autopm_get_interface(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 16, i16 noundef zeroext 6, i16 noundef zeroext 6, ptr noundef %1) #12
  %4 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf.i, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %5) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.i ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_change_mtu(ptr noundef %net, i32 noundef %new_mtu) #2 align 64 {
entry:
  %tmp.i54 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %0 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #12
  %mtu = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 20
  %1 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %4 to i32
  %add = add i32 %conv, %new_mtu
  %hard_mtu = getelementptr i8, ptr %net, i32 2580
  %5 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %hard_mtu, align 4
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 34, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.aqc111_read16_cmd.exit_crit_edge, !prof !66

entry.aqc111_read16_cmd.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i = getelementptr i8, ptr %net, i32 2548
  %6 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd.exit

aqc111_read16_cmd.exit:                           ; preds = %if.then.i.i, %entry.aqc111_read16_cmd.exit_crit_edge
  %8 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg16, align 2
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %11)
  %cmp = icmp ugt i32 %11, 1500
  %12 = and i16 %9, -16385
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %masksel = select i1 %cmp, i16 64, i16 0
  %storemerge = or i16 %masksel, %13
  %14 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %storemerge, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %15 = call i16 @llvm.bswap.i16(i16 %storemerge) #12
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %tmp.i, align 2
  %intf.i.i = getelementptr i8, ptr %net, i32 2308
  %17 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %intf.i.i, align 4
  %call.i.i52 = call i32 @usb_autopm_get_interface(ptr noundef %18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %cmp.i.i53 = icmp slt i32 %call.i.i52, 0
  br i1 %cmp.i.i53, label %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i

aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 34, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %19 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %20) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %net10 = getelementptr i8, ptr %net, i32 2548
  %21 = ptrtoint ptr %net10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net10, align 4
  %mtu11 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %mtu11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtu11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500, i32 %24)
  %cmp12 = icmp ugt i32 %24, 12500
  br i1 %cmp12, label %if.then14, label %aqc111_write16_cmd.exit.if.end17_crit_edge

aqc111_write16_cmd.exit.if.end17_crit_edge:       ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then14:                                        ; preds = %aqc111_write16_cmd.exit
  %25 = call ptr @memcpy(ptr %buf, ptr getelementptr inbounds ([3 x %struct.anon.124], ptr @AQC111_BULKIN_SIZE, i32 0, i32 2), i32 5)
  %26 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf.i.i, align 4
  %call.i = call i32 @usb_autopm_get_interface(ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then14.if.end17_crit_edge, label %if.end.i

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 46, i16 noundef zeroext 5, i16 noundef zeroext 5, ptr noundef nonnull %buf) #12
  %28 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %29) #12
  br label %if.end17

if.end17:                                         ; preds = %if.end.i, %if.then14.if.end17_crit_edge, %aqc111_write16_cmd.exit.if.end17_crit_edge
  %30 = ptrtoint ptr %net10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net10, align 4
  %mtu19 = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 20
  %32 = ptrtoint ptr %mtu19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mtu19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4501, i32 %33)
  %cmp20 = icmp ult i32 %33, 4501
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2064, ptr %reg16, align 2
  br label %if.end38

if.else23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 9501, i32 %33)
  %cmp26 = icmp ult i32 %33, 9501
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4128, ptr %reg16, align 2
  br label %if.end38

if.else29:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_const_cmp4(i32 12501, i32 %33)
  %cmp32 = icmp ult i32 %33, 12501
  br i1 %cmp32, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 5152, ptr %reg16, align 2
  br label %if.end38

if.else35:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 6688, ptr %reg16, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then34, %if.then28, %if.then22
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i54) #12
  %38 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %reg16, align 2
  %40 = call i16 @llvm.bswap.i16(i16 %39) #12
  %41 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %tmp.i54, align 2
  %42 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf.i.i, align 4
  %call.i.i56 = call i32 @usb_autopm_get_interface(ptr noundef %43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.i.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp.i.i57, label %if.end38.aqc111_write16_cmd.exit60_crit_edge, label %if.end.i.i59

if.end38.aqc111_write16_cmd.exit60_crit_edge:     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit60

if.end.i.i59:                                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i58 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 84, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i54) #12
  %44 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %intf.i.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %45) #12
  br label %aqc111_write16_cmd.exit60

aqc111_write16_cmd.exit60:                        ; preds = %if.end.i.i59, %if.end38.aqc111_write16_cmd.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i54) #12
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_vlan_rx_add_vid(ptr noundef %net, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %0 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %1 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg8, align 1
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 43, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.aqc111_read_cmd.exit_crit_edge, !prof !66

entry.aqc111_read_cmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net.i = getelementptr i8, ptr %net, i32 2548
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i) #15
  br label %aqc111_read_cmd.exit

aqc111_read_cmd.exit:                             ; preds = %if.then.i, %entry.aqc111_read_cmd.exit_crit_edge
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg8, align 1
  %div24 = lshr i16 %vid, 4
  %conv2 = trunc i16 %div24 to i8
  store i8 %conv2, ptr %reg8, align 1
  %intf.i = getelementptr i8, ptr %net, i32 2308
  %6 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf.i, align 4
  %call.i25 = call i32 @usb_autopm_get_interface(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 42, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %8 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %9) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge
  %or = or i8 %5, 2
  %10 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %reg8, align 1
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %call.i28 = call i32 @usb_autopm_get_interface(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp.i29 = icmp slt i32 %call.i28, 0
  br i1 %cmp.i29, label %aqc111_write_cmd.exit.aqc111_write_cmd.exit33_crit_edge, label %if.end.i31

aqc111_write_cmd.exit.aqc111_write_cmd.exit33_crit_edge: ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit33

if.end.i31:                                       ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i30 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %14) #12
  br label %aqc111_write_cmd.exit33

aqc111_write_cmd.exit33:                          ; preds = %if.end.i31, %aqc111_write_cmd.exit.aqc111_write_cmd.exit33_crit_edge
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 44, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %aqc111_write_cmd.exit33.aqc111_read16_cmd.exit_crit_edge, !prof !66

aqc111_write_cmd.exit33.aqc111_read16_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit33
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit

if.then.i.i:                                      ; preds = %aqc111_write_cmd.exit33
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i = getelementptr i8, ptr %net, i32 2548
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd.exit

aqc111_read16_cmd.exit:                           ; preds = %if.then.i.i, %aqc111_write_cmd.exit33.aqc111_read16_cmd.exit_crit_edge
  %17 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg16, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #12
  %20 = and i16 %vid, 15
  %shl = shl nuw i16 1, %20
  %or10 = or i16 %19, %shl
  %21 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %or10, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %22 = call i16 @llvm.bswap.i16(i16 %or10) #12
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %tmp.i, align 2
  %24 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf.i, align 4
  %call.i.i34 = call i32 @usb_autopm_get_interface(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp.i.i35 = icmp slt i32 %call.i.i34, 0
  br i1 %cmp.i.i35, label %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i

aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 44, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %26 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %27) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %28 = or i8 %5, 1
  %29 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %reg8, align 1
  %30 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf.i, align 4
  %call.i37 = call i32 @usb_autopm_get_interface(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %aqc111_write16_cmd.exit.aqc111_write_cmd.exit42_crit_edge, label %if.end.i40

aqc111_write16_cmd.exit.aqc111_write_cmd.exit42_crit_edge: ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit42

if.end.i40:                                       ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i39 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %32 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %33) #12
  br label %aqc111_write_cmd.exit42

aqc111_write_cmd.exit42:                          ; preds = %if.end.i40, %aqc111_write16_cmd.exit.aqc111_write_cmd.exit42_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_vlan_rx_kill_vid(ptr noundef %net, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %reg16 = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg16) #12
  %0 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %1 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reg8, align 1
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 43, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.aqc111_read_cmd.exit_crit_edge, !prof !66

entry.aqc111_read_cmd.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %net.i = getelementptr i8, ptr %net, i32 2548
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i) #15
  br label %aqc111_read_cmd.exit

aqc111_read_cmd.exit:                             ; preds = %if.then.i, %entry.aqc111_read_cmd.exit_crit_edge
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg8, align 1
  %div23 = lshr i16 %vid, 4
  %conv2 = trunc i16 %div23 to i8
  store i8 %conv2, ptr %reg8, align 1
  %intf.i = getelementptr i8, ptr %net, i32 2308
  %6 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf.i, align 4
  %call.i24 = call i32 @usb_autopm_get_interface(ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i25 = icmp slt i32 %call.i24, 0
  br i1 %cmp.i25, label %aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge, label %if.end.i

aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge: ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit

if.end.i:                                         ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 42, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %8 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %9) #12
  br label %aqc111_write_cmd.exit

aqc111_write_cmd.exit:                            ; preds = %if.end.i, %aqc111_read_cmd.exit.aqc111_write_cmd.exit_crit_edge
  %or = or i8 %5, 2
  %10 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %or, ptr %reg8, align 1
  %11 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %intf.i, align 4
  %call.i27 = call i32 @usb_autopm_get_interface(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp.i28 = icmp slt i32 %call.i27, 0
  br i1 %cmp.i28, label %aqc111_write_cmd.exit.aqc111_write_cmd.exit32_crit_edge, label %if.end.i30

aqc111_write_cmd.exit.aqc111_write_cmd.exit32_crit_edge: ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit32

if.end.i30:                                       ; preds = %aqc111_write_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i29 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %13 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %14) #12
  br label %aqc111_write_cmd.exit32

aqc111_write_cmd.exit32:                          ; preds = %if.end.i30, %aqc111_write_cmd.exit.aqc111_write_cmd.exit32_crit_edge
  %call.i.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 44, i16 noundef zeroext 2, ptr noundef nonnull %reg16, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %aqc111_write_cmd.exit32.aqc111_read16_cmd.exit_crit_edge, !prof !66

aqc111_write_cmd.exit32.aqc111_read16_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit32
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read16_cmd.exit

if.then.i.i:                                      ; preds = %aqc111_write_cmd.exit32
  call void @__sanitizer_cov_trace_pc() #14
  %net.i.i = getelementptr i8, ptr %net, i32 2548
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 2, i32 noundef %call.i.i) #15
  br label %aqc111_read16_cmd.exit

aqc111_read16_cmd.exit:                           ; preds = %if.then.i.i, %aqc111_write_cmd.exit32.aqc111_read16_cmd.exit_crit_edge
  %17 = ptrtoint ptr %reg16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg16, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #12
  %20 = and i16 %vid, 15
  %shl = shl nuw i16 1, %20
  %neg = xor i16 %shl, -1
  %and = and i16 %19, %neg
  %21 = ptrtoint ptr %reg16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %and, ptr %reg16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %22 = call i16 @llvm.bswap.i16(i16 %and) #12
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %tmp.i, align 2
  %24 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf.i, align 4
  %call.i.i33 = call i32 @usb_autopm_get_interface(ptr noundef %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33)
  %cmp.i.i34 = icmp slt i32 %call.i.i33, 0
  br i1 %cmp.i.i34, label %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i

aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_read16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 44, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %26 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %27) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_read16_cmd.exit.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %28 = or i8 %5, 1
  %29 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %reg8, align 1
  %30 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf.i, align 4
  %call.i36 = call i32 @usb_autopm_get_interface(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %cmp.i37 = icmp slt i32 %call.i36, 0
  br i1 %cmp.i37, label %aqc111_write16_cmd.exit.aqc111_write_cmd.exit41_crit_edge, label %if.end.i39

aqc111_write16_cmd.exit.aqc111_write_cmd.exit41_crit_edge: ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit41

if.end.i39:                                       ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i38 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %32 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %33) #12
  br label %aqc111_write_cmd.exit41

aqc111_write_cmd.exit41:                          ; preds = %if.end.i39, %aqc111_write16_cmd.exit.aqc111_write_cmd.exit41_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg16) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_set_features(ptr noundef %net, i64 noundef %features) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %reg8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %features1 = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 23
  %2 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features1, align 16
  %xor = xor i64 %3, %features
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg8) #12
  %4 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %reg8, align 1
  %and = and i64 %xor, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.aqc111_read_cmd.exit_crit_edge, !prof !66

if.then.aqc111_read_cmd.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %net.i = getelementptr i8, ptr %net, i32 2548
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i) #15
  br label %aqc111_read_cmd.exit

aqc111_read_cmd.exit:                             ; preds = %if.then.i, %if.then.aqc111_read_cmd.exit_crit_edge
  %7 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg8, align 1
  %9 = xor i8 %8, 6
  store i8 %9, ptr %reg8, align 1
  %intf.i = getelementptr i8, ptr %net, i32 2308
  %10 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf.i, align 4
  %call.i78 = call i32 @usb_autopm_get_interface(ptr noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %aqc111_read_cmd.exit.if.end_crit_edge, label %if.end.i

aqc111_read_cmd.exit.if.end_crit_edge:            ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %aqc111_read_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 53, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %12 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf.i, align 4
  call void @usb_autopm_put_interface(ptr noundef %13) #12
  br label %if.end

if.end:                                           ; preds = %if.end.i, %aqc111_read_cmd.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %and6 = and i64 %xor, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %call.i80 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 53, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp.i81 = icmp slt i32 %call.i80, 0
  br i1 %cmp.i81, label %if.then.i83, label %if.then8.aqc111_read_cmd.exit85_crit_edge, !prof !66

if.then8.aqc111_read_cmd.exit85_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit85

if.then.i83:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %net.i82 = getelementptr i8, ptr %net, i32 2548
  %14 = ptrtoint ptr %net.i82 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net.i82, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i80) #15
  br label %aqc111_read_cmd.exit85

aqc111_read_cmd.exit85:                           ; preds = %if.then.i83, %if.then8.aqc111_read_cmd.exit85_crit_edge
  %16 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg8, align 1
  %18 = xor i8 %17, 96
  store i8 %18, ptr %reg8, align 1
  %intf.i86 = getelementptr i8, ptr %net, i32 2308
  %19 = ptrtoint ptr %intf.i86 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf.i86, align 4
  %call.i87 = call i32 @usb_autopm_get_interface(ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp.i88 = icmp slt i32 %call.i87, 0
  br i1 %cmp.i88, label %aqc111_read_cmd.exit85.if.end14_crit_edge, label %if.end.i90

aqc111_read_cmd.exit85.if.end14_crit_edge:        ; preds = %aqc111_read_cmd.exit85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i90:                                       ; preds = %aqc111_read_cmd.exit85
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i89 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 53, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %21 = ptrtoint ptr %intf.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %intf.i86, align 4
  call void @usb_autopm_put_interface(ptr noundef %22) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end.i90, %aqc111_read_cmd.exit85.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %and15 = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end30_crit_edge, label %if.then17

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then17:                                        ; preds = %if.end14
  %call.i93 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 52, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp.i94 = icmp slt i32 %call.i93, 0
  br i1 %cmp.i94, label %if.then.i96, label %if.then17.aqc111_read_cmd.exit98_crit_edge, !prof !66

if.then17.aqc111_read_cmd.exit98_crit_edge:       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit98

if.then.i96:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %net.i95 = getelementptr i8, ptr %net, i32 2548
  %23 = ptrtoint ptr %net.i95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net.i95, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i93) #15
  br label %aqc111_read_cmd.exit98

aqc111_read_cmd.exit98:                           ; preds = %if.then.i96, %if.then17.aqc111_read_cmd.exit98_crit_edge
  %and19 = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool20.not = icmp eq i64 %and19, 0
  %25 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg8, align 1
  %27 = and i8 %26, -104
  %not.tobool20.not = xor i1 %tobool20.not, true
  %.sink = zext i1 %not.tobool20.not to i8
  %masksel = select i1 %tobool20.not, i8 103, i8 0
  %storemerge = or i8 %27, %masksel
  %28 = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink, ptr %28, align 2
  store i8 %storemerge, ptr %reg8, align 1
  %intf.i99 = getelementptr i8, ptr %net, i32 2308
  %30 = ptrtoint ptr %intf.i99 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf.i99, align 4
  %call.i100 = call i32 @usb_autopm_get_interface(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp.i101 = icmp slt i32 %call.i100, 0
  br i1 %cmp.i101, label %aqc111_read_cmd.exit98.if.end30_crit_edge, label %if.end.i103

aqc111_read_cmd.exit98.if.end30_crit_edge:        ; preds = %aqc111_read_cmd.exit98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end.i103:                                      ; preds = %aqc111_read_cmd.exit98
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i102 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 52, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %32 = ptrtoint ptr %intf.i99 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %intf.i99, align 4
  call void @usb_autopm_put_interface(ptr noundef %33) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end.i103, %aqc111_read_cmd.exit98.if.end30_crit_edge, %if.end14.if.end30_crit_edge
  %and31 = and i64 %xor, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end55_crit_edge, label %if.then33

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then33:                                        ; preds = %if.end30
  %and34 = and i64 %features, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.else48, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then33
  %intf.i106 = getelementptr i8, ptr %net, i32 2308
  br label %for.body

for.body:                                         ; preds = %aqc111_write_cmd.exit119.for.body_crit_edge, %for.cond.preheader
  %i.0146 = phi i16 [ 0, %for.cond.preheader ], [ %inc, %aqc111_write_cmd.exit119.for.body_crit_edge ]
  %conv39 = trunc i16 %i.0146 to i8
  %34 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv39, ptr %reg8, align 1
  %35 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %intf.i106, align 4
  %call.i107 = call i32 @usb_autopm_get_interface(ptr noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp.i108 = icmp slt i32 %call.i107, 0
  br i1 %cmp.i108, label %for.body.aqc111_write_cmd.exit112_crit_edge, label %if.end.i110

for.body.aqc111_write_cmd.exit112_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit112

if.end.i110:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i109 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 42, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %37 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf.i106, align 4
  call void @usb_autopm_put_interface(ptr noundef %38) #12
  br label %aqc111_write_cmd.exit112

aqc111_write_cmd.exit112:                         ; preds = %if.end.i110, %for.body.aqc111_write_cmd.exit112_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #12
  %39 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %tmp.i, align 2
  %40 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intf.i106, align 4
  %call.i.i = call i32 @usb_autopm_get_interface(ptr noundef %41) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %aqc111_write_cmd.exit112.aqc111_write16_cmd.exit_crit_edge, label %if.end.i.i

aqc111_write_cmd.exit112.aqc111_write16_cmd.exit_crit_edge: ; preds = %aqc111_write_cmd.exit112
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write16_cmd.exit

if.end.i.i:                                       ; preds = %aqc111_write_cmd.exit112
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i.i = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 44, i16 noundef zeroext 2, i16 noundef zeroext 2, ptr noundef nonnull %tmp.i) #12
  %42 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf.i106, align 4
  call void @usb_autopm_put_interface(ptr noundef %43) #12
  br label %aqc111_write16_cmd.exit

aqc111_write16_cmd.exit:                          ; preds = %if.end.i.i, %aqc111_write_cmd.exit112.aqc111_write16_cmd.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #12
  %44 = ptrtoint ptr %reg8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %reg8, align 1
  %45 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %intf.i106, align 4
  %call.i114 = call i32 @usb_autopm_get_interface(ptr noundef %46) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %aqc111_write16_cmd.exit.aqc111_write_cmd.exit119_crit_edge, label %if.end.i117

aqc111_write16_cmd.exit.aqc111_write_cmd.exit119_crit_edge: ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_write_cmd.exit119

if.end.i117:                                      ; preds = %aqc111_write16_cmd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i116 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %47 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intf.i106, align 4
  call void @usb_autopm_put_interface(ptr noundef %48) #12
  br label %aqc111_write_cmd.exit119

aqc111_write_cmd.exit119:                         ; preds = %if.end.i117, %aqc111_write16_cmd.exit.aqc111_write_cmd.exit119_crit_edge
  %inc = add nuw nsw i16 %i.0146, 1
  %cmp = icmp ult i16 %i.0146, 255
  br i1 %cmp, label %aqc111_write_cmd.exit119.for.body_crit_edge, label %for.end

aqc111_write_cmd.exit119.for.body_crit_edge:      ; preds = %aqc111_write_cmd.exit119
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %aqc111_write_cmd.exit119
  %call.i120 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 43, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp.i121 = icmp slt i32 %call.i120, 0
  br i1 %cmp.i121, label %if.then.i123, label %for.end.aqc111_read_cmd.exit125_crit_edge, !prof !66

for.end.aqc111_read_cmd.exit125_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit125

if.then.i123:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %net.i122 = getelementptr i8, ptr %net, i32 2548
  %49 = ptrtoint ptr %net.i122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net.i122, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i120) #15
  br label %aqc111_read_cmd.exit125

aqc111_read_cmd.exit125:                          ; preds = %if.then.i123, %for.end.aqc111_read_cmd.exit125_crit_edge
  %51 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg8, align 1
  %53 = or i8 %52, 32
  store i8 %53, ptr %reg8, align 1
  %54 = ptrtoint ptr %intf.i106 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %intf.i106, align 4
  %call.i127 = call i32 @usb_autopm_get_interface(ptr noundef %55) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp.i128 = icmp slt i32 %call.i127, 0
  br i1 %cmp.i128, label %aqc111_read_cmd.exit125.if.end55_crit_edge, label %aqc111_read_cmd.exit125.if.end55.sink.split_crit_edge

aqc111_read_cmd.exit125.if.end55.sink.split_crit_edge: ; preds = %aqc111_read_cmd.exit125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.sink.split

aqc111_read_cmd.exit125.if.end55_crit_edge:       ; preds = %aqc111_read_cmd.exit125
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.else48:                                        ; preds = %if.then33
  %call.i133 = call i32 @usbnet_read_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 43, i16 noundef zeroext 1, ptr noundef nonnull %reg8, i16 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp.i134 = icmp slt i32 %call.i133, 0
  br i1 %cmp.i134, label %if.then.i136, label %if.else48.aqc111_read_cmd.exit138_crit_edge, !prof !66

if.else48.aqc111_read_cmd.exit138_crit_edge:      ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  br label %aqc111_read_cmd.exit138

if.then.i136:                                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #14
  %net.i135 = getelementptr i8, ptr %net, i32 2548
  %56 = ptrtoint ptr %net.i135 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i135, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %57, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef %call.i133) #15
  br label %aqc111_read_cmd.exit138

aqc111_read_cmd.exit138:                          ; preds = %if.then.i136, %if.else48.aqc111_read_cmd.exit138_crit_edge
  %58 = ptrtoint ptr %reg8 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %reg8, align 1
  %60 = and i8 %59, -33
  store i8 %60, ptr %reg8, align 1
  %intf.i139 = getelementptr i8, ptr %net, i32 2308
  %61 = ptrtoint ptr %intf.i139 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %intf.i139, align 4
  %call.i140 = call i32 @usb_autopm_get_interface(ptr noundef %62) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp.i141 = icmp slt i32 %call.i140, 0
  br i1 %cmp.i141, label %aqc111_read_cmd.exit138.if.end55_crit_edge, label %aqc111_read_cmd.exit138.if.end55.sink.split_crit_edge

aqc111_read_cmd.exit138.if.end55.sink.split_crit_edge: ; preds = %aqc111_read_cmd.exit138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.sink.split

aqc111_read_cmd.exit138.if.end55_crit_edge:       ; preds = %aqc111_read_cmd.exit138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end55.sink.split:                              ; preds = %aqc111_read_cmd.exit138.if.end55.sink.split_crit_edge, %aqc111_read_cmd.exit125.if.end55.sink.split_crit_edge
  %intf.i139.sink = phi ptr [ %intf.i106, %aqc111_read_cmd.exit125.if.end55.sink.split_crit_edge ], [ %intf.i139, %aqc111_read_cmd.exit138.if.end55.sink.split_crit_edge ]
  %call1.i142 = call fastcc i32 @__aqc111_write_cmd(ptr noundef %add.ptr.i, i8 noundef zeroext 1, i16 noundef zeroext 43, i16 noundef zeroext 1, i16 noundef zeroext 1, ptr noundef nonnull %reg8) #12
  %63 = ptrtoint ptr %intf.i139.sink to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %intf.i139.sink, align 4
  call void @usb_autopm_put_interface(ptr noundef %64) #12
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %aqc111_read_cmd.exit138.if.end55_crit_edge, %aqc111_read_cmd.exit125.if.end55_crit_edge, %if.end30.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg8) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aqc111_get_drvinfo(ptr noundef %net, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %info) #12
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %fw_ver = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fw_ver to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fw_ver, align 4
  %conv = zext i8 %3 to i32
  %minor = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %minor, align 1
  %conv4 = zext i8 %5 to i32
  %rev = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rev, align 2
  %conv6 = zext i8 %7 to i32
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6)
  %eedump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 10
  %8 = ptrtoint ptr %eedump_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %eedump_len, align 4
  %regdump_len = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 11
  %9 = ptrtoint ptr %regdump_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %regdump_len, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @aqc111_get_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef writeonly %wolinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 1
  %2 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %wolopts, align 4
  %wol_flags = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %wol_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wol_flags, align 4
  %6 = shl i8 %5, 4
  %7 = and i8 %6, 32
  %8 = zext i8 %7 to i32
  store i32 %8, ptr %wolopts, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aqc111_set_wol(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %wolinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wolinfo, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %wol_flags = getelementptr inbounds %struct.aqc111_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %wol_flags to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %wol_flags, align 4
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wolopts, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 4
  %9 = and i8 %8, 2
  store i8 %9, ptr %wol_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aqc111_get_link_ksettings(ptr nocapture noundef readonly %net, ptr nocapture noundef %elk) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i63 = getelementptr i8, ptr %net, i32 2304
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %add.ptr.i63 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i63, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1
  %6 = call ptr @memset(ptr %link_modes, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp = icmp eq i32 %5, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i60 = or i32 %8, 98304
  store i32 %or.i60, ptr %add.ptr.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 232, ptr %link_modes, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 3
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %port, align 1
  %transceiver = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 10
  %11 = ptrtoint ptr %transceiver to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %transceiver, align 4
  %mdio_support = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 6
  %12 = ptrtoint ptr %mdio_support to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %mdio_support, align 4
  %autoneg = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 1
  %15 = call ptr @memcpy(ptr %advertising, ptr %link_modes, i32 12)
  br label %if.end28

if.else:                                          ; preds = %if.end
  %advertised_speed = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %advertised_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %advertised_speed, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %17, label %if.else.if.end28_crit_edge [
    i32 5000, label %sw.bb.i
    i32 2500, label %sw.bb1.i
    i32 1000, label %sw.bb5.i
    i32 100, label %sw.bb9.i
  ]

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 1, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i16.i = getelementptr %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 1, i32 1
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %advertising7.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split.i

sw.bb9.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %advertising11.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %elk, i32 0, i32 1, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i
  %advertising11.sink21.i = phi ptr [ %advertising11.i, %sw.bb9.i ], [ %advertising7.i, %sw.bb5.i ], [ %add.ptr.i16.i, %sw.bb1.i ], [ %add.ptr.i.i, %sw.bb.i ]
  %.sink20.i = phi i32 [ 8, %sw.bb9.i ], [ 32, %sw.bb5.i ], [ 32768, %sw.bb1.i ], [ 65536, %sw.bb.i ]
  %19 = ptrtoint ptr %advertising11.sink21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %advertising11.sink21.i, align 4
  %or.i19.i = or i32 %20, %.sink20.i
  store i32 %or.i19.i, ptr %advertising11.sink21.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %sw.epilog.sink.split.i, %if.else.if.end28_crit_edge, %if.then22
  %21 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %autoneg, align 1
  %autoneg31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 5
  %23 = ptrtoint ptr %autoneg31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %autoneg31, align 1
  %link_speed = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %link_speed to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %link_speed, align 1
  %switch.tableidx = add i8 %25, -15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 5
  br i1 %26, label %switch.lookup, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %27 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.aqc111_get_link_ksettings, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end28.sw.epilog_crit_edge
  %speed1.0 = phi i32 [ -1, %if.end28.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 2
  %29 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %duplex, align 4
  %speed37 = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 1
  %30 = ptrtoint ptr %speed37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %speed1.0, ptr %speed37, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aqc111_set_link_ksettings(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %elk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net, i32 2304
  %driver_priv = getelementptr i8, ptr %net, i32 2320
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %autoneg1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg1, align 1
  %speed4 = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 1
  %8 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %autoneg6 = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp8.not = icmp eq i8 %11, 1
  br i1 %cmp8.not, label %if.then.cleanup_crit_edge, label %if.then10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %autoneg6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %autoneg6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp12 = icmp eq i32 %5, 5
  %cond = select i1 %cmp12, i32 5000, i32 1000
  %advertised_speed = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %advertised_speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %advertised_speed, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %if.else.cleanup_crit_edge [
    i32 100, label %if.else.if.end31_crit_edge
    i32 1000, label %if.else.if.end31_crit_edge81
    i32 2500, label %if.else.if.end31_crit_edge82
    i32 5000, label %if.else.if.end31_crit_edge83
    i32 -1, label %if.else.if.end31_crit_edge84
  ]

if.else.if.end31_crit_edge84:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else.if.end31_crit_edge83:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else.if.end31_crit_edge82:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else.if.end31_crit_edge81:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else.if.end31_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.else.if.end31_crit_edge, %if.else.if.end31_crit_edge81, %if.else.if.end31_crit_edge82, %if.else.if.end31_crit_edge83, %if.else.if.end31_crit_edge84
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %elk, i32 0, i32 2
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp34.not = icmp eq i8 %16, 1
  br i1 %cmp34.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp38.not = icmp ne i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %9)
  %cmp41 = icmp ugt i32 %9, 1000
  %or.cond = select i1 %cmp38.not, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.end37.cleanup_crit_edge, label %if.end44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %autoneg45 = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %autoneg45 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %autoneg45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp46.not = icmp eq i32 %9, -1
  br i1 %cmp46.not, label %if.end44.if.end50_crit_edge, label %if.then48

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %advertised_speed49 = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %advertised_speed49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %9, ptr %advertised_speed49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end44.if.end50_crit_edge
  %19 = ptrtoint ptr %autoneg45 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %autoneg45, align 1
  %advertised_speed52 = getelementptr inbounds %struct.aqc111_data, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %advertised_speed52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %advertised_speed52, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %if.then10
  %.sink80 = phi i32 [ %22, %if.end50 ], [ %cond, %if.then10 ]
  %.sink = phi i8 [ %20, %if.end50 ], [ 1, %if.then10 ]
  %conv53 = trunc i32 %.sink80 to i16
  tail call fastcc void @aqc111_set_phy_speed(ptr noundef %add.ptr.i, i8 noundef zeroext %.sink, i16 noundef zeroext %conv53)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %if.end37.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_aqc111__348_1486_aq_driver_init6, !1, !"__initcall__kmod_aqc111__348_1486_aq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/aqc111.c", i32 1486, i32 1}
!2 = !{ptr @__exitcall_aq_driver_exit, !1, !"__exitcall_aq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description349, !4, !"__UNIQUE_ID_description349", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/aqc111.c", i32 1488, i32 1}
!5 = !{ptr @__UNIQUE_ID_file350, !6, !"__UNIQUE_ID_file350", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/aqc111.c", i32 1489, i32 1}
!7 = !{ptr @__UNIQUE_ID_license351, !6, !"__UNIQUE_ID_license351", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @aq_driver, !10, !"aq_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/aqc111.c", i32 1477, i32 26}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/aqc111.c", i32 35, i32 8}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/aqc111.c", i32 85, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__aqc111_write_cmd.__UNIQUE_ID_ddebug346, !14, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/aqc111.c", i32 102, i32 8}
!20 = !{ptr @products, !21, !"products", i1 false, i1 false}
!21 = !{!"../drivers/net/usb/aqc111.c", i32 1467, i32 35}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/aqc111.c", i32 1239, i32 17}
!24 = !{ptr @aqc111_info, !25, !"aqc111_info", i1 false, i1 false}
!25 = !{!"../drivers/net/usb/aqc111.c", i32 1238, i32 33}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/aqc111.c", i32 701, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @aqc111_bind.__UNIQUE_ID_ddebug347, !27, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!30 = !{ptr @aqc111_netdev_ops, !31, !"aqc111_netdev_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/aqc111.c", i32 639, i32 36}
!32 = !{ptr @AQC111_BULKIN_SIZE, !33, !"AQC111_BULKIN_SIZE", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/aqc111.h", i32 224, i32 3}
!34 = !{ptr @aqc111_ethtool_ops, !35, !"aqc111_ethtool_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/aqc111.c", i32 410, i32 33}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/aqc111.c", i32 205, i32 55}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/aqc111.c", i32 877, i32 24}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/aqc111.c", i32 1256, i32 17}
!42 = !{ptr @asix111_info, !43, !"asix111_info", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/aqc111.c", i32 1255, i32 33}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/aqc111.c", i32 1275, i32 17}
!46 = !{ptr @asix112_info, !47, !"asix112_info", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/aqc111.c", i32 1274, i32 33}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/aqc111.c", i32 1291, i32 17}
!50 = !{ptr @trendnet_info, !51, !"trendnet_info", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/aqc111.c", i32 1290, i32 33}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/aqc111.c", i32 1305, i32 17}
!54 = !{ptr @qnap_info, !55, !"qnap_info", i1 false, i1 false}
!55 = !{!"../drivers/net/usb/aqc111.c", i32 1304, i32 33}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148990655, i64 2148990660, i64 2148990673, i64 2148990717, i64 2148990751, i64 2148990772}
