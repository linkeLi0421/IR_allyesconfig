; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_managed.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_managed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__drmm_add_action\22, \22a\22\09"
module asm "\09.weak\09__crc___drmm_add_action\09\09\09\09"
module asm "\09.long\09__crc___drmm_add_action\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_add_action\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_add_action:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__drmm_add_action_or_reset\22, \22a\22\09"
module asm "\09.weak\09__crc___drmm_add_action_or_reset\09\09\09\09"
module asm "\09.long\09__crc___drmm_add_action_or_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___drmm_add_action_or_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22__drmm_add_action_or_reset\22\09\09\09\09\09"
module asm "__kstrtabns___drmm_add_action_or_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drmm_kmalloc\22, \22a\22\09"
module asm "\09.weak\09__crc_drmm_kmalloc\09\09\09\09"
module asm "\09.long\09__crc_drmm_kmalloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drmm_kstrdup\22, \22a\22\09"
module asm "\09.weak\09__crc_drmm_kstrdup\09\09\09\09"
module asm "\09.long\09__crc_drmm_kstrdup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kstrdup\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drmm_kfree\22, \22a\22\09"
module asm "\09.weak\09__crc_drmm_kfree\09\09\09\09"
module asm "\09.long\09__crc_drmm_kfree\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_kfree\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_kfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.72 = type { i32, ptr }
%struct.drmres_node = type { %struct.list_head, ptr, ptr, i32 }
%struct.drmres = type { %struct.drmres_node, [108 x i8], [0 x i8] }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drmres release begin\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"REL %p %s (%zu bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drmres release end\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/drm_managed.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to add action %s for %p\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab___drmm_add_action = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_add_action = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_add_action = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_add_action to i32), ptr @__kstrtab___drmm_add_action, ptr @__kstrtabns___drmm_add_action }, section "___ksymtab+__drmm_add_action", align 4
@__kstrtab___drmm_add_action_or_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns___drmm_add_action_or_reset = external dso_local constant [0 x i8], align 1
@__ksymtab___drmm_add_action_or_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__drmm_add_action_or_reset to i32), ptr @__kstrtab___drmm_add_action_or_reset, ptr @__kstrtabns___drmm_add_action_or_reset }, section "___ksymtab+__drmm_add_action_or_reset", align 4
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to allocate %zu bytes, %u flags\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmalloc\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_drmm_kmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kmalloc to i32), ptr @__kstrtab_drmm_kmalloc, ptr @__kstrtabns_drmm_kmalloc }, section "___ksymtab+drmm_kmalloc", align 4
@__kstrtab_drmm_kstrdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kstrdup = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kstrdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kstrdup to i32), ptr @__kstrtab_drmm_kstrdup, ptr @__kstrtabns_drmm_kstrdup }, section "___ksymtab_gpl+drmm_kstrdup", align 4
@__kstrtab_drmm_kfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_kfree = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_kfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_kfree to i32), ptr @__kstrtab_drmm_kfree, ptr @__kstrtabns_drmm_kfree }, section "___ksymtab+drmm_kfree", align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ADD %p %s (%lu bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DEL %p %s (%lu bytes)\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 67, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 69, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 78, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 130, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 147, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 194, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 198, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 124, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [33 x i8] c"../drivers/gpu/drm/drm_managed.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 112, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab___drmm_add_action, ptr @__ksymtab___drmm_add_action_or_reset, ptr @__ksymtab_drmm_kfree, ptr @__ksymtab_drmm_kmalloc, ptr @__ksymtab_drmm_kstrdup, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_managed_release(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 512, ptr noundef nonnull @.str) #5
  %managed = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %managed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %managed, align 4
  %cmp.not65 = icmp eq ptr %3, %managed
  br i1 %cmp.not65, label %cond.end.for.end_crit_edge, label %for.body.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %dr.066 = phi ptr [ %3, %for.body.lr.ph ], [ %tmp.067, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %dr.066 to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.067 = load ptr, ptr %dr.066, align 128
  br i1 %tobool.not, label %for.body.cond.end16_crit_edge, label %cond.true13

for.body.cond.end16_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end16

cond.true13:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev14, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true13, %for.body.cond.end16_crit_edge
  %cond17 = phi ptr [ %6, %cond.true13 ], [ null, %for.body.cond.end16_crit_edge ]
  %name = getelementptr inbounds %struct.drmres_node, ptr %dr.066, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %size = getelementptr inbounds %struct.drmres_node, ptr %dr.066, i32 0, i32 3
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond17, i32 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %dr.066, ptr noundef %8, i32 noundef %10) #5
  %release = getelementptr inbounds %struct.drmres_node, ptr %dr.066, i32 0, i32 1
  %11 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %release, align 8
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %cond.end16.if.end_crit_edge, label %if.then

cond.end16.if.end_crit_edge:                      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end16
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool26.not = icmp eq i32 %14, 0
  br i1 %tobool26.not, label %if.then.cond.end29_crit_edge, label %cond.true27

if.then.cond.end29_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end29

cond.true27:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.drmres, ptr %dr.066, i32 0, i32 2
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 128
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true27, %if.then.cond.end29_crit_edge
  %cond30 = phi ptr [ %16, %cond.true27 ], [ null, %if.then.cond.end29_crit_edge ]
  tail call void %12(ptr noundef %dev, ptr noundef %cond30) #5
  br label %if.end

if.end:                                           ; preds = %cond.end29, %cond.end16.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dr.066) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dr.066, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %dr.066 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dr.066, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %dr.066 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %dr.066, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dr.066, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void @kfree_const(ptr noundef %26) #5
  tail call void @kfree(ptr noundef %dr.066) #5
  %cmp.not = icmp eq ptr %tmp.067, %managed
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %cond.end.for.end_crit_edge
  br i1 %tobool.not, label %for.end.cond.end43_crit_edge, label %cond.true40

for.end.cond.end43_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end43

cond.true40:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %27 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev41, align 4
  br label %cond.end43

cond.end43:                                       ; preds = %cond.true40, %for.end.cond.end43_crit_edge
  %cond44 = phi ptr [ %28, %cond.true40 ], [ null, %for.end.cond.end43_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond44, i32 noundef 512, ptr noundef nonnull @.str.2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drmm_add_final_kfree(ptr noundef %dev, ptr noundef %container) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %final_kfree = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %final_kfree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %final_kfree, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !37

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp = icmp ult ptr %dev, %container
  br i1 %cmp, label %do.end36, label %if.end.if.end42_crit_edge, !prof !38

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 9, ptr noundef null) #5
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end.if.end42_crit_edge
  %add.ptr = getelementptr %struct.drm_device, ptr %dev, i32 1
  %call = tail call i32 @ksize(ptr noundef %container) #5
  %add.ptr51 = getelementptr i8, ptr %container, i32 %call
  %cmp52 = icmp ugt ptr %add.ptr, %add.ptr51
  br i1 %cmp52, label %do.end68, label %if.end42.if.end74_crit_edge, !prof !38

if.end42.if.end74_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.end68:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 132, i32 noundef 9, ptr noundef null) #5
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end42.if.end74_crit_edge
  %2 = ptrtoint ptr %final_kfree to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %container, ptr %final_kfree, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drmm_add_action(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  %cond = select i1 %tobool.not, i32 0, i32 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = or i32 %cond, 128
  %1 = tail call ptr @llvm.returnaddress(i32 0) #5
  %2 = ptrtoint ptr %1 to i32
  %call5.i = tail call ptr @__kmalloc_track_caller(i32 noundef %0, i32 noundef 3520, i32 noundef %2) #5
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then, label %if.end, !prof !38

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %dev, null
  br i1 %tobool4.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond6 = phi ptr [ %4, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond6, i32 noundef 512, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %data) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %call5.i, i32 0, i32 128)
  %6 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call5.i, ptr %call5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call5.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i, ptr %prev.i.i, align 4
  %release19.i = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 1
  %8 = ptrtoint ptr %release19.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %action, ptr %release19.i, align 8
  %size21.i = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 3
  %9 = ptrtoint ptr %size21.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %size21.i, align 16
  %call7 = tail call ptr @kstrdup_const(ptr noundef %name, i32 noundef 3264) #5
  %name8 = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 2
  %10 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %name8, align 4
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data11 = getelementptr inbounds %struct.drmres, ptr %call5.i, i32 0, i32 2
  %11 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data, ptr %data11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %managed.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %12 = ptrtoint ptr %managed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %managed.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call5.i, ptr noundef %managed.i, ptr noundef %13) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end12.list_add.exit.i_crit_edge

if.end12.list_add.exit.i_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call5.i, align 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %managed.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %managed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call5.i, ptr %managed.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end12.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %list_add.exit.i.add_dr.exit_crit_edge, label %cond.true.i

list_add.exit.i.add_dr.exit_crit_edge:            ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %add_dr.exit

cond.true.i:                                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  br label %add_dr.exit

add_dr.exit:                                      ; preds = %cond.true.i, %list_add.exit.i.add_dr.exit_crit_edge
  %cond.i = phi ptr [ %19, %cond.true.i ], [ null, %list_add.exit.i.add_dr.exit_crit_edge ]
  %20 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name8, align 4
  %22 = ptrtoint ptr %size21.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size21.i, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %call5.i, ptr noundef %21, i32 noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %add_dr.exit, %cond.end
  %retval.0 = phi i32 [ 0, %add_dr.exit ], [ -12, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__drmm_add_action(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %action(ptr noundef %dev, ptr noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @drmm_kmalloc(ptr noundef %dev, i32 noundef %size, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %size, i32 128) #5
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.if.then_crit_edge, label %if.end.i, !prof !38

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i:                                         ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = tail call ptr @llvm.returnaddress(i32 0) #5
  %4 = ptrtoint ptr %3 to i32
  %call5.i = tail call ptr @__kmalloc_track_caller(i32 noundef %2, i32 noundef %gfp, i32 noundef %4) #5
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.then_crit_edge, label %if.end, !prof !38

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %tobool3.not = icmp eq ptr %dev, null
  br i1 %tobool3.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 512, ptr noundef nonnull @.str.5, i32 noundef %size, i32 noundef %gfp) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %7 = call ptr @memset(ptr %call5.i, i32 0, i32 128)
  %8 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call5.i, ptr %call5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call5.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i, ptr %prev.i.i, align 4
  %release19.i = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 1
  %10 = ptrtoint ptr %release19.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %release19.i, align 8
  %size21.i = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 3
  %11 = ptrtoint ptr %size21.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %size, ptr %size21.i, align 16
  %call5 = tail call ptr @kstrdup_const(ptr noundef nonnull @.str.6, i32 noundef 3264) #5
  %name = getelementptr inbounds %struct.drmres_node, ptr %call5.i, i32 0, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %name, align 4
  %managed.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3, i32 2
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  %13 = ptrtoint ptr %managed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %managed.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call5.i, ptr noundef %managed.i, ptr noundef %14) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_add.exit.i_crit_edge

if.end.list_add.exit.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %call5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %call5.i, align 4
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %managed.i, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %managed.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call5.i, ptr %managed.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #5
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %list_add.exit.i.add_dr.exit_crit_edge, label %cond.true.i

list_add.exit.i.add_dr.exit_crit_edge:            ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %add_dr.exit

cond.true.i:                                      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 4
  br label %add_dr.exit

add_dr.exit:                                      ; preds = %cond.true.i, %list_add.exit.i.add_dr.exit_crit_edge
  %cond.i = phi ptr [ %20, %cond.true.i ], [ null, %list_add.exit.i.add_dr.exit_crit_edge ]
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %23 = ptrtoint ptr %size21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size21.i, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 512, ptr noundef nonnull @.str.7, ptr noundef nonnull %call5.i, ptr noundef %22, i32 noundef %24) #5
  %data = getelementptr inbounds %struct.drmres, ptr %call5.i, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %add_dr.exit, %cond.end
  %retval.0 = phi ptr [ %data, %add_dr.exit ], [ null, %cond.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @drmm_kstrdup(ptr noundef %dev, ptr noundef readonly %s, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %s, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @strlen(ptr noundef nonnull %s) #8
  %add = add i32 %call, 1
  %call1 = tail call noalias ptr @drmm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef %gfp)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memcpy(ptr %call1, ptr %s, i32 %add)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drmm_kfree(ptr noundef %dev, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1:                                         ; preds = %entry
  %managed = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3
  %lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 3, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body1
  %dr.0.in = phi ptr [ %managed, %do.body1 ], [ %dr.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %dr.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %dr.0 = load ptr, ptr %dr.0.in, align 4
  %cmp10.not = icmp eq ptr %dr.0, %managed
  br i1 %cmp10.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  br label %do.end39

for.body:                                         ; preds = %for.cond
  %data12 = getelementptr inbounds %struct.drmres, ptr %dr.0, i32 0, i32 2
  %cmp13 = icmp eq ptr %data12, %data
  br i1 %cmp13, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then15:                                        ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dr.0) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.list_del_init.exit.i_crit_edge

if.then15.list_del_init.exit.i_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dr.0, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %dr.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dr.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then15.list_del_init.exit.i_crit_edge
  %7 = ptrtoint ptr %dr.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dr.0, ptr %dr.0, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %dr.0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dr.0, ptr %prev.i3.i.i, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %list_del_init.exit.i.for.end_crit_edge, label %cond.true.i

list_del_init.exit.i.for.end_crit_edge:           ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cond.true.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2.i, align 4
  br label %for.end

for.end:                                          ; preds = %cond.true.i, %list_del_init.exit.i.for.end_crit_edge
  %cond.i = phi ptr [ %10, %cond.true.i ], [ null, %list_del_init.exit.i.for.end_crit_edge ]
  %name.i = getelementptr inbounds %struct.drmres_node, ptr %dr.0, i32 0, i32 2
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %size.i = getelementptr inbounds %struct.drmres_node, ptr %dr.0, i32 0, i32 3
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i, align 16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 512, ptr noundef nonnull @.str.8, ptr noundef %dr.0, ptr noundef %12, i32 noundef %14) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #5
  %tobool25.not = icmp eq ptr %dr.0, null
  br i1 %tobool25.not, label %for.end.do.end39_crit_edge, label %if.end55, !prof !38

for.end.do.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.end39:                                         ; preds = %for.end.do.end39_crit_edge, %for.end.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 259, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name.i, align 4
  tail call void @kfree_const(ptr noundef %16) #5
  tail call void @kfree(ptr noundef nonnull %dr.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end39, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_managed.c", i32 67, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_managed.c", i32 69, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_managed.c", i32 78, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_managed.c", i32 130, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_managed.c", i32 147, i32 3}
!10 = !{ptr @__ksymtab___drmm_add_action, !11, !"__ksymtab___drmm_add_action", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_managed.c", i32 162, i32 1}
!12 = !{ptr @__ksymtab___drmm_add_action_or_reset, !13, !"__ksymtab___drmm_add_action_or_reset", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_managed.c", i32 176, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_managed.c", i32 194, i32 3}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_managed.c", i32 198, i32 32}
!18 = !{ptr @__ksymtab_drmm_kmalloc, !19, !"__ksymtab_drmm_kmalloc", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/drm_managed.c", i32 204, i32 1}
!20 = !{ptr @__ksymtab_drmm_kstrdup, !21, !"__ksymtab_drmm_kstrdup", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/drm_managed.c", i32 230, i32 1}
!22 = !{ptr @__ksymtab_drmm_kfree, !23, !"__ksymtab_drmm_kfree", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_managed.c", i32 264, i32 1}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_managed.c", i32 124, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_managed.c", i32 112, i32 2}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"branch_weights", i32 1, i32 2000}
