; ModuleID = '/llk/IR_all_yes/fs/fuse/readdir.c_pt.bc'
source_filename = "../fs/fuse/readdir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.71 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fuse_forget_in = type { i64 }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fuse_io_args = type { %union.anon.87, %struct.fuse_args_pages, ptr, ptr }
%union.anon.87 = type { %struct.anon.89 }
%struct.anon.89 = type { %struct.fuse_write_in, %struct.fuse_write_out, i8 }
%struct.fuse_write_in = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.fuse_write_out = type { i32, i32 }
%struct.fuse_args_pages = type { %struct.fuse_args, ptr, ptr, i32 }
%struct.fuse_page_desc = type { i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.84, i32, %struct.mutex, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.fuse_file = type { ptr, ptr, i64, i64, i64, %struct.refcount_struct, i32, %struct.list_head, %struct.anon.83, %struct.rb_node, %struct.wait_queue_head, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.83 = type { %struct.mutex, i64, i64, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.anon.4 = type { i32, i32 }
%struct.fuse_direntplus = type { %struct.fuse_entry_out, %struct.fuse_dirent }
%struct.fuse_entry_out = type { i64, i64, i64, i64, i32, i32, %struct.fuse_attr }
%struct.fuse_attr = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fuse_dirent = type { i64, i64, i32, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.page = type { i32, %union.anon.18, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/fuse/readdir.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@fuse_direntplus_link.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"&wq\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4294967295]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 503, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 717, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 44, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [21 x i8] c"../fs/fuse/readdir.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 161, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fuse_direntplus_link.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_direntplus_link.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_readdir(ptr noundef %file, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %inarg.i.i.i = alloca %struct.fuse_forget_in, align 8
  %args.i.i.i = alloca %struct.fuse_args, align 8
  %name.i47.i.i = alloca %struct.qstr, align 8
  %wq.i.i.i = alloca %struct.wait_queue_head, align 4
  %page.i = alloca ptr, align 4
  %ia.i = alloca %struct.fuse_io_args, align 8
  %desc.i = alloca %struct.fuse_page_desc, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %readdir = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %readdir, i32 noundef 0) #6
  %open_flags = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %open_flags, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %if.end4

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end4:                                          ; preds = %if.end
  %call3 = tail call fastcc i32 @fuse_readdir_cached(ptr noundef %file, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %if.end4.if.then5_crit_edge, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end4.if.then5_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %if.end4.if.then5_crit_edge, %if.end.if.then5_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i) #6
  %9 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %ia.i) #6
  %15 = call ptr @memset(ptr %ia.i, i32 0, i32 144)
  %ap2.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.i) #6
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 17592186044416, ptr %desc.i, align 8
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #6
  %17 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call38.i.i.i.i, ptr %page.i, align 4
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then5.fuse_readdir_uncached.exit_crit_edge, label %if.end.i

if.then5.fuse_readdir_uncached.exit_crit_edge:    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_readdir_uncached.exit

if.end.i:                                         ; preds = %if.then5
  %18 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 33
  %20 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %do_readdirplus.i.i = getelementptr inbounds %struct.fuse_conn, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %do_readdirplus.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load.i.i = load i56, ptr %do_readdirplus.i.i, align 1
  %25 = and i56 %bf.load.i.i, 1048576
  %tobool.not.i.i = icmp eq i56 %25, 0
  br i1 %tobool.not.i.i, label %fuse_use_readdirplus.exit.thread103.i, label %if.end.i.i

fuse_use_readdirplus.exit.thread103.i:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %out_pages105.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %out_pages105.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load106.i = load i16, ptr %out_pages105.i, align 8
  %bf.set107.i = or i16 %bf.load106.i, 2048
  store i16 %bf.set107.i, ptr %out_pages105.i, align 8
  %num_pages108.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %num_pages108.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_pages108.i, align 8
  %pages109.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %pages109.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %page.i, ptr %pages109.i, align 8
  %descs110.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %descs110.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %desc.i, ptr %descs110.i, align 4
  br label %if.end9.i

if.end.i.i:                                       ; preds = %if.end.i
  %30 = and i56 %bf.load.i.i, 524288
  %tobool6.not.i.i = icmp eq i56 %30, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge, label %if.end8.i.i

if.end.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_use_readdirplus.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %state.i.i = getelementptr inbounds %struct.fuse_inode, ptr %10, i32 0, i32 10
  %call9.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %fuse_use_readdirplus.exit.i, label %if.end8.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge

if.end8.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_use_readdirplus.exit.thread.i

fuse_use_readdirplus.exit.thread.i:               ; preds = %if.end8.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge, %if.end.i.i.fuse_use_readdirplus.exit.thread.i_crit_edge
  %out_pages95.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %out_pages95.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load96.i = load i16, ptr %out_pages95.i, align 8
  %bf.set97.i = or i16 %bf.load96.i, 2048
  store i16 %bf.set97.i, ptr %out_pages95.i, align 8
  %num_pages98.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %num_pages98.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_pages98.i, align 8
  %pages99.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %pages99.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %page.i, ptr %pages99.i, align 8
  %descs100.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %descs100.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc.i, ptr %descs100.i, align 4
  br label %if.then6.i

fuse_use_readdirplus.exit.i:                      ; preds = %if.end8.i.i
  %pos.i.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp.i.i = icmp eq i64 %36, 0
  %out_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 0, i32 4
  %37 = ptrtoint ptr %out_pages.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i = load i16, ptr %out_pages.i, align 8
  %bf.set.i = or i16 %bf.load.i, 2048
  store i16 %bf.set.i, ptr %out_pages.i, align 8
  %num_pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %num_pages.i, align 8
  %pages.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %page.i, ptr %pages.i, align 8
  %descs.i = getelementptr inbounds %struct.fuse_io_args, ptr %ia.i, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %descs.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %desc.i, ptr %descs.i, align 4
  br i1 %cmp.i.i, label %fuse_use_readdirplus.exit.i.if.then6.i_crit_edge, label %fuse_use_readdirplus.exit.i.if.end9.i_crit_edge

fuse_use_readdirplus.exit.i.if.end9.i_crit_edge:  ; preds = %fuse_use_readdirplus.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

fuse_use_readdirplus.exit.i.if.then6.i_crit_edge: ; preds = %fuse_use_readdirplus.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %fuse_use_readdirplus.exit.i.if.then6.i_crit_edge, %fuse_use_readdirplus.exit.thread.i
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %14, align 4
  %attr_version.i.i = getelementptr inbounds %struct.fuse_conn, ptr %42, i32 0, i32 34
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %attr_version.i.i, i32 noundef 8) #6
  %call.i.i.i = call i64 @generic_atomic64_read(ptr noundef %attr_version.i.i) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %fuse_use_readdirplus.exit.i.if.end9.i_crit_edge, %fuse_use_readdirplus.exit.thread103.i
  %.sink118.i = phi i32 [ 44, %if.then6.i ], [ 28, %fuse_use_readdirplus.exit.thread103.i ], [ 28, %fuse_use_readdirplus.exit.i.if.end9.i_crit_edge ]
  %retval.0.i101.i = phi i1 [ true, %if.then6.i ], [ false, %fuse_use_readdirplus.exit.thread103.i ], [ false, %fuse_use_readdirplus.exit.i.if.end9.i_crit_edge ]
  %attr_version.0.i = phi i64 [ %call.i.i.i, %if.then6.i ], [ 0, %fuse_use_readdirplus.exit.thread103.i ], [ 0, %fuse_use_readdirplus.exit.i.if.end9.i_crit_edge ]
  %pos8.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %43 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %pos8.i, align 8
  call void @fuse_read_args_fill(ptr noundef nonnull %ia.i, ptr noundef %file, i64 noundef %44, i32 noundef 4096, i32 noundef %.sink118.i) #6
  %call10.i = call zeroext i1 @fuse_lock_inode(ptr noundef %10) #6
  %call12.i = call i32 @fuse_simple_request(ptr noundef %14, ptr noundef %ap2.i) #6
  call void @fuse_unlock_inode(ptr noundef %10, i1 noundef zeroext %call10.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call12.i)
  %cmp.i = icmp sgt i32 %call12.i, -1
  br i1 %cmp.i, label %if.then15.i, label %if.end9.i.if.end32.i_crit_edge

if.end9.i.if.end32.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool16.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.then15.i
  %45 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private_data, align 4
  %open_flags.i = getelementptr inbounds %struct.fuse_file, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %open_flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %open_flags.i, align 4
  %and.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %if.then17.i.if.end32.i_crit_edge, label %if.then19.i

if.then17.i.if.end32.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then19.i:                                      ; preds = %if.then17.i
  %49 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pos8.i, align 8
  %51 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %f_inode.i, align 8
  %lock.i.i = getelementptr inbounds %struct.fuse_inode, ptr %52, i32 0, i32 9, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lock.i.i) #6
  %pos2.i.i = getelementptr inbounds %struct.fuse_inode, ptr %52, i32 0, i32 9, i32 0, i32 2
  %53 = ptrtoint ptr %pos2.i.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %pos2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %50)
  %cmp.not.i.i = icmp eq i64 %54, %50
  br i1 %cmp.not.i.i, label %if.end.i67.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #6
  br label %if.end32.i

if.end.i67.i:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = getelementptr inbounds %struct.fuse_inode, ptr %52, i32 0, i32 9
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %55, align 8
  %size.i.i = getelementptr inbounds %struct.fuse_inode, ptr %52, i32 0, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %size.i.i, align 8
  %add.i.i = add i64 %58, 4095
  %and.i.i = and i64 %add.i.i, -4096
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #6
  %f_mapping.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %59 = ptrtoint ptr %f_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %f_mapping.i.i, align 4
  call void @truncate_inode_pages(ptr noundef %60, i64 noundef %and.i.i) #6
  br label %if.end32.i

if.else22.i:                                      ; preds = %if.then15.i
  %61 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %page.i, align 4
  %call25.i = call ptr @page_address(ptr noundef %62) #6
  br i1 %retval.0.i101.i, label %if.then24.i, label %if.else27.i

if.then24.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %call12.i)
  %cmp63.i.i = icmp ugt i32 %call12.i, 151
  br i1 %cmp63.i.i, label %while.body.lr.ph.i.i, label %if.then24.i.if.end32.i_crit_edge

if.then24.i.if.end32.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

while.body.lr.ph.i.i:                             ; preds = %if.then24.i
  %dentry.i.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %hash.i.i.i = getelementptr inbounds %struct.anon.4, ptr %name.i47.i.i, i32 0, i32 1
  %name2.i.i.i = getelementptr inbounds %struct.qstr, ptr %name.i47.i.i, i32 0, i32 1
  %63 = getelementptr inbounds i8, ptr %args.i.i.i, i32 8
  %in_numargs.i.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i.i.i, i32 0, i32 2
  %in_args.i.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i.i.i, i32 0, i32 5
  %value.i.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i.i.i, i32 0, i32 5, i32 0, i32 1
  %force.i.i.i = getelementptr inbounds %struct.fuse_args, ptr %args.i.i.i, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end25.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %over.071.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %over.1.shrunk.i.i, %if.end25.i.i.while.body.i.i_crit_edge ]
  %buf.addr.065.i.i = phi ptr [ %call25.i, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %if.end25.i.i.while.body.i.i_crit_edge ]
  %nbytes.addr.064.i.i = phi i32 [ %call12.i, %while.body.lr.ph.i.i ], [ %sub21.i.i, %if.end25.i.i.while.body.i.i_crit_edge ]
  %dirent1.i.i = getelementptr inbounds %struct.fuse_direntplus, ptr %buf.addr.065.i.i, i32 0, i32 1
  %namelen.i.i = getelementptr inbounds %struct.fuse_direntplus, ptr %buf.addr.065.i.i, i32 0, i32 1, i32 2
  %64 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %namelen.i.i, align 8
  %sub.i.i = add i32 %65, 159
  %and.i68.i = and i32 %sub.i.i, -8
  %66 = add i32 %65, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %66)
  %67 = icmp ult i32 %66, -1024
  br i1 %67, label %while.body.i.i.if.end32.i_crit_edge, label %if.end.i69.i

while.body.i.i.if.end32.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end.i69.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.064.i.i, i32 %and.i68.i)
  %cmp7.i.i = icmp ult i32 %nbytes.addr.064.i.i, %and.i68.i
  br i1 %cmp7.i.i, label %if.end.i69.i.if.end32.i_crit_edge, label %if.end9.i.i

if.end.i69.i.if.end32.i_crit_edge:                ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end9.i.i:                                      ; preds = %if.end.i69.i
  %name.i.i = getelementptr inbounds %struct.fuse_direntplus, ptr %buf.addr.065.i.i, i32 1
  %call.i.i = call ptr @memchr(ptr noundef %name.i.i, i32 noundef 47, i32 noundef %65) #9
  %cmp11.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp11.not.i.i, label %if.end13.i.i, label %if.end9.i.i.if.end32.i_crit_edge

if.end9.i.i.if.end32.i_crit_edge:                 ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %over.071.i.i)
  %tobool14.not.i.i = icmp eq i32 %over.071.i.i, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end13.i.i.if.end20.i.i_crit_edge

if.end13.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  %68 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private_data, align 4
  %open_flags.i.i.i = getelementptr inbounds %struct.fuse_file, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %open_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %open_flags.i.i.i, align 4
  %and.i.i.i = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then15.i.i.fuse_emit.exit.i.i_crit_edge, label %if.then.i.i.i

if.then15.i.i.fuse_emit.exit.i.i_crit_edge:       ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_emit.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %pos8.i, align 8
  call fastcc void @fuse_add_dirent_to_cache(ptr noundef %file, ptr noundef %dirent1.i.i, i64 noundef %73) #6
  br label %fuse_emit.exit.i.i

fuse_emit.exit.i.i:                               ; preds = %if.then.i.i.i, %if.then15.i.i.fuse_emit.exit.i.i_crit_edge
  %74 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %namelen.i.i, align 8
  %76 = ptrtoint ptr %dirent1.i.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %dirent1.i.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.fuse_direntplus, ptr %buf.addr.065.i.i, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %type.i.i.i, align 4
  %80 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctx, align 8
  %82 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %pos8.i, align 8
  %call.i.i.i70.i = call i32 %81(ptr noundef %ctx, ptr noundef %name.i.i, i32 noundef %75, i64 noundef %83, i64 noundef %77, i32 noundef %79) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i70.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i70.i, 0
  br i1 %cmp.i.i.i.i, label %if.then18.i.i, label %fuse_emit.exit.i.i.if.end20.i.i_crit_edge

fuse_emit.exit.i.i.if.end20.i.i_crit_edge:        ; preds = %fuse_emit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %fuse_emit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %off.i.i = getelementptr inbounds %struct.fuse_direntplus, ptr %buf.addr.065.i.i, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %off.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %off.i.i, align 8
  %86 = ptrtoint ptr %pos8.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %pos8.i, align 8
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %fuse_emit.exit.i.i.if.end20.i.i_crit_edge, %if.end13.i.i.if.end20.i.i_crit_edge
  %over.1.shrunk.i.i = phi i32 [ 1, %if.end13.i.i.if.end20.i.i_crit_edge ], [ 1, %fuse_emit.exit.i.i.if.end20.i.i_crit_edge ], [ 0, %if.then18.i.i ]
  %add.ptr.i.i = getelementptr i8, ptr %buf.addr.065.i.i, i32 %and.i68.i
  %sub21.i.i = sub i32 %nbytes.addr.064.i.i, %and.i68.i
  %87 = ptrtoint ptr %dentry.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dentry.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i47.i.i) #6
  %89 = call ptr @memset(ptr %name.i47.i.i, i32 255, i32 16)
  %90 = ptrtoint ptr %namelen.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %namelen.i.i, align 8
  %92 = ptrtoint ptr %name.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %name.i47.i.i, align 8
  %93 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %name.i.i, ptr %name2.i.i.i, align 8
  %d_inode.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %88, i32 0, i32 5
  %94 = ptrtoint ptr %d_inode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %d_inode.i.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wq.i.i.i) #6
  %96 = call ptr @memset(ptr %wq.i.i.i, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wq.i.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @fuse_direntplus_link.__key) #6
  %97 = ptrtoint ptr %buf.addr.065.i.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %buf.addr.065.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool.not.i49.i.i = icmp eq i64 %98, 0
  br i1 %tobool.not.i49.i.i, label %if.end20.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end20.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end20.i.i
  %99 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name2.i.i.i, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %102)
  %cmp.i.i.i = icmp eq i8 %102, 46
  br i1 %cmp.i.i.i, label %if.then7.i.i.i, label %if.end.i.i.i.if.end23.i.i.i_crit_edge

if.end.i.i.i.if.end23.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end.i.i.i
  %103 = ptrtoint ptr %name.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %name.i47.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp9.i.i.i = icmp eq i32 %104, 1
  br i1 %cmp9.i.i.i, label %if.then7.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge, label %if.end12.i.i.i

if.then7.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge: ; preds = %if.then7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.thread.i.i

if.end12.i.i.i:                                   ; preds = %if.then7.i.i.i
  %arrayidx14.i.i.i = getelementptr i8, ptr %100, i32 1
  %105 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx14.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %106)
  %cmp16.i.i.i = icmp eq i8 %106, 46
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp19.i.i.i = icmp eq i32 %104, 2
  %or.cond.i.i.i = select i1 %cmp16.i.i.i, i1 %cmp19.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end12.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge, label %if.end12.i.i.i.if.end23.i.i.i_crit_edge

if.end12.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i.i.i

if.end12.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.thread.i.i

if.end23.i.i.i:                                   ; preds = %if.end12.i.i.i.if.end23.i.i.i_crit_edge, %if.end.i.i.i.if.end23.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %98)
  %107 = icmp ugt i64 %98, 1
  br i1 %107, label %if.end28.i.i.i, label %if.end23.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge

if.end23.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge: ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.thread60.i.i

if.end28.i.i.i:                                   ; preds = %if.end23.i.i.i
  %attr.i.i.i = getelementptr inbounds %struct.fuse_entry_out, ptr %buf.addr.065.i.i, i32 0, i32 6
  %call29.i.i.i = call zeroext i1 @fuse_invalid_attr(ptr noundef %attr.i.i.i) #6
  br i1 %call29.i.i.i, label %if.end28.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge, label %if.end31.i.i.i

if.end28.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge: ; preds = %if.end28.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.thread60.i.i

if.end31.i.i.i:                                   ; preds = %if.end28.i.i.i
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %95, i32 0, i32 8
  %108 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fs_info.i.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 33
  %110 = ptrtoint ptr %s_fs_info.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %s_fs_info.i.i.i.i.i, align 16
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %name2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name2.i.i.i, align 8
  %116 = ptrtoint ptr %name.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %name.i47.i.i, align 8
  %call35.i.i.i = call i32 @full_name_hash(ptr noundef %88, ptr noundef %115, i32 noundef %117) #10
  %118 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %call35.i.i.i, ptr %hash.i.i.i, align 4
  %call37.i.i.i = call ptr @d_lookup(ptr noundef %88, ptr noundef nonnull %name.i47.i.i) #6
  %tobool38.not.i.i.i = icmp eq ptr %call37.i.i.i, null
  br i1 %tobool38.not.i.i.i, label %if.end31.i.i.i.retry.i.i.i_crit_edge, label %if.end31.i.i.i.if.end45.i.i.i_crit_edge

if.end31.i.i.i.if.end45.i.i.i_crit_edge:          ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i.i.i

if.end31.i.i.i.retry.i.i.i_crit_edge:             ; preds = %if.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry.i.i.i

retry.i.i.i:                                      ; preds = %cleanup.i.i.i, %if.end31.i.i.i.retry.i.i.i_crit_edge
  %call40.i.i.i = call ptr @d_alloc_parallel(ptr noundef %88, ptr noundef nonnull %name.i47.i.i, ptr noundef nonnull %wq.i.i.i) #6
  %cmp.i.i50.i.i = icmp ugt ptr %call40.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i50.i.i, label %retry.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge, label %retry.i.i.i.if.end45.i.i.i_crit_edge

retry.i.i.i.if.end45.i.i.i_crit_edge:             ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i.i.i

retry.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge: ; preds = %retry.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.i.i

if.end45.i.i.i:                                   ; preds = %retry.i.i.i.if.end45.i.i.i_crit_edge, %if.end31.i.i.i.if.end45.i.i.i_crit_edge
  %dentry4.0.i.i.i = phi ptr [ %call37.i.i.i, %if.end31.i.i.i.if.end45.i.i.i_crit_edge ], [ %call40.i.i.i, %retry.i.i.i.if.end45.i.i.i_crit_edge ]
  %119 = ptrtoint ptr %dentry4.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dentry4.0.i.i.i, align 8
  %and.i.i.i.i = and i32 %120, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool47.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool47.not.i.i.i, label %if.then48.i.i.i, label %if.else.i.i.i

if.then48.i.i.i:                                  ; preds = %if.end45.i.i.i
  %d_inode.i156.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry4.0.i.i.i, i32 0, i32 5
  %121 = ptrtoint ptr %d_inode.i156.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %d_inode.i156.i.i.i, align 8
  %tobool50.not.i.i.i = icmp eq ptr %122, null
  br i1 %tobool50.not.i.i.i, label %if.then48.i.i.i.cleanup.i.i.i_crit_edge, label %land.lhs.true51.i.i.i

if.then48.i.i.i.cleanup.i.i.i_crit_edge:          ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i.i

land.lhs.true51.i.i.i:                            ; preds = %if.then48.i.i.i
  %nodeid.i.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %nodeid.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %nodeid.i.i.i.i, align 8
  %125 = ptrtoint ptr %buf.addr.065.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %buf.addr.065.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %126)
  %cmp54.not.i.i.i = icmp eq i64 %124, %126
  br i1 %cmp54.not.i.i.i, label %lor.lhs.false.i.i.i, label %land.lhs.true51.i.i.i.cleanup.i.i.i_crit_edge

land.lhs.true51.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %land.lhs.true51.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true51.i.i.i
  %generation.i.i.i = getelementptr inbounds %struct.fuse_entry_out, ptr %buf.addr.065.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %generation.i.i.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %generation.i.i.i, align 8
  %conv59.i.i.i = trunc i64 %128 to i32
  %i_generation.i.i.i.i = getelementptr inbounds %struct.inode, ptr %122, i32 0, i32 49
  %129 = ptrtoint ptr %i_generation.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %i_generation.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %conv59.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %130, %conv59.i.i.i
  br i1 %cmp.not.i.i.i.i, label %fuse_stale_inode.exit.i.i.i, label %lor.lhs.false.i.i.i.if.then65.critedge.i.i.i_crit_edge

lor.lhs.false.i.i.i.if.then65.critedge.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65.critedge.i.i.i

fuse_stale_inode.exit.i.i.i:                      ; preds = %lor.lhs.false.i.i.i
  %mode.i.i.i.i = getelementptr inbounds %struct.fuse_entry_out, ptr %buf.addr.065.i.i, i32 0, i32 6, i32 9
  %131 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mode.i.i.i.i, align 4
  %conv.i.i.i.i = trunc i32 %132 to i16
  %133 = ptrtoint ptr %122 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %122, align 8
  %xor2.i.i.i.i.i = xor i16 %134, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i.i.i.i)
  %tobool.i.i.i.i.i = icmp ugt i16 %xor2.i.i.i.i.i, 4095
  br i1 %tobool.i.i.i.i.i, label %fuse_stale_inode.exit.i.i.i.if.then65.critedge.i.i.i_crit_edge, label %if.end67.i.i.i

fuse_stale_inode.exit.i.i.i.if.then65.critedge.i.i.i_crit_edge: ; preds = %fuse_stale_inode.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65.critedge.i.i.i

if.then65.critedge.i.i.i:                         ; preds = %fuse_stale_inode.exit.i.i.i.if.then65.critedge.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then65.critedge.i.i.i_crit_edge
  %pprev.i.i.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %122, i32 0, i32 28, i32 1
  %135 = ptrtoint ptr %pprev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pprev.i.i.i.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i.i.i.i = icmp eq ptr %136, null
  %i_hash.i.i.i.i.i = getelementptr inbounds %struct.inode, ptr %122, i32 0, i32 28
  %cmp.i.i.i.i.i.i = icmp eq ptr %136, %i_hash.i.i.i.i.i
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i.not.i.i.i.i.i, i1 true, i1 %cmp.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %if.then65.critedge.i.i.i.fuse_make_bad.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.then65.critedge.i.i.i.fuse_make_bad.exit.i.i.i_crit_edge: ; preds = %if.then65.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_make_bad.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then65.critedge.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__remove_inode_hash(ptr noundef nonnull %122) #6
  br label %fuse_make_bad.exit.i.i.i

fuse_make_bad.exit.i.i.i:                         ; preds = %if.then.i.i.i.i.i, %if.then65.critedge.i.i.i.fuse_make_bad.exit.i.i.i_crit_edge
  %state.i.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %122, i32 0, i32 10
  call void @_set_bit(i32 noundef 3, ptr noundef %state.i.i.i.i) #6
  br label %cleanup.i.i.i

if.end67.i.i.i:                                   ; preds = %fuse_stale_inode.exit.i.i.i
  %state.i157.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %122, i32 0, i32 10
  %137 = ptrtoint ptr %state.i157.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %state.i157.i.i.i, align 4
  %139 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.i.not.i.i.i = icmp eq i32 %139, 0
  br i1 %tobool.i.not.i.i.i, label %cleanup.thread165.i.i.i, label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dput(ptr noundef %dentry4.0.i.i.i) #6
  br label %fuse_direntplus_link.exit.thread60.i.i

cleanup.thread165.i.i.i:                          ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %122, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #6
  %nlookup.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %122, i32 0, i32 2
  %140 = ptrtoint ptr %nlookup.i.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %nlookup.i.i.i, align 8
  %inc.i.i.i = add i64 %141, 1
  store i64 %inc.i.i.i, ptr %nlookup.i.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #6
  call void @forget_all_cached_acls(ptr noundef nonnull %122) #6
  %call74.i.i.i = call i64 @entry_attr_timeout(ptr noundef %buf.addr.065.i.i) #6
  call void @fuse_change_attributes(ptr noundef nonnull %122, ptr noundef %attr.i.i.i, i64 noundef %call74.i.i.i, i64 noundef %attr_version.0.i) #6
  br label %if.end93.i.i.i

cleanup.i.i.i:                                    ; preds = %fuse_make_bad.exit.i.i.i, %land.lhs.true51.i.i.i.cleanup.i.i.i_crit_edge, %if.then48.i.i.i.cleanup.i.i.i_crit_edge
  call void @d_invalidate(ptr noundef %dentry4.0.i.i.i) #6
  call void @dput(ptr noundef %dentry4.0.i.i.i) #6
  br label %retry.i.i.i

if.else.i.i.i:                                    ; preds = %if.end45.i.i.i
  %142 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %144 = ptrtoint ptr %buf.addr.065.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %buf.addr.065.i.i, align 8
  %generation76.i.i.i = getelementptr inbounds %struct.fuse_entry_out, ptr %buf.addr.065.i.i, i32 0, i32 1
  %146 = ptrtoint ptr %generation76.i.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %generation76.i.i.i, align 8
  %conv77.i.i.i = trunc i64 %147 to i32
  %call79.i.i.i = call i64 @entry_attr_timeout(ptr noundef %buf.addr.065.i.i) #6
  %call80.i.i.i = call ptr @fuse_iget(ptr noundef %143, i64 noundef %145, i32 noundef %conv77.i.i.i, ptr noundef %attr.i.i.i, i64 noundef %call79.i.i.i, i64 noundef %attr_version.0.i) #6
  %tobool81.not.i.i.i = icmp eq ptr %call80.i.i.i, null
  %spec.select.i.i.i = select i1 %tobool81.not.i.i.i, ptr inttoptr (i32 -12 to ptr), ptr %call80.i.i.i
  %call85.i.i.i = call ptr @d_splice_alias(ptr noundef nonnull %spec.select.i.i.i, ptr noundef %dentry4.0.i.i.i) #6
  %148 = ptrtoint ptr %dentry4.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dentry4.0.i.i.i, align 8
  %and.i.i53.i.i = and i32 %149, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i53.i.i)
  %tobool.not.i54.i.i = icmp eq i32 %and.i.i53.i.i, 0
  br i1 %tobool.not.i54.i.i, label %if.else.i.i.i.d_lookup_done.exit.i.i_crit_edge, label %if.then.i55.i.i, !prof !21

if.else.i.i.i.d_lookup_done.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %d_lookup_done.exit.i.i

if.then.i55.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %dentry4.0.i.i.i, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #6
  call void @__d_lookup_done(ptr noundef %dentry4.0.i.i.i) #6
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #6
  br label %d_lookup_done.exit.i.i

d_lookup_done.exit.i.i:                           ; preds = %if.then.i55.i.i, %if.else.i.i.i.d_lookup_done.exit.i.i_crit_edge
  %tobool86.not.i.i.i = icmp eq ptr %call85.i.i.i, null
  br i1 %tobool86.not.i.i.i, label %d_lookup_done.exit.i.i.if.end88.i.i.i_crit_edge, label %if.then87.i.i.i

d_lookup_done.exit.i.i.if.end88.i.i.i_crit_edge:  ; preds = %d_lookup_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i.i.i

if.then87.i.i.i:                                  ; preds = %d_lookup_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dput(ptr noundef %dentry4.0.i.i.i) #6
  br label %if.end88.i.i.i

if.end88.i.i.i:                                   ; preds = %if.then87.i.i.i, %d_lookup_done.exit.i.i.if.end88.i.i.i_crit_edge
  %dentry4.1.i.i.i = phi ptr [ %call85.i.i.i, %if.then87.i.i.i ], [ %dentry4.0.i.i.i, %d_lookup_done.exit.i.i.if.end88.i.i.i_crit_edge ]
  %cmp.i158.i.i.i = icmp ugt ptr %dentry4.1.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i.i.i, label %if.end88.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge, label %if.end88.i.i.i.if.end93.i.i.i_crit_edge

if.end88.i.i.i.if.end93.i.i.i_crit_edge:          ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.i.i.i

if.end88.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge: ; preds = %if.end88.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_direntplus_link.exit.i.i

if.end93.i.i.i:                                   ; preds = %if.end88.i.i.i.if.end93.i.i.i_crit_edge, %cleanup.thread165.i.i.i
  %dentry4.2.i.i.i = phi ptr [ %dentry4.1.i.i.i, %if.end88.i.i.i.if.end93.i.i.i_crit_edge ], [ %dentry4.0.i.i.i, %cleanup.thread165.i.i.i ]
  %inode.2.i.i.i = phi ptr [ %spec.select.i.i.i, %if.end88.i.i.i.if.end93.i.i.i_crit_edge ], [ %122, %cleanup.thread165.i.i.i ]
  %readdirplus_auto.i.i.i = getelementptr inbounds %struct.fuse_conn, ptr %113, i32 0, i32 26
  %150 = ptrtoint ptr %readdirplus_auto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 7)
  %bf.load.i.i.i = load i56, ptr %readdirplus_auto.i.i.i, align 1
  %151 = and i56 %bf.load.i.i.i, 524288
  %tobool94.not.i.i.i = icmp eq i56 %151, 0
  br i1 %tobool94.not.i.i.i, label %if.end93.i.i.i.if.end97.i.i.i_crit_edge, label %if.then95.i.i.i

if.end93.i.i.i.if.end97.i.i.i_crit_edge:          ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i.i.i

if.then95.i.i.i:                                  ; preds = %if.end93.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %state.i.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode.2.i.i.i, i32 0, i32 10
  call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i.i) #6
  br label %if.end97.i.i.i

if.end97.i.i.i:                                   ; preds = %if.then95.i.i.i, %if.end93.i.i.i.if.end97.i.i.i_crit_edge
  call void @fuse_change_entry_timeout(ptr noundef %dentry4.2.i.i.i, ptr noundef %buf.addr.065.i.i) #6
  call void @dput(ptr noundef %dentry4.2.i.i.i) #6
  br label %fuse_direntplus_link.exit.thread.i.i

fuse_direntplus_link.exit.thread.i.i:             ; preds = %if.end97.i.i.i, %if.end12.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge, %if.then7.i.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge, %if.end20.i.i.fuse_direntplus_link.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i47.i.i) #6
  br label %if.end25.i.i

fuse_direntplus_link.exit.thread60.i.i:           ; preds = %cleanup.thread.i.i.i, %if.end28.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge, %if.end23.i.i.i.fuse_direntplus_link.exit.thread60.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i47.i.i) #6
  br label %if.then24.i.i

fuse_direntplus_link.exit.i.i:                    ; preds = %if.end88.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge, %retry.i.i.i.fuse_direntplus_link.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wq.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i47.i.i) #6
  br label %if.then24.i.i

if.then24.i.i:                                    ; preds = %fuse_direntplus_link.exit.i.i, %fuse_direntplus_link.exit.thread60.i.i
  %152 = ptrtoint ptr %buf.addr.065.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %buf.addr.065.i.i, align 8
  %154 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i.i51.i.i = getelementptr inbounds %struct.inode, ptr %155, i32 0, i32 8
  %156 = ptrtoint ptr %i_sb.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %i_sb.i.i51.i.i, align 4
  %s_fs_info.i.i.i52.i.i = getelementptr inbounds %struct.super_block, ptr %157, i32 0, i32 33
  %158 = ptrtoint ptr %s_fs_info.i.i.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %s_fs_info.i.i.i52.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i.i.i) #6
  %160 = call ptr @memset(ptr %63, i32 0, i32 56)
  %161 = ptrtoint ptr %inarg.i.i.i to i32
  call void @__asan_store8_noabort(i32 %161)
  store i64 1, ptr %inarg.i.i.i, align 8
  %162 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 2, ptr %63, align 8
  %163 = ptrtoint ptr %args.i.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %153, ptr %args.i.i.i, align 8
  %164 = ptrtoint ptr %in_numargs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %in_numargs.i.i.i, align 4
  %165 = ptrtoint ptr %in_args.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 8, ptr %in_args.i.i.i, align 4
  %166 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %inarg.i.i.i, ptr %value.i.i.i, align 8
  %167 = ptrtoint ptr %force.i.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -16384, ptr %force.i.i.i, align 8
  %call8.i.i.i = call i32 @fuse_simple_request(ptr noundef %159, ptr noundef nonnull %args.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg.i.i.i) #6
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then24.i.i, %fuse_direntplus_link.exit.thread.i.i
  %cmp.i71.i = icmp ugt i32 %sub21.i.i, 151
  br i1 %cmp.i71.i, label %if.end25.i.i.while.body.i.i_crit_edge, label %if.end25.i.i.if.end32.i_crit_edge

if.end25.i.i.if.end32.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end25.i.i.while.body.i.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

if.else27.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call12.i)
  %cmp37.i.i = icmp ugt i32 %call12.i, 23
  br i1 %cmp37.i.i, label %if.else27.i.while.body.i79.i_crit_edge, label %if.else27.i.if.end32.i_crit_edge

if.else27.i.if.end32.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.else27.i.while.body.i79.i_crit_edge:           ; preds = %if.else27.i
  br label %while.body.i79.i

while.body.i79.i:                                 ; preds = %cleanup.i.i.while.body.i79.i_crit_edge, %if.else27.i.while.body.i79.i_crit_edge
  %buf.addr.039.i.i = phi ptr [ %add.ptr.i91.i, %cleanup.i.i.while.body.i79.i_crit_edge ], [ %call25.i, %if.else27.i.while.body.i79.i_crit_edge ]
  %nbytes.addr.038.i.i = phi i32 [ %sub15.i.i, %cleanup.i.i.while.body.i79.i_crit_edge ], [ %call12.i, %if.else27.i.while.body.i79.i_crit_edge ]
  %namelen.i76.i = getelementptr inbounds %struct.fuse_dirent, ptr %buf.addr.039.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %namelen.i76.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %namelen.i76.i, align 8
  %sub.i77.i = add i32 %169, 31
  %and.i78.i = and i32 %sub.i77.i, -8
  %170 = add i32 %169, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1024, i32 %170)
  %171 = icmp ult i32 %170, -1024
  br i1 %171, label %while.body.i79.i.if.end32.i_crit_edge, label %if.end.i80.i

while.body.i79.i.if.end32.i_crit_edge:            ; preds = %while.body.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end.i80.i:                                     ; preds = %while.body.i79.i
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.addr.038.i.i, i32 %and.i78.i)
  %cmp5.i.i = icmp ult i32 %nbytes.addr.038.i.i, %and.i78.i
  br i1 %cmp5.i.i, label %if.end.i80.i.if.end32.i_crit_edge, label %if.end7.i.i

if.end.i80.i.if.end32.i_crit_edge:                ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end7.i.i:                                      ; preds = %if.end.i80.i
  %name.i81.i = getelementptr inbounds %struct.fuse_dirent, ptr %buf.addr.039.i.i, i32 0, i32 4
  %call.i82.i = call ptr @memchr(ptr noundef %name.i81.i, i32 noundef 47, i32 noundef %169) #9
  %cmp9.not.i.i = icmp eq ptr %call.i82.i, null
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %if.end7.i.i.if.end32.i_crit_edge

if.end7.i.i.if.end32.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.end11.i.i:                                     ; preds = %if.end7.i.i
  %172 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %private_data, align 4
  %open_flags.i.i83.i = getelementptr inbounds %struct.fuse_file, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %open_flags.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %open_flags.i.i83.i, align 4
  %and.i.i84.i = and i32 %175, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i)
  %tobool.not.i.i85.i = icmp eq i32 %and.i.i84.i, 0
  br i1 %tobool.not.i.i85.i, label %if.end11.i.i.fuse_emit.exit.i90.i_crit_edge, label %if.then.i.i86.i

if.end11.i.i.fuse_emit.exit.i90.i_crit_edge:      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_emit.exit.i90.i

if.then.i.i86.i:                                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %pos8.i, align 8
  call fastcc void @fuse_add_dirent_to_cache(ptr noundef %file, ptr noundef %buf.addr.039.i.i, i64 noundef %177) #6
  br label %fuse_emit.exit.i90.i

fuse_emit.exit.i90.i:                             ; preds = %if.then.i.i86.i, %if.end11.i.i.fuse_emit.exit.i90.i_crit_edge
  %178 = ptrtoint ptr %namelen.i76.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %namelen.i76.i, align 8
  %180 = ptrtoint ptr %buf.addr.039.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %buf.addr.039.i.i, align 8
  %type.i.i87.i = getelementptr inbounds %struct.fuse_dirent, ptr %buf.addr.039.i.i, i32 0, i32 3
  %182 = ptrtoint ptr %type.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type.i.i87.i, align 4
  %184 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ctx, align 8
  %186 = ptrtoint ptr %pos8.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %pos8.i, align 8
  %call.i.i.i88.i = call i32 %185(ptr noundef %ctx, ptr noundef %name.i81.i, i32 noundef %179, i64 noundef %187, i64 noundef %181, i32 noundef %183) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i88.i)
  %cmp.i.i.i89.i = icmp eq i32 %call.i.i.i88.i, 0
  br i1 %cmp.i.i.i89.i, label %cleanup.i.i, label %fuse_emit.exit.i90.i.if.end32.i_crit_edge

fuse_emit.exit.i90.i.if.end32.i_crit_edge:        ; preds = %fuse_emit.exit.i90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

cleanup.i.i:                                      ; preds = %fuse_emit.exit.i90.i
  %add.ptr.i91.i = getelementptr i8, ptr %buf.addr.039.i.i, i32 %and.i78.i
  %sub15.i.i = sub i32 %nbytes.addr.038.i.i, %and.i78.i
  %off.i92.i = getelementptr inbounds %struct.fuse_dirent, ptr %buf.addr.039.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %off.i92.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %off.i92.i, align 8
  %190 = ptrtoint ptr %pos8.i to i32
  call void @__asan_store8_noabort(i32 %190)
  store i64 %189, ptr %pos8.i, align 8
  %cmp.i93.i = icmp ugt i32 %sub15.i.i, 23
  br i1 %cmp.i93.i, label %cleanup.i.i.while.body.i79.i_crit_edge, label %cleanup.i.i.if.end32.i_crit_edge

cleanup.i.i.if.end32.i_crit_edge:                 ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

cleanup.i.i.while.body.i79.i_crit_edge:           ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i79.i

if.end32.i:                                       ; preds = %cleanup.i.i.if.end32.i_crit_edge, %fuse_emit.exit.i90.i.if.end32.i_crit_edge, %if.end7.i.i.if.end32.i_crit_edge, %if.end.i80.i.if.end32.i_crit_edge, %while.body.i79.i.if.end32.i_crit_edge, %if.else27.i.if.end32.i_crit_edge, %if.end25.i.i.if.end32.i_crit_edge, %if.end9.i.i.if.end32.i_crit_edge, %if.end.i69.i.if.end32.i_crit_edge, %while.body.i.i.if.end32.i_crit_edge, %if.then24.i.if.end32.i_crit_edge, %if.end.i67.i, %if.then.i.i, %if.then17.i.if.end32.i_crit_edge, %if.end9.i.if.end32.i_crit_edge
  %res.0.i = phi i32 [ %call12.i, %if.end9.i.if.end32.i_crit_edge ], [ 0, %if.then17.i.if.end32.i_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end.i67.i ], [ 0, %if.then24.i.if.end32.i_crit_edge ], [ 0, %if.else27.i.if.end32.i_crit_edge ], [ 0, %if.end25.i.i.if.end32.i_crit_edge ], [ 0, %if.end.i69.i.if.end32.i_crit_edge ], [ -5, %if.end9.i.i.if.end32.i_crit_edge ], [ -5, %while.body.i.i.if.end32.i_crit_edge ], [ 0, %fuse_emit.exit.i90.i.if.end32.i_crit_edge ], [ 0, %if.end.i80.i.if.end32.i_crit_edge ], [ -5, %if.end7.i.i.if.end32.i_crit_edge ], [ -5, %while.body.i79.i.if.end32.i_crit_edge ], [ 0, %cleanup.i.i.if.end32.i_crit_edge ]
  %191 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %page.i, align 4
  call void @__free_pages(ptr noundef %192, i32 noundef 0) #6
  call void @fuse_invalidate_atime(ptr noundef %10) #6
  br label %fuse_readdir_uncached.exit

fuse_readdir_uncached.exit:                       ; preds = %if.end32.i, %if.then5.fuse_readdir_uncached.exit_crit_edge
  %retval.0.i = phi i32 [ %res.0.i, %if.end32.i ], [ -12, %if.then5.fuse_readdir_uncached.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #6
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %ia.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i) #6
  br label %if.end7

if.end7:                                          ; preds = %fuse_readdir_uncached.exit, %if.end4.if.end7_crit_edge
  %err.1 = phi i32 [ %retval.0.i, %fuse_readdir_uncached.exit ], [ %call3, %if.end4.if.end7_crit_edge ]
  call void @mutex_unlock(ptr noundef %readdir) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %if.end7 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fuse_readdir_cached(ptr noundef %file, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pos = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  %pos3 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.not = icmp eq i64 %11, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = call ptr @memset(ptr %pos, i32 0, i32 16)
  %15 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %15)
  %.pr = load i64, ptr %pos3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = phi i64 [ %.pr, %if.then ], [ %11, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %auto_inval_data = getelementptr inbounds %struct.fuse_conn, ptr %9, i32 0, i32 26
  %17 = ptrtoint ptr %auto_inval_data to i32
  call void @__asan_loadN_noabort(i32 %17, i32 7)
  %bf.load = load i56, ptr %auto_inval_data, align 1
  %18 = and i56 %bf.load, 4194304
  %tobool8.not = icmp eq i56 %18, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end14_crit_edge, label %if.then9

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call i32 @fuse_update_attributes(ptr noundef %3, ptr noundef %file, i32 noundef 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.cleanup144_crit_edge

if.then9.cleanup144_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup144

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %19 = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not281283 = icmp eq i8 %21, 0
  br i1 %tobool15.not281283, label %if.end14.if.then16_crit_edge, label %if.end26.lr.ph.lr.ph

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end26.lr.ph.lr.ph:                             ; preds = %if.end14
  %i_version.i.i215 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %iversion31 = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 5
  %mtime33 = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 4
  %i_mtime34 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %tv_nsec.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 4, i32 1
  %tv_nsec2.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16, i32 1
  %version.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 3
  %size.i = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 1
  %version = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 8, i32 3
  %cache_off47 = getelementptr inbounds %struct.fuse_file, ptr %1, i32 0, i32 8, i32 2
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  br label %if.end26

if.then16.sink.split:                             ; preds = %if.then111, %if.then37
  %.sink = phi i64 [ %44, %if.then37 ], [ %70, %if.then111 ]
  %inc.i = add i64 %.sink, 1
  %22 = ptrtoint ptr %version.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %inc.i, ptr %version.i, align 8
  %23 = call ptr @memset(ptr %size.i, i32 0, i32 16)
  br label %if.then16

if.then16:                                        ; preds = %retry.backedge.if.then16_crit_edge, %retry_locked.backedge.if.then16_crit_edge, %if.then16.sink.split, %if.end14.if.then16_crit_edge
  %24 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool18.not = icmp eq i64 %25, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true19:                                  ; preds = %if.then16
  %size20 = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 1
  %26 = ptrtoint ptr %size20 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size20, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool21.not = icmp eq i64 %27, 0
  br i1 %tobool21.not, label %if.then22, label %land.lhs.true19.if.end24_crit_edge

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true19
  %mtime = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 4
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %28 = call ptr @memcpy(ptr %mtime, ptr %i_mtime, i32 16)
  %i_version.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i, i32 noundef 8) #6
  %call.i.i15.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.then22
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.then22 ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !23
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i, i32 noundef 8) #6
  %call.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #6
  %cmp.i = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i, label %if.end.i.inode_query_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !21

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end.i.inode_query_iversion.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i.inode_query_iversion.exit_crit_edge, %do.end.i
  %shr.i = lshr i64 %cur.0.i, 1
  %iversion = getelementptr inbounds %struct.fuse_inode, ptr %3, i32 0, i32 9, i32 0, i32 5
  %29 = ptrtoint ptr %iversion to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %shr.i, ptr %iversion, align 8
  br label %if.end24

if.end24:                                         ; preds = %inode_query_iversion.exit, %land.lhs.true19.if.end24_crit_edge, %if.then16.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup144

if.end26:                                         ; preds = %if.end26.backedge, %if.end26.lr.ph.lr.ph
  %30 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool28.not = icmp eq i64 %31, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end39_crit_edge

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then29:                                        ; preds = %if.end26
  %call.i.i.i.i216 = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i215, i32 noundef 8) #6
  %call.i.i.i217 = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i215) #6
  %shr.i218 = lshr i64 %call.i.i.i217, 1
  %32 = ptrtoint ptr %iversion31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %iversion31, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i218, i64 %33)
  %cmp32.not = icmp eq i64 %shr.i218, %33
  br i1 %cmp32.not, label %lor.lhs.false, label %if.then29.if.then37_crit_edge

if.then29.if.then37_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.then29
  %34 = ptrtoint ptr %mtime33 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mtime33, align 8
  %36 = ptrtoint ptr %i_mtime34 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_mtime34, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %37)
  %cmp.i219 = icmp eq i64 %35, %37
  br i1 %cmp.i219, label %timespec64_equal.exit, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

timespec64_equal.exit:                            ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec.i, align 8
  %40 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tv_nsec2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp3.i.not = icmp eq i32 %39, %41
  br i1 %cmp3.i.not, label %timespec64_equal.exit.if.end39_crit_edge, label %timespec64_equal.exit.if.then37_crit_edge

timespec64_equal.exit.if.then37_crit_edge:        ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then37

timespec64_equal.exit.if.end39_crit_edge:         ; preds = %timespec64_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then37:                                        ; preds = %timespec64_equal.exit.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %if.then29.if.then37_crit_edge
  %42 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %19, align 8
  %43 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %version.i, align 8
  br label %if.then16.sink.split

retry_locked.backedge:                            ; preds = %if.then105
  %45 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %45)
  %.pr299 = load i8, ptr %19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr299)
  %tobool15.not = icmp eq i8 %.pr299, 0
  br i1 %tobool15.not, label %retry_locked.backedge.if.then16_crit_edge, label %retry_locked.backedge.if.end26.backedge_crit_edge

retry_locked.backedge.if.end26.backedge_crit_edge: ; preds = %retry_locked.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.backedge

retry_locked.backedge.if.then16_crit_edge:        ; preds = %retry_locked.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end26.backedge:                                ; preds = %retry.backedge.if.end26.backedge_crit_edge, %retry_locked.backedge.if.end26.backedge_crit_edge
  br label %if.end26

if.end39:                                         ; preds = %timespec64_equal.exit.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  %46 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %version, align 8
  %48 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp42.not = icmp eq i64 %47, %49
  br i1 %cmp42.not, label %if.end48, label %if.end48.thread

if.end48.thread:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %50 = call ptr @memset(ptr %pos, i32 0, i32 16)
  br label %if.then52

if.end48:                                         ; preds = %if.end39
  %51 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %51)
  %.pr253 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr253)
  %cmp51 = icmp eq i64 %.pr253, 0
  br i1 %cmp51, label %if.end48.if.then52_crit_edge, label %if.end48.if.end56_crit_edge

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end48.if.then52_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then52:                                        ; preds = %if.end48.if.then52_crit_edge, %if.end48.thread
  %52 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %version.i, align 8
  %54 = ptrtoint ptr %version to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %version, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end48.if.end56_crit_edge
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %size.i, align 8
  %57 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %cache_off47, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp60 = icmp slt i64 %56, %58
  br i1 %cmp60, label %do.end, label %if.end56.if.end75_crit_edge, !prof !24

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #6
  br label %if.end75

if.end75:                                         ; preds = %do.end, %if.end56.if.end75_crit_edge
  %59 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %cache_off47, align 8
  %61 = lshr i64 %60, 12
  %conv84 = and i64 %61, 4294967295
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %size.i, align 8
  %shr86 = ashr i64 %63, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %conv84, i64 %shr86)
  %cmp87 = icmp eq i64 %conv84, %shr86
  %64 = trunc i64 %63 to i32
  %conv91 = and i32 %64, 4095
  %size.0 = select i1 %cmp87, i32 %conv91, i32 4096
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %65 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %cache_off47, align 8
  %and96 = and i64 %66, 4095
  %conv97 = zext i32 %size.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and96, i64 %conv97)
  %cmp98 = icmp eq i64 %and96, %conv97
  br i1 %cmp98, label %if.end75.cleanup144.loopexit_crit_edge, label %if.end101

if.end75.cleanup144.loopexit_crit_edge:           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup144.loopexit

if.end101:                                        ; preds = %if.end75
  %conv = trunc i64 %61 to i32
  %67 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %f_mapping, align 4
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %68, i32 noundef %conv, i32 noundef 3, i32 noundef 0) #6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %tobool104.not = icmp eq ptr %call.i, null
  br i1 %tobool104.not, label %if.then105, label %if.end113

if.then105:                                       ; preds = %if.end101
  %69 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %version.i, align 8
  %71 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %version, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %72)
  %cmp109 = icmp eq i64 %70, %72
  br i1 %cmp109, label %if.then111, label %retry_locked.backedge

if.then111:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %19, align 8
  br label %if.then16.sink.split

if.end113:                                        ; preds = %if.end101
  %74 = ptrtoint ptr %version to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %version, align 8
  %76 = ptrtoint ptr %version.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp117.not = icmp eq i64 %75, %77
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br i1 %cmp117.not, label %if.end121, label %if.then119

if.then119:                                       ; preds = %if.end113
  tail call void @unlock_page(ptr noundef nonnull %call.i) #6
  %78 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !21

if.then.i.i:                                      ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %80, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %81, %if.end.i.i ]
  %82 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %83 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.i.i.i = icmp eq i32 %84, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !24

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %85, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %86 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %86, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_readdir_cached, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !29

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %82, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.retry.backedge_crit_edge

folio_put_testzero.exit.i.i.retry.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry.backedge

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %82) #6
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then135, %if.then.i4.i, %folio_put_testzero.exit.i.i.retry.backedge_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %87 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %19, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool15.not281 = icmp eq i8 %88, 0
  br i1 %tobool15.not281, label %retry.backedge.if.then16_crit_edge, label %retry.backedge.if.end26.backedge_crit_edge

retry.backedge.if.end26.backedge_crit_edge:       ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.backedge

retry.backedge.if.then16_crit_edge:               ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end121:                                        ; preds = %if.end113
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #6
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %call.i, align 4
  %shr.i.i = lshr i32 %90, 30
  %91 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %if.end121.if.then.i_crit_edge [
    i32 2, label %if.end121.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end121.if.else.i_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end121.if.then.i_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %if.end121
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %92 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp2.i.not.i = icmp eq i32 %92, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %if.end121.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call.i) #6
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end121.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call.i) #6
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %93 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %cache_off47, align 8
  %95 = trunc i64 %94 to i32
  %conv.i = and i32 %95, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %size.0, %conv.i
  br i1 %cmp.not.i, label %kmap.exit.if.end.i225_crit_edge, label %do.end.i224, !prof !21

kmap.exit.if.end.i225_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i225

do.end.i224:                                      ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i225

if.end.i225:                                      ; preds = %do.end.i224, %kmap.exit.if.end.i225_crit_edge
  %sub199.i = sub nsw i32 %size.0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub199.i)
  %cmp20200.i = icmp ult i32 %sub199.i, 24
  br i1 %cmp20200.i, label %if.end.i225.fuse_parse_cache.exit_crit_edge, label %if.end.i225.lor.lhs.false.i_crit_edge

if.end.i225.lor.lhs.false.i_crit_edge:            ; preds = %if.end.i225
  br label %lor.lhs.false.i

if.end.i225.fuse_parse_cache.exit_crit_edge:      ; preds = %if.end.i225
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_parse_cache.exit

lor.lhs.false.i:                                  ; preds = %cleanup.i.lor.lhs.false.i_crit_edge, %if.end.i225.lor.lhs.false.i_crit_edge
  %sub205.i = phi i32 [ %sub.i, %cleanup.i.lor.lhs.false.i_crit_edge ], [ %sub199.i, %if.end.i225.lor.lhs.false.i_crit_edge ]
  %offset.0202.i = phi i32 [ %add156.i, %cleanup.i.lor.lhs.false.i_crit_edge ], [ %conv.i, %if.end.i225.lor.lhs.false.i_crit_edge ]
  %res.0201.i = phi i32 [ %res.1.i, %cleanup.i.lor.lhs.false.i_crit_edge ], [ 0, %if.end.i225.lor.lhs.false.i_crit_edge ]
  %add.ptr203.i = getelementptr i8, ptr %addr.0.i, i32 %offset.0202.i
  %namelen.i = getelementptr inbounds %struct.fuse_dirent, ptr %add.ptr203.i, i32 0, i32 2
  %96 = ptrtoint ptr %namelen.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %namelen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool22.not.i = icmp eq i32 %97, 0
  br i1 %tobool22.not.i, label %lor.lhs.false.i.fuse_parse_cache.exit_crit_edge, label %if.end24.i

lor.lhs.false.i.fuse_parse_cache.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_parse_cache.exit

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %sub27.i = add i32 %97, 31
  %and28.i = and i32 %sub27.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %97)
  %cmp31.i = icmp ugt i32 %97, 1024
  br i1 %cmp31.i, label %if.end24.i.cleanup159.sink.split.i_crit_edge, label %if.end64.i, !prof !24

if.end24.i.cleanup159.sink.split.i_crit_edge:     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup159.sink.split.i

if.end64.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and28.i, i32 %sub205.i)
  %cmp66.i = icmp ugt i32 %and28.i, %sub205.i
  br i1 %cmp66.i, label %if.end64.i.cleanup159.sink.split.i_crit_edge, label %if.end99.i, !prof !24

if.end64.i.cleanup159.sink.split.i_crit_edge:     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup159.sink.split.i

if.end99.i:                                       ; preds = %if.end64.i
  %name.i = getelementptr inbounds %struct.fuse_dirent, ptr %add.ptr203.i, i32 0, i32 4
  %call.i226 = tail call ptr @memchr(ptr noundef %name.i, i32 noundef 47, i32 noundef %97) #9
  %cmp102.not.i = icmp eq ptr %call.i226, null
  br i1 %cmp102.not.i, label %if.end135.i, label %if.end99.i.cleanup159.sink.split.i_crit_edge, !prof !21

if.end99.i.cleanup159.sink.split.i_crit_edge:     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup159.sink.split.i

if.end135.i:                                      ; preds = %if.end99.i
  %98 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %pos, align 8
  %100 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %101)
  %cmp138.i = icmp eq i64 %99, %101
  br i1 %cmp138.i, label %if.then140.i, label %if.end135.i.cleanup.i_crit_edge

if.end135.i.cleanup.i_crit_edge:                  ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then140.i:                                     ; preds = %if.end135.i
  %102 = ptrtoint ptr %add.ptr203.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %add.ptr203.i, align 8
  %type.i = getelementptr inbounds %struct.fuse_dirent, ptr %add.ptr203.i, i32 0, i32 3
  %104 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type.i, align 4
  %106 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctx, align 8
  %call.i.i227 = tail call i32 %107(ptr noundef %ctx, ptr noundef %name.i, i32 noundef %97, i64 noundef %99, i64 noundef %103, i32 noundef %105) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227)
  %cmp.i.i = icmp eq i32 %call.i.i227, 0
  br i1 %cmp.i.i, label %if.end146.i, label %if.then140.i.fuse_parse_cache.exit_crit_edge

if.then140.i.fuse_parse_cache.exit_crit_edge:     ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_parse_cache.exit

if.end146.i:                                      ; preds = %if.then140.i
  call void @__sanitizer_cov_trace_pc() #8
  %off.i = getelementptr inbounds %struct.fuse_dirent, ptr %add.ptr203.i, i32 0, i32 1
  %108 = ptrtoint ptr %off.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %off.i, align 8
  %110 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %pos3, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end146.i, %if.end135.i.cleanup.i_crit_edge
  %res.1.i = phi i32 [ 1, %if.end146.i ], [ %res.0201.i, %if.end135.i.cleanup.i_crit_edge ]
  %off149.i = getelementptr inbounds %struct.fuse_dirent, ptr %add.ptr203.i, i32 0, i32 1
  %111 = ptrtoint ptr %off149.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %off149.i, align 8
  %113 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %pos, align 8
  %conv152.i = zext i32 %and28.i to i64
  %114 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %cache_off47, align 8
  %add155.i = add i64 %115, %conv152.i
  store i64 %add155.i, ptr %cache_off47, align 8
  %add156.i = add i32 %and28.i, %offset.0202.i
  %sub.i = sub i32 %size.0, %add156.i
  %cmp20.i = icmp ult i32 %sub.i, 24
  br i1 %cmp20.i, label %cleanup.i.fuse_parse_cache.exit_crit_edge, label %cleanup.i.lor.lhs.false.i_crit_edge

cleanup.i.lor.lhs.false.i_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

cleanup.i.fuse_parse_cache.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_parse_cache.exit

cleanup159.sink.split.i:                          ; preds = %if.end99.i.cleanup159.sink.split.i_crit_edge, %if.end64.i.cleanup159.sink.split.i_crit_edge, %if.end24.i.cleanup159.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 399, %if.end24.i.cleanup159.sink.split.i_crit_edge ], [ 401, %if.end64.i.cleanup159.sink.split.i_crit_edge ], [ 403, %if.end99.i.cleanup159.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #6
  br label %fuse_parse_cache.exit

fuse_parse_cache.exit:                            ; preds = %cleanup159.sink.split.i, %cleanup.i.fuse_parse_cache.exit_crit_edge, %if.then140.i.fuse_parse_cache.exit_crit_edge, %lor.lhs.false.i.fuse_parse_cache.exit_crit_edge, %if.end.i225.fuse_parse_cache.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %if.end.i225.fuse_parse_cache.exit_crit_edge ], [ -1, %cleanup159.sink.split.i ], [ 2, %if.then140.i.fuse_parse_cache.exit_crit_edge ], [ %res.1.i, %cleanup.i.fuse_parse_cache.exit_crit_edge ], [ %res.0201.i, %lor.lhs.false.i.fuse_parse_cache.exit_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 55) #6
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call.i, align 4
  %shr.i.i228 = lshr i32 %117, 30
  %118 = zext i32 %shr.i.i228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %shr.i.i228, label %fuse_parse_cache.exit.kunmap.exit_crit_edge [
    i32 2, label %fuse_parse_cache.exit.if.end.i231_crit_edge
    i32 3, label %is_highmem_idx.exit.i230
  ]

fuse_parse_cache.exit.if.end.i231_crit_edge:      ; preds = %fuse_parse_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i231

fuse_parse_cache.exit.kunmap.exit_crit_edge:      ; preds = %fuse_parse_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i230:                         ; preds = %fuse_parse_cache.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %119 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp2.i.not.i229 = icmp eq i32 %119, 2
  br i1 %cmp2.i.not.i229, label %is_highmem_idx.exit.i230.if.end.i231_crit_edge, label %is_highmem_idx.exit.i230.kunmap.exit_crit_edge

is_highmem_idx.exit.i230.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %kunmap.exit

is_highmem_idx.exit.i230.if.end.i231_crit_edge:   ; preds = %is_highmem_idx.exit.i230
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i231

if.end.i231:                                      ; preds = %is_highmem_idx.exit.i230.if.end.i231_crit_edge, %fuse_parse_cache.exit.if.end.i231_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call.i) #6
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i231, %is_highmem_idx.exit.i230.kunmap.exit_crit_edge, %fuse_parse_cache.exit.kunmap.exit_crit_edge
  tail call void @unlock_page(ptr noundef nonnull %call.i) #6
  %120 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %120, align 4
  %and.i.i232 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i232)
  %tobool.not.i.i233 = icmp eq i32 %and.i.i232, 0
  br i1 %tobool.not.i.i233, label %if.end.i.i236, label %if.then.i.i235, !prof !21

if.then.i.i235:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i234 = add i32 %122, -1
  br label %_compound_head.exit.i241

if.end.i.i236:                                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %123 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i241

_compound_head.exit.i241:                         ; preds = %if.end.i.i236, %if.then.i.i235
  %retval.0.i.i237 = phi i32 [ %sub.i.i234, %if.then.i.i235 ], [ %123, %if.end.i.i236 ]
  %124 = inttoptr i32 %retval.0.i.i237 to ptr
  %_refcount.i.i.i.i.i238 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 3
  %call.i.i.i.i.i.i.i239 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i238, i32 noundef 4) #6
  %125 = ptrtoint ptr %_refcount.i.i.i.i.i238 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %_refcount.i.i.i.i.i238, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.i.i.i.i240 = icmp eq i32 %126, 0
  br i1 %cmp.i.i.i.i240, label %if.then.i.i.i.i242, label %do.end5.i.i.i.i246, !prof !24

if.then.i.i.i.i242:                               ; preds = %_compound_head.exit.i241
  call void @__sanitizer_cov_trace_pc() #8
  %127 = inttoptr i32 %retval.0.i.i237 to ptr
  tail call void @dump_page(ptr noundef %127, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

do.end5.i.i.i.i246:                               ; preds = %_compound_head.exit.i241
  %call.i.i.i10.i.i.i.i243 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i238, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i238, i32 1, i32 3, i32 1) #6
  %128 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i238, ptr %_refcount.i.i.i.i.i238, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i238) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i.i.i244 = extractvalue { i32, i32 } %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i244)
  %cmp.i.i.i.i.i.i.i245 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i244, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_readdir_cached, %if.then.i.i.i.i.i248)) #6
          to label %folio_put_testzero.exit.i.i249 [label %if.then.i.i.i.i.i248], !srcloc !29

if.then.i.i.i.i.i248:                             ; preds = %do.end5.i.i.i.i246
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i247 = zext i1 %cmp.i.i.i.i.i.i.i245 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %124, i32 noundef -1, i32 noundef %conv.i.i.i.i.i247) #6
  br label %folio_put_testzero.exit.i.i249

folio_put_testzero.exit.i.i249:                   ; preds = %if.then.i.i.i.i.i248, %do.end5.i.i.i.i246
  br i1 %cmp.i.i.i.i.i.i.i245, label %if.then.i4.i250, label %folio_put_testzero.exit.i.i249.put_page.exit251_crit_edge

folio_put_testzero.exit.i.i249.put_page.exit251_crit_edge: ; preds = %folio_put_testzero.exit.i.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit251

if.then.i4.i250:                                  ; preds = %folio_put_testzero.exit.i.i249
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %124) #6
  br label %put_page.exit251

put_page.exit251:                                 ; preds = %if.then.i4.i250, %folio_put_testzero.exit.i.i249.put_page.exit251_crit_edge
  %129 = zext i32 %retval.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %retval.2.i, label %if.end132 [
    i32 -1, label %put_page.exit251.cleanup144.loopexit_crit_edge
    i32 2, label %put_page.exit251.cleanup144_crit_edge
  ]

put_page.exit251.cleanup144_crit_edge:            ; preds = %put_page.exit251
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup144

put_page.exit251.cleanup144.loopexit_crit_edge:   ; preds = %put_page.exit251
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup144.loopexit

if.end132:                                        ; preds = %put_page.exit251
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size.0)
  %cmp133 = icmp eq i32 %size.0, 4096
  br i1 %cmp133, label %if.then135, label %if.end141

if.then135:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %cache_off47 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %cache_off47, align 8
  %add = add i64 %131, 4095
  %and138 = and i64 %add, -4096
  store i64 %and138, ptr %cache_off47, align 8
  br label %retry.backedge

if.end141:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.2.i)
  %cmp142 = icmp ne i32 %retval.2.i, 1
  %cond = zext i1 %cmp142 to i32
  br label %cleanup144

cleanup144.loopexit:                              ; preds = %put_page.exit251.cleanup144.loopexit_crit_edge, %if.end75.cleanup144.loopexit_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.end75.cleanup144.loopexit_crit_edge ], [ -5, %put_page.exit251.cleanup144.loopexit_crit_edge ]
  br label %cleanup144

cleanup144:                                       ; preds = %cleanup144.loopexit, %if.end141, %put_page.exit251.cleanup144_crit_edge, %if.end24, %if.then9.cleanup144_crit_edge
  %retval.1 = phi i32 [ %cond, %if.end141 ], [ 1, %if.end24 ], [ %call10, %if.then9.cleanup144_crit_edge ], [ %retval.1.ph, %cleanup144.loopexit ], [ 0, %put_page.exit251.cleanup144_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_update_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_read_args_fill(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fuse_lock_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_unlock_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_invalidate_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fuse_add_dirent_to_cache(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %dirent, i64 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %namelen = getelementptr inbounds %struct.fuse_dirent, ptr %dirent, i32 0, i32 2
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %namelen, align 8
  %sub = add i32 %3, 31
  %and = and i32 %sub, -8
  %4 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9
  %lock = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %pos3 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 2
  %7 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %pos)
  %cmp.not = icmp eq i64 %8, %pos
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %version5 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 3
  %9 = ptrtoint ptr %version5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %version5, align 8
  %size6 = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 9, i32 0, i32 1
  %11 = ptrtoint ptr %size6 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %size6, align 8
  %13 = trunc i64 %12 to i32
  %conv = and i32 %13, 4095
  %14 = lshr i64 %12, 12
  %conv8 = trunc i64 %14 to i32
  %add9 = add i32 %conv, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add9)
  %cmp10 = icmp ugt i32 %add9, 4096
  %inc = zext i1 %cmp10 to i32
  %spec.select = add i32 %inc, %conv8
  %spec.select121 = select i1 %cmp10, i32 0, i32 %conv
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select121)
  %tobool15.not = icmp eq i32 %spec.select121, 0
  %f_mapping18 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %15 = ptrtoint ptr %f_mapping18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_mapping18, align 4
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %16, i32 noundef %spec.select, i32 noundef 2, i32 noundef 0) #6
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gfp_mask.i, align 4
  %call.i122 = tail call ptr @pagecache_get_page(ptr noundef %16, i32 noundef %spec.select, i32 noundef 7, i32 noundef %18) #6
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %page.0 = phi ptr [ %call.i, %if.then16 ], [ %call.i122, %if.else ]
  %tobool23.not = icmp eq ptr %page.0, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %19 = ptrtoint ptr %version5 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %version5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %10)
  %cmp28.not = icmp eq i64 %20, %10
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.end25.unlock_crit_edge

if.end25.unlock_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

lor.lhs.false30:                                  ; preds = %if.end25
  %21 = ptrtoint ptr %size6 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %size6, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %12)
  %cmp32.not = icmp eq i64 %22, %12
  br i1 %cmp32.not, label %lor.lhs.false34, label %lor.lhs.false30.unlock_crit_edge

lor.lhs.false30.unlock_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %23 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %pos3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %pos)
  %cmp36.not = icmp eq i64 %24, %pos
  br i1 %cmp36.not, label %if.end61.critedge, label %do.end, !prof !21

do.end:                                           ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #6
  br label %unlock

if.end61.critedge:                                ; preds = %lor.lhs.false34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %call.i123 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %page.0, i32 noundef %or.i) #6
  br i1 %tobool15.not, label %if.then64, label %if.end61.critedge.if.end65_crit_edge

if.end61.critedge.if.end65_crit_edge:             ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then64:                                        ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %26 = call ptr @memset(ptr %call.i123, i32 0, i32 4096)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end61.critedge.if.end65_crit_edge
  %add.ptr = getelementptr i8, ptr %call.i123, i32 %spec.select121
  %27 = call ptr @memcpy(ptr %add.ptr, ptr %dirent, i32 %and)
  tail call void @kunmap_local_indexed(ptr noundef %call.i123) #6
  %shl = shl i32 %spec.select, 12
  %add72 = add i32 %spec.select121, %and
  %add73 = add i32 %add72, %shl
  %conv74 = zext i32 %add73 to i64
  %28 = ptrtoint ptr %size6 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv74, ptr %size6, align 8
  %off = getelementptr inbounds %struct.fuse_dirent, ptr %dirent, i32 0, i32 1
  %29 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %off, align 8
  %31 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %pos3, align 8
  br label %unlock

unlock:                                           ; preds = %if.end65, %do.end, %lor.lhs.false30.unlock_crit_edge, %if.end25.unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @unlock_page(ptr noundef nonnull %page.0) #6
  %32 = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !21

if.then.i.i:                                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %34, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %page.0 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %35, %if.end.i.i ]
  %36 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %37 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !24

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !25
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@fuse_add_dirent_to_cache, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !29

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %36, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fuse_invalid_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_change_attributes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @entry_attr_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fuse_iget(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_change_entry_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__remove_inode_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #2

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/fuse/readdir.c", i32 503, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mm.h", i32 717, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!8 = !{ptr @fuse_direntplus_link.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../fs/fuse/readdir.c", i32 161, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i8 0, i8 2}
!23 = !{i64 2154674807}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{i64 2153181461, i64 2153181944, i64 2153181498, i64 2153181554, i64 2153181588, i64 2153181612, i64 2153181653, i64 2153181674, i64 2153181702, i64 2153181736}
!26 = !{i64 2148810838}
!27 = !{i64 2148725547, i64 2148725579, i64 2148725608, i64 2148725642, i64 2148725673, i64 2148725696}
!28 = !{i64 2148811067}
!29 = !{i64 2148546960, i64 2148546965, i64 2148546978, i64 2148547022, i64 2148547056, i64 2148547077}
