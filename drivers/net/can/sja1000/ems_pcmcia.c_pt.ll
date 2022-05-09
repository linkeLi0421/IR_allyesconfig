; ModuleID = '/llk/IR_all_yes/drivers/net/can/sja1000/ems_pcmcia.c_pt.bc'
source_filename = "../drivers/net/can/sja1000/ems_pcmcia.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ems_pcmcia_card = type { i32, ptr, [2 x ptr], ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sja1000_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i16, i8, i8 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author461 = internal constant [62 x i8] c"ems_pcmcia.author=Markus Plessing <plessing@ems-wuensche.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description462 = internal constant [64 x i8] c"ems_pcmcia.description=Socket-CAN driver for EMS CPC-CARD cards\00", section ".modinfo", align 1
@__UNIQUE_ID_file463 = internal constant [51 x i8] c"ems_pcmcia.file=drivers/net/can/sja1000/ems_pcmcia\00", section ".modinfo", align 1
@__UNIQUE_ID_license464 = internal constant [26 x i8] c"ems_pcmcia.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_ems_pcmcia__465_316_ems_pcmcia_driver_init6 = internal global ptr @ems_pcmcia_driver_init, section ".initcall6.init", align 4
@ems_pcmcia_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @ems_pcmcia_probe, ptr @ems_pcmcia_remove, ptr null, ptr null, ptr null, ptr @ems_pcmcia_tbl, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_ems_pcmcia_driver_exit = internal global ptr @ems_pcmcia_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ems_pcmcia\00", [21 x i8] zeroinitializer }, align 32
@ems_pcmcia_tbl = internal global { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -357438941, i32 -1556588737, i32 -464037888, i32 0], [4 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ems_pcmcia_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"pcmcia_request_window failed (err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ems_pcmcia_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/can/sja1000/ems_pcmcia.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ems_pcmcia_probe._entry_ptr = internal global ptr @ems_pcmcia_probe._entry, section ".printk_index", align 4
@ems_pcmcia_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 286, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pcmcia_map_mem_page failed (err=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@ems_pcmcia_probe._entry_ptr.8 = internal global ptr @ems_pcmcia_probe._entry.6, section ".printk_index", align 4
@ems_pcmcia_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pcmcia_enable_device failed (err=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ems_pcmcia_probe._entry_ptr.11 = internal global ptr @ems_pcmcia_probe._entry.9, section ".printk_index", align 4
@ems_pcmcia_add_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: registered %s on channel #%d at 0x%p, irq %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ems_pcmcia_add_card\00", [44 x i8] zeroinitializer }, align 32
@ems_pcmcia_add_card._entry_ptr = internal global ptr @ems_pcmcia_add_card._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ems_pcmcia_del_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: removing %s on channel #%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ems_pcmcia_del_card\00", [44 x i8] zeroinitializer }, align 32
@ems_pcmcia_del_card._entry_ptr = internal global ptr @ems_pcmcia_del_card._entry, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EMS_T_W\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CPC-Card\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"V2.0\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"ems_pcmcia_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 310, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 311, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"ems_pcmcia_tbl\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 62, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 278, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 285, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 292, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 230, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 143, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [40 x i8] c"../drivers/net/can/sja1000/ems_pcmcia.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 63, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description462, ptr @__UNIQUE_ID_file463, ptr @__UNIQUE_ID_license464, ptr @__exitcall_ems_pcmcia_driver_exit, ptr @__initcall__kmod_ems_pcmcia__465_316_ems_pcmcia_driver_init6, ptr @ems_pcmcia_add_card._entry, ptr @ems_pcmcia_add_card._entry_ptr, ptr @ems_pcmcia_del_card._entry, ptr @ems_pcmcia_del_card._entry_ptr, ptr @ems_pcmcia_driver_exit, ptr @ems_pcmcia_probe._entry, ptr @ems_pcmcia_probe._entry.6, ptr @ems_pcmcia_probe._entry.9, ptr @ems_pcmcia_probe._entry_ptr, ptr @ems_pcmcia_probe._entry_ptr.11, ptr @ems_pcmcia_probe._entry_ptr.8, ptr @ems_pcmcia_driver, ptr @.str, ptr @ems_pcmcia_tbl, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_tbl to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_add_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ems_pcmcia_del_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_pcmcia_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @ems_pcmcia_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ems_pcmcia_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @ems_pcmcia_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_pcmcia_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 10
  %0 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_flags, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %config_flags, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %config_index, align 4
  %config_regs = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 13
  %3 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %config_regs, align 8
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %end, align 4
  %arrayidx5 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %end6 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %end6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %end6, align 4
  %10 = load ptr, ptr %arrayidx5, align 4
  %flags9 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags9, align 4
  %or10 = or i32 %12, 8
  store i32 %or10, ptr %flags9, align 4
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 14
  %13 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %io_lines, align 4
  %arrayidx12 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %flags13 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %flags13, align 4
  %17 = load ptr, ptr %arrayidx12, align 4
  %end16 = getelementptr inbounds %struct.resource, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %end16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %end16, align 4
  %19 = load ptr, ptr %arrayidx12, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %21 = load ptr, ptr %arrayidx12, align 4
  %call = tail call i32 @pcmcia_request_window(ptr noundef %dev, ptr noundef %21, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev21 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12, align 4
  %config_base = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 11
  %24 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config_base, align 8
  %call24 = tail call i32 @pcmcia_map_mem_page(ptr noundef %dev, ptr noundef %23, i32 noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.7, i32 noundef %call24) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %call32 = tail call i32 @pcmcia_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end39, label %do.end37

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %dev38 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.10, i32 noundef %call32) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end31
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end39.cleanup_crit_edge, label %if.end.i

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end39
  %priv1.i = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 22
  %31 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %priv1.i, align 8
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %call7.i.i.i, align 8
  %call2.i = tail call ptr @ioremap(i32 noundef %29, i32 noundef 4096) #5
  %base_addr.i = getelementptr inbounds %struct.ems_pcmcia_card, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call2.i, ptr %base_addr.i, align 8
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end.i.failure_cleanup.i_crit_edge, label %if.end6.i

if.end.i.failure_cleanup.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

if.end6.i:                                        ; preds = %if.end.i
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %call2.i) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %34)
  %cmp.not.i = icmp eq i16 %34, 21930
  br i1 %cmp.not.i, label %do.body.i, label %if.end6.i.failure_cleanup.i_crit_edge

if.end6.i.failure_cleanup.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

do.body.i:                                        ; preds = %if.end6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %35 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr.i, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 0) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base_addr.i, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 3) #5, !srcloc !58
  %dev26.i = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 6
  %call20.i = tail call ptr @alloc_sja1000dev(i32 noundef 0) #5
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %do.body.i.failure_cleanup.i_crit_edge, label %if.end23.i

do.body.i.failure_cleanup.i_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

if.end23.i:                                       ; preds = %do.body.i
  %arrayidx.i = getelementptr %struct.ems_pcmcia_card, ptr %call7.i.i.i, i32 0, i32 2, i32 0
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call20.i, ptr %arrayidx.i, align 8
  %priv25.i = getelementptr i8, ptr %call20.i, i32 2636
  %40 = ptrtoint ptr %priv25.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i.i, ptr %priv25.i, align 4
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 133, i32 1
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev26.i, ptr %parent.i, align 8
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 60
  %42 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %dev_id.i, align 2
  %irq_flags.i = getelementptr i8, ptr %call20.i, i32 2648
  %43 = ptrtoint ptr %irq_flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 128, ptr %irq_flags.i, align 4
  %44 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq.i, align 8
  %irq29.i = getelementptr inbounds %struct.net_device, ptr %call20.i, i32 0, i32 64
  %46 = ptrtoint ptr %irq29.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %irq29.i, align 4
  %47 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %48, i32 256
  %reg_base.i = getelementptr i8, ptr %call20.i, i32 2644
  %49 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %reg_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %53, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 -128) #5, !srcloc !58
  %54 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %55, i32 31
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %56)
  %cmp.i.not.i = icmp eq i8 %56, -128
  br i1 %cmp.i.not.i, label %if.then34.i, label %if.else.i

if.then34.i:                                      ; preds = %if.end23.i
  %read_reg.i = getelementptr i8, ptr %call20.i, i32 2620
  %57 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @ems_pcmcia_read_reg, ptr %read_reg.i, align 4
  %write_reg.i = getelementptr i8, ptr %call20.i, i32 2624
  %58 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @ems_pcmcia_write_reg, ptr %write_reg.i, align 4
  %clock.i = getelementptr i8, ptr %call20.i, i32 2440
  %59 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 8000000, ptr %clock.i, align 4
  %ocr.i = getelementptr i8, ptr %call20.i, i32 2698
  %60 = ptrtoint ptr %ocr.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -40, ptr %ocr.i, align 2
  %cdr.i = getelementptr i8, ptr %call20.i, i32 2699
  %61 = ptrtoint ptr %cdr.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 71, ptr %cdr.i, align 1
  %flags.i = getelementptr i8, ptr %call20.i, i32 2696
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags.i, align 4
  %64 = or i16 %63, 1
  store i16 %64, ptr %flags.i, align 4
  %call37.i = tail call i32 @register_sja1000dev(ptr noundef nonnull %call20.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.then34.i.if.then39.i_crit_edge

if.then34.i.if.then39.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.then39.i:                                      ; preds = %if.then34.1.i.if.then39.i_crit_edge, %if.then34.i.if.then39.i_crit_edge
  %call20.lcssa4.i = phi ptr [ %call20.i, %if.then34.i.if.then39.i_crit_edge ], [ %call20.1.i, %if.then34.1.i.if.then39.i_crit_edge ]
  tail call void @free_sja1000dev(ptr noundef nonnull %call20.lcssa4.i) #5
  br label %failure_cleanup.i

if.end40.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call7.i.i.i, align 8
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %call7.i.i.i, align 8
  %67 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_base.i, align 4
  %69 = ptrtoint ptr %irq29.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq29.i, align 4
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull %call20.i, i32 noundef 0, ptr noundef %68, i32 noundef %70) #8
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_sja1000dev(ptr noundef nonnull %call20.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end40.i
  %call20.1.i = tail call ptr @alloc_sja1000dev(i32 noundef 0) #5
  %tobool21.not.1.i = icmp eq ptr %call20.1.i, null
  br i1 %tobool21.not.1.i, label %for.inc.i.failure_cleanup.i_crit_edge, label %if.end23.1.i

for.inc.i.failure_cleanup.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

if.end23.1.i:                                     ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.ems_pcmcia_card, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call20.1.i, ptr %arrayidx.1.i, align 4
  %priv25.1.i = getelementptr i8, ptr %call20.1.i, i32 2636
  %72 = ptrtoint ptr %priv25.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i.i, ptr %priv25.1.i, align 4
  %parent.1.i = getelementptr inbounds %struct.net_device, ptr %call20.1.i, i32 0, i32 133, i32 1
  %73 = ptrtoint ptr %parent.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev26.i, ptr %parent.1.i, align 8
  %dev_id.1.i = getelementptr inbounds %struct.net_device, ptr %call20.1.i, i32 0, i32 60
  %74 = ptrtoint ptr %dev_id.1.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %dev_id.1.i, align 2
  %irq_flags.1.i = getelementptr i8, ptr %call20.1.i, i32 2648
  %75 = ptrtoint ptr %irq_flags.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 128, ptr %irq_flags.1.i, align 4
  %76 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq.i, align 8
  %irq29.1.i = getelementptr inbounds %struct.net_device, ptr %call20.1.i, i32 0, i32 64
  %78 = ptrtoint ptr %irq29.1.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %irq29.1.i, align 4
  %79 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base_addr.i, align 8
  %add.ptr31.1.i = getelementptr i8, ptr %80, i32 384
  %reg_base.1.i = getelementptr i8, ptr %call20.1.i, i32 2644
  %81 = ptrtoint ptr %reg_base.1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr31.1.i, ptr %reg_base.1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %reg_base.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_base.1.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %83, i8 1) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %reg_base.1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_base.1.i, align 4
  %add.ptr.i.i.1.i = getelementptr i8, ptr %85, i32 31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.1.i, i8 -128) #5, !srcloc !58
  %86 = ptrtoint ptr %reg_base.1.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_base.1.i, align 4
  %add.ptr.i6.i.1.i = getelementptr i8, ptr %87, i32 31
  %88 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i6.i.1.i) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %88)
  %cmp.i.not.1.i = icmp eq i8 %88, -128
  br i1 %cmp.i.not.1.i, label %if.then34.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @free_sja1000dev(ptr noundef nonnull %call20.1.i) #5
  br label %for.inc.1.i

if.then34.1.i:                                    ; preds = %if.end23.1.i
  %read_reg.1.i = getelementptr i8, ptr %call20.1.i, i32 2620
  %89 = ptrtoint ptr %read_reg.1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @ems_pcmcia_read_reg, ptr %read_reg.1.i, align 4
  %write_reg.1.i = getelementptr i8, ptr %call20.1.i, i32 2624
  %90 = ptrtoint ptr %write_reg.1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @ems_pcmcia_write_reg, ptr %write_reg.1.i, align 4
  %clock.1.i = getelementptr i8, ptr %call20.1.i, i32 2440
  %91 = ptrtoint ptr %clock.1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 8000000, ptr %clock.1.i, align 4
  %ocr.1.i = getelementptr i8, ptr %call20.1.i, i32 2698
  %92 = ptrtoint ptr %ocr.1.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -40, ptr %ocr.1.i, align 2
  %cdr.1.i = getelementptr i8, ptr %call20.1.i, i32 2699
  %93 = ptrtoint ptr %cdr.1.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 71, ptr %cdr.1.i, align 1
  %flags.1.i = getelementptr i8, ptr %call20.1.i, i32 2696
  %94 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags.1.i, align 4
  %96 = or i16 %95, 1
  store i16 %96, ptr %flags.1.i, align 4
  %call37.1.i = tail call i32 @register_sja1000dev(ptr noundef nonnull %call20.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1.i)
  %tobool38.not.1.i = icmp eq i32 %call37.1.i, 0
  br i1 %tobool38.not.1.i, label %if.end40.1.i, label %if.then34.1.i.if.then39.i_crit_edge

if.then34.1.i.if.then39.i_crit_edge:              ; preds = %if.then34.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39.i

if.end40.1.i:                                     ; preds = %if.then34.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %call7.i.i.i, align 8
  %inc.1.i = add i32 %98, 1
  store i32 %inc.1.i, ptr %call7.i.i.i, align 8
  %99 = ptrtoint ptr %reg_base.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_base.1.i, align 4
  %101 = ptrtoint ptr %irq29.1.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %irq29.1.i, align 4
  %call48.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, ptr noundef nonnull %call20.1.i, i32 noundef 1, ptr noundef %100, i32 noundef %102) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end40.1.i, %if.else.1.i
  %103 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool52.not.i = icmp eq i32 %104, 0
  br i1 %tobool52.not.i, label %for.inc.1.i.failure_cleanup.i_crit_edge, label %if.end54.i

for.inc.1.i.failure_cleanup.i_crit_edge:          ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

if.end54.i:                                       ; preds = %for.inc.1.i
  %105 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq.i, align 8
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %106, ptr noundef nonnull @ems_pcmcia_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool57.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool57.not.i, label %if.end54.i.cleanup_crit_edge, label %if.end54.i.failure_cleanup.i_crit_edge

if.end54.i.failure_cleanup.i_crit_edge:           ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %failure_cleanup.i

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

failure_cleanup.i:                                ; preds = %if.end54.i.failure_cleanup.i_crit_edge, %for.inc.1.i.failure_cleanup.i_crit_edge, %for.inc.i.failure_cleanup.i_crit_edge, %if.then39.i, %do.body.i.failure_cleanup.i_crit_edge, %if.end6.i.failure_cleanup.i_crit_edge, %if.end.i.failure_cleanup.i_crit_edge
  tail call fastcc void @ems_pcmcia_del_card(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %failure_cleanup.i, %if.end54.i.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %do.end37, %do.end29, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pcmcia_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ems_pcmcia_del_card(ptr noundef %dev)
  tail call void @pcmcia_disable_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_window(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_map_mem_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_sja1000dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ems_pcmcia_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ems_pcmcia_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %port, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %reg_base = getelementptr inbounds %struct.sja1000_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %port
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #5, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ems_pcmcia_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.ems_pcmcia_card, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #5, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp2(i16 21930, i16 %2)
  %cmp.not = icmp eq i16 %2, 21930
  br i1 %cmp.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp42833 = icmp sgt i32 %.pr, 0
  br i1 %cmp42833, label %do.body.preheader.for.body.preheader_crit_edge, label %do.body.preheader.cleanup_crit_edge

do.body.preheader.cleanup_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.preheader.for.body.preheader_crit_edge:   ; preds = %do.body.preheader
  br label %for.body.preheader

do.body:                                          ; preds = %for.end
  %cmp428 = icmp sgt i32 %7, 0
  br i1 %cmp428, label %do.body.for.body.preheader_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.for.body.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.body.for.body.preheader_crit_edge, %do.body.preheader.for.body.preheader_crit_edge
  %retval1.034 = phi i32 [ 1, %do.body.for.body.preheader_crit_edge ], [ 0, %do.body.preheader.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %again.030 = phi i32 [ %again.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.ems_pcmcia_card, ptr %dev_id, i32 0, i32 2, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @sja1000_interrupt(i32 noundef %irq, ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 1
  %spec.select = select i1 %cmp9, i32 1, i32 %again.030
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %again.1 = phi i32 [ %again.030, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end7 ]
  %inc = add nuw nsw i32 %i.029, 1
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_id, align 4
  %cmp4 = icmp slt i32 %inc, %7
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %again.1)
  %tobool13.not = icmp eq i32 %again.1, 0
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %do.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %do.body.preheader.cleanup_crit_edge ], [ 1, %do.body.cleanup_crit_edge ], [ %retval1.034, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ems_pcmcia_del_card(ptr nocapture noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %pdev, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp20 = icmp sgt i32 %5, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ems_pcmcia_card, ptr %1, i32 0, i32 2, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str, ptr noundef nonnull %7, i32 noundef %i.021) #8
  tail call void @unregister_sja1000dev(ptr noundef nonnull %7) #5
  tail call void @free_sja1000dev(ptr noundef nonnull %7) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.021, 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body2_crit_edge

for.inc.do.body2_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body2:                                         ; preds = %for.inc.do.body2_crit_edge, %entry.do.body2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %base_addr = getelementptr inbounds %struct.ems_pcmcia_card, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 2) #5, !srcloc !58
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr, align 4
  tail call void @iounmap(ptr noundef %13) #5
  tail call void @kfree(ptr noundef %1) #5
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %priv, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1000_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_sja1000dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__UNIQUE_ID_author461, !1, !"__UNIQUE_ID_author461", i1 false, i1 false}
!1 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description462, !3, !"__UNIQUE_ID_description462", i1 false, i1 false}
!3 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file463, !5, !"__UNIQUE_ID_file463", i1 false, i1 false}
!5 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license464, !5, !"__UNIQUE_ID_license464", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ems_pcmcia__465_316_ems_pcmcia_driver_init6, !8, !"__initcall__kmod_ems_pcmcia__465_316_ems_pcmcia_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 316, i32 1}
!9 = !{ptr @__exitcall_ems_pcmcia_driver_exit, !8, !"__exitcall_ems_pcmcia_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 311, i32 10}
!12 = !{ptr @ems_pcmcia_driver, !13, !"ems_pcmcia_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 310, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 278, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ems_pcmcia_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ems_pcmcia_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 285, i32 3}
!24 = !{ptr @ems_pcmcia_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ems_pcmcia_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 292, i32 3}
!28 = !{ptr @ems_pcmcia_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ems_pcmcia_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 230, i32 4}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ems_pcmcia_add_card._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ems_pcmcia_add_card._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 143, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ems_pcmcia_del_card._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ems_pcmcia_del_card._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 63, i32 2}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ems_pcmcia_tbl, !45, !"ems_pcmcia_tbl", i1 false, i1 false}
!45 = !{!"../drivers/net/can/sja1000/ems_pcmcia.c", i32 62, i32 32}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 4621465}
!56 = !{i64 2157276934}
!57 = !{i64 2157277155}
!58 = !{i64 4621688}
!59 = !{i64 2157277425}
!60 = !{i64 2157273709}
!61 = !{i64 4622083}
!62 = !{i64 2157273491}
!63 = !{i64 2157274244}
!64 = !{i64 2157276184}
