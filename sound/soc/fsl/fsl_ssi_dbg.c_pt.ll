; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl_ssi_dbg.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl_ssi_dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_ssi_dbg = type { ptr, %struct.anon.68 }
%struct.anon.68 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@fsl_ssi_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @fsl_ssi_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rfrc=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tfrc=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmdau=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmddu=%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rxt=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdr1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdr0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tde1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tde0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"roe1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"roe0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tue1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tue0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tfs=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rfs=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tls=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rls=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rff1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rff0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tfe1=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tfe0=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 133, i32 22 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"fsl_ssi_stats_fops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 127, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 102, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 103, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 104, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 105, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 106, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 107, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 108, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 109, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 110, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 111, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 112, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 113, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 114, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 115, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 116, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 117, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 118, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 119, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 120, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 121, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [31 x i8] c"../sound/soc/fsl/fsl_ssi_dbg.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 122, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @.str, ptr @fsl_ssi_stats_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ssi_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fsl_ssi_dbg_isr(ptr noundef %dbg, i32 noundef %sisr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %sisr, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %stats = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stats, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %stats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %sisr, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %tfrc = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %tfrc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tfrc, align 4
  %inc5 = add i32 %3, 1
  store i32 %inc5, ptr %tfrc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %and7 = and i32 %sisr, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %cmdau = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %cmdau to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdau, align 4
  %inc11 = add i32 %5, 1
  store i32 %inc11, ptr %cmdau, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %and13 = and i32 %sisr, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %cmddu = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %cmddu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmddu, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr %cmddu, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %and19 = and i32 %sisr, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %rxt = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %rxt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxt, align 4
  %inc23 = add i32 %9, 1
  store i32 %inc23, ptr %rxt, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %and25 = and i32 %sisr, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %rdr1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %rdr1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rdr1, align 4
  %inc29 = add i32 %11, 1
  store i32 %inc29, ptr %rdr1, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %and31 = and i32 %sisr, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  %rdr0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %rdr0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdr0, align 4
  %inc35 = add i32 %13, 1
  store i32 %inc35, ptr %rdr0, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %and37 = and i32 %sisr, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %tde1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %tde1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tde1, align 4
  %inc41 = add i32 %15, 1
  store i32 %inc41, ptr %tde1, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %and43 = and i32 %sisr, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  %tde0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %tde0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tde0, align 4
  %inc47 = add i32 %17, 1
  store i32 %inc47, ptr %tde0, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %and49 = and i32 %sisr, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  %roe1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %roe1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %roe1, align 4
  %inc53 = add i32 %19, 1
  store i32 %inc53, ptr %roe1, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %and55 = and i32 %sisr, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #5
  %roe0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %roe0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %roe0, align 4
  %inc59 = add i32 %21, 1
  store i32 %inc59, ptr %roe0, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %and61 = and i32 %sisr, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  %tue1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %tue1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tue1, align 4
  %inc65 = add i32 %23, 1
  store i32 %inc65, ptr %tue1, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %and67 = and i32 %sisr, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end72_crit_edge, label %if.then69

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #5
  %tue0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %tue0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tue0, align 4
  %inc71 = add i32 %25, 1
  store i32 %inc71, ptr %tue0, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.end66.if.end72_crit_edge
  %and73 = and i32 %sisr, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end78_crit_edge, label %if.then75

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end78

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  %tfs = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %tfs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tfs, align 4
  %inc77 = add i32 %27, 1
  store i32 %inc77, ptr %tfs, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end72.if.end78_crit_edge
  %and79 = and i32 %sisr, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.if.end84_crit_edge, label %if.then81

if.end78.if.end84_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end84

if.then81:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %rfs = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %rfs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rfs, align 4
  %inc83 = add i32 %29, 1
  store i32 %inc83, ptr %rfs, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end78.if.end84_crit_edge
  %and85 = and i32 %sisr, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.if.end90_crit_edge, label %if.then87

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end90

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  %tls = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tls, align 4
  %inc89 = add i32 %31, 1
  store i32 %inc89, ptr %tls, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.end84.if.end90_crit_edge
  %and91 = and i32 %sisr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end96_crit_edge, label %if.then93

if.end90.if.end96_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end96

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #5
  %rls = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 16
  %32 = ptrtoint ptr %rls to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rls, align 4
  %inc95 = add i32 %33, 1
  store i32 %inc95, ptr %rls, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end90.if.end96_crit_edge
  %and97 = and i32 %sisr, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end102_crit_edge, label %if.then99

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end102

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #5
  %rff1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 17
  %34 = ptrtoint ptr %rff1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rff1, align 4
  %inc101 = add i32 %35, 1
  store i32 %inc101, ptr %rff1, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96.if.end102_crit_edge
  %and103 = and i32 %sisr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end108_crit_edge, label %if.then105

if.end102.if.end108_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end108

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #5
  %rff0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 18
  %36 = ptrtoint ptr %rff0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rff0, align 4
  %inc107 = add i32 %37, 1
  store i32 %inc107, ptr %rff0, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then105, %if.end102.if.end108_crit_edge
  %and109 = and i32 %sisr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end114_crit_edge, label %if.then111

if.end108.if.end114_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end114

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #5
  %tfe1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 19
  %38 = ptrtoint ptr %tfe1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tfe1, align 4
  %inc113 = add i32 %39, 1
  store i32 %inc113, ptr %tfe1, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.end108.if.end114_crit_edge
  %and115 = and i32 %sisr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.end114.if.end120_crit_edge, label %if.then117

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end120

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #5
  %tfe0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %dbg, i32 0, i32 1, i32 20
  %40 = ptrtoint ptr %tfe0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tfe0, align 4
  %inc119 = add i32 %41, 1
  store i32 %inc119, ptr %tfe0, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end114.if.end120_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_ssi_debugfs_create(ptr noundef %ssi_dbg, ptr nocapture noundef readonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #3
  %4 = ptrtoint ptr %ssi_dbg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %ssi_dbg, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %ssi_dbg, ptr noundef nonnull @fsl_ssi_stats_fops) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fsl_ssi_debugfs_remove(ptr nocapture noundef readonly %ssi_dbg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ssi_dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssi_dbg, align 4
  tail call void @debugfs_remove(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @fsl_ssi_stats_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ssi_stats_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %stats = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stats, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.1, i32 noundef %3) #3
  %tfrc = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %tfrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tfrc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %5) #3
  %cmdau = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %cmdau to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmdau, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %7) #3
  %cmddu = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %cmddu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmddu, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %9) #3
  %rxt = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %rxt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.5, i32 noundef %11) #3
  %rdr1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %rdr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdr1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.6, i32 noundef %13) #3
  %rdr0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %rdr0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rdr0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.7, i32 noundef %15) #3
  %tde1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %tde1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tde1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, i32 noundef %17) #3
  %tde0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %tde0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tde0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.9, i32 noundef %19) #3
  %roe1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %roe1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %roe1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.10, i32 noundef %21) #3
  %roe0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 10
  %22 = ptrtoint ptr %roe0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %roe0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.11, i32 noundef %23) #3
  %tue1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 11
  %24 = ptrtoint ptr %tue1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tue1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, i32 noundef %25) #3
  %tue0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 12
  %26 = ptrtoint ptr %tue0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tue0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, i32 noundef %27) #3
  %tfs = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 13
  %28 = ptrtoint ptr %tfs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tfs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.14, i32 noundef %29) #3
  %rfs = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 14
  %30 = ptrtoint ptr %rfs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rfs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.15, i32 noundef %31) #3
  %tls = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 15
  %32 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tls, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %33) #3
  %rls = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 16
  %34 = ptrtoint ptr %rls to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rls, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.17, i32 noundef %35) #3
  %rff1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 17
  %36 = ptrtoint ptr %rff1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rff1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.18, i32 noundef %37) #3
  %rff0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 18
  %38 = ptrtoint ptr %rff0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rff0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %39) #3
  %tfe1 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 19
  %40 = ptrtoint ptr %tfe1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tfe1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %41) #3
  %tfe0 = getelementptr inbounds %struct.fsl_ssi_dbg, ptr %1, i32 0, i32 1, i32 20
  %42 = ptrtoint ptr %tfe0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tfe0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, i32 noundef %43) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 133, i32 22}
!2 = !{ptr @fsl_ssi_stats_fops, !3, !"fsl_ssi_stats_fops", i1 false, i1 false}
!3 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 127, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 102, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 103, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 104, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 105, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 106, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 107, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 108, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 109, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 110, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 111, i32 2}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 112, i32 2}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 113, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 114, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 115, i32 2}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 116, i32 2}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 117, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 118, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 119, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 120, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 121, i32 2}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/fsl_ssi_dbg.c", i32 122, i32 2}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
