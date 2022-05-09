; ModuleID = '/llk/IR_all_yes/block/partitions/acorn.c_pt.bc'
source_filename = "../block/partitions/acorn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.Sector = type { ptr }
%struct.parsed_partitions = type { ptr, [32 x i8], ptr, i32, i32, i8, ptr }
%struct.adfs_discrecord = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i16, [10 x i8], i32, i32, i16, i8, i8, i32, i32, [8 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.71, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.atomic_t }
%struct.anon.83 = type { i64, i64, i32, i8, %struct.partition_meta_info }
%struct.partition_meta_info = type { [37 x i8], [64 x i8] }
%struct.riscix_record = type { i32, i32, [8 x %struct.riscix_part] }
%struct.riscix_part = type { i32, i32, i32, [16 x i8] }
%struct.linux_part = type { i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.ics_part = type { i32, i32 }
%struct.ptec_part = type { i32, i32, i32, i32, i32, [8 x i8] }
%struct.eesox_part = type { [6 x i8], [10 x i8], i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CUMANA/ADFS\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADFS\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" [ICS]\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" [POWERTEC]\00", [20 x i8] zeroinitializer }, align 32
@eesox_name = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Neil Critchell  ", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Eesox\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" [\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"]\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" [RISCiX]\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" <\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"All\00\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"(\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" >\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" [Linux]\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" >\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LinuxPart\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%d\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 9]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 514568158, i64 3735138270]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 9]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 165, i32 15 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 263, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 296, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 369, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 463, i32 25 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"eesox_name\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 492, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 531, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 43, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 45, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 81, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 88, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 93, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 97, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 99, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 103, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 133, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 151, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 717, i32 2 }
@___asan_gen_.76 = private constant [28 x i8] c"../block/partitions/acorn.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 316, i32 20 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../block/partitions/check.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 45, i32 30 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @eesox_name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eesox_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfspart_check_CUMANA(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %put_dev_sector.exit.do.body_crit_edge, %entry
  %first_sector.0 = phi i32 [ 0, %entry ], [ %add22, %put_dev_sector.exit.do.body_crit_edge ]
  %start_blk.0 = phi i32 [ 0, %entry ], [ %add23, %put_dev_sector.exit.do.body_crit_edge ]
  %name.0 = phi ptr [ @.str, %entry ], [ null, %put_dev_sector.exit.do.body_crit_edge ]
  %tobool36.not = phi i32 [ 0, %entry ], [ 1, %put_dev_sector.exit.do.body_crit_edge ]
  %slot.0 = phi i32 [ 1, %entry ], [ %slot.1, %put_dev_sector.exit.do.body_crit_edge ]
  %mul = shl i32 %start_blk.0, 1
  %add = add i32 %mul, 6
  %conv = zext i32 %add to i64
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body.cleanup38_crit_edge, label %if.end

do.body.cleanup38_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end:                                           ; preds = %do.body
  %1 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0, i32 %2)
  %cmp = icmp eq i32 %slot.0, %2
  br i1 %cmp, label %if.end.do.end_crit_edge, label %if.end3

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end3:                                          ; preds = %if.end
  %inc = add nuw i32 %slot.0, 1
  %call4 = call fastcc ptr @adfs_partition(ptr noundef %state, ptr noundef %name.0, ptr noundef nonnull %call, i32 noundef %first_sector.0, i32 noundef %slot.0)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.do.end_crit_edge, label %if.end7

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end7:                                          ; preds = %if.end3
  %arrayidx = getelementptr i8, ptr %call, i32 509
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr i8, ptr %call, i32 510
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv10, 8
  %add11 = or i32 %shl, %conv8
  %heads = getelementptr inbounds %struct.adfs_discrecord, ptr %call4, i32 0, i32 2
  %7 = ptrtoint ptr %heads to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %heads, align 2
  %conv12 = zext i8 %8 to i32
  %lowsector = getelementptr inbounds %struct.adfs_discrecord, ptr %call4, i32 0, i32 8
  %9 = ptrtoint ptr %lowsector to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lowsector, align 4
  %11 = lshr i8 %10, 6
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  %add15 = add nuw nsw i32 %12, %conv12
  %secspertrack = getelementptr inbounds %struct.adfs_discrecord, ptr %call4, i32 0, i32 1
  %13 = ptrtoint ptr %secspertrack to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %secspertrack, align 1
  %conv17 = zext i8 %14 to i32
  %mul16 = mul nuw nsw i32 %add11, %conv17
  %mul18 = mul i32 %mul16, %add15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul18)
  %tobool19.not = icmp eq i32 %mul18, 0
  br i1 %tobool19.not, label %if.end7.do.end_crit_edge, label %if.end21

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end21:                                         ; preds = %if.end7
  %add22 = add i32 %mul18, %first_sector.0
  %shr = lshr i32 %mul18, 1
  %add23 = add i32 %shr, %start_blk.0
  %arrayidx24 = getelementptr i8, ptr %call, i32 508
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 1
  %17 = and i8 %16, 15
  %and26 = zext i8 %17 to i32
  %18 = zext i32 %and26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and26, label %if.end21.sw.epilog_crit_edge [
    i32 9, label %sw.bb28
    i32 2, label %sw.bb
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = call fastcc i32 @riscix_partition(ptr noundef %state, i32 noundef %add22, i32 noundef %inc, i32 noundef 0)
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = call fastcc i32 @linux_partition(ptr noundef %state, i32 noundef %add22, i32 noundef %inc, i32 noundef 0)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb, %if.end21.sw.epilog_crit_edge
  %slot.1 = phi i32 [ %inc, %if.end21.sw.epilog_crit_edge ], [ %call27, %sw.bb ], [ %call29, %sw.bb28 ]
  %19 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.0.load = load i32, ptr %sect, align 4
  %20 = inttoptr i32 %.fca.0.load to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.epilog._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

sw.epilog._compound_head.exit.i.i_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %23, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %sw.epilog._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %20, %sw.epilog._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_CUMANA, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %cmp30 = icmp eq i32 %slot.1, -1
  br i1 %cmp30, label %put_dev_sector.exit.cleanup38_crit_edge, label %put_dev_sector.exit.do.body_crit_edge

put_dev_sector.exit.do.body_crit_edge:            ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

put_dev_sector.exit.cleanup38_crit_edge:          ; preds = %put_dev_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end3.do.end_crit_edge, %if.end.do.end_crit_edge
  %27 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.0.load61 = load i32, ptr %sect, align 4
  %28 = inttoptr i32 %.fca.0.load61 to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i71 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i71)
  %tobool.not.i.i.i72 = icmp eq i32 %and.i.i.i71, 0
  br i1 %tobool.not.i.i.i72, label %do.end._compound_head.exit.i.i80_crit_edge, label %if.then.i.i.i75, !prof !50

do.end._compound_head.exit.i.i80_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i80

if.then.i.i.i75:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i73 = add i32 %31, -1
  %.pre.i74 = inttoptr i32 %sub.i.i.i73 to ptr
  br label %_compound_head.exit.i.i80

_compound_head.exit.i.i80:                        ; preds = %if.then.i.i.i75, %do.end._compound_head.exit.i.i80_crit_edge
  %.pre-phi.i76 = phi ptr [ %28, %do.end._compound_head.exit.i.i80_crit_edge ], [ %.pre.i74, %if.then.i.i.i75 ]
  %_refcount.i.i.i.i.i.i77 = getelementptr inbounds %struct.page, ptr %.pre-phi.i76, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i78 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i77, i32 noundef 4) #9
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i.i79 = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i.i79, label %if.then.i.i.i.i.i81, label %do.end5.i.i.i.i.i85, !prof !51

if.then.i.i.i.i.i81:                              ; preds = %_compound_head.exit.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i76, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i85:                              ; preds = %_compound_head.exit.i.i80
  %call.i.i.i10.i.i.i.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i77, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i77, i32 1, i32 3, i32 1) #9
  %34 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i77, ptr %_refcount.i.i.i.i.i.i77, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i77) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i83 = extractvalue { i32, i32 } %34, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i83)
  %cmp.i.i.i.i.i.i.i.i84 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i83, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_CUMANA, %if.then.i.i.i.i.i.i87)) #9
          to label %folio_put_testzero.exit.i.i.i88 [label %if.then.i.i.i.i.i.i87], !srcloc !56

if.then.i.i.i.i.i.i87:                            ; preds = %do.end5.i.i.i.i.i85
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i86 = zext i1 %cmp.i.i.i.i.i.i.i.i84 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i76, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i86) #9
  br label %folio_put_testzero.exit.i.i.i88

folio_put_testzero.exit.i.i.i88:                  ; preds = %if.then.i.i.i.i.i.i87, %do.end5.i.i.i.i.i85
  br i1 %cmp.i.i.i.i.i.i.i.i84, label %if.then.i4.i.i89, label %folio_put_testzero.exit.i.i.i88.cleanup38_crit_edge

folio_put_testzero.exit.i.i.i88.cleanup38_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.then.i4.i.i89:                                 ; preds = %folio_put_testzero.exit.i.i.i88
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i76) #9
  br label %cleanup38

cleanup38:                                        ; preds = %if.then.i4.i.i89, %folio_put_testzero.exit.i.i.i88.cleanup38_crit_edge, %put_dev_sector.exit.cleanup38_crit_edge, %do.body.cleanup38_crit_edge
  %retval.2 = phi i32 [ %tobool36.not, %folio_put_testzero.exit.i.i.i88.cleanup38_crit_edge ], [ %tobool36.not, %if.then.i4.i.i89 ], [ -1, %do.body.cleanup38_crit_edge ], [ -1, %put_dev_sector.exit.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_part_sector(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adfs_partition(ptr noundef %state, ptr noundef %name, ptr noundef readonly %data, i32 noundef %first_sector, i32 noundef %slot) unnamed_addr #3 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 511
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %result.0.i = phi i32 [ 0, %entry ], [ %add1.i, %do.body.i.do.body.i_crit_edge ]
  %p.0.i = phi ptr [ %add.ptr.i, %entry ], [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %and.i = and i32 %result.0.i, 255
  %shr.i = lshr i32 %result.0.i, 8
  %add.i = add nuw nsw i32 %and.i, %shr.i
  %incdec.ptr.i = getelementptr i8, ptr %p.0.i, i32 -1
  %0 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %incdec.ptr.i, align 1
  %conv.i = zext i8 %1 to i32
  %add1.i = add nuw nsw i32 %add.i, %conv.i
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %data
  br i1 %cmp.not.i, label %adfs_checkbblk.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

adfs_checkbblk.exit:                              ; preds = %do.body.i
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.i, align 1
  %4 = trunc i32 %add1.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp5.i.not = icmp eq i8 %3, %4
  br i1 %cmp5.i.not, label %if.end, label %adfs_checkbblk.exit.cleanup_crit_edge

adfs_checkbblk.exit.cleanup_crit_edge:            ; preds = %adfs_checkbblk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %adfs_checkbblk.exit
  %add.ptr = getelementptr i8, ptr %data, i32 448
  %disc_size = getelementptr i8, ptr %data, i32 464
  %5 = ptrtoint ptr %disc_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %disc_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %disc_size_high = getelementptr i8, ptr %data, i32 484
  %7 = ptrtoint ptr %disc_size_high to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %disc_size_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %disc_size_high4 = getelementptr i8, ptr %data, i32 484
  %9 = ptrtoint ptr %disc_size_high4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %disc_size_high4, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = tail call i32 @llvm.fshl.i32(i32 %11, i32 %12, i32 23)
  %tobool6.not = icmp eq ptr %name, null
  br i1 %tobool6.not, label %if.end3.if.end13_crit_edge, label %if.then7

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %13 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pp_buf, align 4
  %call8 = tail call i32 @strlcat(ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef 4096) #9
  %15 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pp_buf, align 4
  %call10 = tail call i32 @strlcat(ptr noundef %16, ptr noundef nonnull %name, i32 noundef 4096) #9
  %17 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pp_buf, align 4
  %call12 = tail call i32 @strlcat(ptr noundef %18, ptr noundef nonnull @.str.7, i32 noundef 4096) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end3.if.end13_crit_edge
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %slot)
  %cmp.i = icmp sgt i32 %20, %slot
  br i1 %cmp.i, label %if.then.i, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i32 %or to i64
  %conv = zext i32 %first_sector to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %21 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %22 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %23, i32 %slot
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv, ptr %arrayidx.i, align 8
  %25 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %25, i32 %slot, i32 1
  %26 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv14, ptr %size4.i, align 8
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot) #9
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %27 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %28, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %adfs_checkbblk.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %adfs_checkbblk.exit.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ %add.ptr, %if.end13.cleanup_crit_edge ], [ %add.ptr, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @riscix_partition(ptr noundef %state, i32 noundef %first_sect, i32 noundef %slot, i32 noundef %nr_sects) unnamed_addr #0 align 64 {
entry:
  %tmp.i85 = alloca [44 x i8], align 1
  %tmp.i73 = alloca [44 x i8], align 1
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %conv = zext i32 %first_sect to i64
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %1 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp_buf, align 4
  %call1 = call i32 @strlcat(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 4096) #9
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 544433482, i32 %4)
  %cmp = icmp eq i32 %4, 544433482
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pp_buf, align 4
  %call7 = call i32 @strlcat(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef 4096) #9
  %inc = add i32 %slot, 1
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %7 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %slot)
  %cmp.i = icmp sgt i32 %8, %slot
  br i1 %cmp.i, label %if.then.i, label %if.then3.put_partition.exit_crit_edge

if.then3.put_partition.exit_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call i32 @llvm.umin.i32(i32 %nr_sects, i32 2)
  %conv9 = zext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %10 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %11 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %12, i32 %slot
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %arrayidx.i, align 8
  %14 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %14, i32 %slot, i32 1
  %15 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv9, ptr %size4.i, align 8
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot) #9
  %16 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %17, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %if.then3.put_partition.exit_crit_edge
  %parts.i76 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i79 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %put_partition.exit
  %part.098 = phi i32 [ 0, %put_partition.exit ], [ %inc37, %for.inc.for.body_crit_edge ]
  %slot.addr.097 = phi i32 [ %inc, %put_partition.exit ], [ %slot.addr.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.riscix_record, ptr %call, i32 0, i32 2, i32 %part.098
  %one = getelementptr %struct.riscix_record, ptr %call, i32 0, i32 2, i32 %part.098, i32 2
  %18 = ptrtoint ptr %one to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %one, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr %struct.riscix_record, ptr %call, i32 0, i32 2, i32 %part.098, i32 3
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(4) %name, ptr noundef nonnull dereferenceable(4) @.str.10, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool17.not = icmp eq i32 %bcmp, 0
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  %inc19 = add i32 %slot.addr.097, 1
  %20 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %slot.addr.097)
  %cmp.i75 = icmp sgt i32 %21, %slot.addr.097
  br i1 %cmp.i75, label %if.then.i83, label %if.then18.put_partition.exit84_crit_edge

if.then18.put_partition.exit84_crit_edge:         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit84

if.then.i83:                                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %length = getelementptr %struct.riscix_record, ptr %call, i32 0, i32 2, i32 %part.098, i32 1
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %conv25 = zext i32 %24 to i64
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %conv22 = zext i32 %27 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i73) #9
  %28 = call ptr @memset(ptr %tmp.i73, i32 255, i32 44)
  %29 = ptrtoint ptr %parts.i76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parts.i76, align 4
  %arrayidx.i77 = getelementptr %struct.anon.83, ptr %30, i32 %slot.addr.097
  %31 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv22, ptr %arrayidx.i77, align 8
  %32 = load ptr, ptr %parts.i76, align 4
  %size4.i78 = getelementptr %struct.anon.83, ptr %32, i32 %slot.addr.097, i32 1
  %33 = ptrtoint ptr %size4.i78 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv25, ptr %size4.i78, align 8
  %call.i80 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i73, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i79, i32 noundef %slot.addr.097) #9
  %34 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pp_buf, align 4
  %call7.i82 = call i32 @strlcat(ptr noundef %35, ptr noundef nonnull %tmp.i73, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i73) #9
  br label %put_partition.exit84

put_partition.exit84:                             ; preds = %if.then.i83, %if.then18.put_partition.exit84_crit_edge
  %36 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pp_buf, align 4
  %call27 = call i32 @strlcat(ptr noundef %37, ptr noundef nonnull @.str.11, i32 noundef 4096) #9
  %38 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pp_buf, align 4
  %call33 = call i32 @strlcat(ptr noundef %39, ptr noundef %name, i32 noundef 4096) #9
  %40 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_buf, align 4
  %call35 = call i32 @strlcat(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef 4096) #9
  br label %for.inc

for.inc:                                          ; preds = %put_partition.exit84, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %slot.addr.1 = phi i32 [ %inc19, %put_partition.exit84 ], [ %slot.addr.097, %land.lhs.true.for.inc_crit_edge ], [ %slot.addr.097, %for.body.for.inc_crit_edge ]
  %inc37 = add nuw nsw i32 %part.098, 1
  %exitcond.not = icmp eq i32 %inc37, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pp_buf, align 4
  %call39 = call i32 @strlcat(ptr noundef %43, ptr noundef nonnull @.str.13, i32 noundef 4096) #9
  br label %if.end43

if.else:                                          ; preds = %if.end
  %inc40 = add i32 %slot, 1
  %limit.i86 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %44 = ptrtoint ptr %limit.i86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %limit.i86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %slot)
  %cmp.i87 = icmp sgt i32 %45, %slot
  br i1 %cmp.i87, label %if.then.i95, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then.i95:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv42 = zext i32 %nr_sects to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i85) #9
  %46 = call ptr @memset(ptr %tmp.i85, i32 255, i32 44)
  %parts.i88 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %47 = ptrtoint ptr %parts.i88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parts.i88, align 4
  %arrayidx.i89 = getelementptr %struct.anon.83, ptr %48, i32 %slot
  %49 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv, ptr %arrayidx.i89, align 8
  %50 = load ptr, ptr %parts.i88, align 4
  %size4.i90 = getelementptr %struct.anon.83, ptr %50, i32 %slot, i32 1
  %51 = ptrtoint ptr %size4.i90 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv42, ptr %size4.i90, align 8
  %name.i91 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call.i92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i85, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i91, i32 noundef %slot) #9
  %52 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pp_buf, align 4
  %call7.i94 = call i32 @strlcat(ptr noundef %53, ptr noundef nonnull %tmp.i85, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i85) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then.i95, %if.else.if.end43_crit_edge, %for.end
  %slot.addr.2 = phi i32 [ %slot.addr.1, %for.end ], [ %inc40, %if.else.if.end43_crit_edge ], [ %inc40, %if.then.i95 ]
  %54 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %54)
  %.fca.0.load = load i32, ptr %sect, align 4
  %55 = inttoptr i32 %.fca.0.load to ptr
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end43._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

if.end43._compound_head.exit.i.i_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %58, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end43._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %55, %if.end43._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@riscix_partition, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %slot.addr.2, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ %slot.addr.2, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @linux_partition(ptr noundef %state, i32 noundef %first_sect, i32 noundef %slot, i32 noundef %nr_sects) unnamed_addr #0 align 64 {
entry:
  %tmp.i40 = alloca [44 x i8], align 1
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %1 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pp_buf, align 4
  %call = tail call i32 @strlcat(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 4096) #9
  %conv = zext i32 %first_sect to i64
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %3 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %slot)
  %cmp.i = icmp sgt i32 %4, %slot
  br i1 %cmp.i, label %if.then.i, label %entry.put_partition.exit_crit_edge

entry.put_partition.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.umin.i32(i32 %nr_sects, i32 2)
  %conv1 = zext i32 %5 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %6 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %8, i32 %slot
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %arrayidx.i, align 8
  %10 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %10, i32 %slot, i32 1
  %11 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv1, ptr %size4.i, align 8
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot) #9
  %12 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %13, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %put_partition.exit

put_partition.exit:                               ; preds = %if.then.i, %entry.put_partition.exit_crit_edge
  %call3 = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %put_partition.exit.cleanup_crit_edge, label %if.end

put_partition.exit.cleanup_crit_edge:             ; preds = %put_partition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %put_partition.exit
  %14 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp_buf, align 4
  %call5 = call i32 @strlcat(ptr noundef %15, ptr noundef nonnull @.str.9, i32 noundef 4096) #9
  %parts.i43 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i46 = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %put_partition.exit51, %if.end
  %slot.addr.0.in = phi i32 [ %slot, %if.end ], [ %slot.addr.0, %put_partition.exit51 ]
  %linuxp.0 = phi ptr [ %call3, %if.end ], [ %incdec.ptr, %put_partition.exit51 ]
  %slot.addr.0 = add i32 %slot.addr.0.in, 1
  %16 = ptrtoint ptr %linuxp.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %linuxp.0, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %17, label %while.cond.while.end_crit_edge [
    i32 -559829026, label %while.cond.while.body_crit_edge
    i32 514568158, label %while.cond.while.body_crit_edge52
  ]

while.cond.while.body_crit_edge52:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge52
  %19 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.addr.0, i32 %20)
  %cmp11 = icmp eq i32 %slot.addr.0, %20
  br i1 %cmp11, label %while.body.while.end_crit_edge, label %if.end14

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %slot.addr.0)
  %cmp.i42 = icmp sgt i32 %20, %slot.addr.0
  br i1 %cmp.i42, label %if.then.i50, label %if.end14.put_partition.exit51_crit_edge

if.end14.put_partition.exit51_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit51

if.then.i50:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %nr_sects17 = getelementptr inbounds %struct.linux_part, ptr %linuxp.0, i32 0, i32 2
  %21 = ptrtoint ptr %nr_sects17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_sects17, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %conv18 = zext i32 %23 to i64
  %start_sect = getelementptr inbounds %struct.linux_part, ptr %linuxp.0, i32 0, i32 1
  %24 = ptrtoint ptr %start_sect to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start_sect, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %add = add i32 %26, %first_sect
  %conv16 = zext i32 %add to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i40) #9
  %27 = call ptr @memset(ptr %tmp.i40, i32 255, i32 44)
  %28 = ptrtoint ptr %parts.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parts.i43, align 4
  %arrayidx.i44 = getelementptr %struct.anon.83, ptr %29, i32 %slot.addr.0
  %30 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv16, ptr %arrayidx.i44, align 8
  %31 = load ptr, ptr %parts.i43, align 4
  %size4.i45 = getelementptr %struct.anon.83, ptr %31, i32 %slot.addr.0, i32 1
  %32 = ptrtoint ptr %size4.i45 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv18, ptr %size4.i45, align 8
  %call.i47 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i40, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i46, i32 noundef %slot.addr.0) #9
  %33 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pp_buf, align 4
  %call7.i49 = call i32 @strlcat(ptr noundef %34, ptr noundef nonnull %tmp.i40, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i40) #9
  br label %put_partition.exit51

put_partition.exit51:                             ; preds = %if.then.i50, %if.end14.put_partition.exit51_crit_edge
  %incdec.ptr = getelementptr %struct.linux_part, ptr %linuxp.0, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %35 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pp_buf, align 4
  %call20 = call i32 @strlcat(ptr noundef %36, ptr noundef nonnull @.str.15, i32 noundef 4096) #9
  %37 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.0.load = load i32, ptr %sect, align 4
  %38 = inttoptr i32 %.fca.0.load to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

while.end._compound_head.exit.i.i_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %41, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %while.end._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %38, %while.end._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i.i = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@linux_partition, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %put_partition.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %put_partition.exit.cleanup_crit_edge ], [ %slot.addr.0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ %slot.addr.0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfspart_check_ADFS(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 6, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc ptr @adfs_partition(ptr noundef %state, ptr noundef nonnull @.str.1, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %1 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %sect, align 4
  %2 = inttoptr i32 %.fca.0.load to ptr
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

if.then3._compound_head.exit.i.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %5, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then3._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %2, %if.then3._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_ADFS, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %heads5 = getelementptr inbounds %struct.adfs_discrecord, ptr %call1, i32 0, i32 2
  %9 = ptrtoint ptr %heads5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %heads5, align 2
  %conv = zext i8 %10 to i32
  %lowsector = getelementptr inbounds %struct.adfs_discrecord, ptr %call1, i32 0, i32 8
  %11 = ptrtoint ptr %lowsector to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lowsector, align 4
  %13 = lshr i8 %12, 6
  %14 = and i8 %13, 1
  %and = zext i8 %14 to i32
  %add = add nuw nsw i32 %and, %conv
  %secspertrack = getelementptr inbounds %struct.adfs_discrecord, ptr %call1, i32 0, i32 1
  %15 = ptrtoint ptr %secspertrack to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %secspertrack, align 1
  %conv7 = zext i8 %16 to i32
  %mul = mul nuw nsw i32 %add, %conv7
  %arrayidx = getelementptr i8, ptr %call, i32 510
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv8 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv8, 8
  %arrayidx9 = getelementptr i8, ptr %call, i32 509
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %20 to i32
  %add11 = or i32 %shl, %conv10
  %mul12 = mul i32 %mul, %add11
  %arrayidx13 = getelementptr i8, ptr %call, i32 508
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13, align 1
  %23 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %23)
  %.fca.0.load47 = load i32, ptr %sect, align 4
  %24 = inttoptr i32 %.fca.0.load47 to ptr
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i58 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i58)
  %tobool.not.i.i.i59 = icmp eq i32 %and.i.i.i58, 0
  br i1 %tobool.not.i.i.i59, label %if.end4._compound_head.exit.i.i67_crit_edge, label %if.then.i.i.i62, !prof !50

if.end4._compound_head.exit.i.i67_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i67

if.then.i.i.i62:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i60 = add i32 %27, -1
  %.pre.i61 = inttoptr i32 %sub.i.i.i60 to ptr
  br label %_compound_head.exit.i.i67

_compound_head.exit.i.i67:                        ; preds = %if.then.i.i.i62, %if.end4._compound_head.exit.i.i67_crit_edge
  %.pre-phi.i63 = phi ptr [ %24, %if.end4._compound_head.exit.i.i67_crit_edge ], [ %.pre.i61, %if.then.i.i.i62 ]
  %_refcount.i.i.i.i.i.i64 = getelementptr inbounds %struct.page, ptr %.pre-phi.i63, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i65 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i64, i32 noundef 4) #9
  %28 = ptrtoint ptr %_refcount.i.i.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %_refcount.i.i.i.i.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i.i.i66 = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i.i.i66, label %if.then.i.i.i.i.i68, label %do.end5.i.i.i.i.i72, !prof !51

if.then.i.i.i.i.i68:                              ; preds = %_compound_head.exit.i.i67
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i63, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i72:                              ; preds = %_compound_head.exit.i.i67
  %call.i.i.i10.i.i.i.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i64, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i64, i32 1, i32 3, i32 1) #9
  %30 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i64, ptr %_refcount.i.i.i.i.i.i64, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i64) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i70 = extractvalue { i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i70)
  %cmp.i.i.i.i.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i70, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_ADFS, %if.then.i.i.i.i.i.i74)) #9
          to label %folio_put_testzero.exit.i.i.i75 [label %if.then.i.i.i.i.i.i74], !srcloc !56

if.then.i.i.i.i.i.i74:                            ; preds = %do.end5.i.i.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i73 = zext i1 %cmp.i.i.i.i.i.i.i.i71 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i73) #9
  br label %folio_put_testzero.exit.i.i.i75

folio_put_testzero.exit.i.i.i75:                  ; preds = %if.then.i.i.i.i.i.i74, %do.end5.i.i.i.i.i72
  br i1 %cmp.i.i.i.i.i.i.i.i71, label %if.then.i4.i.i76, label %folio_put_testzero.exit.i.i.i75.put_dev_sector.exit77_crit_edge

folio_put_testzero.exit.i.i.i75.put_dev_sector.exit77_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit77

if.then.i4.i.i76:                                 ; preds = %folio_put_testzero.exit.i.i.i75
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i63) #9
  br label %put_dev_sector.exit77

put_dev_sector.exit77:                            ; preds = %if.then.i4.i.i76, %folio_put_testzero.exit.i.i.i75.put_dev_sector.exit77_crit_edge
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %37 = trunc i64 %36 to i32
  %conv20 = sub i32 %37, %mul12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul12)
  %tobool21.not = icmp eq i32 %mul12, 0
  br i1 %tobool21.not, label %put_dev_sector.exit77.if.end27_crit_edge, label %if.then22

put_dev_sector.exit77.if.end27_crit_edge:         ; preds = %put_dev_sector.exit77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then22:                                        ; preds = %put_dev_sector.exit77
  %38 = and i8 %22, 15
  %conv23 = zext i8 %38 to i32
  %39 = zext i32 %conv23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %conv23, label %if.then22.if.end27_crit_edge [
    i32 2, label %if.then22.sw.bb_crit_edge
    i32 1, label %if.then22.sw.bb_crit_edge78
    i32 9, label %sw.bb25
  ]

if.then22.sw.bb_crit_edge78:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then22.sw.bb_crit_edge:                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

sw.bb:                                            ; preds = %if.then22.sw.bb_crit_edge, %if.then22.sw.bb_crit_edge78
  %call24 = call fastcc i32 @riscix_partition(ptr noundef %state, i32 noundef %mul12, i32 noundef 2, i32 noundef %conv20)
  br label %if.end27

sw.bb25:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call fastcc i32 @linux_partition(ptr noundef %state, i32 noundef %mul12, i32 noundef 2, i32 noundef %conv20)
  br label %if.end27

if.end27:                                         ; preds = %sw.bb25, %sw.bb, %if.then22.if.end27_crit_edge, %put_dev_sector.exit77.if.end27_crit_edge
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %40 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pp_buf, align 4
  %call28 = call i32 @strlcat(ptr noundef %41, ptr noundef nonnull @.str.2, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end27 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfspart_check_ICS(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %sum.09.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 1348563572, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call, i32 %i.010.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %add.i = add i32 %sum.09.i, %conv.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 508
  br i1 %exitcond.not.i, label %valid_ics_sector.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

valid_ics_sector.exit:                            ; preds = %for.body.i
  %arrayidx1.i = getelementptr i8, ptr %call, i32 508
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i, align 4
  %5 = call i32 @llvm.bswap.i32(i32 %4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp2.i.not = icmp eq i32 %add.i, %5
  br i1 %cmp2.i.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %valid_ics_sector.exit
  %6 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %6)
  %.fca.0.load = load i32, ptr %sect, align 4
  %7 = inttoptr i32 %.fca.0.load to ptr
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

if.then3._compound_head.exit.i.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %10, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then3._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %7, %if.then3._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %13 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_ICS, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup29_crit_edge

folio_put_testzero.exit.i.i.i.cleanup29_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup29

if.end4:                                          ; preds = %valid_ics_sector.exit
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %14 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pp_buf, align 4
  %call5 = call i32 @strlcat(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 4096) #9
  %size85 = getelementptr inbounds %struct.ics_part, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %size85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not86 = icmp eq i32 %17, 0
  br i1 %tobool6.not86, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %limit = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i32 [ %17, %for.body.lr.ph ], [ %36, %for.inc.for.body_crit_edge ]
  %slot.088 = phi i32 [ 1, %for.body.lr.ph ], [ %slot.2.ph, %for.inc.for.body_crit_edge ]
  %p.087 = phi ptr [ %call, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %p.087 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p.087, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = call i32 @llvm.bswap.i32(i32 %18)
  %23 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.088, i32 %24)
  %cmp = icmp eq i32 %slot.088, %24
  br i1 %cmp, label %for.body.for.end_crit_edge, label %if.end11

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12 = icmp slt i32 %22, 0
  br i1 %cmp12, label %if.then13, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %sub = sub i32 0, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp14 = icmp sgt i32 %sub, 1
  br i1 %cmp14, label %land.lhs.true, label %if.then13.if.then22_crit_edge

if.then13.if.then22_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true:                                    ; preds = %if.then13
  %call15 = call fastcc i32 @adfspart_check_ICSLinux(ptr noundef %state, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.then22_crit_edge, label %if.then17

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %21, 1
  %sub18 = xor i32 %22, -1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11.if.end20_crit_edge
  %start.0 = phi i32 [ %add, %if.then17 ], [ %21, %if.end11.if.end20_crit_edge ]
  %size8.0 = phi i32 [ %sub18, %if.then17 ], [ %22, %if.end11.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size8.0)
  %tobool21.not = icmp eq i32 %size8.0, 0
  br i1 %tobool21.not, label %if.end20.for.inc_crit_edge, label %if.end20.if.then22_crit_edge

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge, %if.then13.if.then22_crit_edge
  %size8.080 = phi i32 [ %size8.0, %if.end20.if.then22_crit_edge ], [ %sub, %land.lhs.true.if.then22_crit_edge ], [ %sub, %if.then13.if.then22_crit_edge ]
  %start.079 = phi i32 [ %start.0, %if.end20.if.then22_crit_edge ], [ %21, %land.lhs.true.if.then22_crit_edge ], [ %21, %if.then13.if.then22_crit_edge ]
  %inc = add i32 %slot.088, 1
  %25 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %slot.088)
  %cmp.i = icmp sgt i32 %26, %slot.088
  br i1 %cmp.i, label %if.then.i, label %if.then22.for.inc_crit_edge

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %conv23 = sext i32 %size8.080 to i64
  %conv = zext i32 %start.079 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %27 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %28 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parts.i, align 4
  %arrayidx.i55 = getelementptr %struct.anon.83, ptr %29, i32 %slot.088
  %30 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %arrayidx.i55, align 8
  %31 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %31, i32 %slot.088, i32 1
  %32 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv23, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot.088) #9
  %33 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %34, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then22.for.inc_crit_edge, %if.end20.for.inc_crit_edge
  %slot.2.ph = phi i32 [ %inc, %if.then.i ], [ %inc, %if.then22.for.inc_crit_edge ], [ %slot.088, %if.end20.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.ics_part, ptr %p.087, i32 1
  %size = getelementptr %struct.ics_part, ptr %p.087, i32 1, i32 1
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size, align 4
  %tobool6.not = icmp eq i32 %36, 0
  br i1 %tobool6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %37 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %37)
  %.fca.0.load41 = load i32, ptr %sect, align 4
  %38 = inttoptr i32 %.fca.0.load41 to ptr
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i56 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i56)
  %tobool.not.i.i.i57 = icmp eq i32 %and.i.i.i56, 0
  br i1 %tobool.not.i.i.i57, label %for.end._compound_head.exit.i.i65_crit_edge, label %if.then.i.i.i60, !prof !50

for.end._compound_head.exit.i.i65_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i65

if.then.i.i.i60:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i58 = add i32 %41, -1
  %.pre.i59 = inttoptr i32 %sub.i.i.i58 to ptr
  br label %_compound_head.exit.i.i65

_compound_head.exit.i.i65:                        ; preds = %if.then.i.i.i60, %for.end._compound_head.exit.i.i65_crit_edge
  %.pre-phi.i61 = phi ptr [ %38, %for.end._compound_head.exit.i.i65_crit_edge ], [ %.pre.i59, %if.then.i.i.i60 ]
  %_refcount.i.i.i.i.i.i62 = getelementptr inbounds %struct.page, ptr %.pre-phi.i61, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i62, i32 noundef 4) #9
  %42 = ptrtoint ptr %_refcount.i.i.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %_refcount.i.i.i.i.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i.i.i.i.i64 = icmp eq i32 %43, 0
  br i1 %cmp.i.i.i.i.i64, label %if.then.i.i.i.i.i66, label %do.end5.i.i.i.i.i70, !prof !51

if.then.i.i.i.i.i66:                              ; preds = %_compound_head.exit.i.i65
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i61, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i70:                              ; preds = %_compound_head.exit.i.i65
  %call.i.i.i10.i.i.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i62, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i62, i32 1, i32 3, i32 1) #9
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i62, ptr %_refcount.i.i.i.i.i.i62, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i62) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i68 = extractvalue { i32, i32 } %44, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i68)
  %cmp.i.i.i.i.i.i.i.i69 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i68, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_ICS, %if.then.i.i.i.i.i.i72)) #9
          to label %folio_put_testzero.exit.i.i.i73 [label %if.then.i.i.i.i.i.i72], !srcloc !56

if.then.i.i.i.i.i.i72:                            ; preds = %do.end5.i.i.i.i.i70
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i71 = zext i1 %cmp.i.i.i.i.i.i.i.i69 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i61, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i71) #9
  br label %folio_put_testzero.exit.i.i.i73

folio_put_testzero.exit.i.i.i73:                  ; preds = %if.then.i.i.i.i.i.i72, %do.end5.i.i.i.i.i70
  br i1 %cmp.i.i.i.i.i.i.i.i69, label %if.then.i4.i.i74, label %folio_put_testzero.exit.i.i.i73.put_dev_sector.exit75_crit_edge

folio_put_testzero.exit.i.i.i73.put_dev_sector.exit75_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit75

if.then.i4.i.i74:                                 ; preds = %folio_put_testzero.exit.i.i.i73
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i61) #9
  br label %put_dev_sector.exit75

put_dev_sector.exit75:                            ; preds = %if.then.i4.i.i74, %folio_put_testzero.exit.i.i.i73.put_dev_sector.exit75_crit_edge
  %45 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pp_buf, align 4
  %call28 = call i32 @strlcat(ptr noundef %46, ptr noundef nonnull @.str.2, i32 noundef 4096) #9
  br label %cleanup29

cleanup29:                                        ; preds = %put_dev_sector.exit75, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup29_crit_edge, %entry.cleanup29_crit_edge
  %retval.0 = phi i32 [ 1, %put_dev_sector.exit75 ], [ -1, %entry.cleanup29_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup29_crit_edge ], [ 0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adfspart_check_ICSLinux(ptr noundef %state, i32 noundef %block) unnamed_addr #0 align 64 {
entry:
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %conv = zext i32 %block to i64
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef %conv, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %call, ptr noundef nonnull dereferenceable(9) @.str.17, i32 9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  %1 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %sect, align 4
  %2 = inttoptr i32 %.fca.0.load to ptr
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

if.then._compound_head.exit.i.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %5, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %2, %if.then._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i.i.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %8 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_ICSLinux, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.if.end4_crit_edge

folio_put_testzero.exit.i.i.i.if.end4_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  %result.1.shrunk = phi i1 [ false, %entry.if.end4_crit_edge ], [ %cmp, %folio_put_testzero.exit.i.i.i.if.end4_crit_edge ], [ %cmp, %if.then.i4.i.i ]
  %result.1 = zext i1 %result.1.shrunk to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %result.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfspart_check_POWERTEC(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 0, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %call, i32 510
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %2)
  %cmp.i = icmp eq i8 %2, 85
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.for.body.i.preheader_crit_edge

if.end.for.body.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr i8, ptr %call, i32 511
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %4)
  %cmp4.i = icmp eq i8 %4, -86
  br i1 %cmp4.i, label %land.lhs.true.i.if.then3_crit_edge, label %land.lhs.true.i.for.body.i.preheader_crit_edge

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %if.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %checksum.024.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 42, %for.body.i.preheader ]
  %arrayidx8.i = getelementptr i8, ptr %call, i32 %i.025.i
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %6 to i32
  %add.i = add nuw nsw i32 %checksum.024.i, %conv9.i
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %inc.i, 511
  br i1 %exitcond.not.i, label %valid_ptec_sector.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

valid_ptec_sector.exit:                           ; preds = %for.body.i
  %arrayidx13.i = getelementptr i8, ptr %call, i32 511
  %7 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13.i, align 1
  %9 = trunc i32 %add.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp15.i.not = icmp eq i8 %8, %9
  br i1 %cmp15.i.not, label %if.end4, label %valid_ptec_sector.exit.if.then3_crit_edge

valid_ptec_sector.exit.if.then3_crit_edge:        ; preds = %valid_ptec_sector.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.then3:                                         ; preds = %valid_ptec_sector.exit.if.then3_crit_edge, %land.lhs.true.i.if.then3_crit_edge
  %10 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %sect, align 4
  %11 = inttoptr i32 %.fca.0.load to ptr
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then3._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

if.then3._compound_head.exit.i.i_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %14, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.then3._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %11, %if.then3._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %17 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_POWERTEC, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %cleanup

if.end4:                                          ; preds = %valid_ptec_sector.exit
  %pp_buf = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  %18 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pp_buf, align 4
  %call5 = call i32 @strlcat(ptr noundef %19, ptr noundef nonnull @.str.4, i32 noundef 4096) #9
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end4
  %i.059 = phi i32 [ 0, %if.end4 ], [ %inc12, %if.end11.for.body_crit_edge ]
  %slot.058 = phi i32 [ 1, %if.end4 ], [ %slot.1, %if.end11.for.body_crit_edge ]
  %p.057 = phi ptr [ %call, %if.end4 ], [ %incdec.ptr, %if.end11.for.body_crit_edge ]
  %size7 = getelementptr inbounds %struct.ptec_part, ptr %p.057, i32 0, i32 3
  %20 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool8.not = icmp eq i32 %21, 0
  br i1 %tobool8.not, label %for.body.if.end11_crit_edge, label %if.then9

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %for.body
  %inc = add i32 %slot.058, 1
  %22 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %slot.058)
  %cmp.i32 = icmp sgt i32 %23, %slot.058
  br i1 %cmp.i32, label %if.then.i, label %if.then9.if.end11_crit_edge

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %24 = call i32 @llvm.bswap.i32(i32 %21)
  %conv10 = zext i32 %24 to i64
  %start6 = getelementptr inbounds %struct.ptec_part, ptr %p.057, i32 0, i32 2
  %25 = ptrtoint ptr %start6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start6, align 4
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %conv = zext i32 %27 to i64
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %28 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %29 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parts.i, align 4
  %arrayidx.i33 = getelementptr %struct.anon.83, ptr %30, i32 %slot.058
  %31 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %arrayidx.i33, align 8
  %32 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %32, i32 %slot.058, i32 1
  %33 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv10, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot.058) #9
  %34 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pp_buf, align 4
  %call7.i = call i32 @strlcat(ptr noundef %35, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then9.if.end11_crit_edge, %for.body.if.end11_crit_edge
  %slot.1 = phi i32 [ %slot.058, %for.body.if.end11_crit_edge ], [ %inc, %if.then9.if.end11_crit_edge ], [ %inc, %if.then.i ]
  %inc12 = add nuw nsw i32 %i.059, 1
  %incdec.ptr = getelementptr %struct.ptec_part, ptr %p.057, i32 1
  %exitcond.not = icmp eq i32 %inc12, 12
  br i1 %exitcond.not, label %for.end, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end11
  %36 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %36)
  %.fca.0.load27 = load i32, ptr %sect, align 4
  %37 = inttoptr i32 %.fca.0.load27 to ptr
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i35 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i35)
  %tobool.not.i.i.i36 = icmp eq i32 %and.i.i.i35, 0
  br i1 %tobool.not.i.i.i36, label %for.end._compound_head.exit.i.i44_crit_edge, label %if.then.i.i.i39, !prof !50

for.end._compound_head.exit.i.i44_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i44

if.then.i.i.i39:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i37 = add i32 %40, -1
  %.pre.i38 = inttoptr i32 %sub.i.i.i37 to ptr
  br label %_compound_head.exit.i.i44

_compound_head.exit.i.i44:                        ; preds = %if.then.i.i.i39, %for.end._compound_head.exit.i.i44_crit_edge
  %.pre-phi.i40 = phi ptr [ %37, %for.end._compound_head.exit.i.i44_crit_edge ], [ %.pre.i38, %if.then.i.i.i39 ]
  %_refcount.i.i.i.i.i.i41 = getelementptr inbounds %struct.page, ptr %.pre-phi.i40, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i42 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i41, i32 noundef 4) #9
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i.i.i.i45, label %do.end5.i.i.i.i.i49, !prof !51

if.then.i.i.i.i.i45:                              ; preds = %_compound_head.exit.i.i44
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i40, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i49:                              ; preds = %_compound_head.exit.i.i44
  %call.i.i.i10.i.i.i.i.i46 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i41, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i41, i32 1, i32 3, i32 1) #9
  %43 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i41, ptr %_refcount.i.i.i.i.i.i41, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i41) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i47 = extractvalue { i32, i32 } %43, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i47)
  %cmp.i.i.i.i.i.i.i.i48 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i47, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_POWERTEC, %if.then.i.i.i.i.i.i51)) #9
          to label %folio_put_testzero.exit.i.i.i52 [label %if.then.i.i.i.i.i.i51], !srcloc !56

if.then.i.i.i.i.i.i51:                            ; preds = %do.end5.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i50 = zext i1 %cmp.i.i.i.i.i.i.i.i48 to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i50) #9
  br label %folio_put_testzero.exit.i.i.i52

folio_put_testzero.exit.i.i.i52:                  ; preds = %if.then.i.i.i.i.i.i51, %do.end5.i.i.i.i.i49
  br i1 %cmp.i.i.i.i.i.i.i.i48, label %if.then.i4.i.i53, label %folio_put_testzero.exit.i.i.i52.put_dev_sector.exit54_crit_edge

folio_put_testzero.exit.i.i.i52.put_dev_sector.exit54_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit54

if.then.i4.i.i53:                                 ; preds = %folio_put_testzero.exit.i.i.i52
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i40) #9
  br label %put_dev_sector.exit54

put_dev_sector.exit54:                            ; preds = %if.then.i4.i.i53, %folio_put_testzero.exit.i.i.i52.put_dev_sector.exit54_crit_edge
  %44 = ptrtoint ptr %pp_buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pp_buf, align 4
  %call15 = call i32 @strlcat(ptr noundef %45, ptr noundef nonnull @.str.2, i32 noundef 4096) #9
  br label %cleanup

cleanup:                                          ; preds = %put_dev_sector.exit54, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %put_dev_sector.exit54 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adfspart_check_EESOX(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i61 = alloca [44 x i8], align 1
  %tmp.i = alloca [44 x i8], align 1
  %sect = alloca %struct.Sector, align 4
  %buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sect) #9
  %0 = ptrtoint ptr %sect to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sect, align 4, !annotation !49
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #9
  %1 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  %call = call ptr @read_part_sector(ptr noundef %state, i64 noundef 7, ptr noundef nonnull %sect) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %call, i32 %i.091
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %and = and i32 %i.091, 15
  %arrayidx1 = getelementptr [16 x i8], ptr @eesox_name, i32 0, i32 %and
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %xor60 = xor i8 %5, %3
  %arrayidx4 = getelementptr [256 x i8], ptr %buffer, i32 0, i32 %i.091
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %xor60, ptr %arrayidx4, align 1
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %7 = ptrtoint ptr %sect to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load = load i32, ptr %sect, align 4
  %8 = inttoptr i32 %.fca.0.load to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !50

for.end._compound_head.exit.i.i_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = add i32 %11, -1
  %.pre.i = inttoptr i32 %sub.i.i.i to ptr
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %for.end._compound_head.exit.i.i_crit_edge
  %.pre-phi.i = phi ptr [ %8, %for.end._compound_head.exit.i.i_crit_edge ], [ %.pre.i, %if.then.i.i.i ]
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !51

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @dump_page(ptr noundef %.pre-phi.i, ptr noundef nonnull @.str.16) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !52
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !53
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %14 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #9, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@adfspart_check_EESOX, %if.then.i.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi.i, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge

folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_dev_sector.exit

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__put_page(ptr noundef %.pre-phi.i) #9
  br label %put_dev_sector.exit

put_dev_sector.exit:                              ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.put_dev_sector.exit_crit_edge
  %limit.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 4
  %parts.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 2
  %name.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 1
  %pp_buf.i = getelementptr inbounds %struct.parsed_partitions, ptr %state, i32 0, i32 6
  br label %for.body8

for.body8:                                        ; preds = %for.inc20.for.body8_crit_edge, %put_dev_sector.exit
  %slot.095 = phi i32 [ 1, %put_dev_sector.exit ], [ %slot.2.ph, %for.inc20.for.body8_crit_edge ]
  %i.194 = phi i32 [ 0, %put_dev_sector.exit ], [ %inc21, %for.inc20.for.body8_crit_edge ]
  %start.093 = phi i64 [ 0, %put_dev_sector.exit ], [ %conv15, %for.inc20.for.body8_crit_edge ]
  %p.092 = phi ptr [ %buffer, %put_dev_sector.exit ], [ %incdec.ptr, %for.inc20.for.body8_crit_edge ]
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %p.092, ptr noundef nonnull dereferenceable(6) @.str.5, i32 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11.not = icmp eq i32 %bcmp, 0
  br i1 %tobool11.not, label %if.end13, label %for.end22

if.end13:                                         ; preds = %for.body8
  %start14 = getelementptr inbounds %struct.eesox_part, ptr %p.092, i32 0, i32 2
  %15 = ptrtoint ptr %start14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start14, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %conv15 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.194)
  %tobool16.not = icmp eq i32 %i.194, 0
  br i1 %tobool16.not, label %if.end13.for.inc20_crit_edge, label %if.then17

if.end13.for.inc20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20

if.then17:                                        ; preds = %if.end13
  %inc18 = add i32 %slot.095, 1
  %18 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %slot.095)
  %cmp.i = icmp sgt i32 %19, %slot.095
  br i1 %cmp.i, label %if.then.i, label %if.then17.for.inc20_crit_edge

if.then17.for.inc20_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc20

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nsw i64 %conv15, %start.093
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i) #9
  %20 = call ptr @memset(ptr %tmp.i, i32 255, i32 44)
  %21 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parts.i, align 4
  %arrayidx.i = getelementptr %struct.anon.83, ptr %22, i32 %slot.095
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %start.093, ptr %arrayidx.i, align 8
  %24 = load ptr, ptr %parts.i, align 4
  %size4.i = getelementptr %struct.anon.83, ptr %24, i32 %slot.095, i32 1
  %25 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %sub, ptr %size4.i, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot.095) #9
  %26 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pp_buf.i, align 4
  %call7.i = call i32 @strlcat(ptr noundef %27, ptr noundef nonnull %tmp.i, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i) #9
  br label %for.inc20

for.inc20:                                        ; preds = %if.then.i, %if.then17.for.inc20_crit_edge, %if.end13.for.inc20_crit_edge
  %slot.2.ph = phi i32 [ %inc18, %if.then.i ], [ %inc18, %if.then17.for.inc20_crit_edge ], [ %slot.095, %if.end13.for.inc20_crit_edge ]
  %inc21 = add nuw nsw i32 %i.194, 1
  %incdec.ptr = getelementptr %struct.eesox_part, ptr %p.092, i32 1
  %exitcond99.not = icmp eq i32 %inc21, 8
  br i1 %exitcond99.not, label %for.inc20.if.then25_crit_edge, label %for.inc20.for.body8_crit_edge

for.inc20.for.body8_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8

for.inc20.if.then25_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

for.end22:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.194)
  %cmp23.not = icmp eq i32 %i.194, 0
  br i1 %cmp23.not, label %for.end22.cleanup32_crit_edge, label %for.end22.if.then25_crit_edge

for.end22.if.then25_crit_edge:                    ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then25

for.end22.cleanup32_crit_edge:                    ; preds = %for.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.then25:                                        ; preds = %for.end22.if.then25_crit_edge, %for.inc20.if.then25_crit_edge
  %start.090 = phi i64 [ %start.093, %for.end22.if.then25_crit_edge ], [ %conv15, %for.inc20.if.then25_crit_edge ]
  %slot.087 = phi i32 [ %slot.095, %for.end22.if.then25_crit_edge ], [ %slot.2.ph, %for.inc20.if.then25_crit_edge ]
  %28 = ptrtoint ptr %limit.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %limit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %slot.087)
  %cmp.i63 = icmp sgt i32 %29, %slot.087
  br i1 %cmp.i63, label %if.then.i71, label %if.then25.put_partition.exit72_crit_edge

if.then25.put_partition.exit72_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_partition.exit72

if.then.i71:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bd_nr_sectors.i.i, align 8
  %sub28 = sub i64 %35, %start.090
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp.i61) #9
  %36 = call ptr @memset(ptr %tmp.i61, i32 255, i32 44)
  %37 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parts.i, align 4
  %arrayidx.i65 = getelementptr %struct.anon.83, ptr %38, i32 %slot.087
  %39 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %start.090, ptr %arrayidx.i65, align 8
  %40 = load ptr, ptr %parts.i, align 4
  %size4.i66 = getelementptr %struct.anon.83, ptr %40, i32 %slot.087, i32 1
  %41 = ptrtoint ptr %size4.i66 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub28, ptr %size4.i66, align 8
  %call.i68 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i61, i32 noundef 44, ptr noundef nonnull @.str.18, ptr noundef %name.i, i32 noundef %slot.087) #9
  %42 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pp_buf.i, align 4
  %call7.i70 = call i32 @strlcat(ptr noundef %43, ptr noundef nonnull %tmp.i61, i32 noundef 4096) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp.i61) #9
  br label %put_partition.exit72

put_partition.exit72:                             ; preds = %if.then.i71, %if.then25.put_partition.exit72_crit_edge
  %44 = ptrtoint ptr %pp_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pp_buf.i, align 4
  %call29 = call i32 @strlcat(ptr noundef %45, ptr noundef nonnull @.str.2, i32 noundef 4096) #9
  br label %cleanup32

cleanup32:                                        ; preds = %put_partition.exit72, %for.end22.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup32_crit_edge ], [ 1, %put_partition.exit72 ], [ 0, %for.end22.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sect) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/partitions/acorn.c", i32 165, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/partitions/acorn.c", i32 263, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/partitions/acorn.c", i32 296, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/partitions/acorn.c", i32 369, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/partitions/acorn.c", i32 463, i32 25}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../block/partitions/acorn.c", i32 531, i32 24}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/partitions/acorn.c", i32 43, i32 26}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../block/partitions/acorn.c", i32 45, i32 26}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../block/partitions/acorn.c", i32 81, i32 25}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/partitions/acorn.c", i32 88, i32 26}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../block/partitions/acorn.c", i32 93, i32 36}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../block/partitions/acorn.c", i32 97, i32 28}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../block/partitions/acorn.c", i32 99, i32 28}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../block/partitions/acorn.c", i32 103, i32 26}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../block/partitions/acorn.c", i32 133, i32 25}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../block/partitions/acorn.c", i32 151, i32 25}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/mm.h", i32 717, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../block/partitions/acorn.c", i32 316, i32 20}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../block/partitions/check.h", i32 45, i32 30}
!38 = !{ptr @eesox_name, !39, !"eesox_name", i1 false, i1 false}
!39 = !{!"../block/partitions/acorn.c", i32 492, i32 19}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2153174322, i64 2153174805, i64 2153174359, i64 2153174415, i64 2153174449, i64 2153174473, i64 2153174514, i64 2153174535, i64 2153174563, i64 2153174597}
!53 = !{i64 2148764982}
!54 = !{i64 2148679691, i64 2148679723, i64 2148679752, i64 2148679786, i64 2148679817, i64 2148679840}
!55 = !{i64 2148765211}
!56 = !{i64 2148501104, i64 2148501109, i64 2148501122, i64 2148501166, i64 2148501200, i64 2148501221}
