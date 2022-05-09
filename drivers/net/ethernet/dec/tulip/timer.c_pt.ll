; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/timer.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mediatable = type { i16, i8, i8, i8, i32, i32, [0 x %struct.medialeaf] }
%struct.medialeaf = type { i8, i8, ptr }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@tulip_media_task.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tulip_media_task\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/timer.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Media selection tick, %s, status %08x mode %08x SIA %08x %08x %08x %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@tulip_media_task.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"network media monitor CSR6 %08x CSR12 0x%02x\0A\00", [50 x i8] zeroinitializer }, align 32
@tulip_media_task.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Transceiver monitor tick CSR12=%#02x, no media sense\0A\00", [42 x i8] zeroinitializer }, align 32
@tulip_media_task.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Transceiver monitor tick: CSR12=%#02x bit %d is %d, expecting %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tulip_media_task.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Link beat detected for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tulip_media_cap = external dso_local local_unnamed_addr constant [0 x i8], align 1
@tulip_media_task.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 25, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"No link beat on media %s, trying transceiver type %s\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mxic_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 149, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MXIC negotiation status %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxic_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxic_timer._entry_ptr = internal global ptr @mxic_timer._entry, section ".printk_index", align 4
@comet_timer.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comet_timer\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Comet link status %04x partner capability %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 28, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 48, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 62, i32 6 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 71, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 79, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 98, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 148, i32 3 }
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/timer.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 164, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 546, i32 4 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mxic_timer._entry, ptr @mxic_timer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxic_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tulip_media_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2556
  %dev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %base_addr = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !46
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %6 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp sgt i32 %6, 2
  br i1 %cmp, label %do.body3, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %if.end22)) #5
          to label %if.then9 [label %if.end22], !srcloc !48

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %7 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %add.ptr10 = getelementptr i8, ptr %3, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !46
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %add.ptr12 = getelementptr i8, ptr %3, i32 48
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !46
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %add.ptr14 = getelementptr i8, ptr %3, i32 104
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !46
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %add.ptr16 = getelementptr i8, ptr %3, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !46
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %add.ptr18 = getelementptr i8, ptr %3, i32 120
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #5, !srcloc !46
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug340, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %5, i32 noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %if.end22

if.end22:                                         ; preds = %if.then9, %do.body3, %entry.if.end22_crit_edge
  %mtable = getelementptr i8, ptr %work, i32 -40
  %21 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mtable, align 4
  %cmp23 = icmp eq ptr %22, null
  br i1 %cmp23, label %if.then24, label %if.end51

if.then24:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %23 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp25 = icmp sgt i32 %23, 2
  br i1 %cmp25, label %do.body28, label %if.then24.cleanup261_crit_edge

if.then24.cleanup261_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup261

do.body28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %cleanup261)) #5
          to label %if.then42 [label %cleanup261], !srcloc !48

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr43 = getelementptr i8, ptr %3, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #5, !srcloc !46
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %and = and i32 %5, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug341, ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %and) #5
  br label %cleanup261

if.end51:                                         ; preds = %if.end22
  %cur_index = getelementptr i8, ptr %work, i32 -36
  %26 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cur_index, align 8
  %arrayidx54 = getelementptr %struct.mediatable, ptr %22, i32 0, i32 6, i32 %27
  %leafdata = getelementptr %struct.mediatable, ptr %22, i32 0, i32 6, i32 %27, i32 2
  %28 = ptrtoint ptr %leafdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %leafdata, align 4
  %30 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx54, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.end51.cleanup261_crit_edge [
    i8 0, label %if.end51.sw.bb55_crit_edge
    i8 4, label %if.end51.sw.bb55_crit_edge375
    i8 1, label %if.end51.actually_mii_crit_edge
    i8 3, label %if.end51.actually_mii_crit_edge376
  ]

if.end51.actually_mii_crit_edge376:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %actually_mii

if.end51.actually_mii_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %actually_mii

if.end51.sw.bb55_crit_edge375:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55

if.end51.sw.bb55_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb55

if.end51.cleanup261_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup261

sw.bb55:                                          ; preds = %if.end51.sw.bb55_crit_edge, %if.end51.sw.bb55_crit_edge375
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp58 = icmp eq i8 %31, 4
  %cond = select i1 %cmp58, i32 5, i32 2
  %arrayidx60 = getelementptr i8, ptr %29, i32 %cond
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx60, align 1
  %add = add nuw nsw i32 %cond, 1
  %arrayidx61 = getelementptr i8, ptr %29, i32 %add
  %35 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %36)
  %tobool64.not = icmp sgt i8 %36, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %37 = load i32, ptr @tulip_debug, align 4
  br i1 %tobool64.not, label %if.end104, label %if.then65

if.then65:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp66 = icmp sgt i32 %37, 1
  br i1 %cmp66, label %do.body70, label %if.then65.if.end90_crit_edge

if.then65.if.end90_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

do.body70:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %if.end90)) #5
          to label %if.then84 [label %if.end90], !srcloc !48

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug342, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %5) #5
  br label %if.end90

if.end90:                                         ; preds = %if.then84, %do.body70, %if.then65.if.end90_crit_edge
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %39)
  %cmp93 = icmp eq i8 %39, 4
  br i1 %cmp93, label %if.then95, label %if.end90.cleanup261_crit_edge

if.end90.cleanup261_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup261

if.then95:                                        ; preds = %if.end90
  %media = getelementptr %struct.mediatable, ptr %22, i32 0, i32 6, i32 %27, i32 1
  %40 = ptrtoint ptr %media to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %media, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp97 = icmp ne i8 %41, 3
  %and99 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %or.cond = select i1 %cmp97, i1 true, i1 %tobool100.not
  br i1 %or.cond, label %if.then95.cleanup261_crit_edge, label %if.then95.select_next_media.preheader_crit_edge

if.then95.select_next_media.preheader_crit_edge:  ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %select_next_media.preheader

if.then95.cleanup261_crit_edge:                   ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup261

if.end104:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp105 = icmp sgt i32 %37, 2
  br i1 %cmp105, label %do.body109, label %if.end104.if.end140_crit_edge

if.end104.if.end140_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end140

do.body109:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %if.end140)) #5
          to label %if.then123 [label %if.end140], !srcloc !48

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %42 = lshr i8 %34, 1
  %43 = and i8 %42, 7
  %and125 = zext i8 %43 to i32
  %44 = lshr i32 %5, %and125
  %45 = and i32 %44, 1
  %46 = xor i8 %34, -1
  %47 = lshr i8 %46, 7
  %.not = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug343, ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %and125, i32 noundef %45, i32 noundef %.not) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then123, %do.body109, %if.end104.if.end140_crit_edge
  %.lobit = lshr i8 %34, 7
  %48 = zext i8 %.lobit to i32
  %49 = lshr i8 %34, 1
  %50 = and i8 %49, 7
  %and146 = zext i8 %50 to i32
  %51 = lshr i32 %5, %and146
  %52 = and i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %48)
  %cmp151.not = icmp eq i32 %52, %48
  br i1 %cmp151.not, label %if.end190, label %if.then153

if.then153:                                       ; preds = %if.end140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %53 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp154 = icmp sgt i32 %53, 2
  br i1 %cmp154, label %do.body158, label %if.then153.if.end182_crit_edge

if.then153.if.end182_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end182

do.body158:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %if.end182)) #5
          to label %if.then172 [label %if.end182], !srcloc !48

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #7
  %media173 = getelementptr %struct.mediatable, ptr %22, i32 0, i32 6, i32 %27, i32 1
  %54 = ptrtoint ptr %media173 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %media173, align 1
  %56 = and i8 %55, 31
  %and175 = zext i8 %56 to i32
  %arrayidx176 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %and175
  %57 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx176, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug344, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef %58) #5
  br label %if.end182

if.end182:                                        ; preds = %if.then172, %do.body158, %if.then153.if.end182_crit_edge
  %arrayidx183 = getelementptr i8, ptr %29, i32 2
  %59 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx183, align 1
  %61 = and i8 %60, 97
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %cmp186 = icmp eq i8 %61, 1
  br i1 %cmp186, label %if.end182.actually_mii_crit_edge, label %if.end189

if.end182.actually_mii_crit_edge:                 ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #7
  br label %actually_mii

if.end189:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_on(ptr noundef %1) #5
  br label %cleanup261

if.end190:                                        ; preds = %if.end140
  tail call void @netif_carrier_off(ptr noundef %1) #5
  %medialock = getelementptr i8, ptr %work, i32 -608
  %62 = ptrtoint ptr %medialock to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %medialock, align 4
  %63 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool191.not = icmp eq i16 %63, 0
  br i1 %tobool191.not, label %if.end190.select_next_media.preheader_crit_edge, label %if.end190.cleanup261_crit_edge

if.end190.cleanup261_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup261

if.end190.select_next_media.preheader_crit_edge:  ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %select_next_media.preheader

select_next_media.preheader:                      ; preds = %if.end190.select_next_media.preheader_crit_edge, %if.then95.select_next_media.preheader_crit_edge
  %if_port207 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  br label %select_next_media

select_next_media:                                ; preds = %if.end201.select_next_media_crit_edge, %select_next_media.preheader
  %64 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_index, align 8
  %dec = add i32 %65, -1
  store i32 %dec, ptr %cur_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp195 = icmp slt i32 %dec, 0
  br i1 %cmp195, label %if.then197, label %select_next_media.if.end201_crit_edge

select_next_media.if.end201_crit_edge:            ; preds = %select_next_media
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.then197:                                       ; preds = %select_next_media
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mtable, align 4
  %leafcount = getelementptr inbounds %struct.mediatable, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %leafcount to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %leafcount, align 2
  %conv199 = zext i8 %69 to i32
  %sub = add nsw i32 %conv199, -1
  %70 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub, ptr %cur_index, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then197, %select_next_media.if.end201_crit_edge
  %71 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mtable, align 4
  %73 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_index, align 8
  %media206 = getelementptr %struct.mediatable, ptr %72, i32 0, i32 6, i32 %74, i32 1
  %75 = ptrtoint ptr %media206 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %media206, align 1
  %77 = ptrtoint ptr %if_port207 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %if_port207, align 2
  %idxprom209 = zext i8 %76 to i32
  %arrayidx210 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom209
  %78 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx210, align 1
  %80 = and i8 %79, 1
  %tobool213.not = icmp eq i8 %80, 0
  br i1 %tobool213.not, label %if.end215, label %if.end201.select_next_media_crit_edge

if.end201.select_next_media_crit_edge:            ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  br label %select_next_media

if.end215:                                        ; preds = %if.end201
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %81 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp216 = icmp sgt i32 %81, 1
  br i1 %cmp216, label %do.body220, label %if.end215.if.end251_crit_edge

if.end215.if.end251_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end251

do.body220:                                       ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_media_task.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_media_task, %if.end251)) #5
          to label %if.then234 [label %if.end251], !srcloc !48

if.then234:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #7
  %media235 = getelementptr %struct.mediatable, ptr %22, i32 0, i32 6, i32 %27, i32 1
  %82 = ptrtoint ptr %media235 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %media235, align 1
  %84 = and i8 %83, 31
  %and237 = zext i8 %84 to i32
  %arrayidx238 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %and237
  %85 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx238, align 4
  %87 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mtable, align 4
  %89 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %cur_index, align 8
  %media243 = getelementptr %struct.mediatable, ptr %88, i32 0, i32 6, i32 %90, i32 1
  %91 = ptrtoint ptr %media243 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %media243, align 1
  %idxprom244 = zext i8 %92 to i32
  %arrayidx245 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom244
  %93 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx245, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_media_task.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef %86, ptr noundef %94) #5
  br label %if.end251

if.end251:                                        ; preds = %if.then234, %do.body220, %if.end215.if.end251_crit_edge
  tail call void @tulip_select_media(ptr noundef %1, i32 noundef 0) #5
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr)
  br label %cleanup261

actually_mii:                                     ; preds = %if.end182.actually_mii_crit_edge, %if.end51.actually_mii_crit_edge, %if.end51.actually_mii_crit_edge376
  %call254 = tail call i32 @tulip_check_duplex(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %if.then257, label %if.else

if.then257:                                       ; preds = %actually_mii
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_off(ptr noundef %1) #5
  br label %cleanup261

if.else:                                          ; preds = %actually_mii
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_on(ptr noundef %1) #5
  br label %cleanup261

cleanup261:                                       ; preds = %if.else, %if.then257, %if.end251, %if.end190.cleanup261_crit_edge, %if.end189, %if.then95.cleanup261_crit_edge, %if.end90.cleanup261_crit_edge, %if.end51.cleanup261_crit_edge, %if.then42, %do.body28, %if.then24.cleanup261_crit_edge
  %next_tick.2 = phi i32 [ 6000, %if.then42 ], [ 6000, %if.then24.cleanup261_crit_edge ], [ 200, %if.end51.cleanup261_crit_edge ], [ 300, %if.then257 ], [ 6000, %if.else ], [ 6000, %do.body28 ], [ 200, %if.end190.cleanup261_crit_edge ], [ 200, %if.end90.cleanup261_crit_edge ], [ 200, %if.then95.cleanup261_crit_edge ], [ 200, %if.end189 ], [ 240, %if.end251 ]
  %lock = getelementptr i8, ptr %work, i32 -716
  %call271 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %timeout_recovery = getelementptr i8, ptr %work, i32 -608
  %95 = ptrtoint ptr %timeout_recovery to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load276 = load i16, ptr %timeout_recovery, align 4
  %bf.clear277 = and i16 %bf.load276, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear277)
  %tobool279.not = icmp eq i16 %bf.clear277, 0
  br i1 %tobool279.not, label %cleanup261.if.end284_crit_edge, label %if.then280

cleanup261.if.end284_crit_edge:                   ; preds = %cleanup261
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end284

if.then280:                                       ; preds = %cleanup261
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr) #5
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !50
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 8
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 36, i32 5
  %98 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %99, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %100 = ptrtoint ptr %timeout_recovery to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load282 = load i16, ptr %timeout_recovery, align 4
  %bf.clear283 = and i16 %bf.load282, -2
  store i16 %bf.clear283, ptr %timeout_recovery, align 4
  br label %if.end284

if.end284:                                        ; preds = %if.then280, %cleanup261.if.end284_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call271) #5
  %timer = getelementptr i8, ptr %work, i32 -820
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %add286 = add i32 %101, %next_tick.2
  %call287 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add286) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_select_media(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !46
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !51
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
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
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !48

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !46
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !46
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %13) #5
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !50
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !52
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_check_duplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxic_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %0 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr = getelementptr i8, ptr %t, i32 808
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_addr, align 8
  %dev1 = getelementptr i8, ptr %t, i32 864
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 133
  %add.ptr3 = getelementptr i8, ptr %2, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !46
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %6) #8
  br label %if.then4

if.then4:                                         ; preds = %do.end, %entry.if.then4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 6000
  %call5 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comet_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 864
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %2 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.body2, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @comet_timer.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@comet_timer, %if.end15)) #5
          to label %if.then7 [label %if.end15], !srcloc !48

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %phys = getelementptr i8, ptr %t, i32 774
  %3 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phys, align 2
  %conv = sext i8 %4 to i32
  %call8 = tail call i32 @tulip_mdio_read(ptr noundef %1, i32 noundef %conv, i32 noundef 1) #5
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phys, align 2
  %conv11 = sext i8 %6 to i32
  %call12 = tail call i32 @tulip_mdio_read(ptr noundef %1, i32 noundef %conv11, i32 noundef 5) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @comet_timer.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %call8, i32 noundef %call12) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then7, %do.body2, %entry.if.end15_crit_edge
  %call16 = tail call i32 @tulip_check_duplex(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_off(ptr noundef %1) #5
  br label %if.end20

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_on(ptr noundef %1) #5
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 200
  %call21 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_mdio_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 28, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 48, i32 5}
!8 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug341, !7, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 62, i32 6}
!11 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug342, !10, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 71, i32 5}
!14 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug343, !13, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 79, i32 6}
!17 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug344, !16, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 98, i32 5}
!20 = !{ptr @tulip_media_task.__UNIQUE_ID_ddebug345, !19, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 148, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mxic_timer._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @mxic_timer._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dec/tulip/timer.c", i32 164, i32 3}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @comet_timer.__UNIQUE_ID_ddebug346, !29, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !33, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 6546827}
!47 = !{i64 2154087176}
!48 = !{i64 2148710546, i64 2148710551, i64 2148710564, i64 2148710608, i64 2148710642, i64 2148710663}
!49 = !{i64 2154088531}
!50 = !{i64 6546409}
!51 = !{i64 2156403774}
!52 = !{i64 2156403539}
