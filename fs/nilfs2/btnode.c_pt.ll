; ModuleID = '/llk/IR_all_yes/fs/nilfs2/btnode.c_pt.bc'
source_filename = "../fs/nilfs2/btnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.22 }
%struct.atomic_t = type { i32 }
%union.anon.22 = type { i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.rb_root = type { ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nilfs_btnode_chkey_ctxt = type { i64, i64, ptr, ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_ = private constant [22 x i8] c"../fs/nilfs2/btnode.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 717, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 366, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 260, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 1160, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 788, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 420, i32 1 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_btnode_cache_clear(ptr noundef %btnc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @invalidate_mapping_pages(ptr noundef %btnc, i32 noundef 0, i32 noundef -1) #4
  tail call void @truncate_inode_pages(ptr noundef %btnc, i64 noundef 0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_btnode_create_block(ptr noundef %btnc, i64 noundef %blocknr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode.i = getelementptr i8, ptr %btnc, i32 360
  %conv = trunc i64 %blocknr to i32
  %call1 = tail call ptr @nilfs_grab_buffer(ptr noundef %vfs_inode.i, ptr noundef %btnc, i32 noundef %conv, i32 noundef 131072) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %call1, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.if.then17_crit_edge, !prof !24

if.end.if.then17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call1, align 4
  %and1.i.i42 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i42)
  %tobool8.not = icmp eq i32 %and1.i.i42, 0
  br i1 %tobool8.not, label %lor.rhs, label %lor.lhs.false.if.then17_crit_edge, !prof !24

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.rhs:                                          ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call1, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %if.end21, label %lor.rhs.if.then17_crit_edge, !prof !24

lor.rhs.if.then17_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

if.then17:                                        ; preds = %lor.rhs.if.then17_crit_edge, %lor.lhs.false.if.then17_crit_edge, %if.end.if.then17_crit_edge
  tail call fastcc void @brelse(ptr noundef nonnull %call1)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #4, !srcloc !25
  unreachable

if.end21:                                         ; preds = %lor.rhs
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %i_blkbits.i = getelementptr i8, ptr %btnc, i32 518
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %12 = call ptr @memset(ptr %9, i32 0, i32 %shl.i)
  %i_sb = getelementptr i8, ptr %btnc, i32 388
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 6
  %17 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %b_bdev, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %blocknr, ptr %b_blocknr, align 8
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call1, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end21.set_buffer_mapped.exit_crit_edge

if.end21.set_buffer_mapped.exit_crit_edge:        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffer_mapped.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 4, ptr noundef nonnull %call1) #4
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %if.then.i, %if.end21.set_buffer_mapped.exit_crit_edge
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call1, align 4
  %and1.i.i45 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i45)
  %tobool.not.i46 = icmp eq i32 %and1.i.i45, 0
  br i1 %tobool.not.i46, label %if.then.i47, label %set_buffer_mapped.exit.set_buffer_uptodate.exit_crit_edge

set_buffer_mapped.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %set_buffer_mapped.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffer_uptodate.exit

if.then.i47:                                      ; preds = %set_buffer_mapped.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call1) #4
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i47, %set_buffer_mapped.exit.set_buffer_uptodate.exit_crit_edge
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 2
  %24 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_page, align 8
  tail call void @unlock_page(ptr noundef %25) #4
  %26 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_page, align 8
  %28 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %30, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %27 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %31, %if.end.i.i ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %33 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !23

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_btnode_create_block, %if.then.i.i.i.i.i)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !30

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %32, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__put_page(ptr noundef %32) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_grab_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brelse(ptr noundef %bh) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %tobool.not = icmp eq ptr %bh, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__brelse(ptr noundef nonnull %bh) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_btnode_submit_block(ptr noundef %btnc, i64 noundef %blocknr, i64 noundef %pblocknr, i32 noundef %mode, i32 noundef %mode_flags, ptr nocapture noundef writeonly %pbh, ptr nocapture noundef %submit_ptr) local_unnamed_addr #0 align 64 {
entry:
  %pblocknr.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pblocknr, ptr %pblocknr.addr, align 8
  %vfs_inode.i = getelementptr i8, ptr %btnc, i32 360
  %conv = trunc i64 %blocknr to i32
  %call1 = tail call ptr @nilfs_grab_buffer(ptr noundef %vfs_inode.i, ptr noundef %btnc, i32 noundef %conv, i32 noundef 131072) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end, !prof !23

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup46

if.end:                                           ; preds = %entry
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 2
  %1 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %b_page, align 8
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call1, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not, label %lor.lhs.false, label %if.end.found_crit_edge

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %found

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %call1, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false.found_crit_edge

lor.lhs.false.found_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %found

if.end10:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pblocknr.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then12, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then12:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %blocknr, ptr %pblocknr.addr, align 8
  %i_ino = getelementptr i8, ptr %btnc, i32 400
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp13.not = icmp eq i32 %12, 3
  br i1 %cmp13.not, label %if.then12.if.end27_crit_edge, label %if.then15

if.then12.if.end27_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then15:                                        ; preds = %if.then12
  %i_sb = getelementptr i8, ptr %btnc, i32 388
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info, align 16
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %16, i32 0, i32 29
  %17 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns_dat, align 4
  %call16 = call i32 @nilfs_dat_translate(ptr noundef %18, i64 noundef %blocknr, ptr noundef nonnull %pblocknr.addr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then15.if.end27_crit_edge, label %cleanup, !prof !24

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

cleanup:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__brelse(ptr noundef nonnull %call1) #4
  br label %out_locked

if.end27:                                         ; preds = %if.then15.if.end27_crit_edge, %if.then12.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %19 = and i32 %mode_flags, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not = icmp eq i32 %19, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end27
  %20 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pblocknr.addr, align 8
  %22 = ptrtoint ptr %submit_ptr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %submit_ptr, align 8
  %add = add i64 %23, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %add)
  %cmp31.not = icmp eq i64 %21, %add
  br i1 %cmp31.not, label %lor.lhs.false33, label %if.then30.brelse.exit85_crit_edge

if.then30.brelse.exit85_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit85

lor.lhs.false33:                                  ; preds = %if.then30
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #4
  %24 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call1, align 4
  %and.i.i.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %lor.lhs.false33.brelse.exit85_crit_edge

lor.lhs.false33.brelse.exit85_crit_edge:          ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit85

trylock_buffer.exit:                              ; preds = %lor.lhs.false33
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #4
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 4, ptr nonnull elementtype(i32) %call1) #4, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  %27 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool35.not.not = icmp eq i32 %27, 0
  br i1 %tobool35.not.not, label %trylock_buffer.exit.if.end38_crit_edge, label %trylock_buffer.exit.brelse.exit85_crit_edge

trylock_buffer.exit.brelse.exit85_crit_edge:      ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %brelse.exit85

trylock_buffer.exit.if.end38_crit_edge:           ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

brelse.exit85:                                    ; preds = %trylock_buffer.exit.brelse.exit85_crit_edge, %lor.lhs.false33.brelse.exit85_crit_edge, %if.then30.brelse.exit85_crit_edge
  call void @__brelse(ptr noundef nonnull %call1) #4
  br label %out_locked

if.else:                                          ; preds = %if.end27
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 366) #4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call1, i32 noundef 4) #4
  %28 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call1, align 4
  %and.i.i.i.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.else.if.then.i86_crit_edge

if.else.if.then.i86_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i86

trylock_buffer.exit.i:                            ; preds = %if.else
  call void @llvm.prefetch.p0(ptr nonnull %call1, i32 1, i32 3, i32 1) #4
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call1, ptr nonnull %call1, i32 4, ptr nonnull elementtype(i32) %call1) #4, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  %31 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.if.end38_crit_edge, label %trylock_buffer.exit.i.if.then.i86_crit_edge

trylock_buffer.exit.i.if.then.i86_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i86

trylock_buffer.exit.i.if.end38_crit_edge:         ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then.i86:                                      ; preds = %trylock_buffer.exit.i.if.then.i86_crit_edge, %if.else.if.then.i86_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call1) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then.i86, %trylock_buffer.exit.i.if.end38_crit_edge, %trylock_buffer.exit.if.end38_crit_edge
  %32 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %call1, align 4
  %and1.i.i80 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i80)
  %tobool40.not = icmp eq i32 %and1.i.i80, 0
  br i1 %tobool40.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  call void @unlock_buffer(ptr noundef nonnull %call1) #4
  br label %found

if.end42:                                         ; preds = %if.end38
  %34 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %call1, align 4
  %36 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.set_buffer_mapped.exit_crit_edge

if.end42.set_buffer_mapped.exit_crit_edge:        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_buffer_mapped.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %call1) #4
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %if.then.i, %if.end42.set_buffer_mapped.exit_crit_edge
  %i_sb43 = getelementptr i8, ptr %btnc, i32 388
  %37 = ptrtoint ptr %i_sb43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb43, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 26
  %39 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 6
  %41 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %b_bdev, align 8
  %42 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %pblocknr.addr, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 3
  %44 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %b_blocknr, align 8
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 7
  %45 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call1, i32 0, i32 11
  %call.i.i.i87 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #4
  %46 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #4, !srcloc !33
  %call44 = call i32 @submit_bh(i32 noundef %mode, i32 noundef %mode_flags, ptr noundef nonnull %call1) #4
  %47 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %blocknr, ptr %b_blocknr, align 8
  %48 = ptrtoint ptr %pblocknr.addr to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pblocknr.addr, align 8
  %50 = ptrtoint ptr %submit_ptr to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %submit_ptr, align 8
  br label %found

found:                                            ; preds = %set_buffer_mapped.exit, %if.then41, %lor.lhs.false.found_crit_edge, %if.end.found_crit_edge
  %err.0 = phi i32 [ -17, %if.end.found_crit_edge ], [ -17, %lor.lhs.false.found_crit_edge ], [ -17, %if.then41 ], [ 0, %set_buffer_mapped.exit ]
  %51 = ptrtoint ptr %pbh to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call1, ptr %pbh, align 4
  br label %out_locked

out_locked:                                       ; preds = %found, %brelse.exit85, %cleanup
  %err.1 = phi i32 [ %err.0, %found ], [ %call16, %cleanup ], [ -16, %brelse.exit85 ]
  call void @unlock_page(ptr noundef %2) #4
  %52 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %out_locked
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_locked
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %55, %if.end.i.i ]
  %56 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %57 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !23

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @dump_page(ptr noundef %56, ptr noundef nonnull @.str) #4
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_btnode_submit_block, %if.then.i.i.i.i.i)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !30

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %56, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup46_crit_edge

folio_put_testzero.exit.i.i.cleanup46_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup46

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__put_page(ptr noundef %56) #4
  br label %cleanup46

cleanup46:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup46_crit_edge ], [ %err.1, %folio_put_testzero.exit.i.i.cleanup46_crit_edge ], [ %err.1, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_translate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_btnode_delete(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !24

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i.i = add i32 %4, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %5, %if.end.i.i.i ]
  %6 = inttoptr i32 %retval.0.i.i.i to ptr
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !24

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %_compound_head.exit.i.i
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %PageSwapCache.exit.i, label %if.then.i.i.i.i, !prof !24

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

PageSwapCache.exit.i:                             ; preds = %land.rhs.i.i.i
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %6, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.i.not.i = icmp eq i32 %17, 0
  br i1 %tobool.i.i.not.i, label %PageSwapCache.exit.i.if.end.i_crit_edge, label %if.then.i15, !prof !24

PageSwapCache.exit.i.if.end.i_crit_edge:          ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i15:                                      ; preds = %PageSwapCache.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @__page_file_index(ptr noundef %1) #4
  br label %page_index.exit

if.end.i:                                         ; preds = %PageSwapCache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  br label %page_index.exit

page_index.exit:                                  ; preds = %if.end.i, %if.then.i15
  %retval.0.i = phi i32 [ %call2.i, %if.then.i15 ], [ %19, %if.end.i ]
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %2, align 4
  %and.i.i16 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i.i17, label %if.end.i.i20, label %if.then.i.i19, !prof !24

if.then.i.i19:                                    ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i18 = add i32 %21, -1
  br label %_compound_head.exit.i22

if.end.i.i20:                                     ; preds = %page_index.exit
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i22

_compound_head.exit.i22:                          ; preds = %if.end.i.i20, %if.then.i.i19
  %retval.0.i.i21 = phi i32 [ %sub.i.i18, %if.then.i.i19 ], [ %22, %if.end.i.i20 ]
  %23 = inttoptr i32 %retval.0.i.i21 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #4
  %24 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %25, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !23

if.then.i1.i:                                     ; preds = %_compound_head.exit.i22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.4) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #4, !srcloc !35
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i22
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #4
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #4, !srcloc !33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@nilfs_btnode_delete, %if.then.i.i.i.i23)) #4
          to label %get_page.exit [label %if.then.i.i.i.i23], !srcloc !30

if.then.i.i.i.i23:                                ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__page_ref_mod(ptr noundef %23, i32 noundef 1) #4
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i23, %do.end5.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 788) #4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %2, align 4
  %and.i.i24 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %and.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.end.i.i28, label %if.then.i.i27, !prof !24

if.then.i.i27:                                    ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i26 = add i32 %28, -1
  br label %_compound_head.exit.i31

if.end.i.i28:                                     ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i31

_compound_head.exit.i31:                          ; preds = %if.end.i.i28, %if.then.i.i27
  %retval.0.i.i29 = phi i32 [ %sub.i.i26, %if.then.i.i27 ], [ %29, %if.end.i.i28 ]
  %30 = inttoptr i32 %retval.0.i.i29 to ptr
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i30 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i30, label %folio_flags.exit.i.i, label %if.then.i.i.i32, !prof !24

if.then.i.i.i32:                                  ; preds = %_compound_head.exit.i31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i31
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %30, i32 noundef 4) #4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %30, align 4
  %and.i.i4.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i33 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i33, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i34_crit_edge

folio_flags.exit.i.i.if.then.i34_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i34

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %30, i32 1, i32 3, i32 1) #4
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #4, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  %37 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %phi.cmp.i.i.i = icmp eq i32 %37, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i34_crit_edge

folio_trylock.exit.i.if.then.i34_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i34

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_page.exit

if.then.i34:                                      ; preds = %folio_trylock.exit.i.if.then.i34_crit_edge, %folio_flags.exit.i.i.if.then.i34_crit_edge
  tail call void @__folio_lock(ptr noundef %30) #4
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i34, %folio_trylock.exit.i.lock_page.exit_crit_edge
  tail call void @wait_on_page_writeback(ptr noundef %1) #4
  tail call void @nilfs_forget_buffer(ptr noundef %bh) #4
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %39, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %40, %if.end.i.i ]
  %41 = inttoptr i32 %retval.0.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i = icmp eq i32 %43, -1
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %2, align 4
  %and.i13.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i)
  %tobool.not.i14.i = icmp eq i32 %and.i13.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !23

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i17.i, label %if.then.i16.i, !prof !24

if.then.i16.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i15.i = add i32 %45, -1
  br label %_compound_head.exit19.i

if.end.i17.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit19.i

_compound_head.exit19.i:                          ; preds = %if.end.i17.i, %if.then.i16.i
  %retval.0.i18.i = phi i32 [ %sub.i15.i, %if.then.i16.i ], [ %46, %if.end.i17.i ]
  %47 = inttoptr i32 %retval.0.i18.i to ptr
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.6) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #4, !srcloc !36
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i14.i, label %if.end.i24.i, label %if.then.i23.i, !prof !24

if.then.i23.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i22.i = add i32 %45, -1
  br label %PageDirty.exit

if.end.i24.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %1 to i32
  br label %PageDirty.exit

PageDirty.exit:                                   ; preds = %if.end.i24.i, %if.then.i23.i
  %retval.0.i25.i = phi i32 [ %sub.i22.i, %if.then.i23.i ], [ %48, %if.end.i24.i ]
  %49 = inttoptr i32 %retval.0.i25.i to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %mapping2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mapping2, align 4
  tail call void @unlock_page(ptr noundef %1) #4
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %2, align 4
  %and.i.i36 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end.i.i40, label %if.then.i.i39, !prof !24

if.then.i.i39:                                    ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i38 = add i32 %55, -1
  br label %_compound_head.exit.i42

if.end.i.i40:                                     ; preds = %PageDirty.exit
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i42

_compound_head.exit.i42:                          ; preds = %if.end.i.i40, %if.then.i.i39
  %retval.0.i.i41 = phi i32 [ %sub.i.i38, %if.then.i.i39 ], [ %56, %if.end.i.i40 ]
  %57 = inttoptr i32 %retval.0.i.i41 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  %58 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i43, label %do.end5.i.i.i.i, !prof !23

if.then.i.i.i.i43:                                ; preds = %_compound_head.exit.i42
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #4, !srcloc !26
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i42
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #4
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #4, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_btnode_delete, %if.then.i.i.i.i.i44)) #4
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i44], !srcloc !30

if.then.i.i.i.i.i44:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %57, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #4
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i44, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__put_page(ptr noundef %57) #4
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %61 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not = icmp ne i32 %61, 0
  %tobool3.not = icmp eq ptr %53, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %put_page.exit.if.end_crit_edge, label %if.then

put_page.exit.if.end_crit_edge:                   ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @invalidate_inode_pages2_range(ptr noundef nonnull %53, i32 noundef %retval.0.i, i32 noundef %retval.0.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %put_page.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_forget_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_btnode_prepare_change_key(ptr noundef %btnc, ptr nocapture noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctxt to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ctxt, align 8
  %newkey2 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 1
  %2 = ptrtoint ptr %newkey2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %newkey2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp eq i64 %1, %3
  br i1 %cmp, label %entry.cleanup62_crit_edge, label %if.end

entry.cleanup62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup62

if.end:                                           ; preds = %entry
  %bh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 2
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bh, align 8
  %newbh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 3
  %6 = ptrtoint ptr %newbh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %newbh, align 4
  %i_blkbits = getelementptr i8, ptr %btnc, i32 518
  %7 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_blkbits, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %8)
  %cmp3 = icmp eq i8 %8, 12
  br i1 %cmp3, label %if.then5, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then5:                                         ; preds = %if.end
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 788) #4
  %11 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !24

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %10 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !24

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and.i.i4.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #4
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #4, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !32
  %22 = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %phi.cmp.i.i.i = icmp eq i32 %22, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %15) #4
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %index = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1, i32 0, i32 2
  %i_pages = getelementptr inbounds %struct.address_space, ptr %btnc, i32 0, i32 1
  %conv19 = trunc i64 %3 to i32
  br label %retry

retry:                                            ; preds = %if.end29.retry_crit_edge, %lock_page.exit
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %conv6 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv6)
  %cmp7.not = icmp eq i64 %1, %conv6
  br i1 %cmp7.not, label %if.end17, label %do.body, !prof !24

do.body:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nilfs_page_bug(ptr noundef %10) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #4, !srcloc !37
  unreachable

if.end17:                                         ; preds = %retry
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #4
  %call20 = tail call i32 @__xa_insert(ptr noundef %i_pages, i32 noundef %conv19, ptr noundef %10, i32 noundef 3136) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #4
  %25 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20, label %failed_unlock [
    i32 0, label %if.end17.cleanup62_crit_edge
    i32 -16, label %if.end29
  ]

if.end17.cleanup62_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup62

if.end29:                                         ; preds = %if.end17
  %call32 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %btnc, i32 noundef %conv19, i32 noundef %conv19) #4
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end29.retry_crit_edge, label %cleanup.thread96

if.end29.retry_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %retry

cleanup.thread96:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @unlock_page(ptr noundef %10) #4
  br label %if.end36

if.end36:                                         ; preds = %cleanup.thread96, %if.end.if.end36_crit_edge
  %call37 = tail call ptr @nilfs_btnode_create_block(ptr noundef %btnc, i64 noundef %3)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.cleanup62_crit_edge, label %do.body41

if.end36.cleanup62_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup62

do.body41:                                        ; preds = %if.end36
  %cmp42 = icmp eq ptr %call37, %5
  br i1 %cmp42, label %do.body51, label %do.end59, !prof !23

do.body51:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #4, !srcloc !38
  unreachable

do.end59:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %newbh to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call37, ptr %newbh, align 4
  br label %cleanup62

failed_unlock:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_page, align 8
  tail call void @unlock_page(ptr noundef %28) #4
  br label %cleanup62

cleanup62:                                        ; preds = %failed_unlock, %do.end59, %if.end36.cleanup62_crit_edge, %if.end17.cleanup62_crit_edge, %entry.cleanup62_crit_edge
  %retval.1 = phi i32 [ %call20, %failed_unlock ], [ 0, %do.end59 ], [ 0, %entry.cleanup62_crit_edge ], [ -12, %if.end36.cleanup62_crit_edge ], [ %call20, %if.end17.cleanup62_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_page_bug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_btnode_commit_change_key(ptr noundef %btnc, ptr nocapture noundef %ctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 2
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh, align 8
  %newbh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 3
  %2 = ptrtoint ptr %newbh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %newbh, align 4
  %4 = ptrtoint ptr %ctxt to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ctxt, align 8
  %newkey2 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 1
  %6 = ptrtoint ptr %newkey2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %newkey2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_page, align 8
  %index = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp5.not = icmp eq i64 %5, %conv
  br i1 %cmp5.not, label %if.end15, label %do.body, !prof !24

do.body:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nilfs_page_bug(ptr noundef %9) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/btnode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 235, 0\0A.popsection", ""() #4, !srcloc !39
  unreachable

if.end15:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mark_buffer_dirty(ptr noundef %1) #4
  %i_pages = getelementptr inbounds %struct.address_space, ptr %btnc, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #4
  %conv17 = trunc i64 %5 to i32
  %call = tail call ptr @__xa_erase(ptr noundef %i_pages, i32 noundef %conv17) #4
  %conv19 = trunc i64 %7 to i32
  tail call void @__xa_set_mark(ptr noundef %i_pages, i32 noundef %conv19, i32 noundef 0) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %7, ptr %b_blocknr, align 8
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv19, ptr %index, align 4
  tail call void @unlock_page(ptr noundef %9) #4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nilfs_copy_buffer(ptr noundef nonnull %3, ptr noundef %1) #4
  tail call void @mark_buffer_dirty(ptr noundef nonnull %3) #4
  %b_blocknr24 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %b_blocknr24 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %7, ptr %b_blocknr24, align 8
  %15 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %bh, align 8
  tail call void @nilfs_btnode_delete(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xa_set_mark(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_copy_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_btnode_abort_change_key(ptr noundef %btnc, ptr nocapture noundef readonly %ctxt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %newbh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 3
  %0 = ptrtoint ptr %newbh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %newbh, align 4
  %2 = ptrtoint ptr %ctxt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctxt, align 8
  %newkey2 = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 1
  %4 = ptrtoint ptr %newkey2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %newkey2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %5)
  %cmp = icmp eq i64 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %if.then4, label %brelse.exit

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %i_pages = getelementptr inbounds %struct.address_space, ptr %btnc, i32 0, i32 1
  %conv = trunc i64 %5 to i32
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #4
  %call.i = tail call ptr @__xa_erase(ptr noundef %i_pages, i32 noundef %conv) #4
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #4
  %bh = getelementptr inbounds %struct.nilfs_btnode_chkey_ctxt, ptr %ctxt, i32 0, i32 2
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bh, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_page, align 8
  tail call void @unlock_page(ptr noundef %9) #4
  br label %cleanup

brelse.exit:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__brelse(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/mm.h", i32 717, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2154929072, i64 2154929554, i64 2154929109, i64 2154929165, i64 2154929199, i64 2154929223, i64 2154929264, i64 2154929285, i64 2154929313, i64 2154929347}
!26 = !{i64 2153168713, i64 2153169196, i64 2153168750, i64 2153168806, i64 2153168840, i64 2153168864, i64 2153168905, i64 2153168926, i64 2153168954, i64 2153168988}
!27 = !{i64 2148759373}
!28 = !{i64 2148674082, i64 2148674114, i64 2148674143, i64 2148674177, i64 2148674208, i64 2148674231}
!29 = !{i64 2148759602}
!30 = !{i64 2148495495, i64 2148495500, i64 2148495513, i64 2148495557, i64 2148495591, i64 2148495612}
!31 = !{i64 2148679755, i64 2148679787, i64 2148679816, i64 2148679850, i64 2148679881, i64 2148679904}
!32 = !{i64 2148768860}
!33 = !{i64 2148670897, i64 2148670923, i64 2148670952, i64 2148670986, i64 2148671017, i64 2148671040}
!34 = !{i64 2150579642, i64 2150580133, i64 2150579679, i64 2150579735, i64 2150579769, i64 2150579793, i64 2150579834, i64 2150579855, i64 2150579883, i64 2150579917}
!35 = !{i64 2153192686, i64 2153193170, i64 2153192723, i64 2153192779, i64 2153192813, i64 2153192837, i64 2153192878, i64 2153192899, i64 2153192927, i64 2153192961}
!36 = !{i64 2150689551, i64 2150690042, i64 2150689588, i64 2150689644, i64 2150689678, i64 2150689702, i64 2150689743, i64 2150689764, i64 2150689792, i64 2150689826}
!37 = !{i64 2154930863, i64 2154931346, i64 2154930900, i64 2154930956, i64 2154930990, i64 2154931014, i64 2154931055, i64 2154931076, i64 2154931104, i64 2154931138}
!38 = !{i64 2154932671, i64 2154933154, i64 2154932708, i64 2154932764, i64 2154932798, i64 2154932822, i64 2154932863, i64 2154932884, i64 2154932912, i64 2154932946}
!39 = !{i64 2154934260, i64 2154934743, i64 2154934297, i64 2154934353, i64 2154934387, i64 2154934411, i64 2154934452, i64 2154934473, i64 2154934501, i64 2154934535}
