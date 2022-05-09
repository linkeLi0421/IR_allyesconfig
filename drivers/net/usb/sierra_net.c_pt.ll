; ModuleID = '/llk/IR_all_yes/drivers/net/usb/sierra_net.c_pt.bc'
source_filename = "../drivers/net/usb/sierra_net.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.149, i32 }
%union.anon.149 = type { ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.sierra_net_data = type { i16, [4 x i8], [4 x i8], [4 x i8], ptr, i8, i32, %struct.work_struct, %struct.timer_list }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.hip_hdr = type { i32, %struct.param, %struct.param, %struct.param, %struct.param }
%struct.param = type { i32, %union.anon.151 }
%union.anon.151 = type { ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.lsi_umts = type { i8, i8, i16, i8, i8, [40 x i8], i8, [33 x i8] }
%struct.lsi_umts_single = type { %struct.lsi_umts, i8, i8, [16 x i8], [23 x i8], i8, [16 x i8], i8, [16 x i8], i8, [16 x i8], i8, [16 x i8], [4 x i8], i8, [16 x i8], [8 x i8] }

@__initcall__kmod_sierra_net__519_968_sierra_net_driver_init6 = internal global ptr @sierra_net_driver_init, section ".initcall6.init", align 4
@sierra_net_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sierra_net_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 -96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sierra_net_driver_exit = internal global ptr @sierra_net_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author520 = internal constant [58 x i8] c"sierra_net.author=Paxton Smith, Matthew Safar, Rory Filer\00", section ".modinfo", align 1
@__UNIQUE_ID_description521 = internal constant [69 x i8] c"sierra_net.description=USB-to-WWAN Driver for Sierra Wireless modems\00", section ".modinfo", align 1
@__UNIQUE_ID_version522 = internal constant [25 x i8] c"sierra_net.version=v.2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sierra_net\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v.2.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file523 = internal constant [43 x i8] c"sierra_net.file=drivers/net/usb/sierra_net\00", section ".modinfo", align 1
@__UNIQUE_ID_license524 = internal constant [23 x i8] c"sierra_net.license=GPL\00", section ".modinfo", align 1
@products = internal constant { [13 x %struct.usb_device_id], [72 x i8] } { [13 x %struct.usb_device_id] [%struct.usb_device_id { i16 1027, i16 4505, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 11, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 11, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 4505, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 11, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 7, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 10, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id { i16 1027, i16 3901, i16 26794, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 11, i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32) }, %struct.usb_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@sierra_net_dosync.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_net_dosync\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/usb/sierra_net.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Send SYNC failed, status %d\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sierra_net_send_sync.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str.4, ptr @.str.5, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sierra_net_send_sync\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SYNC\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Submit %s failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@sierra_net_info_direct_ip = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.10, i32 1536, ptr @sierra_net_bind, ptr @sierra_net_unbind, ptr null, ptr null, ptr null, ptr null, ptr @sierra_net_status, ptr null, ptr @sierra_net_rx_fixup, ptr @sierra_net_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sierra Wireless USB-to-WWAN Modem\00", [62 x i8] zeroinitializer }, align 32
@sierra_net_bind.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.4, ptr @.str.5, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sierra_net_bind\00", [16 x i8] zeroinitializer }, align 32
@sierra_net_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.11, ptr @.str.4, i32 681, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Expected 3 endpoints, found: %d\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sierra_net_bind._entry_ptr = internal global ptr @sierra_net_bind._entry, section ".printk_index", align 4
@sierra_net_bind._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.4, i32 689, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error in usbnet_get_endpoints (%d)\00", [61 x i8] zeroinitializer }, align 32
@sierra_net_bind._entry_ptr.17 = internal global ptr @sierra_net_bind._entry.15, section ".printk_index", align 4
@sierra_net_device_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@iface_counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@sierra_net_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @sierra_net_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @sierra_net_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@sierra_net_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&priv->sierra_net_kevent)\00", [52 x i8] zeroinitializer }, align 32
@sierra_net_bind.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&priv->sync_timer)\00", [44 x i8] zeroinitializer }, align 32
@sierra_net_bind.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str.4, ptr @.str.21, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Fw attr: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@sierra_net_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.11, ptr @.str.4, i32 746, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Incompatible driver and firmware versions\0A\00", [53 x i8] zeroinitializer }, align 32
@sierra_net_bind._entry_ptr.24 = internal global ptr @sierra_net_bind._entry.22, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sierra_net_set_ctx_index\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %d\00", [26 x i8] zeroinitializer }, align 32
@driver_name = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sierra_net\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"usb_control_msg failed, status %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_net_kevent\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Received status message, %04x bytes\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Bad packet, parse result %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Bad packet, received %d, expected %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.32, i8 0, i8 -127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LSI for ctx:%d\00", [17 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug505 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.33, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Restart reported: %d, stopping sync timer\00", [54 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.34, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SYNC received\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Send SYNC failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unrecognized HIP msg, extmsgid 0x%04x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unrecognized HIP msg, msgid 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.38, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Deferred sync timer expiry\00", [37 x i8] zeroinitializer }, align 32
@sierra_net_kevent.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.4, ptr @.str.39, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sierra_net_kevent done, kevent_flags = 0x%lx\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Invalid LSI\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Data length %d, exp >= %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.sierra_net_parse_lsi = private unnamed_addr constant [21 x i8] c"sierra_net_parse_lsi\00", align 1
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Session idle, 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Link type unsupported: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Protocol unsupported, 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: LSI_UMTS_STATUS_LEN %d, exp %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No coverage, 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@sierra_sync_timer.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.4, ptr @.str.5, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_sync_timer\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sierra_net_unbind.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.4, ptr @.str.5, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_net_unbind\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Shutdown\00", [23 x i8] zeroinitializer }, align 32
@sierra_net_status.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.4, ptr @.str.5, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sierra_net_status\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c": unexpected notification %02x!\0A\00", [63 x i8] zeroinitializer }, align 32
@sierra_net_rx_fixup.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str.4, ptr @.str.5, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sierra_net_rx_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid HIP header %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HIP/ETH: Invalid pkt\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get skb\0A\00", [45 x i8] zeroinitializer }, align 32
@sierra_net_tx_fixup.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.56, ptr @.str.4, ptr @.str.5, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sierra_net_tx_fixup\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tx_fixup:no room for packet\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_fixup: no room for HIP\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Non linear buffer-dropping\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967277]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967277]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967277]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 42]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 8, i64 96, i64 98, i64 100, i64 120, i64 127]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967277]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"sierra_net_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 957, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 972, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 946, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 438, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 451, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 340, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 343, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 330, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"sierra_net_info_direct_ip\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 910, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 911, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 674, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 680, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 688, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"sierra_net_device_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 181, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"iface_counter\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 42, i32 17 }
@___asan_gen_.137 = private unnamed_addr constant [23 x i8] c"sierra_net_ethtool_ops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 626, i32 33 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 733, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 736, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 740, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 745, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 350, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"driver_name\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 18, i32 19 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 489, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 493, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 498, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 506, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 516, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 521, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 530, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 534, i32 7 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 537, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 544, i32 26 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 554, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 559, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 421, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 363, i32 24 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 370, i32 24 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 382, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 390, i32 24 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 396, i32 24 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 404, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 579, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 759, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 767, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 588, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 604, i32 24 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 808, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 815, i32 26 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 826, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 794, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 868, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 880, i32 27 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 896, i32 25 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [32 x i8] c"../drivers/net/usb/sierra_net.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 222, i32 24 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author520, ptr @__UNIQUE_ID_description521, ptr @__UNIQUE_ID_file523, ptr @__UNIQUE_ID_license524, ptr @__UNIQUE_ID_version522, ptr @__exitcall_sierra_net_driver_exit, ptr @__initcall__kmod_sierra_net__519_968_sierra_net_driver_init6, ptr @__modver_attr, ptr @sierra_net_bind._entry, ptr @sierra_net_bind._entry.15, ptr @sierra_net_bind._entry.22, ptr @sierra_net_bind._entry_ptr, ptr @sierra_net_bind._entry_ptr.17, ptr @sierra_net_bind._entry_ptr.24, ptr @sierra_net_driver_exit, ptr @sierra_net_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @products, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sierra_net_info_direct_ip, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @sierra_net_device_ops, ptr @iface_counter, ptr @sierra_net_ethtool_ops, ptr @sierra_net_bind.__key, ptr @.str.18, ptr @sierra_net_bind.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @driver_name, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_info_direct_ip to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_bind._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_device_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iface_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_bind.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sierra_net_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_net_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sierra_net_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sierra_net_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @sierra_net_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_net_probe(ptr noundef %udev, ptr noundef %prod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usbnet_probe(ptr noundef %udev, ptr noundef %prod) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %udev, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @usbnet_status_start(ptr noundef %1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sierra_net_dosync(ptr noundef %1)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end5_crit_edge ], [ 0, %if.then4 ], [ %call2, %if.then.if.end5_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_status_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sierra_net_dosync(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_dosync.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_dosync, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_dosync.__UNIQUE_ID_ddebug502, ptr noundef %dev4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i, align 4
  %6 = inttoptr i32 %5 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_send_sync.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_dosync, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_send_sync.__UNIQUE_ID_ddebug500, ptr noundef %dev4.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %sync_msg.i = getelementptr inbounds %struct.sierra_net_data, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data.i, align 4
  %11 = inttoptr i32 %10 to ptr
  %ifnum.i.i = getelementptr inbounds %struct.sierra_net_data, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ifnum.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ifnum.i.i, align 4
  %conv.i.i = zext i8 %13 to i16
  %call2.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %sync_msg.i, i16 noundef zeroext 4) #10
  %14 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i.i, label %if.then.i.i [
    i32 4, label %do.end.i.sierra_net_send_sync.exit_crit_edge
    i32 -19, label %do.end.i.sierra_net_send_sync.exit_crit_edge35
  ]

do.end.i.sierra_net_send_sync.exit_crit_edge35:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit

do.end.i.sierra_net_send_sync.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %15 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %call2.i.i) #13
  br label %sierra_net_send_sync.exit

sierra_net_send_sync.exit:                        ; preds = %if.then.i.i, %do.end.i.sierra_net_send_sync.exit_crit_edge, %do.end.i.sierra_net_send_sync.exit_crit_edge35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp = icmp slt i32 %call2.i.i, 0
  br i1 %cmp, label %if.then6, label %sierra_net_send_sync.exit.if.end7_crit_edge

sierra_net_send_sync.exit.if.end7_crit_edge:      ; preds = %sierra_net_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %sierra_net_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.6, i32 noundef %call2.i.i) #13
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %sierra_net_send_sync.exit.if.end7_crit_edge
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data.i, align 4
  %21 = inttoptr i32 %20 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_send_sync.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_dosync, %if.then.i25)) #10
          to label %do.end.i30 [label %if.then.i25], !srcloc !167

if.then.i25:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %dev4.i24 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_send_sync.__UNIQUE_ID_ddebug500, ptr noundef %dev4.i24, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %do.end.i30

do.end.i30:                                       ; preds = %if.then.i25, %if.end7
  %sync_msg.i26 = getelementptr inbounds %struct.sierra_net_data, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data.i, align 4
  %26 = inttoptr i32 %25 to ptr
  %ifnum.i.i27 = getelementptr inbounds %struct.sierra_net_data, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %ifnum.i.i27 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ifnum.i.i27, align 4
  %conv.i.i28 = zext i8 %28 to i16
  %call2.i.i29 = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i28, ptr noundef %sync_msg.i26, i16 noundef zeroext 4) #10
  %29 = zext i32 %call2.i.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call2.i.i29, label %if.then.i.i32 [
    i32 4, label %do.end.i30.sierra_net_send_sync.exit33_crit_edge
    i32 -19, label %do.end.i30.sierra_net_send_sync.exit33_crit_edge36
  ]

do.end.i30.sierra_net_send_sync.exit33_crit_edge36: ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit33

do.end.i30.sierra_net_send_sync.exit33_crit_edge: ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit33

if.then.i.i32:                                    ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i31 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %30 = ptrtoint ptr %net.i.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i.i31, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %call2.i.i29) #13
  br label %sierra_net_send_sync.exit33

sierra_net_send_sync.exit33:                      ; preds = %if.then.i.i32, %do.end.i30.sierra_net_send_sync.exit33_crit_edge, %do.end.i30.sierra_net_send_sync.exit33_crit_edge36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i29)
  %cmp9 = icmp slt i32 %call2.i.i29, 0
  br i1 %cmp9, label %if.then10, label %sierra_net_send_sync.exit33.if.end12_crit_edge

sierra_net_send_sync.exit33.if.end12_crit_edge:   ; preds = %sierra_net_send_sync.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %sierra_net_send_sync.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %net11 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net11, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.6, i32 noundef %call2.i.i29) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %sierra_net_send_sync.exit33.if.end12_crit_edge
  %34 = inttoptr i32 %1 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 200
  %sync_timer = getelementptr inbounds %struct.sierra_net_data, ptr %34, i32 0, i32 8
  %expires = getelementptr inbounds %struct.sierra_net_data, ptr %34, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %sync_timer) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_net_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %attrdata.i = alloca i16, align 2
  %mod = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mod) #10
  %0 = getelementptr inbounds [2 x i8], ptr %mod, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_bind.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_bind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_bind.__UNIQUE_ID_ddebug511, ptr noundef %dev3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %3 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bInterfaceNumber, align 2
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp.not = icmp eq i8 %8, 3
  br i1 %cmp.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.12, i32 noundef %conv) #13
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %status15 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 15
  %11 = ptrtoint ptr %status15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %status15, align 4
  %call16 = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dev24 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.16, i32 noundef %call16) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 120) #14
  %tobool27.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %usbnet = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %usbnet to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %usbnet, align 8
  %ifnum = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ifnum to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %6, ptr %ifnum, align 4
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sierra_net_device_ops, ptr %netdev_ops, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @iface_counter, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr nonnull @iface_counter, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @iface_counter, ptr nonnull @iface_counter, i32 1, ptr nonnull elementtype(i32) @iface_counter) #10, !srcloc !169
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !170
  %conv31 = trunc i32 %asmresult.i.i.i.i to i8
  %21 = ptrtoint ptr %mod to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv31, ptr %mod, align 1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %6, ptr %0, align 1
  %23 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %24, i32 noundef 4, ptr noundef nonnull %mod, i32 noundef 2) #10
  %shdwn_msg = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %shdwn_msg to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 9728, ptr %shdwn_msg, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_bind, %if.then.i)) #10
          to label %sierra_net_set_ctx_index.exit [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %usbnet to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usbnet, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501, ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 0) #10
  br label %sierra_net_set_ctx_index.exit

sierra_net_set_ctx_index.exit:                    ; preds = %if.then.i, %if.end29
  %tx_hdr_template.i = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %tx_hdr_template.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 63, ptr %tx_hdr_template.i, align 2
  %arrayidx4.i = getelementptr %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %arrayidx6.i, align 4
  %sync_msg = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %sync_msg to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 8192, ptr %sync_msg, align 2
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %34 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 8192, ptr %rx_urb_size, align 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp37.not = icmp eq i32 %38, 3
  %spec.store.select = select i1 %cmp37.not, i32 8192, i32 4096
  %39 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.store.select, ptr %rx_urb_size, align 4
  %40 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %43, 6
  store i16 %add, ptr %hard_header_len, align 2
  %44 = load ptr, ptr %net, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mtu, align 4
  %hard_header_len47 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 19
  %47 = ptrtoint ptr %hard_header_len47 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hard_header_len47, align 2
  %conv48 = zext i16 %48 to i32
  %add49 = add i32 %46, %conv48
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %49 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add49, ptr %hard_mtu, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 31
  %50 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1500, ptr %max_mtu, align 4
  %51 = load ptr, ptr %net, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 14
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 8
  %or = or i32 %53, 128
  store i32 %or, ptr %flags, align 8
  %54 = load ptr, ptr %net, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 44
  %55 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @sierra_net_ethtool_ops, ptr %ethtool_ops, align 16
  %56 = load ptr, ptr %net, align 4
  call void @netif_carrier_off(ptr noundef %56) #10
  %57 = ptrtoint ptr %call7.i.i to i32
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %58 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %data.i, align 4
  %kevent_flags = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %kevent_flags, align 8
  %sierra_net_kevent = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 7
  call void @__init_work(ptr noundef %sierra_net_kevent, i32 noundef 0) #10
  %60 = ptrtoint ptr %sierra_net_kevent to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -64, ptr %sierra_net_kevent, align 4
  %lockdep_map = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 7, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @sierra_net_bind.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry58 = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %entry58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %entry58, ptr %entry58, align 8
  %prev.i = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %entry58, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 7, i32 2
  %63 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @sierra_net_kevent, ptr %func, align 8
  %sync_timer = getelementptr inbounds %struct.sierra_net_data, ptr %call7.i.i, i32 0, i32 8
  call void @init_timer_key(ptr noundef %sync_timer, ptr noundef nonnull @sierra_sync_timer, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @sierra_net_bind.__key.19) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %attrdata.i) #10
  %64 = ptrtoint ptr %attrdata.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %attrdata.i, align 2, !annotation !171
  %call.i = call i32 @usbnet_read_cmd(ptr noundef %dev, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %attrdata.i, i16 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sierra_net_set_ctx_index.exit.sierra_net_get_fw_attr.exit_crit_edge, label %if.end.i

sierra_net_set_ctx_index.exit.sierra_net_get_fw_attr.exit_crit_edge: ; preds = %sierra_net_set_ctx_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_get_fw_attr.exit

if.end.i:                                         ; preds = %sierra_net_set_ctx_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %attrdata.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %attrdata.i, align 2
  %67 = call i16 @llvm.bswap.i16(i16 %66) #10
  br label %sierra_net_get_fw_attr.exit

sierra_net_get_fw_attr.exit:                      ; preds = %if.end.i, %sierra_net_set_ctx_index.exit.sierra_net_get_fw_attr.exit_crit_edge
  %fwattr.0 = phi i16 [ 0, %sierra_net_set_ctx_index.exit.sierra_net_get_fw_attr.exit_crit_edge ], [ %67, %if.end.i ]
  %retval.0.i146 = phi i32 [ -5, %sierra_net_set_ctx_index.exit.sierra_net_get_fw_attr.exit_crit_edge ], [ %call.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %attrdata.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_bind.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_bind, %if.then78)) #10
          to label %do.end84 [label %if.then78], !srcloc !167

if.then78:                                        ; preds = %sierra_net_get_fw_attr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  %dev80 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  %conv81 = zext i16 %fwattr.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_bind.__UNIQUE_ID_ddebug514, ptr noundef %dev80, ptr noundef nonnull @.str.21, i32 noundef %conv81) #10
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %sierra_net_get_fw_attr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i146)
  %cmp85 = icmp ne i32 %retval.0.i146, 2
  %70 = and i16 %fwattr.0, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool88.not = icmp eq i16 %70, 0
  %or.cond = select i1 %cmp85, i1 true, i1 %tobool88.not
  br i1 %or.cond, label %do.end92, label %do.end84.cleanup_crit_edge

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end92:                                         ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull @.str.23) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %do.end84.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end22, %do.end10
  %retval.0 = phi i32 [ -19, %do.end10 ], [ -19, %do.end22 ], [ -19, %do.end92 ], [ -12, %if.end25.cleanup_crit_edge ], [ 0, %do.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mod) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_net_unbind(ptr noundef %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_unbind.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_unbind, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_unbind.__UNIQUE_ID_ddebug515, ptr noundef %dev4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sync_timer = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 8
  %call5 = tail call i32 @del_timer_sync(ptr noundef %sync_timer) #10
  %sierra_net_kevent = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 7
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %sierra_net_kevent) #10
  %shdwn_msg = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.i, align 4
  %7 = inttoptr i32 %6 to ptr
  %ifnum.i = getelementptr inbounds %struct.sierra_net_data, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ifnum.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ifnum.i, align 4
  %conv.i = zext i8 %9 to i16
  %call2.i = tail call i32 @usbnet_write_cmd(ptr noundef %dev, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i, ptr noundef %shdwn_msg, i16 noundef zeroext 4) #10
  %10 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call2.i, label %if.then.i [
    i32 4, label %do.end.sierra_net_send_cmd.exit_crit_edge
    i32 -19, label %do.end.sierra_net_send_cmd.exit_crit_edge21
  ]

do.end.sierra_net_send_cmd.exit_crit_edge21:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_cmd.exit

do.end.sierra_net_send_cmd.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_cmd.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.49, i32 noundef %call2.i) #13
  br label %sierra_net_send_cmd.exit

sierra_net_send_cmd.exit:                         ; preds = %if.then.i, %do.end.sierra_net_send_cmd.exit_crit_edge, %do.end.sierra_net_send_cmd.exit_crit_edge21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.then8, label %sierra_net_send_cmd.exit.if.end9_crit_edge

sierra_net_send_cmd.exit.if.end9_crit_edge:       ; preds = %sierra_net_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %sierra_net_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.27, i32 noundef %call2.i) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sierra_net_send_cmd.exit.if.end9_crit_edge
  tail call void @usbnet_status_stop(ptr noundef %dev) #10
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_net_status(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_status.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_status, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_status.__UNIQUE_ID_ddebug510, ptr noundef %dev3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %4 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transfer_buffer, align 4
  %bNotificationType = getelementptr inbounds %struct.usb_cdc_notification, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bNotificationType to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNotificationType, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %7, label %sw.default [
    i8 0, label %if.end5.cleanup_crit_edge
    i8 42, label %if.end5.cleanup_crit_edge14
    i8 1, label %sw.bb6
  ]

if.end5.cleanup_crit_edge14:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data.i.i, align 4
  %11 = inttoptr i32 %10 to ptr
  %kevent_flags.i = getelementptr inbounds %struct.sierra_net_data, ptr %11, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %kevent_flags.i) #10
  %sierra_net_kevent.i = getelementptr inbounds %struct.sierra_net_data, ptr %11, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %sierra_net_kevent.i) #10
  br label %cleanup

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %7 to i32
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.51, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %if.end5.cleanup_crit_edge, %if.end5.cleanup_crit_edge14, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sierra_net_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_rx_fixup.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_rx_fixup, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_rx_fixup.__UNIQUE_ID_ddebug516, ptr noundef %dev3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not121 = icmp eq i32 %3, 0
  br i1 %tobool4.not121, label %do.end.cleanup_crit_edge, label %while.body.lr.ph, !prof !172

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %net46 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %msg_enable.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end58.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %65, %if.end58.while.body_crit_edge ]
  %hh.sroa.25.0122 = phi i16 [ -1, %while.body.lr.ph ], [ 514, %if.end58.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.i = icmp ult i32 %4, 4
  br i1 %cmp.i, label %while.body.if.then14_crit_edge, label %if.end.i

while.body.if.then14_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end.i:                                         ; preds = %while.body
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %6, align 1
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 2
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i, align 1
  %add.ptr.i71.i = getelementptr i8, ptr %6, i32 4
  %and6.i = and i8 %10, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %and6.i)
  %cmp10.i = icmp eq i8 %and6.i, 127
  br i1 %cmp10.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cmp15.i = icmp ult i32 %4, 6
  br i1 %cmp15.i, label %if.then14.i.if.then14_crit_edge, label %if.end18.i

if.then14.i.if.then14_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end18.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = and i16 %8, 16383
  %12 = ptrtoint ptr %add.ptr.i71.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr.i71.i, align 1
  %14 = and i16 %13, 1023
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = and i16 %8, 2047
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.end18.i
  %hh.sroa.8.1 = phi i16 [ %11, %if.end18.i ], [ %15, %if.else.i ]
  %hh.sroa.25.1 = phi i16 [ %14, %if.end18.i ], [ %hh.sroa.25.0122, %if.else.i ]
  %storemerge.i = phi i32 [ 6, %if.end18.i ], [ 4, %if.else.i ]
  %.lobit = lshr i8 %10, 7
  %16 = zext i8 %.lobit to i32
  %hh.sroa.0.1 = or i32 %storemerge.i, %16
  %.lobit124 = ashr i8 %10, 7
  %17 = sext i8 %.lobit124 to i16
  %hh.sroa.8.2 = add nsw i16 %hh.sroa.8.1, %17
  %conv42.i = zext i16 %hh.sroa.8.2 to i32
  %add.i = add nuw nsw i32 %hh.sroa.0.1, %conv42.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %4)
  %cmp43.i = icmp ugt i32 %add.i, %4
  br i1 %cmp43.i, label %if.end34.i.if.then14_crit_edge, label %if.end19

if.end34.i.if.then14_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %if.end34.i.if.then14_crit_edge, %if.then14.i.if.then14_crit_edge, %while.body.if.then14_crit_edge
  %retval.0.i82.ph = phi i32 [ -71, %if.then14.i.if.then14_crit_edge ], [ -71, %while.body.if.then14_crit_edge ], [ -22, %if.end34.i.if.then14_crit_edge ]
  %18 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i, align 4
  %and = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net46, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i82.ph) #13
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  %22 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net46, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 36, i32 10
  %24 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_length_errors, align 8
  %inc = add i32 %25, 1
  store i32 %inc, ptr %rx_length_errors, align 8
  br label %cleanup

if.end19:                                         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %hh.sroa.25.1)
  %cmp.not = icmp eq i16 %hh.sroa.25.1, 514
  %or.cond = select i1 %cmp10.i, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end33, label %if.then23

if.then23:                                        ; preds = %if.end19
  %26 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable.i, align 4
  %and25 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then27

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %net46, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.54) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23.if.end29_crit_edge
  %30 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net46, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 36, i32 13
  %32 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_frame_errors, align 4
  %inc32 = add i32 %33, 1
  store i32 %inc32, ptr %rx_frame_errors, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end19
  %call34 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %hh.sroa.0.1) #10
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %38 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i83 = getelementptr i8, ptr %37, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i83, i32 0, i32 2
  %39 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %40)
  %cmp37.not = icmp eq i16 %40, -31011
  br i1 %cmp37.not, label %if.end33.if.end42_crit_edge, label %if.then39

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 2048, ptr %h_proto, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end33.if.end42_crit_edge
  %42 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i, align 8
  %44 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mac_header.i, align 2
  %conv.i.i90 = zext i16 %45 to i32
  %add.ptr.i.i91 = getelementptr i8, ptr %43, i32 %conv.i.i90
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i91, i32 0, i32 1
  %46 = call ptr @memset(ptr %h_source, i32 0, i32 6)
  %47 = load ptr, ptr %head.i, align 8
  %48 = load i16, ptr %mac_header.i, align 2
  %conv.i.i94 = zext i16 %48 to i32
  %add.ptr.i.i95 = getelementptr i8, ptr %47, i32 %conv.i.i94
  %49 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net46, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  %53 = call ptr @memcpy(ptr %add.ptr.i.i95, ptr %52, i32 6)
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv42.i)
  %cmp49 = icmp eq i32 %55, %conv42.i
  br i1 %cmp49, label %if.end42.cleanup_crit_edge, label %if.end52

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv42.i) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.else.i96, label %if.then57

if.else.i96:                                      ; preds = %if.end52
  %56 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.else.i96.sierra_net_skb_clone.exit.thread_crit_edge, label %if.then3.i

if.else.i96.sierra_net_skb_clone.exit.thread_crit_edge: ; preds = %if.else.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_skb_clone.exit.thread

if.then3.i:                                       ; preds = %if.else.i96
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %net46, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.55) #13
  br label %sierra_net_skb_clone.exit.thread

sierra_net_skb_clone.exit.thread:                 ; preds = %if.then3.i, %if.else.i96.sierra_net_skb_clone.exit.thread_crit_edge
  %60 = ptrtoint ptr %net46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net46, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 36, i32 6
  %62 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_dropped.i, align 8
  %inc.i97 = add i32 %63, 1
  store i32 %inc.i97, ptr %rx_dropped.i, align 8
  br label %if.end58

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @skb_trim(ptr noundef nonnull %call.i, i32 noundef %conv42.i) #10
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %sierra_net_skb_clone.exit.thread
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %tobool4.not = icmp eq i32 %65, 0
  br i1 %tobool4.not, label %if.end58.cleanup_crit_edge, label %if.end58.while.body_crit_edge, !prof !172

if.end58.while.body_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end58.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end29, %if.end17, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 0, %if.end29 ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end42.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sierra_net_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_tx_fixup.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_tx_fixup, %if.then)) #10
          to label %do.end7 [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_tx_fixup.__UNIQUE_ID_ddebug518, ptr noundef %dev5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.56) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool8.not = icmp eq i16 %6, 0
  br i1 %tobool8.not, label %do.end7.if.then51_crit_edge, label %land.lhs.true

do.end7.if.then51_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

land.lhs.true:                                    ; preds = %do.end7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %11 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %land.lhs.true.if.end48.sink.split_crit_edge

land.lhs.true.if.end48.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.sink.split

if.end.i:                                         ; preds = %land.lhs.true
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 13
  br i1 %cmp.i.i, label %land.lhs.true11, label %if.end.i.if.end48_crit_edge, !prof !173

if.end.i.if.end48_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

land.lhs.true11:                                  ; preds = %if.end.i
  %conv.i.i.i = and i32 %sub.ptr.sub.i.i, 65535
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %18 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %protocol.i, align 8
  %19 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.63)
  switch i16 %17, label %land.lhs.true11.if.end48_crit_edge [
    i16 -31011, label %land.lhs.true11.if.then14_crit_edge
    i16 2048, label %land.lhs.true11.if.then14_crit_edge96
  ]

land.lhs.true11.if.then14_crit_edge96:            ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

land.lhs.true11.if.then14_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

land.lhs.true11.if.end48_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then14:                                        ; preds = %land.lhs.true11.if.then14_crit_edge, %land.lhs.true11.if.then14_crit_edge96
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.ptr.sub.i)
  %cmp = icmp ugt i32 %sub.ptr.sub.i, 5
  br i1 %cmp, label %if.then17, label %if.then14.if.end48.sink.split_crit_edge

if.then14.if.end48.sink.split_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.sink.split

if.then17:                                        ; preds = %if.then14
  %24 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i, align 4
  %call20 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 6) #10
  %conv21 = and i32 %25, 65535
  %add = add nuw nsw i32 %conv21, 6
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %26 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp22 = icmp eq i32 %rem, 0
  br i1 %cmp22, label %if.then26, label %if.then17.if.end43_crit_edge

if.then17.if.end43_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then26:                                        ; preds = %if.then17
  %28 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i82 = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i82, label %skb_tailroom.exit, label %if.then26.if.then36_crit_edge

if.then26.if.then36_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

skb_tailroom.exit:                                ; preds = %if.then26
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %30 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %cmp28 = icmp eq ptr %31, %33
  br i1 %cmp28, label %skb_tailroom.exit.if.then36_crit_edge, label %if.else, !prof !172

skb_tailroom.exit.if.then36_crit_edge:            ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %skb_tailroom.exit.if.then36_crit_edge, %if.then26.if.then36_crit_edge
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.57) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %skb_tailroom.exit
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %38 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i.i.i, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx, align 1
  %41 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.not.i87 = icmp eq i32 %42, 0
  br i1 %tobool.i.not.i87, label %__skb_put.exit, label %do.body3.i, !prof !173

do.body3.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !174
  unreachable

__skb_put.exit:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i, align 8
  %add.ptr.i = getelementptr i8, ptr %44, i32 1
  store ptr %add.ptr.i, ptr %tail.i, align 8
  %45 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i.i, align 4
  %add.i = add i32 %46, 1
  store i32 %add.i, ptr %len.i.i.i, align 4
  %add40 = add nuw nsw i32 %conv21, 1
  br label %if.end43

if.end43:                                         ; preds = %__skb_put.exit, %if.then17.if.end43_crit_edge
  %len.0.in = phi i32 [ %add40, %__skb_put.exit ], [ %25, %if.then17.if.end43_crit_edge ]
  %len.0 = trunc i32 %len.0.in to i16
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 %len.0, ptr %48, align 1
  %add.ptr.i89 = getelementptr i8, ptr %48, i32 2
  %tx_hdr_template.i = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 1
  %50 = ptrtoint ptr %tx_hdr_template.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %tx_hdr_template.i, align 2
  %52 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %add.ptr.i89, align 1
  br label %cleanup

if.end48.sink.split:                              ; preds = %if.then14.if.end48.sink.split_crit_edge, %land.lhs.true.if.end48.sink.split_crit_edge
  %.str.59.sink = phi ptr [ @.str.59, %land.lhs.true.if.end48.sink.split_crit_edge ], [ @.str.58, %if.then14.if.end48.sink.split_crit_edge ]
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %53 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %54, ptr noundef nonnull %.str.59.sink) #13
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %land.lhs.true11.if.end48_crit_edge, %if.end.i.if.end48_crit_edge
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %55)
  %.pr = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %tobool50.not = icmp eq i16 %.pr, 0
  br i1 %tobool50.not, label %if.end48.if.then51_crit_edge, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.end48.if.then51_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.then51:                                        ; preds = %if.end48.if.then51_crit_edge, %do.end7.if.then51_crit_edge
  %net52 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %56 = ptrtoint ptr %net52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net52, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 36, i32 17
  %58 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_carrier_errors, align 4
  %inc = add i32 %59, 1
  store i32 %inc, ptr %tx_carrier_errors, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48.if.end53_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end43, %if.then36
  %retval.0 = phi ptr [ null, %if.then36 ], [ %skb, %if.end43 ], [ null, %if.end53 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_net_kevent(ptr noundef %work) #2 align 64 {
entry:
  %hh = alloca %struct.hip_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usbnet = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %usbnet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbnet, align 4
  %kevent_flags = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kevent_flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end111_crit_edge, label %if.then

entry.if.end111_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then:                                          ; preds = %entry
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %kevent_flags) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1024) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup160_crit_edge, label %if.end

if.then.cleanup160_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup160

if.end:                                           ; preds = %if.then
  %ifnum5 = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %ifnum5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ifnum5, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i = shl i32 %11, 8
  %or8 = or i32 %shl.i, -2147483520
  %conv = zext i8 %7 to i16
  %call9 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or8, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1024, i32 noundef 5000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef %call9) #13
  br label %if.end110

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hh) #10
  %14 = call ptr @memset(ptr %hh, i32 255, i32 36)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !167

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev19 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug503, ptr noundef %dev19, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %call9) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9)
  %cmp.i = icmp ult i32 %call9, 4
  br i1 %cmp.i, label %do.end.if.then23_crit_edge, label %if.end.i

do.end.if.then23_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.end.i:                                         ; preds = %do.end
  %payload_len.i = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 1
  %17 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %payload_len.i, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call7.i.i, align 8
  %20 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 1, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 2
  %msgid.i = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 2
  %21 = ptrtoint ptr %msgid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %msgid.i, align 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i, align 2
  %24 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 2, i32 1
  %add.ptr.i70.i = getelementptr i8, ptr %call7.i.i, i32 3
  %msgspecific.i = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 3
  %25 = ptrtoint ptr %msgspecific.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %msgspecific.i, align 4
  %26 = ptrtoint ptr %add.ptr.i70.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i70.i, align 1
  %28 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %27, ptr %28, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %call7.i.i, i32 4
  %and6.i = and i8 %23, 127
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %and6.i, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %and6.i)
  %cmp10.i = icmp eq i8 %and6.i, 127
  %conv11.i = zext i1 %cmp10.i to i32
  %extmsgid.i = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 4
  %31 = ptrtoint ptr %extmsgid.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv11.i, ptr %extmsgid.i, align 4
  br i1 %cmp10.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call9)
  %cmp15.i = icmp ult i32 %call9, 6
  br i1 %cmp15.i, label %if.then14.i.if.then23_crit_edge, label %if.end18.i

if.then14.i.if.then23_crit_edge:                  ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.end18.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = and i16 %19, 16383
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %20, align 4
  %34 = ptrtoint ptr %extmsgid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %extmsgid.i, align 4
  %35 = ptrtoint ptr %add.ptr.i71.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr.i71.i, align 4
  %37 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 4, i32 1
  %38 = and i16 %36, 1023
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %37, align 4
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = and i16 %19, 2047
  %41 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %20, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.end18.i
  %storemerge.i = phi i32 [ 4, %if.else.i ], [ 6, %if.end18.i ]
  %42 = ptrtoint ptr %hh to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge.i, ptr %hh, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %tobool35.not.i = icmp sgt i8 %23, -1
  br i1 %tobool35.not.i, label %if.end34.i.if.end39.i_crit_edge, label %if.then36.i

if.end34.i.if.end39.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = or i32 %storemerge.i, 1
  %43 = ptrtoint ptr %hh to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc.i, ptr %hh, align 4
  %44 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %20, align 4
  %dec.i = add i16 %45, -1
  store i16 %dec.i, ptr %20, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then36.i, %if.end34.i.if.end39.i_crit_edge
  %46 = ptrtoint ptr %hh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hh, align 4
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %20, align 4
  %conv42.i = zext i16 %49 to i32
  %add.i = add i32 %47, %conv42.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call9)
  %cmp43.i = icmp ugt i32 %add.i, %call9
  br i1 %cmp43.i, label %if.end39.i.if.then23_crit_edge, label %if.end25

if.end39.i.if.then23_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23

if.then23:                                        ; preds = %if.end39.i.if.then23_crit_edge, %if.then14.i.if.then23_crit_edge, %do.end.if.then23_crit_edge
  %retval.0.i225.ph = phi i32 [ -71, %if.then14.i.if.then23_crit_edge ], [ -71, %do.end.if.then23_crit_edge ], [ -22, %if.end39.i.if.then23_crit_edge ]
  %net24 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %50 = ptrtoint ptr %net24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %net24, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i225.ph) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hh) #10
  br label %cleanup160

if.end25:                                         ; preds = %if.end39.i
  %52 = ptrtoint ptr %hh to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hh, align 4
  %54 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %20, align 4
  %conv26 = zext i16 %55 to i32
  %add = add i32 %53, %conv26
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %add)
  %cmp27.not = icmp eq i32 %call9, %add
  br i1 %cmp27.not, label %if.end35, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %net30 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %56 = ptrtoint ptr %net30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net30, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, i32 noundef %call9, i32 noundef %add) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hh) #10
  br label %cleanup160

if.end35:                                         ; preds = %if.end25
  %58 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %24, align 4
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %59, label %sw.default [
    i8 120, label %do.body37
    i8 98, label %do.body57
    i8 96, label %do.body80
    i8 127, label %sw.bb104
    i8 100, label %if.end35.cleanup_crit_edge
  ]

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body37:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then49)) #10
          to label %do.end55 [label %if.then49], !srcloc !167

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %dev51 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %28, align 4
  %conv52 = zext i8 %64 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug504, ptr noundef %dev51, ptr noundef nonnull @.str.32, i32 noundef %conv52) #10
  br label %do.end55

do.end55:                                         ; preds = %if.then49, %do.body37
  call fastcc void @sierra_net_handle_lsi(ptr noundef %1, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %hh)
  br label %cleanup

do.body57:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug505, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then69)) #10
          to label %do.end76 [label %if.then69], !srcloc !167

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %28, align 4
  %conv73 = zext i8 %68 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug505, ptr noundef %dev71, ptr noundef nonnull @.str.33, i32 noundef %conv73) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then69, %do.body57
  %sync_timer = getelementptr i8, ptr %work, i32 44
  %call77 = tail call i32 @del_timer_sync(ptr noundef %sync_timer) #10
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %kevent_flags) #10
  br label %cleanup

do.body80:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then92)) #10
          to label %do.end97 [label %if.then92], !srcloc !167

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %dev94 = getelementptr inbounds %struct.usb_device, ptr %70, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug506, ptr noundef %dev94, ptr noundef nonnull @.str.34) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then92, %do.body80
  %data.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data.i.i, align 4
  %73 = inttoptr i32 %72 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_send_sync.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !167

if.then.i:                                        ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %dev4.i = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_send_sync.__UNIQUE_ID_ddebug500, ptr noundef %dev4.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end97
  %sync_msg.i = getelementptr inbounds %struct.sierra_net_data, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data.i.i, align 4
  %78 = inttoptr i32 %77 to ptr
  %ifnum.i.i = getelementptr inbounds %struct.sierra_net_data, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %ifnum.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ifnum.i.i, align 4
  %conv.i.i = zext i8 %80 to i16
  %call2.i.i = tail call i32 @usbnet_write_cmd(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %sync_msg.i, i16 noundef zeroext 4) #10
  %81 = zext i32 %call2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call2.i.i, label %if.then.i.i [
    i32 4, label %do.end.i.sierra_net_send_sync.exit_crit_edge
    i32 -19, label %do.end.i.sierra_net_send_sync.exit_crit_edge235
  ]

do.end.i.sierra_net_send_sync.exit_crit_edge235:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit

do.end.i.sierra_net_send_sync.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sierra_net_send_sync.exit

if.then.i.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %net.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %82 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %net.i.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %call2.i.i) #13
  br label %sierra_net_send_sync.exit

sierra_net_send_sync.exit:                        ; preds = %if.then.i.i, %do.end.i.sierra_net_send_sync.exit_crit_edge, %do.end.i.sierra_net_send_sync.exit_crit_edge235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp99 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp99, label %if.then101, label %sierra_net_send_sync.exit.cleanup_crit_edge

sierra_net_send_sync.exit.cleanup_crit_edge:      ; preds = %sierra_net_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then101:                                       ; preds = %sierra_net_send_sync.exit
  call void @__sanitizer_cov_trace_pc() #12
  %net102 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %84 = ptrtoint ptr %net102 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net102, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.35, i32 noundef %call2.i.i) #13
  br label %cleanup

sw.bb104:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %net105 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %86 = ptrtoint ptr %net105 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net105, align 4
  %88 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %88, align 4
  %conv106 = zext i16 %90 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.36, i32 noundef %conv106) #13
  br label %cleanup

sw.default:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %conv36 = zext i8 %59 to i32
  %net107 = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %91 = ptrtoint ptr %net107 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %net107, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.37, i32 noundef %conv36) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb104, %if.then101, %sierra_net_send_sync.exit.cleanup_crit_edge, %do.end76, %do.end55, %if.end35.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hh) #10
  br label %if.end110

if.end110:                                        ; preds = %cleanup, %if.then11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %entry.if.end111_crit_edge
  %93 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %kevent_flags, align 4
  %95 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool114.not = icmp eq i32 %95, 0
  br i1 %tobool114.not, label %if.end111.if.end136_crit_edge, label %if.then115

if.end111.if.end136_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then115:                                       ; preds = %if.end111
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %kevent_flags) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then129)) #10
          to label %do.end134 [label %if.then129], !srcloc !167

if.then129:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %dev131 = getelementptr inbounds %struct.usb_device, ptr %97, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug507, ptr noundef %dev131, ptr noundef nonnull @.str.38) #10
  br label %do.end134

do.end134:                                        ; preds = %if.then129, %if.then115
  %98 = ptrtoint ptr %usbnet to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usbnet, align 4
  tail call fastcc void @sierra_net_dosync(ptr noundef %99)
  %100 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %.pr = load i32, ptr %kevent_flags, align 4
  br label %if.end136

if.end136:                                        ; preds = %do.end134, %if.end111.if.end136_crit_edge
  %101 = phi i32 [ %.pr, %do.end134 ], [ %94, %if.end111.if.end136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool138.not = icmp eq i32 %101, 0
  br i1 %tobool138.not, label %if.end136.cleanup160_crit_edge, label %do.body140

if.end136.cleanup160_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup160

do.body140:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_kevent.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_kevent, %if.then152)) #10
          to label %cleanup160 [label %if.then152], !srcloc !167

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %dev154 = getelementptr inbounds %struct.usb_device, ptr %103, i32 0, i32 15
  %104 = ptrtoint ptr %kevent_flags to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %kevent_flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_kevent.__UNIQUE_ID_ddebug508, ptr noundef %dev154, ptr noundef nonnull @.str.39, i32 noundef %105) #10
  br label %cleanup160

cleanup160:                                       ; preds = %if.then152, %do.body140, %if.end136.cleanup160_crit_edge, %if.then29, %if.then23, %if.then.cleanup160_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_sync_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %usbnet = getelementptr i8, ptr %t, i32 -56
  %0 = ptrtoint ptr %usbnet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbnet, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_sync_timer.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_sync_timer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !167

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev4 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_sync_timer.__UNIQUE_ID_ddebug509, ptr noundef %dev4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data.i.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.i.i, align 4
  %6 = inttoptr i32 %5 to ptr
  %kevent_flags.i = getelementptr inbounds %struct.sierra_net_data, ptr %6, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 2, ptr noundef %kevent_flags.i) #10
  %sierra_net_kevent.i = getelementptr inbounds %struct.sierra_net_data, ptr %6, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %sierra_net_kevent.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sierra_net_get_drvinfo(ptr noundef %net, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usbnet_get_drvinfo(ptr noundef %net, ptr noundef %info) #10
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @driver_name, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.2, i32 noundef 32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sierra_net_get_link(ptr noundef %net) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr i8, ptr %net, i32 2556
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.net_device, ptr %net, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %7 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %and1.i.i, %land.rhs ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sierra_net_handle_lsi(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readonly %hh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %hh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hh, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %4
  %5 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 218, i16 %7)
  %cmp.i = icmp ult i16 %7, 218
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %7 to i32
  %net.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.sierra_net_parse_lsi, i32 noundef %conv, i32 noundef 218) #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %session_state.i = getelementptr inbounds %struct.lsi_umts, ptr %add.ptr, i32 0, i32 6
  %10 = ptrtoint ptr %session_state.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %session_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.i = icmp eq i8 %11, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %net4.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %12 = ptrtoint ptr %net4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net4.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef 0) #13
  br label %if.end6

if.end7.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %15, label %if.else29.i [
    i8 1, label %if.then11.i
    i8 4, label %if.end7.i.if.end34.i_crit_edge
  ]

if.end7.i.if.end34.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then11.i:                                      ; preds = %if.end7.i
  %link_type.i = getelementptr inbounds %struct.lsi_umts_single, ptr %add.ptr, i32 0, i32 1
  %17 = ptrtoint ptr %link_type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_type.i, align 1
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %18, label %cleanup.i [
    i8 0, label %if.then11.i.if.end34.i_crit_edge
    i8 2, label %if.then11.i.if.end34.i_crit_edge24
  ]

if.then11.i.if.end34.i_crit_edge24:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then11.i.if.end34.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

cleanup.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv12.i = zext i8 %18 to i32
  %net20.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %net20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net20.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.43, i32 noundef %conv12.i) #13
  br label %if.then

if.else29.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv8.i = zext i8 %15 to i32
  %net30.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %net30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %net30.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.44, i32 noundef %conv8.i) #13
  br label %if.then

if.end34.i:                                       ; preds = %if.then11.i.if.end34.i_crit_edge, %if.then11.i.if.end34.i_crit_edge24, %if.end7.i.if.end34.i_crit_edge
  %expected_length.1.i = phi i32 [ 233, %if.end7.i.if.end34.i_crit_edge ], [ 214, %if.then11.i.if.end34.i_crit_edge ], [ 214, %if.then11.i.if.end34.i_crit_edge24 ]
  %length.i = getelementptr inbounds %struct.lsi_umts, ptr %add.ptr, i32 0, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %length.i, align 1
  %conv35.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %expected_length.1.i, i32 %conv35.i)
  %cmp36.not.i = icmp eq i32 %expected_length.1.i, %conv35.i
  br i1 %cmp36.not.i, label %if.end42.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  %net39.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %net39.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net39.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.sierra_net_parse_lsi, i32 noundef %conv35.i, i32 noundef %expected_length.1.i) #13
  br label %if.then

if.end42.i:                                       ; preds = %if.end34.i
  %coverage.i = getelementptr inbounds %struct.lsi_umts, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %coverage.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %coverage.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %switch.i = icmp ult i8 %29, 2
  br i1 %switch.i, label %if.then50.i, label %if.then3

if.then50.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  %net51.i = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %30 = ptrtoint ptr %net51.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net51.i, align 4
  %conv53.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.46, i32 noundef %conv53.i) #13
  br label %if.end6

if.then:                                          ; preds = %if.then38.i, %if.else29.i, %cleanup.i, %if.then.i
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.then3:                                         ; preds = %if.end42.i
  %34 = getelementptr inbounds %struct.hip_hdr, ptr %hh, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sierra_net_handle_lsi, %if.then.i18)) #10
          to label %sierra_net_set_ctx_index.exit [label %if.then.i18], !srcloc !167

if.then.i18:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %usbnet.i = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 4
  %37 = ptrtoint ptr %usbnet.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usbnet.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %conv.i = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501, ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %conv.i) #10
  br label %sierra_net_set_ctx_index.exit

sierra_net_set_ctx_index.exit:                    ; preds = %if.then.i18, %if.then3
  %tx_hdr_template.i = getelementptr inbounds %struct.sierra_net_data, ptr %2, i32 0, i32 1
  %41 = ptrtoint ptr %tx_hdr_template.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 63, ptr %tx_hdr_template.i, align 2
  %arrayidx4.i = getelementptr %struct.sierra_net_data, ptr %2, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %36, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.sierra_net_data, ptr %2, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %arrayidx6.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %sierra_net_set_ctx_index.exit, %if.then50.i, %if.then3.i
  %tobool23 = phi i1 [ true, %sierra_net_set_ctx_index.exit ], [ false, %if.then3.i ], [ false, %if.then50.i ]
  %storemerge = phi i16 [ 1, %sierra_net_set_ctx_index.exit ], [ 0, %if.then3.i ], [ 0, %if.then50.i ]
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %storemerge, ptr %2, align 4
  tail call void @usbnet_link_change(ptr noundef %dev, i1 noundef zeroext %tobool23, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_status_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !72, !74, !75, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !130, !132, !133, !135, !137, !138, !140, !142, !143, !145, !147, !149, !151, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_sierra_net__519_968_sierra_net_driver_init6, !1, !"__initcall__kmod_sierra_net__519_968_sierra_net_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/sierra_net.c", i32 968, i32 1}
!2 = !{ptr @__exitcall_sierra_net_driver_exit, !1, !"__exitcall_sierra_net_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author520, !4, !"__UNIQUE_ID_author520", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/sierra_net.c", i32 970, i32 1}
!5 = !{ptr @__UNIQUE_ID_description521, !6, !"__UNIQUE_ID_description521", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/sierra_net.c", i32 971, i32 1}
!7 = !{ptr @__UNIQUE_ID_version522, !8, !"__UNIQUE_ID_version522", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/sierra_net.c", i32 972, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file523, !14, !"__UNIQUE_ID_file523", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/sierra_net.c", i32 973, i32 1}
!15 = !{ptr @__UNIQUE_ID_license524, !14, !"__UNIQUE_ID_license524", i1 false, i1 false}
!16 = !{ptr @sierra_net_driver, !17, !"sierra_net_driver", i1 false, i1 false}
!17 = !{!"../drivers/net/usb/sierra_net.c", i32 957, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/sierra_net.c", i32 438, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sierra_net_dosync.__UNIQUE_ID_ddebug502, !19, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/usb/sierra_net.c", i32 451, i32 4}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/usb/sierra_net.c", i32 340, i32 2}
!27 = !{ptr @sierra_net_send_sync.__UNIQUE_ID_ddebug500, !26, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/sierra_net.c", i32 343, i32 28}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/sierra_net.c", i32 330, i32 24}
!32 = !{ptr @products, !33, !"products", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/sierra_net.c", i32 946, i32 35}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/sierra_net.c", i32 911, i32 17}
!36 = !{ptr @sierra_net_info_direct_ip, !37, !"sierra_net_info_direct_ip", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/sierra_net.c", i32 910, i32 33}
!38 = distinct !{null, !39, !"sync_tmplate", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/sierra_net.c", i32 668, i32 18}
!40 = distinct !{null, !41, !"shdwn_tmplate", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/sierra_net.c", i32 670, i32 18}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/sierra_net.c", i32 674, i32 2}
!44 = !{ptr @sierra_net_bind.__UNIQUE_ID_ddebug511, !43, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/usb/sierra_net.c", i32 680, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sierra_net_bind._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @sierra_net_bind._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/usb/sierra_net.c", i32 688, i32 3}
!53 = !{ptr @sierra_net_bind._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sierra_net_bind._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sierra_net_bind.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/net/usb/sierra_net.c", i32 733, i32 2}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sierra_net_bind.__key.19, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/net/usb/sierra_net.c", i32 736, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/usb/sierra_net.c", i32 740, i32 2}
!63 = !{ptr @sierra_net_bind.__UNIQUE_ID_ddebug514, !62, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/usb/sierra_net.c", i32 745, i32 3}
!66 = !{ptr @sierra_net_bind._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sierra_net_bind._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @sierra_net_device_ops, !69, !"sierra_net_device_ops", i1 false, i1 false}
!69 = !{!"../drivers/net/usb/sierra_net.c", i32 181, i32 36}
!70 = !{ptr @iface_counter, !71, !"iface_counter", i1 false, i1 false}
!71 = !{!"../drivers/net/usb/sierra_net.c", i32 42, i32 17}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/usb/sierra_net.c", i32 350, i32 2}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sierra_net_set_ctx_index.__UNIQUE_ID_ddebug501, !73, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!76 = !{ptr @sierra_net_ethtool_ops, !77, !"sierra_net_ethtool_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/usb/sierra_net.c", i32 626, i32 33}
!78 = !{ptr @driver_name, !79, !"driver_name", i1 false, i1 false}
!79 = !{!"../drivers/net/usb/sierra_net.c", i32 18, i32 19}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/usb/sierra_net.c", i32 489, i32 5}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/usb/sierra_net.c", i32 493, i32 4}
!84 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug503, !83, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/usb/sierra_net.c", i32 498, i32 26}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/usb/sierra_net.c", i32 506, i32 26}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/usb/sierra_net.c", i32 516, i32 5}
!92 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug504, !91, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/usb/sierra_net.c", i32 521, i32 5}
!95 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug505, !94, !"__UNIQUE_ID_ddebug505", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/usb/sierra_net.c", i32 530, i32 5}
!98 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug506, !97, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/usb/sierra_net.c", i32 534, i32 7}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/usb/sierra_net.c", i32 537, i32 26}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/usb/sierra_net.c", i32 544, i32 26}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/usb/sierra_net.c", i32 554, i32 3}
!107 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug507, !106, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/usb/sierra_net.c", i32 559, i32 3}
!110 = !{ptr @sierra_net_kevent.__UNIQUE_ID_ddebug508, !109, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/usb/sierra_net.c", i32 421, i32 24}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/usb/sierra_net.c", i32 363, i32 24}
!115 = !{ptr @__func__.sierra_net_parse_lsi, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/usb/sierra_net.c", i32 364, i32 7}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/usb/sierra_net.c", i32 370, i32 24}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/usb/sierra_net.c", i32 382, i32 25}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/usb/sierra_net.c", i32 390, i32 24}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/usb/sierra_net.c", i32 396, i32 24}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/usb/sierra_net.c", i32 404, i32 24}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/usb/sierra_net.c", i32 579, i32 2}
!129 = !{ptr @sierra_sync_timer.__UNIQUE_ID_ddebug509, !128, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/usb/sierra_net.c", i32 759, i32 2}
!132 = !{ptr @sierra_net_unbind.__UNIQUE_ID_ddebug515, !131, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/usb/sierra_net.c", i32 767, i32 29}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/usb/sierra_net.c", i32 588, i32 2}
!137 = !{ptr @sierra_net_status.__UNIQUE_ID_ddebug510, !136, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/usb/sierra_net.c", i32 604, i32 24}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/usb/sierra_net.c", i32 808, i32 2}
!142 = !{ptr @sierra_net_rx_fixup.__UNIQUE_ID_ddebug516, !141, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/usb/sierra_net.c", i32 815, i32 26}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/usb/sierra_net.c", i32 826, i32 26}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/usb/sierra_net.c", i32 794, i32 25}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/usb/sierra_net.c", i32 868, i32 2}
!151 = !{ptr @sierra_net_tx_fixup.__UNIQUE_ID_ddebug518, !150, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!152 = !{ptr @.str.57, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/usb/sierra_net.c", i32 880, i32 27}
!154 = !{ptr @.str.58, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/usb/sierra_net.c", i32 896, i32 25}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/usb/sierra_net.c", i32 222, i32 24}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 2148979762, i64 2148979767, i64 2148979780, i64 2148979824, i64 2148979858, i64 2148979879}
!168 = !{i64 2148451820}
!169 = !{i64 2148367105, i64 2148367137, i64 2148367166, i64 2148367200, i64 2148367231, i64 2148367254}
!170 = !{i64 2148452049}
!171 = !{!"auto-init"}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i64 2154606882, i64 2154607370, i64 2154606919, i64 2154606975, i64 2154607009, i64 2154607033, i64 2154607074, i64 2154607095, i64 2154607123, i64 2154607157}
