; ModuleID = '/llk/IR_all_yes/drivers/net/usb/ch9200.c_pt.bc'
source_filename = "../drivers/net/usb/ch9200.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_ch9200__350_423_ch9200_driver_init6 = internal global ptr @ch9200_driver_init, section ".initcall6.init", align 4
@ch9200_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr null, ptr null, ptr null, ptr @ch9200_products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ch9200_driver_exit = internal global ptr @ch9200_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description351 = internal constant [53 x i8] c"ch9200.description=QinHeng CH9200 USB Network device\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [35 x i8] c"ch9200.file=drivers/net/usb/ch9200\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [19 x i8] c"ch9200.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ch9200\00", [25 x i8] zeroinitializer }, align 32
@ch9200_products = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 6790, i16 -8046, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @ch9200_info to i32) }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ch9200_info = internal constant { %struct.driver_info, [52 x i8] } { %struct.driver_info { ptr @.str.1, i32 32, ptr @ch9200_bind, ptr null, ptr @ch9200_link_reset, ptr null, ptr null, ptr null, ptr @ch9200_status, ptr @ch9200_link_reset, ptr @ch9200_rx_fixup, ptr @ch9200_tx_fixup, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CH9200 USB to Network Adaptor\00", [34 x i8] zeroinitializer }, align 32
@ch9200_mdio_read.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ch9200_mdio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/usb/ch9200.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s phy_id:%02x loc:%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@control_read.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"control_read\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() index=0x%02x size=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ch9200_mdio_write.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ch9200_mdio_write\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() phy_id=%02x loc:%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@control_write.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.6, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"control_write\00", [18 x i8] zeroinitializer }, align 32
@get_mac_address.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_mac_address\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s:\0A\09usbnet VID:%0x PID:%0x\0A\00", [35 x i8] zeroinitializer }, align 32
@ch9200_link_reset.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ch9200_link_reset\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() speed:%d duplex:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ch9200_rx_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 294, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected tiny rx frame\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ch9200_rx_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch9200_rx_fixup._entry_ptr = internal global ptr @ch9200_rx_fixup._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"ch9200_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 414, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 423, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"ch9200_products\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 404, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"ch9200_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 393, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 394, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 182, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 114, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 200, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 152, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 310, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 220, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [28 x i8] c"../drivers/net/usb/ch9200.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 294, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_description351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_ch9200_driver_exit, ptr @__initcall__kmod_ch9200__350_423_ch9200_driver_init6, ptr @ch9200_driver_exit, ptr @ch9200_rx_fixup._entry, ptr @ch9200_rx_fixup._entry_ptr, ptr @ch9200_driver, ptr @.str, ptr @ch9200_products, ptr @ch9200_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9200_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9200_products to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9200_info to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch9200_rx_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch9200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ch9200_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch9200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @ch9200_driver) #7
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
define internal i32 @ch9200_bind(ptr noundef %dev, ptr noundef %intf) #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %1 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call i32 @usbnet_get_endpoints(ptr noundef %dev, ptr noundef %intf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net, align 4
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %dev2 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 5
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev2, align 4
  %mdio_read = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 6
  %5 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ch9200_mdio_read, ptr %mdio_read, align 4
  %mdio_write = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 7
  %6 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ch9200_mdio_write, ptr %mdio_write, align 4
  %reg_num_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 3
  %7 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 31, ptr %reg_num_mask, align 4
  %phy_id_mask = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %phy_id_mask, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %12 to i32
  %add = add i32 %10, %conv
  %hard_mtu = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %hard_mtu to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %hard_mtu, align 4
  %rx_urb_size = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 24
  %14 = ptrtoint ptr %rx_urb_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1552, ptr %rx_urb_size, align 4
  %call10 = tail call i32 @mii_nway_restart(ptr noundef %mii) #7
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %data, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 15, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i)) #7
          to label %do.end10.i [label %if.then5.i], !srcloc !57

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 88, i32 noundef 2) #7
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i, %if.end
  %call14.i = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end10.i.control_write.exit_crit_edge, label %if.end18.i

do.end10.i.control_write.exit_crit_edge:          ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit

if.end18.i:                                       ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %shl.i.i = shl i32 %22, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call21.i = call i32 @usb_control_msg(ptr noundef %20, i32 noundef %or.i, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 88, ptr noundef nonnull %call14.i, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i) #7
  br label %control_write.exit

control_write.exit:                               ; preds = %if.end18.i, %do.end10.i.control_write.exit_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -96, ptr %data, align 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -112, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i61)) #7
          to label %do.end10.i62 [label %if.then5.i61], !srcloc !57

if.then5.i61:                                     ; preds = %control_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 90, i32 noundef 2) #7
  br label %do.end10.i62

do.end10.i62:                                     ; preds = %if.then5.i61, %control_write.exit
  %call14.i63 = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i64 = icmp eq ptr %call14.i63, null
  br i1 %tobool15.not.i64, label %do.end10.i62.control_write.exit69_crit_edge, label %if.end18.i68

do.end10.i62.control_write.exit69_crit_edge:      ; preds = %do.end10.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit69

if.end18.i68:                                     ; preds = %do.end10.i62
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i65 = shl i32 %30, 8
  %or.i66 = or i32 %shl.i.i65, -2147483648
  %call21.i67 = call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i66, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 90, ptr noundef nonnull %call14.i63, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i63) #7
  br label %control_write.exit69

control_write.exit69:                             ; preds = %if.end18.i68, %do.end10.i62.control_write.exit69_crit_edge
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 48, ptr %data, align 1
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i71)) #7
          to label %do.end10.i72 [label %if.then5.i71], !srcloc !57

if.then5.i71:                                     ; preds = %control_write.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 92, i32 noundef 2) #7
  br label %do.end10.i72

do.end10.i72:                                     ; preds = %if.then5.i71, %control_write.exit69
  %call14.i73 = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i74 = icmp eq ptr %call14.i73, null
  br i1 %tobool15.not.i74, label %do.end10.i72.control_write.exit79_crit_edge, label %if.end18.i78

do.end10.i72.control_write.exit79_crit_edge:      ; preds = %do.end10.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit79

if.end18.i78:                                     ; preds = %do.end10.i72
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i75 = shl i32 %38, 8
  %or.i76 = or i32 %shl.i.i75, -2147483648
  %call21.i77 = call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i76, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 92, ptr noundef nonnull %call14.i73, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i73) #7
  br label %control_write.exit79

control_write.exit79:                             ; preds = %if.end18.i78, %do.end10.i72.control_write.exit79_crit_edge
  %39 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 23, ptr %data, align 1
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -40, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i81)) #7
          to label %do.end10.i82 [label %if.then5.i81], !srcloc !57

if.then5.i81:                                     ; preds = %control_write.exit79
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %42, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 94, i32 noundef 2) #7
  br label %do.end10.i82

do.end10.i82:                                     ; preds = %if.then5.i81, %control_write.exit79
  %call14.i83 = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i84 = icmp eq ptr %call14.i83, null
  br i1 %tobool15.not.i84, label %do.end10.i82.control_write.exit89_crit_edge, label %if.end18.i88

do.end10.i82.control_write.exit89_crit_edge:      ; preds = %do.end10.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit89

if.end18.i88:                                     ; preds = %do.end10.i82
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 8
  %shl.i.i85 = shl i32 %46, 8
  %or.i86 = or i32 %shl.i.i85, -2147483648
  %call21.i87 = call i32 @usb_control_msg(ptr noundef %44, i32 noundef %or.i86, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 94, ptr noundef nonnull %call14.i83, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i83) #7
  br label %control_write.exit89

control_write.exit89:                             ; preds = %if.end18.i88, %do.end10.i82.control_write.exit89_crit_edge
  %47 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %data, align 1
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i91)) #7
          to label %do.end10.i92 [label %if.then5.i91], !srcloc !57

if.then5.i91:                                     ; preds = %control_write.exit89
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 254, i32 noundef 2) #7
  br label %do.end10.i92

do.end10.i92:                                     ; preds = %if.then5.i91, %control_write.exit89
  %call14.i93 = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i94 = icmp eq ptr %call14.i93, null
  br i1 %tobool15.not.i94, label %do.end10.i92.control_write.exit99_crit_edge, label %if.end18.i98

do.end10.i92.control_write.exit99_crit_edge:      ; preds = %do.end10.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit99

if.end18.i98:                                     ; preds = %do.end10.i92
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i.i95 = shl i32 %54, 8
  %or.i96 = or i32 %shl.i.i95, -2147483648
  %call21.i97 = call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i96, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 254, ptr noundef nonnull %call14.i93, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i93) #7
  br label %control_write.exit99

control_write.exit99:                             ; preds = %if.end18.i98, %do.end10.i92.control_write.exit99_crit_edge
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 95, ptr %data, align 1
  %56 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 13, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_bind, %if.then5.i101)) #7
          to label %do.end10.i102 [label %if.then5.i101], !srcloc !57

if.then5.i101:                                    ; preds = %control_write.exit99
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef 64, i32 noundef 2) #7
  br label %do.end10.i102

do.end10.i102:                                    ; preds = %if.then5.i101, %control_write.exit99
  %call14.i103 = call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not.i104 = icmp eq ptr %call14.i103, null
  br i1 %tobool15.not.i104, label %do.end10.i102.control_write.exit109_crit_edge, label %if.end18.i108

do.end10.i102.control_write.exit109_crit_edge:    ; preds = %do.end10.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %control_write.exit109

if.end18.i108:                                    ; preds = %do.end10.i102
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i105 = shl i32 %62, 8
  %or.i106 = or i32 %shl.i.i105, -2147483648
  %call21.i107 = call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i106, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef nonnull %call14.i103, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @kfree(ptr noundef nonnull %call14.i103) #7
  br label %control_write.exit109

control_write.exit109:                            ; preds = %if.end18.i108, %do.end10.i102.control_write.exit109_crit_edge
  %call34 = call fastcc i32 @get_mac_address(ptr noundef %dev, ptr noundef nonnull %addr)
  %63 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net, align 4
  call void @dev_addr_mod(ptr noundef %64, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  br label %cleanup

cleanup:                                          ; preds = %control_write.exit109, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %control_write.exit109 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch9200_link_reset(ptr noundef %dev) #2 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %ecmd) #7
  %0 = call ptr @memset(ptr %ecmd, i32 255, i32 44)
  %mii = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 25
  %call = tail call i32 @mii_check_media(ptr noundef %mii, i32 noundef 1, i32 noundef 1) #7
  call void @mii_ethtool_gset(ptr noundef %mii, ptr noundef nonnull %ecmd) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch9200_link_reset.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_link_reset, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net, align 4
  %speed = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %speed, align 4
  %conv = zext i16 %4 to i32
  %duplex = getelementptr inbounds %struct.ethtool_cmd, ptr %ecmd, i32 0, i32 4
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %duplex, align 2
  %conv6 = zext i8 %6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ch9200_link_reset.__UNIQUE_ID_ddebug348, ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %conv, i32 noundef %conv6) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %ecmd) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch9200_status(ptr noundef %dev, ptr nocapture noundef readonly %urb) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %net4 = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %7 = ptrtoint ptr %net4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net4, align 4
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_on(ptr noundef %8) #7
  tail call void @usbnet_defer_kevent(ptr noundef %dev, i32 noundef 4) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_carrier_off(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch9200_rx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp = icmp ult i32 %1, 64
  br i1 %cmp, label %do.end, label %if.end, !prof !58

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %sub = add i32 %1, -16
  %arrayidx = getelementptr i8, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %sub7 = add i32 %1, -15
  %arrayidx8 = getelementptr i8, ptr %5, i32 %sub7
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %or = or i32 %shl, %conv
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ch9200_tx_fixup(ptr nocapture noundef readonly %dev, ptr noundef %skb, i32 noundef %flags) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 64
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 64
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end_crit_edge

skb_header_cloned.exit.thread.i.if.end_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 191, %sub.ptr.sub.i.i12.i
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 -64
  store ptr %add.ptr.i, ptr %data.i, align 4
  %17 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1, align 4
  %add.i = add i32 %18, 64
  store i32 %add.i, ptr %len1, align 4
  %maxpacket = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 16
  %19 = ptrtoint ptr %maxpacket to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %maxpacket, align 4
  %rem = urem i32 %add.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %inc = zext i1 %cmp to i32
  %spec.select = add i32 %1, %inc
  %conv = trunc i32 %spec.select to i8
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %add.ptr.i, align 1
  %22 = lshr i32 %spec.select, 8
  %conv6 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %arrayidx8 = getelementptr i8, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv6, ptr %arrayidx8, align 1
  %26 = load ptr, ptr %data.i, align 4
  %arrayidx10 = getelementptr i8, ptr %26, i32 2
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx10, align 1
  %28 = load ptr, ptr %data.i, align 4
  %arrayidx12 = getelementptr i8, ptr %28, i32 3
  %29 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -128, ptr %arrayidx12, align 1
  %30 = load ptr, ptr %data.i, align 4
  %arrayidx16 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx16, align 1
  %32 = load ptr, ptr %data.i, align 4
  %arrayidx16.1 = getelementptr i8, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx16.1, align 1
  %34 = load ptr, ptr %data.i, align 4
  %arrayidx16.2 = getelementptr i8, ptr %34, i32 6
  %35 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx16.2, align 1
  %36 = load ptr, ptr %data.i, align 4
  %arrayidx16.3 = getelementptr i8, ptr %36, i32 7
  %37 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx16.3, align 1
  %38 = load ptr, ptr %data.i, align 4
  %arrayidx16.4 = getelementptr i8, ptr %38, i32 8
  %39 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx16.4, align 1
  %40 = load ptr, ptr %data.i, align 4
  %arrayidx16.5 = getelementptr i8, ptr %40, i32 9
  %41 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx16.5, align 1
  %42 = load ptr, ptr %data.i, align 4
  %arrayidx16.6 = getelementptr i8, ptr %42, i32 10
  %43 = ptrtoint ptr %arrayidx16.6 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx16.6, align 1
  %44 = load ptr, ptr %data.i, align 4
  %arrayidx16.7 = getelementptr i8, ptr %44, i32 11
  %45 = ptrtoint ptr %arrayidx16.7 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %arrayidx16.7, align 1
  %46 = load ptr, ptr %data.i, align 4
  %arrayidx16.8 = getelementptr i8, ptr %46, i32 12
  %47 = ptrtoint ptr %arrayidx16.8 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx16.8, align 1
  %48 = load ptr, ptr %data.i, align 4
  %arrayidx16.9 = getelementptr i8, ptr %48, i32 13
  %49 = ptrtoint ptr %arrayidx16.9 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx16.9, align 1
  %50 = load ptr, ptr %data.i, align 4
  %arrayidx16.10 = getelementptr i8, ptr %50, i32 14
  %51 = ptrtoint ptr %arrayidx16.10 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %arrayidx16.10, align 1
  %52 = load ptr, ptr %data.i, align 4
  %arrayidx16.11 = getelementptr i8, ptr %52, i32 15
  %53 = ptrtoint ptr %arrayidx16.11 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx16.11, align 1
  %54 = load ptr, ptr %data.i, align 4
  %arrayidx16.12 = getelementptr i8, ptr %54, i32 16
  %55 = ptrtoint ptr %arrayidx16.12 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx16.12, align 1
  %56 = load ptr, ptr %data.i, align 4
  %arrayidx16.13 = getelementptr i8, ptr %56, i32 17
  %57 = ptrtoint ptr %arrayidx16.13 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %arrayidx16.13, align 1
  %58 = load ptr, ptr %data.i, align 4
  %arrayidx16.14 = getelementptr i8, ptr %58, i32 18
  %59 = ptrtoint ptr %arrayidx16.14 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx16.14, align 1
  %60 = load ptr, ptr %data.i, align 4
  %arrayidx16.15 = getelementptr i8, ptr %60, i32 19
  %61 = ptrtoint ptr %arrayidx16.15 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx16.15, align 1
  %62 = load ptr, ptr %data.i, align 4
  %arrayidx16.16 = getelementptr i8, ptr %62, i32 20
  %63 = ptrtoint ptr %arrayidx16.16 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx16.16, align 1
  %64 = load ptr, ptr %data.i, align 4
  %arrayidx16.17 = getelementptr i8, ptr %64, i32 21
  %65 = ptrtoint ptr %arrayidx16.17 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx16.17, align 1
  %66 = load ptr, ptr %data.i, align 4
  %arrayidx16.18 = getelementptr i8, ptr %66, i32 22
  %67 = ptrtoint ptr %arrayidx16.18 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx16.18, align 1
  %68 = load ptr, ptr %data.i, align 4
  %arrayidx16.19 = getelementptr i8, ptr %68, i32 23
  %69 = ptrtoint ptr %arrayidx16.19 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx16.19, align 1
  %70 = load ptr, ptr %data.i, align 4
  %arrayidx16.20 = getelementptr i8, ptr %70, i32 24
  %71 = ptrtoint ptr %arrayidx16.20 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx16.20, align 1
  %72 = load ptr, ptr %data.i, align 4
  %arrayidx16.21 = getelementptr i8, ptr %72, i32 25
  %73 = ptrtoint ptr %arrayidx16.21 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx16.21, align 1
  %74 = load ptr, ptr %data.i, align 4
  %arrayidx16.22 = getelementptr i8, ptr %74, i32 26
  %75 = ptrtoint ptr %arrayidx16.22 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx16.22, align 1
  %76 = load ptr, ptr %data.i, align 4
  %arrayidx16.23 = getelementptr i8, ptr %76, i32 27
  %77 = ptrtoint ptr %arrayidx16.23 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx16.23, align 1
  %78 = load ptr, ptr %data.i, align 4
  %arrayidx16.24 = getelementptr i8, ptr %78, i32 28
  %79 = ptrtoint ptr %arrayidx16.24 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %arrayidx16.24, align 1
  %80 = load ptr, ptr %data.i, align 4
  %arrayidx16.25 = getelementptr i8, ptr %80, i32 29
  %81 = ptrtoint ptr %arrayidx16.25 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx16.25, align 1
  %82 = load ptr, ptr %data.i, align 4
  %arrayidx16.26 = getelementptr i8, ptr %82, i32 30
  %83 = ptrtoint ptr %arrayidx16.26 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx16.26, align 1
  %84 = load ptr, ptr %data.i, align 4
  %arrayidx16.27 = getelementptr i8, ptr %84, i32 31
  %85 = ptrtoint ptr %arrayidx16.27 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx16.27, align 1
  %86 = load ptr, ptr %data.i, align 4
  %arrayidx16.28 = getelementptr i8, ptr %86, i32 32
  %87 = ptrtoint ptr %arrayidx16.28 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx16.28, align 1
  %88 = load ptr, ptr %data.i, align 4
  %arrayidx16.29 = getelementptr i8, ptr %88, i32 33
  %89 = ptrtoint ptr %arrayidx16.29 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx16.29, align 1
  %90 = load ptr, ptr %data.i, align 4
  %arrayidx16.30 = getelementptr i8, ptr %90, i32 34
  %91 = ptrtoint ptr %arrayidx16.30 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %arrayidx16.30, align 1
  %92 = load ptr, ptr %data.i, align 4
  %arrayidx16.31 = getelementptr i8, ptr %92, i32 35
  %93 = ptrtoint ptr %arrayidx16.31 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx16.31, align 1
  %94 = load ptr, ptr %data.i, align 4
  %arrayidx16.32 = getelementptr i8, ptr %94, i32 36
  %95 = ptrtoint ptr %arrayidx16.32 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx16.32, align 1
  %96 = load ptr, ptr %data.i, align 4
  %arrayidx16.33 = getelementptr i8, ptr %96, i32 37
  %97 = ptrtoint ptr %arrayidx16.33 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %arrayidx16.33, align 1
  %98 = load ptr, ptr %data.i, align 4
  %arrayidx16.34 = getelementptr i8, ptr %98, i32 38
  %99 = ptrtoint ptr %arrayidx16.34 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %arrayidx16.34, align 1
  %100 = load ptr, ptr %data.i, align 4
  %arrayidx16.35 = getelementptr i8, ptr %100, i32 39
  %101 = ptrtoint ptr %arrayidx16.35 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %arrayidx16.35, align 1
  %102 = load ptr, ptr %data.i, align 4
  %arrayidx16.36 = getelementptr i8, ptr %102, i32 40
  %103 = ptrtoint ptr %arrayidx16.36 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %arrayidx16.36, align 1
  %104 = load ptr, ptr %data.i, align 4
  %arrayidx16.37 = getelementptr i8, ptr %104, i32 41
  %105 = ptrtoint ptr %arrayidx16.37 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx16.37, align 1
  %106 = load ptr, ptr %data.i, align 4
  %arrayidx16.38 = getelementptr i8, ptr %106, i32 42
  %107 = ptrtoint ptr %arrayidx16.38 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx16.38, align 1
  %108 = load ptr, ptr %data.i, align 4
  %arrayidx16.39 = getelementptr i8, ptr %108, i32 43
  %109 = ptrtoint ptr %arrayidx16.39 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %arrayidx16.39, align 1
  %110 = load ptr, ptr %data.i, align 4
  %arrayidx16.40 = getelementptr i8, ptr %110, i32 44
  %111 = ptrtoint ptr %arrayidx16.40 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %arrayidx16.40, align 1
  %112 = load ptr, ptr %data.i, align 4
  %arrayidx16.41 = getelementptr i8, ptr %112, i32 45
  %113 = ptrtoint ptr %arrayidx16.41 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx16.41, align 1
  %114 = load ptr, ptr %data.i, align 4
  %arrayidx16.42 = getelementptr i8, ptr %114, i32 46
  %115 = ptrtoint ptr %arrayidx16.42 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx16.42, align 1
  %116 = load ptr, ptr %data.i, align 4
  %arrayidx16.43 = getelementptr i8, ptr %116, i32 47
  %117 = ptrtoint ptr %arrayidx16.43 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %arrayidx16.43, align 1
  %118 = load ptr, ptr %data.i, align 4
  %arrayidx20 = getelementptr i8, ptr %118, i32 48
  %119 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv, ptr %arrayidx20, align 1
  %120 = load ptr, ptr %data.i, align 4
  %arrayidx24 = getelementptr i8, ptr %120, i32 49
  %121 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv6, ptr %arrayidx24, align 1
  %122 = load ptr, ptr %data.i, align 4
  %arrayidx26 = getelementptr i8, ptr %122, i32 50
  %123 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx26, align 1
  %124 = load ptr, ptr %data.i, align 4
  %arrayidx28 = getelementptr i8, ptr %124, i32 51
  %125 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -128, ptr %arrayidx28, align 1
  %126 = load ptr, ptr %data.i, align 4
  %arrayidx34 = getelementptr i8, ptr %126, i32 52
  %127 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %arrayidx34, align 1
  %128 = load ptr, ptr %data.i, align 4
  %arrayidx34.1 = getelementptr i8, ptr %128, i32 53
  %129 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx34.1, align 1
  %130 = load ptr, ptr %data.i, align 4
  %arrayidx34.2 = getelementptr i8, ptr %130, i32 54
  %131 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %arrayidx34.2, align 1
  %132 = load ptr, ptr %data.i, align 4
  %arrayidx34.3 = getelementptr i8, ptr %132, i32 55
  %133 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %arrayidx34.3, align 1
  %134 = load ptr, ptr %data.i, align 4
  %arrayidx34.4 = getelementptr i8, ptr %134, i32 56
  %135 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %arrayidx34.4, align 1
  %136 = load ptr, ptr %data.i, align 4
  %arrayidx34.5 = getelementptr i8, ptr %136, i32 57
  %137 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %arrayidx34.5, align 1
  %138 = load ptr, ptr %data.i, align 4
  %arrayidx34.6 = getelementptr i8, ptr %138, i32 58
  %139 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %arrayidx34.6, align 1
  %140 = load ptr, ptr %data.i, align 4
  %arrayidx34.7 = getelementptr i8, ptr %140, i32 59
  %141 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %arrayidx34.7, align 1
  %142 = load ptr, ptr %data.i, align 4
  %arrayidx34.8 = getelementptr i8, ptr %142, i32 60
  %143 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %arrayidx34.8, align 1
  %144 = load ptr, ptr %data.i, align 4
  %arrayidx34.9 = getelementptr i8, ptr %144, i32 61
  %145 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %arrayidx34.9, align 1
  %146 = load ptr, ptr %data.i, align 4
  %arrayidx34.10 = getelementptr i8, ptr %146, i32 62
  %147 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx34.10, align 1
  %148 = load ptr, ptr %data.i, align 4
  %arrayidx34.11 = getelementptr i8, ptr %148, i32 63
  %149 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %arrayidx34.11, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %skb, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch9200_mdio_read(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc) #2 align 64 {
entry:
  %buff = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff) #7
  %0 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buff, align 1, !annotation !59
  %1 = getelementptr inbounds [2 x i8], ptr %buff, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch9200_mdio_read.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_mdio_read, %if.then)) #7
          to label %do.end6 [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ch9200_mdio_read.__UNIQUE_ID_ddebug346, ptr noundef %netdev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %phy_id, i32 noundef %loc) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %cmp.not = icmp eq i32 %phy_id, 0
  br i1 %cmp.not, label %if.end8, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %loc.tr = trunc i32 %loc to i16
  %conv = shl i16 %loc.tr, 1
  %3 = call fastcc i32 @control_read(ptr noundef %add.ptr.i, i16 noundef zeroext %conv, ptr noundef nonnull %buff)
  %4 = ptrtoint ptr %buff to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buff, align 1
  %conv10 = zext i8 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %conv12 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv12, 8
  %or = or i32 %shl, %conv10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %if.end8 ], [ -19, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch9200_mdio_write(ptr noundef %netdev, i32 noundef %phy_id, i32 noundef %loc, i32 noundef %val) #2 align 64 {
entry:
  %buff = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buff) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buff, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ch9200_mdio_write.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ch9200_mdio_write, %if.then)) #7
          to label %do.end6 [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ch9200_mdio_write.__UNIQUE_ID_ddebug347, ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %phy_id, i32 noundef %loc) #7
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_id)
  %cmp.not = icmp eq i32 %phy_id, 0
  br i1 %cmp.not, label %if.end8, label %do.end6.cleanup_crit_edge

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %val to i8
  %1 = ptrtoint ptr %buff to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %buff, align 1
  %2 = lshr i32 %val, 8
  %conv9 = trunc i32 %2 to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv9, ptr %0, align 1
  %loc.tr = trunc i32 %loc to i16
  %conv11 = shl i16 %loc.tr, 1
  call fastcc void @control_write(ptr noundef %add.ptr.i, i16 noundef zeroext %conv11, ptr noundef nonnull %buff)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buff) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @control_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %index, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_write.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@control_write, %if.then5)) #7
          to label %do.end10 [label %if.then5], !srcloc !57

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv6 = zext i16 %index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_write.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %conv6, i32 noundef 2) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %entry
  %tobool11.not = icmp eq ptr %data, null
  br i1 %tobool11.not, label %do.end10.if.end18_crit_edge, label %if.then12

do.end10.if.end18_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12:                                        ; preds = %do.end10
  %call14 = tail call ptr @kmemdup(ptr noundef nonnull %data, i32 noundef 2, i32 noundef 3264) #7
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %do.end10.if.end18_crit_edge
  %buf.0 = phi ptr [ %call14, %if.then12.if.end18_crit_edge ], [ null, %do.end10.if.end18_crit_edge ]
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i = shl i32 %5, 8
  %or = or i32 %shl.i, -2147483648
  %call21 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or, i8 noundef zeroext 15, i8 noundef zeroext 67, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef %buf.0, i16 noundef zeroext 2, i32 noundef 1000) #7
  tail call void @kfree(ptr noundef %buf.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then12.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_mac_address(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_mac_address.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_mac_address, %if.then)) #7
          to label %do.end8 [label %if.then], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv6 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @get_mac_address.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %conv, i32 noundef %conv6) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %10 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %11 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %12 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %13 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %14 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %15 = call ptr @memset(ptr %mac_addr, i32 0, i32 6)
  %call10 = call fastcc i32 @control_read(ptr noundef %dev, i16 noundef zeroext 74, ptr noundef nonnull %mac_addr)
  %call12 = call fastcc i32 @control_read(ptr noundef %dev, i16 noundef zeroext 76, ptr noundef %13)
  %add = add i32 %call12, %call10
  %call15 = call fastcc i32 @control_read(ptr noundef %dev, i16 noundef zeroext 78, ptr noundef %11)
  %add16 = add i32 %add, %call15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add16)
  %cmp.not = icmp eq i32 %add16, 6
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %10, align 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %data, align 1
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %11, align 1
  %arrayidx22 = getelementptr i8, ptr %data, i32 1
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx22, align 1
  %22 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %12, align 1
  %arrayidx24 = getelementptr i8, ptr %data, i32 2
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx24, align 1
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %13, align 1
  %arrayidx26 = getelementptr i8, ptr %data, i32 3
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx26, align 1
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %14, align 1
  %arrayidx28 = getelementptr i8, ptr %data, i32 4
  %30 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx28, align 1
  %31 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mac_addr, align 1
  %arrayidx30 = getelementptr i8, ptr %data, i32 5
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx30, align 1
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #7
  ret i32 %spec.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @control_read(ptr nocapture noundef readonly %dev, i16 noundef zeroext %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @control_read.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@control_read, %if.then5)) #7
          to label %do.end10 [label %if.then5], !srcloc !57

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %net = getelementptr inbounds %struct.usbnet, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %conv6 = zext i16 %index to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @control_read.__UNIQUE_ID_ddebug344, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef %conv6, i32 noundef 2) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2) #11
  %tobool13.not = icmp eq ptr %call7.i, null
  br i1 %tobool13.not, label %do.end10.err_out_crit_edge, label %if.end15

do.end10.err_out_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

if.end15:                                         ; preds = %do.end10
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i = shl i32 %6, 8
  %or18 = or i32 %shl.i, -2147483520
  %call19 = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or18, i8 noundef zeroext 14, i8 noundef zeroext -61, i16 noundef zeroext 0, i16 noundef zeroext %index, ptr noundef nonnull %call7.i, i16 noundef zeroext 2, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call19)
  %cmp21 = icmp eq i32 %call19, 2
  br i1 %cmp21, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call7.i, align 8
  %9 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %data, align 1
  br label %if.end30

if.else25:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp26 = icmp sgt i32 %call19, -1
  %spec.store.select = select i1 %cmp26, i32 -22, i32 %call19
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then23
  %err.0 = phi i32 [ 2, %if.then23 ], [ %spec.store.select, %if.else25 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %err_out

err_out:                                          ; preds = %if.end30, %do.end10.err_out_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end30 ], [ -12, %do.end10.err_out_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_check_media(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_gset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_defer_kevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_ch9200__350_423_ch9200_driver_init6, !1, !"__initcall__kmod_ch9200__350_423_ch9200_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/usb/ch9200.c", i32 423, i32 1}
!2 = !{ptr @__exitcall_ch9200_driver_exit, !1, !"__exitcall_ch9200_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description351, !4, !"__UNIQUE_ID_description351", i1 false, i1 false}
!4 = !{!"../drivers/net/usb/ch9200.c", i32 425, i32 1}
!5 = !{ptr @__UNIQUE_ID_file352, !6, !"__UNIQUE_ID_file352", i1 false, i1 false}
!6 = !{!"../drivers/net/usb/ch9200.c", i32 426, i32 1}
!7 = !{ptr @__UNIQUE_ID_license353, !6, !"__UNIQUE_ID_license353", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ch9200_driver, !10, !"ch9200_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/usb/ch9200.c", i32 414, i32 26}
!11 = !{ptr @ch9200_products, !12, !"ch9200_products", i1 false, i1 false}
!12 = !{!"../drivers/net/usb/ch9200.c", i32 404, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/usb/ch9200.c", i32 394, i32 17}
!15 = !{ptr @ch9200_info, !16, !"ch9200_info", i1 false, i1 false}
!16 = !{!"../drivers/net/usb/ch9200.c", i32 393, i32 33}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/usb/ch9200.c", i32 182, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ch9200_mdio_read.__UNIQUE_ID_ddebug346, !18, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/usb/ch9200.c", i32 114, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @control_read.__UNIQUE_ID_ddebug344, !23, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/usb/ch9200.c", i32 200, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ch9200_mdio_write.__UNIQUE_ID_ddebug347, !27, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/usb/ch9200.c", i32 152, i32 2}
!32 = !{ptr @control_write.__UNIQUE_ID_ddebug345, !31, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/usb/ch9200.c", i32 310, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @get_mac_address.__UNIQUE_ID_ddebug349, !34, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/usb/ch9200.c", i32 220, i32 2}
!39 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ch9200_link_reset.__UNIQUE_ID_ddebug348, !38, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/usb/ch9200.c", i32 294, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ch9200_rx_fixup._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @ch9200_rx_fixup._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148699341, i64 2148699346, i64 2148699359, i64 2148699403, i64 2148699437, i64 2148699458}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"auto-init"}
