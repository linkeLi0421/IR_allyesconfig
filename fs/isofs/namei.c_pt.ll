; ModuleID = '/llk/IR_all_yes/fs/isofs/namei.c_pt.bc'
source_filename = "../fs/isofs/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.63, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.65, ptr, %struct.address_space, %struct.list_head, %union.anon.66, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.63 = type { i32 }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { ptr }
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
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { %struct.spinlock, i32 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }

@isofs_find_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015iso9660: Corrupted directory entry in block %lu of inode %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"isofs_find_entry\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/isofs/namei.c\00", [47 x i8] zeroinitializer }, align 32
@isofs_find_entry._entry_ptr = internal global ptr @isofs_find_entry._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 97, i64 110]
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [20 x i8] c"../fs/isofs/namei.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 102, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @isofs_find_entry._entry, ptr @isofs_find_entry._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_find_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isofs_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %qstr.i.i = alloca %struct.qstr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1051840, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #6
  %call3 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #6
  %add.ptr = getelementptr i8, ptr %call3, i32 1024
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_first_extent.i = getelementptr i8, ptr %dir, i32 -24
  %8 = ptrtoint ptr %i_first_extent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_first_extent.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.isofs_find_entry.exit.thread_crit_edge, label %while.cond.preheader.i

if.end.isofs_find_entry.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

while.cond.preheader.i:                           ; preds = %if.end
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %10 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp257.i = icmp sgt i64 %11, 0
  br i1 %cmp257.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.isofs_find_entry.exit.thread_crit_edge

while.cond.preheader.i.isofs_find_entry.exit.thread_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %sub25.i = add i32 %3, -1
  %s_rock.i = getelementptr inbounds %struct.isofs_sb_info, ptr %7, i32 0, i32 11
  %s_joliet_level.i = getelementptr inbounds %struct.isofs_sb_info, ptr %7, i32 0, i32 7
  %s_mapping.i = getelementptr inbounds %struct.isofs_sb_info, ptr %7, i32 0, i32 8
  %name.i.i = getelementptr inbounds %struct.qstr, ptr %qstr.i.i, i32 0, i32 1
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 8
  %d_name9.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name12.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %conv16.i = zext i8 %5 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.backedge, %while.body.lr.ph.i
  %bh.0261.i = phi ptr [ null, %while.body.lr.ph.i ], [ %bh.0261.i.be, %while.body.i.backedge ]
  %offset.0260.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %offset.0260.i.be, %while.body.i.backedge ]
  %f_pos.0259.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %f_pos.0259.i.be, %while.body.i.backedge ]
  %block.0258.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %block.0258.i.be, %while.body.i.backedge ]
  %tobool5.not.i = icmp eq ptr %bh.0261.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %while.body.i.if.end12.i_crit_edge

while.body.i.if.end12.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then6.i:                                       ; preds = %while.body.i
  %conv7.i = zext i32 %block.0258.i to i64
  %call8.i = call ptr @isofs_bread(ptr noundef %dir, i64 noundef %conv7.i) #6
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then6.i.isofs_find_entry.exit.thread_crit_edge, label %if.then6.i.if.end12.i_crit_edge

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then6.i.isofs_find_entry.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

if.end12.i:                                       ; preds = %if.then6.i.if.end12.i_crit_edge, %while.body.i.if.end12.i_crit_edge
  %bh.1.i = phi ptr [ %bh.0261.i, %while.body.i.if.end12.i_crit_edge ], [ %call8.i, %if.then6.i.if.end12.i_crit_edge ]
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %offset.0260.i
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i, align 1
  %conv13.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not.i = icmp eq i8 %15, 0
  br i1 %tobool14.not.i, label %cleanup121.i.thread, label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 3
  %16 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %b_blocknr.i, align 8
  %add19.i = add i32 %offset.0260.i, %conv13.i
  %add20.i = add i32 %f_pos.0259.i, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add19.i)
  %cmp21.not.i = icmp ugt i32 %3, %add19.i
  br i1 %cmp21.not.i, label %if.end17.i.if.end37.i_crit_edge, label %brelse.exit213.i

if.end17.i.if.end37.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

brelse.exit213.i:                                 ; preds = %if.end17.i
  %sub.i = sub i32 %3, %add19.i
  %add24.i = add i32 %sub.i, %conv13.i
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %add24.i)
  %and26.i = and i32 %add19.i, %sub25.i
  %inc.i = add i32 %block.0258.i, 1
  call void @__brelse(ptr noundef nonnull %bh.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %brelse.exit213.i.if.end37.i_crit_edge, label %if.then28.i

brelse.exit213.i.if.end37.i_crit_edge:            ; preds = %brelse.exit213.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then28.i:                                      ; preds = %brelse.exit213.i
  %conv29.i = zext i32 %inc.i to i64
  %call30.i = call ptr @isofs_bread(ptr noundef %dir, i64 noundef %conv29.i) #6
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.then28.i.isofs_find_entry.exit.thread_crit_edge, label %if.end33.i

if.then28.i.isofs_find_entry.exit.thread_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

if.end33.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr34.i = getelementptr i8, ptr %add.ptr, i32 %add24.i
  %b_data35.i = getelementptr inbounds %struct.buffer_head, ptr %call30.i, i32 0, i32 5
  %19 = ptrtoint ptr %b_data35.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data35.i, align 4
  %21 = call ptr @memcpy(ptr %add.ptr34.i, ptr %20, i32 %and26.i)
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.end33.i, %brelse.exit213.i.if.end37.i_crit_edge, %if.end17.i.if.end37.i_crit_edge
  %block.1.i = phi i32 [ %block.0258.i, %if.end17.i.if.end37.i_crit_edge ], [ %inc.i, %if.end33.i ], [ %inc.i, %brelse.exit213.i.if.end37.i_crit_edge ]
  %offset.1.i = phi i32 [ %add19.i, %if.end17.i.if.end37.i_crit_edge ], [ %and26.i, %if.end33.i ], [ 0, %brelse.exit213.i.if.end37.i_crit_edge ]
  %bh.4.i = phi ptr [ %bh.1.i, %if.end17.i.if.end37.i_crit_edge ], [ %call30.i, %if.end33.i ], [ null, %brelse.exit213.i.if.end37.i_crit_edge ]
  %de.1.i = phi ptr [ %add.ptr.i, %if.end17.i.if.end37.i_crit_edge ], [ %add.ptr, %if.end33.i ], [ %add.ptr, %brelse.exit213.i.if.end37.i_crit_edge ]
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 9
  %22 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name_len.i, align 1
  %conv38.i = zext i8 %23 to i32
  %name.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 10
  %add39.i = add nuw nsw i32 %conv38.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %add39.i, i32 %conv13.i)
  %cmp40.i = icmp ugt i32 %add39.i, %conv13.i
  br i1 %cmp40.i, label %do.end.i, label %if.end44.i

do.end.i:                                         ; preds = %if.end37.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino.i, align 8
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %block.1.i, i32 noundef %25) #9
  %tobool.not.i214.i = icmp eq ptr %bh.4.i, null
  br i1 %tobool.not.i214.i, label %do.end.i.isofs_find_entry.exit.thread_crit_edge, label %do.end.i.isofs_find_entry.exit_crit_edge

do.end.i.isofs_find_entry.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit

do.end.i.isofs_find_entry.exit.thread_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

if.end44.i:                                       ; preds = %if.end37.i
  %26 = ptrtoint ptr %s_rock.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %s_rock.i, align 4
  %27 = and i16 %bf.load.i, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool45.not.i = icmp eq i16 %27, 0
  br i1 %tobool45.not.i, label %if.end44.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end44.i.if.else.i_crit_edge:                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end44.i
  %call46.i = call i32 @get_rock_ridge_filename(ptr noundef %de.1.i, ptr noundef %call2, ptr noundef %dir) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end68.i_crit_edge

land.lhs.true.i.if.end68.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end44.i.if.else.i_crit_edge
  %28 = ptrtoint ptr %s_joliet_level.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_joliet_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool49.not.i = icmp eq i8 %29, 0
  br i1 %tobool49.not.i, label %if.else52.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call51.i = call i32 @get_joliet_filename(ptr noundef %de.1.i, ptr noundef %call2, ptr noundef %dir) #6
  br label %if.end68.i

if.else52.i:                                      ; preds = %if.else.i
  %30 = ptrtoint ptr %s_mapping.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s_mapping.i, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %if.else52.i.if.end68.i_crit_edge [
    i8 97, label %if.then56.i
    i8 110, label %if.then63.i
  ]

if.else52.i.if.end68.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then56.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = call i32 @get_acorn_filename(ptr noundef %de.1.i, ptr noundef %call2, ptr noundef %dir) #6
  br label %if.end68.i

if.then63.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #8
  %call64.i = call i32 @isofs_name_translate(ptr noundef %de.1.i, ptr noundef %call2, ptr noundef %dir) #6
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then63.i, %if.then56.i, %if.else52.i.if.end68.i_crit_edge, %if.then50.i, %land.lhs.true.i.if.end68.i_crit_edge
  %dlen.0.i = phi i32 [ %call51.i, %if.then50.i ], [ %call57.i, %if.then56.i ], [ %call64.i, %if.then63.i ], [ %call46.i, %land.lhs.true.i.if.end68.i_crit_edge ], [ %conv38.i, %if.else52.i.if.end68.i_crit_edge ]
  %dpnt.0.i = phi ptr [ %call2, %if.then50.i ], [ %call2, %if.then56.i ], [ %call2, %if.then63.i ], [ %call2, %land.lhs.true.i.if.end68.i_crit_edge ], [ %name.i, %if.else52.i.if.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen.0.i)
  %cmp69.i = icmp sgt i32 %dlen.0.i, 0
  br i1 %cmp69.i, label %land.lhs.true71.i, label %if.end68.i.cleanup121.i_crit_edge

if.end68.i.cleanup121.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

land.lhs.true71.i:                                ; preds = %if.end68.i
  %33 = ptrtoint ptr %s_rock.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load72.i = load i16, ptr %s_rock.i, align 4
  %34 = and i16 %bf.load72.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool76.not.i = icmp eq i16 %34, 0
  br i1 %tobool76.not.i, label %land.lhs.true71.i.land.lhs.true85.i_crit_edge, label %lor.lhs.false.i

land.lhs.true71.i.land.lhs.true85.i_crit_edge:    ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true85.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true71.i
  %bf.lshr78.i = lshr i16 %bf.load72.i, 15
  %bf.cast79.i = zext i16 %bf.lshr78.i to i32
  %sub80.i = sub nsw i32 0, %bf.cast79.i
  %arrayidx81.i = getelementptr %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5, i32 %sub80.i
  %35 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx81.i, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool84.not.i = icmp eq i8 %37, 0
  br i1 %tobool84.not.i, label %lor.lhs.false.i.land.lhs.true85.i_crit_edge, label %lor.lhs.false.i.cleanup121.i_crit_edge

lor.lhs.false.i.cleanup121.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

lor.lhs.false.i.land.lhs.true85.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true85.i

land.lhs.true85.i:                                ; preds = %lor.lhs.false.i.land.lhs.true85.i_crit_edge, %land.lhs.true71.i.land.lhs.true85.i_crit_edge
  %38 = and i16 %bf.load72.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool90.not.i = icmp eq i16 %38, 0
  br i1 %tobool90.not.i, label %lor.lhs.false91.i, label %if.then102.i

lor.lhs.false91.i:                                ; preds = %land.lhs.true85.i
  %bf.lshr95.i = lshr i16 %bf.load72.i, 15
  %bf.cast96.i = zext i16 %bf.lshr95.i to i32
  %sub97.i = sub nsw i32 0, %bf.cast96.i
  %arrayidx98.i = getelementptr %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5, i32 %sub97.i
  %39 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx98.i, align 1
  %41 = and i8 %40, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool101.not.i = icmp ne i8 %41, 0
  %tobool103.not.i = icmp eq ptr %dpnt.0.i, null
  %or.cond.i = select i1 %tobool101.not.i, i1 true, i1 %tobool103.not.i
  br i1 %or.cond.i, label %lor.lhs.false91.i.cleanup121.i_crit_edge, label %lor.lhs.false91.i.land.lhs.true104.i_crit_edge

lor.lhs.false91.i.land.lhs.true104.i_crit_edge:   ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true104.i

lor.lhs.false91.i.cleanup121.i_crit_edge:         ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

if.then102.i:                                     ; preds = %land.lhs.true85.i
  %tobool103.not.old.i = icmp eq ptr %dpnt.0.i, null
  br i1 %tobool103.not.old.i, label %if.then102.i.cleanup121.i_crit_edge, label %if.then102.i.land.lhs.true104.i_crit_edge

if.then102.i.land.lhs.true104.i_crit_edge:        ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true104.i

if.then102.i.cleanup121.i_crit_edge:              ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

land.lhs.true104.i:                               ; preds = %if.then102.i.land.lhs.true104.i_crit_edge, %lor.lhs.false91.i.land.lhs.true104.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dlen.0.i)
  %cmp105.i = icmp ugt i32 %dlen.0.i, 1
  br i1 %cmp105.i, label %land.lhs.true104.i.if.then112.i_crit_edge, label %lor.lhs.false107.i

land.lhs.true104.i.if.then112.i_crit_edge:        ; preds = %land.lhs.true104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112.i

lor.lhs.false107.i:                               ; preds = %land.lhs.true104.i
  %42 = ptrtoint ptr %dpnt.0.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dpnt.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %43)
  %cmp110.i = icmp ugt i8 %43, 1
  br i1 %cmp110.i, label %lor.lhs.false107.i.if.then112.i_crit_edge, label %lor.lhs.false107.i.cleanup121.i_crit_edge

lor.lhs.false107.i.cleanup121.i_crit_edge:        ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

lor.lhs.false107.i.if.then112.i_crit_edge:        ; preds = %lor.lhs.false107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112.i

if.then112.i:                                     ; preds = %lor.lhs.false107.i.if.then112.i_crit_edge, %land.lhs.true104.i.if.then112.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %qstr.i.i) #6
  %44 = call ptr @memset(ptr %qstr.i.i, i32 255, i32 16)
  %45 = ptrtoint ptr %name.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dpnt.0.i, ptr %name.i.i, align 8
  %46 = ptrtoint ptr %qstr.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %dlen.0.i, ptr %qstr.i.i, align 8
  %47 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %d_op.i.i, align 8
  %tobool.not.i217.i = icmp eq ptr %48, null
  br i1 %tobool.not.i217.i, label %if.then.i218.i, label %if.end.i.i, !prof !18

if.then.i218.i:                                   ; preds = %if.then112.i
  %49 = ptrtoint ptr %d_name9.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %d_name9.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %dlen.0.i)
  %cmp.not.i.i = icmp eq i32 %50, %dlen.0.i
  br i1 %cmp.not.i.i, label %lor.rhs.i.i, label %if.end117.thread236.i

if.end117.thread236.i:                            ; preds = %if.then.i218.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qstr.i.i) #6
  br label %cleanup121.i

lor.rhs.i.i:                                      ; preds = %if.then.i218.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %name12.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name12.i.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %52, ptr nonnull %dpnt.0.i, i32 %dlen.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool7.i.i = icmp ne i32 %bcmp.i.i, 0
  %phi.cast.i.i = zext i1 %tobool7.i.i to i32
  br label %if.end117.i

if.end.i.i:                                       ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_compare.i.i = getelementptr inbounds %struct.dentry_operations, ptr %48, i32 0, i32 3
  %53 = ptrtoint ptr %d_compare.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %d_compare.i.i, align 4
  %55 = ptrtoint ptr %d_name9.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %d_name9.i.i, align 8
  %57 = ptrtoint ptr %name12.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name12.i.i, align 8
  %call13.i.i = call i32 %54(ptr noundef null, i32 noundef %56, ptr noundef %58, ptr noundef nonnull %qstr.i.i) #6
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.end.i.i, %lor.rhs.i.i
  %retval.0.i.i = phi i32 [ %call13.i.i, %if.end.i.i ], [ %phi.cast.i.i, %lor.rhs.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %qstr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp114.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp114.not.i, label %if.then119.i, label %if.end117.i.cleanup121.i_crit_edge

if.end117.i.cleanup121.i_crit_edge:               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup121.i

if.then119.i:                                     ; preds = %if.end117.i
  %conv18.le.i = trunc i64 %17 to i32
  %flags.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %flags.i.i, align 1
  %61 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i219.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i219.i, label %if.then119.i.isofs_normalize_block_and_offset.exit.i_crit_edge, label %if.then.i220.i

if.then119.i.isofs_normalize_block_and_offset.exit.i_crit_edge: ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_normalize_block_and_offset.exit.i

if.then.i220.i:                                   ; preds = %if.then119.i
  call void @__sanitizer_cov_trace_pc() #8
  %extent.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 2
  %62 = ptrtoint ptr %extent.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %extent.i.i, align 1
  %64 = call i32 @llvm.bswap.i32(i32 %63) #6
  %ext_attr_length.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 1
  %65 = ptrtoint ptr %ext_attr_length.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ext_attr_length.i.i, align 1
  %conv.i.i.i = zext i8 %66 to i32
  %add.i.i = add i32 %64, %conv.i.i.i
  br label %isofs_normalize_block_and_offset.exit.i

isofs_normalize_block_and_offset.exit.i:          ; preds = %if.then.i220.i, %if.then119.i.isofs_normalize_block_and_offset.exit.i_crit_edge
  %block_saved.0.i = phi i32 [ %conv18.le.i, %if.then119.i.isofs_normalize_block_and_offset.exit.i_crit_edge ], [ %add.i.i, %if.then.i220.i ]
  %offset_saved.0.i = phi i32 [ %offset.0260.i, %if.then119.i.isofs_normalize_block_and_offset.exit.i_crit_edge ], [ 0, %if.then.i220.i ]
  %tobool.not.i222.i = icmp eq ptr %bh.4.i, null
  br i1 %tobool.not.i222.i, label %isofs_find_entry.exit.thread30, label %isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge

isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge: ; preds = %isofs_normalize_block_and_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit

isofs_find_entry.exit.thread30:                   ; preds = %isofs_normalize_block_and_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #6
  br label %cond.true

cleanup121.i:                                     ; preds = %if.end117.i.cleanup121.i_crit_edge, %if.end117.thread236.i, %lor.lhs.false107.i.cleanup121.i_crit_edge, %if.then102.i.cleanup121.i_crit_edge, %lor.lhs.false91.i.cleanup121.i_crit_edge, %lor.lhs.false.i.cleanup121.i_crit_edge, %if.end68.i.cleanup121.i_crit_edge
  %conv.i = zext i32 %add20.i to i64
  %67 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %conv.i)
  %cmp.i = icmp sgt i64 %68, %conv.i
  br i1 %cmp.i, label %cleanup121.i.while.body.i.backedge_crit_edge, label %while.end.i

cleanup121.i.while.body.i.backedge_crit_edge:     ; preds = %cleanup121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %cleanup121.i.thread.while.body.i.backedge_crit_edge, %cleanup121.i.while.body.i.backedge_crit_edge
  %bh.0261.i.be = phi ptr [ %bh.4.i, %cleanup121.i.while.body.i.backedge_crit_edge ], [ null, %cleanup121.i.thread.while.body.i.backedge_crit_edge ]
  %offset.0260.i.be = phi i32 [ %offset.1.i, %cleanup121.i.while.body.i.backedge_crit_edge ], [ 0, %cleanup121.i.thread.while.body.i.backedge_crit_edge ]
  %f_pos.0259.i.be = phi i32 [ %add20.i, %cleanup121.i.while.body.i.backedge_crit_edge ], [ %and.i, %cleanup121.i.thread.while.body.i.backedge_crit_edge ]
  %block.0258.i.be = phi i32 [ %block.1.i, %cleanup121.i.while.body.i.backedge_crit_edge ], [ %shr.i, %cleanup121.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

cleanup121.i.thread:                              ; preds = %if.end12.i
  call void @__brelse(ptr noundef nonnull %bh.1.i) #6
  %add.i = add i32 %f_pos.0259.i, 2048
  %and.i = and i32 %add.i, -2048
  %shr.i = lshr i32 %and.i, %conv16.i
  %conv.i21 = zext i32 %and.i to i64
  %69 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %conv.i21)
  %cmp.i22 = icmp sgt i64 %70, %conv.i21
  br i1 %cmp.i22, label %cleanup121.i.thread.while.body.i.backedge_crit_edge, label %cleanup121.i.thread.isofs_find_entry.exit.thread_crit_edge

cleanup121.i.thread.isofs_find_entry.exit.thread_crit_edge: ; preds = %cleanup121.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

cleanup121.i.thread.while.body.i.backedge_crit_edge: ; preds = %cleanup121.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.backedge

while.end.i:                                      ; preds = %cleanup121.i
  %tobool.not.i226.i = icmp eq ptr %bh.4.i, null
  br i1 %tobool.not.i226.i, label %while.end.i.isofs_find_entry.exit.thread_crit_edge, label %while.end.i.isofs_find_entry.exit_crit_edge

while.end.i.isofs_find_entry.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit

while.end.i.isofs_find_entry.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %isofs_find_entry.exit.thread

isofs_find_entry.exit.thread:                     ; preds = %while.end.i.isofs_find_entry.exit.thread_crit_edge, %cleanup121.i.thread.isofs_find_entry.exit.thread_crit_edge, %do.end.i.isofs_find_entry.exit.thread_crit_edge, %if.then28.i.isofs_find_entry.exit.thread_crit_edge, %if.then6.i.isofs_find_entry.exit.thread_crit_edge, %while.cond.preheader.i.isofs_find_entry.exit.thread_crit_edge, %if.end.isofs_find_entry.exit.thread_crit_edge
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #6
  br label %cond.end

isofs_find_entry.exit:                            ; preds = %while.end.i.isofs_find_entry.exit_crit_edge, %isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge, %do.end.i.isofs_find_entry.exit_crit_edge
  %block.0 = phi i32 [ -1, %while.end.i.isofs_find_entry.exit_crit_edge ], [ -1, %do.end.i.isofs_find_entry.exit_crit_edge ], [ %block_saved.0.i, %isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge ]
  %offset.0 = phi i32 [ -1, %while.end.i.isofs_find_entry.exit_crit_edge ], [ -1, %do.end.i.isofs_find_entry.exit_crit_edge ], [ %offset_saved.0.i, %isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge ]
  %tobool5.not = phi i1 [ true, %while.end.i.isofs_find_entry.exit_crit_edge ], [ true, %do.end.i.isofs_find_entry.exit_crit_edge ], [ false, %isofs_normalize_block_and_offset.exit.i.isofs_find_entry.exit_crit_edge ]
  call void @__brelse(ptr noundef nonnull %bh.4.i) #6
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i, i32 noundef 0) #6
  br i1 %tobool5.not, label %isofs_find_entry.exit.cond.end_crit_edge, label %isofs_find_entry.exit.cond.true_crit_edge

isofs_find_entry.exit.cond.true_crit_edge:        ; preds = %isofs_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.true

isofs_find_entry.exit.cond.end_crit_edge:         ; preds = %isofs_find_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %isofs_find_entry.exit.cond.true_crit_edge, %isofs_find_entry.exit.thread30
  %offset.136 = phi i32 [ %offset_saved.0.i, %isofs_find_entry.exit.thread30 ], [ %offset.0, %isofs_find_entry.exit.cond.true_crit_edge ]
  %block.135 = phi i32 [ %block_saved.0.i, %isofs_find_entry.exit.thread30 ], [ %block.0, %isofs_find_entry.exit.cond.true_crit_edge ]
  %71 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i_sb.i, align 4
  %call.i = call ptr @__isofs_iget(ptr noundef %72, i32 noundef %block.135, i32 noundef %offset.136, i32 noundef 0) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %isofs_find_entry.exit.cond.end_crit_edge, %isofs_find_entry.exit.thread
  %cond = phi ptr [ %call.i, %cond.true ], [ null, %isofs_find_entry.exit.cond.end_crit_edge ], [ null, %isofs_find_entry.exit.thread ]
  %call7 = call ptr @d_splice_alias(ptr noundef %cond, ptr noundef %dentry) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %cond.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isofs_bread(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_rock_ridge_filename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_joliet_filename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_acorn_filename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isofs_name_translate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__isofs_iget(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/isofs/namei.c", i32 102, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @isofs_find_entry._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @isofs_find_entry._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
