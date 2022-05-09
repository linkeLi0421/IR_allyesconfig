; ModuleID = '/llk/IR_all_yes/drivers/net/usb/cdc-phonet.c_pt.bc'
source_filename = "../drivers/net/usb/cdc-phonet.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.98 }
%union.anon.98 = type { i32 }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usbpn_dev = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i32, %struct.spinlock, %struct.spinlock, ptr, [0 x ptr] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.if_phonet_req = type { [16 x i8], %union.anon.121 }
%union.anon.121 = type { %struct.if_phonet_autoconf }
%struct.if_phonet_autoconf = type { i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_cdc_phonet__346_429_usbpn_driver_init6 = internal global ptr @usbpn_driver_init, section ".initcall6.init", align 4
@usbpn_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbpn_probe, ptr @usbpn_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbpn_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usbpn_driver_exit = internal global ptr @usbpn_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author347 = internal constant [38 x i8] c"cdc_phonet.author=Remi Denis-Courmont\00", section ".modinfo", align 1
@__UNIQUE_ID_description348 = internal constant [53 x i8] c"cdc_phonet.description=USB CDC Phonet host interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [43 x i8] c"cdc_phonet.file=drivers/net/usb/cdc-phonet\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [23 x i8] c"cdc_phonet.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cdc_phonet\00", [21 x i8] zeroinitializer }, align 32
@usbpn_ids = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 385, i16 1057, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 -2, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usbpn_probe.ifname = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbpn%d\00", [24 x i8] zeroinitializer }, align 32
@usbpn_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pnd->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@usbpn_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pnd->rx_lock\00", [18 x i8] zeroinitializer }, align 32
@usbpn_probe.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usbpn_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/usb/cdc-phonet.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"USB CDC Phonet device found\0A\00", [35 x i8] zeroinitializer }, align 32
@usbpn_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @usbpn_open, ptr @usbpn_close, ptr @usbpn_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbpn_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@phonet_header_ops = external dso_local constant %struct.header_ops, align 4
@rx_submit.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_submit\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX submit error (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rx_complete.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.5, ptr @.str.11, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_complete\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX overflow\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@tx_complete.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_complete\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX error (%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967212, i64 4294967221, i64 4294967294]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"usbpn_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 421, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 429, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"usbpn_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 299, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 317, i32 20 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 366, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 367, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 399, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"usbpn_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 269, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 131, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 191, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 717, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [32 x i8] c"../drivers/net/usb/cdc-phonet.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 103, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author347, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_license350, ptr @__exitcall_usbpn_driver_exit, ptr @__initcall__kmod_cdc_phonet__346_429_usbpn_driver_init6, ptr @usbpn_driver_exit, ptr @usbpn_driver, ptr @.str, ptr @usbpn_ids, ptr @usbpn_probe.ifname, ptr @usbpn_probe.__key, ptr @.str.1, ptr @usbpn_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @usbpn_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_probe.ifname to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbpn_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usbpn_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usbpn_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usbpn_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @usbpn_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbpn_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %hdr = alloca %struct.usb_cdc_parsed_header, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %hdr) #7
  %2 = call ptr @memset(ptr %hdr, i32 255, i32 60)
  %3 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intf, align 8
  %extra = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extra, align 4
  %extralen = getelementptr inbounds %struct.usb_host_interface, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %extralen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %extralen, align 4
  %call2 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %hdr, ptr noundef %intf, ptr noundef %6, i32 noundef %8) #7
  %9 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hdr, align 4
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %phonet_magic_present = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %hdr, i32 0, i32 14
  %11 = ptrtoint ptr %phonet_magic_present to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phonet_magic_present, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %bSlaveInterface0 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bSlaveInterface0, align 1
  %conv5 = zext i8 %14 to i32
  %call6 = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i, i32 noundef %conv5) #7
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %call6, i32 0, i32 2
  %15 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp10.not = icmp eq i32 %16, 2
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %17 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call6, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bNumEndpoints, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.end13.cleanup_crit_edge [
    i8 0, label %land.lhs.true
    i8 2, label %land.lhs.true34
  ]

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end13
  %bNumEndpoints21 = getelementptr %struct.usb_host_interface, ptr %18, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bNumEndpoints21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bNumEndpoints21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp23 = icmp eq i8 %23, 2
  br i1 %cmp23, label %if.then25, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx19 = getelementptr %struct.usb_host_interface, ptr %18, i32 1
  br label %if.end46

land.lhs.true34:                                  ; preds = %if.end13
  %bNumEndpoints38 = getelementptr %struct.usb_host_interface, ptr %18, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bNumEndpoints38 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bNumEndpoints38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp40 = icmp eq i8 %25, 0
  br i1 %cmp40, label %land.lhs.true34.if.end46_crit_edge, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true34.if.end46_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true34.if.end46_crit_edge, %if.then25
  %data_desc.0 = phi ptr [ %arrayidx19, %if.then25 ], [ %18, %land.lhs.true34.if.end46_crit_edge ]
  %call48 = call ptr @alloc_netdev_mqs(i32 noundef 192, ptr noundef nonnull @usbpn_probe.ifname, i8 noundef zeroext 0, ptr noundef nonnull @usbpn_setup, i32 noundef 1, i32 noundef 1) #7
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end46.cleanup_crit_edge, label %if.end51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %add.ptr.i192 = getelementptr i8, ptr %call48, i32 2304
  %dev53 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %dev54 = getelementptr inbounds %struct.net_device, ptr %call48, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call48, i32 0, i32 133, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev53, ptr %parent, align 8
  %27 = ptrtoint ptr %add.ptr.i192 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call48, ptr %add.ptr.i192, align 4
  %usb = getelementptr i8, ptr %call48, i32 2316
  %28 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %usb, align 4
  %intf56 = getelementptr i8, ptr %call48, i32 2308
  %29 = ptrtoint ptr %intf56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %intf, ptr %intf56, align 4
  %data_intf57 = getelementptr i8, ptr %call48, i32 2312
  %30 = ptrtoint ptr %data_intf57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call6, ptr %data_intf57, align 4
  %tx_lock = getelementptr i8, ptr %call48, i32 2336
  call void @__raw_spin_lock_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @usbpn_probe.__key, i16 noundef signext 3) #7
  %rx_lock = getelementptr i8, ptr %call48, i32 2380
  call void @__raw_spin_lock_init(ptr noundef %rx_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @usbpn_probe.__key.2, i16 noundef signext 3) #7
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %data_desc.0, i32 0, i32 3
  %31 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress, align 2
  %conv65 = zext i8 %34 to i32
  %and = and i32 %conv65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %if.else82, label %if.then67

if.then67:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %36, 8
  %shl1.i = shl nuw nsw i32 %conv65, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or74 = or i32 %or.i, -1073741696
  %rx_pipe = getelementptr i8, ptr %call48, i32 2324
  %37 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or74, ptr %rx_pipe, align 4
  %38 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress78 = getelementptr %struct.usb_host_endpoint, ptr %39, i32 1, i32 0, i32 2
  br label %if.end100

if.else82:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %bEndpointAddress86 = getelementptr %struct.usb_host_endpoint, ptr %32, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %bEndpointAddress86 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bEndpointAddress86, align 2
  %conv87 = zext i8 %41 to i32
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 8
  %shl.i196 = shl i32 %43, 8
  %shl1.i197 = shl nuw nsw i32 %conv87, 15
  %or.i198 = or i32 %shl1.i197, %shl.i196
  %or90 = or i32 %or.i198, -1073741696
  %rx_pipe91 = getelementptr i8, ptr %call48, i32 2324
  %44 = ptrtoint ptr %rx_pipe91 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or90, ptr %rx_pipe91, align 4
  %45 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress95 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %46, i32 0, i32 2
  br label %if.end100

if.end100:                                        ; preds = %if.else82, %if.then67
  %bEndpointAddress95.sink = phi ptr [ %bEndpointAddress95, %if.else82 ], [ %bEndpointAddress78, %if.then67 ]
  %47 = ptrtoint ptr %bEndpointAddress95.sink to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress95.sink, align 2
  %conv96 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i, align 8
  %shl.i199 = shl i32 %50, 8
  %shl1.i200 = shl nuw nsw i32 %conv96, 15
  %or.i201 = or i32 %shl1.i200, %shl.i199
  %or81.sink = or i32 %or.i201, -1073741824
  %51 = getelementptr i8, ptr %call48, i32 2320
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or81.sink, ptr %51, align 4
  %53 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call6, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %data_desc.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %54 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 28
  %conv102 = trunc i32 %sub.ptr.div to i8
  %active_setting = getelementptr i8, ptr %call48, i32 2328
  %55 = ptrtoint ptr %active_setting to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv102, ptr %active_setting, align 4
  %call103 = call i32 @usb_driver_claim_interface(ptr noundef nonnull @usbpn_driver, ptr noundef nonnull %call6, ptr noundef %add.ptr.i192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end100.out_crit_edge

if.end100.out_crit_edge:                          ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end106:                                        ; preds = %if.end100
  %56 = ptrtoint ptr %bSlaveInterface0 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bSlaveInterface0, align 1
  %conv108 = zext i8 %57 to i32
  %58 = ptrtoint ptr %active_setting to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %active_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool110.not = icmp eq i8 %59, 0
  %lnot.ext = zext i1 %tobool110.not to i32
  %call111 = call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef %conv108, i32 noundef %lnot.ext) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr.i192, ptr %driver_data.i.i, align 4
  %call112 = call i32 @register_netdev(ptr noundef nonnull %call48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %do.body116, label %if.then114

if.then114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %disconnected = getelementptr i8, ptr %call48, i32 2329
  %61 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %disconnected, align 1
  call void @usb_driver_release_interface(ptr noundef nonnull @usbpn_driver, ptr noundef nonnull %call6) #7
  br label %out

do.body116:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usbpn_probe.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usbpn_probe, %if.then124)) #7
          to label %cleanup [label %if.then124], !srcloc !57

if.then124:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usbpn_probe.__UNIQUE_ID_ddebug345, ptr noundef %dev54, ptr noundef nonnull @.str.6) #7
  br label %cleanup

out:                                              ; preds = %if.then114, %if.end100.out_crit_edge
  %err.0 = phi i32 [ %call103, %if.end100.out_crit_edge ], [ %call112, %if.then114 ]
  %driver_data.i.i202 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %62 = ptrtoint ptr %driver_data.i.i202 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %driver_data.i.i202, align 4
  call void @free_netdev(ptr noundef nonnull %call48) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then124, %do.body116, %if.end46.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %land.lhs.true34.cleanup_crit_edge ], [ -12, %if.end46.cleanup_crit_edge ], [ 0, %if.then124 ], [ 0, %do.body116 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %hdr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbpn_disconnect(ptr noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disconnected = getelementptr inbounds %struct.usbpn_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disconnected, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %disconnected, align 1
  %intf2 = getelementptr inbounds %struct.usbpn_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf2, align 4
  %cmp = icmp eq ptr %6, %intf
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %data_intf = getelementptr inbounds %struct.usbpn_dev, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %data_intf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data_intf, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ %6, %if.end.cond.end_crit_edge ]
  tail call void @usb_driver_release_interface(ptr noundef nonnull @usbpn_driver, ptr noundef %cond) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usbpn_setup(ptr noundef %dev) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 27, ptr %addr, align 1
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %1 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @usbpn_ops, ptr %netdev_ops, align 8
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %3 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @phonet_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 820, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 144, ptr %flags, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65541, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %7 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %8 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65541, ptr %max_mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %10 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %addr_len, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 1) #7
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %11 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %tx_queue_len, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %12 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %needs_free_netdev, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbpn_open(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %data_intf = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %data_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %5 to i32
  %usb = getelementptr i8, ptr %dev, i32 2316
  %6 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb, align 4
  %active_setting = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %active_setting to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active_setting, align 4
  %conv1 = zext i8 %9 to i32
  %call2 = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef %conv, i32 noundef %conv1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup11_crit_edge

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call4 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %for.body.if.then8_crit_edge, label %lor.lhs.false

for.body.if.then8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

lor.lhs.false:                                    ; preds = %for.body
  %call6 = tail call fastcc i32 @rx_submit(ptr noundef %add.ptr.i, ptr noundef nonnull %call4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %for.body.if.then8_crit_edge
  tail call void @usb_free_urb(ptr noundef %call4) #7
  %10 = ptrtoint ptr %data_intf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_intf, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber.i, align 2
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %17, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then8
  %i.019.i = phi i32 [ 0, %if.then8 ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usbpn_dev, ptr %add.ptr.i, i32 0, i32 12, i32 %i.019.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %19) #7
  tail call void @usb_free_urb(ptr noundef nonnull %19) #7
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %usbpn_close.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

usbpn_close.exit:                                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %15 to i32
  %21 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb, align 4
  %23 = ptrtoint ptr %active_setting to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %active_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool4.not.i = icmp eq i8 %24, 0
  %lnot.ext.i = zext i1 %tobool4.not.i to i32
  %call5.i = tail call i32 @usb_set_interface(ptr noundef %22, i32 noundef %conv.i, i32 noundef %lnot.ext.i) #7
  br label %cleanup11

if.end10:                                         ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.usbpn_dev, ptr %add.ptr.i, i32 0, i32 12, i32 %i.027
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %26 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %27) #7
  br label %cleanup11

cleanup11:                                        ; preds = %for.end, %usbpn_close.exit, %entry.cleanup11_crit_edge
  %retval.2 = phi i32 [ -12, %usbpn_close.exit ], [ 0, %for.end ], [ %call2, %entry.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbpn_close(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %data_intf = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %data_intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_intf, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usbpn_dev, ptr %add.ptr.i, i32 0, i32 12, i32 %i.019
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_kill_urb(ptr noundef nonnull %9) #7
  tail call void @usb_free_urb(ptr noundef nonnull %9) #7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %5 to i32
  %usb = getelementptr i8, ptr %dev, i32 2316
  %11 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb, align 4
  %active_setting = getelementptr i8, ptr %dev, i32 2328
  %13 = ptrtoint ptr %active_setting to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active_setting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  %lnot.ext = zext i1 %tobool4.not to i32
  %call5 = tail call i32 @usb_set_interface(ptr noundef %12, i32 noundef %conv, i32 noundef %lnot.ext) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usbpn_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 245, i16 %1)
  %cmp.not = icmp eq i16 %1, 245
  br i1 %cmp.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.drop_crit_edge, label %if.end4

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop

if.end4:                                          ; preds = %if.end
  %usb = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  %tx_pipe = getelementptr i8, ptr %dev, i32 2320
  %4 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pipe, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %11 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %12 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %7, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %13 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %9, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %15 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %skb, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 13
  %16 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %transfer_flags, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body9, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_free_urb(ptr noundef nonnull %call2) #7
  br label %drop

do.body9:                                         ; preds = %if.end4
  %tx_lock = getelementptr i8, ptr %dev, i32 2336
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  %tx_queue = getelementptr i8, ptr %dev, i32 2332
  %17 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_queue, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %tx_queue, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %19 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_queue_len, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %20)
  %cmp17.not = icmp ult i32 %inc, %20
  br i1 %cmp17.not, label %do.body9.if.end20_crit_edge, label %if.then19

do.body9.if.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %do.body9.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call13) #7
  br label %cleanup

drop:                                             ; preds = %if.then7, %if.end.drop_crit_edge, %entry.drop_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #7
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc22 = add i32 %24, 1
  store i32 %inc22, ptr %tx_dropped, align 4
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end20
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @usbpn_siocdevprivate(ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %ifr, ptr nocapture noundef readnone %data, i32 noundef %cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %cmd)
  %cond = icmp eq i32 %cmd, 35312
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru = getelementptr inbounds %struct.if_phonet_req, ptr %ifr, i32 0, i32 1
  %0 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 16, ptr %ifr_ifru, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rx_submit(ptr nocapture noundef readonly %pnd, ptr noundef %req, i32 noundef %gfp_flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pnd, align 4
  %or.i.i = or i32 %gfp_flags, 917504
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb = getelementptr inbounds %struct.usbpn_dev, ptr %pnd, i32 0, i32 3
  %2 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb, align 4
  %rx_pipe = getelementptr inbounds %struct.usbpn_dev, ptr %pnd, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pipe, align 4
  %call2 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #7
  %dev1.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 8
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 10
  %7 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 28
  %10 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rx_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 27
  %11 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 13
  %12 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %transfer_flags, align 4
  %call3 = tail call i32 @usb_submit_urb(ptr noundef %req, i32 noundef %gfp_flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body, !prof !58

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_submit.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_submit, %if.then16)) #7
          to label %do.end [label %if.then16], !srcloc !57

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_submit.__UNIQUE_ID_ddebug343, ptr noundef %dev17, ptr noundef nonnull @.str.8, i32 noundef %call3) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  tail call fastcc void @put_page(ptr noundef nonnull %call38.i.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rx_complete(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %2 = load ptr, ptr @mem_map, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 14
  %3 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transfer_buffer, align 4
  %5 = ptrtoint ptr %4 to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %2, i32 %shr
  %status2 = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %7, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body3
    i32 -2, label %entry.sw.bb38_crit_edge
    i32 -104, label %entry.sw.bb38_crit_edge113
    i32 -108, label %entry.sw.bb38_crit_edge114
    i32 -75, label %sw.bb39
    i32 -84, label %sw.bb57
  ]

entry.sw.bb38_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

entry.sw.bb38_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

entry.sw.bb38_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  %rx_lock = getelementptr i8, ptr %1, i32 2380
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rx_lock) #7
  %rx_skb = getelementptr i8, ptr %1, i32 2424
  %9 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %do.body3
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef 12, i32 noundef 2592) #7
  %11 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %rx_skb, align 4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.then.if.end22_crit_edge, label %if.then13, !prof !59

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @page_address(ptr noundef %add.ptr) #7
  %call.i106 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %call14 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %call14, align 1
  %14 = ptrtoint ptr %call.i106 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %call.i106, align 1
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nr_frags, align 2
  %conv17 = zext i8 %18 to i32
  %actual_length = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %actual_length, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %call.i, i32 noundef %conv17, ptr noundef %add.ptr, i32 noundef 1, i32 noundef %20, i32 noundef 4096) #7
  br label %if.end22

if.else:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %end.i107 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %21 = ptrtoint ptr %end.i107 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i107, align 4
  %nr_frags19 = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %nr_frags19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags19, align 2
  %conv20 = zext i8 %24 to i32
  %actual_length21 = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 20
  %25 = ptrtoint ptr %actual_length21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length21, align 4
  tail call void @skb_add_rx_frag(ptr noundef nonnull %10, i32 noundef %conv20, ptr noundef %add.ptr, i32 noundef 0, i32 noundef %26, i32 noundef 4096) #7
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then13, %if.then.if.end22_crit_edge
  %skb.0 = phi ptr [ %10, %if.else ], [ %call.i, %if.then13 ], [ null, %if.then.if.end22_crit_edge ]
  %page.0 = phi ptr [ null, %if.else ], [ null, %if.then13 ], [ %add.ptr, %if.then.if.end22_crit_edge ]
  %actual_length23 = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 20
  %27 = ptrtoint ptr %actual_length23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %28)
  %cmp24 = icmp ult i32 %28, 4096
  br i1 %cmp24, label %if.end29, label %if.end29.thread

if.end29.thread:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call5) #7
  br label %resubmit

if.end29:                                         ; preds = %if.end22
  %29 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %rx_skb, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rx_lock, i32 noundef %call5) #7
  %tobool31.not = icmp eq ptr %skb.0, null
  br i1 %tobool31.not, label %if.end29.resubmit_crit_edge, label %if.then32

if.end29.resubmit_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %resubmit

if.then32:                                        ; preds = %if.end29
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 245, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %37, -1
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %39)
  %cmp.i = icmp ult i32 %sub.i, %39
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !59

do.body4.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #7, !srcloc !60
  unreachable

__skb_pull.exit:                                  ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i109 = getelementptr i8, ptr %32, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr.i109, ptr %data.i, align 4
  %41 = getelementptr inbounds %struct.anon.44, ptr %skb.0, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %1, ptr %41, align 8
  %stats = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %43 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stats, align 8
  %inc = add i32 %44, 1
  store i32 %inc, ptr %stats, align 8
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %47 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_bytes, align 8
  %add35 = add i32 %48, %46
  store i32 %add35, ptr %rx_bytes, align 8
  %call36 = tail call i32 @netif_rx(ptr noundef nonnull %skb.0) #7
  br label %resubmit

sw.bb38:                                          ; preds = %entry.sw.bb38_crit_edge, %entry.sw.bb38_crit_edge113, %entry.sw.bb38_crit_edge114
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %49 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_over_errors, align 4
  %inc41 = add i32 %50, 1
  store i32 %inc41, ptr %rx_over_errors, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rx_complete.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rx_complete, %if.then52)) #7
          to label %sw.epilog [label %if.then52], !srcloc !57

if.then52:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rx_complete.__UNIQUE_ID_ddebug344, ptr noundef %dev53, ptr noundef nonnull @.str.11) #7
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %51 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_crc_errors, align 8
  %inc59 = add i32 %52, 1
  store i32 %inc59, ptr %rx_crc_errors, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %if.then52, %sw.bb39, %sw.bb38, %entry.sw.epilog_crit_edge
  %req.addr.0 = phi ptr [ %req, %entry.sw.epilog_crit_edge ], [ %req, %sw.bb57 ], [ %req, %if.then52 ], [ null, %sw.bb38 ], [ %req, %sw.bb39 ]
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %53 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_errors, align 8
  %inc61 = add i32 %54, 1
  store i32 %inc61, ptr %rx_errors, align 8
  br label %resubmit

resubmit:                                         ; preds = %sw.epilog, %__skb_pull.exit, %if.end29.resubmit_crit_edge, %if.end29.thread
  %page.1 = phi ptr [ %add.ptr, %sw.epilog ], [ %page.0, %__skb_pull.exit ], [ %page.0, %if.end29.resubmit_crit_edge ], [ %page.0, %if.end29.thread ]
  %req.addr.1 = phi ptr [ %req.addr.0, %sw.epilog ], [ %req, %__skb_pull.exit ], [ %req, %if.end29.resubmit_crit_edge ], [ %req, %if.end29.thread ]
  %tobool62.not = icmp eq ptr %page.1, null
  br i1 %tobool62.not, label %resubmit.if.end64_crit_edge, label %if.then63

resubmit.if.end64_crit_edge:                      ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then63:                                        ; preds = %resubmit
  %55 = getelementptr inbounds %struct.page, ptr %page.1, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !58

if.then.i.i:                                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %57, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %page.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %58, %if.end.i.i ]
  %59 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %60 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.i.i.i = icmp eq i32 %61, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %59, ptr noundef nonnull @.str.12) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@rx_complete, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !57

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %59, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end64_crit_edge

folio_put_testzero.exit.i.i.if.end64_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %59) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end64_crit_edge, %resubmit.if.end64_crit_edge
  %tobool65.not = icmp eq ptr %req.addr.1, null
  br i1 %tobool65.not, label %if.end64.if.end68_crit_edge, label %if.then66

if.end64.if.end68_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call fastcc i32 @rx_submit(ptr noundef %add.ptr.i, ptr noundef nonnull %req.addr.1, i32 noundef 2592)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end64.if.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !58

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.12) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #7, !srcloc !63
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !57

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #7
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %4) #7
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_add_rx_frag(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tx_complete(ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = getelementptr inbounds %struct.anon.44, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %status1 = getelementptr inbounds %struct.urb, ptr %req, i32 0, i32 12
  %5 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status1, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %6, label %entry.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 -2, label %entry.sw.bb2_crit_edge
    i32 -104, label %entry.sw.bb2_crit_edge36
    i32 -108, label %entry.sw.bb2_crit_edge37
  ]

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %tx_bytes, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge36, %entry.sw.bb2_crit_edge37
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 16
  %12 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_aborted_errors, align 8
  %inc = add i32 %13, 1
  store i32 %inc, ptr %tx_aborted_errors, align 8
  br label %sw.default

sw.default:                                       ; preds = %sw.bb2, %entry.sw.default_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 5
  %14 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_errors, align 4
  %inc5 = add i32 %15, 1
  store i32 %inc5, ptr %tx_errors, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tx_complete.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tx_complete, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !57

if.then:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tx_complete.__UNIQUE_ID_ddebug342, ptr noundef %dev9, ptr noundef nonnull @.str.14, i32 noundef %6) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 36, i32 1
  %16 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_packets, align 4
  %inc11 = add i32 %17, 1
  store i32 %inc11, ptr %tx_packets, align 4
  %tx_lock = getelementptr i8, ptr %4, i32 2336
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #7
  %tx_queue = getelementptr i8, ptr %4, i32 2332
  %18 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_queue, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %tx_queue, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 103
  %20 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %21) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call16) #7
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #7
  tail call void @usb_free_urb(ptr noundef %req) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_cdc_phonet__346_429_usbpn_driver_init6, !1, !"__initcall__kmod_cdc_phonet__346_429_usbpn_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/cdc-phonet.c", i32 429, i32 1}
!2 = !{ptr @__exitcall_usbpn_driver_exit, !1, !"__exitcall_usbpn_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author347, !4, !"__UNIQUE_ID_author347", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/cdc-phonet.c", i32 431, i32 1}
!5 = !{ptr @__UNIQUE_ID_description348, !6, !"__UNIQUE_ID_description348", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/cdc-phonet.c", i32 432, i32 1}
!7 = !{ptr @__UNIQUE_ID_file349, !8, !"__UNIQUE_ID_file349", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/cdc-phonet.c", i32 433, i32 1}
!9 = !{ptr @__UNIQUE_ID_license350, !8, !"__UNIQUE_ID_license350", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @usbpn_driver, !12, !"usbpn_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/cdc-phonet.c", i32 421, i32 26}
!13 = !{ptr @usbpn_probe.ifname, !14, !"ifname", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/cdc-phonet.c", i32 317, i32 20}
!15 = !{ptr @usbpn_probe.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/cdc-phonet.c", i32 366, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @usbpn_probe.__key.2, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/net/usb/cdc-phonet.c", i32 367, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/cdc-phonet.c", i32 399, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @usbpn_probe.__UNIQUE_ID_ddebug345, !22, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!26 = !{ptr @usbpn_ops, !27, !"usbpn_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/cdc-phonet.c", i32 269, i32 36}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/usb/cdc-phonet.c", i32 131, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rx_submit.__UNIQUE_ID_ddebug343, !29, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/cdc-phonet.c", i32 191, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rx_complete.__UNIQUE_ID_ddebug344, !35, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/cdc-phonet.c", i32 103, i32 3}
!42 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tx_complete.__UNIQUE_ID_ddebug342, !41, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!44 = !{ptr @usbpn_ids, !45, !"usbpn_ids", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/cdc-phonet.c", i32 299, i32 35}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148699749, i64 2148699754, i64 2148699767, i64 2148699811, i64 2148699845, i64 2148699866}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2155275407, i64 2155275895, i64 2155275444, i64 2155275500, i64 2155275534, i64 2155275558, i64 2155275599, i64 2155275620, i64 2155275648, i64 2155275682}
!61 = !{i64 2153119435, i64 2153119918, i64 2153119472, i64 2153119528, i64 2153119562, i64 2153119586, i64 2153119627, i64 2153119648, i64 2153119676, i64 2153119710}
!62 = !{i64 2148306386}
!63 = !{i64 2148221119, i64 2148221151, i64 2148221180, i64 2148221214, i64 2148221245, i64 2148221268}
!64 = !{i64 2148306615}
