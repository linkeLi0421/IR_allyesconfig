; ModuleID = '/llk/IR_all_yes/drivers/net/arcnet/com20020.c_pt.bc'
source_filename = "../drivers/net/arcnet/com20020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@arcnet_debug = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"status invalid (%Xh).\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"status after reset: %X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"status after reset acknowledged: %X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Signature byte not found (%02Xh != D1h).\0A\00", [54 x i8] zeroinitializer }, align 32
@com20020_netdev_ops = dso_local constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @com20020_netdev_open, ptr @com20020_netdev_close, ptr @arcnet_send_packet, ptr null, ptr null, ptr null, ptr @com20020_set_mc_list, ptr @com20020_set_hwaddr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arcnet_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arcnet (COM20020)\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get IRQ %d!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: station %02Xh found at %03lXh, IRQ %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Using backplane mode.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Using extended timeout value of %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using CKP %d - data rate %s\0A\00", [35 x i8] zeroinitializer }, align 32
@clockrates = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.25, ptr @.str.25], [52 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file361 = internal constant [42 x i8] c"com20020.file=drivers/net/arcnet/com20020\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [21 x i8] c"com20020.license=GPL\00", section ".modinfo", align 1
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XXXXXXX\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"XXXXXXXX\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XXXXXX\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2.5 Mb/s\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1.25Mb/s\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"625 Kb/s\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"312.5 Kb/s\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"156.25 Kb/s\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Resetting %s (status=%02Xh)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reset failed: TESTvalue not present.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Setting promiscuous flag...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Resetting promiscuous flag...\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 129, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 132, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 137, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 147, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"com20020_netdev_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 191, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 244, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 245, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 249, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 253, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 256, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 259, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"clockrates\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 45, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 46, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 47, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 47, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 47, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 47, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 48, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 290, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 320, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 380, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [33 x i8] c"../drivers/net/arcnet/com20020.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 387, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @com20020_netdev_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @clockrates, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @com20020_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clockrates to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @com20020_check(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -104) #4, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 1073740) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 24) #4, !srcloc !97
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.0191 = phi i32 [ 300, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0191, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %clockm = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %clockm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %clockm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool10.not = icmp eq i8 %6, 0
  br i1 %tobool10.not, label %cond.false, label %while.end.cond.end_crit_edge

while.end.cond.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %clockp = getelementptr i8, ptr %dev, i32 2307
  %7 = ptrtoint ptr %clockp to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %clockp, align 1
  %shl = shl i8 %8, 1
  %phi.bo = or i8 %shl, -128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %while.end.cond.end_crit_edge
  %cond = phi i8 [ %phi.bo, %cond.false ], [ -128, %while.end.cond.end_crit_edge ]
  %setup = getelementptr i8, ptr %dev, i32 2309
  %shl15 = shl i8 %6, 4
  %or = or i8 %shl15, 8
  %setup2 = getelementptr i8, ptr %dev, i32 2310
  %9 = ptrtoint ptr %setup2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or, ptr %setup2, align 2
  %10 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %cond, ptr %setup, align 1
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 4
  %13 = and i8 %12, -4
  %conv1.i = or i8 %13, 2
  store i8 %conv1.i, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %15) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %setup, align 1
  %add26 = add i32 %1, 7
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %18 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %17) #4, !srcloc !97
  %19 = ptrtoint ptr %clockm to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %clockm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not = icmp eq i8 %20, 0
  br i1 %cmp.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %add9.i = add i32 %1, 5
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %21 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 4) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %setup2, align 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %23) #4, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %add44 = add i32 %1, 1
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %25 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 24) #4, !srcloc !97
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %timeout = getelementptr i8, ptr %dev, i32 2305
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %timeout, align 1
  %shl49 = shl i8 %27, 3
  %backplane = getelementptr i8, ptr %dev, i32 2306
  %28 = ptrtoint ptr %backplane to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %backplane, align 2
  %shl51 = shl i8 %29, 2
  %or52 = or i8 %shl49, %shl51
  %or53 = or i8 %or52, 1
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or53, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %32) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !105
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 66) #4, !srcloc !97
  %and71 = and i32 %1, 1048575
  %add72 = or i32 %and71, -18874368
  %33 = inttoptr i32 %add72 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !107
  %conv75 = zext i8 %34 to i32
  %and76 = and i32 %conv75, 153
  call void @__sanitizer_cov_trace_const_cmp4(i32 145, i32 %and76)
  %cmp77.not = icmp eq i32 %and76, 145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %35 = load i32, ptr @arcnet_debug, align 4
  br i1 %cmp77.not, label %do.body88, label %do.body80

do.body80:                                        ; preds = %if.end
  %and81 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.body80.cleanup_crit_edge, label %if.then83

do.body80.cleanup_crit_edge:                      ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then83:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %conv75) #7
  br label %cleanup

do.body88:                                        ; preds = %if.end
  %and89 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %do.body88.do.body95_crit_edge, label %if.then91

do.body88.do.body95_crit_edge:                    ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body95

if.then91:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv75) #7
  br label %do.body95

do.body95:                                        ; preds = %if.then91, %do.body88.do.body95_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !108
  tail call void @arm_heavy_mb() #4
  %add98 = add i32 %1, 1
  %and99 = and i32 %add98, 1048575
  %add100 = or i32 %and99, -18874368
  %36 = inttoptr i32 %add100 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 30) #4, !srcloc !97
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %38 = load i32, ptr @arcnet_debug, align 4
  %and111 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %do.body95.do.body117_crit_edge, label %if.then113

do.body95.do.body117_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body117

if.then113:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %conv109 = zext i8 %37 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %conv109) #7
  br label %do.body117

do.body117:                                       ; preds = %if.then113, %do.body95.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %add120 = add i32 %1, 2
  %and121 = and i32 %add120, 1048575
  %add122 = or i32 %and121, -18874368
  %39 = inttoptr i32 %add122 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -64) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !111
  tail call void @arm_heavy_mb() #4
  %add127 = add i32 %1, 3
  %and128 = and i32 %add127, 1048575
  %add129 = or i32 %and128, -18874368
  %40 = inttoptr i32 %add129 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #4, !srcloc !97
  %add132 = add i32 %1, 4
  %and133 = and i32 %add132, 1048575
  %add134 = or i32 %and133, -18874368
  %41 = inttoptr i32 %add134 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %conv138 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %42)
  %cmp139.not = icmp eq i8 %42, -47
  br i1 %cmp139.not, label %do.body117.cleanup_crit_edge, label %do.body142

do.body117.cleanup_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body142:                                       ; preds = %do.body117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %43 = load i32, ptr @arcnet_debug, align 4
  %and143 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body142.cleanup_crit_edge, label %if.then145

do.body142.cleanup_crit_edge:                     ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then145:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv138) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then145, %do.body142.cleanup_crit_edge, %do.body117.cleanup_crit_edge, %if.then83, %do.body80.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then83 ], [ -19, %do.body80.cleanup_crit_edge ], [ -19, %if.then145 ], [ -19, %do.body142.cleanup_crit_edge ], [ 0, %do.body117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020_netdev_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 4
  %4 = or i8 %3, 32
  store i8 %4, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %7 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %6) #4, !srcloc !97
  %call5 = tail call i32 @arcnet_open(ptr noundef %dev) #4
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020_netdev_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @arcnet_close(ptr noundef %dev) #4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 4
  %4 = and i8 %3, -33
  store i8 %4, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4
  %add = add i32 %1, 6
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %7 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %6) #4, !srcloc !97
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_send_packet(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_set_mc_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %4 = and i32 %3, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %4)
  %.not = icmp eq i32 %4, 257
  %setup = getelementptr i8, ptr %dev, i32 2309
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %setup, align 1
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool5.not, label %do.body, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %8 = load i32, ptr @arcnet_debug, align 4
  %and7 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body.if.end10_crit_edge, label %if.then9

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 4
  %11 = and i8 %10, -4
  %conv1.i = or i8 %11, 2
  store i8 %conv1.i, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 4
  %add.i = add i32 %1, 6
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %14 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #4, !srcloc !97
  %15 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %setup, align 1
  %17 = or i8 %16, 16
  store i8 %17, ptr %setup, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %setup, align 1
  %add = add i32 %1, 7
  %and18 = and i32 %add, 1048575
  %add19 = or i32 %and18, -18874368
  %20 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %19) #4, !srcloc !97
  br label %if.end46

if.else:                                          ; preds = %entry
  br i1 %tobool5.not, label %if.else.if.end33_crit_edge, label %do.body26

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

do.body26:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %21 = load i32, ptr @arcnet_debug, align 4
  %and27 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.if.end33_crit_edge, label %if.then29

do.body26.if.end33_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %do.body26.if.end33_crit_edge, %if.else.if.end33_crit_edge
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i, align 4
  %24 = and i8 %23, -4
  %conv1.i62 = or i8 %24, 2
  store i8 %conv1.i62, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i, align 4
  %add.i63 = add i32 %1, 6
  %and4.i64 = and i32 %add.i63, 1048575
  %add5.i65 = or i32 %and4.i64, -18874368
  %27 = inttoptr i32 %add5.i65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %26) #4, !srcloc !97
  %28 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %setup, align 1
  %30 = and i8 %29, -17
  store i8 %30, ptr %setup, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %31 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %setup, align 1
  %add42 = add i32 %1, 7
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %33 = inttoptr i32 %add44 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %32) #4, !srcloc !97
  br label %if.end46

if.end46:                                         ; preds = %if.end33, %if.end10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020_set_hwaddr(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %2 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %3 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 4
  %6 = and i8 %5, -4
  %conv1.i = or i8 %6, 1
  store i8 %conv1.i, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i, align 4
  %add.i = add i32 %1, 6
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %8) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %14 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #4, !srcloc !97
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arcnet_timeout(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @com20020_found(ptr noundef %dev, i32 noundef %shared) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 4956
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %hw, align 4
  %command = getelementptr i8, ptr %dev, i32 4960
  %3 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @com20020_command, ptr %command, align 4
  %status = getelementptr i8, ptr %dev, i32 4964
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @com20020_status, ptr %status, align 4
  %intmask = getelementptr i8, ptr %dev, i32 4968
  %5 = ptrtoint ptr %intmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @com20020_setmask, ptr %intmask, align 4
  %reset = getelementptr i8, ptr %dev, i32 4972
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @com20020_reset, ptr %reset, align 4
  %copy_to_card = getelementptr i8, ptr %dev, i32 4992
  %7 = ptrtoint ptr %copy_to_card to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @com20020_copy_to_card, ptr %copy_to_card, align 4
  %copy_from_card = getelementptr i8, ptr %dev, i32 4996
  %8 = ptrtoint ptr %copy_from_card to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @com20020_copy_from_card, ptr %copy_from_card, align 4
  %close = getelementptr i8, ptr %dev, i32 4980
  %9 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @com20020_close, ptr %close, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %14 = inttoptr i32 %add8 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %16 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %addr.addr.i, align 1
  %addr_len.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %17 = ptrtoint ptr %addr_len.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr_len.i.i, align 1
  %conv.i.i = zext i8 %18 to i32
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.addr.i, i32 noundef %conv.i.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4
  %21 = and i8 %20, -4
  %conv1.i = or i8 %21, 2
  store i8 %conv1.i, ptr %add.ptr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i, align 4
  %add.i = add i32 %1, 6
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %24 = inttoptr i32 %add5.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %23) #4, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  call void @arm_heavy_mb() #4
  %setup = getelementptr i8, ptr %dev, i32 2309
  %25 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %setup, align 1
  %add11 = add i32 %1, 7
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %27 = inttoptr i32 %add13 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %26) #4, !srcloc !97
  %card_flags = getelementptr i8, ptr %dev, i32 2600
  %28 = ptrtoint ptr %card_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %card_flags, align 4
  %and15 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end.if.end32_crit_edge, label %if.then17

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  call void @arm_heavy_mb() #4
  %add9.i = add i32 %1, 5
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %30 = inttoptr i32 %add11.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 4) #4, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  call void @arm_heavy_mb() #4
  %setup2 = getelementptr i8, ptr %dev, i32 2310
  %31 = ptrtoint ptr %setup2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %setup2, align 2
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %32) #4, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  call void @arm_heavy_mb() #4
  %add28 = add i32 %1, 1
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %34 = inttoptr i32 %add30 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 24) #4, !srcloc !97
  br label %if.end32

if.end32:                                         ; preds = %if.then17, %if.end.if.end32_crit_edge
  %timeout = getelementptr i8, ptr %dev, i32 2305
  %35 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %timeout, align 1
  %shl = shl i8 %36, 3
  %backplane = getelementptr i8, ptr %dev, i32 2306
  %37 = ptrtoint ptr %backplane to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %backplane, align 2
  %shl34 = shl i8 %38, 2
  %or = or i8 %shl, %shl34
  %or35 = or i8 %or, 1
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %or35, ptr %add.ptr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  call void @arm_heavy_mb() #4
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %41) #4, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  call void @arm_heavy_mb() #4
  %42 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_addr, align 64
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %45) #4, !srcloc !97
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %47, ptr noundef nonnull @arcnet_interrupt, ptr noundef null, i32 noundef %shared, ptr noundef nonnull @.str.4, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %48 = load i32, ptr @arcnet_debug, align 4
  %and67 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool55.not, label %do.body66, label %do.body57

do.body57:                                        ; preds = %if.end32
  br i1 %tobool68.not, label %do.body57.cleanup_crit_edge, label %if.then60

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %50) #7
  br label %cleanup

do.body66:                                        ; preds = %if.end32
  br i1 %tobool68.not, label %do.body66.do.end77_crit_edge, label %if.then69

do.body66.do.end77_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

if.then69:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #6
  %card_name = getelementptr i8, ptr %dev, i32 2596
  %51 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card_name, align 4
  %53 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv72 = zext i8 %56 to i32
  %57 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base_addr, align 32
  %59 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %52, i32 noundef %conv72, i32 noundef %58, i32 noundef %60) #7
  br label %do.end77

do.end77:                                         ; preds = %if.then69, %do.body66.do.end77_crit_edge
  %61 = ptrtoint ptr %backplane to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %backplane, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool79.not = icmp eq i8 %62, 0
  br i1 %tobool79.not, label %do.end77.if.end88_crit_edge, label %do.body81

do.end77.if.end88_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

do.body81:                                        ; preds = %do.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %63 = load i32, ptr @arcnet_debug, align 4
  %and82 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.if.end88_crit_edge, label %if.then84

do.body81.if.end88_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.then84:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %do.body81.if.end88_crit_edge, %do.end77.if.end88_crit_edge
  %64 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %timeout, align 1
  %conv90 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %65)
  %cmp.not = icmp eq i8 %65, 3
  br i1 %cmp.not, label %if.end88.do.body103_crit_edge, label %do.body93

if.end88.do.body103_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body103

do.body93:                                        ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %66 = load i32, ptr @arcnet_debug, align 4
  %and94 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %do.body93.do.body103_crit_edge, label %if.then96

do.body93.do.body103_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body103

if.then96:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv90) #7
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %do.body93.do.body103_crit_edge, %if.end88.do.body103_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %67 = load i32, ptr @arcnet_debug, align 4
  %and104 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %do.body103.do.end121_crit_edge, label %if.then106

do.body103.do.end121_crit_edge:                   ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end121

if.then106:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %setup, align 1
  %70 = lshr i8 %69, 1
  %71 = zext i8 %70 to i32
  %setup2109 = getelementptr i8, ptr %dev, i32 2310
  %72 = ptrtoint ptr %setup2109 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %setup2109, align 2
  %74 = lshr i8 %73, 4
  %75 = zext i8 %74 to i32
  %sub = sub nsw i32 3, %75
  %76 = and i32 %71, 7
  %add117 = add nsw i32 %sub, %76
  %arrayidx118 = getelementptr [11 x ptr], ptr @clockrates, i32 0, i32 %add117
  %77 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx118, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %71, ptr noundef %78) #7
  br label %do.end121

do.end121:                                        ; preds = %if.then106, %do.body103.do.end121_crit_edge
  %call122 = call i32 @register_netdev(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %do.end121.cleanup_crit_edge, label %if.then124

do.end121.cleanup_crit_edge:                      ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then124:                                       ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #6
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  %call126 = call ptr @free_irq(i32 noundef %80, ptr noundef %dev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %do.end121.cleanup_crit_edge, %if.then60, %do.body57.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then124 ], [ -19, %if.then60 ], [ -19, %do.body57.cleanup_crit_edge ], [ 0, %do.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_command(ptr nocapture noundef readonly %dev, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %cmd to i8
  %add = add i32 %1, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #4, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020_status(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  %conv = zext i8 %3 to i32
  %add4 = add i32 %1, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %4 = inttoptr i32 %add6 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %conv10 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %add11 = or i32 %shl, %conv
  ret i32 %add11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_setmask(ptr nocapture noundef readonly %dev, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %mask to i8
  %and15 = and i32 %1, 1048575
  %add16 = or i32 %and15, -18874368
  %2 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #4, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @com20020_reset(ptr noundef %dev, i32 noundef %really_reset) #0 align 64 {
entry:
  %inbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %inbyte) #4
  %2 = ptrtoint ptr %inbyte to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %inbyte, align 1, !annotation !128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %3 = load i32, ptr @arcnet_debug, align 4
  %and14 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %entry.do.end52_crit_edge, label %if.then16

entry.do.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end52

if.then16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and19 = and i32 %1, 1048575
  %add20 = or i32 %and19, -18874368
  %4 = inttoptr i32 %add20 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !129
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %dev, i32 noundef %conv) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then16, %entry.do.end52_crit_edge
  %timeout = getelementptr i8, ptr %dev, i32 2305
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timeout, align 1
  %shl = shl i8 %7, 3
  %backplane = getelementptr i8, ptr %dev, i32 2306
  %8 = ptrtoint ptr %backplane to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %backplane, align 2
  %shl55 = shl i8 %9, 2
  %or = or i8 %shl55, %shl
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i, align 4
  %or57 = or i8 %or, %11
  store i8 %or57, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !130
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i, align 4
  %add63 = add i32 %1, 6
  %and64 = and i32 %add63, 1048575
  %add65 = or i32 %and64, -18874368
  %14 = inttoptr i32 %add65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %13) #4, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %really_reset)
  %tobool93.not = icmp eq i32 %really_reset, 0
  br i1 %tobool93.not, label %do.end52.do.body142_crit_edge, label %do.body95

do.end52.do.body142_crit_edge:                    ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body142

do.body95:                                        ; preds = %do.end52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !131
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 4
  %17 = or i8 %16, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %17) #4, !srcloc !97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 1073740) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !132
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %20) #4, !srcloc !97
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body95
  %__ms.0299 = phi i32 [ 600, %do.body95 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0299, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  %tobool114.not = icmp eq i32 %dec, 0
  br i1 %tobool114.not, label %while.body.do.body142_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.do.body142_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body142

do.body142:                                       ; preds = %while.body.do.body142_crit_edge, %do.end52.do.body142_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !133
  tail call void @arm_heavy_mb() #4
  %add145 = add i32 %1, 1
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %22 = inttoptr i32 %add147 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 30) #4, !srcloc !97
  %23 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %add2.i = add i32 %24, 2
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 -64) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %add9.i = add i32 %24, 3
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %26 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 0) #4, !srcloc !97
  %add51.i = add i32 %24, 4
  %and52.i = and i32 %add51.i, 1048575
  %add53.i = or i32 %and52.i, -18874368
  %27 = inttoptr i32 %add53.i to ptr
  call void @__raw_readsb(ptr noundef nonnull %27, ptr noundef nonnull %inbyte, i32 noundef 1) #4
  %28 = ptrtoint ptr %inbyte to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %inbyte, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -47, i8 %29)
  %cmp.not = icmp eq i8 %29, -47
  br i1 %cmp.not, label %do.body238, label %do.body230

do.body230:                                       ; preds = %do.body142
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arcnet_debug to i32))
  %30 = load i32, ptr @arcnet_debug, align 4
  %and231 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %do.body230.cleanup_crit_edge, label %if.then233

do.body230.cleanup_crit_edge:                     ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then233:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #7
  br label %cleanup

do.body238:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !136
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 13) #4, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %do.body238, %if.then233, %do.body230.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body238 ], [ 1, %if.then233 ], [ 1, %do.body230.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %inbyte) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_copy_to_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %mul = shl i32 %bufnum, 9
  %add = add i32 %mul, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !137
  tail call void @arm_heavy_mb() #4
  %2 = lshr i32 %add, 8
  %3 = trunc i32 %2 to i8
  %conv = or i8 %3, 64
  %add1 = add i32 %1, 2
  %and = and i32 %add1, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !138
  tail call void @arm_heavy_mb() #4
  %conv7 = trunc i32 %add to i8
  %add8 = add i32 %1, 3
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %5 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv7) #4, !srcloc !97
  %add50 = add i32 %1, 4
  %and51 = and i32 %add50, 1048575
  %add52 = or i32 %and51, -18874368
  %6 = inttoptr i32 %add52 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %6, ptr noundef %buf, i32 noundef %count) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_copy_from_card(ptr nocapture noundef readonly %dev, i32 noundef %bufnum, i32 noundef %offset, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %mul = shl i32 %bufnum, 9
  %add = add i32 %mul, %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !134
  tail call void @arm_heavy_mb() #4
  %2 = lshr i32 %add, 8
  %3 = trunc i32 %2 to i8
  %conv = or i8 %3, -64
  %add2 = add i32 %1, 2
  %and = and i32 %add2, 1048575
  %add3 = or i32 %and, -18874368
  %4 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !135
  tail call void @arm_heavy_mb() #4
  %conv8 = trunc i32 %add to i8
  %add9 = add i32 %1, 3
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %5 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv8) #4, !srcloc !97
  %add51 = add i32 %1, 4
  %and52 = and i32 %add51, 1048575
  %add53 = or i32 %and52, -18874368
  %6 = inttoptr i32 %add53 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %6, ptr noundef %buf, i32 noundef %count) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @com20020_close(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 4
  %4 = and i8 %3, -33
  store i8 %4, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !139
  tail call void @arm_heavy_mb() #4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %add.ptr.i, align 4
  %add = add i32 %1, 6
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %7 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %6) #4, !srcloc !97
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arcnet_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/arcnet/com20020.c", i32 129, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/arcnet/com20020.c", i32 132, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/arcnet/com20020.c", i32 137, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/arcnet/com20020.c", i32 147, i32 3}
!8 = !{ptr @com20020_netdev_ops, !9, !"com20020_netdev_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/arcnet/com20020.c", i32 191, i32 29}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/arcnet/com20020.c", i32 244, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/arcnet/com20020.c", i32 245, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/arcnet/com20020.c", i32 249, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/arcnet/com20020.c", i32 253, i32 3}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/arcnet/com20020.c", i32 256, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/arcnet/com20020.c", i32 259, i32 2}
!22 = !{ptr @__UNIQUE_ID_file361, !23, !"__UNIQUE_ID_file361", i1 false, i1 false}
!23 = !{!"../drivers/net/arcnet/com20020.c", i32 402, i32 1}
!24 = !{ptr @__UNIQUE_ID_license362, !23, !"__UNIQUE_ID_license362", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/arcnet/com20020.c", i32 87, i32 2}
!27 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !26, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!31 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/arcnet/com20020.c", i32 73, i32 2}
!34 = distinct !{null, !33, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!35 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/arcnet/com20020.c", i32 46, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/arcnet/com20020.c", i32 46, i32 13}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/arcnet/com20020.c", i32 46, i32 25}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/arcnet/com20020.c", i32 46, i32 35}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/arcnet/com20020.c", i32 47, i32 2}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/arcnet/com20020.c", i32 47, i32 14}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/arcnet/com20020.c", i32 47, i32 26}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/arcnet/com20020.c", i32 47, i32 40}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/arcnet/com20020.c", i32 48, i32 2}
!54 = !{ptr @clockrates, !55, !"clockrates", i1 false, i1 false}
!55 = !{!"../drivers/net/arcnet/com20020.c", i32 45, i32 27}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/arcnet/com20020.c", i32 288, i32 2}
!58 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !57, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/arcnet/com20020.c", i32 290, i32 2}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/arcnet/com20020.c", i32 293, i32 2}
!64 = distinct !{null, !63, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!65 = distinct !{null, !66, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!66 = !{!"../drivers/net/arcnet/com20020.c", i32 297, i32 2}
!67 = distinct !{null, !68, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!68 = !{!"../drivers/net/arcnet/com20020.c", i32 308, i32 2}
!69 = distinct !{null, !70, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!70 = !{!"../drivers/net/arcnet/com20020.c", i32 313, i32 2}
!71 = distinct !{null, !72, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!72 = !{!"../drivers/net/arcnet/com20020.c", i32 316, i32 2}
!73 = distinct !{null, !74, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!74 = !{!"../drivers/net/arcnet/com20020.c", i32 318, i32 3}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/arcnet/com20020.c", i32 320, i32 3}
!77 = distinct !{null, !78, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!78 = !{!"../drivers/net/arcnet/com20020.c", i32 326, i32 2}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/arcnet/com20020.c", i32 336, i32 2}
!81 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !80, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/arcnet/com20020.c", i32 380, i32 4}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/arcnet/com20020.c", i32 387, i32 4}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2155953061}
!97 = !{i64 6720272}
!98 = !{i64 2155954042}
!99 = !{i64 2155941246}
!100 = !{i64 2155959870}
!101 = !{i64 2155941660}
!102 = !{i64 2155960300}
!103 = !{i64 2155962009}
!104 = !{i64 2155962439}
!105 = !{i64 2155962855}
!106 = !{i64 6720667}
!107 = !{i64 2155963339}
!108 = !{i64 2155969100}
!109 = !{i64 2155969584}
!110 = !{i64 2155972757}
!111 = !{i64 2155973167}
!112 = !{i64 2155973651}
!113 = !{i64 2155977314}
!114 = !{i64 2155977747}
!115 = !{i64 2156038907}
!116 = !{i64 2156042082}
!117 = !{i64 2155976881}
!118 = !{i64 2155978250}
!119 = !{i64 2155978547}
!120 = !{i64 2155978979}
!121 = !{i64 2155980688}
!122 = !{i64 2155981118}
!123 = !{i64 2155981558}
!124 = !{i64 2156034596}
!125 = !{i64 2156035080}
!126 = !{i64 2156035433}
!127 = !{i64 2156034182}
!128 = !{!"auto-init"}
!129 = !{i64 2156001332}
!130 = !{i64 2156007328}
!131 = !{i64 2156010633}
!132 = !{i64 2156011597}
!133 = !{i64 2156016288}
!134 = !{i64 2155942126}
!135 = !{i64 2155942554}
!136 = !{i64 2156028121}
!137 = !{i64 2155947579}
!138 = !{i64 2155948007}
!139 = !{i64 2156035735}
