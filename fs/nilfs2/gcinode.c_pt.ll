; ModuleID = '/llk/IR_all_yes/fs/nilfs2/gcinode.c_pt.bc'
source_filename = "../fs/nilfs2/gcinode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
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
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
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
%struct.the_nilfs = type { i32, i32, ptr, ptr, %struct.rw_semaphore, %struct.mutex, [2 x ptr], [2 x ptr], i64, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, %struct.atomic_t, %struct.spinlock, i64, i64, i64, i64, i64, ptr, %struct.rw_semaphore, ptr, ptr, ptr, %struct.rb_root, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.72 = type { %struct.atomic_t }

@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013I/O error reading %s block for GC (ino=%lu, vblocknr=%llu)\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@empty_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.12 = private constant [23 x i8] c"../fs/nilfs2/gcinode.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 145, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 366, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 717, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_gccache_submit_read_data(ptr noundef %inode, i64 noundef %blkoff, i64 noundef %pbn, i64 noundef %vbn, ptr nocapture noundef writeonly %out_bh) local_unnamed_addr #0 align 64 {
entry:
  %pbn.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbn.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pbn, ptr %pbn.addr, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %conv = trunc i64 %blkoff to i32
  %call = tail call ptr @nilfs_grab_buffer(ptr noundef %inode, ptr noundef %2, i32 noundef %conv, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup36_crit_edge, label %if.end, !prof !17

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup36

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %pbn.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pbn.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then9, label %if.end7.if.end20_crit_edge

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then9:                                         ; preds = %if.end7
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %ns_dat = getelementptr inbounds %struct.the_nilfs, ptr %10, i32 0, i32 29
  %11 = ptrtoint ptr %ns_dat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns_dat, align 4
  %call10 = call i32 @nilfs_dat_translate(ptr noundef %12, i64 noundef %vbn, ptr noundef nonnull %pbn.addr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end20_crit_edge, label %cleanup, !prof !18

if.then9.if.end20_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

cleanup:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  call void @__brelse(ptr noundef nonnull %call) #3
  br label %failed

if.end20:                                         ; preds = %if.then9.if.end20_crit_edge, %if.end7.if.end20_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 366) #3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #3
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call, align 4
  %and.i.i.i.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end20.if.then.i64_crit_edge

if.end20.if.then.i64_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i64

trylock_buffer.exit.i:                            ; preds = %if.end20
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #3
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 4, ptr nonnull elementtype(i32) %call) #3, !srcloc !19
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !20
  %16 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i64_crit_edge

trylock_buffer.exit.i.if.then.i64_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i64

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lock_buffer.exit

if.then.i64:                                      ; preds = %trylock_buffer.exit.i.if.then.i64_crit_edge, %if.end20.if.then.i64_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call) #3
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i64, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call, align 4
  %and1.i.i60 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i60)
  %tobool22.not = icmp eq i32 %and1.i.i60, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @unlock_buffer(ptr noundef nonnull %call) #3
  br label %out

if.end24:                                         ; preds = %lock_buffer.exit
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then27:                                        ; preds = %if.end24
  %i_sb28 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb28, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %b_bdev, align 8
  %27 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %call, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then27.if.end29_crit_edge

if.then27.if.end29_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then.i:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #5
  call void @_set_bit(i32 noundef 4, ptr noundef nonnull %call) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then.i, %if.then27.if.end29_crit_edge, %if.end24.if.end29_crit_edge
  %30 = ptrtoint ptr %pbn.addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pbn.addr, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %b_blocknr, align 8
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 7
  %33 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #3
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #3
  %34 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #3, !srcloc !21
  %call30 = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %call) #3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vbn)
  %tobool31.not = icmp eq i64 %vbn, 0
  br i1 %tobool31.not, label %if.end29.out_crit_edge, label %if.then32

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %vbn, ptr %b_blocknr, align 8
  br label %out

out:                                              ; preds = %if.then32, %if.end29.out_crit_edge, %if.then23, %if.end.out_crit_edge
  %36 = ptrtoint ptr %out_bh to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call, ptr %out_bh, align 4
  br label %failed

failed:                                           ; preds = %out, %cleanup
  %err.0 = phi i32 [ 0, %out ], [ %call10, %cleanup ]
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 2
  %37 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_page, align 8
  call void @unlock_page(ptr noundef %38) #3
  %39 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_page, align 8
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !18

if.then.i.i:                                      ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #5
  %sub.i.i = add i32 %43, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %44, %if.end.i.i ]
  %45 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #3
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !17

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.4) #3
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #3, !srcloc !22
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !23
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #3
  %48 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #3, !srcloc !24
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_gccache_submit_read_data, %if.then.i.i.i.i.i)) #3
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !26

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #3
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup36_crit_edge

folio_put_testzero.exit.i.i.cleanup36_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup36

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__put_page(ptr noundef %45) #3
  br label %cleanup36

cleanup36:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup36_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup36_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nilfs_grab_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_dat_translate(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_gccache_submit_read_node(ptr noundef %inode, i64 noundef %pbn, i64 noundef %vbn, ptr noundef %out_bh) local_unnamed_addr #0 align 64 {
entry:
  %pbn.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pbn.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %pbn, ptr %pbn.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %vbn)
  %tobool.not = icmp eq i64 %vbn, 0
  %spec.select = select i1 %tobool.not, i64 %pbn, i64 %vbn
  %i_btnode_cache = getelementptr i8, ptr %inode, i32 -360
  %call1 = call i32 @nilfs_btnode_submit_block(ptr noundef %i_btnode_cache, i64 noundef %spec.select, i64 noundef %pbn, i32 noundef 0, i32 noundef 0, ptr noundef %out_bh, ptr noundef nonnull %pbn.addr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %call1)
  %cmp = icmp eq i32 %call1, -17
  %spec.store.select = select i1 %cmp, i32 0, i32 %call1
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btnode_submit_block(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_gccache_wait_and_mark_dirty(ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 354) #3
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.wait_on_buffer.exit_crit_edge, label %if.then.i

entry.wait_on_buffer.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @__wait_on_buffer(ptr noundef %bh) #3
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %entry.wait_on_buffer.exit_crit_edge
  %3 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #5
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %5 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %bh, align 4
  %15 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not = icmp eq i32 %15, 0
  %cond = select i1 %tobool2.not, ptr @.str.2, ptr @.str.1
  %i_ino = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %18 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ...) @__nilfs_msg(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %17, i64 noundef %19) #3
  br label %return

if.end:                                           ; preds = %wait_on_buffer.exit
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not = icmp eq i32 %22, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end6:                                          ; preds = %if.end
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %bh, align 4
  %25 = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8.not = icmp eq i32 %25, 0
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %land.lhs.true

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end6
  %call9 = tail call i32 @nilfs_btree_broken_node_block(ptr noundef %bh) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end12_crit_edge, label %if.then11

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #3
  br label %return

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end6.if.end12_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh) #3
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then11 ], [ 0, %if.end12 ], [ -5, %if.then ], [ -17, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_btree_broken_node_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_init_gcinode(ptr nocapture noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -592
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -32768, ptr %inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3136, ptr %gfp_mask.i, align 4
  %4 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @empty_aops, ptr %a_ops, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %add.ptr.i, align 8
  %i_bmap = getelementptr i8, ptr %inode, i32 -584
  %7 = ptrtoint ptr %i_bmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_bmap, align 8
  tail call void @nilfs_bmap_init_gc(ptr noundef %8) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_bmap_init_gc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_remove_all_gcinodes(ptr noundef %nilfs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_gc_inodes = getelementptr inbounds %struct.the_nilfs, ptr %nilfs, i32 0, i32 36
  %0 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ns_gc_inodes, align 4
  %cmp.i.not6 = icmp eq ptr %1, %ns_gc_inodes
  br i1 %cmp.i.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del_init.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #3
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %vfs_inode = getelementptr i8, ptr %2, i32 20
  %i_data = getelementptr i8, ptr %2, i32 428
  tail call void @truncate_inode_pages(ptr noundef %i_data, i64 noundef 0) #3
  %i_btnode_cache = getelementptr i8, ptr %2, i32 -340
  tail call void @nilfs_btnode_cache_clear(ptr noundef %i_btnode_cache) #3
  tail call void @iput(ptr noundef %vfs_inode) #3
  %11 = ptrtoint ptr %ns_gc_inodes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ns_gc_inodes, align 4
  %cmp.i.not = icmp eq ptr %12, %ns_gc_inodes
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nilfs_btnode_cache_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

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
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/gcinode.c", i32 145, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/mm.h", i32 717, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148678237, i64 2148678269, i64 2148678298, i64 2148678332, i64 2148678363, i64 2148678386}
!20 = !{i64 2148767342}
!21 = !{i64 2148669379, i64 2148669405, i64 2148669434, i64 2148669468, i64 2148669499, i64 2148669522}
!22 = !{i64 2153167195, i64 2153167678, i64 2153167232, i64 2153167288, i64 2153167322, i64 2153167346, i64 2153167387, i64 2153167408, i64 2153167436, i64 2153167470}
!23 = !{i64 2148757855}
!24 = !{i64 2148672564, i64 2148672596, i64 2148672625, i64 2148672659, i64 2148672690, i64 2148672713}
!25 = !{i64 2148758084}
!26 = !{i64 2148493977, i64 2148493982, i64 2148493995, i64 2148494039, i64 2148494073, i64 2148494094}
