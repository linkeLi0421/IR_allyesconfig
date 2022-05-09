; ModuleID = '/llk/IR_all_yes/drivers/net/usb/cx82310_eth.c_pt.bc'
source_filename = "../drivers/net/usb/cx82310_eth.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
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
%struct.cx82310_priv = type { %struct.work_struct, ptr }
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

@__initcall__kmod_cx82310_eth__348_371_cx82310_driver_init6 = internal global ptr @cx82310_driver_init, section ".initcall6.init", align 4
@cx82310_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cx82310_driver_exit = internal global ptr @cx82310_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author349 = internal constant [31 x i8] c"cx82310_eth.author=Ondrej Zary\00", section ".modinfo", align 1
@__UNIQUE_ID_description350 = internal constant [79 x i8] c"cx82310_eth.description=Conexant CX82310-based ADSL router USB ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [45 x i8] c"cx82310_eth.file=drivers/net/usb/cx82310_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [24 x i8] c"cx82310_eth.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx82310_eth\00", [20 x i8] zeroinitializer }, align 32
@products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 115, i16 1394, i16 -13567, i16 0, i16 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @cx82310_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cx82310_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 32, ptr @cx82310_bind, ptr @cx82310_unbind, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx82310_rx_fixup, ptr @cx82310_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Conexant CX82310 USB ethernet\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"USB NET CARD\00", [19 x i8] zeroinitializer }, align 32
@cx82310_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 154, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ignoring: probably an ADSL modem\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx82310_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/usb/cx82310_eth.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx82310_bind._entry_ptr = internal global ptr @cx82310_bind._entry, section ".printk_index", align 4
@cx82310_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&priv->reenable_work)\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware not ready in time\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to read MAC address: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"send command %#x: error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reply receive error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no reply to command %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"got reply to command %#x, expected: %#x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"command %#x failed: %#x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\00", [30 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to enable ethernet mode: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"router was rebooted, re-enabling ethernet mode\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX packet too long: %d B\0A\00", [38 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"cx82310_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 361, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 371, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"products\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 352, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"cx82310_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 334, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 335, i32 17 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 153, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 154, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 182, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 195, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 208, i32 24 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 74, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 95, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 100, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 106, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 122, i32 54 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 125, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 283, i32 26 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [33 x i8] c"../drivers/net/usb/cx82310_eth.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 286, i32 25 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_cx82310_driver_exit, ptr @__initcall__kmod_cx82310_eth__348_371_cx82310_driver_init6, ptr @cx82310_bind._entry, ptr @cx82310_bind._entry_ptr, ptr @cx82310_driver_exit, ptr @cx82310_driver, ptr @.str, ptr @products, ptr @cx82310_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cx82310_bind.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx82310_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx82310_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx82310_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx82310_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx82310_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cx82310_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx82310_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @cx82310_driver) #7
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
define internal i32 @cx82310_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %actual_len.i = alloca i32, align 4
  %buf = alloca [15 x i8], align 1
  %link = alloca [3 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 15)
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %link) #7
  %3 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %link, align 1, !annotation !63
  %4 = getelementptr inbounds [3 x i8], ptr %link, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !63
  %6 = getelementptr inbounds [3 x i8], ptr %link, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !63
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %iProduct = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 16, i32 11
  %8 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %9 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iProduct, align 1
  %conv = zext i8 %10 to i32
  %call = call i32 @usb_string(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %buf, i32 noundef 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %buf, ptr noundef nonnull dereferenceable(13) @.str.2, i32 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %11 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %hard_header_len, align 2
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %14 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1516, ptr %hard_mtu, align 4
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %15 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %rx_urb_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 1516) #12
  %17 = ptrtoint ptr %call7.i to i32
  %arrayidx = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %call7.i, null
  br i1 %tobool14.not, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 48) #12
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end16.err_partial_crit_edge, label %if.end20

if.end16.err_partial_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_partial

if.end20:                                         ; preds = %if.end16
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #7
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @cx82310_bind.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry26 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry26, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cx82310_reenable_work, ptr %func, align 4
  %dev30 = getelementptr inbounds %struct.cx82310_priv, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev30, align 4
  br label %while.body

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %if.end20
  %dec118 = phi i32 [ 49, %if.end20 ], [ %dec, %if.end46.while.body_crit_edge ]
  %call33 = call fastcc i32 @cx82310_cmd(ptr noundef %dev, i32 noundef 146, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, ptr noundef nonnull %link, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true35, label %while.body.if.end46_crit_edge

while.body.if.end46_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true35:                                  ; preds = %while.body
  %26 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %link, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp38 = icmp eq i8 %27, 1
  br i1 %cmp38, label %land.lhs.true40, label %land.lhs.true35.if.end46_crit_edge

land.lhs.true35.if.end46_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp43 = icmp eq i8 %29, 1
  br i1 %cmp43, label %if.end50, label %land.lhs.true40.if.end46_crit_edge

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true40.if.end46_crit_edge, %land.lhs.true35.if.end46_crit_edge, %while.body.if.end46_crit_edge
  call void @msleep(i32 noundef 500) #7
  %dec = add nsw i32 %dec118, -1
  %tobool31.not = icmp eq i32 %dec, 0
  br i1 %tobool31.not, label %if.then48.critedge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then48.critedge:                               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.9) #11
  br label %err

if.end50:                                         ; preds = %land.lhs.true40
  %call.i = call fastcc i32 @cx82310_cmd(ptr noundef %dev, i32 noundef 153, i1 noundef zeroext true, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end54, label %cx82310_enable_ethernet.exit

cx82310_enable_ethernet.exit:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.17, i32 noundef %call.i) #11
  br label %err

if.end54:                                         ; preds = %if.end50
  %call56 = call fastcc i32 @cx82310_cmd(ptr noundef %dev, i32 noundef 145, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  %34 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net, align 4
  br i1 %tobool57.not, label %if.end60, label %if.then58

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %35, ptr noundef nonnull @.str.10, i32 noundef %call56) #11
  br label %err

if.end60:                                         ; preds = %if.end54
  call void @dev_addr_mod(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len.i) #7
  %36 = ptrtoint ptr %actual_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %actual_len.i, align 4, !annotation !63
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not.i111 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i111, label %cx82310_cmd.exit.thread, label %if.end.i

cx82310_cmd.exit.thread:                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  br label %err

if.end.i:                                         ; preds = %if.end60
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -124, ptr %call7.i.i.i, align 8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %38, align 8
  %shl.i.i = shl i32 %42, 8
  %or.i = or i32 %shl.i.i, -1073709056
  %call7.i112 = call i32 @usb_bulk_msg(ptr noundef %38, i32 noundef %or.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 64, ptr noundef nonnull %actual_len.i, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i112)
  %cmp8.i = icmp slt i32 %call7.i112, 0
  br i1 %cmp8.i, label %cx82310_cmd.exit.thread116, label %cx82310_cmd.exit

cx82310_cmd.exit.thread116:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.11, i32 noundef 132, i32 noundef %call7.i112) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  br label %err

cx82310_cmd.exit:                                 ; preds = %if.end.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i112)
  %tobool64.not = icmp eq i32 %call7.i112, 0
  br i1 %tobool64.not, label %cx82310_cmd.exit.cleanup_crit_edge, label %cx82310_cmd.exit.err_crit_edge

cx82310_cmd.exit.err_crit_edge:                   ; preds = %cx82310_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

cx82310_cmd.exit.cleanup_crit_edge:               ; preds = %cx82310_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %cx82310_cmd.exit.err_crit_edge, %cx82310_cmd.exit.thread116, %cx82310_cmd.exit.thread, %if.then58, %cx82310_enable_ethernet.exit, %if.then48.critedge
  %ret.0 = phi i32 [ %call.i, %cx82310_enable_ethernet.exit ], [ %call56, %if.then58 ], [ %call7.i112, %cx82310_cmd.exit.err_crit_edge ], [ -110, %if.then48.critedge ], [ -12, %cx82310_cmd.exit.thread ], [ %call7.i112, %cx82310_cmd.exit.thread116 ]
  %45 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_priv, align 4
  call void @kfree(ptr noundef %46) #7
  br label %err_partial

err_partial:                                      ; preds = %err, %if.end16.err_partial_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err ], [ -12, %if.end16.err_partial_crit_edge ]
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %49 = inttoptr i32 %48 to ptr
  call void @kfree(ptr noundef %49) #7
  br label %cleanup

cleanup:                                          ; preds = %err_partial, %cx82310_cmd.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.1, %err_partial ], [ %call6, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %cx82310_cmd.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %link) #7
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx82310_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %arrayidx = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = inttoptr i32 %3 to ptr
  tail call void @kfree(ptr noundef %4) #7
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %1) #7
  %5 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv, align 4
  tail call void @kfree(ptr noundef %6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx82310_rx_fixup(ptr noundef %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %data = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 21
  %arrayidx = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %if.then

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 4
  %add = add i32 %5, %3
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add) #7
  %data8 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data8, align 4
  %arrayidx10 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %10 = inttoptr i32 %9 to ptr
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %13 = call ptr @memcpy(ptr %7, ptr %10, i32 %12)
  %14 = load ptr, ptr %data8, align 4
  %15 = load i32, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %15
  %data16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data16, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = call ptr @memcpy(ptr %add.ptr, ptr %17, i32 %19)
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add21 = add i32 %22, 1
  %and = and i32 %add21, -2
  %call22 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %and) #7
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx, align 4
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp ult i32 %25, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  %len29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp30151 = icmp ugt i32 %27, 1
  br i1 %cmp30151, label %while.body.lr.ph, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end28
  %data31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end77.while.body_crit_edge, %while.body.lr.ph
  %28 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data31, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv = zext i8 %31 to i32
  %arrayidx34 = getelementptr i8, ptr %29, i32 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv35, 8
  %or = or i32 %shl, %conv
  %call36 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #7
  %34 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %35)
  %cmp38 = icmp eq i32 %or, %35
  br i1 %cmp38, label %while.body.if.then44_crit_edge, label %lor.lhs.false

while.body.if.then44_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

lor.lhs.false:                                    ; preds = %while.body
  %add40 = add nuw nsw i32 %or, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %35)
  %cmp42 = icmp eq i32 %add40, %35
  br i1 %cmp42, label %lor.lhs.false.if.then44_crit_edge, label %if.end45

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %while.body.if.then44_crit_edge
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %or) #7
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or)
  %cmp46 = icmp eq i32 %or, 65535
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %37, ptr noundef nonnull @.str.18) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %38 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %1) #7
  br label %if.end55

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1514, i32 %or)
  %cmp50 = icmp ugt i32 %or, 1514
  br i1 %cmp50, label %if.then52, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %40, ptr noundef nonnull @.str.19, i32 noundef %or) #11
  br label %cleanup

if.end55:                                         ; preds = %if.else.if.end55_crit_edge, %if.then48
  %41 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %42)
  %cmp57 = icmp ugt i32 %or, %42
  br i1 %cmp57, label %if.then59, label %if.end73

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %data, align 4
  %44 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len29, align 4
  %sub = sub i32 %or, %45
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %arrayidx, align 4
  %arrayidx67 = getelementptr %struct.usbnet, ptr %dev, i32 0, i32 21, i32 2
  %47 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx67, align 4
  %49 = inttoptr i32 %48 to ptr
  %50 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data31, align 4
  %52 = call ptr @memcpy(ptr %49, ptr %51, i32 %42)
  %53 = load i32, ptr %len29, align 4
  %call72 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %53) #7
  br label %cleanup

if.end73:                                         ; preds = %if.end55
  %call.i143 = tail call ptr @__alloc_skb(i32 noundef %or, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #7
  %tobool75.not = icmp eq ptr %call.i143, null
  br i1 %tobool75.not, label %if.end73.cleanup_crit_edge, label %if.end77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end73
  %call78 = tail call ptr @skb_put(ptr noundef nonnull %call.i143, i32 noundef %or) #7
  %data79 = getelementptr inbounds %struct.sk_buff, ptr %call.i143, i32 0, i32 19
  %54 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data79, align 4
  %56 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data31, align 4
  %58 = call ptr @memcpy(ptr %55, ptr %57, i32 %or)
  tail call void @usbnet_skb_return(ptr noundef %dev, ptr noundef nonnull %call.i143) #7
  %and82 = and i32 %add40, 131070
  %call83 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %and82) #7
  %59 = ptrtoint ptr %len29 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len29, align 4
  %cmp30 = icmp ugt i32 %60, 1
  br i1 %cmp30, label %if.end77.while.body_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77.while.body_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end77.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.then59, %if.then52, %if.then44, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then52 ], [ 0, %if.then.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then59 ], [ 1, %if.then44 ], [ 1, %if.end28.cleanup_crit_edge ], [ 0, %if.end73.cleanup_crit_edge ], [ 1, %if.end77.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cx82310_tx_fixup(ptr nocapture noundef readnone %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 2
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %entry
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 2
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 129, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i = and i32 %6, 65535
  %shr.i.i = ashr i32 %6, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow_head.exit

if.end.i2.i.if.end_crit_edge:                     ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %if.then

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %if.end.i2.i.if.end_crit_edge, %skb_header_cloned.exit.thread.i.if.end_crit_edge
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #7
  %conv = trunc i32 %1 to i8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %16, align 1
  %18 = lshr i32 %1, 8
  %conv3 = trunc i32 %18 to i8
  %19 = load ptr, ptr %data, align 4
  %arrayidx5 = getelementptr i8, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3, ptr %arrayidx5, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %skb, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx82310_reenable_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.cx82310_priv, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call fastcc i32 @cx82310_cmd(ptr noundef %1, i32 noundef 153, i1 noundef zeroext true, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.cx82310_enable_ethernet.exit_crit_edge, label %if.then.i

entry.cx82310_enable_ethernet.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx82310_enable_ethernet.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net.i = getelementptr inbounds %struct.usbnet, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %call.i) #11
  br label %cx82310_enable_ethernet.exit

cx82310_enable_ethernet.exit:                     ; preds = %if.then.i, %entry.cx82310_enable_ethernet.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx82310_cmd(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i1 noundef zeroext %reply, ptr noundef readonly %wdata, i32 noundef %wlen, ptr noundef writeonly %rdata, i32 noundef %rlen) unnamed_addr #2 align 64 {
entry:
  %actual_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_len) #7
  %0 = ptrtoint ptr %actual_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %actual_len, align 4, !annotation !63
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 64) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %cmd to i8
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %call7.i.i, align 8
  %tobool2.not = icmp eq ptr %wdata, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 4
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %wdata, i32 %wlen)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %2, align 8
  %shl.i = shl i32 %7, 8
  %or = or i32 %shl.i, -1073709056
  %call7 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %cmd)
  %cmp11.not = icmp eq i32 %cmd, 146
  br i1 %cmp11.not, label %if.then10.end_crit_edge, label %if.then13

if.then10.end_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %cmd, i32 noundef %call7) #11
  br label %end

if.end15:                                         ; preds = %if.end5
  br i1 %reply, label %for.body.preheader, label %if.end15.end_crit_edge

if.end15.end_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

for.body.preheader:                               ; preds = %if.end15
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %shl.i112 = shl i32 %11, 8
  %or22 = or i32 %shl.i112, -1073708928
  %call23 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or22, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %for.body.preheader.if.then26_crit_edge, label %if.end32

for.body.preheader.if.then26_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

for.cond:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 8
  %shl.i112.1 = shl i32 %13, 8
  %or22.1 = or i32 %shl.i112.1, -1073708928
  %call23.1 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or22.1, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1)
  %cmp24.1 = icmp slt i32 %call23.1, 0
  br i1 %cmp24.1, label %for.cond.if.then26_crit_edge, label %if.end32.1

for.cond.if.then26_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end32.1:                                       ; preds = %for.cond
  %14 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp33.1 = icmp sgt i32 %15, 0
  br i1 %cmp33.1, label %if.end32.1.if.end41_crit_edge, label %for.cond.1

if.end32.1.if.end41_crit_edge:                    ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.cond.1:                                       ; preds = %if.end32.1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 8
  %shl.i112.2 = shl i32 %17, 8
  %or22.2 = or i32 %shl.i112.2, -1073708928
  %call23.2 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or22.2, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.2)
  %cmp24.2 = icmp slt i32 %call23.2, 0
  br i1 %cmp24.2, label %for.cond.1.if.then26_crit_edge, label %if.end32.2

for.cond.1.if.then26_crit_edge:                   ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end32.2:                                       ; preds = %for.cond.1
  %18 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp33.2 = icmp sgt i32 %19, 0
  br i1 %cmp33.2, label %if.end32.2.if.end41_crit_edge, label %for.cond.2

if.end32.2.if.end41_crit_edge:                    ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.cond.2:                                       ; preds = %if.end32.2
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 8
  %shl.i112.3 = shl i32 %21, 8
  %or22.3 = or i32 %shl.i112.3, -1073708928
  %call23.3 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or22.3, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.3)
  %cmp24.3 = icmp slt i32 %call23.3, 0
  br i1 %cmp24.3, label %for.cond.2.if.then26_crit_edge, label %if.end32.3

for.cond.2.if.then26_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end32.3:                                       ; preds = %for.cond.2
  %22 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.3 = icmp sgt i32 %23, 0
  br i1 %cmp33.3, label %if.end32.3.if.end41_crit_edge, label %for.cond.3

if.end32.3.if.end41_crit_edge:                    ; preds = %if.end32.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.cond.3:                                       ; preds = %if.end32.3
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %2, align 8
  %shl.i112.4 = shl i32 %25, 8
  %or22.4 = or i32 %shl.i112.4, -1073708928
  %call23.4 = call i32 @usb_bulk_msg(ptr noundef %2, i32 noundef %or22.4, ptr noundef nonnull %call7.i.i, i32 noundef 64, ptr noundef nonnull %actual_len, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.4)
  %cmp24.4 = icmp slt i32 %call23.4, 0
  br i1 %cmp24.4, label %for.cond.3.if.then26_crit_edge, label %if.end32.4

for.cond.3.if.then26_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.end32.4:                                       ; preds = %for.cond.3
  %26 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp33.4 = icmp sgt i32 %27, 0
  br i1 %cmp33.4, label %if.end32.4.if.end41_crit_edge, label %for.cond.4

if.end32.4.if.end41_crit_edge:                    ; preds = %if.end32.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.cond.4:                                       ; preds = %if.end32.4
  %28 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp37 = icmp eq i32 %.pr, 0
  br i1 %cmp37, label %if.then39, label %for.cond.4.if.end41_crit_edge

for.cond.4.if.end41_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then26:                                        ; preds = %for.cond.3.if.then26_crit_edge, %for.cond.2.if.then26_crit_edge, %for.cond.1.if.then26_crit_edge, %for.cond.if.then26_crit_edge, %for.body.preheader.if.then26_crit_edge
  %call23.lcssa = phi i32 [ %call23, %for.body.preheader.if.then26_crit_edge ], [ %call23.1, %for.cond.if.then26_crit_edge ], [ %call23.2, %for.cond.1.if.then26_crit_edge ], [ %call23.3, %for.cond.2.if.then26_crit_edge ], [ %call23.4, %for.cond.3.if.then26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %cmd)
  %cmp27.not = icmp eq i32 %cmd, 146
  br i1 %cmp27.not, label %if.then26.end_crit_edge, label %if.then29

if.then26.end_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %net30 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %net30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net30, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.12, i32 noundef %call23.lcssa) #11
  br label %end

if.end32:                                         ; preds = %for.body.preheader
  %31 = ptrtoint ptr %actual_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %actual_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp33 = icmp sgt i32 %32, 0
  br i1 %cmp33, label %if.end32.if.end41_crit_edge, label %for.cond

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %net40 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %33 = ptrtoint ptr %net40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net40, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.13, i32 noundef %cmd) #11
  br label %end

if.end41:                                         ; preds = %if.end32.if.end41_crit_edge, %for.cond.4.if.end41_crit_edge, %if.end32.4.if.end41_crit_edge, %if.end32.3.if.end41_crit_edge, %if.end32.2.if.end41_crit_edge, %if.end32.1.if.end41_crit_edge
  %call23123 = phi i32 [ %call23.4, %for.cond.4.if.end41_crit_edge ], [ %call23, %if.end32.if.end41_crit_edge ], [ %call23.1, %if.end32.1.if.end41_crit_edge ], [ %call23.2, %if.end32.2.if.end41_crit_edge ], [ %call23.3, %if.end32.3.if.end41_crit_edge ], [ %call23.4, %if.end32.4.if.end41_crit_edge ]
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call7.i.i, align 8
  %conv43 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv43, i32 %cmd)
  %cmp44.not = icmp eq i32 %conv43, %cmd
  br i1 %cmp44.not, label %if.end50, label %if.then46

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %net47 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %37 = ptrtoint ptr %net47 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net47, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %38, ptr noundef nonnull @.str.14, i32 noundef %conv43, i32 noundef %cmd) #11
  br label %end

if.end50:                                         ; preds = %if.end41
  %arrayidx51 = getelementptr i8, ptr %call7.i.i, i32 1
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp53.not = icmp eq i8 %40, 1
  br i1 %cmp53.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %conv52 = zext i8 %40 to i32
  %net56 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %41 = ptrtoint ptr %net56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net56, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef %cmd, i32 noundef %conv52) #11
  br label %end

if.end59:                                         ; preds = %if.end50
  %tobool60.not = icmp eq ptr %rdata, null
  br i1 %tobool60.not, label %if.end59.end_crit_edge, label %if.then61

if.end59.end_crit_edge:                           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr62 = getelementptr i8, ptr %call7.i.i, i32 4
  %43 = call ptr @memcpy(ptr %rdata, ptr %add.ptr62, i32 %rlen)
  br label %end

end:                                              ; preds = %if.then61, %if.end59.end_crit_edge, %if.then55, %if.then46, %if.then39, %if.then29, %if.then26.end_crit_edge, %if.end15.end_crit_edge, %if.then13, %if.then10.end_crit_edge
  %ret.2 = phi i32 [ %call7, %if.then13 ], [ %call7, %if.then10.end_crit_edge ], [ %call23.lcssa, %if.then29 ], [ %call23.lcssa, %if.then26.end_crit_edge ], [ -5, %if.then39 ], [ -5, %if.then46 ], [ -5, %if.then55 ], [ %call23123, %if.then61 ], [ %call23123, %if.end59.end_crit_edge ], [ %call7, %if.end15.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_cx82310_eth__348_371_cx82310_driver_init6, !1, !"__initcall__kmod_cx82310_eth__348_371_cx82310_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/cx82310_eth.c", i32 371, i32 1}
!2 = !{ptr @__exitcall_cx82310_driver_exit, !1, !"__exitcall_cx82310_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author349, !4, !"__UNIQUE_ID_author349", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/cx82310_eth.c", i32 373, i32 1}
!5 = !{ptr @__UNIQUE_ID_description350, !6, !"__UNIQUE_ID_description350", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/cx82310_eth.c", i32 374, i32 1}
!7 = !{ptr @__UNIQUE_ID_file351, !8, !"__UNIQUE_ID_file351", i1 false, i1 false}
!8 = !{!"../drivers/net/usb/cx82310_eth.c", i32 375, i32 1}
!9 = !{ptr @__UNIQUE_ID_license352, !8, !"__UNIQUE_ID_license352", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cx82310_driver, !12, !"cx82310_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/cx82310_eth.c", i32 361, i32 26}
!13 = !{ptr @products, !14, !"products", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/cx82310_eth.c", i32 352, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/cx82310_eth.c", i32 335, i32 17}
!17 = !{ptr @cx82310_info, !18, !"cx82310_info", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/cx82310_eth.c", i32 334, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/usb/cx82310_eth.c", i32 153, i32 21}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/usb/cx82310_eth.c", i32 154, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cx82310_bind._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @cx82310_bind._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cx82310_bind.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/usb/cx82310_eth.c", i32 182, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/usb/cx82310_eth.c", i32 195, i32 24}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/usb/cx82310_eth.c", i32 208, i32 24}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/usb/cx82310_eth.c", i32 74, i32 25}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/usb/cx82310_eth.c", i32 87, i32 27}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/usb/cx82310_eth.c", i32 95, i32 25}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/usb/cx82310_eth.c", i32 100, i32 25}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/usb/cx82310_eth.c", i32 106, i32 25}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/usb/cx82310_eth.c", i32 122, i32 54}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/usb/cx82310_eth.c", i32 125, i32 24}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/usb/cx82310_eth.c", i32 283, i32 26}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/usb/cx82310_eth.c", i32 286, i32 25}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
