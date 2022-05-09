; ModuleID = '/llk/IR_all_yes/fs/ntfs3/dir.c_pt.bc'
source_filename = "../fs/ntfs3/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.81, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.81 = type { %struct.wnd_bitmap, i32 }
%struct.anon.82 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.83 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.84 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.85 = type { %struct.ntfs_index, ptr }
%struct.anon.86 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_str = type { i8, i8, [10 x i16] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.69 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
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
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HDR }
%struct.INDEX_HDR = type { i32, i32, i32, i8, [3 x i8] }
%struct.NTFS_DE = type { %union.anon.87, i16, i16, i16, i16 }
%union.anon.87 = type { %struct.MFT_REF }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.indx_node = type { %struct.ntfs_buffers, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.INDEX_BUFFER = type { %struct.NTFS_RECORD_HEADER, i64, %struct.INDEX_HDR }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014filename was truncated while converting.\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013failed to convert \22%s\22 to %s\00", [33 x i8] zeroinitializer }, align 32
@ntfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ntfs_file_open, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Looks like your dir is corrupt\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014failed to convert name for inode %lx.\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 44, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 68, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"ntfs_dir_operations\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 586, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 453, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 3566, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 3571, i32 25 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [18 x i8] c"../fs/ntfs3/dir.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 307, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @ntfs_dir_operations, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_utf16_to_nls(ptr nocapture noundef readonly %sbi, ptr noundef %name, i32 noundef %len, ptr noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  %dump = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 34
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options, align 4
  %nls1 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nls1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not65 = icmp eq i32 %len, 0
  br i1 %tobool2.not65, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %4 = getelementptr inbounds [5 x i8], ptr %dump, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %dump, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %dump, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %dump, i32 0, i32 4
  %uni2char = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 2
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @utf16s_to_utf8s(ptr noundef %name, i32 noundef %len, i32 noundef 1, ptr noundef %buf, i32 noundef %buf_len) #7
  %arrayidx = getelementptr i8, ptr %buf, i32 %call
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup24

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %dec70.in = phi i32 [ %len, %while.body.lr.ph ], [ %dec70, %cleanup.while.body_crit_edge ]
  %op.069 = phi ptr [ %buf, %while.body.lr.ph ], [ %op.1, %cleanup.while.body_crit_edge ]
  %warn.068 = phi i32 [ 0, %while.body.lr.ph ], [ %warn.1, %cleanup.while.body_crit_edge ]
  %buf_len.addr.067 = phi i32 [ %buf_len, %while.body.lr.ph ], [ %buf_len.addr.1, %cleanup.while.body_crit_edge ]
  %name.addr.066 = phi ptr [ %name, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %dec70 = add i32 %dec70.in, -1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dump) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %buf_len.addr.067)
  %cmp = icmp slt i32 %buf_len.addr.067, 6
  %9 = call ptr @memset(ptr %dump, i32 255, i32 5)
  br i1 %cmp, label %cleanup.thread, label %if.end4

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sbi, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %11, ptr noundef nonnull @.str) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dump) #7
  br label %while.end

if.end4:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i16, ptr %name.addr.066, i32 1
  %12 = ptrtoint ptr %name.addr.066 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %name.addr.066, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %uni2char to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uni2char, align 4
  %call5 = call i32 %16(i16 noundef zeroext %14, ptr noundef %op.069, i32 noundef %buf_len.addr.067) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %op.069, i32 %call5
  %sub = sub nsw i32 %buf_len.addr.067, %call5
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %incdec.ptr9 = getelementptr i8, ptr %op.069, i32 1
  %17 = ptrtoint ptr %op.069 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 95, ptr %op.069, align 1
  %sub10 = add nsw i32 %buf_len.addr.067, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn.068)
  %tobool11.not = icmp eq i32 %warn.068, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = lshr i16 %14, 8
  %conv15 = zext i16 %18 to i32
  %19 = lshr i32 %conv15, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %dump to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %dump, align 1
  %and2.i = and i32 %conv15, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i, align 1
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %4, align 1
  %26 = and i16 %14, 255
  %conv.i50 = zext i16 %26 to i32
  %27 = lshr i32 %conv.i50, 4
  %arrayidx.i51 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i51, align 1
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %5, align 1
  %and2.i53 = and i32 %conv.i50, 15
  %arrayidx3.i54 = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i53
  %31 = ptrtoint ptr %arrayidx3.i54 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx3.i54, align 1
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %6, align 1
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %7, align 1
  %35 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sbi, align 8
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef nonnull %dump, ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.then7
  %buf_len.addr.1 = phi i32 [ %sub, %if.then7 ], [ %sub10, %if.end13 ], [ %sub10, %if.end8.cleanup_crit_edge ]
  %warn.1 = phi i32 [ %warn.068, %if.then7 ], [ 1, %if.end13 ], [ 1, %if.end8.cleanup_crit_edge ]
  %op.1 = phi ptr [ %add.ptr, %if.then7 ], [ %incdec.ptr9, %if.end13 ], [ %incdec.ptr9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dump) #7
  %tobool2.not = icmp eq i32 %dec70, 0
  br i1 %tobool2.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread, %while.cond.preheader.while.end_crit_edge
  %op.063 = phi ptr [ %op.069, %cleanup.thread ], [ %buf, %while.cond.preheader.while.end_crit_edge ], [ %op.1, %cleanup.while.end_crit_edge ]
  %39 = ptrtoint ptr %op.063 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %op.063, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %op.063 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cleanup24

cleanup24:                                        ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %sub.ptr.sub, %while.end ], [ %call, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_nls_to_utf16(ptr nocapture noundef readonly %sbi, ptr noundef %name, i32 noundef %name_len, ptr noundef %uni, i32 noundef %max_ulen, i32 noundef %endian) local_unnamed_addr #0 align 64 {
entry:
  %u.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 34
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options, align 4
  %nls1 = getelementptr inbounds %struct.ntfs_mount_options, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nls1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nls1, align 4
  %name2 = getelementptr inbounds %struct.cpu_str, ptr %uni, i32 0, i32 2
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %u.i) #7
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %u.i, align 4, !annotation !23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %name_len)
  %cmp99.i = icmp sgt i32 %name_len, 0
  br i1 %cmp99.i, label %if.then.land.rhs.i_crit_edge, label %if.then.while.end.i_crit_edge

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.then.land.rhs.i_crit_edge:                     ; preds = %if.then
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end35.i.land.rhs.i_crit_edge, %if.then.land.rhs.i_crit_edge
  %op.0103.i = phi ptr [ %op.1.i, %if.end35.i.land.rhs.i_crit_edge ], [ %name2, %if.then.land.rhs.i_crit_edge ]
  %maxout.addr.0102.i = phi i32 [ %sub18.i, %if.end35.i.land.rhs.i_crit_edge ], [ %max_ulen, %if.then.land.rhs.i_crit_edge ]
  %s.addr.0101.i = phi ptr [ %s.addr.1.i, %if.end35.i.land.rhs.i_crit_edge ], [ %name, %if.then.land.rhs.i_crit_edge ]
  %inlen.addr.0100.i = phi i32 [ %inlen.addr.1.i, %if.end35.i.land.rhs.i_crit_edge ], [ %name_len, %if.then.land.rhs.i_crit_edge ]
  %5 = ptrtoint ptr %s.addr.0101.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.addr.0101.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i.while.end.i_crit_edge, label %while.body.i

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %tobool2.not.i = icmp sgt i8 %6, -1
  br i1 %tobool2.not.i, label %if.else25.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %call.i = call i32 @utf8_to_utf32(ptr noundef %s.addr.0101.i, i32 noundef %inlen.addr.0100.i, ptr noundef nonnull %u.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then.i._utf8s_to_utf16s.exit_crit_edge, label %if.end.i

if.then.i._utf8s_to_utf16s.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_utf8s_to_utf16s.exit

if.end.i:                                         ; preds = %if.then.i
  %add.ptr.i = getelementptr i8, ptr %s.addr.0101.i, i32 %call.i
  %sub.i = sub nsw i32 %inlen.addr.0100.i, %call.i
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %u.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %8)
  %cmp6.i = icmp ugt i32 %8, 65535
  br i1 %cmp6.i, label %if.then8.i, label %if.else.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %maxout.addr.0102.i)
  %cmp9.i = icmp slt i32 %maxout.addr.0102.i, 2
  br i1 %cmp9.i, label %if.then8.i._utf8s_to_utf16s.exit_crit_edge, label %if.end12.i

if.then8.i._utf8s_to_utf16s.exit_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_utf8s_to_utf16s.exit

if.end12.i:                                       ; preds = %if.then8.i
  %sub13.i = add i32 %8, -65536
  %9 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub13.i, ptr %u.i, align 4
  %incdec.ptr.i = getelementptr i16, ptr %op.0103.i, i32 1
  %shr.i = lshr i32 %sub13.i, 10
  %and14.i = and i32 %shr.i, 1023
  %or.i = or i32 %and14.i, 55296
  %10 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %endian, label %put_utf16.exit.i [
    i32 1, label %put_utf16.exit.thread.i
    i32 2, label %put_utf16.exit.thread91.i
  ]

put_utf16.exit.thread.i:                          ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = trunc i32 %or.i to i16
  %11 = call i16 @llvm.bswap.i16(i16 %conv1.i.i) #7
  %12 = ptrtoint ptr %op.0103.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %op.0103.i, align 2
  %13 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %u.i, align 4
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, 1023
  %conv1.i62.i = or i16 %16, -9216
  %17 = call i16 @llvm.bswap.i16(i16 %conv1.i62.i) #7
  br label %put_utf16.exit67.i

put_utf16.exit.thread91.i:                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i.i = trunc i32 %or.i to i16
  %18 = ptrtoint ptr %op.0103.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv3.i.i, ptr %op.0103.i, align 2
  %19 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %u.i, align 4
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 1023
  %conv3.i64.i = or i16 %22, -9216
  br label %put_utf16.exit67.i

put_utf16.exit.i:                                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = trunc i32 %or.i to i16
  %23 = ptrtoint ptr %op.0103.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %op.0103.i, align 2
  %24 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %u.i, align 4
  %26 = trunc i32 %25 to i16
  %27 = and i16 %26, 1023
  %conv.i60.i = or i16 %27, -9216
  br label %put_utf16.exit67.i

put_utf16.exit67.i:                               ; preds = %put_utf16.exit.i, %put_utf16.exit.thread91.i, %put_utf16.exit.thread.i
  %conv3.sink.i66.i = phi i16 [ %conv3.i64.i, %put_utf16.exit.thread91.i ], [ %17, %put_utf16.exit.thread.i ], [ %conv.i60.i, %put_utf16.exit.i ]
  %incdec.ptr1588.i = getelementptr i16, ptr %op.0103.i, i32 2
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv3.sink.i66.i, ptr %incdec.ptr.i, align 2
  br label %if.end35.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxout.addr.0102.i)
  %cmp19.i = icmp slt i32 %maxout.addr.0102.i, 1
  br i1 %cmp19.i, label %if.else.i._utf8s_to_utf16s.exit_crit_edge, label %if.end22.i

if.else.i._utf8s_to_utf16s.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_utf8s_to_utf16s.exit

if.end22.i:                                       ; preds = %if.else.i
  %incdec.ptr23.i = getelementptr i16, ptr %op.0103.i, i32 1
  %29 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %endian, label %sw.default.i69.i [
    i32 1, label %sw.bb.i71.i
    i32 2, label %sw.bb2.i73.i
  ]

sw.default.i69.i:                                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i68.i = trunc i32 %8 to i16
  br label %put_utf16.exit75.i

sw.bb.i71.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i70.i = trunc i32 %8 to i16
  %30 = call i16 @llvm.bswap.i16(i16 %conv1.i70.i) #7
  br label %put_utf16.exit75.i

sw.bb2.i73.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i72.i = trunc i32 %8 to i16
  br label %put_utf16.exit75.i

put_utf16.exit75.i:                               ; preds = %sw.bb2.i73.i, %sw.bb.i71.i, %sw.default.i69.i
  %conv3.sink.i74.i = phi i16 [ %conv3.i72.i, %sw.bb2.i73.i ], [ %30, %sw.bb.i71.i ], [ %conv.i68.i, %sw.default.i69.i ]
  %31 = ptrtoint ptr %op.0103.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv3.sink.i74.i, ptr %op.0103.i, align 2
  br label %if.end35.i

if.else25.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %maxout.addr.0102.i)
  %cmp26.i = icmp slt i32 %maxout.addr.0102.i, 1
  br i1 %cmp26.i, label %if.else25.i._utf8s_to_utf16s.exit_crit_edge, label %if.end29.i

if.else25.i._utf8s_to_utf16s.exit_crit_edge:      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_utf8s_to_utf16s.exit

if.end29.i:                                       ; preds = %if.else25.i
  %incdec.ptr30.i = getelementptr i16, ptr %op.0103.i, i32 1
  %incdec.ptr31.i = getelementptr i8, ptr %s.addr.0101.i, i32 1
  %32 = zext i32 %endian to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %endian, label %sw.default.i77.i [
    i32 1, label %sw.bb.i79.i
    i32 2, label %sw.bb2.i81.i
  ]

sw.default.i77.i:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i76.i = zext i8 %6 to i16
  br label %put_utf16.exit83.i

sw.bb.i79.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i78.i = zext i8 %6 to i16
  %33 = shl nuw nsw i16 %conv1.i78.i, 8
  br label %put_utf16.exit83.i

sw.bb2.i81.i:                                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv3.i80.i = zext i8 %6 to i16
  br label %put_utf16.exit83.i

put_utf16.exit83.i:                               ; preds = %sw.bb2.i81.i, %sw.bb.i79.i, %sw.default.i77.i
  %conv3.sink.i82.i = phi i16 [ %conv3.i80.i, %sw.bb2.i81.i ], [ %33, %sw.bb.i79.i ], [ %conv.i76.i, %sw.default.i77.i ]
  %34 = ptrtoint ptr %op.0103.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv3.sink.i82.i, ptr %op.0103.i, align 2
  %dec33.i = add nsw i32 %inlen.addr.0100.i, -1
  br label %if.end35.i

if.end35.i:                                       ; preds = %put_utf16.exit83.i, %put_utf16.exit75.i, %put_utf16.exit67.i
  %.sink.i = phi i32 [ -2, %put_utf16.exit67.i ], [ -1, %put_utf16.exit75.i ], [ -1, %put_utf16.exit83.i ]
  %inlen.addr.1.i = phi i32 [ %sub.i, %put_utf16.exit67.i ], [ %sub.i, %put_utf16.exit75.i ], [ %dec33.i, %put_utf16.exit83.i ]
  %s.addr.1.i = phi ptr [ %add.ptr.i, %put_utf16.exit67.i ], [ %add.ptr.i, %put_utf16.exit75.i ], [ %incdec.ptr31.i, %put_utf16.exit83.i ]
  %op.1.i = phi ptr [ %incdec.ptr1588.i, %put_utf16.exit67.i ], [ %incdec.ptr23.i, %put_utf16.exit75.i ], [ %incdec.ptr30.i, %put_utf16.exit83.i ]
  %sub18.i = add nsw i32 %.sink.i, %maxout.addr.0102.i
  %cmp.i = icmp sgt i32 %inlen.addr.1.i, 0
  br i1 %cmp.i, label %if.end35.i.land.rhs.i_crit_edge, label %if.end35.i.while.end.i_crit_edge

if.end35.i.while.end.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end35.i.land.rhs.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.end.i:                                      ; preds = %if.end35.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %op.0.lcssa.i = phi ptr [ %name2, %if.then.while.end.i_crit_edge ], [ %op.0103.i, %land.rhs.i.while.end.i_crit_edge ], [ %op.1.i, %if.end35.i.while.end.i_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %op.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %name2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 1
  br label %_utf8s_to_utf16s.exit

_utf8s_to_utf16s.exit:                            ; preds = %while.end.i, %if.else25.i._utf8s_to_utf16s.exit_crit_edge, %if.else.i._utf8s_to_utf16s.exit_crit_edge, %if.then8.i._utf8s_to_utf16s.exit_crit_edge, %if.then.i._utf8s_to_utf16s.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.ptr.div.i, %while.end.i ], [ -22, %if.then.i._utf8s_to_utf16s.exit_crit_edge ], [ -36, %if.then8.i._utf8s_to_utf16s.exit_crit_edge ], [ -36, %if.else.i._utf8s_to_utf16s.exit_crit_edge ], [ -36, %if.else25.i._utf8s_to_utf16s.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %u.i) #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %name, i32 %name_len
  %cmp56 = icmp ugt ptr %add.ptr, %name
  br i1 %cmp56, label %for.body.lr.ph, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %char2uni = getelementptr inbounds %struct.nls_table, ptr %3, i32 0, i32 3
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ret.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name.addr.057 = phi ptr [ %name, %for.body.lr.ph ], [ %add.ptr17, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.058, i32 %max_ulen)
  %exitcond.not = icmp eq i32 %ret.058, %max_ulen
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %for.body
  %35 = ptrtoint ptr %char2uni to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %char2uni, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %name.addr.057 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr8 = getelementptr i16, ptr %name2, i32 %ret.058
  %call9 = tail call i32 %36(ptr noundef %name.addr.057, i32 noundef %sub.ptr.sub, ptr noundef %add.ptr8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13 = icmp slt i32 %call9, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %for.inc

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end12
  %inc = add i32 %ret.058, 1
  %add.ptr17 = getelementptr i8, ptr %name.addr.057, i32 %call9
  %cmp = icmp ult ptr %add.ptr17, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %endian)
  %cmp18 = icmp ne i32 %endian, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool21.not59 = icmp eq i32 %inc, 0
  %or.cond = select i1 %cmp18, i1 true, i1 %tobool21.not59
  br i1 %or.cond, label %for.end.cleanup.sink.split_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %i.061 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %inc, %for.end.while.body_crit_edge ]
  %uname.060 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %name2, %for.end.while.body_crit_edge ]
  %dec = add i32 %i.061, -1
  %37 = ptrtoint ptr %uname.060 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %uname.060, align 2
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %40 = ptrtoint ptr %uname.060 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %uname.060, align 2
  %incdec.ptr = getelementptr i16, ptr %uname.060, i32 1
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %while.body.cleanup.sink.split_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %_utf8s_to_utf16s.exit
  %ret.0.lcssa66.sink = phi i32 [ %retval.0.i, %_utf8s_to_utf16s.exit ], [ %inc, %for.end.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ %inc, %while.body.cleanup.sink.split_crit_edge ]
  %conv23 = trunc i32 %ret.0.lcssa66.sink to i8
  %41 = ptrtoint ptr %uni to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv23, ptr %uni, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa66.sink, %cleanup.sink.split ], [ %call9, %if.end12.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -36, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dir_search_u(ptr noundef %dir, ptr noundef %uni, ptr noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca ptr, align 4
  %diff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #7
  %4 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #7
  %5 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %diff, align 4, !annotation !23
  %tobool.not = icmp eq ptr %fnd, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3392, i32 noundef 168) #10
  %tobool2.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not, label %if.then.cond.true18_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.cond.true18_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true18

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %fnd.addr.0 = phi ptr [ %fnd, %entry.if.end4_crit_edge ], [ %call7.i.i.i, %if.then.if.end4_crit_edge ]
  %fnd_a.0 = phi ptr [ null, %entry.if.end4_crit_edge ], [ %call7.i.i.i, %if.then.if.end4_crit_edge ]
  %7 = getelementptr i8, ptr %dir, i32 -156
  %call5 = call i32 @indx_find(ptr noundef %7, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef %uni, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %diff, ptr noundef nonnull %e, ptr noundef nonnull %fnd.addr.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end11:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %call12 = call ptr @ntfs_iget5(ptr noundef %1, ptr noundef %11, ptr noundef %uni) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.out_crit_edge, label %land.lhs.true

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %if.end11
  %call14 = call zeroext i1 @is_bad_inode(ptr noundef %call12) #7
  br i1 %call14, label %if.then15, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @iput(ptr noundef %call12) #7
  br label %out

out:                                              ; preds = %if.then15, %land.lhs.true.out_crit_edge, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %if.end4.out_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.out_crit_edge ], [ 0, %if.end11.out_crit_edge ], [ -22, %if.then15 ], [ 0, %land.lhs.true.out_crit_edge ], [ -2, %if.end8.out_crit_edge ]
  %inode.0 = phi ptr [ null, %if.end4.out_crit_edge ], [ %call12, %if.end11.out_crit_edge ], [ %call12, %if.then15 ], [ %call12, %land.lhs.true.out_crit_edge ], [ null, %if.end8.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %fnd_a.0, null
  br i1 %tobool.not.i, label %out.fnd_put.exit_crit_edge, label %if.then.i

out.fnd_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %fnd_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @fnd_clear(ptr noundef nonnull %fnd_a.0) #7
  call void @kfree(ptr noundef nonnull %fnd_a.0) #7
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %if.then.i, %out.fnd_put.exit_crit_edge
  %12 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %err.0, label %fnd_put.exit.cond.true18_crit_edge [
    i32 -2, label %fnd_put.exit.cond.end21_crit_edge
    i32 0, label %cond.false20
  ]

fnd_put.exit.cond.end21_crit_edge:                ; preds = %fnd_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end21

fnd_put.exit.cond.true18_crit_edge:               ; preds = %fnd_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true18

cond.true18:                                      ; preds = %fnd_put.exit.cond.true18_crit_edge, %if.then.cond.true18_crit_edge
  %err.04044 = phi i32 [ %err.0, %fnd_put.exit.cond.true18_crit_edge ], [ -12, %if.then.cond.true18_crit_edge ]
  %13 = inttoptr i32 %err.04044 to ptr
  br label %cond.end21

cond.false20:                                     ; preds = %fnd_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.true18, %fnd_put.exit.cond.end21_crit_edge
  %cond22 = phi ptr [ null, %fnd_put.exit.cond.end21_crit_edge ], [ %13, %cond.true18 ], [ %inode.0, %cond.false20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #7
  ret ptr %cond22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dir_is_empty(ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %bit.i = alloca i32, align 4
  %node.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dir, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit.i) #7
  %0 = ptrtoint ptr %bit.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bit.i, align 4
  %i_size1.i = getelementptr i8, ptr %dir, i32 56
  %1 = ptrtoint ptr %i_size1.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node.i) #7
  %3 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %node.i, align 4
  %4 = getelementptr i8, ptr %dir, i32 -156
  %index_bits2.i = getelementptr i8, ptr %dir, i32 -32
  %5 = ptrtoint ptr %index_bits2.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index_bits2.i, align 4
  %call3.i = tail call ptr @indx_get_root(ptr noundef %4, ptr noundef %add.ptr.i.i, ptr noundef null, ptr noundef null) #7
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %entry.ntfs_dir_count.exit_crit_edge, label %if.end6.i

entry.ntfs_dir_count.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntfs_dir_count.exit

if.end6.i:                                        ; preds = %entry
  %ihdr.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %call3.i, i32 0, i32 5
  %sh_prom.i = zext i8 %6 to i64
  %idx2vbn_bits.i = getelementptr i8, ptr %dir, i32 -31
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end63.i, %if.end6.i
  %hdr.0.i = phi ptr [ %ihdr.i, %if.end6.i ], [ %ihdr64.i, %if.end63.i ]
  %vbo.0.i = phi i64 [ 0, %if.end6.i ], [ %shl70.i, %if.end63.i ]
  %used.i = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %used.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = ptrtoint ptr %hdr.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hdr.0.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #7
  %add5.i = add i32 %12, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %9)
  %cmp.not6.i = icmp ugt i32 %add5.i, %9
  br i1 %cmp.not6.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %off.07.i = phi i32 [ %add10.i, %for.inc.i.for.body.i_crit_edge ], [ %12, %for.cond.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %hdr.0.i, i32 %off.07.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size.i, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %15)
  %cmp8.i = icmp ult i16 %15, 16
  br i1 %cmp8.i, label %for.body.i.for.end.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %conv.i = zext i16 %15 to i32
  %add10.i = add i32 %off.07.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %9)
  %cmp11.i = icmp ugt i32 %add10.i, %9
  br i1 %cmp11.i, label %lor.lhs.false.i.for.end.i_crit_edge, label %if.end14.i

lor.lhs.false.i.for.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i.i, align 4
  %18 = and i16 %17, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i.not.i = icmp eq i16 %18, 0
  br i1 %tobool.i.not.i, label %if.end17.i, label %if.end14.i.for.end.i_crit_edge

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end17.i:                                       ; preds = %if.end14.i
  %key_size.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 2
  %19 = ptrtoint ptr %key_size.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %key_size.i.i, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %21)
  %cmp.i.i = icmp ult i16 %21, 68
  %add.ptr.i1.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %tobool19.not2.i = icmp eq ptr %add.ptr.i1.i, null
  %tobool19.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool19.not2.i
  br i1 %tobool19.not.i, label %if.end17.i.for.inc.i_crit_edge, label %if.end21.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end21.i:                                       ; preds = %if.end17.i
  %type.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr.i1.i, i32 0, i32 3
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp23.i = icmp eq i8 %23, 2
  br i1 %cmp23.i, label %if.end21.i.for.inc.i_crit_edge, label %if.end21.i.out.i_crit_edge

if.end21.i.out.i_crit_edge:                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end21.i.for.inc.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end21.i.for.inc.i_crit_edge, %if.end17.i.for.inc.i_crit_edge
  %add.i = add i32 %add10.i, 16
  %cmp.not.i = icmp ugt i32 %add.i, %9
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge, %lor.lhs.false.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %vbo.0.i, i64 %2)
  %cmp40.not.i = icmp ult i64 %vbo.0.i, %2
  br i1 %cmp40.not.i, label %if.end43.i, label %for.end.i.out.i_crit_edge

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end43.i:                                       ; preds = %for.end.i
  %call44.i = call i32 @indx_used_bit(ptr noundef %4, ptr noundef %add.ptr.i.i, ptr noundef nonnull %bit.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end43.i.out.i_crit_edge

if.end43.i.out.i_crit_edge:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end47.i:                                       ; preds = %if.end43.i
  %24 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp48.i = icmp eq i32 %25, -1
  br i1 %cmp48.i, label %if.end47.i.out.i_crit_edge, label %if.end51.i

if.end47.i.out.i_crit_edge:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end51.i:                                       ; preds = %if.end47.i
  %conv52.i = zext i32 %25 to i64
  %shl.i = shl i64 %conv52.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %2)
  %cmp54.not.i = icmp ult i64 %shl.i, %2
  br i1 %cmp54.not.i, label %if.end57.i, label %if.end51.i.out.i_crit_edge

if.end51.i.out.i_crit_edge:                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end57.i:                                       ; preds = %if.end51.i
  %26 = ptrtoint ptr %idx2vbn_bits.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %idx2vbn_bits.i, align 1
  %conv58.i = zext i8 %27 to i32
  %shl59.i = shl i32 %25, %conv58.i
  %call60.i = call i32 @indx_read(ptr noundef %4, ptr noundef %add.ptr.i.i, i32 noundef %shl59.i, ptr noundef nonnull %node.i) #7
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end57.i.out.i_crit_edge

if.end57.i.out.i_crit_edge:                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end63.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node.i, align 4
  %index.i = getelementptr inbounds %struct.indx_node, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %index.i, align 4
  %ihdr64.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bit.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bit.i, align 4
  %add65.i = add i32 %33, 1
  store i32 %add65.i, ptr %bit.i, align 4
  %conv66.i = zext i32 %add65.i to i64
  %34 = ptrtoint ptr %idx2vbn_bits.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %idx2vbn_bits.i, align 1
  %sh_prom69.i = zext i8 %35 to i64
  %shl70.i = shl i64 %conv66.i, %sh_prom69.i
  br label %for.cond.i

out.i:                                            ; preds = %if.end57.i.out.i_crit_edge, %if.end51.i.out.i_crit_edge, %if.end47.i.out.i_crit_edge, %if.end43.i.out.i_crit_edge, %for.end.i.out.i_crit_edge, %if.end21.i.out.i_crit_edge
  %is_empty.0 = phi i8 [ 0, %if.end21.i.out.i_crit_edge ], [ 1, %for.end.i.out.i_crit_edge ], [ 1, %if.end43.i.out.i_crit_edge ], [ 1, %if.end47.i.out.i_crit_edge ], [ 1, %if.end51.i.out.i_crit_edge ], [ 1, %if.end57.i.out.i_crit_edge ]
  %36 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %out.i.ntfs_dir_count.exit_crit_edge, label %if.end.i.i

out.i.ntfs_dir_count.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntfs_dir_count.exit

if.end.i.i:                                       ; preds = %out.i
  %index.i.i = getelementptr inbounds %struct.indx_node, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %index.i.i, align 4
  call void @kfree(ptr noundef %39) #7
  %nbufs1.i.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %nbufs1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbufs1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.nb_put.exit.i.i_crit_edge, label %if.end.i.i.for.body.i.i.i_crit_edge

if.end.i.i.for.body.i.i.i_crit_edge:              ; preds = %if.end.i.i
  br label %for.body.i.i.i

if.end.i.i.nb_put.exit.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nb_put.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.i.for.body.i.i.i_crit_edge
  %i.010.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [8 x ptr], ptr %37, i32 0, i32 %i.010.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  %b_count.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i.i, i32 1, i32 3, i32 1) #7
  %44 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i.i, ptr %b_count.i.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i.i) #7, !srcloc !25
  %inc.i.i.i = add nuw i32 %i.010.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %41
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %nbufs1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %nbufs1.i.i.i, align 4
  br label %nb_put.exit.i.i

nb_put.exit.i.i:                                  ; preds = %for.end.i.i.i, %if.end.i.i.nb_put.exit.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %37) #7
  br label %ntfs_dir_count.exit

ntfs_dir_count.exit:                              ; preds = %nb_put.exit.i.i, %out.i.ntfs_dir_count.exit_crit_edge, %entry.ntfs_dir_count.exit_crit_edge
  %is_empty.1 = phi i8 [ 1, %entry.ntfs_dir_count.exit_crit_edge ], [ %is_empty.0, %out.i.ntfs_dir_count.exit_crit_edge ], [ %is_empty.0, %nb_put.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit.i) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_empty.1)
  %tobool = icmp ne i8 %is_empty.1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  %bit = alloca i32, align 4
  %node = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #7
  %0 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bit, align 4, !annotation !23
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %entry
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !26
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %8 = tail call ptr @llvm.returnaddress(i32 0) #7
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %9) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call ptr @llvm.returnaddress(i32 0) #7
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %11) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !27
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !28

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #7, !srcloc !29
  %13 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !31
  %15 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %16, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %16, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !32
  %17 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %19 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %20, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 -360
  %pos3 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pos3, align 8
  %conv = trunc i64 %22 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node) #7
  %23 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %node, align 4
  %24 = getelementptr i8, ptr %2, i32 -156
  %index_bits4 = getelementptr i8, ptr %2, i32 -32
  %25 = ptrtoint ptr %index_bits4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %index_bits4, align 4
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %6, i32 0, i32 8
  %27 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %record_size, align 8
  %conv5 = zext i32 %28 to i64
  %add = add i64 %18, %conv5
  %conv6 = and i64 %22, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv6, i64 %add)
  %cmp.not = icmp slt i64 %conv6, %add
  br i1 %cmp.not, label %if.end, label %i_size_read.exit.cleanup_crit_edge

i_size_read.exit.cleanup_crit_edge:               ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.9)
  switch i64 %22, label %if.end.if.end10_crit_edge [
    i64 0, label %if.then.i
    i64 1, label %if.end.if.then6.i_crit_edge
  ]

if.end.if.then6.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.i

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then.i:                                        ; preds = %if.end
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %dentry.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dentry.i.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %36 to i64
  %call.i.i = tail call i32 %30(ptr noundef %ctx, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end3.thread.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1, ptr %pos3, align 8
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.thread.i, %if.end.if.then6.i_crit_edge
  %38 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctx, align 8
  %dentry.i19.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %dentry.i19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dentry.i19.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #7
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #7
  %conv.i20.i = zext i32 %47 to i64
  %call1.i.i = tail call i32 %39(ptr noundef %ctx, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %conv.i20.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i21.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i21.i, label %if.end9.i, label %if.then6.i.cleanup_crit_edge

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 2, ptr %pos3, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.end9.i, %if.end.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %49 = load ptr, ptr @names_cachep, align 4
  %call11 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %49, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %mi_loaded = getelementptr i8, ptr %2, i32 -160
  %50 = ptrtoint ptr %mi_loaded to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mi_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool14.not = icmp eq i8 %51, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end13.if.end33_crit_edge

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end13
  %size = getelementptr i8, ptr %2, i32 -12
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not = icmp eq i32 %53, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end33_crit_edge, label %if.then16

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then16:                                        ; preds = %land.lhs.true
  %ni_lock.i = getelementptr i8, ptr %2, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #7
  %54 = ptrtoint ptr %mi_loaded to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mi_loaded, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool18.not = icmp eq i8 %55, 0
  br i1 %tobool18.not, label %land.lhs.true19, label %if.then16.if.end29.thread_crit_edge

if.then16.if.end29.thread_crit_edge:              ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

land.lhs.true19:                                  ; preds = %if.then16
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool22.not = icmp eq i32 %57, 0
  br i1 %tobool22.not, label %land.lhs.true19.if.end29.thread_crit_edge, label %if.then23

land.lhs.true19.if.end29.thread_crit_edge:        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.thread

if.then23:                                        ; preds = %land.lhs.true19
  %call24 = tail call i32 @ni_load_all_mi(ptr noundef %add.ptr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %mi_loaded to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %mi_loaded, align 8
  br label %if.end29.thread

if.end29.thread:                                  ; preds = %if.then26, %land.lhs.true19.if.end29.thread_crit_edge, %if.then16.if.end29.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #7
  br label %if.end33

if.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #7
  br label %out

if.end33:                                         ; preds = %if.end29.thread, %land.lhs.true.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %call34 = tail call ptr @indx_get_root(ptr noundef %24, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_crit_edge, label %if.end37

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end37:                                         ; preds = %if.end33
  %59 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %record_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv)
  %cmp39.not = icmp ugt i32 %60, %conv
  br i1 %cmp39.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %conv, %60
  %conv43 = zext i8 %26 to i32
  %shr = lshr i32 %sub, %conv43
  br label %if.end49

if.else:                                          ; preds = %if.end37
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %call34, i32 0, i32 5
  %call45 = tail call fastcc i32 @ntfs_read_hdr(ptr noundef %6, ptr noundef %add.ptr.i, ptr noundef %ihdr, i64 noundef 0, i64 noundef %conv6, ptr noundef nonnull %call11, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else.if.end49_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end49:                                         ; preds = %if.else.if.end49_crit_edge, %if.then41
  %storemerge = phi i32 [ %shr, %if.then41 ], [ 0, %if.else.if.end49_crit_edge ]
  %61 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool50.not = icmp eq i64 %18, 0
  br i1 %tobool50.not, label %if.then51, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end49
  %sh_prom = zext i8 %26 to i64
  %62 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bit, align 4
  %conv54180 = zext i32 %63 to i64
  %shl181 = shl i64 %conv54180, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl181, i64 %18)
  %cmp56.not182 = icmp ult i64 %shl181, %18
  br i1 %cmp56.not182, label %if.end60.lr.ph, label %for.cond.preheader.if.then58_crit_edge

for.cond.preheader.if.then58_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end60.lr.ph:                                   ; preds = %for.cond.preheader
  %idx2vbn_bits = getelementptr i8, ptr %2, i32 -31
  br label %if.end60

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add, ptr %pos3, align 8
  br label %out

if.then58:                                        ; preds = %if.end92.if.then58_crit_edge, %for.cond.preheader.if.then58_crit_edge
  %65 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add, ptr %pos3, align 8
  br label %out

if.end60:                                         ; preds = %if.end92.if.end60_crit_edge, %if.end60.lr.ph
  %call61 = call i32 @indx_used_bit(ptr noundef %24, ptr noundef %add.ptr.i, ptr noundef nonnull %bit) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.out_crit_edge

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end64:                                         ; preds = %if.end60
  %66 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp65 = icmp eq i32 %67, -1
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add, ptr %pos3, align 8
  br label %out

if.end69:                                         ; preds = %if.end64
  %conv70 = zext i32 %67 to i64
  %shl73 = shl i64 %conv70, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl73, i64 %18)
  %cmp74.not = icmp ult i64 %shl73, %18
  br i1 %cmp74.not, label %if.end77, label %if.then76

if.then76:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  br label %out

if.end77:                                         ; preds = %if.end69
  %69 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %idx2vbn_bits, align 1
  %conv78 = zext i8 %70 to i32
  %shl79 = shl i32 %67, %conv78
  %call80 = call i32 @indx_read(ptr noundef %24, ptr noundef %add.ptr.i, i32 noundef %shl79, ptr noundef nonnull %node) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end77.out_crit_edge

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end83:                                         ; preds = %if.end77
  %71 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %node, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %index, align 4
  %ihdr84 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %record_size, align 8
  %conv86 = zext i32 %76 to i64
  %add87 = add i64 %shl73, %conv86
  %call89 = call fastcc i32 @ntfs_read_hdr(ptr noundef %6, ptr noundef %add.ptr.i, ptr noundef %ihdr84, i64 noundef %add87, i64 noundef %conv6, ptr noundef nonnull %call11, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end83.out_crit_edge

if.end83.out_crit_edge:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end92:                                         ; preds = %if.end83
  %77 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bit, align 4
  %add93 = add i32 %78, 1
  store i32 %add93, ptr %bit, align 4
  %conv54 = zext i32 %add93 to i64
  %shl = shl i64 %conv54, %sh_prom
  %cmp56.not = icmp ult i64 %shl, %18
  br i1 %cmp56.not, label %if.end92.if.end60_crit_edge, label %if.end92.if.then58_crit_edge

if.end92.if.then58_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end92.if.end60_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

out:                                              ; preds = %if.end83.out_crit_edge, %if.end77.out_crit_edge, %if.then76, %if.then67, %if.end60.out_crit_edge, %if.then58, %if.then51, %if.else.out_crit_edge, %if.end33.out_crit_edge, %if.end29
  %err.4 = phi i32 [ 0, %if.then58 ], [ 0, %if.then67 ], [ -22, %if.then76 ], [ 0, %if.then51 ], [ %call45, %if.else.out_crit_edge ], [ %call24, %if.end29 ], [ -22, %if.end33.out_crit_edge ], [ %call89, %if.end83.out_crit_edge ], [ %call80, %if.end77.out_crit_edge ], [ %call61, %if.end60.out_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %79 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %call11) #7
  %80 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %node, align 4
  %tobool.not.i174 = icmp eq ptr %81, null
  br i1 %tobool.not.i174, label %out.put_indx_node.exit_crit_edge, label %if.end.i

out.put_indx_node.exit_crit_edge:                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_indx_node.exit

if.end.i:                                         ; preds = %out
  %index.i = getelementptr inbounds %struct.indx_node, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %index.i, align 4
  call void @kfree(ptr noundef %83) #7
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i175 = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i175, label %if.end.i.nb_put.exit.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.nb_put.exit.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nb_put.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %81, i32 0, i32 %i.010.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !24
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #7
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #7, !srcloc !25
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %85
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %nb_put.exit.i

nb_put.exit.i:                                    ; preds = %for.end.i.i, %if.end.i.nb_put.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %81) #7
  br label %put_indx_node.exit

put_indx_node.exit:                               ; preds = %nb_put.exit.i, %out.put_indx_node.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.4)
  %cmp94 = icmp eq i32 %err.4, -2
  br i1 %cmp94, label %if.then96, label %put_indx_node.exit.cleanup_crit_edge

put_indx_node.exit.cleanup_crit_edge:             ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then96:                                        ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %pos3 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %conv6, ptr %pos3, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %put_indx_node.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %i_size_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %i_size_read.exit.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ 0, %if.then96 ], [ %err.4, %put_indx_node.exit.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then6.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_file_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_to_utf32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fnd_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @indx_get_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_used_bit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_load_all_mi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_read_hdr(ptr nocapture noundef readonly %sbi, ptr nocapture noundef readonly %ni, ptr noundef %hdr, i64 noundef %vbo, i64 noundef %pos, ptr noundef %name, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %used = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hdr, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add50 = add i32 %5, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %2)
  %cmp51 = icmp ugt i32 %add50, %2
  br i1 %cmp51, label %entry.cleanup_crit_edge, label %if.end.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %pos23 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %rno.i.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 4
  %mrec.i.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 2
  %options.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 34
  %objid_no.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 18
  %quota_no.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 19
  %reparse_no.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 20
  %usn_jrnl_no.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 21
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %off.052 = phi i32 [ %5, %if.end.lr.ph ], [ %add3, %for.inc.if.end_crit_edge ]
  %add.ptr = getelementptr i8, ptr %hdr, i32 %off.052
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cmp1 = icmp ult i16 %8, 16
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i16 %8 to i32
  %add3 = add i32 %off.052, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %2)
  %cmp4 = icmp ugt i32 %add3, %2
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags.i, align 4
  %11 = and i16 %10, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not = icmp eq i16 %11, 0
  br i1 %tobool.i.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %conv10 = zext i32 %off.052 to i64
  %add11 = add i64 %conv10, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add11, i64 %pos)
  %cmp12 = icmp ult i64 %add11, %pos
  br i1 %cmp12, label %if.end9.for.inc_crit_edge, label %if.end15

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %if.end9
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 2
  %12 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %key_size, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_const_cmp2(i16 68, i16 %14)
  %cmp17 = icmp ult i16 %14, 68
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %pos23 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add11, ptr %pos23, align 8
  %type.i = getelementptr i8, ptr %add.ptr, i32 81
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %if.end20.for.inc_crit_edge, label %if.end.i

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %if.end20
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 16
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = ptrtoint ptr %rno.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rno.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not.i.i = icmp eq i32 %20, %22
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end.i
  %seq.i.i = getelementptr i8, ptr %add.ptr, i32 22
  %23 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %seq.i.i, align 2
  %25 = ptrtoint ptr %mrec.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mrec.i.i, align 4
  %seq1.i.i = getelementptr inbounds %struct.MFT_REC, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %seq1.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %seq1.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp3.not.i.i = icmp eq i16 %24, %28
  br i1 %cmp3.not.i.i, label %mi_is_ref.exit.i, label %if.end.i.i.for.inc_crit_edge

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

mi_is_ref.exit.i:                                 ; preds = %if.end.i.i
  %high.i.i = getelementptr i8, ptr %add.ptr, i32 20
  %29 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %high.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i.i, label %if.end3.i, label %mi_is_ref.exit.i.for.inc_crit_edge

mi_is_ref.exit.i.for.inc_crit_edge:               ; preds = %mi_is_ref.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end3.i:                                        ; preds = %mi_is_ref.exit.i
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 83886080, i32 %32)
  %cmp5.i = icmp eq i32 %32, 83886080
  br i1 %cmp5.i, label %if.end3.i.for.inc_crit_edge, label %if.end8.i

if.end3.i.for.inc_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end8.i:                                        ; preds = %if.end3.i
  %34 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %options.i, align 4
  %showmeta.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %showmeta.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %showmeta.i, align 4
  %37 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end8.i.if.end12.i_crit_edge

if.end8.i.if.end12.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %33)
  %cmp.i.i = icmp ult i32 %33, 16
  br i1 %cmp.i.i, label %land.lhs.true.i.for.inc_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i
  %38 = ptrtoint ptr %objid_no.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %objid_no.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %33)
  %cmp1.i.i = icmp eq i32 %39, %33
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.for.inc_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.for.inc_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %40 = ptrtoint ptr %quota_no.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quota_no.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %33)
  %cmp3.i.i = icmp eq i32 %41, %33
  br i1 %cmp3.i.i, label %lor.lhs.false2.i.i.for.inc_crit_edge, label %lor.lhs.false4.i.i

lor.lhs.false2.i.i.for.inc_crit_edge:             ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false2.i.i
  %42 = ptrtoint ptr %reparse_no.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reparse_no.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %33)
  %cmp5.i.i = icmp eq i32 %43, %33
  br i1 %cmp5.i.i, label %lor.lhs.false4.i.i.for.inc_crit_edge, label %ntfs_is_meta_file.exit.i

lor.lhs.false4.i.i.for.inc_crit_edge:             ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

ntfs_is_meta_file.exit.i:                         ; preds = %lor.lhs.false4.i.i
  %44 = ptrtoint ptr %usn_jrnl_no.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usn_jrnl_no.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %33)
  %cmp6.i.i = icmp eq i32 %45, %33
  br i1 %cmp6.i.i, label %ntfs_is_meta_file.exit.i.for.inc_crit_edge, label %ntfs_is_meta_file.exit.i.if.end12.i_crit_edge

ntfs_is_meta_file.exit.i.if.end12.i_crit_edge:    ; preds = %ntfs_is_meta_file.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

ntfs_is_meta_file.exit.i.for.inc_crit_edge:       ; preds = %ntfs_is_meta_file.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12.i:                                       ; preds = %ntfs_is_meta_file.exit.i.if.end12.i_crit_edge, %if.end8.i.if.end12.i_crit_edge
  %46 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool18.not.i = icmp eq i16 %46, 0
  br i1 %tobool18.not.i, label %if.end12.i.if.end22.i_crit_edge, label %land.lhs.true19.i

if.end12.i.if.end22.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

land.lhs.true19.i:                                ; preds = %if.end12.i
  %fa.i = getelementptr i8, ptr %add.ptr, i32 72
  %47 = ptrtoint ptr %fa.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %fa.i, align 8
  %and.i = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true19.i.if.end22.i_crit_edge, label %land.lhs.true19.i.for.inc_crit_edge

land.lhs.true19.i.for.inc_crit_edge:              ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true19.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true19.i.if.end22.i_crit_edge, %if.end12.i.if.end22.i_crit_edge
  %name23.i = getelementptr i8, ptr %add.ptr, i32 82
  %name_len24.i = getelementptr i8, ptr %add.ptr, i32 80
  %49 = ptrtoint ptr %name_len24.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %name_len24.i, align 8
  %conv25.i = zext i8 %50 to i32
  %call26.i = tail call i32 @ntfs_utf16_to_nls(ptr noundef %sbi, ptr noundef %name23.i, i32 noundef %conv25.i, ptr noundef %name, i32 noundef 4096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 1
  br i1 %cmp27.i, label %if.then29.i, label %ntfs_filldir.exit

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sbi, align 8
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %52, ptr noundef nonnull @.str.5, i32 noundef %33) #7
  br label %for.inc

ntfs_filldir.exit:                                ; preds = %if.end22.i
  %fa32.i = getelementptr i8, ptr %add.ptr, i32 72
  %53 = ptrtoint ptr %fa32.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fa32.i, align 8
  %and33.i = and i32 %54, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %cond.i = select i1 %tobool34.not.i, i32 8, i32 4
  %conv35.i = zext i32 %33 to i64
  %55 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctx, align 8
  %57 = ptrtoint ptr %pos23 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %pos23, align 8
  %call.i.i = tail call i32 %56(ptr noundef %ctx, ptr noundef %name, i32 noundef %call26.i, i64 noundef %58, i64 noundef %conv35.i, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i55.i.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i55.i.not, label %ntfs_filldir.exit.for.inc_crit_edge, label %ntfs_filldir.exit.cleanup_crit_edge

ntfs_filldir.exit.cleanup_crit_edge:              ; preds = %ntfs_filldir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

ntfs_filldir.exit.for.inc_crit_edge:              ; preds = %ntfs_filldir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %ntfs_filldir.exit.for.inc_crit_edge, %if.then29.i, %land.lhs.true19.i.for.inc_crit_edge, %ntfs_is_meta_file.exit.i.for.inc_crit_edge, %lor.lhs.false4.i.i.for.inc_crit_edge, %lor.lhs.false2.i.i.for.inc_crit_edge, %lor.lhs.false.i.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end3.i.for.inc_crit_edge, %mi_is_ref.exit.i.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %if.end9.for.inc_crit_edge
  %add = add i32 %add3, 16
  %cmp = icmp ugt i32 %add, %2
  br i1 %cmp, label %for.inc.cleanup_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %ntfs_filldir.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 1, %ntfs_filldir.exit.cleanup_crit_edge ], [ -1, %if.end15.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/dir.c", i32 44, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/dir.c", i32 68, i32 3}
!4 = !{ptr @ntfs_dir_operations, !5, !"ntfs_dir_operations", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/dir.c", i32 586, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs3/dir.c", i32 453, i32 4}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs3/dir.c", i32 307, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"auto-init"}
!24 = !{i64 2154492756}
!25 = !{i64 2148664344, i64 2148664370, i64 2148664399, i64 2148664433, i64 2148664464, i64 2148664487}
!26 = !{i64 1066559, i64 1066620}
!27 = !{i64 1069291}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 1069576}
!30 = !{i64 2152504710}
!31 = !{i64 2152504552}
!32 = !{i64 2152504880}
!33 = !{i64 2150090694}
