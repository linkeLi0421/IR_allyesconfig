; ModuleID = '/llk/IR_all_yes/fs/hfsplus/bitmap.c_pt.bc'
source_filename = "../fs/hfsplus/bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.hfsplus_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, %struct.mutex, i32, i32, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, i32, i32, %struct.delayed_work, %struct.spinlock }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }

@hfsplus_block_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\012hfsplus: unable to mark blocks free: error %ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hfsplus_block_free\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/hfsplus/bitmap.c\00", [44 x i8] zeroinitializer }, align 32
@hfsplus_block_free._entry_ptr = internal global ptr @hfsplus_block_free._entry, section ".printk_index", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private constant [23 x i8] c"../fs/hfsplus/bitmap.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 242, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 44, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @hfsplus_block_free._entry, ptr @hfsplus_block_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfsplus_block_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_block_allocate(ptr noundef %sb, i32 noundef %size, i32 noundef %offset, ptr nocapture noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  %alloc_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %alloc_mutex, i32 noundef 0) #5
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alloc_file, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %div256 = lshr i32 %offset, 15
  %call.i = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef %div256, ptr noundef null, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.out_crit_edge, label %if.end4

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end4.if.then.i_crit_edge [
    i32 2, label %if.end4.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end4.if.else.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #5
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end4.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #5
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %and = lshr i32 %offset, 5
  %div6257 = and i32 %and, 1023
  %add.ptr = getelementptr i32, ptr %addr.0.i, i32 %div6257
  %and7 = and i32 %offset, -32768
  %xor = xor i32 %offset, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %xor)
  %tobool9.not = icmp ult i32 %xor, 32768
  %add = add i32 %size, 31
  %and12 = lshr i32 %add, 5
  %div13259 = and i32 %and12, 1023
  %end.0.v = select i1 %tobool9.not, i32 %div13259, i32 1024
  %end.0 = getelementptr i32, ptr %addr.0.i, i32 %end.0.v
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool16.not = icmp eq i32 %13, -1
  br i1 %tobool16.not, label %kmap.exit.if.end23_crit_edge, label %if.then17

kmap.exit.if.end23_crit_edge:                     ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %kmap.exit
  %rem = and i32 %offset, 31
  %shr = lshr i32 -2147483648, %rem
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then17
  %i.0308 = phi i32 [ %rem, %if.then17 ], [ %inc, %for.inc.for.body_crit_edge ]
  %mask.0307 = phi i32 [ %shr, %if.then17 ], [ %shr22, %for.inc.for.body_crit_edge ]
  %and18 = and i32 %mask.0307, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %for.body.found_crit_edge, label %for.inc

for.body.found_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

for.inc:                                          ; preds = %for.body
  %shr22 = lshr i32 %mask.0307, 1
  %inc = add nuw nsw i32 %i.0308, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %kmap.exit.if.end23_crit_edge
  %incdec.ptr = getelementptr i32, ptr %add.ptr, i32 1
  br label %while.cond

while.cond:                                       ; preds = %kmap.exit278, %if.end23
  %offset.addr.0 = phi i32 [ %and7, %if.end23 ], [ %add43, %kmap.exit278 ]
  %page.0 = phi ptr [ %call.i, %if.end23 ], [ %call.i267, %kmap.exit278 ]
  %pptr.0 = phi ptr [ %addr.0.i, %if.end23 ], [ %addr.0.i276, %kmap.exit278 ]
  %curr.0 = phi ptr [ %incdec.ptr, %if.end23 ], [ %addr.0.i276, %kmap.exit278 ]
  %end.1 = phi ptr [ %end.0, %if.end23 ], [ %end.2, %kmap.exit278 ]
  %cmp25311 = icmp ult ptr %curr.0, %end.1
  br i1 %cmp25311, label %while.cond.while.body26_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.while.body26_crit_edge:                ; preds = %while.cond
  br label %while.body26

while.body26:                                     ; preds = %if.end41.while.body26_crit_edge, %while.cond.while.body26_crit_edge
  %curr.1312 = phi ptr [ %incdec.ptr42, %if.end41.while.body26_crit_edge ], [ %curr.0, %while.cond.while.body26_crit_edge ]
  %14 = ptrtoint ptr %curr.1312 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr.1312, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool28.not = icmp eq i32 %15, -1
  br i1 %tobool28.not, label %while.body26.if.end41_crit_edge, label %while.body26.for.body32_crit_edge

while.body26.for.body32_crit_edge:                ; preds = %while.body26
  br label %for.body32

while.body26.if.end41_crit_edge:                  ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

for.body32:                                       ; preds = %for.inc37.for.body32_crit_edge, %while.body26.for.body32_crit_edge
  %i.1310 = phi i32 [ %inc39, %for.inc37.for.body32_crit_edge ], [ 0, %while.body26.for.body32_crit_edge ]
  %mask.1309 = phi i32 [ %shr38, %for.inc37.for.body32_crit_edge ], [ -2147483648, %while.body26.for.body32_crit_edge ]
  %and33 = and i32 %mask.1309, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.body32.found_crit_edge, label %for.inc37

for.body32.found_crit_edge:                       ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %found

for.inc37:                                        ; preds = %for.body32
  %shr38 = lshr i32 %mask.1309, 1
  %inc39 = add nuw nsw i32 %i.1310, 1
  %exitcond348.not = icmp eq i32 %inc39, 32
  br i1 %exitcond348.not, label %for.inc37.if.end41_crit_edge, label %for.inc37.for.body32_crit_edge

for.inc37.for.body32_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32

for.inc37.if.end41_crit_edge:                     ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41:                                         ; preds = %for.inc37.if.end41_crit_edge, %while.body26.if.end41_crit_edge
  %incdec.ptr42 = getelementptr i32, ptr %curr.1312, i32 1
  %cmp25 = icmp ult ptr %incdec.ptr42, %end.1
  br i1 %cmp25, label %if.end41.while.body26_crit_edge, label %if.end41.while.end_crit_edge

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end41.while.body26_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body26

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #5
  %16 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page.0, align 4
  %shr.i.i264 = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i264 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %shr.i.i264, label %while.end.kunmap.exit_crit_edge [
    i32 2, label %while.end.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i266
  ]

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

while.end.kunmap.exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i266:                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i265 = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i265, label %is_highmem_idx.exit.i266.if.end.i_crit_edge, label %is_highmem_idx.exit.i266.kunmap.exit_crit_edge

is_highmem_idx.exit.i266.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i266.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i266.if.end.i_crit_edge, %while.end.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page.0) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i266.kunmap.exit_crit_edge, %while.end.kunmap.exit_crit_edge
  %add43 = add i32 %offset.addr.0, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %size)
  %cmp44.not = icmp ult i32 %add43, %size
  br i1 %cmp44.not, label %if.end46, label %kunmap.exit.out_crit_edge

kunmap.exit.out_crit_edge:                        ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end46:                                         ; preds = %kunmap.exit
  %div47260 = lshr exact i32 %add43, 15
  %call.i267 = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef %div47260, ptr noundef null, ptr noundef null) #5
  %cmp.i268 = icmp ugt ptr %call.i267, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.end46.out_crit_edge, label %if.end51

if.end46.out_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end51:                                         ; preds = %if.end46
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #5
  %20 = ptrtoint ptr %call.i267 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call.i267, align 4
  %shr.i.i269 = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i269 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr.i.i269, label %if.end51.if.then.i273_crit_edge [
    i32 2, label %if.end51.if.else.i275_crit_edge
    i32 3, label %is_highmem_idx.exit.i271
  ]

if.end51.if.else.i275_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i275

if.end51.if.then.i273_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i273

is_highmem_idx.exit.i271:                         ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i270 = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i270, label %is_highmem_idx.exit.i271.if.else.i275_crit_edge, label %is_highmem_idx.exit.i271.if.then.i273_crit_edge

is_highmem_idx.exit.i271.if.then.i273_crit_edge:  ; preds = %is_highmem_idx.exit.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i273

is_highmem_idx.exit.i271.if.else.i275_crit_edge:  ; preds = %is_highmem_idx.exit.i271
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i275

if.then.i273:                                     ; preds = %is_highmem_idx.exit.i271.if.then.i273_crit_edge, %if.end51.if.then.i273_crit_edge
  %call5.i272 = tail call ptr @page_address(ptr noundef %call.i267) #5
  br label %kmap.exit278

if.else.i275:                                     ; preds = %is_highmem_idx.exit.i271.if.else.i275_crit_edge, %if.end51.if.else.i275_crit_edge
  %call6.i274 = tail call ptr @kmap_high(ptr noundef %call.i267) #5
  br label %kmap.exit278

kmap.exit278:                                     ; preds = %if.else.i275, %if.then.i273
  %addr.0.i276 = phi ptr [ %call6.i274, %if.else.i275 ], [ %call5.i272, %if.then.i273 ]
  %xor53 = xor i32 %add43, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %xor53)
  %tobool55.not = icmp ult i32 %xor53, 32768
  %end.2.v = select i1 %tobool55.not, i32 %div13259, i32 1024
  %end.2 = getelementptr i32, ptr %addr.0.i276, i32 %end.2.v
  br label %while.cond

found:                                            ; preds = %for.body32.found_crit_edge, %for.body.found_crit_edge
  %offset.addr.1 = phi i32 [ %offset.addr.0, %for.body32.found_crit_edge ], [ %and7, %for.body.found_crit_edge ]
  %page.1 = phi ptr [ %page.0, %for.body32.found_crit_edge ], [ %call.i, %for.body.found_crit_edge ]
  %pptr.1 = phi ptr [ %pptr.0, %for.body32.found_crit_edge ], [ %addr.0.i, %for.body.found_crit_edge ]
  %curr.2 = phi ptr [ %curr.1312, %for.body32.found_crit_edge ], [ %add.ptr, %for.body.found_crit_edge ]
  %end.3 = phi ptr [ %end.1, %for.body32.found_crit_edge ], [ %end.0, %for.body.found_crit_edge ]
  %mask.2 = phi i32 [ %mask.1309, %for.body32.found_crit_edge ], [ %mask.0307, %for.body.found_crit_edge ]
  %n.0 = phi i32 [ %15, %for.body32.found_crit_edge ], [ %13, %for.body.found_crit_edge ]
  %i.2 = phi i32 [ %i.1310, %for.body32.found_crit_edge ], [ %i.0308, %for.body.found_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %curr.2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %pptr.1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul = shl i32 %sub.ptr.sub, 3
  %add68 = add i32 %mul, %offset.addr.1
  %add69 = add i32 %add68, %i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add69, i32 %size)
  %cmp70.not = icmp ult i32 %add69, %size
  br i1 %cmp70.not, label %if.end75, label %found.out_crit_edge

found.out_crit_edge:                              ; preds = %found
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end75:                                         ; preds = %found
  %sub = sub i32 %size, %add69
  %24 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %3)
  %25 = call i32 @llvm.smax.i32(i32 %i.2, i32 31)
  %smax = add nuw nsw i32 %25, 1
  %26 = add i32 %i.2, %24
  br label %while.cond77

while.cond77:                                     ; preds = %lor.lhs.false.while.cond77_crit_edge, %if.end75
  %mask.3 = phi i32 [ %mask.2, %if.end75 ], [ %shr83, %lor.lhs.false.while.cond77_crit_edge ]
  %len.0 = phi i32 [ %24, %if.end75 ], [ %dec90, %lor.lhs.false.while.cond77_crit_edge ]
  %n.1 = phi i32 [ %n.0, %if.end75 ], [ %or, %lor.lhs.false.while.cond77_crit_edge ]
  %i.3 = phi i32 [ %i.2, %if.end75 ], [ %inc79, %lor.lhs.false.while.cond77_crit_edge ]
  %or = or i32 %n.1, %mask.3
  %inc79 = add nuw nsw i32 %i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.3)
  %cmp80 = icmp ugt i32 %i.3, 30
  %dec90 = add i32 %len.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec90)
  %tobool91.not = icmp eq i32 %dec90, 0
  br i1 %cmp80, label %while.end89, label %if.end82

if.end82:                                         ; preds = %while.cond77
  br i1 %tobool91.not, label %if.end82.done_crit_edge, label %lor.lhs.false

if.end82.done_crit_edge:                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

lor.lhs.false:                                    ; preds = %if.end82
  %shr83 = lshr i32 %mask.3, 1
  %and85 = and i32 %or, %shr83
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %lor.lhs.false.while.cond77_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

lor.lhs.false.while.cond77_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond77

while.end89:                                      ; preds = %while.cond77
  br i1 %tobool91.not, label %while.end89.done_crit_edge, label %if.end93

while.end89.done_crit_edge:                       ; preds = %while.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end93:                                         ; preds = %while.end89
  %incdec.ptr94 = getelementptr i32, ptr %curr.2, i32 1
  %27 = ptrtoint ptr %curr.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %curr.2, align 4
  br label %while.cond95

while.cond95:                                     ; preds = %if.end115, %if.end93
  %offset.addr.2 = phi i32 [ %offset.addr.1, %if.end93 ], [ %add110, %if.end115 ]
  %page.2 = phi ptr [ %page.1, %if.end93 ], [ %call.i279, %if.end115 ]
  %pptr.2 = phi ptr [ %pptr.1, %if.end93 ], [ %call116, %if.end115 ]
  %curr.3 = phi ptr [ %incdec.ptr94, %if.end93 ], [ %call116, %if.end115 ]
  %end.4 = phi ptr [ %end.3, %if.end93 ], [ %add.ptr117, %if.end115 ]
  %len.1 = phi i32 [ %dec90, %if.end93 ], [ %len.2.lcssa, %if.end115 ]
  %cmp98314 = icmp ult ptr %curr.3, %end.4
  br i1 %cmp98314, label %while.cond95.while.body99_crit_edge, label %while.cond95.while.end108_crit_edge

while.cond95.while.end108_crit_edge:              ; preds = %while.cond95
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end108

while.cond95.while.body99_crit_edge:              ; preds = %while.cond95
  br label %while.body99

while.body99:                                     ; preds = %if.end105.while.body99_crit_edge, %while.cond95.while.body99_crit_edge
  %len.2316 = phi i32 [ %sub107, %if.end105.while.body99_crit_edge ], [ %len.1, %while.cond95.while.body99_crit_edge ]
  %curr.4315 = phi ptr [ %incdec.ptr106, %if.end105.while.body99_crit_edge ], [ %curr.3, %while.cond95.while.body99_crit_edge ]
  %28 = ptrtoint ptr %curr.4315 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %curr.4315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len.2316)
  %cmp100 = icmp ult i32 %len.2316, 32
  br i1 %cmp100, label %while.body99.last_crit_edge, label %if.end102

while.body99.last_crit_edge:                      ; preds = %while.body99
  call void @__sanitizer_cov_trace_pc() #7
  br label %last

if.end102:                                        ; preds = %while.body99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool103.not = icmp eq i32 %29, 0
  br i1 %tobool103.not, label %if.end105, label %if.end102.last_crit_edge

if.end102.last_crit_edge:                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %last

if.end105:                                        ; preds = %if.end102
  %incdec.ptr106 = getelementptr i32, ptr %curr.4315, i32 1
  %30 = ptrtoint ptr %curr.4315 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %curr.4315, align 4
  %sub107 = add i32 %len.2316, -32
  %cmp98 = icmp ult ptr %incdec.ptr106, %end.4
  br i1 %cmp98, label %if.end105.while.body99_crit_edge, label %if.end105.while.end108_crit_edge

if.end105.while.end108_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end108

if.end105.while.body99_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body99

while.end108:                                     ; preds = %if.end105.while.end108_crit_edge, %while.cond95.while.end108_crit_edge
  %len.2.lcssa = phi i32 [ %len.1, %while.cond95.while.end108_crit_edge ], [ %sub107, %if.end105.while.end108_crit_edge ]
  %call109 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.2) #5
  tail call fastcc void @kunmap(ptr noundef %page.2)
  %add110 = add i32 %offset.addr.2, 32768
  %div111263 = lshr i32 %add110, 15
  %call.i279 = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef %div111263, ptr noundef null, ptr noundef null) #5
  %cmp.i280 = icmp ugt ptr %call.i279, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i280, label %while.end108.out_crit_edge, label %if.end115

while.end108.out_crit_edge:                       ; preds = %while.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end115:                                        ; preds = %while.end108
  call void @__sanitizer_cov_trace_pc() #7
  %call116 = tail call fastcc ptr @kmap(ptr noundef %call.i279)
  %add.ptr117 = getelementptr i32, ptr %call116, i32 1024
  br label %while.cond95

last:                                             ; preds = %if.end102.last_crit_edge, %while.body99.last_crit_edge
  %len.3 = phi i32 [ %len.2316, %while.body99.last_crit_edge ], [ 32, %if.end102.last_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3)
  %cmp119317 = icmp ne i32 %len.3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %tobool122.not319 = icmp sgt i32 %29, -1
  %or.cond320 = select i1 %cmp119317, i1 %tobool122.not319, i1 false
  br i1 %or.cond320, label %last.if.end124_crit_edge, label %last.done_crit_edge

last.done_crit_edge:                              ; preds = %last
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

last.if.end124_crit_edge:                         ; preds = %last
  br label %if.end124

if.end124:                                        ; preds = %if.end124.if.end124_crit_edge, %last.if.end124_crit_edge
  %i.4323 = phi i32 [ %inc128, %if.end124.if.end124_crit_edge ], [ 0, %last.if.end124_crit_edge ]
  %n.2322 = phi i32 [ %or125, %if.end124.if.end124_crit_edge ], [ %29, %last.if.end124_crit_edge ]
  %mask.4321 = phi i32 [ %shr126, %if.end124.if.end124_crit_edge ], [ -2147483648, %last.if.end124_crit_edge ]
  %or125 = or i32 %n.2322, %mask.4321
  %shr126 = lshr i32 %mask.4321, 1
  %inc128 = add nuw i32 %i.4323, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc128, i32 %len.3)
  %cmp119 = icmp ult i32 %inc128, %len.3
  %and121 = and i32 %or125, %shr126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  %or.cond = select i1 %cmp119, i1 %tobool122.not, i1 false
  br i1 %or.cond, label %if.end124.if.end124_crit_edge, label %if.end124.done_crit_edge

if.end124.done_crit_edge:                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end124.if.end124_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

done:                                             ; preds = %if.end124.done_crit_edge, %last.done_crit_edge, %while.end89.done_crit_edge, %lor.lhs.false.done_crit_edge, %if.end82.done_crit_edge
  %offset.addr.3 = phi i32 [ %offset.addr.1, %while.end89.done_crit_edge ], [ %offset.addr.2, %last.done_crit_edge ], [ %offset.addr.2, %if.end124.done_crit_edge ], [ %offset.addr.1, %lor.lhs.false.done_crit_edge ], [ %offset.addr.1, %if.end82.done_crit_edge ]
  %page.3 = phi ptr [ %page.1, %while.end89.done_crit_edge ], [ %page.2, %last.done_crit_edge ], [ %page.2, %if.end124.done_crit_edge ], [ %page.1, %lor.lhs.false.done_crit_edge ], [ %page.1, %if.end82.done_crit_edge ]
  %pptr.3 = phi ptr [ %pptr.1, %while.end89.done_crit_edge ], [ %pptr.2, %last.done_crit_edge ], [ %pptr.2, %if.end124.done_crit_edge ], [ %pptr.1, %lor.lhs.false.done_crit_edge ], [ %pptr.1, %if.end82.done_crit_edge ]
  %curr.5 = phi ptr [ %curr.2, %while.end89.done_crit_edge ], [ %curr.4315, %last.done_crit_edge ], [ %curr.4315, %if.end124.done_crit_edge ], [ %curr.2, %lor.lhs.false.done_crit_edge ], [ %curr.2, %if.end82.done_crit_edge ]
  %n.3 = phi i32 [ %or, %while.end89.done_crit_edge ], [ %29, %last.done_crit_edge ], [ %or125, %if.end124.done_crit_edge ], [ %or, %lor.lhs.false.done_crit_edge ], [ %or, %if.end82.done_crit_edge ]
  %i.5 = phi i32 [ %smax, %while.end89.done_crit_edge ], [ 0, %last.done_crit_edge ], [ %inc128, %if.end124.done_crit_edge ], [ %26, %if.end82.done_crit_edge ], [ %inc79, %lor.lhs.false.done_crit_edge ]
  %31 = ptrtoint ptr %curr.5 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %n.3, ptr %curr.5, align 4
  %call130 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.3) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #5
  %32 = ptrtoint ptr %page.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %page.3, align 4
  %shr.i.i281 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %shr.i.i281, label %done.kunmap.exit285_crit_edge [
    i32 2, label %done.if.end.i284_crit_edge
    i32 3, label %is_highmem_idx.exit.i283
  ]

done.if.end.i284_crit_edge:                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i284

done.kunmap.exit285_crit_edge:                    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit285

is_highmem_idx.exit.i283:                         ; preds = %done
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i282 = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i282, label %is_highmem_idx.exit.i283.if.end.i284_crit_edge, label %is_highmem_idx.exit.i283.kunmap.exit285_crit_edge

is_highmem_idx.exit.i283.kunmap.exit285_crit_edge: ; preds = %is_highmem_idx.exit.i283
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit285

is_highmem_idx.exit.i283.if.end.i284_crit_edge:   ; preds = %is_highmem_idx.exit.i283
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i284

if.end.i284:                                      ; preds = %is_highmem_idx.exit.i283.if.end.i284_crit_edge, %done.if.end.i284_crit_edge
  tail call void @kunmap_high(ptr noundef %page.3) #5
  br label %kunmap.exit285

kunmap.exit285:                                   ; preds = %if.end.i284, %is_highmem_idx.exit.i283.kunmap.exit285_crit_edge, %done.kunmap.exit285_crit_edge
  %sub.ptr.lhs.cast131 = ptrtoint ptr %curr.5 to i32
  %sub.ptr.rhs.cast132 = ptrtoint ptr %pptr.3 to i32
  %sub.ptr.sub133 = sub i32 %sub.ptr.lhs.cast131, %sub.ptr.rhs.cast132
  %mul135 = shl i32 %sub.ptr.sub133, 3
  %add136 = sub i32 %offset.addr.3, %add69
  %add137 = add i32 %add136, %i.5
  %sub138 = add i32 %add137, %mul135
  %36 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub138, ptr %max, align 4
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 20
  %37 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %free_blocks, align 8
  %sub139 = sub i32 %38, %sub138
  store i32 %sub139, ptr %free_blocks, align 8
  tail call void @hfsplus_mark_mdb_dirty(ptr noundef %sb) #5
  br label %out

out:                                              ; preds = %kunmap.exit285, %while.end108.out_crit_edge, %found.out_crit_edge, %if.end46.out_crit_edge, %kunmap.exit.out_crit_edge, %do.end.out_crit_edge
  %start.0 = phi i32 [ %add69, %found.out_crit_edge ], [ %add69, %kunmap.exit285 ], [ %size, %do.end.out_crit_edge ], [ %size, %while.end108.out_crit_edge ], [ %size, %if.end46.out_crit_edge ], [ %size, %kunmap.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %alloc_mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %start.0, %out ], [ %size, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #5
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr.i, label %entry.if.then_crit_edge [
    i32 2, label %entry.if.else_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.else_crit_edge, label %is_highmem_idx.exit.if.then_crit_edge

is_highmem_idx.exit.if.then_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

is_highmem_idx.exit.if.else_crit_edge:            ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %is_highmem_idx.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call5 = tail call ptr @page_address(ptr noundef %page) #5
  br label %if.end

if.else:                                          ; preds = %is_highmem_idx.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %call6 = tail call ptr @kmap_high(ptr noundef %page) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %addr.0 = phi ptr [ %call6, %if.else ], [ %call5, %if.then ]
  ret ptr %addr.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kunmap(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #5
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i, label %entry.return_crit_edge [
    i32 2, label %entry.if.end_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not = icmp eq i32 %3, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.if.end_crit_edge, label %is_highmem_idx.exit.return_crit_edge

is_highmem_idx.exit.return_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

is_highmem_idx.exit.if.end_crit_edge:             ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %is_highmem_idx.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #5
  br label %return

return:                                           ; preds = %if.end, %is_highmem_idx.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfsplus_mark_mdb_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hfsplus_block_free(ptr noundef %sb, i32 noundef %offset, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup54_crit_edge, label %do.end

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

do.end:                                           ; preds = %entry
  %add = add i32 %count, %offset
  %total_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %total_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %do.end.cleanup54_crit_edge, label %if.end2

do.end.cleanup54_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup54

if.end2:                                          ; preds = %do.end
  %alloc_mutex = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %alloc_mutex, i32 noundef 0) #5
  %alloc_file = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %alloc_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alloc_file, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %div107 = lshr i32 %offset, 15
  %call.i = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef %div107, ptr noundef null, ptr noundef null) #5
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end2.do.end50_crit_edge, label %if.end6

if.end2.do.end50_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end6:                                          ; preds = %if.end2
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %9, 30
  %10 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i, label %if.end6.if.then.i_crit_edge [
    i32 2, label %if.end6.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end6.if.else.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.end6.if.then.i_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %11 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp2.i.not.i = icmp eq i32 %11, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end6.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #5
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end6.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #5
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %and = lshr i32 %offset, 5
  %div8108 = and i32 %and, 1023
  %add.ptr = getelementptr i32, ptr %addr.0.i, i32 %div8108
  %rem = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  br i1 %tobool10.not, label %kmap.exit.while.cond.preheader_crit_edge, label %if.then11

kmap.exit.while.cond.preheader_crit_edge:         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %cleanup.thread, %kmap.exit.while.cond.preheader_crit_edge
  %count.addr.2.ph = phi i32 [ %sub19, %cleanup.thread ], [ %count, %kmap.exit.while.cond.preheader_crit_edge ]
  %curr.2.ph = phi ptr [ %curr.0131, %cleanup.thread ], [ %add.ptr, %kmap.exit.while.cond.preheader_crit_edge ]
  br label %while.cond

if.then11:                                        ; preds = %kmap.exit
  %sub = sub nuw nsw i32 32, %rem
  %shl = shl nsw i32 -1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %count)
  %cmp12 = icmp ugt i32 %sub, %count
  br i1 %cmp12, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %and18 = and i32 %13, %shl
  store i32 %and18, ptr %add.ptr, align 4
  %sub19 = sub i32 %count, %sub
  %curr.0131 = getelementptr i32, ptr %add.ptr, i32 1
  br label %while.cond.preheader

cleanup:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %add14 = add i32 %rem, %count
  %shr = lshr i32 -1, %add14
  %or = or i32 %shl, %shr
  br label %out.sink.split

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %count.addr.2 = phi i32 [ %count.addr.2.ph, %while.cond.preheader ], [ %count.addr.3.lcssa, %while.cond.backedge ]
  %page.0 = phi ptr [ %call.i, %while.cond.preheader ], [ %call.i112, %while.cond.backedge ]
  %curr.2 = phi ptr [ %curr.2.ph, %while.cond.preheader ], [ %call7.pn.be, %while.cond.backedge ]
  %call7.pn = phi ptr [ %addr.0.i, %while.cond.preheader ], [ %call7.pn.be, %while.cond.backedge ]
  %pnr.0 = phi i32 [ %div107, %while.cond.preheader ], [ %inc, %while.cond.backedge ]
  %end.0 = getelementptr i32, ptr %call7.pn, i32 1024
  %cmp22136 = icmp ult ptr %curr.2, %end.0
  br i1 %cmp22136, label %while.cond.while.body23_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.while.body23_crit_edge:                ; preds = %while.cond
  br label %while.body23

while.body23:                                     ; preds = %if.end26.while.body23_crit_edge, %while.cond.while.body23_crit_edge
  %curr.3138 = phi ptr [ %incdec.ptr27, %if.end26.while.body23_crit_edge ], [ %curr.2, %while.cond.while.body23_crit_edge ]
  %count.addr.3137 = phi i32 [ %sub28, %if.end26.while.body23_crit_edge ], [ %count.addr.2, %while.cond.while.body23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.3137)
  %cmp24 = icmp ult i32 %count.addr.3137, 32
  br i1 %cmp24, label %done, label %if.end26

if.end26:                                         ; preds = %while.body23
  %incdec.ptr27 = getelementptr i32, ptr %curr.3138, i32 1
  %14 = ptrtoint ptr %curr.3138 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %curr.3138, align 4
  %sub28 = add i32 %count.addr.3137, -32
  %cmp22 = icmp ult ptr %incdec.ptr27, %end.0
  br i1 %cmp22, label %if.end26.while.body23_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end26.while.body23_crit_edge:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body23

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %while.cond.while.end_crit_edge
  %count.addr.3.lcssa = phi i32 [ %count.addr.2, %while.cond.while.end_crit_edge ], [ %sub28, %if.end26.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3.lcssa)
  %cond = icmp eq i32 %count.addr.3.lcssa, 0
  br i1 %cond, label %while.end.out_crit_edge, label %if.end31

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end31:                                         ; preds = %while.end
  %call32 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.0) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #5
  %15 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page.0, align 4
  %shr.i.i109 = lshr i32 %16, 30
  %17 = zext i32 %shr.i.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i109, label %if.end31.kunmap.exit_crit_edge [
    i32 2, label %if.end31.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i111
  ]

if.end31.if.end.i_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end31.kunmap.exit_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i111:                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %18 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp2.i.not.i110 = icmp eq i32 %18, 2
  br i1 %cmp2.i.not.i110, label %is_highmem_idx.exit.i111.if.end.i_crit_edge, label %is_highmem_idx.exit.i111.kunmap.exit_crit_edge

is_highmem_idx.exit.i111.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit

is_highmem_idx.exit.i111.if.end.i_crit_edge:      ; preds = %is_highmem_idx.exit.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i111.if.end.i_crit_edge, %if.end31.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page.0) #5
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i111.kunmap.exit_crit_edge, %if.end31.kunmap.exit_crit_edge
  %inc = add i32 %pnr.0, 1
  %call.i112 = tail call ptr @read_cache_page(ptr noundef %7, i32 noundef %inc, ptr noundef null, ptr noundef null) #5
  %cmp.i113 = icmp ugt ptr %call.i112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %kunmap.exit.do.end50_crit_edge, label %if.end36

kunmap.exit.do.end50_crit_edge:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

if.end36:                                         ; preds = %kunmap.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 44) #5
  %19 = ptrtoint ptr %call.i112 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call.i112, align 4
  %shr.i.i114 = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i114, label %if.end36.if.then.i118_crit_edge [
    i32 2, label %if.end36.if.else.i120_crit_edge
    i32 3, label %is_highmem_idx.exit.i116
  ]

if.end36.if.else.i120_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i120

if.end36.if.then.i118_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i118

is_highmem_idx.exit.i116:                         ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i115 = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i115, label %is_highmem_idx.exit.i116.if.else.i120_crit_edge, label %is_highmem_idx.exit.i116.if.then.i118_crit_edge

is_highmem_idx.exit.i116.if.then.i118_crit_edge:  ; preds = %is_highmem_idx.exit.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i118

is_highmem_idx.exit.i116.if.else.i120_crit_edge:  ; preds = %is_highmem_idx.exit.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i120

if.then.i118:                                     ; preds = %is_highmem_idx.exit.i116.if.then.i118_crit_edge, %if.end36.if.then.i118_crit_edge
  %call5.i117 = tail call ptr @page_address(ptr noundef %call.i112) #5
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else.i120, %if.then.i118
  %call7.pn.be = phi ptr [ %call5.i117, %if.then.i118 ], [ %call6.i119, %if.else.i120 ]
  br label %while.cond

if.else.i120:                                     ; preds = %is_highmem_idx.exit.i116.if.else.i120_crit_edge, %if.end36.if.else.i120_crit_edge
  %call6.i119 = tail call ptr @kmap_high(ptr noundef %call.i112) #5
  br label %while.cond.backedge

done:                                             ; preds = %while.body23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3137)
  %tobool40.not = icmp eq i32 %count.addr.3137, 0
  br i1 %tobool40.not, label %done.out_crit_edge, label %if.then41

done.out_crit_edge:                               ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then41:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  %shr42 = lshr i32 -1, %count.addr.3137
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then41, %cleanup
  %add.ptr.sink147 = phi ptr [ %add.ptr, %cleanup ], [ %curr.3138, %if.then41 ]
  %or.sink = phi i32 [ %or, %cleanup ], [ %shr42, %if.then41 ]
  %page.1.ph = phi ptr [ %call.i, %cleanup ], [ %page.0, %if.then41 ]
  %23 = ptrtoint ptr %add.ptr.sink147 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.sink147, align 4
  %and15 = and i32 %24, %or.sink
  store i32 %and15, ptr %add.ptr.sink147, align 4
  br label %out

out:                                              ; preds = %out.sink.split, %done.out_crit_edge, %while.end.out_crit_edge
  %page.1 = phi ptr [ %page.0, %done.out_crit_edge ], [ %page.1.ph, %out.sink.split ], [ %page.0, %while.end.out_crit_edge ]
  %call45 = tail call zeroext i1 @set_page_dirty(ptr noundef %page.1) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 55) #5
  %25 = ptrtoint ptr %page.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page.1, align 4
  %shr.i.i124 = lshr i32 %26, 30
  %27 = zext i32 %shr.i.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i.i124, label %out.kunmap.exit128_crit_edge [
    i32 2, label %out.if.end.i127_crit_edge
    i32 3, label %is_highmem_idx.exit.i126
  ]

out.if.end.i127_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

out.kunmap.exit128_crit_edge:                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit128

is_highmem_idx.exit.i126:                         ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %28 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.i.not.i125 = icmp eq i32 %28, 2
  br i1 %cmp2.i.not.i125, label %is_highmem_idx.exit.i126.if.end.i127_crit_edge, label %is_highmem_idx.exit.i126.kunmap.exit128_crit_edge

is_highmem_idx.exit.i126.kunmap.exit128_crit_edge: ; preds = %is_highmem_idx.exit.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %kunmap.exit128

is_highmem_idx.exit.i126.if.end.i127_crit_edge:   ; preds = %is_highmem_idx.exit.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i127

if.end.i127:                                      ; preds = %is_highmem_idx.exit.i126.if.end.i127_crit_edge, %out.if.end.i127_crit_edge
  tail call void @kunmap_high(ptr noundef %page.1) #5
  br label %kunmap.exit128

kunmap.exit128:                                   ; preds = %if.end.i127, %is_highmem_idx.exit.i126.kunmap.exit128_crit_edge, %out.kunmap.exit128_crit_edge
  %free_blocks = getelementptr inbounds %struct.hfsplus_sb_info, ptr %1, i32 0, i32 20
  %29 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %free_blocks, align 8
  %add46 = add i32 %30, %count
  store i32 %add46, ptr %free_blocks, align 8
  tail call void @hfsplus_mark_mdb_dirty(ptr noundef %sb) #5
  br label %cleanup54.sink.split

do.end50:                                         ; preds = %kunmap.exit.do.end50_crit_edge, %if.end2.do.end50_crit_edge
  %page.2 = phi ptr [ %call.i, %if.end2.do.end50_crit_edge ], [ %call.i112, %kunmap.exit.do.end50_crit_edge ]
  %31 = ptrtoint ptr %page.2 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %31) #8
  br label %cleanup54.sink.split

cleanup54.sink.split:                             ; preds = %do.end50, %kunmap.exit128
  %retval.0.ph = phi i32 [ 0, %kunmap.exit128 ], [ -5, %do.end50 ]
  tail call void @mutex_unlock(ptr noundef %alloc_mutex) #5
  br label %cleanup54

cleanup54:                                        ; preds = %cleanup54.sink.split, %do.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup54_crit_edge ], [ -2, %do.end.cleanup54_crit_edge ], [ %retval.0.ph, %cleanup54.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/hfsplus/bitmap.c", i32 242, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hfsplus_block_free._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hfsplus_block_free._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
