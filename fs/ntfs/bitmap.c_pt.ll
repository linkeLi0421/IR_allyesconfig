; ModuleID = '/llk/IR_all_yes/fs/ntfs/bitmap.c_pt.bc'
source_filename = "../fs/ntfs/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.70 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.60, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.60 = type { %struct.atomic_t }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs/bitmap.c\00", [47 x i8] zeroinitializer }, align 32
@__func__.__ntfs_bitmap_set_bits_in_run = private unnamed_addr constant [30 x i8] c"__ntfs_bitmap_set_bits_in_run\00", align 1
@.str.1 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Entering for i_ino 0x%lx, start_bit 0x%llx, count 0x%llx, value %u.%s\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (rollback)\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to map first page (error %li), aborting.\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to map subsequent page (error %li), aborting.\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [144 x i8], [48 x i8] } { [144 x i8] c"Failed to map subsequent page (error %li) and rollback failed (error %i).  Aborting and leaving inconsistent metadata.  Unmount and run chkdsk.\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 64, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 149, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 166, i32 3 }
@___asan_gen_.34 = private constant [20 x i8] c"../fs/ntfs/bitmap.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 170, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 44, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 416, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 717, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %vi, i64 noundef %start_bit, i64 noundef %count, i8 noundef zeroext %value, i1 noundef zeroext %is_rollback) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vi, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !29

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 44, 0\0A.popsection", ""() #4, !srcloc !30
  unreachable

do.end9:                                          ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_ino, align 8
  %conv = zext i8 %value to i32
  %cond = select i1 %is_rollback, ptr @.str.2, ptr @.str.3
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 48, ptr noundef nonnull @__func__.__ntfs_bitmap_set_bits_in_run, ptr noundef nonnull @.str.1, i32 noundef %1, i64 noundef %start_bit, i64 noundef %count, i32 noundef %conv, ptr noundef nonnull %cond) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %start_bit)
  %cmp = icmp slt i64 %start_bit, 0
  br i1 %cmp, label %do.body21, label %do.body30, !prof !29

do.body21:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

do.body30:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %cmp31 = icmp slt i64 %count, 0
  br i1 %cmp31, label %do.body40, label %do.body49, !prof !29

do.body40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

do.body49:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %value)
  %cmp51 = icmp ugt i8 %value, 1
  br i1 %cmp51, label %do.body60, label %do.end68, !prof !29

do.body60:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 51, 0\0A.popsection", ""() #4, !srcloc !33
  unreachable

do.end68:                                         ; preds = %do.body49
  %2 = lshr i64 %start_bit, 15
  %conv69 = trunc i64 %2 to i32
  %add = add nuw i64 %start_bit, 140737488355327
  %sub = add i64 %add, %count
  %3 = lshr i64 %sub, 15
  %conv71 = trunc i64 %3 to i32
  %i_mapping = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %call = tail call fastcc ptr @ntfs_map_page(ptr noundef %5, i32 noundef %conv69)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then73, label %if.end79

if.then73:                                        ; preds = %do.end68
  br i1 %is_rollback, label %if.then73.if.end77_crit_edge, label %if.then75

if.then73.if.end77_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = ptrtoint ptr %call to i32
  br label %cleanup245

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #6
  %i_sb = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %8 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_bitmap_set_bits_in_run, ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %8) #4
  br label %cleanup245

if.end79:                                         ; preds = %do.end68
  %call80 = tail call ptr @page_address(ptr noundef %call) #4
  %9 = trunc i64 %start_bit to i32
  %10 = lshr i32 %9, 3
  %conv82 = and i32 %10, 4095
  %11 = trunc i64 %start_bit to i8
  %conv84 = and i8 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv84)
  %tobool85.not = icmp eq i8 %conv84, 0
  br i1 %tobool85.not, label %if.end79.if.end107_crit_edge, label %if.then86

if.end79.if.end107_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

if.then86:                                        ; preds = %if.end79
  %add.ptr = getelementptr i8, ptr %call80, i32 %conv82
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %count)
  %tobool90.not354 = icmp eq i64 %count, 0
  br i1 %tobool90.not354, label %if.then86.done_crit_edge, label %while.body.lr.ph

if.then86.done_crit_edge:                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body.lr.ph:                                 ; preds = %if.then86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool91.not = icmp eq i8 %value, 0
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %add.ptr.promoted = load i8, ptr %add.ptr, align 1
  %dec = add i64 %count, -1
  %shl98 = shl i8 1, %conv84
  %13 = xor i8 %shl98, -1
  %conv101 = and i8 %add.ptr.promoted, %13
  %conv95 = or i8 %add.ptr.promoted, %shl98
  %storemerge339 = select i1 %tobool91.not, i8 %conv101, i8 %conv95
  %narrow = add nuw nsw i8 %conv84, 1
  %indvars.iv.next = zext i8 %narrow to i32
  %and88 = and i32 %indvars.iv.next, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool90.not = icmp eq i64 %dec, 0
  %or.cond = or i1 %tobool89.not, %tobool90.not
  br i1 %or.cond, label %while.body.lr.ph.while.end_crit_edge, label %while.body.1

while.body.lr.ph.while.end_crit_edge:             ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.1:                                     ; preds = %while.body.lr.ph
  %dec.1 = add i64 %count, -2
  %shl98.1 = shl nuw i32 1, %indvars.iv.next
  %14 = trunc i32 %shl98.1 to i8
  %15 = xor i8 %14, -1
  %conv101.1 = and i8 %conv101, %15
  %conv95.1 = or i8 %conv95, %14
  %storemerge339.1 = select i1 %tobool91.not, i8 %conv101.1, i8 %conv95.1
  %indvars.iv.next.1 = add nuw nsw i32 %indvars.iv.next, 1
  %and88.1 = and i32 %indvars.iv.next.1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.1)
  %tobool89.not.1 = icmp eq i32 %and88.1, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.1)
  %tobool90.not.1 = icmp eq i64 %dec.1, 0
  %or.cond.1 = or i1 %tobool89.not.1, %tobool90.not.1
  br i1 %or.cond.1, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %dec.2 = add i64 %count, -3
  %shl98.2 = shl i32 2, %indvars.iv.next
  %16 = trunc i32 %shl98.2 to i8
  %17 = xor i8 %16, -1
  %conv101.2 = and i8 %conv101.1, %17
  %conv95.2 = or i8 %conv95.1, %16
  %storemerge339.2 = select i1 %tobool91.not, i8 %conv101.2, i8 %conv95.2
  %indvars.iv.next.2 = add nuw nsw i32 %indvars.iv.next, 2
  %and88.2 = and i32 %indvars.iv.next.2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.2)
  %tobool89.not.2 = icmp eq i32 %and88.2, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.2)
  %tobool90.not.2 = icmp eq i64 %dec.2, 0
  %or.cond.2 = or i1 %tobool89.not.2, %tobool90.not.2
  br i1 %or.cond.2, label %while.body.2.while.end_crit_edge, label %while.body.3

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %dec.3 = add i64 %count, -4
  %shl98.3 = shl i32 4, %indvars.iv.next
  %18 = trunc i32 %shl98.3 to i8
  %19 = xor i8 %18, -1
  %conv101.3 = and i8 %conv101.2, %19
  %conv95.3 = or i8 %conv95.2, %18
  %storemerge339.3 = select i1 %tobool91.not, i8 %conv101.3, i8 %conv95.3
  %indvars.iv.next.3 = add nuw nsw i32 %indvars.iv.next, 3
  %and88.3 = and i32 %indvars.iv.next.3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.3)
  %tobool89.not.3 = icmp eq i32 %and88.3, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.3)
  %tobool90.not.3 = icmp eq i64 %dec.3, 0
  %or.cond.3 = or i1 %tobool89.not.3, %tobool90.not.3
  br i1 %or.cond.3, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %dec.4 = add i64 %count, -5
  %shl98.4 = shl i32 8, %indvars.iv.next
  %20 = trunc i32 %shl98.4 to i8
  %21 = xor i8 %20, -1
  %conv101.4 = and i8 %conv101.3, %21
  %conv95.4 = or i8 %conv95.3, %20
  %storemerge339.4 = select i1 %tobool91.not, i8 %conv101.4, i8 %conv95.4
  %indvars.iv.next.4 = add nuw nsw i32 %indvars.iv.next, 4
  %and88.4 = and i32 %indvars.iv.next.4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.4)
  %tobool89.not.4 = icmp eq i32 %and88.4, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.4)
  %tobool90.not.4 = icmp eq i64 %dec.4, 0
  %or.cond.4 = or i1 %tobool89.not.4, %tobool90.not.4
  br i1 %or.cond.4, label %while.body.4.while.end_crit_edge, label %while.body.5

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %dec.5 = add i64 %count, -6
  %shl98.5 = shl i32 16, %indvars.iv.next
  %22 = trunc i32 %shl98.5 to i8
  %23 = xor i8 %22, -1
  %conv101.5 = and i8 %conv101.4, %23
  %conv95.5 = or i8 %conv95.4, %22
  %storemerge339.5 = select i1 %tobool91.not, i8 %conv101.5, i8 %conv95.5
  %indvars.iv.next.5 = add nuw nsw i32 %indvars.iv.next, 5
  %and88.5 = and i32 %indvars.iv.next.5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.5)
  %tobool89.not.5 = icmp eq i32 %and88.5, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.5)
  %tobool90.not.5 = icmp eq i64 %dec.5, 0
  %or.cond.5 = or i1 %tobool89.not.5, %tobool90.not.5
  br i1 %or.cond.5, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %dec.6 = add i64 %count, -7
  %shl98.6 = shl i32 32, %indvars.iv.next
  %24 = trunc i32 %shl98.6 to i8
  %25 = xor i8 %24, -1
  %conv101.6 = and i8 %conv101.5, %25
  %conv95.6 = or i8 %conv95.5, %24
  %storemerge339.6 = select i1 %tobool91.not, i8 %conv101.6, i8 %conv95.6
  %indvars.iv.next.6 = add nuw nsw i32 %indvars.iv.next, 6
  %and88.6 = and i32 %indvars.iv.next.6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.6)
  %tobool89.not.6 = icmp eq i32 %and88.6, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.6)
  %tobool90.not.6 = icmp eq i64 %dec.6, 0
  %or.cond.6 = or i1 %tobool89.not.6, %tobool90.not.6
  br i1 %or.cond.6, label %while.body.6.while.end_crit_edge, label %while.body.7

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #6
  %dec.7 = add i64 %count, -8
  %shl98.7 = shl i32 64, %indvars.iv.next
  %26 = trunc i32 %shl98.7 to i8
  %27 = xor i8 %26, -1
  %conv101.7 = and i8 %conv101.6, %27
  %conv95.7 = or i8 %conv95.6, %26
  %storemerge339.7 = select i1 %tobool91.not, i8 %conv101.7, i8 %conv95.7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.7)
  %tobool90.not.7 = icmp eq i64 %dec.7, 0
  br label %while.end

while.end:                                        ; preds = %while.body.7, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.lr.ph.while.end_crit_edge
  %dec.lcssa = phi i64 [ %dec, %while.body.lr.ph.while.end_crit_edge ], [ %dec.1, %while.body.1.while.end_crit_edge ], [ %dec.2, %while.body.2.while.end_crit_edge ], [ %dec.3, %while.body.3.while.end_crit_edge ], [ %dec.4, %while.body.4.while.end_crit_edge ], [ %dec.5, %while.body.5.while.end_crit_edge ], [ %dec.6, %while.body.6.while.end_crit_edge ], [ %dec.7, %while.body.7 ]
  %storemerge339.lcssa = phi i8 [ %storemerge339, %while.body.lr.ph.while.end_crit_edge ], [ %storemerge339.1, %while.body.1.while.end_crit_edge ], [ %storemerge339.2, %while.body.2.while.end_crit_edge ], [ %storemerge339.3, %while.body.3.while.end_crit_edge ], [ %storemerge339.4, %while.body.4.while.end_crit_edge ], [ %storemerge339.5, %while.body.5.while.end_crit_edge ], [ %storemerge339.6, %while.body.6.while.end_crit_edge ], [ %storemerge339.7, %while.body.7 ]
  %tobool90.not.lcssa = phi i1 [ %tobool90.not, %while.body.lr.ph.while.end_crit_edge ], [ %tobool90.not.1, %while.body.1.while.end_crit_edge ], [ %tobool90.not.2, %while.body.2.while.end_crit_edge ], [ %tobool90.not.3, %while.body.3.while.end_crit_edge ], [ %tobool90.not.4, %while.body.4.while.end_crit_edge ], [ %tobool90.not.5, %while.body.5.while.end_crit_edge ], [ %tobool90.not.6, %while.body.6.while.end_crit_edge ], [ %tobool90.not.7, %while.body.7 ]
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge339.lcssa, ptr %add.ptr, align 1
  %inc106 = add nuw nsw i32 %conv82, 1
  br i1 %tobool90.not.lcssa, label %while.end.done_crit_edge, label %while.end.if.end107_crit_edge

while.end.if.end107_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end107

while.end.done_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end107:                                        ; preds = %while.end.if.end107_crit_edge, %if.end79.if.end107_crit_edge
  %pos.1 = phi i32 [ %inc106, %while.end.if.end107_crit_edge ], [ %conv82, %if.end79.if.end107_crit_edge ]
  %cnt.1 = phi i64 [ %dec.lcssa, %while.end.if.end107_crit_edge ], [ %count, %if.end79.if.end107_crit_edge ]
  %shr108 = ashr i64 %cnt.1, 3
  %sub109 = sub nsw i32 4096, %pos.1
  %conv110 = zext i32 %sub109 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr108, i64 %conv110)
  %cmp111 = icmp slt i64 %shr108, %conv110
  %extract.t = trunc i64 %shr108 to i32
  %cond113.off0 = select i1 %cmp111, i32 %extract.t, i32 %sub109
  %add.ptr115 = getelementptr i8, ptr %call80, i32 %pos.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool117.not = icmp eq i8 %value, 0
  %not.tobool117.not = xor i1 %tobool117.not, true
  %29 = sext i1 %not.tobool117.not to i8
  %30 = zext i8 %29 to i32
  %31 = call ptr @memset(ptr %add.ptr115, i32 %30, i32 %cond113.off0)
  %shl119 = shl i32 %cond113.off0, 3
  %32 = zext i32 %shl119 to i64
  %sub121 = sub i64 %cnt.1, %32
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %sub121)
  %cmp122 = icmp slt i64 %sub121, 8
  %add125 = select i1 %cmp122, i32 %pos.1, i32 0
  %len.0 = add i32 %add125, %cond113.off0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv69, i32 %conv71)
  %cmp128361 = icmp ult i32 %conv69, %conv71
  br i1 %cmp128361, label %if.end107.do.body131_crit_edge, label %if.end107.while.end172_crit_edge

if.end107.while.end172_crit_edge:                 ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end172

if.end107.do.body131_crit_edge:                   ; preds = %if.end107
  br label %do.body131

do.body131:                                       ; preds = %if.end155.do.body131_crit_edge, %if.end107.do.body131_crit_edge
  %cnt.2364 = phi i64 [ %sub171, %if.end155.do.body131_crit_edge ], [ %sub121, %if.end107.do.body131_crit_edge ]
  %page.0363 = phi ptr [ %call152, %if.end155.do.body131_crit_edge ], [ %call, %if.end107.do.body131_crit_edge ]
  %index.0362 = phi i32 [ %inc151, %if.end155.do.body131_crit_edge ], [ %conv69, %if.end107.do.body131_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cnt.2364)
  %cmp132 = icmp slt i64 %cnt.2364, 1
  br i1 %cmp132, label %do.body141, label %do.end149, !prof !29

do.body141:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

do.end149:                                        ; preds = %do.body131
  tail call void @flush_dcache_page(ptr noundef %page.0363) #4
  %call150 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.0363) #4
  tail call fastcc void @ntfs_unmap_page(ptr noundef %page.0363)
  %inc151 = add nuw i32 %index.0362, 1
  %call152 = tail call fastcc ptr @ntfs_map_page(ptr noundef %5, i32 noundef %inc151)
  %cmp.i340 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %rollback, label %if.end155

if.end155:                                        ; preds = %do.end149
  %call156 = tail call ptr @page_address(ptr noundef %call152) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 32768, i64 %cnt.2364)
  %cmp159 = icmp ult i64 %cnt.2364, 32768
  %33 = lshr i64 %cnt.2364, 3
  %extract.t338 = trunc i64 %33 to i32
  %cond164.off0 = select i1 %cmp159, i32 %extract.t338, i32 4096
  %34 = zext i8 %29 to i32
  %35 = call ptr @memset(ptr %call156, i32 %34, i32 %cond164.off0)
  %shl169 = shl i32 %cond164.off0, 3
  %36 = zext i32 %shl169 to i64
  %sub171 = sub nsw i64 %cnt.2364, %36
  %exitcond.not = icmp eq i32 %inc151, %conv71
  br i1 %exitcond.not, label %if.end155.while.end172_crit_edge, label %if.end155.do.body131_crit_edge

if.end155.do.body131_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body131

if.end155.while.end172_crit_edge:                 ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end172

while.end172:                                     ; preds = %if.end155.while.end172_crit_edge, %if.end107.while.end172_crit_edge
  %page.0.lcssa = phi ptr [ %call, %if.end107.while.end172_crit_edge ], [ %call152, %if.end155.while.end172_crit_edge ]
  %kaddr.0.lcssa = phi ptr [ %call80, %if.end107.while.end172_crit_edge ], [ %call156, %if.end155.while.end172_crit_edge ]
  %len.1.lcssa = phi i32 [ %len.0, %if.end107.while.end172_crit_edge ], [ %cond164.off0, %if.end155.while.end172_crit_edge ]
  %cnt.2.lcssa = phi i64 [ %sub121, %if.end107.while.end172_crit_edge ], [ %sub171, %if.end155.while.end172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cnt.2.lcssa)
  %tobool173.not = icmp eq i64 %cnt.2.lcssa, 0
  br i1 %tobool173.not, label %while.end172.done_crit_edge, label %if.then174

while.end172.done_crit_edge:                      ; preds = %while.end172
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then174:                                       ; preds = %while.end172
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %cnt.2.lcssa)
  %cmp177 = icmp sgt i64 %cnt.2.lcssa, 7
  br i1 %cmp177, label %do.body186, label %do.end194, !prof !29

do.body186:                                       ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/bitmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

do.end194:                                        ; preds = %if.then174
  %conv195 = trunc i64 %cnt.2.lcssa to i8
  %add.ptr196 = getelementptr i8, ptr %kaddr.0.lcssa, i32 %len.1.lcssa
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv195)
  %tobool199.not370 = icmp eq i8 %conv195, 0
  br i1 %tobool199.not370, label %do.end194.done_crit_edge, label %while.body200.lr.ph

do.end194.done_crit_edge:                         ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

while.body200.lr.ph:                              ; preds = %do.end194
  %37 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_load1_noabort(i32 %37)
  %add.ptr196.promoted = load i8, ptr %add.ptr196, align 1
  %38 = trunc i64 %cnt.2.lcssa to i32
  %39 = and i32 %38, 255
  br label %while.body200

while.body200:                                    ; preds = %while.body200.while.body200_crit_edge, %while.body200.lr.ph
  %indvars.iv377 = phi i32 [ %39, %while.body200.lr.ph ], [ %40, %while.body200.while.body200_crit_edge ]
  %storemerge372 = phi i8 [ %add.ptr196.promoted, %while.body200.lr.ph ], [ %storemerge, %while.body200.while.body200_crit_edge ]
  %40 = add nsw i32 %indvars.iv377, -1
  %shl210 = shl nuw i32 1, %40
  %41 = trunc i32 %shl210 to i8
  %42 = xor i8 %41, -1
  %conv214 = and i8 %storemerge372, %42
  %conv207 = or i8 %storemerge372, %41
  %storemerge = select i1 %tobool117.not, i8 %conv214, i8 %conv207
  %tobool199.not.wide = icmp eq i32 %40, 0
  br i1 %tobool199.not.wide, label %while.cond197.done.loopexit_crit_edge, label %while.body200.while.body200_crit_edge

while.body200.while.body200_crit_edge:            ; preds = %while.body200
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body200

while.cond197.done.loopexit_crit_edge:            ; preds = %while.body200
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %add.ptr196 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %storemerge, ptr %add.ptr196, align 1
  br label %done

done:                                             ; preds = %while.cond197.done.loopexit_crit_edge, %do.end194.done_crit_edge, %while.end172.done_crit_edge, %while.end.done_crit_edge, %if.then86.done_crit_edge
  %page.1 = phi ptr [ %call, %while.end.done_crit_edge ], [ %page.0.lcssa, %while.end172.done_crit_edge ], [ %page.0.lcssa, %while.cond197.done.loopexit_crit_edge ], [ %page.0.lcssa, %do.end194.done_crit_edge ], [ %call, %if.then86.done_crit_edge ]
  tail call void @flush_dcache_page(ptr noundef %page.1) #4
  %call218 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.1) #4
  tail call fastcc void @ntfs_unmap_page(ptr noundef %page.1)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 149, ptr noundef nonnull @__func__.__ntfs_bitmap_set_bits_in_run, ptr noundef nonnull @.str.5) #4
  br label %cleanup245

rollback:                                         ; preds = %do.end149
  br i1 %is_rollback, label %if.then220, label %if.end222

if.then220:                                       ; preds = %rollback
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %call152 to i32
  br label %cleanup245

if.end222:                                        ; preds = %rollback
  call void @__sanitizer_cov_trace_cmp8(i64 %cnt.2364, i64 %count)
  %cmp223.not = icmp eq i64 %cnt.2364, %count
  br i1 %cmp223.not, label %if.end222.if.then235_crit_edge, label %if.end233

if.end222.if.then235_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then235

if.end233:                                        ; preds = %if.end222
  %sub226 = sub i64 %count, %cnt.2364
  %conv230 = zext i1 %tobool117.not to i8
  %call231 = tail call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef nonnull %vi, i64 noundef %start_bit, i64 noundef %sub226, i8 noundef zeroext %conv230, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool234.not = icmp eq i32 %call231, 0
  br i1 %tobool234.not, label %if.end233.if.then235_crit_edge, label %if.else238

if.end233.if.then235_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then235

if.then235:                                       ; preds = %if.end233.if.then235_crit_edge, %if.end222.if.then235_crit_edge
  %i_sb236 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %45 = ptrtoint ptr %i_sb236 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb236, align 4
  %47 = ptrtoint ptr %call152 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_bitmap_set_bits_in_run, ptr noundef %46, ptr noundef nonnull @.str.6, i32 noundef %47) #4
  br label %cleanup245

if.else238:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #6
  %i_sb239 = getelementptr inbounds %struct.inode, ptr %vi, i32 0, i32 8
  %48 = ptrtoint ptr %i_sb239 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb239, align 4
  %50 = ptrtoint ptr %call152 to i32
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.__ntfs_bitmap_set_bits_in_run, ptr noundef %49, ptr noundef nonnull @.str.7, i32 noundef %50, i32 noundef %call231) #4
  %51 = ptrtoint ptr %i_sb239 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb239, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i, align 16
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %54, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #4
  br label %cleanup245

cleanup245:                                       ; preds = %if.else238, %if.then235, %if.then220, %done, %if.then75, %if.then73.if.end77_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ %44, %if.then220 ], [ %.pre, %if.then73.if.end77_crit_edge ], [ %8, %if.then75 ], [ %50, %if.else238 ], [ %47, %if.then235 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_map_page(ptr noundef %mapping, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @read_cache_page(ptr noundef %mapping, i32 noundef %index, ptr noundef null, ptr noundef null) #4
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 44) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %shr.i.i12 = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i12, label %if.then.if.then.i13_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.if.then.i13_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i13

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i13_crit_edge

is_highmem_idx.exit.i.if.then.i13_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i13

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then.i13:                                      ; preds = %is_highmem_idx.exit.i.if.then.i13_crit_edge, %if.then.if.then.i13_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #4
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #4
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i13
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !29

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !36

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %13, %if.end.i20.i ]
  %14 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.9) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !37
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !36

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i25.i = add i32 %12, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %15, %if.end.i27.i ]
  %16 = inttoptr i32 %retval.0.i28.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %PageError.exit.cleanup_crit_edge, label %if.end

PageError.exit.cleanup_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %PageError.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %if.end ], [ %call.i, %PageError.exit.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 55) #4
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #4
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !36

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !29

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.10) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !38
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !42

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__put_page(ptr noundef %8) #4
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/bitmap.c", i32 45, i32 2}
!2 = !{ptr @__func__.__ntfs_bitmap_set_bits_in_run, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/bitmap.c", i32 64, i32 4}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/bitmap.c", i32 149, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/bitmap.c", i32 166, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/bitmap.c", i32 170, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/mm.h", i32 717, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154084351, i64 2154084831, i64 2154084388, i64 2154084444, i64 2154084478, i64 2154084502, i64 2154084543, i64 2154084564, i64 2154084592, i64 2154084626}
!31 = !{i64 2154086196, i64 2154086676, i64 2154086233, i64 2154086289, i64 2154086323, i64 2154086347, i64 2154086388, i64 2154086409, i64 2154086437, i64 2154086471}
!32 = !{i64 2154087754, i64 2154088234, i64 2154087791, i64 2154087847, i64 2154087881, i64 2154087905, i64 2154087946, i64 2154087967, i64 2154087995, i64 2154088029}
!33 = !{i64 2154089316, i64 2154089796, i64 2154089353, i64 2154089409, i64 2154089443, i64 2154089467, i64 2154089508, i64 2154089529, i64 2154089557, i64 2154089591}
!34 = !{i64 2154092957, i64 2154093438, i64 2154092994, i64 2154093050, i64 2154093084, i64 2154093108, i64 2154093149, i64 2154093170, i64 2154093198, i64 2154093232}
!35 = !{i64 2154096367, i64 2154096848, i64 2154096404, i64 2154096460, i64 2154096494, i64 2154096518, i64 2154096559, i64 2154096580, i64 2154096608, i64 2154096642}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2150318994, i64 2150319485, i64 2150319031, i64 2150319087, i64 2150319121, i64 2150319145, i64 2150319186, i64 2150319207, i64 2150319235, i64 2150319269}
!38 = !{i64 2153152899, i64 2153153382, i64 2153152936, i64 2153152992, i64 2153153026, i64 2153153050, i64 2153153091, i64 2153153112, i64 2153153140, i64 2153153174}
!39 = !{i64 2148795379}
!40 = !{i64 2148710088, i64 2148710120, i64 2148710149, i64 2148710183, i64 2148710214, i64 2148710237}
!41 = !{i64 2148795608}
!42 = !{i64 2148307580, i64 2148307585, i64 2148307598, i64 2148307642, i64 2148307676, i64 2148307697}
