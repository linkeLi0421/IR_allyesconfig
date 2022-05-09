; ModuleID = '/llk/IR_all_yes/fs/ufs/util.c_pt.bc'
source_filename = "../fs/ufs/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.ufs_sb_private_info = type { %struct.ufs_buffer_head, %struct.ufs_csum_core, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ufs_buffer_head = type { i64, i64, [8 x ptr] }
%struct.ufs_csum_core = type { i64, i64, i64, i64, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ufs_sb_info = type { ptr, ptr, i32, i32, ptr, [8 x ptr], [8 x i32], i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock, %struct.mutex }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.page = type { i32, %union.anon, %union.anon.63, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@ufs_get_locked_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ufs_change_blocknr: read_mapping_page error: ino %lu, index: %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufs_get_locked_page\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ufs/util.c\00", [18 x i8] zeroinitializer }, align 32
@ufs_get_locked_page._entry_ptr = internal global ptr @ufs_get_locked_page._entry, section ".printk_index", align 4
@ufs_get_locked_page._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013ufs_change_blocknr: can not read page: ino %lu, index: %lu\0A\00", [34 x i8] zeroinitializer }, align 32
@ufs_get_locked_page._entry_ptr.5 = internal global ptr @ufs_get_locked_page._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 1024]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 253, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private constant [17 x i8] c"../fs/ufs/util.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 272, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 354, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 788, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 260, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 717, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 416, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 452, i32 1 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @ufs_get_locked_page._entry, ptr @ufs_get_locked_page._entry.3, ptr @ufs_get_locked_page._entry_ptr, ptr @ufs_get_locked_page._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_get_locked_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_get_locked_page._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @_ubh_bread_(ptr nocapture noundef readonly %uspi, ptr nocapture noundef readonly %sb, i64 noundef %fragment, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 16
  %0 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %1, -1
  %conv = zext i32 %neg to i64
  %and = and i64 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 18
  %2 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %size, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %shr)
  %cmp = icmp ugt i64 %shr, 8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3136, i32 noundef 48) #14
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %fragment, ptr %call7.i, align 8
  %count8 = getelementptr inbounds %struct.ufs_buffer_head, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %count8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shr, ptr %count8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %cmp1060.not = icmp eq i64 %shr, 0
  br i1 %cmp1060.not, label %if.end6.for.body20.preheader_crit_edge, label %for.body.lr.ph

if.end6.for.body20.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body20.preheader

for.body.lr.ph:                                   ; preds = %if.end6
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.cond17.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp1863 = icmp ult i32 %inc, 8
  br i1 %cmp1863, label %for.cond17.preheader.for.body20.preheader_crit_edge, label %for.cond17.preheader.cleanup_crit_edge

for.cond17.preheader.cleanup_crit_edge:           ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond17.preheader.for.body20.preheader_crit_edge: ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.cond17.preheader.for.body20.preheader_crit_edge, %if.end6.for.body20.preheader_crit_edge
  %i.0.lcssa70 = phi i32 [ %inc, %for.cond17.preheader.for.body20.preheader_crit_edge ], [ 0, %if.end6.for.body20.preheader_crit_edge ]
  %7 = shl nuw nsw i32 %i.0.lcssa70, 2
  %8 = add nuw nsw i32 %7, 16
  %uglygep = getelementptr i8, ptr %call7.i, i32 %8
  %9 = sub nuw nsw i32 32, %7
  %10 = call ptr @memset(ptr %uglygep, i32 0, i32 %9)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv962 = phi i64 [ 0, %for.body.lr.ph ], [ %conv9, %for.inc.for.body_crit_edge ]
  %indvars = trunc i64 %conv962 to i32
  %add = add i64 %conv962, %fragment
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %add, i32 noundef %14, i32 noundef 8) #11
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %call7.i, i32 0, i32 2, i32 %indvars
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %for.cond26.preheader, label %for.inc

for.cond26.preheader:                             ; preds = %for.body
  %indvars.le = trunc i64 %conv962 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.le)
  %cmp2765.not = icmp eq i32 %indvars.le, 0
  br i1 %cmp2765.not, label %for.cond26.preheader.for.end34_crit_edge, label %for.cond26.preheader.for.body29_crit_edge

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond26.preheader.for.end34_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.inc:                                          ; preds = %for.body
  %inc = add i32 %indvars, 1
  %conv9 = zext i32 %inc to i64
  %cmp10 = icmp ugt i64 %shr, %conv9
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.cond17.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body29:                                       ; preds = %brelse.exit.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %j.066 = phi i32 [ %inc33, %brelse.exit.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.ufs_buffer_head, ptr %call7.i, i32 0, i32 2, i32 %j.066
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body29.brelse.exit_crit_edge, label %if.then.i

for.body29.brelse.exit_crit_edge:                 ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %17) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body29.brelse.exit_crit_edge
  %inc33 = add nuw i32 %j.066, 1
  %exitcond.not = icmp eq i32 %inc33, %indvars.le
  br i1 %exitcond.not, label %brelse.exit.for.end34_crit_edge, label %brelse.exit.for.body29_crit_edge

brelse.exit.for.body29_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

brelse.exit.for.end34_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.end34:                                        ; preds = %brelse.exit.for.end34_crit_edge, %for.cond26.preheader.for.end34_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end34, %for.body20.preheader, %for.cond17.preheader.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end34 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ %call7.i, %for.cond17.preheader.cleanup_crit_edge ], [ %call7.i, %for.body20.preheader ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ubh_bread_uspi(ptr noundef %uspi, ptr nocapture noundef readonly %sb, i64 noundef %fragment, i64 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fmask = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 16
  %0 = ptrtoint ptr %s_fmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_fmask, align 8
  %neg = xor i32 %1, -1
  %conv = zext i32 %neg to i64
  %and = and i64 %conv, %size
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 18
  %2 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %3 to i64
  %shr = lshr i64 %size, %sh_prom
  %4 = add i64 %shr, -9
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8, i64 %4)
  %5 = icmp ult i64 %4, -8
  br i1 %5, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %6 = ptrtoint ptr %uspi to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %fragment, ptr %uspi, align 8
  %count8 = getelementptr inbounds %struct.ufs_buffer_head, ptr %uspi, i32 0, i32 1
  %7 = ptrtoint ptr %count8 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shr, ptr %count8, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  br label %for.body

for.cond18.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc)
  %cmp1967 = icmp ult i32 %inc, 8
  br i1 %cmp1967, label %for.body21.preheader, label %for.cond18.preheader.cleanup_crit_edge

for.cond18.preheader.cleanup_crit_edge:           ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body21.preheader:                             ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %8 = shl nuw nsw i32 %inc, 2
  %9 = add nuw nsw i32 %8, 16
  %uglygep = getelementptr i8, ptr %uspi, i32 %9
  %10 = sub nuw nsw i32 32, %8
  %11 = call ptr @memset(ptr %uglygep, i32 0, i32 %10)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv966 = phi i64 [ 0, %for.body.lr.ph ], [ %conv9, %for.inc.for.body_crit_edge ]
  %indvars = trunc i64 %conv966 to i32
  %add = add i64 %conv966, %fragment
  %12 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_bdev.i, align 4
  %14 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %13, i64 noundef %add, i32 noundef %15, i32 noundef 8) #11
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %uspi, i32 0, i32 2, i32 %indvars
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %for.cond29.preheader, label %for.inc

for.cond29.preheader:                             ; preds = %for.body
  %indvars.le = trunc i64 %conv966 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %indvars.le)
  %cmp3069.not = icmp eq i32 %indvars.le, 0
  br i1 %cmp3069.not, label %for.cond29.preheader.cleanup_crit_edge, label %for.cond29.preheader.for.body32_crit_edge

for.cond29.preheader.for.body32_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body32

for.cond29.preheader.cleanup_crit_edge:           ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %indvars, 1
  %conv9 = zext i32 %inc to i64
  %cmp10 = icmp ugt i64 %shr, %conv9
  br i1 %cmp10, label %for.inc.for.body_crit_edge, label %for.cond18.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body32:                                       ; preds = %brelse.exit.for.body32_crit_edge, %for.cond29.preheader.for.body32_crit_edge
  %j.070 = phi i32 [ %inc37, %brelse.exit.for.body32_crit_edge ], [ 0, %for.cond29.preheader.for.body32_crit_edge ]
  %arrayidx35 = getelementptr %struct.ufs_buffer_head, ptr %uspi, i32 0, i32 2, i32 %j.070
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx35, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body32.brelse.exit_crit_edge, label %if.then.i

for.body32.brelse.exit_crit_edge:                 ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %18) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body32.brelse.exit_crit_edge
  %inc37 = add nuw i32 %j.070, 1
  %exitcond.not = icmp eq i32 %inc37, %indvars.le
  br i1 %exitcond.not, label %brelse.exit.cleanup_crit_edge, label %brelse.exit.for.body32_crit_edge

brelse.exit.for.body32_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body32

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %for.cond29.preheader.cleanup_crit_edge, %for.body21.preheader, %for.cond18.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.cond29.preheader.cleanup_crit_edge ], [ %uspi, %for.cond18.preheader.cleanup_crit_edge ], [ %uspi, %for.body21.preheader ], [ null, %brelse.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_brelse(ptr noundef %ubh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp7.not = icmp eq i64 %1, 0
  br i1 %cmp7.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %brelse.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.08
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %3) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %inc = add i32 %i.08, 1
  %conv = zext i32 %inc to i64
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.for.end_crit_edge

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %brelse.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %ubh) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_brelse_uspi(ptr noundef %uspi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %uspi, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %uspi, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp13.not = icmp eq i64 %1, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %brelse.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %brelse.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %uspi, i32 0, i32 2, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.brelse.exit_crit_edge, label %if.then.i

for.body.brelse.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__brelse(ptr noundef nonnull %3) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body.brelse.exit_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %inc = add i32 %i.014, 1
  %conv = zext i32 %inc to i64
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %6, %conv
  br i1 %cmp, label %brelse.exit.for.body_crit_edge, label %brelse.exit.cleanup_crit_edge

brelse.exit.cleanup_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

brelse.exit.for.body_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %brelse.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_mark_buffer_dirty(ptr noundef readonly %ubh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp6.not = icmp eq i64 %1, 0
  br i1 %cmp6.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @mark_buffer_dirty(ptr noundef %3) #11
  %inc = add i32 %i.07, 1
  %conv = zext i32 %inc to i64
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_mark_buffer_uptodate(ptr noundef readonly %ubh, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %tobool1.not = icmp eq i32 %flag, 0
  %count6 = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count6 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp728.not = icmp eq i64 %1, 0
  br i1 %tobool1.not, label %for.cond4.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp728.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond4.preheader:                              ; preds = %if.end
  br i1 %cmp728.not, label %for.cond4.preheader.cleanup_crit_edge, label %for.cond4.preheader.for.body9_crit_edge

for.cond4.preheader.for.body9_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body9

for.cond4.preheader.cleanup_crit_edge:            ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %set_buffer_uptodate.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %set_buffer_uptodate.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.set_buffer_uptodate.exit_crit_edge

for.body.set_buffer_uptodate.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %3) #11
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %for.body.set_buffer_uptodate.exit_crit_edge
  %inc = add i32 %i.027, 1
  %conv = zext i32 %inc to i64
  %6 = ptrtoint ptr %count6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %count6, align 8
  %cmp = icmp ugt i64 %7, %conv
  br i1 %cmp, label %set_buffer_uptodate.exit.for.body_crit_edge, label %set_buffer_uptodate.exit.cleanup_crit_edge

set_buffer_uptodate.exit.cleanup_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

set_buffer_uptodate.exit.for.body_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.cond4.preheader.for.body9_crit_edge
  %i.129 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 0, %for.cond4.preheader.for.body9_crit_edge ]
  %arrayidx11 = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.129
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %9) #11
  %inc13 = add i32 %i.129, 1
  %conv5 = zext i32 %inc13 to i64
  %10 = ptrtoint ptr %count6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %count6, align 8
  %cmp7 = icmp ugt i64 %11, %conv5
  br i1 %cmp7, label %for.body9.for.body9_crit_edge, label %for.body9.cleanup_crit_edge

for.body9.cleanup_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

cleanup:                                          ; preds = %for.body9.cleanup_crit_edge, %set_buffer_uptodate.exit.cleanup_crit_edge, %for.cond4.preheader.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_sync_block(ptr noundef readonly %ubh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp22.not = icmp eq i64 %1, 0
  br i1 %cmp22.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond2.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp524.not = icmp eq i64 %5, 0
  br i1 %cmp524.not, label %for.cond2.preheader.if.end_crit_edge, label %for.cond2.preheader.for.body7_crit_edge

for.cond2.preheader.for.body7_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body7

for.cond2.preheader.if.end_crit_edge:             ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @write_dirty_buffer(ptr noundef %3, i32 noundef 0) #11
  %inc = add i32 %i.023, 1
  %conv = zext i32 %inc to i64
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body7:                                        ; preds = %wait_on_buffer.exit.for.body7_crit_edge, %for.cond2.preheader.for.body7_crit_edge
  %i.125 = phi i32 [ %inc11, %wait_on_buffer.exit.for.body7_crit_edge ], [ 0, %for.cond2.preheader.for.body7_crit_edge ]
  %arrayidx9 = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.125
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #11
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %for.body7.wait_on_buffer.exit_crit_edge, label %if.then.i

for.body7.wait_on_buffer.exit_crit_edge:          ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__wait_on_buffer(ptr noundef %7) #11
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %for.body7.wait_on_buffer.exit_crit_edge
  %inc11 = add i32 %i.125, 1
  %conv3 = zext i32 %inc11 to i64
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %count, align 8
  %cmp5 = icmp ugt i64 %12, %conv3
  br i1 %cmp5, label %wait_on_buffer.exit.for.body7_crit_edge, label %wait_on_buffer.exit.if.end_crit_edge

wait_on_buffer.exit.if.end_crit_edge:             ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

wait_on_buffer.exit.for.body7_crit_edge:          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

if.end:                                           ; preds = %wait_on_buffer.exit.if.end_crit_edge, %for.cond2.preheader.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ubh_bforget(ptr noundef readonly %ubh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp13.not = icmp eq i64 %1, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %bforget.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

bforget.exit:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__bforget(ptr noundef nonnull %3) #11
  br label %for.inc

for.inc:                                          ; preds = %bforget.exit, %for.body.for.inc_crit_edge
  %inc = add i32 %i.014, 1
  %conv = zext i32 %inc to i64
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %count, align 8
  %cmp = icmp ugt i64 %5, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ubh_buffer_dirty(ptr noundef readonly %ubh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ubh, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp8.not = icmp eq i64 %1, 0
  br i1 %cmp8.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %result.010 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %shr.i.i = lshr i32 %5, 1
  %and1.i.i = and i32 %shr.i.i, 1
  %or = or i32 %and1.i.i, %result.010
  %inc = add i32 %i.09, 1
  %conv = zext i32 %inc to i64
  %cmp = icmp ugt i64 %1, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %or, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_ubh_ubhcpymem_(ptr nocapture noundef readonly %uspi, ptr nocapture noundef writeonly %mem, ptr nocapture noundef readonly %ubh, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %size to i64
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 18
  %2 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv)
  %cmp = icmp ult i64 %shl, %conv
  %conv6 = trunc i64 %shl to i32
  %spec.select = select i1 %cmp, i32 %conv6, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not23 = icmp eq i32 %spec.select, 0
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %mem.addr.026 = phi ptr [ %mem, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %bhno.025 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %size.addr.124 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %4 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_fsize, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %size.addr.124, i32 %5)
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %bhno.025
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %11 = call ptr @memcpy(ptr %mem.addr.026, ptr %10, i32 %6)
  %12 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fsize, align 8
  %add.ptr = getelementptr i8, ptr %mem.addr.026, i32 %13
  %sub = sub i32 %size.addr.124, %6
  %inc = add i32 %bhno.025, 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_ubh_memcpyubh_(ptr nocapture noundef readonly %uspi, ptr nocapture noundef readonly %ubh, ptr nocapture noundef readonly %mem, i32 noundef %size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %size to i64
  %count = getelementptr inbounds %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count, align 8
  %s_fshift = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 18
  %2 = ptrtoint ptr %s_fshift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_fshift, align 8
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 %1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv)
  %cmp = icmp ult i64 %shl, %conv
  %conv6 = trunc i64 %shl to i32
  %spec.select = select i1 %cmp, i32 %conv6, i32 %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not23 = icmp eq i32 %spec.select, 0
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %s_fsize = getelementptr inbounds %struct.ufs_sb_private_info, ptr %uspi, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %mem.addr.026 = phi ptr [ %mem, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %bhno.025 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %size.addr.124 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %4 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_fsize, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %size.addr.124, i32 %5)
  %arrayidx = getelementptr %struct.ufs_buffer_head, ptr %ubh, i32 0, i32 2, i32 %bhno.025
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %mem.addr.026, i32 %6)
  %12 = ptrtoint ptr %s_fsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_fsize, align 8
  %add.ptr = getelementptr i8, ptr %mem.addr.026, i32 %13
  %sub = sub i32 %size.addr.124, %6
  %inc = add i32 %bhno.025, 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ufs_get_inode_dev(ptr nocapture noundef readonly %sb, ptr nocapture noundef readonly %ufsi) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp = icmp eq i32 %and, 1024
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [15 x i32], ptr %ufsi, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %retval.0.i = select i1 %cmp.i, i32 %8, i32 %5
  br label %sw.bb

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %ufsi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ufsi, align 8
  %s_bytesex.i35 = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %s_bytesex.i35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_bytesex.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i36 = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  %retval.0.i37 = select i1 %cmp.i36, i32 %13, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and)
  %cond = icmp eq i32 %and, 512
  br i1 %cond, label %if.end.sw.bb_crit_edge, label %sw.default

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.thread
  %fs32.042 = phi i32 [ %retval.0.i, %if.end.thread ], [ %retval.0.i37, %if.end.sw.bb_crit_edge ]
  %14 = add i32 %fs32.042, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %14)
  %15 = icmp ult i32 %14, 131072
  br i1 %15, label %if.then12, label %if.else15

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv = shl nsw i32 %fs32.042, 12
  %16 = and i32 %conv, 133169152
  %and2.i = and i32 %fs32.042, 255
  %or.i = or i32 %16, %and2.i
  br label %sw.epilog

if.else15:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %17 = shl i32 %fs32.042, 2
  %shl = and i32 %17, -1048576
  %and.i = and i32 %fs32.042, 262143
  %or = or i32 %shl, %and.i
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i30 = shl i32 %retval.0.i37, 12
  %18 = and i32 %conv.i30, 267386880
  %and2.i32 = and i32 %retval.0.i37, 255
  %or.i33 = or i32 %18, %and2.i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else15, %if.then12
  %dev.0 = phi i32 [ %or.i33, %sw.default ], [ %or.i, %if.then12 ], [ %or, %if.else15 ]
  ret i32 %dev.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ufs_set_inode_dev(ptr nocapture noundef readonly %sb, ptr nocapture noundef writeonly %ufsi, i32 noundef %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_flags, align 4
  %and = and i32 %3, 1792
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %sw.default [
    i32 1024, label %entry.sw.bb_crit_edge
    i32 512, label %entry.sw.bb_crit_edge36
  ]

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge36
  %and.i = and i32 %dev, 1048575
  %5 = lshr i32 %dev, 2
  %shl.i = and i32 %5, 1073479680
  %or.i = or i32 %shl.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %or.i)
  %cmp = icmp ult i32 %or.i, 32768
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %6 = lshr i32 %dev, 12
  %shl.i25 = and i32 %6, 65280
  %dev.masked = and i32 %dev, 65535
  %conv = or i32 %shl.i25, %dev.masked
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = lshr i32 %dev, 12
  %shl.i27 = and i32 %7, 65280
  %dev.masked35 = and i32 %dev, 65535
  %conv5 = or i32 %shl.i27, %dev.masked35
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then, %sw.bb.sw.epilog_crit_edge
  %fs32.0 = phi i32 [ %conv5, %sw.default ], [ %conv, %if.then ], [ %or.i, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp9 = icmp eq i32 %and, 1024
  %s_bytesex.i = getelementptr inbounds %struct.ufs_sb_info, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %s_bytesex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_bytesex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %10 = tail call i32 @llvm.bswap.i32(i32 %fs32.0) #11
  %retval.0.i = select i1 %cmp.i, i32 %10, i32 %fs32.0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [15 x i32], ptr %ufsi, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  br label %if.end16

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %ufsi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %ufsi, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ufs_get_locked_page(ptr noundef %mapping, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index, i32 noundef 2, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then:                                          ; preds = %entry
  %call.i54 = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call.i54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %index) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 788) #11
  %6 = getelementptr inbounds %struct.page, ptr %call.i54, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i55 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %if.then.i.i58, !prof !33

if.then.i.i58:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i57 = add i32 %8, -1
  br label %_compound_head.exit.i61

if.end.i.i59:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i54 to i32
  br label %_compound_head.exit.i61

_compound_head.exit.i61:                          ; preds = %if.end.i.i59, %if.then.i.i58
  %retval.0.i.i60 = phi i32 [ %sub.i.i57, %if.then.i.i58 ], [ %9, %if.end.i.i59 ]
  %10 = inttoptr i32 %retval.0.i.i60 to ptr
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !33

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.8) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i61
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef 4) #11
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %10, align 4
  %and.i.i4.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i62_crit_edge

folio_flags.exit.i.i.if.then.i62_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i62

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %10, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !36
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i62_crit_edge

folio_trylock.exit.i.if.then.i62_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i62

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit

if.then.i62:                                      ; preds = %folio_trylock.exit.i.if.then.i62_crit_edge, %folio_flags.exit.i.i.if.then.i62_crit_edge
  tail call void @__folio_lock(ptr noundef %10) #11
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i62, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %mapping6 = getelementptr inbounds %struct.page, ptr %call.i54, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %mapping6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mapping6, align 4
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then9, label %if.end10, !prof !37

if.then9:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unlock_page(ptr noundef %call.i54) #11
  tail call fastcc void @put_page(ptr noundef %call.i54)
  br label %cleanup

if.end10:                                         ; preds = %lock_page.exit
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %6, align 4
  %and.i.i63 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i67, label %if.then.i.i66, !prof !33

if.then.i.i66:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i65 = add i32 %20, -1
  br label %_compound_head.exit.i71

if.end.i.i67:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call.i54 to i32
  br label %_compound_head.exit.i71

_compound_head.exit.i71:                          ; preds = %if.end.i.i67, %if.then.i.i66
  %retval.0.i.i68 = phi i32 [ %sub.i.i65, %if.then.i.i66 ], [ %21, %if.end.i.i67 ]
  %22 = inttoptr i32 %retval.0.i.i68 to ptr
  %23 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i69 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i69)
  %tobool.not.i.i.i70 = icmp eq i32 %and.i.i.i.i69, 0
  br i1 %tobool.not.i.i.i70, label %folio_flags.exit.i.i73, label %if.then.i.i.i72, !prof !33

if.then.i.i.i72:                                  ; preds = %_compound_head.exit.i71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.8) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !34
  unreachable

folio_flags.exit.i.i73:                           ; preds = %_compound_head.exit.i71
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i73.if.then15_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i73.if.then15_crit_edge:       ; preds = %folio_flags.exit.i.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !38
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !33

if.then.i.i:                                      ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %call.i54 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.not.i = icmp eq i32 %34, -1
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %6, align 4
  %and.i16.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !37

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !33

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %36, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %call.i54 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %37, %if.end.i20.i ]
  %38 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %38, ptr noundef nonnull @.str.11) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #11, !srcloc !39
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !33

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %36, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %call.i54 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %39, %if.end.i27.i ]
  %40 = inttoptr i32 %retval.0.i28.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %43 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool14.not = icmp eq i32 %43, 0
  br i1 %tobool14.not, label %PageError.exit.if.end24_crit_edge, label %PageError.exit.if.then15_crit_edge

PageError.exit.if.then15_crit_edge:               ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15

PageError.exit.if.end24_crit_edge:                ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then15:                                        ; preds = %PageError.exit.if.then15_crit_edge, %folio_flags.exit.i.i73.if.then15_crit_edge
  tail call void @unlock_page(ptr noundef %call.i54) #11
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %6, align 4
  %and.i.i74 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.end.i.i78, label %if.then.i.i77, !prof !33

if.then.i.i77:                                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i76 = add i32 %45, -1
  br label %_compound_head.exit.i80

if.end.i.i78:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call.i54 to i32
  br label %_compound_head.exit.i80

_compound_head.exit.i80:                          ; preds = %if.end.i.i78, %if.then.i.i77
  %retval.0.i.i79 = phi i32 [ %sub.i.i76, %if.then.i.i77 ], [ %46, %if.end.i.i78 ]
  %47 = inttoptr i32 %retval.0.i.i79 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %48 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !37

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.10) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !40
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i80
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ufs_get_locked_page, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !44

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %47, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %47) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %i_ino20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %i_ino20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %i_ino20, align 8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %52, i32 noundef %index) #15
  br label %cleanup

if.end24:                                         ; preds = %PageError.exit.if.end24_crit_edge, %entry.if.end24_crit_edge
  %page.0 = phi ptr [ %call.i, %entry.if.end24_crit_edge ], [ %call.i54, %PageError.exit.if.end24_crit_edge ]
  %53 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i50 = icmp eq i32 %54, -1
  br i1 %cmp.i.not.i50, label %if.then.i51, label %PagePrivate.exit, !prof !37

if.then.i51:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page.0, ptr noundef nonnull @.str.12) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !45
  unreachable

PagePrivate.exit:                                 ; preds = %if.end24
  %55 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %page.0, align 4
  %57 = and i32 %56, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool26.not = icmp eq i32 %57, 0
  br i1 %tobool26.not, label %if.then27, label %PagePrivate.exit.cleanup_crit_edge

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %58 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %59 to i32
  %shl = shl nuw i32 1, %conv
  tail call void @create_empty_buffers(ptr noundef %page.0, i32 noundef %shl, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %PagePrivate.exit.cleanup_crit_edge, %put_page.exit, %if.then9, %do.end
  %retval.0 = phi ptr [ %call.i54, %do.end ], [ null, %if.then9 ], [ inttoptr (i32 -5 to ptr), %put_page.exit ], [ %page.0, %if.then27 ], [ %page.0, %PagePrivate.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !33

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !37

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.10) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !40
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !41
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !44

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #11
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %4) #11
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ufs/util.c", i32 253, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ufs_get_locked_page._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ufs_get_locked_page._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ufs/util.c", i32 272, i32 4}
!8 = !{ptr @ufs_get_locked_page._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ufs_get_locked_page._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/mm.h", i32 717, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2150141382, i64 2150141873, i64 2150141419, i64 2150141475, i64 2150141509, i64 2150141533, i64 2150141574, i64 2150141595, i64 2150141623, i64 2150141657}
!35 = !{i64 2148609053, i64 2148609085, i64 2148609114, i64 2148609148, i64 2148609179, i64 2148609202}
!36 = !{i64 2148698158}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2150891274}
!39 = !{i64 2150198475, i64 2150198966, i64 2150198512, i64 2150198568, i64 2150198602, i64 2150198626, i64 2150198667, i64 2150198688, i64 2150198716, i64 2150198750}
!40 = !{i64 2153209709, i64 2153210192, i64 2153209746, i64 2153209802, i64 2153209836, i64 2153209860, i64 2153209901, i64 2153209922, i64 2153209950, i64 2153209984}
!41 = !{i64 2148688671}
!42 = !{i64 2148603380, i64 2148603412, i64 2148603441, i64 2148603475, i64 2148603506, i64 2148603529}
!43 = !{i64 2148688900}
!44 = !{i64 2148228183, i64 2148228188, i64 2148228201, i64 2148228245, i64 2148228279, i64 2148228300}
!45 = !{i64 2150604149, i64 2150604640, i64 2150604186, i64 2150604242, i64 2150604276, i64 2150604300, i64 2150604341, i64 2150604362, i64 2150604390, i64 2150604424}
