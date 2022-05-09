; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/mc5.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/mc5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.120], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.120 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.119, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.119 = type { ptr }

@t3_mc5_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCAM reset timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"t3_mc5_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/chelsio/cxgb3/mc5.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_mc5_init._entry_ptr = internal global ptr @t3_mc5_init._entry, section ".printk_index", align 4
@t3_mc5_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported TCAM type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@t3_mc5_init._entry_ptr.7 = internal global ptr @t3_mc5_init._entry.5, section ".printk_index", align 4
@t3_mc5_intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 373, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MC5 parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t3_mc5_intr_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@t3_mc5_intr_handler._entry_ptr = internal global ptr @t3_mc5_intr_handler._entry, section ".printk_index", align 4
@t3_mc5_intr_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 378, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MC5 request queue parity error\0A\00", [32 x i8] zeroinitializer }, align 32
@t3_mc5_intr_handler._entry_ptr.13 = internal global ptr @t3_mc5_intr_handler._entry.11, section ".printk_index", align 4
@t3_mc5_intr_handler._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.2, i32 383, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MC5 dispatch queue parity error\0A\00", [63 x i8] zeroinitializer }, align 32
@t3_mc5_intr_handler._entry_ptr.16 = internal global ptr @t3_mc5_intr_handler._entry.14, section ".printk_index", align 4
@t3_mc5_prep.tcam_part_size = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 65536, i32 131072, i32 262144, i32 32768], [16 x i8] zeroinitializer }, align 32
@mc5_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MC5 timeout writing to TCAM address 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mc5_write\00", [22 x i8] zeroinitializer }, align 32
@mc5_write._entry_ptr = internal global ptr @mc5_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 326, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 352, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 373, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 378, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 383, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"tcam_part_size\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 405, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [44 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/mc5.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 118, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @mc5_write._entry, ptr @mc5_write._entry_ptr, ptr @t3_mc5_init._entry, ptr @t3_mc5_init._entry.5, ptr @t3_mc5_init._entry_ptr, ptr @t3_mc5_init._entry_ptr.7, ptr @t3_mc5_intr_handler._entry, ptr @t3_mc5_intr_handler._entry.11, ptr @t3_mc5_intr_handler._entry.14, ptr @t3_mc5_intr_handler._entry_ptr, ptr @t3_mc5_intr_handler._entry_ptr.13, ptr @t3_mc5_intr_handler._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @t3_mc5_prep.tcam_part_size, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_intr_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_intr_handler._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mc5_prep.tcam_part_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc5_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mc5_init(ptr nocapture noundef %mc5, i32 noundef %nservers, i32 noundef %nfilters, i32 noundef %nroutes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tcam_size1 = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 1
  %0 = ptrtoint ptr %tcam_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcam_size1, align 4
  %2 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %nroutes)
  %cmp = icmp ugt i32 %nroutes, 2048
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add = add i32 %nfilters, %nservers
  %add2 = add i32 %add, %nroutes
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %1)
  %cmp3 = icmp ugt i32 %add2, %1
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1796
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %7 = and i32 %6, -50331649
  %mode = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp6 = icmp eq i8 %9, 2
  %conv7 = zext i1 %cmp6 to i32
  %10 = or i32 %7, 33554432
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %or8 = or i32 %11, %conv7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or8) #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %14, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %12) #5, !srcloc !45
  %call.i = tail call i32 @t3_wait_op_done_val(ptr noundef %3, i32 noundef 1796, i32 noundef 4, i32 noundef 1, i32 noundef 500, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %sub = sub i32 %1, %nroutes
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %sub) #5
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %19, i32 1804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %17) #5, !srcloc !45
  %sub14 = sub i32 %sub, %nfilters
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %sub14) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %22, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %20) #5, !srcloc !45
  %sub17 = sub i32 %sub14, %nservers
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %sub17) #5
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %25, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %23) #5, !srcloc !45
  %parity_enabled = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 3
  %26 = ptrtoint ptr %parity_enabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %parity_enabled, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %28, i32 1920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %30, i32 1924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #5, !srcloc !45
  %31 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mc5, align 4
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp.i = icmp eq i8 %34, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %35 = select i1 %cmp.i, i32 285212672, i32 268435456
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #5, !srcloc !45
  %part_type = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 2
  %38 = ptrtoint ptr %part_type to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %part_type, align 4
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i8 %39, label %do.end24 [
    i8 4, label %sw.bb
    i8 5, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end12
  %41 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mc5, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %regs.i.i74 = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %44, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 353703168) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %45 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %46, i32 1836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 33554432) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %47 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %48, i32 1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %50, i32 2000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %52, i32 2004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 33554432) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %53 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %54, i32 2008
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 50331648) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %56, i32 2012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 39845888) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %58, i32 2016
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 50331648) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %60, i32 2020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 33554432) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %62, i32 2024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 50331648) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %64, i32 2028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 33554432) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %65 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %66, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 40894464) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %67 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %68, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %70, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %72, i32 1908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 83886080) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %73 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 65535) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %76, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %78, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i85.i = getelementptr i8, ptr %80, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i85.i, i32 100669440) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %82, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 16777216) #5, !srcloc !45
  %call.i.i.i.i = tail call i32 @t3_wait_op_done_val(ptr noundef %42, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.end.i, label %mc5_write.exit.i

mc5_write.exit.i:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 3
  %83 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, i32 noundef 1572870) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %85 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i87.i = getelementptr i8, ptr %86, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i88.i = getelementptr i8, ptr %88, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i88.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %89 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i89.i = getelementptr i8, ptr %90, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i89.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i91.i = getelementptr i8, ptr %92, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i91.i, i32 33560576) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %93 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i92.i = getelementptr i8, ptr %94, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i92.i, i32 16777216) #5, !srcloc !45
  %call.i.i.i93.i = tail call i32 @t3_wait_op_done_val(ptr noundef %42, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i93.i)
  %cmp.i94.i = icmp eq i32 %call.i.i.i93.i, 0
  br i1 %cmp.i94.i, label %lor.lhs.false.i, label %mc5_write.exit99.i

mc5_write.exit99.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i95.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 3
  %95 = ptrtoint ptr %pdev.i95.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pdev.i95.i, align 8
  %dev.i96.i = getelementptr inbounds %struct.pci_dev, ptr %96, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96.i, ptr noundef nonnull @.str.17, i32 noundef 1572866) #8
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %97 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i101.i = getelementptr i8, ptr %98, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101.i, i32 67115008) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i102.i = getelementptr i8, ptr %100, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i102.i, i32 16777216) #5, !srcloc !45
  %call.i.i.i103.i = tail call i32 @t3_wait_op_done_val(ptr noundef %42, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i103.i)
  %cmp.i104.i = icmp eq i32 %call.i.i.i103.i, 0
  br i1 %cmp.i104.i, label %lor.lhs.false.i.for.body.i_crit_edge, label %mc5_write.exit109.thread.i

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

mc5_write.exit109.thread.i:                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i105.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 3
  %101 = ptrtoint ptr %pdev.i105.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i105.i, align 8
  %dev.i106.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i106.i, ptr noundef nonnull @.str.17, i32 noundef 1572868) #8
  br label %sw.epilog

for.cond.i:                                       ; preds = %if.end14.i
  %inc.i = add nuw nsw i32 %i.0156.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.0156.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %103 = add nsw i32 %i.0156.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %103)
  %104 = icmp ult i32 %103, 3
  br i1 %104, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %105 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i111.i = getelementptr i8, ptr %106, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111.i, i32 -100663297) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %107 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i112.i = getelementptr i8, ptr %108, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i112.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i113.i = getelementptr i8, ptr %110, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i113.i, i32 -16777216) #5, !srcloc !45
  br label %if.end14.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0156.i)
  %cmp10.i = icmp eq i32 %i.0156.i, 15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %111 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i115.i = getelementptr i8, ptr %112, i32 1928
  br i1 %cmp10.i, label %if.then11.i, label %if.else12.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115.i, i32 -100663297) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %113 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i116.i = getelementptr i8, ptr %114, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i116.i, i32 125894655) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %115 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i117.i = getelementptr i8, ptr %116, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i117.i, i32 -16777216) #5, !srcloc !45
  br label %if.end14.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %117 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i120.i = getelementptr i8, ptr %118, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i120.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %119 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i121.i = getelementptr i8, ptr %120, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i121.i, i32 -16777216) #5, !srcloc !45
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else12.i, %if.then11.i, %if.then9.i
  %add.i = add nuw nsw i32 %i.0156.i, 1572896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %121 = tail call i32 @llvm.bswap.i32(i32 %add.i) #5
  %122 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i123.i = getelementptr i8, ptr %123, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123.i, i32 %121) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %124 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i124.i = getelementptr i8, ptr %125, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i124.i, i32 16777216) #5, !srcloc !45
  %call.i.i.i125.i = tail call i32 @t3_wait_op_done_val(ptr noundef %42, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i125.i)
  %cmp.i126.i = icmp eq i32 %call.i.i.i125.i, 0
  br i1 %cmp.i126.i, label %for.cond.i, label %mc5_write.exit131.i

mc5_write.exit131.i:                              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i127.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 3
  %126 = ptrtoint ptr %pdev.i127.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pdev.i127.i, align 8
  %dev.i128.i = getelementptr inbounds %struct.pci_dev, ptr %127, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i128.i, ptr noundef nonnull @.str.17, i32 noundef %add.i) #8
  br label %sw.epilog

for.end.i:                                        ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %128 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i133.i = getelementptr i8, ptr %129, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i133.i, i32 16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %130 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i4.i134.i = getelementptr i8, ptr %131, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i134.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %132 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i6.i135.i = getelementptr i8, ptr %133, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i135.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i137.i = getelementptr i8, ptr %135, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137.i, i32 6144) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %regs.i.i74 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i.i74, align 4
  %add.ptr.i.i.i138.i = getelementptr i8, ptr %137, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i138.i, i32 16777216) #5, !srcloc !45
  %call.i.i.i139.i = tail call i32 @t3_wait_op_done_val(ptr noundef %42, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i139.i)
  %cmp.i140.i = icmp eq i32 %call.i.i.i139.i, 0
  br i1 %cmp.i140.i, label %if.end22.i, label %mc5_write.exit145.i

mc5_write.exit145.i:                              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i141.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 3
  %138 = ptrtoint ptr %pdev.i141.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdev.i141.i, align 8
  %dev.i142.i = getelementptr inbounds %struct.pci_dev, ptr %139, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i142.i, ptr noundef nonnull @.str.17, i32 noundef 1572864) #8
  br label %sw.epilog

if.end22.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = tail call fastcc i32 @init_mask_data_array(ptr noundef %mc5, i32 noundef 524288, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end12
  %140 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mc5, align 4
  %rev.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 10, i32 13
  %142 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i76 = icmp eq i32 %143, 0
  %cond.i = select i1 %cmp.i76, i32 851985, i32 851986
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %144 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #5
  %regs.i.i77 = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 2
  %145 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %146, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %144) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %147 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %148, i32 1996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 67108864) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %149 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i64.i = getelementptr i8, ptr %150, i32 2000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 67108864) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %151 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %152, i32 2004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 54001664) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %153 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %154, i32 2012
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 50331648) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %156, i32 2020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 54001664) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %157 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %158, i32 2028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 54001664) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %159 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %160, i32 2032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 50855936) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %161 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %162, i32 2036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 67108864) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %163 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i78.i = getelementptr i8, ptr %164, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 83886080) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %166, i32 1836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 50331648) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %167 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %168, i32 1908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 83886080) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %169 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i79 = getelementptr i8, ptr %170, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i79, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %171 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i4.i.i80 = getelementptr i8, ptr %172, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i80, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %173 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i6.i.i81 = getelementptr i8, ptr %174, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i81, i32 -16777216) #5, !srcloc !45
  br label %for.body.i89

for.cond.i84:                                     ; preds = %for.body.i89
  %inc.i82 = add nuw nsw i32 %i.0139.i, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, 7
  br i1 %exitcond.not.i83, label %for.body4.preheader.i, label %for.cond.i84.for.body.i89_crit_edge

for.cond.i84.for.body.i89_crit_edge:              ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i89

for.body4.preheader.i:                            ; preds = %for.cond.i84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %175 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i86.i = getelementptr i8, ptr %176, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.i, i32 805306368) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %177 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i87.i = getelementptr i8, ptr %178, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i87.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i88.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i88.i)
  %cmp.i89.i = icmp eq i32 %call.i.i.i88.i, 0
  br i1 %cmp.i89.i, label %for.cond2.i, label %for.body4.preheader.i.mc5_write.exit94.i_crit_edge

for.body4.preheader.i.mc5_write.exit94.i_crit_edge: ; preds = %for.body4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc5_write.exit94.i

for.body.i89:                                     ; preds = %for.cond.i84.for.body.i89_crit_edge, %sw.bb20
  %i.0139.i = phi i32 [ 0, %sw.bb20 ], [ %inc.i82, %for.cond.i84.for.body.i89_crit_edge ]
  %add.i85 = add nuw nsw i32 %i.0139.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %179 = tail call i32 @llvm.bswap.i32(i32 %add.i85) #5
  %180 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i84.i = getelementptr i8, ptr %181, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i84.i, i32 %179) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %182 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i.i86 = getelementptr i8, ptr %183, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i86, i32 67108864) #5, !srcloc !45
  %call.i.i.i.i87 = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i87)
  %cmp.i.i88 = icmp eq i32 %call.i.i.i.i87, 0
  br i1 %cmp.i.i88, label %for.cond.i84, label %mc5_write.exit.i92

mc5_write.exit.i92:                               ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i.i90 = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %184 = ptrtoint ptr %pdev.i.i90 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pdev.i.i90, align 8
  %dev.i.i91 = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i91, ptr noundef nonnull @.str.17, i32 noundef %add.i85) #8
  br label %sw.epilog

for.cond2.i:                                      ; preds = %for.body4.preheader.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %186 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i86.1.i = getelementptr i8, ptr %187, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.1.i, i32 822083584) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %188 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i87.1.i = getelementptr i8, ptr %189, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i87.1.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i88.1.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i88.1.i)
  %cmp.i89.1.i = icmp eq i32 %call.i.i.i88.1.i, 0
  br i1 %cmp.i89.1.i, label %for.cond2.1.i, label %for.cond2.i.mc5_write.exit94.i_crit_edge

for.cond2.i.mc5_write.exit94.i_crit_edge:         ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc5_write.exit94.i

for.cond2.1.i:                                    ; preds = %for.cond2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %190 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i86.2.i = getelementptr i8, ptr %191, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.2.i, i32 838860800) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %192 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i87.2.i = getelementptr i8, ptr %193, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i87.2.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i88.2.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i88.2.i)
  %cmp.i89.2.i = icmp eq i32 %call.i.i.i88.2.i, 0
  br i1 %cmp.i89.2.i, label %for.cond2.2.i, label %for.cond2.1.i.mc5_write.exit94.i_crit_edge

for.cond2.1.i.mc5_write.exit94.i_crit_edge:       ; preds = %for.cond2.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc5_write.exit94.i

for.cond2.2.i:                                    ; preds = %for.cond2.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %194 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i86.3.i = getelementptr i8, ptr %195, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86.3.i, i32 855638016) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %196 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i87.3.i = getelementptr i8, ptr %197, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i87.3.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i88.3.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i88.3.i)
  %cmp.i89.3.i = icmp eq i32 %call.i.i.i88.3.i, 0
  br i1 %cmp.i89.3.i, label %for.cond2.3.i, label %for.cond2.2.i.mc5_write.exit94.i_crit_edge

for.cond2.2.i.mc5_write.exit94.i_crit_edge:       ; preds = %for.cond2.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mc5_write.exit94.i

for.cond2.3.i:                                    ; preds = %for.cond2.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %198 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i96.i = getelementptr i8, ptr %199, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i96.i, i32 -100663297) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %200 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i4.i97.i = getelementptr i8, ptr %201, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i97.i, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %202 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i6.i98.i = getelementptr i8, ptr %203, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i98.i, i32 -16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %204 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i100.i = getelementptr i8, ptr %205, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100.i, i32 536870912) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i101.i = getelementptr i8, ptr %207, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i101.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i102.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i102.i)
  %cmp.i103.i = icmp eq i32 %call.i.i.i102.i, 0
  br i1 %cmp.i103.i, label %lor.lhs.false.i93, label %mc5_write.exit108.i

mc5_write.exit94.i:                               ; preds = %for.cond2.2.i.mc5_write.exit94.i_crit_edge, %for.cond2.1.i.mc5_write.exit94.i_crit_edge, %for.cond2.i.mc5_write.exit94.i_crit_edge, %for.body4.preheader.i.mc5_write.exit94.i_crit_edge
  %add5.lcssa.i = phi i32 [ 48, %for.body4.preheader.i.mc5_write.exit94.i_crit_edge ], [ 49, %for.cond2.i.mc5_write.exit94.i_crit_edge ], [ 50, %for.cond2.1.i.mc5_write.exit94.i_crit_edge ], [ 51, %for.cond2.2.i.mc5_write.exit94.i_crit_edge ]
  %pdev.i90.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %208 = ptrtoint ptr %pdev.i90.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %pdev.i90.i, align 8
  %dev.i91.i = getelementptr inbounds %struct.pci_dev, ptr %209, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i91.i, ptr noundef nonnull @.str.17, i32 noundef %add5.lcssa.i) #8
  br label %sw.epilog

mc5_write.exit108.i:                              ; preds = %for.cond2.3.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i104.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %210 = ptrtoint ptr %pdev.i104.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %pdev.i104.i, align 8
  %dev.i105.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i105.i, ptr noundef nonnull @.str.17, i32 noundef 32) #8
  br label %sw.epilog

lor.lhs.false.i93:                                ; preds = %for.cond2.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %212 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i110.i = getelementptr i8, ptr %213, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i110.i, i32 553648128) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %214 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i111.i = getelementptr i8, ptr %215, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i111.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i112.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i112.i)
  %cmp.i113.i = icmp eq i32 %call.i.i.i112.i, 0
  br i1 %cmp.i113.i, label %lor.lhs.false17.i, label %mc5_write.exit118.i

mc5_write.exit118.i:                              ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i114.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %216 = ptrtoint ptr %pdev.i114.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pdev.i114.i, align 8
  %dev.i115.i = getelementptr inbounds %struct.pci_dev, ptr %217, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i115.i, ptr noundef nonnull @.str.17, i32 noundef 33) #8
  br label %sw.epilog

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %218 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i120.i = getelementptr i8, ptr %219, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120.i, i32 603979776) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %220 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i121.i = getelementptr i8, ptr %221, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i121.i, i32 67108864) #5, !srcloc !45
  %call.i.i.i122.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i122.i)
  %cmp.i123.i = icmp eq i32 %call.i.i.i122.i, 0
  br i1 %cmp.i123.i, label %if.end21.i, label %mc5_write.exit128.i

mc5_write.exit128.i:                              ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i124.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %222 = ptrtoint ptr %pdev.i124.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %pdev.i124.i, align 8
  %dev.i125.i = getelementptr inbounds %struct.pci_dev, ptr %223, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i125.i, ptr noundef nonnull @.str.17, i32 noundef 36) #8
  br label %sw.epilog

if.end21.i:                                       ; preds = %lor.lhs.false17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %224 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i105 = getelementptr i8, ptr %225, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105, i32 -100663297) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %226 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %227, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 125894655) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %228 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %229, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -16777216) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %230 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i100 = getelementptr i8, ptr %231, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i100, i32 620756992) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %232 = ptrtoint ptr %regs.i.i77 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %regs.i.i77, align 4
  %add.ptr.i.i.i101 = getelementptr i8, ptr %233, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i101, i32 67108864) #5, !srcloc !45
  %call.i.i.i = tail call i32 @t3_wait_op_done_val(ptr noundef %141, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i102 = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i102, label %if.end25.i, label %mc5_write.exit

mc5_write.exit:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %141, i32 0, i32 3
  %234 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %235, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef 37) #8
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end21.i
  tail call fastcc void @dbgi_wr_data3(ptr noundef %141, i32 noundef -268435456, i32 noundef 0, i32 noundef 0) #5
  %call26.i = tail call fastcc i32 @mc5_write(ptr noundef %141, i32 noundef 3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.sw.epilog_crit_edge

if.end25.i.sw.epilog_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end29.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %call30.i = tail call fastcc i32 @init_mask_data_array(ptr noundef %mc5, i32 noundef 33554432, i32 noundef 16777216, i32 noundef 4, i32 noundef 1) #5
  br label %sw.epilog

do.end24:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %conv18 = zext i8 %39 to i32
  %pdev25 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 3
  %236 = ptrtoint ptr %pdev25 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev25, align 8
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %237, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.6, i32 noundef %conv18) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end24, %if.end29.i, %if.end25.i.sw.epilog_crit_edge, %mc5_write.exit, %mc5_write.exit128.i, %mc5_write.exit118.i, %mc5_write.exit108.i, %mc5_write.exit94.i, %mc5_write.exit.i92, %if.end22.i, %mc5_write.exit145.i, %mc5_write.exit131.i, %mc5_write.exit109.thread.i, %mc5_write.exit99.i, %mc5_write.exit.i
  %err.0 = phi i32 [ -22, %do.end24 ], [ %call23.i, %if.end22.i ], [ -5, %mc5_write.exit145.i ], [ -5, %mc5_write.exit131.i ], [ -5, %mc5_write.exit99.i ], [ -5, %mc5_write.exit.i ], [ -5, %mc5_write.exit109.thread.i ], [ %call30.i, %if.end29.i ], [ -5, %if.end25.i.sw.epilog_crit_edge ], [ -5, %mc5_write.exit ], [ -5, %mc5_write.exit108.i ], [ -5, %mc5_write.exit118.i ], [ -5, %mc5_write.exit128.i ], [ -5, %mc5_write.exit94.i ], [ -5, %mc5_write.exit.i92 ]
  %238 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mc5, align 4
  %240 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %241)
  %cmp.i96 = icmp eq i8 %241, 2
  %conv1.i = zext i1 %cmp.i96 to i32
  %shl6.i = select i1 %cmp.i96, i32 131072, i32 0
  %or.i = or i32 %shl6.i, %conv1.i
  %242 = ptrtoint ptr %parity_enabled to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %parity_enabled, align 1
  %conv7.i = zext i8 %243 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 6
  %or9.i = or i32 %or.i, %shl8.i
  %or10.i = or i32 %or9.i, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %244 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #5
  %regs.i.i97 = getelementptr inbounds %struct.adapter, ptr %239, i32 0, i32 2
  %245 = ptrtoint ptr %regs.i.i97 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regs.i.i97, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %246, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i98, i32 %244) #5, !srcloc !45
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %err.0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_mc5_intr_handler(ptr nocapture noundef %mc5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc5, align 4
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1860
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !42
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %parity_enabled = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 3
  %6 = ptrtoint ptr %parity_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %parity_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %stats = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stats, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %stats, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %do.end7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pdev8 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev8, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev9, ptr noundef nonnull @.str.12) #8
  %reqq_parity_err = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %reqq_parity_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reqq_parity_err, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, ptr %reqq_parity_err, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end7, %if.end.if.end12_crit_edge
  %and13 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %do.end18

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %pdev19 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev19, align 8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev20, ptr noundef nonnull @.str.15) #8
  %dispq_parity_err = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %dispq_parity_err to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dispq_parity_err, align 4
  %inc22 = add i32 %19, 1
  store i32 %inc22, ptr %dispq_parity_err, align 4
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %if.end12.if.end23_crit_edge
  %and24 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %active_rgn_full = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %active_rgn_full to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_rgn_full, align 4
  %inc28 = add i32 %21, 1
  store i32 %inc28, ptr %active_rgn_full, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %and30 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %nfa_srch_err = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %nfa_srch_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nfa_srch_err, align 4
  %inc34 = add i32 %23, 1
  store i32 %inc34, ptr %nfa_srch_err, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %and36 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %unknown_cmd = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 3
  %24 = ptrtoint ptr %unknown_cmd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unknown_cmd, align 4
  %inc40 = add i32 %25, 1
  store i32 %inc40, ptr %unknown_cmd, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %and42 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end47_crit_edge, label %if.then44

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %del_act_empty = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 5, i32 6
  %26 = ptrtoint ptr %del_act_empty to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %del_act_empty, align 4
  %inc46 = add i32 %27, 1
  store i32 %inc46, ptr %del_act_empty, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %and48 = and i32 %5, 196672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @t3_fatal_err(ptr noundef %1) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %29, i32 1860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %4) #5, !srcloc !45
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_fatal_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_mc5_prep(ptr noundef %adapter, ptr nocapture noundef writeonly %mc5, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1796
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !42
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %4 = ptrtoint ptr %mc5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %adapter, ptr %mc5, align 4
  %conv = trunc i32 %mode to i8
  %mode2 = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 4
  %5 = ptrtoint ptr %mode2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %mode2, align 2
  %shr = lshr i32 %3, 26
  %6 = trunc i32 %shr to i8
  %conv3 = and i8 %6, 3
  %part_type = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 2
  %and4 = lshr i32 %3, 28
  %7 = trunc i32 %and4 to i8
  %8 = and i8 %7, 4
  %9 = or i8 %8, %conv3
  %10 = ptrtoint ptr %part_type to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %part_type, align 4
  %and9 = and i32 %and4, 3
  %arrayidx = getelementptr [4 x i32], ptr @t3_mc5_prep.tcam_part_size, i32 0, i32 %and9
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %div23 = zext i1 %cmp to i32
  %storemerge = lshr i32 %12, %div23
  %tcam_size = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 1
  %13 = ptrtoint ptr %tcam_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %tcam_size, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_wait_op_done_val(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dbgi_wr_data3(ptr nocapture noundef readonly %adapter, i32 noundef %v1, i32 noundef %v2, i32 noundef %v3) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %v1) #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %v2) #5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %3) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %v3) #5
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %6) #5, !srcloc !45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc5_write(ptr noundef %adapter, i32 noundef %addr_lo, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr_lo) #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 2
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %cmd) #5
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #5, !srcloc !45
  %call.i.i = tail call i32 @t3_wait_op_done_val(ptr noundef %adapter, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp eq i32 %call.i.i, 0
  br i1 %cmp, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %addr_lo) #8
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_mask_data_array(ptr nocapture noundef readonly %mc5, i32 noundef %mask_array_base, i32 noundef %data_array_base, i32 noundef %write_cmd, i32 noundef %addr_shift) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc5, align 4
  %tcam_size = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 1
  %2 = ptrtoint ptr %tcam_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcam_size, align 4
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1812
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !42
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %mode = getelementptr inbounds %struct.mc5, ptr %mc5, i32 0, i32 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp eq i8 %9, 1
  %mul = zext i1 %cmp to i32
  %size72.0 = shl i32 %3, %mul
  %server_base.0 = shl i32 %7, %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #5, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size72.0)
  %cmp373.not = icmp eq i32 %size72.0, 0
  br i1 %cmp373.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %16 = tail call i32 @llvm.bswap.i32(i32 %write_cmd) #5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %size72.0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %shl = shl i32 %i.074, %addr_shift
  %add = add i32 %shl, %data_array_base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %add) #5
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %19, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i52, i32 %17) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %16) #5, !srcloc !45
  %call.i.i.i = tail call i32 @t3_wait_op_done_val(ptr noundef %1, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i, label %for.cond, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %23, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i4.i55 = getelementptr i8, ptr %25, i32 1932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i55, i32 -1) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i6.i56 = getelementptr i8, ptr %27, i32 1936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i56, i32 -16777216) #5, !srcloc !45
  br i1 %cmp373.not, label %for.end.cleanup_crit_edge, label %for.body11.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11.lr.ph:                                 ; preds = %for.end
  %28 = tail call i32 @llvm.bswap.i32(i32 %write_cmd) #5
  br label %for.body11

for.cond8:                                        ; preds = %if.end19
  %inc27 = add nuw i32 %i.176, 1
  %exitcond79.not = icmp eq i32 %inc27, %size72.0
  br i1 %exitcond79.not, label %for.cond8.cleanup_crit_edge, label %for.cond8.for.body11_crit_edge

for.cond8.for.body11_crit_edge:                   ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.cond8.cleanup_crit_edge:                      ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body11:                                       ; preds = %for.cond8.for.body11_crit_edge, %for.body11.lr.ph
  %i.176 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc27, %for.cond8.for.body11_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.176, i32 %server_base.0)
  %cmp12 = icmp eq i32 %i.176, %server_base.0
  br i1 %cmp12, label %if.then14, label %for.body11.if.end19_crit_edge

for.body11.if.end19_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp17 = icmp eq i8 %30, 1
  %cond = select i1 %cmp17, i32 -7, i32 -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %cond) #5
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %33, i32 1928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %31) #5, !srcloc !45
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %for.body11.if.end19_crit_edge
  %shl20 = shl i32 %i.176, %addr_shift
  %add21 = add i32 %shl20, %mask_array_base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %add21) #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %36, i32 1916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i60, i32 %34) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %38, i32 1912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i61, i32 %28) #5, !srcloc !45
  %call.i.i.i62 = tail call i32 @t3_wait_op_done_val(ptr noundef %1, i32 noundef 1968, i32 noundef 1, i32 noundef 1, i32 noundef 5, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i62)
  %cmp.i63 = icmp eq i32 %call.i.i.i62, 0
  br i1 %cmp.i63, label %for.cond8, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %add21.lcssa.sink = phi i32 [ %add21, %if.end19.cleanup.sink.split_crit_edge ], [ %add, %for.body.cleanup.sink.split_crit_edge ]
  %pdev.i64 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %pdev.i64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev.i64, align 8
  %dev.i65 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i65, ptr noundef nonnull @.str.17, i32 noundef %add21.lcssa.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.cond8.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -1, %cleanup.sink.split ], [ 0, %for.cond8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 326, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @t3_mc5_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @t3_mc5_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 352, i32 3}
!10 = !{ptr @t3_mc5_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @t3_mc5_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 373, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @t3_mc5_intr_handler._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @t3_mc5_intr_handler._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 378, i32 3}
!20 = !{ptr @t3_mc5_intr_handler._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @t3_mc5_intr_handler._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 383, i32 3}
!24 = !{ptr @t3_mc5_intr_handler._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @t3_mc5_intr_handler._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @t3_mc5_prep.tcam_part_size, !27, !"tcam_part_size", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 405, i32 22}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb3/mc5.c", i32 118, i32 2}
!30 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mc5_write._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mc5_write._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 6565860}
!43 = !{i64 2156820650}
!44 = !{i64 2156821040}
!45 = !{i64 6565442}
