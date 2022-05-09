; ModuleID = '/llk/IR_all_yes/fs/configfs/file.c_pt.bc'
source_filename = "../fs/configfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.configfs_buffer = type { i32, i64, ptr, ptr, %struct.mutex, i32, i8, i8, ptr, i32, i32, ptr, ptr, %union.anon.71 }
%union.anon.71 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, i32, ptr }
%struct.configfs_fragment = type { %struct.atomic_t, %struct.rw_semaphore, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.57, %union.anon.58 }
%union.anon.57 = type { ptr }
%union.anon.58 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.configfs_bin_attribute = type { %struct.configfs_attribute, ptr, i32, ptr, ptr }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }

@configfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @configfs_read_iter, ptr @configfs_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @configfs_open_file, ptr null, ptr @configfs_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@configfs_bin_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr @configfs_bin_read_iter, ptr @configfs_bin_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @configfs_open_bin_file, ptr null, ptr @configfs_release_bin_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@configfs_read_iter.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"configfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"configfs_read_iter\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/configfs/file.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: count = %zd, pos = %lld, buf = %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"configfs: %s: count = %zd, pos = %lld, buf = %s\0A\00", [47 x i8] zeroinitializer }, align 32
@fill_read_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__configfs_open_file.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&buffer->mutex\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant [25 x i8] c"configfs_file_operations\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 425, i32 30 }
@___asan_gen_.11 = private unnamed_addr constant [29 x i8] c"configfs_bin_file_operations\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 433, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 92, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 230, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 214, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [22 x i8] c"../fs/configfs/file.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 362, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @configfs_file_operations, ptr @configfs_bin_file_operations, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_bin_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %needs_read_fill = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %needs_read_fill to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %needs_read_fill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then:                                          ; preds = %entry
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dentry.i.i, align 4
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_fsdata.i.i, align 4
  %s_frag.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %s_frag.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_frag.i.i, align 4
  %page.i = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @get_zeroed_page(i32 noundef 3264) #4
  %14 = inttoptr i32 %call1.i to ptr
  %15 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %page.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not.i, label %if.end.i.out_crit_edge, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %if.then.if.end6.i_crit_edge
  %frag_sem.i = getelementptr inbounds %struct.configfs_fragment, ptr %11, i32 0, i32 1
  tail call void @down_read(ptr noundef %frag_sem.i) #4
  %frag_dead.i = getelementptr inbounds %struct.configfs_fragment, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %frag_dead.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frag_dead.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not.i = icmp eq i8 %17, 0
  br i1 %tobool7.not.i, label %if.end11.i, label %if.end11.thread.i

if.end11.thread.i:                                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %frag_sem.i) #4
  br label %out

if.end11.i:                                       ; preds = %if.end6.i
  %18 = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %show.i = getelementptr inbounds %struct.configfs_attribute, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %show.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %show.i, align 4
  %item.i = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 11
  %23 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %item.i, align 8
  %25 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page.i, align 8
  %call10.i = tail call i32 %22(ptr noundef %24, ptr noundef %26) #4
  tail call void @up_read(ptr noundef %frag_sem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %if.end11.i.out_crit_edge, label %if.end14.i

if.end11.i.out_crit_edge:                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call10.i)
  %cmp15.i = icmp ugt i32 %call10.i, 4096
  br i1 %cmp15.i, label %land.rhs.i, label %fill_read_buffer.exit

land.rhs.i:                                       ; preds = %if.end14.i
  %.b72.i = load i1, ptr @fill_read_buffer.__already_done, align 1
  br i1 %.b72.i, label %land.rhs.i.out_crit_edge, label %if.then23.i, !prof !31

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then23.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @fill_read_buffer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 73, i32 noundef 9, ptr noundef null) #4
  br label %out

fill_read_buffer.exit:                            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %needs_read_fill to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %needs_read_fill, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call10.i, ptr %3, align 8
  br label %do.body

do.body:                                          ; preds = %fill_read_buffer.exit, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configfs_read_iter.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configfs_read_iter, %if.then9)) #4
          to label %do.end [label %if.then9], !srcloc !32

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %29 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %31 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ki_pos, align 8
  %page = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %page, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @configfs_read_iter.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %30, i64 noundef %32, ptr noundef %34) #4
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %ki_pos12 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %35 = ptrtoint ptr %ki_pos12 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ki_pos12, align 8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %3, align 8
  %conv = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv)
  %cmp.not = icmp slt i64 %36, %conv
  br i1 %cmp.not, label %if.end15, label %do.end.out_crit_edge

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15:                                         ; preds = %do.end
  %idx.ext = trunc i64 %36 to i32
  %conv21 = sub i32 %38, %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21)
  %cmp9.i.i = icmp slt i32 %conv21, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end15
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge, label %if.then27.i.i, !prof !31

land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_iter.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #4
  br label %copy_to_iter.exit.thread

if.then.i.i.i:                                    ; preds = %if.end15
  %page16 = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %page16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %page16, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 %idx.ext
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %conv21, i1 noundef zeroext true) #4
  %call3.i = tail call i32 @_copy_to_iter(ptr noundef %add.ptr, i32 noundef %conv21, ptr noundef %to) #4
  %conv23 = sext i32 %call3.i to i64
  %41 = ptrtoint ptr %ki_pos12 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ki_pos12, align 8
  %add = add i64 %42, %conv23
  store i64 %add, ptr %ki_pos12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp25 = icmp eq i32 %call3.i, 0
  br i1 %cmp25, label %if.then.i.i.i.copy_to_iter.exit.thread_crit_edge, label %if.then.i.i.i.out_crit_edge

if.then.i.i.i.out_crit_edge:                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then.i.i.i.copy_to_iter.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_iter.exit.thread

copy_to_iter.exit.thread:                         ; preds = %if.then.i.i.i.copy_to_iter.exit.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge
  br label %out

out:                                              ; preds = %copy_to_iter.exit.thread, %if.then.i.i.i.out_crit_edge, %do.end.out_crit_edge, %if.then23.i, %land.rhs.i.out_crit_edge, %if.end11.i.out_crit_edge, %if.end11.thread.i, %if.end.i.out_crit_edge
  %retval1.1 = phi i32 [ 0, %do.end.out_crit_edge ], [ -14, %copy_to_iter.exit.thread ], [ %call3.i, %if.then.i.i.i.out_crit_edge ], [ -2, %if.end11.thread.i ], [ -5, %land.rhs.i.out_crit_edge ], [ -5, %if.then23.i ], [ %call10.i, %if.end11.i.out_crit_edge ], [ -12, %if.end.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_write_iter(ptr nocapture noundef %iocb, ptr noundef %from) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %page.i = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.copy_from_iter.exit.i_crit_edge

entry.copy_from_iter.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_from_iter.exit.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #4
  %6 = inttoptr i32 %call.i to ptr
  %7 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %page.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end4_crit_edge, label %if.end.i.copy_from_iter.exit.i_crit_edge

if.end.i.copy_from_iter.exit.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_from_iter.exit.i

if.end.i.if.end4_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

copy_from_iter.exit.i:                            ; preds = %if.end.i.copy_from_iter.exit.i_crit_edge, %entry.copy_from_iter.exit.i_crit_edge
  %8 = phi ptr [ %6, %if.end.i.copy_from_iter.exit.i_crit_edge ], [ %5, %entry.copy_from_iter.exit.i_crit_edge ]
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %8, i32 noundef 4095, ptr noundef %from) #4
  %needs_read_fill.i = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %needs_read_fill.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %needs_read_fill.i, align 4
  %10 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page.i, align 8
  %arrayidx.i = getelementptr i8, ptr %11, i32 %call3.i.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool9.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool9.not.i, label %copy_from_iter.exit.i.if.end4_crit_edge, label %fill_write_buffer.exit

copy_from_iter.exit.i.if.end4_crit_edge:          ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

fill_write_buffer.exit:                           ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp = icmp sgt i32 %call3.i.i, 0
  br i1 %cmp, label %if.then, label %fill_write_buffer.exit.if.end4_crit_edge

fill_write_buffer.exit.if.end4_crit_edge:         ; preds = %fill_write_buffer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %fill_write_buffer.exit
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dentry.i.i, align 4
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_fsdata.i.i, align 4
  %s_frag.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %s_frag.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_frag.i.i, align 4
  %frag_sem.i = getelementptr inbounds %struct.configfs_fragment, ptr %18, i32 0, i32 1
  tail call void @down_read(ptr noundef %frag_sem.i) #4
  %frag_dead.i = getelementptr inbounds %struct.configfs_fragment, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %frag_dead.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frag_dead.i, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i15 = icmp eq i8 %20, 0
  br i1 %tobool.not.i15, label %if.end, label %if.end.thread23

if.end.thread23:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %frag_sem.i) #4
  br label %if.end4

if.end:                                           ; preds = %if.then
  %21 = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %store.i = getelementptr inbounds %struct.configfs_attribute, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %store.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %store.i, align 4
  %item.i = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %item.i, align 8
  %28 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page.i, align 8
  %call1.i = tail call i32 %25(ptr noundef %27, ptr noundef %29, i32 noundef %call3.i.i) #4
  tail call void @up_read(ptr noundef %frag_sem.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2 = icmp sgt i32 %call1.i, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv26 = zext i32 %call1.i to i64
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %30 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ki_pos, align 8
  %add = add i64 %31, %conv26
  store i64 %add, ptr %ki_pos, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge, %if.end.thread23, %fill_write_buffer.exit.if.end4_crit_edge, %copy_from_iter.exit.i.if.end4_crit_edge, %if.end.i.if.end4_crit_edge
  %len.022 = phi i32 [ %call1.i, %if.then3 ], [ %call1.i, %if.end.if.end4_crit_edge ], [ -2, %if.end.thread23 ], [ %call3.i.i, %fill_write_buffer.exit.if.end4_crit_edge ], [ -12, %if.end.i.if.end4_crit_edge ], [ -14, %copy_from_iter.exit.i.if.end4_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %len.022
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_open_file(ptr nocapture noundef readonly %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__configfs_open_file(ptr noundef %inode, ptr noundef %filp, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %owner = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %3) #4
  %page = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %5 to i32
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %mutex) #4
  tail call void @kfree(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_bin_read_iter(ptr nocapture noundef %iocb, ptr noundef %to) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry.i, align 4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_fsdata.i, align 4
  %s_frag.i = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %s_frag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_frag.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %write_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %write_in_progress, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %read_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %read_in_progress, align 8
  %needs_read_fill = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 5
  %13 = ptrtoint ptr %needs_read_fill to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %needs_read_fill, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not = icmp eq i32 %14, 0
  br i1 %tobool2.not, label %if.end.if.end39_crit_edge, label %if.then3

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then3:                                         ; preds = %if.end
  %frag_sem = getelementptr inbounds %struct.configfs_fragment, ptr %7, i32 0, i32 1
  tail call void @down_read(ptr noundef %frag_sem) #4
  %frag_dead = getelementptr inbounds %struct.configfs_fragment, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %frag_dead to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %frag_dead, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not = icmp eq i8 %16, 0
  br i1 %tobool4.not, label %if.end7, label %if.end7.thread

if.end7.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %frag_sem) #4
  br label %out

if.end7:                                          ; preds = %if.then3
  %17 = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 13
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %read = getelementptr inbounds %struct.configfs_bin_attribute, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read, align 4
  %item = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 11
  %22 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %item, align 8
  %call6 = tail call i32 %21(ptr noundef %23, ptr noundef null, i32 noundef 0) #4
  tail call void @up_read(ptr noundef %frag_sem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6)
  %cmp = icmp slt i32 %call6, 1
  br i1 %cmp, label %if.end7.out_crit_edge, label %if.end10

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end10:                                         ; preds = %if.end7
  %cb_max_size = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 10
  %24 = ptrtoint ptr %cb_max_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cb_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not = icmp ne i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %25)
  %cmp13 = icmp sgt i32 %call6, %25
  %or.cond = select i1 %tobool11.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.end10.out_crit_edge, label %if.end15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end15:                                         ; preds = %if.end10
  %call16 = tail call noalias ptr @vmalloc(i32 noundef %call6) #7
  %bin_buffer = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 8
  %26 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %bin_buffer, align 4
  %cmp18 = icmp eq ptr %call16, null
  br i1 %cmp18, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end20:                                         ; preds = %if.end15
  %bin_buffer_size = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 9
  %27 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call6, ptr %bin_buffer_size, align 8
  tail call void @down_read(ptr noundef %frag_sem) #4
  %28 = ptrtoint ptr %frag_dead to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %frag_dead, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool23.not = icmp eq i8 %29, 0
  br i1 %tobool23.not, label %if.end30, label %if.end30.thread

if.end30.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @up_read(ptr noundef %frag_sem) #4
  br label %if.then33

if.end30:                                         ; preds = %if.end20
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 8
  %read25 = getelementptr inbounds %struct.configfs_bin_attribute, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %read25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read25, align 4
  %34 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %item, align 8
  %36 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bin_buffer, align 4
  %call28 = tail call i32 %33(ptr noundef %35, ptr noundef %37, i32 noundef %call6) #4
  tail call void @up_read(ptr noundef %frag_sem) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32 = icmp slt i32 %call28, 0
  br i1 %cmp32, label %if.end30.if.then33_crit_edge, label %if.end37

if.end30.if.then33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then33

if.then33:                                        ; preds = %if.end30.if.then33_crit_edge, %if.end30.thread
  %len.1104 = phi i32 [ -2, %if.end30.thread ], [ %call28, %if.end30.if.then33_crit_edge ]
  %38 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bin_buffer, align 4
  tail call void @vfree(ptr noundef %39) #4
  %40 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bin_buffer_size, align 8
  %41 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %bin_buffer, align 4
  br label %out

if.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %needs_read_fill to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %needs_read_fill, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end.if.end39_crit_edge
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %43 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ki_pos, align 8
  %bin_buffer_size40 = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 9
  %45 = ptrtoint ptr %bin_buffer_size40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bin_buffer_size40, align 8
  %conv = sext i32 %46 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %conv)
  %cmp41.not = icmp slt i64 %44, %conv
  br i1 %cmp41.not, label %if.end44, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end44:                                         ; preds = %if.end39
  %idx.ext = trunc i64 %44 to i32
  %conv50 = sub i32 %46, %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv50)
  %cmp9.i.i = icmp slt i32 %conv50, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end44
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge, label %if.then27.i.i, !prof !31

land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_iter.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #4
  br label %copy_to_iter.exit.thread

if.then.i.i.i:                                    ; preds = %if.end44
  %bin_buffer45 = getelementptr inbounds %struct.configfs_buffer, ptr %9, i32 0, i32 8
  %47 = ptrtoint ptr %bin_buffer45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bin_buffer45, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 %idx.ext
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %conv50, i1 noundef zeroext true) #4
  %call3.i = tail call i32 @_copy_to_iter(ptr noundef %add.ptr, i32 noundef %conv50, ptr noundef %to) #4
  %conv52 = sext i32 %call3.i to i64
  %49 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ki_pos, align 8
  %add = add i64 %50, %conv52
  store i64 %add, ptr %ki_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp54 = icmp eq i32 %call3.i, 0
  br i1 %cmp54, label %if.then.i.i.i.copy_to_iter.exit.thread_crit_edge, label %if.then.i.i.i.out_crit_edge

if.then.i.i.i.out_crit_edge:                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then.i.i.i.copy_to_iter.exit.thread_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %copy_to_iter.exit.thread

copy_to_iter.exit.thread:                         ; preds = %if.then.i.i.i.copy_to_iter.exit.thread_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_iter.exit.thread_crit_edge
  br label %out

out:                                              ; preds = %copy_to_iter.exit.thread, %if.then.i.i.i.out_crit_edge, %if.end39.out_crit_edge, %if.then33, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end7.out_crit_edge, %if.end7.thread, %entry.out_crit_edge
  %retval1.0 = phi i32 [ %len.1104, %if.then33 ], [ 0, %if.end39.out_crit_edge ], [ -26, %entry.out_crit_edge ], [ %call6, %if.end7.out_crit_edge ], [ -27, %if.end10.out_crit_edge ], [ -12, %if.end15.out_crit_edge ], [ -2, %if.end7.thread ], [ -14, %copy_to_iter.exit.thread ], [ %call3.i, %if.then.i.i.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_bin_write_iter(ptr nocapture noundef %iocb, ptr noundef %from) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %read_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %read_in_progress, align 8, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end:                                           ; preds = %entry
  %write_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %write_in_progress, align 1
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %7 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %ki_pos, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 8
  %11 = trunc i64 %8 to i32
  %conv1 = add i32 %10, %11
  %bin_buffer_size = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bin_buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %13)
  %cmp = icmp ugt i32 %conv1, %13
  br i1 %cmp, label %if.then3, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then3:                                         ; preds = %if.end
  %cb_max_size = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %cb_max_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb_max_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not = icmp ne i32 %15, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %15)
  %cmp6 = icmp ugt i32 %conv1, %15
  %or.cond = select i1 %tobool4.not, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then3.out.thread_crit_edge, label %if.end9

if.then3.out.thread_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end9:                                          ; preds = %if.then3
  %call10 = tail call noalias ptr @vmalloc(i32 noundef %conv1) #7
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.end9.out.thread_crit_edge, label %if.end14

if.end9.out.thread_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.thread

if.end14:                                         ; preds = %if.end9
  %bin_buffer = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bin_buffer, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.end14.if.end20_crit_edge, label %if.then16

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bin_buffer_size, align 8
  %20 = call ptr @memcpy(ptr %call10, ptr %17, i32 %19)
  %21 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bin_buffer, align 4
  tail call void @vfree(ptr noundef %22) #4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end14.if.end20_crit_edge
  %23 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bin_buffer_size, align 8
  %add.ptr = getelementptr i8, ptr %call10, i32 %24
  %sub = sub i32 %conv1, %24
  %25 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %26 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call10, ptr %bin_buffer, align 4
  store i32 %conv1, ptr %bin_buffer_size, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.end.if.end25_crit_edge
  %27 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ki_pos, align 8
  %idx.ext = trunc i64 %28 to i32
  %29 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bin_buffer_size, align 8
  %conv33 = sub i32 %30, %idx.ext
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv33)
  %cmp9.i.i = icmp slt i32 %conv33, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end25
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !31

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #4
  br label %out

if.then.i.i.i:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %bin_buffer26 = getelementptr inbounds %struct.configfs_buffer, ptr %3, i32 0, i32 8
  %31 = ptrtoint ptr %bin_buffer26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bin_buffer26, align 4
  %add.ptr28 = getelementptr i8, ptr %32, i32 %idx.ext
  tail call void @__check_object_size(ptr noundef %add.ptr28, i32 noundef %conv33, i1 noundef zeroext false) #4
  %call3.i = tail call i32 @_copy_from_iter(ptr noundef %add.ptr28, i32 noundef %conv33, ptr noundef %from) #4
  br label %out

out.thread:                                       ; preds = %if.end9.out.thread_crit_edge, %if.then3.out.thread_crit_edge, %entry.out.thread_crit_edge
  %len.0.ph = phi i32 [ -12, %if.end9.out.thread_crit_edge ], [ -27, %if.then3.out.thread_crit_edge ], [ -26, %entry.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %35

out:                                              ; preds = %if.then.i.i.i, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.then.i.i.i ], [ 0, %if.then27.i.i ], [ 0, %land.rhs16.i.i.out_crit_edge ]
  %conv35 = sext i32 %retval.0.i to i64
  %33 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ki_pos, align 8
  %add37 = add i64 %34, %conv35
  store i64 %add37, ptr %ki_pos, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool39.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool39.not, i32 -14, i32 %retval.0.i
  br label %35

35:                                               ; preds = %out, %out.thread
  %36 = phi i32 [ %len.0.ph, %out.thread ], [ %spec.select, %out ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_open_bin_file(ptr nocapture noundef readonly %inode, ptr nocapture noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__configfs_open_file(ptr noundef %inode, ptr noundef %filp, i32 noundef 8)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_release_bin_file(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %write_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %write_in_progress, align 1, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %entry
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dentry.i, align 4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_fsdata.i, align 4
  %s_frag.i = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %s_frag.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_frag.i, align 4
  %frag_sem = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 1
  tail call void @down_read(ptr noundef %frag_sem) #4
  %frag_dead = getelementptr inbounds %struct.configfs_fragment, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %frag_dead to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frag_dead, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %write = getelementptr inbounds %struct.configfs_bin_attribute, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write, align 4
  %item = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %item, align 8
  %bin_buffer = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %bin_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bin_buffer, align 4
  %bin_buffer_size = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %bin_buffer_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bin_buffer_size, align 8
  %call3 = tail call i32 %16(ptr noundef %18, ptr noundef %20, i32 noundef %22) #4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  tail call void @up_read(ptr noundef %frag_sem) #4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %bin_buffer6 = getelementptr inbounds %struct.configfs_buffer, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %bin_buffer6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bin_buffer6, align 4
  tail call void @vfree(ptr noundef %24) #4
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %owner.i = getelementptr inbounds %struct.configfs_buffer, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %28) #4
  %page.i = getelementptr inbounds %struct.configfs_buffer, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page.i, align 8
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end5.configfs_release.exit_crit_edge, label %if.then.i

if.end5.configfs_release.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %configfs_release.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #4
  br label %configfs_release.exit

configfs_release.exit:                            ; preds = %if.then.i, %if.end5.configfs_release.exit_crit_edge
  %mutex.i = getelementptr inbounds %struct.configfs_buffer, ptr %26, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %mutex.i) #4
  tail call void @kfree(ptr noundef %26) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_create_file(ptr nocapture noundef readonly %item, ptr noundef %attr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_dentry = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %ci_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_dentry, align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %ca_mode = getelementptr inbounds %struct.configfs_attribute, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %ca_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ca_mode, align 4
  %6 = and i16 %5, 4095
  %7 = or i16 %6, -32768
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 0) #4
  %s_frag = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %s_frag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_frag, align 4
  %call2 = tail call i32 @configfs_make_dirent(ptr noundef %3, ptr noundef null, ptr noundef %attr, i16 noundef zeroext %7, i32 noundef 4, ptr noundef %11) #4
  %12 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i9 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i9) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_make_dirent(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_create_bin_file(ptr nocapture noundef readonly %item, ptr noundef %bin_attr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_dentry = getelementptr inbounds %struct.config_item, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %ci_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_dentry, align 4
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %ca_mode = getelementptr inbounds %struct.configfs_attribute, ptr %bin_attr, i32 0, i32 2
  %4 = ptrtoint ptr %ca_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ca_mode, align 4
  %6 = and i16 %5, 4095
  %7 = or i16 %6, -32768
  %d_inode = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 25
  tail call void @down_write_nested(ptr noundef %i_rwsem.i, i32 noundef 0) #4
  %s_frag = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %s_frag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_frag, align 4
  %call = tail call i32 @configfs_make_dirent(ptr noundef %3, ptr noundef null, ptr noundef %bin_attr, i16 noundef zeroext %7, i32 noundef 8, ptr noundef %11) #4
  %12 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_inode, align 8
  %i_rwsem.i7 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i7) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__configfs_open_file(ptr nocapture noundef readonly %inode, ptr nocapture noundef %file, i32 noundef %type) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry1 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry1, align 4
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata.i, align 4
  %s_frag.i = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %s_frag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_frag.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 152) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %frag_sem = getelementptr inbounds %struct.configfs_fragment, ptr %5, i32 0, i32 1
  tail call void @down_read(ptr noundef %frag_sem) #4
  %frag_dead = getelementptr inbounds %struct.configfs_fragment, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %frag_dead to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %frag_dead, align 4, !range !30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end7, label %if.end.out_free_buffer_crit_edge, !prof !31

if.end.out_free_buffer_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buffer

if.end7:                                          ; preds = %if.end
  %d_parent = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d_parent, align 8
  %d_fsdata.i119 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %d_fsdata.i119 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_fsdata.i119, align 4
  %s_element.i = getelementptr inbounds %struct.configfs_dirent, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %s_element.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_element.i, align 4
  %item = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 11
  %15 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %item, align 8
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %if.end7.out_free_buffer_crit_edge, label %if.end12

if.end7.out_free_buffer_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buffer

if.end12:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_fsdata.i, align 4
  %s_element.i121 = getelementptr inbounds %struct.configfs_dirent, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %s_element.i121 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_element.i121, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.end12.out_free_buffer_crit_edge, label %if.end16

if.end12.out_free_buffer_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buffer

if.end16:                                         ; preds = %if.end12
  %and = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %20 = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %20, align 8
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %cb_max_size = getelementptr inbounds %struct.configfs_bin_attribute, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %cb_max_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cb_max_size, align 4
  %cb_max_size20 = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %cb_max_size20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cb_max_size20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  %ca_owner = getelementptr inbounds %struct.configfs_attribute, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %ca_owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ca_owner, align 4
  %owner = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %owner, align 4
  %call23 = tail call zeroext i1 @try_module_get(ptr noundef %26) #4
  br i1 %call23, label %if.end25, label %if.end21.out_free_buffer_crit_edge

if.end21.out_free_buffer_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_free_buffer

if.end25:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %item, align 8
  %ci_type = getelementptr inbounds %struct.config_item, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ci_type, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %if.end25.out_put_module_crit_edge, label %if.end29

if.end25.out_put_module_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end29:                                         ; preds = %if.end25
  %ct_item_ops = getelementptr inbounds %struct.config_item_type, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ct_item_ops, align 4
  %ops = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %ops, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %35 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_mode, align 8
  %and32 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end29.if.end50_crit_edge, label %if.then34

if.end29.if.end50_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then34:                                        ; preds = %if.end29
  %37 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %inode, align 8
  %39 = and i16 %38, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool36.not = icmp eq i16 %39, 0
  br i1 %tobool36.not, label %if.then34.out_put_module_crit_edge, label %if.end38

if.then34.out_put_module_crit_edge:               ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end38:                                         ; preds = %if.then34
  %and39 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %land.lhs.true

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end38
  %store = getelementptr inbounds %struct.configfs_attribute, ptr %19, i32 0, i32 4
  %40 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %store, align 4
  %tobool41.not = icmp eq ptr %41, null
  br i1 %tobool41.not, label %land.lhs.true.out_put_module_crit_edge, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

land.lhs.true.out_put_module_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end38.if.end43_crit_edge
  br i1 %tobool17.not, label %if.end43.if.end50_crit_edge, label %land.lhs.true46

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

land.lhs.true46:                                  ; preds = %if.end43
  %42 = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %write = getelementptr inbounds %struct.configfs_bin_attribute, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  %tobool47.not = icmp eq ptr %46, null
  br i1 %tobool47.not, label %land.lhs.true46.out_put_module_crit_edge, label %land.lhs.true46.if.end50_crit_edge

land.lhs.true46.if.end50_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

land.lhs.true46.out_put_module_crit_edge:         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end50:                                         ; preds = %land.lhs.true46.if.end50_crit_edge, %if.end43.if.end50_crit_edge, %if.end29.if.end50_crit_edge
  %and52 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.do.body_crit_edge, label %if.then54

if.end50.do.body_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then54:                                        ; preds = %if.end50
  %47 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %inode, align 8
  %49 = and i16 %48, 292
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool58.not = icmp eq i16 %49, 0
  br i1 %tobool58.not, label %if.then54.out_put_module_crit_edge, label %if.end60

if.then54.out_put_module_crit_edge:               ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end60:                                         ; preds = %if.then54
  %and61 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %land.lhs.true63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

land.lhs.true63:                                  ; preds = %if.end60
  %show = getelementptr inbounds %struct.configfs_attribute, ptr %19, i32 0, i32 3
  %50 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %show, align 4
  %tobool64.not = icmp eq ptr %51, null
  br i1 %tobool64.not, label %land.lhs.true63.out_put_module_crit_edge, label %land.lhs.true63.if.end66_crit_edge

land.lhs.true63.if.end66_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

land.lhs.true63.out_put_module_crit_edge:         ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

if.end66:                                         ; preds = %land.lhs.true63.if.end66_crit_edge, %if.end60.if.end66_crit_edge
  br i1 %tobool17.not, label %if.end66.do.body_crit_edge, label %land.lhs.true69

if.end66.do.body_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true69:                                  ; preds = %if.end66
  %52 = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %read = getelementptr inbounds %struct.configfs_bin_attribute, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %read, align 4
  %tobool70.not = icmp eq ptr %56, null
  br i1 %tobool70.not, label %land.lhs.true69.out_put_module_crit_edge, label %land.lhs.true69.do.body_crit_edge

land.lhs.true69.do.body_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true69.out_put_module_crit_edge:         ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_put_module

do.body:                                          ; preds = %land.lhs.true69.do.body_crit_edge, %if.end66.do.body_crit_edge, %if.end50.do.body_crit_edge
  %mutex = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @__configfs_open_file.__key) #4
  %needs_read_fill = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %needs_read_fill to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %needs_read_fill, align 4
  %read_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 6
  %58 = ptrtoint ptr %read_in_progress to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %read_in_progress, align 8
  %write_in_progress = getelementptr inbounds %struct.configfs_buffer, ptr %call7.i.i, i32 0, i32 7
  %59 = ptrtoint ptr %write_in_progress to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %write_in_progress, align 1
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %60 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @up_read(ptr noundef %frag_sem) #4
  br label %cleanup

out_put_module:                                   ; preds = %land.lhs.true69.out_put_module_crit_edge, %land.lhs.true63.out_put_module_crit_edge, %if.then54.out_put_module_crit_edge, %land.lhs.true46.out_put_module_crit_edge, %land.lhs.true.out_put_module_crit_edge, %if.then34.out_put_module_crit_edge, %if.end25.out_put_module_crit_edge
  %61 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %62) #4
  br label %out_free_buffer

out_free_buffer:                                  ; preds = %out_put_module, %if.end21.out_free_buffer_crit_edge, %if.end12.out_free_buffer_crit_edge, %if.end7.out_free_buffer_crit_edge, %if.end.out_free_buffer_crit_edge
  %error.0 = phi i32 [ -2, %if.end.out_free_buffer_crit_edge ], [ -13, %out_put_module ], [ -19, %if.end21.out_free_buffer_crit_edge ], [ -22, %if.end12.out_free_buffer_crit_edge ], [ -22, %if.end7.out_free_buffer_crit_edge ]
  tail call void @up_read(ptr noundef %frag_sem) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %out_free_buffer, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ %error.0, %out_free_buffer ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @configfs_file_operations, !1, !"configfs_file_operations", i1 false, i1 false}
!1 = !{!"../fs/configfs/file.c", i32 425, i32 30}
!2 = !{ptr @configfs_bin_file_operations, !3, !"configfs_bin_file_operations", i1 false, i1 false}
!3 = !{!"../fs/configfs/file.c", i32 433, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/configfs/file.c", i32 92, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @configfs_read_iter.__UNIQUE_ID_ddebug215, !5, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/configfs/file.c", i32 73, i32 6}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @__configfs_open_file.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../fs/configfs/file.c", i32 362, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i8 0, i8 2}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2148487142, i64 2148487147, i64 2148487160, i64 2148487204, i64 2148487238, i64 2148487259}
