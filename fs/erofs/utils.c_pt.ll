; ModuleID = '/llk/IR_all_yes/fs/erofs/utils.c_pt.bc'
source_filename = "../fs/erofs/utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.53 }
%union.anon.53 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.70, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.erofs_workgroup = type { i32, %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/erofs/utils.c\00", [47 x i8] zeroinitializer }, align 32
@erofs_global_shrink_cnt = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@erofs_shrinker_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&sbi->umount_mutex\00", [45 x i8] zeroinitializer }, align 32
@erofs_sb_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@erofs_sb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @erofs_sb_list, ptr @erofs_sb_list }, [24 x i8] zeroinitializer }, align 32
@erofs_shrinker_info = internal global { %struct.shrinker, [60 x i8] } { %struct.shrinker { ptr @erofs_shrink_count, ptr @erofs_shrink_scan, i32 0, i32 2, i32 0, %struct.list_head zeroinitializer, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"erofs_sb_list_lock\00", [45 x i8] zeroinitializer }, align 32
@shrinker_run_no = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 99, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"erofs_global_shrink_cnt\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 34, i32 22 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 195, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"erofs_sb_list_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"erofs_sb_list\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 189, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [20 x i8] c"erofs_shrinker_info\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 277, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 717, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 188, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"shrinker_run_no\00", align 1
@___asan_gen_.45 = private constant [20 x i8] c"../fs/erofs/utils.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 185, i32 21 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @erofs_global_shrink_cnt, ptr @erofs_shrinker_register.__key, ptr @.str.1, ptr @erofs_sb_list_lock, ptr @erofs_sb_list, ptr @erofs_shrinker_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @shrinker_run_no], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_global_shrink_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_shrinker_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_sb_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_sb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_shrinker_info to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shrinker_run_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_allocpage(ptr nocapture noundef %pagepool, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagepool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %_refcount.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #7
  %2 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %_refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !37

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/utils.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 14, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %private = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pagepool, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  br label %if.end11

if.end11:                                         ; preds = %if.else, %do.end9
  %page.0 = phi ptr [ %1, %do.end9 ], [ %call38.i.i.i, %if.else ]
  ret ptr %page.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_release_pages(ptr nocapture noundef %pagepool) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagepool, align 4
  %tobool.not4 = icmp eq ptr %1, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %17, %put_page.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %private = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %private, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = ptrtoint ptr %pagepool to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pagepool, align 4
  %7 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !37

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !39

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !40
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@erofs_release_pages, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !44

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %11) #7
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %16 = ptrtoint ptr %pagepool to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pagepool, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_find_workgroup(ptr nocapture noundef readonly %sb, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %managed_pslots = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 3
  br label %repeat

repeat:                                           ; preds = %rcu_read_unlock.exit, %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %repeat.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

repeat.rcu_read_lock.exit_crit_edge:              ; preds = %repeat
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %repeat
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %repeat.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @xa_load(ptr noundef %managed_pslots, i32 noundef %index) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end15_crit_edge, label %if.then

rcu_read_lock.exit.if.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %rcu_read_lock.exit
  %refcount.i.i = getelementptr inbounds %struct.erofs_workgroup, ptr %call, i32 0, i32 1
  br label %repeat.i

repeat.i:                                         ; preds = %atomic_cmpxchg.exit.i.repeat.i_crit_edge, %if.then
  %6 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -520810292, i32 %7)
  %cmp.not12.i.i = icmp eq i32 %7, -520810292
  br i1 %cmp.not12.i.i, label %repeat.i.do.end5.i.i_crit_edge, label %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge

repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge: ; preds = %repeat.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_wait_on_workgroup_freezed.exit.i

repeat.i.do.end5.i.i_crit_edge:                   ; preds = %repeat.i
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end5.i.i.do.end5.i.i_crit_edge, %repeat.i.do.end5.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !47
  %8 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %9, -520810292
  br i1 %cmp.not.i.i, label %do.end5.i.i.do.end5.i.i_crit_edge, label %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge

do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_wait_on_workgroup_freezed.exit.i

do.end5.i.i.do.end5.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i.i

erofs_wait_on_workgroup_freezed.exit.i:           ; preds = %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge, %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %7, %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge ], [ %9, %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa.i.i)
  %cmp.i = icmp slt i32 %.lcssa.i.i, 1
  br i1 %cmp.i, label %if.then3, label %if.end.i

if.end.i:                                         ; preds = %erofs_wait_on_workgroup_freezed.exit.i
  %add.i = add nuw i32 %.lcssa.i.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %.lcssa.i.i, i32 %add.i, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %cmp2.not.i = icmp eq i32 %asmresult3.i.i.i.i, %.lcssa.i.i
  br i1 %cmp2.not.i, label %if.end4.i, label %atomic_cmpxchg.exit.i.repeat.i_crit_edge

atomic_cmpxchg.exit.i.repeat.i_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %repeat.i

if.end4.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa.i.i)
  %cmp5.i = icmp eq i32 %.lcssa.i.i, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.do.body_crit_edge

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @erofs_global_shrink_cnt, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @erofs_global_shrink_cnt, ptr nonnull @erofs_global_shrink_cnt, i32 1, ptr nonnull elementtype(i32) @erofs_global_shrink_cnt) #7, !srcloc !51
  br label %do.body

if.then3:                                         ; preds = %erofs_wait_on_workgroup_freezed.exit.i
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i20, label %if.then3.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.then3.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.then3
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.then3.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %12 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i27 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %repeat

do.body:                                          ; preds = %if.then6.i, %if.end4.i.do.body_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %index)
  %cmp.not = icmp eq i32 %17, %index
  br i1 %cmp.not, label %do.body.if.end15_crit_edge, label %do.body8, !prof !37

do.body.if.end15_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/utils.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 70, 0\0A.popsection", ""() #7, !srcloc !53
  unreachable

if.end15:                                         ; preds = %do.body.if.end15_crit_edge, %rcu_read_lock.exit.if.end15_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i29, label %if.end15.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true.i32

if.end15.rcu_read_unlock.exit39_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

land.lhs.true.i32:                                ; preds = %if.end15
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit39

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #7
  br label %rcu_read_unlock.exit39

rcu_read_unlock.exit39:                           ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit39_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit39_crit_edge, %if.end15.rcu_read_unlock.exit39_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %18 = tail call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i36 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i38 = add i32 %21, -1
  store volatile i32 %sub.i.i.i38, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_insert_workgroup(ptr nocapture noundef readonly %sb, ptr noundef %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %refcount = getelementptr inbounds %struct.erofs_workgroup, ptr %grp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !54
  %managed_pslots = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %managed_pslots) #7
  %3 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %grp, align 4
  %call44 = tail call ptr @__xa_cmpxchg(ptr noundef %managed_pslots, i32 noundef %4, ptr noundef null, ptr noundef %grp, i32 noundef 3136) #7
  %tobool.not45 = icmp eq ptr %call44, null
  br i1 %tobool.not45, label %entry.if.end14_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %if.then8.if.then_crit_edge, %entry.if.then_crit_edge
  %call46 = phi ptr [ %call, %if.then8.if.then_crit_edge ], [ %call44, %entry.if.then_crit_edge ]
  %5 = ptrtoint ptr %call46 to i32
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 2
  %cmp.i = icmp uge ptr %call46, inttoptr (i32 -16378 to ptr)
  %spec.select.i = and i1 %cmp.i, %cmp.i.i
  br i1 %spec.select.i, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call46 to i32
  %shr.i = ashr i32 %6, 2
  %7 = inttoptr i32 %shr.i to ptr
  br label %if.end12

if.else:                                          ; preds = %if.then
  %refcount.i.i = getelementptr inbounds %struct.erofs_workgroup, ptr %call46, i32 0, i32 1
  br label %repeat.i

repeat.i:                                         ; preds = %atomic_cmpxchg.exit.i.repeat.i_crit_edge, %if.else
  %8 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -520810292, i32 %9)
  %cmp.not12.i.i = icmp eq i32 %9, -520810292
  br i1 %cmp.not12.i.i, label %repeat.i.do.end5.i.i_crit_edge, label %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge

repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge: ; preds = %repeat.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_wait_on_workgroup_freezed.exit.i

repeat.i.do.end5.i.i_crit_edge:                   ; preds = %repeat.i
  br label %do.end5.i.i

do.end5.i.i:                                      ; preds = %do.end5.i.i.do.end5.i.i_crit_edge, %repeat.i.do.end5.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !47
  %10 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %refcount.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %11, -520810292
  br i1 %cmp.not.i.i, label %do.end5.i.i.do.end5.i.i_crit_edge, label %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge

do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge: ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %erofs_wait_on_workgroup_freezed.exit.i

do.end5.i.i.do.end5.i.i_crit_edge:                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i.i

erofs_wait_on_workgroup_freezed.exit.i:           ; preds = %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge, %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %9, %repeat.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge ], [ %11, %do.end5.i.i.erofs_wait_on_workgroup_freezed.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa.i.i)
  %cmp.i30 = icmp slt i32 %.lcssa.i.i, 1
  br i1 %cmp.i30, label %if.then8, label %if.end.i

if.end.i:                                         ; preds = %erofs_wait_on_workgroup_freezed.exit.i
  %add.i = add nuw i32 %.lcssa.i.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end.i
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %.lcssa.i.i, i32 %add.i, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %cmp2.not.i = icmp eq i32 %asmresult3.i.i.i.i, %.lcssa.i.i
  br i1 %cmp2.not.i, label %if.end4.i, label %atomic_cmpxchg.exit.i.repeat.i_crit_edge

atomic_cmpxchg.exit.i.repeat.i_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %repeat.i

if.end4.i:                                        ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.lcssa.i.i)
  %cmp5.i = icmp eq i32 %.lcssa.i.i, 1
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end12_crit_edge

if.end4.i.if.end12_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @erofs_global_shrink_cnt, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @erofs_global_shrink_cnt, ptr nonnull @erofs_global_shrink_cnt, i32 1, ptr nonnull elementtype(i32) @erofs_global_shrink_cnt) #7, !srcloc !51
  br label %if.end12

if.then8:                                         ; preds = %erofs_wait_on_workgroup_freezed.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %managed_pslots) #7
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 0) #7
  %call.i = tail call i32 @__cond_resched() #7
  tail call void @_raw_spin_lock(ptr noundef %managed_pslots) #7
  %14 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %grp, align 4
  %call = tail call ptr @__xa_cmpxchg(ptr noundef %managed_pslots, i32 noundef %15, ptr noundef null, ptr noundef %grp, i32 noundef 3136) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then8.if.end14_crit_edge, label %if.then8.if.then_crit_edge

if.then8.if.then_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end12:                                         ; preds = %if.then6.i, %if.end4.i.if.end12_crit_edge, %if.then3
  %pre.0 = phi ptr [ %7, %if.then3 ], [ %call46, %if.then6.i ], [ %call46, %if.end4.i.if.end12_crit_edge ]
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !51
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.then8.if.end14_crit_edge, %entry.if.end14_crit_edge
  %grp.addr.0 = phi ptr [ %pre.0, %if.end12 ], [ %grp, %entry.if.end14_crit_edge ], [ %grp, %if.then8.if.end14_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %managed_pslots) #7
  ret ptr %grp.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_workgroup_put(ptr noundef %grp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.erofs_workgroup, ptr %grp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !42
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  %1 = zext i32 %asmresult.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult.i.i.i.i, label %entry.if.end2_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then1
  ]

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i6 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @erofs_global_shrink_cnt, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @erofs_global_shrink_cnt, ptr nonnull @erofs_global_shrink_cnt, i32 1, ptr nonnull elementtype(i32) @erofs_global_shrink_cnt) #7, !srcloc !54
  br label %if.end2

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @erofs_global_shrink_cnt, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @erofs_global_shrink_cnt, ptr nonnull @erofs_global_shrink_cnt, i32 1, ptr nonnull elementtype(i32) @erofs_global_shrink_cnt) #7, !srcloc !51
  tail call void @erofs_workgroup_free_rcu(ptr noundef %grp) #7
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.then, %entry.if.end2_crit_edge
  ret i32 %asmresult.i.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_shrinker_register(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %umount_mutex = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %umount_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @erofs_shrinker_register.__key) #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @erofs_sb_list_lock) #7
  %list = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr @erofs_sb_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @erofs_sb_list, ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @erofs_sb_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @erofs_sb_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @erofs_sb_list_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_shrinker_unregister(ptr nocapture noundef readonly %sb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %umount_mutex = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %umount_mutex, i32 noundef 0) #7
  %call = tail call fastcc i32 @erofs_shrink_workstation(ptr noundef %1, i32 noundef -1)
  tail call void @_raw_spin_lock(ptr noundef nonnull @erofs_sb_list_lock) #7
  %list = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.erofs_sb_info, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @erofs_sb_list_lock) #7
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @erofs_shrink_workstation(ptr noundef %sbi, i32 noundef %nr_shrink) unnamed_addr #0 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #7
  %managed_pslots = getelementptr inbounds %struct.erofs_sb_info, ptr %sbi, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %managed_pslots) #7
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %index, align 4
  %call = call ptr @xa_find(ptr noundef %managed_pslots, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool.not28 = icmp eq ptr %call, null
  br i1 %tobool.not28, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %freed.031 = phi i32 [ %freed.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %grp.030 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %nr_shrink.addr.029 = phi i32 [ %nr_shrink.addr.1, %for.inc.for.body_crit_edge ], [ %nr_shrink, %entry.for.body_crit_edge ]
  %1 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %refcount.i.i = getelementptr inbounds %struct.erofs_workgroup, ptr %grp.030, i32 0, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !48
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, i32 -520810292, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !49
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

atomic_cmpxchg.exit.i.i:                          ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i, label %erofs_workgroup_try_to_freeze.exit.i

erofs_workgroup_try_to_freeze.exit.i:             ; preds = %atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !56
  %6 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i1.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %preempt_count.i.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i2.i.i, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i2.i.i, align 4
  br label %for.inc

if.end.i:                                         ; preds = %atomic_cmpxchg.exit.i.i
  %call1.i = call i32 @erofs_try_to_free_all_cached_pages(ptr noundef %sbi, ptr noundef nonnull %grp.030) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %call.i.i.i21.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %11 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i22.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i22.i to ptr
  %preempt_count.i.i.i23.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i23.i, align 4
  %sub.i.i24.i = add i32 %14, -1
  store volatile i32 %sub.i.i24.i, ptr %preempt_count.i.i.i23.i, align 4
  br label %for.inc

do.body.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %grp.030 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %grp.030, align 4
  %call4.i = call ptr @__xa_erase(ptr noundef %managed_pslots, i32 noundef %16) #7
  %cmp.not.i = icmp eq ptr %call4.i, %grp.030
  br i1 %cmp.not.i, label %if.end, label %do.body8.i, !prof !37

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/utils.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 153, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

if.end:                                           ; preds = %do.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  %call.i.i.i26.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  %17 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 0, ptr %refcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !58
  %18 = call i32 @llvm.read_register.i32(metadata !27) #7
  %and.i.i.i.i27.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i27.i to ptr
  %preempt_count.i.i.i28.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i28.i, align 4
  %sub.i.i29.i = add i32 %21, -1
  store volatile i32 %sub.i.i29.i, ptr %preempt_count.i.i.i28.i, align 4
  %call.i.i.i30.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr nonnull @erofs_global_shrink_cnt, i32 1, i32 3, i32 1) #7
  %22 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @erofs_global_shrink_cnt, ptr nonnull @erofs_global_shrink_cnt, i32 1, ptr nonnull elementtype(i32) @erofs_global_shrink_cnt) #7, !srcloc !51
  call void @erofs_workgroup_free_rcu(ptr noundef nonnull %grp.030) #7
  call void @_raw_spin_unlock(ptr noundef %managed_pslots) #7
  %inc = add i32 %freed.031, 1
  %dec = add i32 %nr_shrink.addr.029, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock(ptr noundef %managed_pslots) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then2.i, %erofs_workgroup_try_to_freeze.exit.i
  %nr_shrink.addr.1 = phi i32 [ %dec, %if.end7 ], [ %nr_shrink.addr.029, %if.then2.i ], [ %nr_shrink.addr.029, %erofs_workgroup_try_to_freeze.exit.i ]
  %freed.1 = phi i32 [ %inc, %if.end7 ], [ %freed.031, %if.then2.i ], [ %freed.031, %erofs_workgroup_try_to_freeze.exit.i ]
  %call11 = call ptr @xa_find_after(ptr noundef %managed_pslots, ptr noundef nonnull %index, i32 noundef -1, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %freed.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %freed.1, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %managed_pslots) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %freed.0.lcssa, %for.end ], [ %inc, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_init_shrinker() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_shrinker(ptr noundef nonnull @erofs_shrinker_info) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @erofs_exit_shrinker() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_shrinker(ptr noundef nonnull @erofs_shrinker_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_workgroup_free_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @erofs_try_to_free_all_cached_pages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_shrink_count(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readnone %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @erofs_global_shrink_cnt, i32 noundef 4) #7
  %0 = load volatile i32, ptr @erofs_global_shrink_cnt, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_shrink_scan(ptr nocapture noundef readnone %shrink, ptr nocapture noundef readonly %sc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @erofs_sb_list_lock) #7
  %shrinker_run_no.promoted = load i32, ptr @shrinker_run_no, align 4
  %phi.bo = add i32 %shrinker_run_no.promoted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %cmp.peel = icmp eq i32 %phi.bo, 0
  %inc30.lcssa = select i1 %cmp.peel, i32 1, i32 %phi.bo
  store i32 %inc30.lcssa, ptr @shrinker_run_no, align 4
  %2 = load ptr, ptr @erofs_sb_list, align 4
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %list_move_tail.exit.while.cond.outer_crit_edge, %entry
  %freed.0.ph = phi i32 [ %add, %list_move_tail.exit.while.cond.outer_crit_edge ], [ 0, %entry ]
  %p.0.ph = phi ptr [ %9, %list_move_tail.exit.while.cond.outer_crit_edge ], [ %2, %entry ]
  %cmp1.not33 = icmp eq ptr %p.0.ph, @erofs_sb_list
  br i1 %cmp1.not33, label %while.cond.outer.while.end_crit_edge, label %while.cond.outer.while.body_crit_edge

while.cond.outer.while.body_crit_edge:            ; preds = %while.cond.outer
  br label %while.body

while.cond.outer.while.end_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.then3.while.body_crit_edge, %while.cond.outer.while.body_crit_edge
  %p.034 = phi ptr [ %6, %if.then3.while.body_crit_edge ], [ %p.0.ph, %while.cond.outer.while.body_crit_edge ]
  %shrinker_run_no = getelementptr i8, ptr %p.034, i32 152
  %3 = ptrtoint ptr %shrinker_run_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shrinker_run_no, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %inc30.lcssa)
  %cmp2 = icmp eq i32 %4, %inc30.lcssa
  br i1 %cmp2, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %umount_mutex = getelementptr i8, ptr %p.034, i32 8
  %call = tail call i32 @mutex_trylock(ptr noundef %umount_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %5 = ptrtoint ptr %p.034 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.034, align 4
  %cmp1.not = icmp eq ptr %6, @erofs_sb_list
  br i1 %cmp1.not, label %if.then3.while.end_crit_edge, label %if.then3.while.body_crit_edge

if.then3.while.body_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then3.while.end_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4:                                          ; preds = %if.end
  %shrinker_run_no.le = getelementptr i8, ptr %p.034, i32 152
  %add.ptr.le = getelementptr i8, ptr %p.034, i32 -16
  tail call void @_raw_spin_unlock(ptr noundef nonnull @erofs_sb_list_lock) #7
  %7 = ptrtoint ptr %shrinker_run_no.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %inc30.lcssa, ptr %shrinker_run_no.le, align 8
  %sub = sub i32 %1, %freed.0.ph
  %call6 = tail call fastcc i32 @erofs_shrink_workstation(ptr noundef %add.ptr.le, i32 noundef %sub)
  %add = add i32 %call6, %freed.0.ph
  tail call void @_raw_spin_lock(ptr noundef nonnull @erofs_sb_list_lock) #7
  %8 = ptrtoint ptr %p.034 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.034, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %p.034) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.__list_del_entry.exit.i_crit_edge

if.end4.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %p.034, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %p.034 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end4.__list_del_entry.exit.i_crit_edge
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @erofs_sb_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p.034, ptr noundef %16, ptr noundef nonnull @erofs_sb_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %p.034, ptr getelementptr inbounds (%struct.list_head, ptr @erofs_sb_list, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %p.034 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @erofs_sb_list, ptr %p.034, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %p.034, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %p.034, ptr %16, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %umount_mutex) #7
  %cmp9.not = icmp ult i32 %add, %1
  br i1 %cmp9.not, label %list_move_tail.exit.while.cond.outer_crit_edge, label %list_move_tail.exit.while.end_crit_edge

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

list_move_tail.exit.while.cond.outer_crit_edge:   ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %if.then3.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.outer.while.end_crit_edge
  %freed.1 = phi i32 [ %freed.0.ph, %while.body.while.end_crit_edge ], [ %freed.0.ph, %if.then3.while.end_crit_edge ], [ %freed.0.ph, %while.cond.outer.while.end_crit_edge ], [ %add, %list_move_tail.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @erofs_sb_list_lock) #7
  ret i32 %freed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !17, !18, !20, !21, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/erofs/utils.c", i32 99, i32 4}
!2 = !{ptr @erofs_shrinker_register.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../fs/erofs/utils.c", i32 195, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @erofs_global_shrink_cnt, !6, !"erofs_global_shrink_cnt", i1 false, i1 false}
!6 = !{!"../fs/erofs/utils.c", i32 34, i32 22}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/mm.h", i32 717, i32 2}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/erofs/utils.c", i32 188, i32 8}
!20 = !{ptr @erofs_sb_list_lock, !19, !"erofs_sb_list_lock", i1 false, i1 false}
!21 = !{ptr @erofs_sb_list, !22, !"erofs_sb_list", i1 false, i1 false}
!22 = !{!"../fs/erofs/utils.c", i32 189, i32 8}
!23 = !{ptr @erofs_shrinker_info, !24, !"erofs_shrinker_info", i1 false, i1 false}
!24 = !{!"../fs/erofs/utils.c", i32 277, i32 24}
!25 = !{ptr @shrinker_run_no, !26, !"shrinker_run_no", i1 false, i1 false}
!26 = !{!"../fs/erofs/utils.c", i32 185, i32 21}
!27 = !{!"sp"}
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
!38 = !{i64 2154471574, i64 2154472054, i64 2154471611, i64 2154471667, i64 2154471701, i64 2154471725, i64 2154471766, i64 2154471787, i64 2154471815, i64 2154471849}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2153133798, i64 2153134281, i64 2153133835, i64 2153133891, i64 2153133925, i64 2153133949, i64 2153133990, i64 2153134011, i64 2153134039, i64 2153134073}
!41 = !{i64 2148763238}
!42 = !{i64 2148677947, i64 2148677979, i64 2148678008, i64 2148678042, i64 2148678073, i64 2148678096}
!43 = !{i64 2148763467}
!44 = !{i64 2148499360, i64 2148499365, i64 2148499378, i64 2148499422, i64 2148499456, i64 2148499477}
!45 = !{i64 2149487208}
!46 = !{i64 2154458067}
!47 = !{i64 2154457909}
!48 = !{i64 2148776609}
!49 = !{i64 1160275, i64 1160299, i64 1160320, i64 1160337, i64 1160354}
!50 = !{i64 2148776835}
!51 = !{i64 2148677227, i64 2148677253, i64 2148677282, i64 2148677316, i64 2148677347, i64 2148677370}
!52 = !{i64 2149487474}
!53 = !{i64 2154473297, i64 2154473777, i64 2154473334, i64 2154473390, i64 2154473424, i64 2154473448, i64 2154473489, i64 2154473510, i64 2154473538, i64 2154473572}
!54 = !{i64 2148674762, i64 2148674788, i64 2148674817, i64 2148674851, i64 2148674882, i64 2148674905}
!55 = !{i64 2154452969}
!56 = !{i64 2154453123}
!57 = !{i64 2154453446}
!58 = !{i64 2154453589}
!59 = !{i64 2154475388, i64 2154475869, i64 2154475425, i64 2154475481, i64 2154475515, i64 2154475539, i64 2154475580, i64 2154475601, i64 2154475629, i64 2154475663}
