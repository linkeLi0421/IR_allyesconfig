; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/pnic.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/pnic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tulip_chip_table = type { ptr, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%union.anon.116 = type { ptr }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@pnic_do_nway.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pnic_do_nway\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/dec/tulip/pnic.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PNIC autonegotiated status %08x, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@pnic_lnk_change.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pnic_lnk_change\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PNIC link changed state %08x, CSR5 %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@tulip_media_cap = external dso_local local_unnamed_addr constant [0 x i8], align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pnic_timer.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 29, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pnic_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PNIC timer PHY status %08x, %s CSR5 %08x\0A\00", [54 x i8] zeroinitializer }, align 32
@pnic_timer.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 32, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s link beat failed, CSR12 %04x, CSR5 %08x, PHY %03x\0A\00", [42 x i8] zeroinitializer }, align 32
@pnic_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 156, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Changing PNIC configuration to %s %s-duplex, CSR6 %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pnic_timer._entry_ptr = internal global ptr @pnic_timer._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@pnic_timer._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 164, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sw timer wakeup\0A\00", [47 x i8] zeroinitializer }, align 32
@pnic_timer._entry_ptr.16 = internal global ptr @pnic_timer._entry.14, section ".printk_index", align 4
@tulip_tbl = external dso_local local_unnamed_addr constant [0 x %struct.tulip_chip_table], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.18, ptr @.str.19, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 41, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 59, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 115, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 126, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 152, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private constant [41 x i8] c"../drivers/net/ethernet/dec/tulip/pnic.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 164, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 546, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @pnic_timer._entry, ptr @pnic_timer._entry.14, ptr @pnic_timer._entry_ptr, ptr @pnic_timer._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic_timer._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic_do_nway(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %and2 = and i32 %3, 2013265920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end65_crit_edge, label %if.then

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then:                                          ; preds = %entry
  %and3 = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else, label %if.then.if.end22.sink.split_crit_edge

if.then.if.end22.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split

if.else:                                          ; preds = %if.then
  %and6 = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else10, label %if.else.if.end22.sink.split_crit_edge

if.else.if.end22.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split

if.else10:                                        ; preds = %if.else
  %and11 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else15, label %if.else10.if.end22.sink.split_crit_edge

if.else10.if.end22.sink.split_crit_edge:          ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split

if.else15:                                        ; preds = %if.else10
  %and16 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else15.if.end22_crit_edge, label %if.else15.if.end22.sink.split_crit_edge

if.else15.if.end22.sink.split_crit_edge:          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.sink.split

if.else15.if.end22_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end22.sink.split:                              ; preds = %if.else15.if.end22.sink.split_crit_edge, %if.else10.if.end22.sink.split_crit_edge, %if.else.if.end22.sink.split_crit_edge, %if.then.if.end22.sink.split_crit_edge
  %.sink = phi i8 [ 5, %if.then.if.end22.sink.split_crit_edge ], [ 3, %if.else.if.end22.sink.split_crit_edge ], [ 4, %if.else10.if.end22.sink.split_crit_edge ], [ 0, %if.else15.if.end22.sink.split_crit_edge ]
  %if_port9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %if_port9, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.else15.if.end22_crit_edge
  %nwayset = getelementptr i8, ptr %dev, i32 4252
  %5 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %nwayset, align 4
  %bf.set = or i16 %bf.load, 2
  store i16 %bf.set, ptr %nwayset, align 4
  %if_port23 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %6 = ptrtoint ptr %if_port23 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_port23, align 2
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool25.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool25.not, i32 4325376, i32 25559040
  %9 = or i8 %8, 50
  %or = zext i8 %9 to i32
  %add.ptr29 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %10 = shl nuw nsw i32 %or, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %10) #5, !srcloc !46
  %11 = ptrtoint ptr %if_port23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %if_port23, align 2
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool33.not = icmp eq i8 %13, 0
  br i1 %tobool33.not, label %if.end22.if.end36_crit_edge, label %if.then34

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1761083648) #5, !srcloc !46
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end22.if.end36_crit_edge
  %and37 = and i32 %3, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end44_crit_edge, label %if.then39

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load40 = load i16, ptr %nwayset, align 4
  %bf.set42 = or i16 %bf.load40, -32768
  store i16 %bf.set42, ptr %nwayset, align 4
  %or43 = or i32 %cond, 512
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.end36.if.end44_crit_edge
  %new_csr6.0 = phi i32 [ %or43, %if.then39 ], [ %cond, %if.end36.if.end44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %15 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp = icmp sgt i32 %15, 1
  br i1 %cmp, label %do.body47, label %if.end44.if.end58_crit_edge

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.body47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic_do_nway.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic_do_nway, %if.end58)) #5
          to label %if.then53 [label %if.end58], !srcloc !47

if.then53:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %if_port23 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_port23, align 2
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic_do_nway.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %3, ptr noundef %19) #5
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %do.body47, %if.end44.if.end58_crit_edge
  %20 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %csr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %new_csr6.0)
  %cmp60.not = icmp eq i32 %21, %new_csr6.0
  br i1 %cmp60.not, label %if.end58.if.end65_crit_edge, label %if.then62

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then62:                                        ; preds = %if.end58
  %22 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_csr6.0, ptr %csr6, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 12
  %26 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i.i = icmp eq i32 %27, %25
  br i1 %cmp.not.i.i, label %if.then62.if.end65_crit_edge, label %do.body5.i.i

if.then62.if.end65_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

do.body5.i.i:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %25, ptr %trans_start.i.i, align 16
  br label %if.end65

if.end65:                                         ; preds = %do.body5.i.i, %if.then62.if.end65_crit_edge, %if.end58.if.end65_crit_edge, %entry.if.end65_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !43
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !48
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %6 = and i32 %5, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_restart_rxtx, %tulip_stop_rxtx.exit)) #5
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !47

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !43
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !43
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.19, i32 noundef %11, i32 noundef %13) #5
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %entry.tulip_stop_rxtx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 8
  %csr6.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 25
  %17 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %csr6.i, align 4
  %or.i = or i32 %18, 8194
  %add.ptr.i3 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !46
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !49
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic_lnk_change(ptr noundef %dev, i32 noundef %csr5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !43
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %4 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.body2, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic_lnk_change.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic_lnk_change, %if.end10)) #5
          to label %if.then7 [label %if.end10], !srcloc !47

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic_lnk_change.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %csr5) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body2, %entry.if.end10_crit_edge
  %add.ptr11 = getelementptr i8, ptr %1, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  %add.ptr15 = getelementptr i8, ptr %1, i32 56
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %8 = and i32 %7, -269484033
  %9 = or i32 %8, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #5, !srcloc !46
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %10 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %11 to i32
  %arrayidx = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %if.end22, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.then14
  %nwayset = getelementptr i8, ptr %dev, i32 4252
  %15 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %nwayset, align 4
  %16 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool23.not = icmp eq i16 %16, 0
  br i1 %tobool23.not, label %if.end22.if.then27_crit_edge, label %lor.lhs.false

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %call24 = tail call i32 @dev_trans_start(ptr noundef %dev) #5
  %add = add i32 %call24, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %lor.lhs.false.if.then27_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %18 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csr6, align 4
  %and28 = and i32 %19, 65023
  %or29 = or i32 %and28, 4325376
  store i32 %or29, ptr %csr6, align 4
  %add.ptr32 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %or29) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #5, !srcloc !46
  %add.ptr33 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 805306368) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2028994818) #5, !srcloc !46
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 12
  %24 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %23)
  %cmp.not.i.i = icmp eq i32 %25, %23
  br i1 %cmp.not.i.i, label %if.then27.cleanup_crit_edge, label %do.body5.i.i

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body5.i.i:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %23, ptr %trans_start.i.i, align 16
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %28 = and i32 %27, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.else.cleanup_crit_edge, label %if.then40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then40:                                        ; preds = %if.else
  %if_port41 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %29 = ptrtoint ptr %if_port41 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %if_port41, align 2
  %idxprom42 = zext i8 %30 to i32
  %arrayidx43 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom42
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx43, align 1
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool46.not = icmp eq i8 %33, 0
  br i1 %tobool46.not, label %if.else50, label %if.then47

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr i8, ptr %dev, i32 4144
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %call48 = tail call i32 @tulip_check_duplex(ptr noundef %dev) #5
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %if.end51

if.else50:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pnic_do_nway(ptr noundef %dev)
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then47
  %add.ptr52 = getelementptr i8, ptr %1, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %35 = and i32 %34, -269484033
  %36 = or i32 %35, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %36) #5, !srcloc !46
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.else.cleanup_crit_edge, %do.body5.i.i, %if.then27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_check_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -1736
  %dev1 = getelementptr i8, ptr %t, i32 864
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %base_addr = getelementptr i8, ptr %t, i32 808
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.too_good_connection_crit_edge, label %if.end

entry.too_good_connection_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %too_good_connection

if.end:                                           ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %5 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr i8, ptr %t, i32 104
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %call5 = tail call i32 @tulip_check_duplex(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp sgt i32 %call5, 0
  %spec.select = select i1 %cmp, i32 300, i32 6000
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  br label %too_good_connection

if.else:                                          ; preds = %if.end
  %add.ptr10 = getelementptr i8, ptr %3, i32 96
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !43
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %csr6 = getelementptr i8, ptr %t, i32 220
  %12 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %csr6, align 4
  %and12 = and i32 %13, -1086587393
  %add.ptr13 = getelementptr i8, ptr %3, i32 184
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !43
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %add.ptr15 = getelementptr i8, ptr %3, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !43
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %18 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp17 = icmp sgt i32 %18, 1
  br i1 %cmp17, label %do.body20, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.body20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic_timer.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic_timer, %if.end34)) #5
          to label %if.then27 [label %if.end34], !srcloc !47

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %if_port, align 2
  %idxprom29 = zext i8 %20 to i32
  %arrayidx30 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom29
  %21 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic_timer.__UNIQUE_ID_ddebug342, ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %15, ptr noundef %22, i32 noundef %17) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %do.body20, %if.else.if.end34_crit_edge
  %and35 = and i32 %15, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 2028994818) #5, !srcloc !46
  %nwayset = getelementptr i8, ptr %t, i32 212
  %23 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %nwayset, align 4
  %bf.clear = and i16 %bf.load, -3
  store i16 %bf.clear, ptr %nwayset, align 4
  br label %too_good_connection

if.else39:                                        ; preds = %if.end34
  %and40 = and i32 %15, 2013265920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.else43, label %if.then42

if.then42:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pnic_do_nway(ptr noundef %1)
  br label %too_good_connection

if.else43:                                        ; preds = %if.else39
  %and44 = and i32 %17, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else43.too_good_connection_crit_edge, label %if.then46

if.else43.too_good_connection_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %too_good_connection

if.then46:                                        ; preds = %if.else43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %24 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp47 = icmp sgt i32 %24, 1
  br i1 %cmp47, label %do.body51, label %if.then46.if.end78_crit_edge

if.then46.if.end78_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.body51:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic_timer.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic_timer, %if.end78)) #5
          to label %if.then65 [label %if.end78], !srcloc !47

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %if_port, align 2
  %idxprom67 = zext i8 %26 to i32
  %arrayidx68 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom67
  %27 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx68, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #5, !srcloc !43
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #5, !srcloc !43
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic_timer.__UNIQUE_ID_ddebug343, ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %28, i32 noundef %11, i32 noundef %30, i32 noundef %32) #5
  br label %if.end78

if.end78:                                         ; preds = %if.then65, %do.body51, %if.then46.if.end78_crit_edge
  %medialock = getelementptr i8, ptr %t, i32 212
  %33 = ptrtoint ptr %medialock to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load79 = load i16, ptr %medialock, align 4
  %34 = and i16 %bf.load79, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool81.not = icmp eq i16 %34, 0
  br i1 %tobool81.not, label %if.else83, label %if.end78.if.end110_crit_edge

if.end78.if.end110_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else83:                                        ; preds = %if.end78
  %35 = and i16 %bf.load79, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool89.not = icmp eq i16 %35, 0
  %36 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %36)
  %.pr = load i8, ptr %if_port, align 2
  %37 = and i8 %.pr, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool93.not = icmp eq i8 %37, 0
  %or.cond = select i1 %tobool89.not, i1 true, i1 %tobool93.not
  br i1 %or.cond, label %if.else95, label %if.else83.if.end110_crit_edge

if.else83.if.end110_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.else95:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp98 = icmp eq i8 %.pr, 0
  br i1 %cmp98, label %if.then100, label %if.else104

if.then100:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 3, ptr %if_port, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 855638016) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1761083648) #5, !srcloc !46
  br label %if.end110

if.else104:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %if_port, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 838860800) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 2028994816) #5, !srcloc !46
  br label %if.end110

if.end110:                                        ; preds = %if.else104, %if.then100, %if.else83.if.end110_crit_edge, %if.end78.if.end110_crit_edge
  %new_csr6.0 = phi i32 [ %and12, %if.end78.if.end110_crit_edge ], [ 25559040, %if.then100 ], [ 4325376, %if.else104 ], [ %and12, %if.else83.if.end110_crit_edge ]
  %next_tick.1 = phi i32 [ 300, %if.end78.if.end110_crit_edge ], [ 300, %if.then100 ], [ 300, %if.else104 ], [ 100, %if.else83.if.end110_crit_edge ]
  %40 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %csr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %new_csr6.0)
  %cmp112.not = icmp eq i32 %41, %new_csr6.0
  br i1 %cmp112.not, label %if.end110.too_good_connection_crit_edge, label %if.then114

if.end110.too_good_connection_crit_edge:          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %too_good_connection

if.then114:                                       ; preds = %if.end110
  %42 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %new_csr6.0, ptr %csr6, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %43 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %44, i32 0, i32 12
  %46 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %45)
  %cmp.not.i.i = icmp eq i32 %47, %45
  br i1 %cmp.not.i.i, label %if.then114.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.then114.netif_trans_update.exit_crit_edge:     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %45, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.then114.netif_trans_update.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %49 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp116 = icmp sgt i32 %49, 1
  br i1 %cmp116, label %do.end121, label %netif_trans_update.exit.too_good_connection_crit_edge

netif_trans_update.exit.too_good_connection_crit_edge: ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %too_good_connection

do.end121:                                        ; preds = %netif_trans_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev122 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %50 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %if_port, align 2
  %idxprom124 = zext i8 %51 to i32
  %arrayidx125 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom124
  %52 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx125, align 4
  %54 = ptrtoint ptr %medialock to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load126 = load i16, ptr %medialock, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load126)
  %tobool129.not = icmp sgt i16 %bf.load126, -1
  %cond = select i1 %tobool129.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev122, ptr noundef nonnull @.str.9, ptr noundef %53, ptr noundef nonnull %cond, i32 noundef %new_csr6.0) #8
  br label %too_good_connection

too_good_connection:                              ; preds = %do.end121, %netif_trans_update.exit.too_good_connection_crit_edge, %if.end110.too_good_connection_crit_edge, %if.else43.too_good_connection_crit_edge, %if.then42, %if.then37, %if.then4, %entry.too_good_connection_crit_edge
  %next_tick.3 = phi i32 [ %spec.select, %if.then4 ], [ 6000, %entry.too_good_connection_crit_edge ], [ 100, %if.then37 ], [ 6000, %if.then42 ], [ %next_tick.1, %do.end121 ], [ %next_tick.1, %netif_trans_update.exit.too_good_connection_crit_edge ], [ %next_tick.1, %if.end110.too_good_connection_crit_edge ], [ 6000, %if.else43.too_good_connection_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %55, %next_tick.3
  %call136 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool139.not = icmp eq i32 %56, 0
  br i1 %tobool139.not, label %if.then140, label %too_good_connection.if.end153_crit_edge

too_good_connection.if.end153_crit_edge:          ; preds = %too_good_connection
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

if.then140:                                       ; preds = %too_good_connection
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %57 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp141 = icmp sgt i32 %57, 1
  br i1 %cmp141, label %do.end146, label %if.then140.if.end148_crit_edge

if.then140.if.end148_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.end146:                                        ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  %dev147 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev147, ptr noundef nonnull @.str.15) #8
  br label %if.end148

if.end148:                                        ; preds = %do.end146, %if.then140.if.end148_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %58 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %59) #5
  %call149 = tail call i32 @tulip_refill_rx(ptr noundef %1) #5
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %61) #5
  %chip_id = getelementptr i8, ptr %t, i32 -240
  %62 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip_id, align 8
  %valid_intrs = getelementptr [0 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %63, i32 2
  %64 = ptrtoint ptr %valid_intrs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %valid_intrs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %66) #5, !srcloc !46
  br label %if.end153

if.end153:                                        ; preds = %if.end148, %too_good_connection.if.end153_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_refill_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 41, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pnic_do_nway.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 59, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pnic_lnk_change.__UNIQUE_ID_ddebug341, !7, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 115, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @pnic_timer.__UNIQUE_ID_ddebug342, !11, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 126, i32 5}
!16 = !{ptr @pnic_timer.__UNIQUE_ID_ddebug343, !15, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 152, i32 6}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pnic_timer._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @pnic_timer._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dec/tulip/pnic.c", i32 164, i32 4}
!27 = !{ptr @pnic_timer._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pnic_timer._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !30, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 4201639}
!44 = !{i64 2151741988}
!45 = !{i64 2151743343}
!46 = !{i64 4201221}
!47 = !{i64 2148720413, i64 2148720418, i64 2148720431, i64 2148720475, i64 2148720509, i64 2148720530}
!48 = !{i64 2156403990}
!49 = !{i64 2156403755}
