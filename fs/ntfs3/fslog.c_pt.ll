; ModuleID = '/llk/IR_all_yes/fs/ntfs3/fslog.c_pt.bc'
source_filename = "../fs/ntfs3/fslog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.restart_info = type { i64, ptr, i32, i8, i8, i8, i8 }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.84, %struct.anon.86, i32, %struct.inode }
%struct.timespec64 = type { i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%union.anon.84 = type { %struct.ntfs_index }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.86 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
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
%struct.ntfs_log = type { ptr, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i64, i32, i32, i32, ptr, i32, i8, i8, i64, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, %struct.CLIENT_ID, i32 }
%struct.CLIENT_ID = type { i16, i16 }
%struct.RESTART_HDR = type { %struct.NTFS_RECORD_HEADER, i32, i32, i16, i16, i16, [0 x i16] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.RESTART_AREA = type { i64, i16, [2 x i16], i16, i32, i16, i16, i64, i32, i16, i16, i32, [5 x i32], [0 x %struct.CLIENT_REC] }
%struct.CLIENT_REC = type { i64, i64, i16, i16, i16, [6 x i8], i32, [32 x i16] }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.anon.78 = type { %struct.wnd_bitmap, i32 }
%struct.anon.79 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.80 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.anon.81 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.82 = type { %struct.ntfs_index, ptr }
%struct.anon.83 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.NTFS_RESTART = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.lcb = type { ptr, ptr, i32, %struct.CLIENT_ID, i8 }
%struct.LFS_RECORD_HDR = type { i64, i64, i64, i32, %struct.CLIENT_ID, i32, i32, i16, [6 x i8] }
%struct.LOG_REC_HDR = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i64, [0 x i64] }
%struct.DIR_PAGE_ENTRY = type { i32, i32, i32, i32, i64, i64, [0 x i64] }
%struct.DIR_PAGE_ENTRY_32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RESTART_TABLE = type { i16, i16, i16, [3 x i16], i32, i32, i32 }
%struct.OPEN_ATTR_ENRTY = type { i32, i32, i32, i8, i8, i8, i8, %struct.MFT_REF, i64, ptr }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.ATTR_NAME_ENTRY = type { i16, i16, [0 x i16] }
%struct.TRANSACTION_ENTRY = type { i32, i8, [3 x i8], i64, i64, i64, i32, i32 }
%struct.LCN_RANGE = type { i64, i64 }
%struct.OPEN_ATTR_ENRTY_32 = type { i32, i32, %struct.MFT_REF, i64, i8, i8, [2 x i8], i32, i8, [3 x i8], i32, i32 }
%struct.OpenAttr = type { ptr, ptr, %struct.runs_tree, ptr }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.RECORD_PAGE_HDR = type { %struct.NTFS_RECORD_HEADER, i32, i16, i16, %struct.LFS_RECORD, [10 x i16], i32 }
%struct.LFS_RECORD = type { i16, [6 x i8], i64 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.NEW_ATTRIBUTE_SIZES = type { i64, i64, i64, i64 }
%struct.NTFS_DE = type { %union.anon.88, i16, i16, i16, i16 }
%union.anon.88 = type { %struct.MFT_REF }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HDR }
%struct.INDEX_HDR = type { i32, i32, i32, i8, [3 x i8] }
%struct.INDEX_BUFFER = type { %struct.NTFS_RECORD_HEADER, i64, %struct.INDEX_HDR }
%struct.BITMAP_RANGE = type { i32, i32 }

@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014$LogFile version %d.%d is not supported\00", [54 x i8] zeroinitializer }, align 32
@I30_NAME = external dso_local constant [4 x i16], align 2
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@AttributeRequired = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\FC\FB\FF\10\06", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs3/fslog.c\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 65536, i64 65537, i64 131072]
@__sancov_gen_cov_switch_values.2 = internal global [32 x i64] [i64 30, i64 16, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 33, i64 34, i64 37]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1128811332, i64 1381192786, i64 4294967295]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 10, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32]
@__sancov_gen_cov_switch_values.10 = internal global [25 x i64] [i64 23, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 33, i64 34, i64 37]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [18 x i64] [i64 16, i64 32, i64 65536, i64 268435456, i64 536870912, i64 805306368, i64 1073741824, i64 1342177280, i64 1610612736, i64 1879048192, i64 2147483648, i64 2415919104, i64 2684354560, i64 2952790016, i64 3221225472, i64 3489660928, i64 3758096384, i64 4026531840]
@__sancov_gen_cov_switch_values.14 = internal global [25 x i64] [i64 23, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 33, i64 34, i64 37]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 805306368]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 4074, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"AttributeRequired\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 345, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [20 x i8] c"../fs/ntfs3/fslog.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 3202, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @AttributeRequired, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AttributeRequired to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @log_replay(ptr noundef %ni, ptr nocapture noundef writeonly %initialized) local_unnamed_addr #0 align 64 {
entry:
  %rst_info = alloca %struct.restart_info, align 8
  %rst_info2 = alloca %struct.restart_info, align 8
  %rec_lsn = alloca i64, align 8
  %ra_lsn = alloca i64, align 8
  %dptbl = alloca ptr, align 4
  %trtbl = alloca ptr, align 4
  %oatbl = alloca ptr, align 4
  %lcn = alloca i32, align 4
  %lcn0 = alloca i32, align 4
  %len0 = alloca i32, align 4
  %clen = alloca i32, align 4
  %rst = alloca ptr, align 4
  %lcb = alloca ptr, align 4
  %sp = alloca ptr, align 4
  %usa_error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rst_info) #18
  %2 = call ptr @memset(ptr %rst_info, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rst_info2) #18
  %3 = call ptr @memset(ptr %rst_info2, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rec_lsn) #18
  %4 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %rec_lsn, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ra_lsn) #18
  %5 = ptrtoint ptr %ra_lsn to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %ra_lsn, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptbl) #18
  %6 = ptrtoint ptr %dptbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dptbl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trtbl) #18
  %7 = ptrtoint ptr %trtbl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %trtbl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oatbl) #18
  %8 = ptrtoint ptr %oatbl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %oatbl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #18
  %9 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lcn, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn0) #18
  %10 = ptrtoint ptr %lcn0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %lcn0, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len0) #18
  %11 = ptrtoint ptr %len0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %len0, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #18
  %12 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %clen, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rst) #18
  %13 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcb) #18
  %14 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %lcb, align 4
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %conv = trunc i64 %16 to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i2266 = and i32 %conv, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 204800, i32 %and.i2266)
  %cmp.i2267 = icmp ult i32 %and.i2266, 204800
  %retval.0.i = select i1 %cmp.i2267, i32 0, i32 4096
  br i1 %cmp.i2267, label %entry.cleanup1416_crit_edge, label %if.end

entry.cleanup1416_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup1416

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3392, i32 noundef 176) #21
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup1416_crit_edge, label %if.end6

if.end.cleanup1416_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup1416

if.end6:                                          ; preds = %if.end
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ni, ptr %call7.i.i, align 8
  %l_size8 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %l_size8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i2266, ptr %l_size8, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3136) #22
  %one_page_buf = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %one_page_buf to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i, ptr %one_page_buf, align 4
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.end6.out_crit_edge, label %if.end13

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end13:                                         ; preds = %if.end6
  %page_size14 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %page_size14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %page_size14, align 8
  %sub = add nsw i32 %retval.0.i, -1
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %page_mask to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %page_mask, align 4
  %page_bits = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %page_bits to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 12, ptr %page_bits, align 8
  %call17 = call fastcc i32 @log_read_rst(ptr noundef nonnull %call7.i.i, i32 noundef %and.i2266, i1 noundef zeroext true, ptr noundef nonnull %rst_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end20:                                         ; preds = %if.end13
  %initialized21 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 5
  %28 = ptrtoint ptr %initialized21 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %initialized21, align 2, !range !16
  %30 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %initialized, align 1
  %restart = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 6
  %31 = ptrtoint ptr %restart to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %restart, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool24.not = icmp eq i8 %32, 0
  br i1 %tobool24.not, label %if.then25, label %if.end37

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not = icmp eq i8 %29, 0
  br i1 %tobool27.not, label %if.end29, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end29:                                         ; preds = %if.then25
  tail call fastcc void @log_init_pg_hdr(ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i, i32 noundef %retval.0.i, i16 noundef zeroext 1, i16 noundef zeroext 1)
  %call.i = tail call i32 @get_random_u32() #18
  tail call fastcc void @log_create(ptr noundef nonnull %call7.i.i, i32 noundef %and.i2266, i64 noundef 0, i32 noundef %call.i)
  %ra31 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 22
  %33 = ptrtoint ptr %ra31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %ra31, align 4
  %call32 = tail call fastcc ptr @log_create_ra(ptr noundef nonnull %call7.i.i)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end29.out_crit_edge, label %if.end35

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %ra31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call32, ptr %ra31, align 4
  %init_ra = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 24
  %35 = ptrtoint ptr %init_ra to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %init_ra, align 4
  br label %process_log

if.end37:                                         ; preds = %if.end20
  %vbo38 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 2
  %36 = ptrtoint ptr %vbo38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vbo38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool39.not = icmp eq i32 %37, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.check_restart_area_crit_edge

if.end37.check_restart_area_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_restart_area

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @log_read_rst(ptr noundef nonnull %call7.i.i, i32 noundef %and.i2266, i1 noundef zeroext false, ptr noundef nonnull %rst_info2)
  %restart43 = getelementptr inbounds %struct.restart_info, ptr %rst_info2, i32 0, i32 6
  %38 = ptrtoint ptr %restart43 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %restart43, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool44.not = icmp eq i8 %39, 0
  br i1 %tobool44.not, label %if.end41.use_first_page_crit_edge, label %lor.lhs.false

if.end41.use_first_page_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_first_page

lor.lhs.false:                                    ; preds = %if.end41
  %40 = ptrtoint ptr %rst_info2 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rst_info2, align 8
  %42 = ptrtoint ptr %rst_info to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rst_info, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %43)
  %cmp.not = icmp ugt i64 %41, %43
  br i1 %cmp.not, label %if.end48, label %lor.lhs.false.use_first_page_crit_edge

lor.lhs.false.use_first_page_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_first_page

if.end48:                                         ; preds = %lor.lhs.false
  %chkdsk_was_run = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 3
  %44 = ptrtoint ptr %chkdsk_was_run to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chkdsk_was_run, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool49.not = icmp eq i8 %45, 0
  br i1 %tobool49.not, label %if.end48.if.then64_crit_edge, label %if.then54

if.end48.if.then64_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then64

if.then54:                                        ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sp) #18
  %46 = ptrtoint ptr %sp to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %sp, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usa_error) #18
  %47 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %usa_error, align 1, !annotation !15
  %call55 = call fastcc i32 @read_log_page(ptr noundef nonnull %call7.i.i, i32 noundef %retval.0.i, ptr noundef nonnull %sp, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  %48 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sp, align 4
  br i1 %tobool56.not, label %land.lhs.true57, label %if.then64.critedge2235

land.lhs.true57:                                  ; preds = %if.then54
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128811332, i32 %51)
  %cmp58.not = icmp eq i32 %51, 1128811332
  call void @kfree(ptr noundef %49) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sp) #18
  br i1 %cmp58.not, label %land.lhs.true57.use_first_page_crit_edge, label %land.lhs.true57.if.then64_crit_edge

land.lhs.true57.if.then64_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then64

land.lhs.true57.use_first_page_crit_edge:         ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_first_page

if.then64.critedge2235:                           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef %49) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sp) #18
  br label %if.then64

if.then64:                                        ; preds = %if.then64.critedge2235, %land.lhs.true57.if.then64_crit_edge, %if.end48.if.then64_crit_edge
  %r_page = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 1
  %52 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %r_page, align 8
  call void @kfree(ptr noundef %53) #18
  %54 = call ptr @memcpy(ptr %rst_info, ptr %rst_info2, i32 24)
  %r_page65 = getelementptr inbounds %struct.restart_info, ptr %rst_info2, i32 0, i32 1
  %55 = ptrtoint ptr %r_page65 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %r_page65, align 8
  br label %use_first_page

use_first_page:                                   ; preds = %if.then64, %land.lhs.true57.use_first_page_crit_edge, %lor.lhs.false.use_first_page_crit_edge, %if.end41.use_first_page_crit_edge
  %r_page67 = getelementptr inbounds %struct.restart_info, ptr %rst_info2, i32 0, i32 1
  %56 = ptrtoint ptr %r_page67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %r_page67, align 8
  call void @kfree(ptr noundef %57) #18
  br label %check_restart_area

check_restart_area:                               ; preds = %use_first_page, %if.end37.check_restart_area_crit_edge
  %58 = ptrtoint ptr %vbo38 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %vbo38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool69 = icmp ne i32 %59, 0
  %init_ra71 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 24
  %frombool72 = zext i1 %tobool69 to i8
  %60 = ptrtoint ptr %init_ra71 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool72, ptr %init_ra71, align 4
  %valid_page = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 4
  %61 = ptrtoint ptr %valid_page to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %valid_page, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool73.not = icmp eq i8 %62, 0
  br i1 %tobool73.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %check_restart_area
  %r_page75 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 1
  %63 = ptrtoint ptr %r_page75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %r_page75, align 8
  %ra_off = getelementptr inbounds %struct.RESTART_HDR, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ra_off to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ra_off, align 8
  %67 = call i16 @llvm.bswap.i16(i16 %66)
  %conv77 = zext i16 %67 to i32
  %add.ptr = getelementptr i8, ptr %64, i32 %conv77
  %chkdsk_was_run78 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 3
  %68 = ptrtoint ptr %chkdsk_was_run78 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chkdsk_was_run78, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool79.not = icmp eq i8 %69, 0
  br i1 %tobool79.not, label %lor.lhs.false81, label %cond.end.if.end92_crit_edge

cond.end.if.end92_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

cond.end.thread:                                  ; preds = %check_restart_area
  %chkdsk_was_run782435 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 3
  %70 = ptrtoint ptr %chkdsk_was_run782435 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %chkdsk_was_run782435, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool79.not2436 = icmp eq i8 %71, 0
  br i1 %tobool79.not2436, label %cond.end.thread.out_crit_edge, label %if.then90

cond.end.thread.out_crit_edge:                    ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

lor.lhs.false81:                                  ; preds = %cond.end
  %tobool82.not = icmp eq ptr %add.ptr, null
  br i1 %tobool82.not, label %lor.lhs.false81.out_crit_edge, label %land.lhs.true83

lor.lhs.false81.out_crit_edge:                    ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.lhs.true83:                                  ; preds = %lor.lhs.false81
  %arrayidx = getelementptr %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %73)
  %cmp85 = icmp eq i16 %73, -1
  br i1 %cmp85, label %land.lhs.true83.if.end92_crit_edge, label %if.end112

land.lhs.true83.if.end92_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end92

if.then90:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  %call.i2270 = call i32 @get_random_u32() #18
  br label %init_log_instance

if.end92:                                         ; preds = %land.lhs.true83.if.end92_crit_edge, %cond.end.if.end92_crit_edge
  %open_log_count93 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 11
  %74 = ptrtoint ptr %open_log_count93 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %open_log_count93, align 8
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  br label %init_log_instance

init_log_instance:                                ; preds = %if.end92, %if.then90
  %open_log_count.0 = phi i32 [ %76, %if.end92 ], [ %call.i2270, %if.then90 ]
  %sys_page_size1.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 2
  %77 = ptrtoint ptr %sys_page_size1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i, ptr %sys_page_size1.i, align 8
  %sys_page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %sub, ptr %sys_page_mask.i, align 4
  %79 = ptrtoint ptr %page_size14 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i, ptr %page_size14, align 8
  %80 = ptrtoint ptr %page_mask to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub, ptr %page_mask, align 4
  %81 = ptrtoint ptr %page_bits to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 12, ptr %page_bits, align 8
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call7.i.i, align 8
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sbi.i, align 4
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cluster_bits.i, align 8
  %conv5.i = zext i8 %87 to i32
  %shr.i2272 = lshr i32 %retval.0.i, %conv5.i
  %clst_per_page.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i2272)
  %tobool.not.i = icmp eq i32 %shr.i2272, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 %shr.i2272
  %88 = ptrtoint ptr %clst_per_page.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select.i, ptr %clst_per_page.i, align 8
  %first_page.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 11
  %89 = ptrtoint ptr %first_page.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16384, ptr %first_page.i, align 4
  %major_ver11.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 35
  %90 = ptrtoint ptr %major_ver11.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %major_ver11.i, align 8
  %minor_ver12.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 36
  %91 = ptrtoint ptr %minor_ver12.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %minor_ver12.i, align 2
  %92 = ptrtoint ptr %rst_info to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rst_info, align 8
  call fastcc void @log_create(ptr noundef nonnull %call7.i.i, i32 noundef %and.i2266, i64 noundef %93, i32 noundef %open_log_count.0)
  %restart_size.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 15
  %94 = ptrtoint ptr %restart_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %restart_size.i, align 4
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %95, i32 noundef 3392) #22
  %tobool.not.i2273 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i2273, label %init_log_instance.out_crit_edge, label %if.end.i2275

init_log_instance.out_crit_edge:                  ; preds = %init_log_instance
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end.i2275:                                     ; preds = %init_log_instance
  %last_lsn.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 28
  %96 = ptrtoint ptr %last_lsn.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %last_lsn.i, align 8
  %98 = call i64 @llvm.bswap.i64(i64 %97) #18
  %99 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %call9.i.i.i, align 128
  %log_clients.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %log_clients.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 256, ptr %log_clients.i, align 8
  %arrayidx.i = getelementptr %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 -1, ptr %arrayidx.i, align 4
  %l_flags.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %102 = ptrtoint ptr %l_flags.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %l_flags.i, align 4
  %and.i2274 = and i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2274)
  %tobool1.not.i = icmp eq i32 %and.i2274, 0
  br i1 %tobool1.not.i, label %if.end.i2275.log_create_ra.exit_crit_edge, label %if.then2.i

if.end.i2275.log_create_ra.exit_crit_edge:        ; preds = %if.end.i2275
  call void @__sanitizer_cov_trace_pc() #20
  br label %log_create_ra.exit

if.then2.i:                                       ; preds = %if.end.i2275
  call void @__sanitizer_cov_trace_pc() #20
  %flags.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 3
  %104 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 256, ptr %flags.i, align 2
  br label %log_create_ra.exit

log_create_ra.exit:                               ; preds = %if.then2.i, %if.end.i2275.log_create_ra.exit_crit_edge
  %seq_num_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 19
  %105 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %seq_num_bits.i, align 8
  %107 = call i32 @llvm.bswap.i32(i32 %106) #18
  %seq_num_bits4.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 4
  %108 = ptrtoint ptr %seq_num_bits4.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %seq_num_bits4.i, align 16
  %ra_size.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 23
  %109 = ptrtoint ptr %ra_size.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ra_size.i, align 8
  %conv.i2276 = trunc i32 %110 to i16
  %111 = call i16 @llvm.bswap.i16(i16 %conv.i2276) #18
  %ra_len.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %ra_len.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %ra_len.i, align 4
  %client_off.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 6
  %113 = ptrtoint ptr %client_off.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 16384, ptr %client_off.i, align 2
  %114 = ptrtoint ptr %l_size8 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %l_size8, align 4
  %conv5.i2277 = zext i32 %115 to i64
  %116 = call i64 @llvm.bswap.i64(i64 %conv5.i2277) #18
  %l_size6.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 7
  %117 = ptrtoint ptr %l_size6.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %l_size6.i, align 8
  %record_header_len.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 17
  %118 = ptrtoint ptr %record_header_len.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %record_header_len.i, align 4
  %120 = call i16 @llvm.bswap.i16(i16 %119) #18
  %rec_hdr_len.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 9
  %121 = ptrtoint ptr %rec_hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %rec_hdr_len.i, align 4
  %data_off.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 14
  %122 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %data_off.i, align 8
  %conv7.i = trunc i32 %123 to i16
  %124 = call i16 @llvm.bswap.i16(i16 %conv7.i) #18
  %data_off8.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 10
  %125 = ptrtoint ptr %data_off8.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %data_off8.i, align 2
  %current_openlog_count.i = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 38
  %126 = ptrtoint ptr %current_openlog_count.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %current_openlog_count.i, align 8
  %add.i2278 = add i32 %127, 1
  %128 = call i32 @llvm.bswap.i32(i32 %add.i2278) #18
  %open_log_count.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 11
  %129 = ptrtoint ptr %open_log_count.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %open_log_count.i, align 8
  %clients.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 0, i32 13
  %prev_client.i = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i.i, i32 1, i32 4
  %130 = ptrtoint ptr %prev_client.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %prev_client.i, align 16
  %next_client.i = getelementptr inbounds %struct.CLIENT_REC, ptr %clients.i, i32 0, i32 3
  %131 = ptrtoint ptr %next_client.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -1, ptr %next_client.i, align 2
  %ra106 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 22
  %132 = ptrtoint ptr %ra106 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call9.i.i.i, ptr %ra106, align 4
  br label %process_log

if.end112:                                        ; preds = %land.lhs.true83
  %133 = ptrtoint ptr %r_page75 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %r_page75, align 8
  %sys_page_size114 = getelementptr inbounds %struct.RESTART_HDR, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %sys_page_size114 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sys_page_size114, align 8
  %137 = call i32 @llvm.bswap.i32(i32 %136)
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %137)
  %cmp115.not = icmp eq i32 %retval.0.i, %137
  br i1 %cmp115.not, label %if.end112.if.end121_crit_edge, label %if.then117

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end121

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %136)
  %cmp118 = icmp eq i32 %136, 1048576
  %spec.select.i2280 = select i1 %cmp118, i32 4096, i32 %137
  %neg.i = sub i32 0, %spec.select.i2280
  %and.i2281 = and i32 %neg.i, %conv
  %mul.i2282 = mul i32 %spec.select.i2280, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2281, i32 %mul.i2282)
  %cmp.i2283 = icmp ult i32 %and.i2281, %mul.i2282
  %retval.0.i2284 = select i1 %cmp.i2283, i32 0, i32 %spec.select.i2280
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %if.end112.if.end121_crit_edge
  %l_size.0 = phi i32 [ %and.i2266, %if.end112.if.end121_crit_edge ], [ %and.i2281, %if.then117 ]
  %page_size.0 = phi i32 [ 4096, %if.end112.if.end121_crit_edge ], [ %retval.0.i2284, %if.then117 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %page_size.0, i32 %137)
  %cmp122.not = icmp eq i32 %page_size.0, %137
  br i1 %cmp122.not, label %lor.lhs.false124, label %if.end121.out_crit_edge

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

lor.lhs.false124:                                 ; preds = %if.end121
  %page_size126 = getelementptr inbounds %struct.RESTART_HDR, ptr %134, i32 0, i32 2
  %138 = ptrtoint ptr %page_size126 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page_size126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %139)
  %cmp127.not = icmp eq i32 %136, %139
  br i1 %cmp127.not, label %if.end130, label %lor.lhs.false124.out_crit_edge

lor.lhs.false124.out_crit_edge:                   ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end130:                                        ; preds = %lor.lhs.false124
  %conv131 = zext i32 %l_size.0 to i64
  %l_size132 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 7
  %140 = ptrtoint ptr %l_size132 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %l_size132, align 8
  %142 = call i64 @llvm.bswap.i64(i64 %141)
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %conv131)
  %cmp133 = icmp ugt i64 %142, %conv131
  br i1 %cmp133, label %if.end130.out_crit_edge, label %if.end136

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end136:                                        ; preds = %if.end130
  %major_ver = getelementptr inbounds %struct.RESTART_HDR, ptr %134, i32 0, i32 5
  %143 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %major_ver, align 4
  %145 = call i16 @llvm.bswap.i16(i16 %144)
  %minor_ver = getelementptr inbounds %struct.RESTART_HDR, ptr %134, i32 0, i32 4
  %146 = ptrtoint ptr %minor_ver to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %minor_ver, align 2
  %148 = call i16 @llvm.bswap.i16(i16 %147)
  call fastcc void @log_init_pg_hdr(ptr noundef nonnull %call7.i.i, i32 noundef %137, i32 noundef %137, i16 noundef zeroext %145, i16 noundef zeroext %148)
  %149 = ptrtoint ptr %l_size132 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %l_size132, align 8
  %151 = call i64 @llvm.bswap.i64(i64 %150)
  %conv140 = trunc i64 %151 to i32
  %152 = ptrtoint ptr %l_size8 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %conv140, ptr %l_size8, align 4
  %seq_num_bits = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 4
  %153 = ptrtoint ptr %seq_num_bits to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %seq_num_bits, align 8
  %155 = call i32 @llvm.bswap.i32(i32 %154)
  %seq_num_bits142 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 19
  %156 = ptrtoint ptr %seq_num_bits142 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %seq_num_bits142, align 8
  %sub144 = sub i32 64, %155
  %file_data_bits = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 20
  %157 = ptrtoint ptr %file_data_bits to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub144, ptr %file_data_bits, align 4
  %shl = shl i32 8, %sub144
  %sub146 = add i32 %shl, -1
  %seq_num_mask = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 21
  %158 = ptrtoint ptr %seq_num_mask to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub146, ptr %seq_num_mask, align 8
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %add.ptr, align 8
  %161 = call i64 @llvm.bswap.i64(i64 %160)
  %last_lsn147 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 28
  %162 = ptrtoint ptr %last_lsn147 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %161, ptr %last_lsn147, align 8
  %sh_prom = zext i32 %sub144 to i64
  %shr = lshr i64 %161, %sh_prom
  %seq_num = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 18
  %163 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %shr, ptr %seq_num, align 8
  %ra_off151 = getelementptr inbounds %struct.RESTART_HDR, ptr %134, i32 0, i32 3
  %164 = ptrtoint ptr %ra_off151 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %ra_off151, align 8
  %166 = call i16 @llvm.bswap.i16(i16 %165)
  %conv152 = zext i16 %166 to i32
  %ra_off153 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 13
  %167 = ptrtoint ptr %ra_off153 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv152, ptr %ra_off153, align 4
  %sys_page_size154 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %sys_page_size154 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sys_page_size154, align 8
  %sub156 = sub i32 %169, %conv152
  %restart_size = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 15
  %170 = ptrtoint ptr %restart_size to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %sub156, ptr %restart_size, align 4
  %rec_hdr_len = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 9
  %171 = ptrtoint ptr %rec_hdr_len to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %rec_hdr_len, align 4
  %173 = call i16 @llvm.bswap.i16(i16 %172)
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 17
  %174 = ptrtoint ptr %record_header_len to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %173, ptr %record_header_len, align 4
  %ra_len = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 5
  %175 = ptrtoint ptr %ra_len to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %ra_len, align 4
  %177 = call i16 @llvm.bswap.i16(i16 %176)
  %conv157 = zext i16 %177 to i32
  %ra_size = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 23
  %178 = ptrtoint ptr %ra_size to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %conv157, ptr %ra_size, align 8
  %data_off = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 10
  %179 = ptrtoint ptr %data_off to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %data_off, align 2
  %181 = call i16 @llvm.bswap.i16(i16 %180)
  %conv158 = zext i16 %181 to i32
  %data_off159 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 14
  %182 = ptrtoint ptr %data_off159 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %conv158, ptr %data_off159, align 8
  %183 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %page_size14, align 8
  %sub162 = sub i32 %184, %conv158
  %data_size = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 16
  %185 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %sub162, ptr %data_size, align 8
  %conv165 = zext i16 %173 to i32
  %sub166 = sub i32 %sub162, %conv165
  %reserved = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 34
  %186 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub166, ptr %reserved, align 4
  %sh_prom.i = zext i32 %155 to i64
  %shl.i = shl i64 %161, %sh_prom.i
  %sub.i2286 = add i32 %155, -3
  %sh_prom2.i = zext i32 %sub.i2286 to i64
  %shr.i2287 = lshr i64 %shl.i, %sh_prom2.i
  %conv.i2288 = trunc i64 %shr.i2287 to i32
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 11
  %187 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %first_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %188, i32 %conv.i2288)
  %cmp169 = icmp ugt i32 %188, %conv.i2288
  br i1 %cmp169, label %if.then171, label %if.end173

if.then171:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #20
  %l_flags = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %189 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %l_flags, align 4
  %or = or i32 %190, 4
  store i32 %or, ptr %l_flags, align 4
  br label %find_oldest

if.end173:                                        ; preds = %if.end136
  %last_lsn_data_len = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 8
  %191 = ptrtoint ptr %last_lsn_data_len to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %last_lsn_data_len, align 8
  %193 = call i32 @llvm.bswap.i32(i32 %192)
  %call175 = call fastcc i32 @final_log_off(ptr noundef nonnull %call7.i.i, i64 noundef %161, i32 noundef %193)
  call void @__sanitizer_cov_trace_cmp4(i32 %call175, i32 %conv.i2288)
  %cmp176.not = icmp ugt i32 %call175, %conv.i2288
  br i1 %cmp176.not, label %if.end173.if.end182_crit_edge, label %if.then178

if.end173.if.end182_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end182

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #20
  %add = add i64 %shr, 1
  %194 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %add, ptr %seq_num, align 8
  %l_flags180 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %195 = ptrtoint ptr %l_flags180 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %l_flags180, align 4
  %or181 = or i32 %196, 1
  store i32 %or181, ptr %l_flags180, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %if.end173.if.end182_crit_edge
  %sys_page_mask = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 3
  %197 = ptrtoint ptr %sys_page_mask to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %sys_page_mask, align 4
  %neg = xor i32 %198, -1
  %and = and i32 %neg, %conv.i2288
  %199 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %page_size14, align 8
  %201 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %page_mask, align 4
  %and185 = and i32 %202, %call175
  %203 = xor i32 %and185, -1
  %sub187 = add i32 %200, %203
  %204 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %record_header_len, align 4
  %conv189 = zext i16 %205 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub187, i32 %conv189)
  %cmp190.not = icmp ult i32 %sub187, %conv189
  br i1 %cmp190.not, label %if.else, label %if.then192

if.then192:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #20
  %l_flags193 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %206 = ptrtoint ptr %l_flags193 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %l_flags193, align 4
  %or194 = or i32 %207, 16
  store i32 %or194, ptr %l_flags193, align 4
  br label %find_oldest

if.else:                                          ; preds = %if.end182
  %add.i2292 = add i32 %and, %200
  %208 = ptrtoint ptr %l_size8 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %l_size8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i2292, i32 %209)
  %cmp.not.i = icmp ult i32 %add.i2292, %209
  br i1 %cmp.not.i, label %if.else.find_oldest_crit_edge, label %cond.true.i

if.else.find_oldest_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_oldest

cond.true.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %210 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %first_page, align 4
  br label %find_oldest

find_oldest:                                      ; preds = %cond.true.i, %if.else.find_oldest_crit_edge, %if.then192, %if.then171
  %and.sink = phi i32 [ %and, %if.then192 ], [ %188, %if.then171 ], [ %211, %cond.true.i ], [ %add.i2292, %if.else.find_oldest_crit_edge ]
  %next_page195 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 12
  %212 = ptrtoint ptr %next_page195 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %and.sink, ptr %next_page195, align 8
  %213 = ptrtoint ptr %last_lsn147 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %last_lsn147, align 8
  %oldest_lsn = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 26
  %215 = ptrtoint ptr %oldest_lsn to i32
  call void @__asan_store8_noabort(i32 %215)
  store i64 %214, ptr %oldest_lsn, align 8
  %client_off = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 6
  %216 = ptrtoint ptr %client_off to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %client_off, align 2
  %218 = call i16 @llvm.bswap.i16(i16 %217)
  %conv200 = zext i16 %218 to i32
  %add.ptr201 = getelementptr i8, ptr %add.ptr, i32 %conv200
  %219 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %220)
  %cmp.not12.i = icmp eq i16 %220, -1
  br i1 %cmp.not12.i, label %find_oldest.oldest_client_lsn.exit_crit_edge, label %find_oldest.while.body.i_crit_edge

find_oldest.while.body.i_crit_edge:               ; preds = %find_oldest
  br label %while.body.i

find_oldest.oldest_client_lsn.exit_crit_edge:     ; preds = %find_oldest
  call void @__sanitizer_cov_trace_pc() #20
  br label %oldest_client_lsn.exit

while.body.i:                                     ; preds = %if.end.i2298.while.body.i_crit_edge, %find_oldest.while.body.i_crit_edge
  %next_client.addr.013.i = phi i16 [ %229, %if.end.i2298.while.body.i_crit_edge ], [ %220, %find_oldest.while.body.i_crit_edge ]
  %221 = call i16 @llvm.bswap.i16(i16 %next_client.addr.013.i) #18
  %conv2.i = zext i16 %221 to i32
  %add.ptr.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr201, i32 %conv2.i
  %222 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %add.ptr.i, align 8
  %224 = call i64 @llvm.bswap.i64(i64 %223) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %223)
  %tobool.not.i2295 = icmp eq i64 %223, 0
  br i1 %tobool.not.i2295, label %while.body.i.if.end.i2298_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i2298_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i2298

land.lhs.true.i:                                  ; preds = %while.body.i
  %225 = ptrtoint ptr %oldest_lsn to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %oldest_lsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %224, i64 %226)
  %cmp4.i = icmp ult i64 %224, %226
  br i1 %cmp4.i, label %if.then.i2296, label %land.lhs.true.i.if.end.i2298_crit_edge

land.lhs.true.i.if.end.i2298_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i2298

if.then.i2296:                                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %227 = ptrtoint ptr %oldest_lsn to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %224, ptr %oldest_lsn, align 8
  br label %if.end.i2298

if.end.i2298:                                     ; preds = %if.then.i2296, %land.lhs.true.i.if.end.i2298_crit_edge, %while.body.i.if.end.i2298_crit_edge
  %next_client6.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr201, i32 %conv2.i, i32 3
  %228 = ptrtoint ptr %next_client6.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %next_client6.i, align 2
  %cmp.not.i2297 = icmp eq i16 %229, -1
  br i1 %cmp.not.i2297, label %if.end.i2298.oldest_client_lsn.exit_crit_edge, label %if.end.i2298.while.body.i_crit_edge

if.end.i2298.while.body.i_crit_edge:              ; preds = %if.end.i2298
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

if.end.i2298.oldest_client_lsn.exit_crit_edge:    ; preds = %if.end.i2298
  call void @__sanitizer_cov_trace_pc() #20
  br label %oldest_client_lsn.exit

oldest_client_lsn.exit:                           ; preds = %if.end.i2298.oldest_client_lsn.exit_crit_edge, %find_oldest.oldest_client_lsn.exit_crit_edge
  %230 = ptrtoint ptr %oldest_lsn to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %oldest_lsn, align 8
  %232 = ptrtoint ptr %seq_num_bits142 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %seq_num_bits142, align 8
  %sh_prom.i2300 = zext i32 %233 to i64
  %shl.i2301 = shl i64 %231, %sh_prom.i2300
  %sub.i2302 = add i32 %233, -3
  %sh_prom2.i2303 = zext i32 %sub.i2302 to i64
  %shr.i2304 = lshr i64 %shl.i2301, %sh_prom2.i2303
  %conv.i2305 = trunc i64 %shr.i2304 to i32
  %oldest_lsn_off = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 27
  %234 = ptrtoint ptr %oldest_lsn_off to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %conv.i2305, ptr %oldest_lsn_off, align 8
  %235 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %first_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %conv.i2305)
  %cmp209 = icmp ugt i32 %236, %conv.i2305
  br i1 %cmp209, label %if.then211, label %oldest_client_lsn.exit.if.end214_crit_edge

oldest_client_lsn.exit.if.end214_crit_edge:       ; preds = %oldest_client_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end214

if.then211:                                       ; preds = %oldest_client_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  %l_flags212 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %237 = ptrtoint ptr %l_flags212 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %l_flags212, align 4
  %or213 = or i32 %238, 32
  store i32 %or213, ptr %l_flags212, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %oldest_client_lsn.exit.if.end214_crit_edge
  %flags = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 3
  %239 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %flags, align 2
  %241 = and i16 %240, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool217.not = icmp eq i16 %241, 0
  br i1 %tobool217.not, label %if.then218, label %if.end214.if.end221_crit_edge

if.end214.if.end221_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end221

if.then218:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #20
  %l_flags219 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 37
  %242 = ptrtoint ptr %l_flags219 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %l_flags219, align 4
  %or220 = or i32 %243, 3
  store i32 %or220, ptr %l_flags219, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then218, %if.end214.if.end221_crit_edge
  %open_log_count222 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 11
  %244 = ptrtoint ptr %open_log_count222 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %open_log_count222, align 8
  %246 = call i32 @llvm.bswap.i32(i32 %245)
  %current_openlog_count = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 38
  %247 = ptrtoint ptr %current_openlog_count to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %current_openlog_count, align 8
  %248 = ptrtoint ptr %l_size8 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %l_size8, align 4
  %250 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %first_page, align 4
  %sub225 = sub i32 %249, %251
  %total_avail_pages = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 30
  %252 = ptrtoint ptr %total_avail_pages to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %sub225, ptr %total_avail_pages, align 4
  %253 = ptrtoint ptr %page_bits to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %page_bits, align 8
  %conv228 = zext i8 %254 to i32
  %shr229 = lshr i32 %sub225, %conv228
  %total_avail = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 29
  %255 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %reserved, align 4
  %mul = mul i32 %shr229, %256
  %max_current_avail = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 32
  %257 = ptrtoint ptr %max_current_avail to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %mul, ptr %max_current_avail, align 4
  %258 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %data_size, align 8
  %mul234 = mul i32 %259, %shr229
  %260 = ptrtoint ptr %total_avail to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %mul234, ptr %total_avail, align 8
  %call236 = call fastcc i32 @current_log_avail(ptr noundef nonnull %call7.i.i)
  %current_avail = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 33
  %261 = ptrtoint ptr %current_avail to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call236, ptr %current_avail, align 8
  %262 = ptrtoint ptr %restart_size to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %restart_size, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %263, i32 noundef 3392) #22
  %tobool239.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool239.not, label %if.end221.out_crit_edge, label %if.end241

if.end221.out_crit_edge:                          ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end241:                                        ; preds = %if.end221
  %ra242 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 22
  %264 = ptrtoint ptr %ra242 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call9.i.i, ptr %ra242, align 4
  %265 = ptrtoint ptr %client_off to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %client_off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %266)
  %cmp245 = icmp eq i16 %266, 16384
  br i1 %cmp245, label %if.then247, label %if.else249

if.then247:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #20
  %267 = ptrtoint ptr %ra_size to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ra_size, align 8
  %269 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr, i32 %268)
  br label %if.end265

if.else249:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #20
  %270 = call i16 @llvm.bswap.i16(i16 %266)
  %conv244 = zext i16 %270 to i32
  %271 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr, i32 64)
  %clients = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 13
  %add.ptr251 = getelementptr i8, ptr %add.ptr, i32 %conv244
  %272 = ptrtoint ptr %ra_len to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %ra_len, align 4
  %274 = call i16 @llvm.bswap.i16(i16 %273)
  %conv253 = zext i16 %274 to i32
  %sub255 = sub nsw i32 %conv253, %conv244
  %275 = call ptr @memcpy(ptr %clients, ptr %add.ptr251, i32 %sub255)
  %call.i2313 = call i32 @get_random_u32() #18
  %276 = ptrtoint ptr %current_openlog_count to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %call.i2313, ptr %current_openlog_count, align 8
  %277 = call i32 @llvm.bswap.i32(i32 %call.i2313)
  %open_log_count259 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 11
  %278 = ptrtoint ptr %open_log_count259 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %open_log_count259, align 8
  %279 = ptrtoint ptr %ra_size to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 160, ptr %ra_size, align 8
  %client_off261 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 6
  %280 = ptrtoint ptr %client_off261 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 16384, ptr %client_off261, align 2
  %ra_len264 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 5
  %281 = ptrtoint ptr %ra_len264 to i32
  call void @__asan_store2_noabort(i32 %281)
  store i16 -24576, ptr %ra_len264, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.else249, %if.then247
  %open_log_count266 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 11
  %282 = ptrtoint ptr %open_log_count266 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %open_log_count266, align 8
  %284 = call i32 @llvm.bswap.i32(i32 %283) #18
  %add.i2314 = add i32 %284, 1
  %285 = call i32 @llvm.bswap.i32(i32 %add.i2314) #18
  %286 = ptrtoint ptr %open_log_count266 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 %285, ptr %open_log_count266, align 8
  %call267 = call fastcc i32 @last_log_lsn(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call267)
  %tobool268.not = icmp eq i32 %call267, 0
  br i1 %tobool268.not, label %if.end270, label %if.end265.out_crit_edge

if.end265.out_crit_edge:                          ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end270:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #20
  %call271 = call fastcc i32 @current_log_avail(ptr noundef nonnull %call7.i.i)
  %287 = ptrtoint ptr %current_avail to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %call271, ptr %current_avail, align 8
  %288 = ptrtoint ptr %init_ra71 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %frombool72, ptr %init_ra71, align 4
  br label %process_log

process_log:                                      ; preds = %if.end270, %log_create_ra.exit, %if.end35
  %ra.0 = phi ptr [ %call9.i.i.i, %log_create_ra.exit ], [ %call9.i.i, %if.end270 ], [ %call32, %if.end35 ]
  %major_ver277 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 35
  %289 = ptrtoint ptr %major_ver277 to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %major_ver277, align 8
  %conv278 = sext i16 %290 to i32
  %shl279 = shl nsw i32 %conv278, 16
  %minor_ver280 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 36
  %291 = ptrtoint ptr %minor_ver280 to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %minor_ver280, align 2
  %conv281 = sext i16 %292 to i32
  %add282 = add i32 %shl279, %conv281
  %293 = zext i32 %add282 to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add282, label %sw.default [
    i32 65536, label %process_log.sw.epilog_crit_edge
    i32 65537, label %process_log.sw.epilog_crit_edge2660
    i32 131072, label %process_log.sw.epilog_crit_edge2661
  ]

process_log.sw.epilog_crit_edge2661:              ; preds = %process_log
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

process_log.sw.epilog_crit_edge2660:              ; preds = %process_log
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

process_log.sw.epilog_crit_edge:                  ; preds = %process_log
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.default:                                       ; preds = %process_log
  call void @__sanitizer_cov_trace_pc() #20
  %294 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %295, ptr noundef nonnull @.str, i32 noundef %conv278, i32 noundef %conv281) #18
  %set_dirty = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 25
  %296 = ptrtoint ptr %set_dirty to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 1, ptr %set_dirty, align 1
  br label %out

sw.epilog:                                        ; preds = %process_log.sw.epilog_crit_edge, %process_log.sw.epilog_crit_edge2660, %process_log.sw.epilog_crit_edge2661
  %client_off288 = getelementptr inbounds %struct.RESTART_AREA, ptr %ra.0, i32 0, i32 6
  %297 = ptrtoint ptr %client_off288 to i32
  call void @__asan_load2_noabort(i32 %297)
  %298 = load i16, ptr %client_off288, align 2
  %299 = call i16 @llvm.bswap.i16(i16 %298)
  %conv289 = zext i16 %299 to i32
  %add.ptr290 = getelementptr i8, ptr %ra.0, i32 %conv289
  %client_idx291 = getelementptr inbounds %struct.RESTART_AREA, ptr %ra.0, i32 0, i32 2
  %arrayidx292 = getelementptr %struct.RESTART_AREA, ptr %ra.0, i32 0, i32 2, i32 1
  %300 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load2_noabort(i32 %300)
  %client.02491 = load i16, ptr %arrayidx292, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %client.02491)
  %cmp2942492 = icmp eq i16 %client.02491, -1
  br i1 %cmp2942492, label %sw.epilog.if.then296_crit_edge, label %sw.epilog.if.end319_crit_edge

sw.epilog.if.end319_crit_edge:                    ; preds = %sw.epilog
  br label %if.end319

sw.epilog.if.then296_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then296

if.then296:                                       ; preds = %for.inc.if.then296_crit_edge, %sw.epilog.if.then296_crit_edge
  %301 = ptrtoint ptr %client_idx291 to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %client_idx291, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %302)
  %cmp300 = icmp eq i16 %302, -1
  br i1 %cmp300, label %if.then296.cleanup1416_crit_edge, label %if.end303

if.then296.cleanup1416_crit_edge:                 ; preds = %if.then296
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup1416

if.end303:                                        ; preds = %if.then296
  %303 = call i16 @llvm.bswap.i16(i16 %302)
  %conv304 = zext i16 %303 to i32
  %add.ptr305 = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %conv304
  %prev_client.i2315 = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr305, i32 0, i32 2
  %304 = ptrtoint ptr %prev_client.i2315 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %prev_client.i2315, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %305)
  %cmp.i2316 = icmp eq i16 %305, -1
  %next_client.i2317 = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr305, i32 0, i32 3
  %306 = ptrtoint ptr %next_client.i2317 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %next_client.i2317, align 2
  %308 = call i16 @llvm.bswap.i16(i16 %305) #18
  %idxprom.i = zext i16 %308 to i32
  %next_client4.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %idxprom.i, i32 3
  %next_client4.sink.i = select i1 %cmp.i2316, ptr %client_idx291, ptr %next_client4.i
  %309 = ptrtoint ptr %next_client4.sink.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %307, ptr %next_client4.sink.i, align 2
  %310 = ptrtoint ptr %next_client.i2317 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %next_client.i2317, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %311)
  %cmp7.not.i = icmp eq i16 %311, -1
  br i1 %cmp7.not.i, label %if.end303.remove_client.exit_crit_edge, label %if.then9.i

if.end303.remove_client.exit_crit_edge:           ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #20
  br label %remove_client.exit

if.then9.i:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #20
  %312 = call i16 @llvm.bswap.i16(i16 %311) #18
  %idxprom12.i = zext i16 %312 to i32
  %prev_client14.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %idxprom12.i, i32 2
  %313 = ptrtoint ptr %prev_client14.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 %305, ptr %prev_client14.i, align 8
  br label %remove_client.exit

remove_client.exit:                               ; preds = %if.then9.i, %if.end303.remove_client.exit_crit_edge
  %restart_lsn = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr305, i32 0, i32 1
  %314 = ptrtoint ptr %restart_lsn to i32
  call void @__asan_store8_noabort(i32 %314)
  store i64 0, ptr %restart_lsn, align 8
  %oldest_lsn308 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 26
  %315 = ptrtoint ptr %oldest_lsn308 to i32
  call void @__asan_load8_noabort(i32 %315)
  %316 = load i64, ptr %oldest_lsn308, align 8
  %317 = call i64 @llvm.bswap.i64(i64 %316)
  %318 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_store8_noabort(i32 %318)
  store i64 %317, ptr %add.ptr305, align 8
  %name_bytes = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr305, i32 0, i32 6
  %319 = ptrtoint ptr %name_bytes to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 134217728, ptr %name_bytes, align 4
  %name = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr305, i32 0, i32 7
  %320 = ptrtoint ptr %name to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 19968, ptr %name, align 8
  %arrayidx312 = getelementptr [32 x i16], ptr %name, i32 0, i32 1
  %321 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 21504, ptr %arrayidx312, align 2
  %arrayidx314 = getelementptr [32 x i16], ptr %name, i32 0, i32 2
  %322 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 17920, ptr %arrayidx314, align 4
  %arrayidx316 = getelementptr [32 x i16], ptr %name, i32 0, i32 3
  %323 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 21248, ptr %arrayidx316, align 2
  %prev_client.i2319 = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %conv304, i32 2
  %324 = ptrtoint ptr %prev_client.i2319 to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 -1, ptr %prev_client.i2319, align 8
  %325 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %arrayidx292, align 2
  %next_client.i2320 = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %conv304, i32 3
  %327 = ptrtoint ptr %next_client.i2320 to i32
  call void @__asan_store2_noabort(i32 %327)
  store i16 %326, ptr %next_client.i2320, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %326)
  %cmp.not.i2321 = icmp eq i16 %326, -1
  br i1 %cmp.not.i2321, label %remove_client.exit.add_client.exit_crit_edge, label %if.then.i2323

remove_client.exit.add_client.exit_crit_edge:     ; preds = %remove_client.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %add_client.exit

if.then.i2323:                                    ; preds = %remove_client.exit
  call void @__sanitizer_cov_trace_pc() #20
  %328 = call i16 @llvm.bswap.i16(i16 %326) #18
  %idxprom.i2322 = zext i16 %328 to i32
  %prev_client3.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %idxprom.i2322, i32 2
  %329 = ptrtoint ptr %prev_client3.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %302, ptr %prev_client3.i, align 8
  br label %add_client.exit

add_client.exit:                                  ; preds = %if.then.i2323, %remove_client.exit.add_client.exit_crit_edge
  %330 = ptrtoint ptr %arrayidx292 to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %302, ptr %arrayidx292, align 2
  br label %for.end

if.end319:                                        ; preds = %for.inc.if.end319_crit_edge, %sw.epilog.if.end319_crit_edge
  %client.02493 = phi i16 [ %client.0, %for.inc.if.end319_crit_edge ], [ %client.02491, %sw.epilog.if.end319_crit_edge ]
  %331 = call i16 @llvm.bswap.i16(i16 %client.02493)
  %conv320 = zext i16 %331 to i32
  %add.ptr321 = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %conv320
  %name_bytes322 = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr321, i32 0, i32 6
  %332 = ptrtoint ptr %name_bytes322 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %name_bytes322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %333)
  %cmp323 = icmp eq i32 %333, 134217728
  br i1 %cmp323, label %land.lhs.true325, label %if.end319.for.inc_crit_edge

if.end319.for.inc_crit_edge:                      ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true325:                                 ; preds = %if.end319
  %name326 = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr321, i32 0, i32 7
  %334 = ptrtoint ptr %name326 to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %name326, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 19968, i16 %335)
  %cmp329 = icmp eq i16 %335, 19968
  br i1 %cmp329, label %land.lhs.true331, label %land.lhs.true325.for.inc_crit_edge

land.lhs.true325.for.inc_crit_edge:               ; preds = %land.lhs.true325
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true331:                                 ; preds = %land.lhs.true325
  %arrayidx333 = getelementptr [32 x i16], ptr %name326, i32 0, i32 1
  %336 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %arrayidx333, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21504, i16 %337)
  %cmp335 = icmp eq i16 %337, 21504
  br i1 %cmp335, label %land.lhs.true337, label %land.lhs.true331.for.inc_crit_edge

land.lhs.true331.for.inc_crit_edge:               ; preds = %land.lhs.true331
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true337:                                 ; preds = %land.lhs.true331
  %arrayidx339 = getelementptr [32 x i16], ptr %name326, i32 0, i32 2
  %338 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %arrayidx339, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17920, i16 %339)
  %cmp341 = icmp eq i16 %339, 17920
  br i1 %cmp341, label %land.lhs.true343, label %land.lhs.true337.for.inc_crit_edge

land.lhs.true337.for.inc_crit_edge:               ; preds = %land.lhs.true337
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true343:                                 ; preds = %land.lhs.true337
  %arrayidx345 = getelementptr [32 x i16], ptr %name326, i32 0, i32 3
  %340 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load2_noabort(i32 %340)
  %341 = load i16, ptr %arrayidx345, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %341)
  %cmp347 = icmp eq i16 %341, 21248
  br i1 %cmp347, label %land.lhs.true343.for.end_crit_edge, label %land.lhs.true343.for.inc_crit_edge

land.lhs.true343.for.inc_crit_edge:               ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true343.for.end_crit_edge:               ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true343.for.inc_crit_edge, %land.lhs.true337.for.inc_crit_edge, %land.lhs.true331.for.inc_crit_edge, %land.lhs.true325.for.inc_crit_edge, %if.end319.for.inc_crit_edge
  %next_client = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr321, i32 0, i32 3
  %342 = ptrtoint ptr %next_client to i32
  call void @__asan_load2_noabort(i32 %342)
  %client.0 = load i16, ptr %next_client, align 2
  %cmp294 = icmp eq i16 %client.0, -1
  br i1 %cmp294, label %for.inc.if.then296_crit_edge, label %for.inc.if.end319_crit_edge

for.inc.if.end319_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end319

for.inc.if.then296_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then296

for.end:                                          ; preds = %land.lhs.true343.for.end_crit_edge, %add_client.exit
  %343 = phi i32 [ %conv304, %add_client.exit ], [ %conv320, %land.lhs.true343.for.end_crit_edge ]
  %client.1 = phi i16 [ %302, %add_client.exit ], [ %client.02493, %land.lhs.true343.for.end_crit_edge ]
  %344 = getelementptr %struct.CLIENT_REC, ptr %add.ptr290, i32 %343
  %seq_num351 = getelementptr inbounds %struct.CLIENT_REC, ptr %344, i32 0, i32 4
  %345 = ptrtoint ptr %seq_num351 to i32
  call void @__asan_load2_noabort(i32 %345)
  %346 = load i16, ptr %seq_num351, align 4
  %client_id = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 39
  %347 = ptrtoint ptr %client_id to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %346, ptr %client_id, align 4
  %client_idx354 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 39, i32 1
  %348 = ptrtoint ptr %client_idx354 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %client.1, ptr %client_idx354, align 2
  %call355 = call fastcc i32 @read_rst_area(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %rst, ptr noundef nonnull %ra_lsn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %if.end358, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end358:                                        ; preds = %for.end
  %349 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %rst, align 4
  %tobool359.not = icmp eq ptr %350, null
  br i1 %tobool359.not, label %if.end358.out_crit_edge, label %if.end361

if.end358.out_crit_edge:                          ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end361:                                        ; preds = %if.end358
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool363.not = icmp eq i32 %352, 0
  %cond365 = select i1 %tobool363.not, i32 44, i32 40
  %check_point_start = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 2
  %353 = ptrtoint ptr %check_point_start to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %check_point_start, align 8
  %355 = call i64 @llvm.bswap.i64(i64 %354)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %354)
  %tobool366.not = icmp eq i64 %354, 0
  br i1 %tobool366.not, label %if.then367, label %if.end361.if.end368_crit_edge

if.end361.if.end368_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end368

if.then367:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #20
  %356 = ptrtoint ptr %ra_lsn to i32
  call void @__asan_load8_noabort(i32 %356)
  %357 = load i64, ptr %ra_lsn, align 8
  br label %if.end368

if.end368:                                        ; preds = %if.then367, %if.end361.if.end368_crit_edge
  %checkpt_lsn.0 = phi i64 [ %355, %if.end361.if.end368_crit_edge ], [ %357, %if.then367 ]
  %transact_table_len = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 10
  %358 = ptrtoint ptr %transact_table_len to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %transact_table_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool369.not = icmp eq i32 %359, 0
  br i1 %tobool369.not, label %if.end368.check_dirty_page_table_crit_edge, label %if.end371

if.end368.check_dirty_page_table_crit_edge:       ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_dirty_page_table

if.end371:                                        ; preds = %if.end368
  %transact_table_lsn = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 6
  %360 = ptrtoint ptr %transact_table_lsn to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %transact_table_lsn, align 8
  %362 = call i64 @llvm.bswap.i64(i64 %361)
  %call372 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %362, i32 noundef 1, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.end375, label %if.end371.out_crit_edge

if.end371.out_crit_edge:                          ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end375:                                        ; preds = %if.end371
  %363 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %lcb, align 4
  %log_rec = getelementptr inbounds %struct.lcb, ptr %364, i32 0, i32 1
  %365 = ptrtoint ptr %log_rec to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %log_rec, align 4
  %367 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %364, align 4
  %client_data_len = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %368, i32 0, i32 3
  %369 = ptrtoint ptr %client_data_len to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %client_data_len, align 8
  %371 = call i32 @llvm.bswap.i32(i32 %370)
  %transact_id377 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %368, i32 0, i32 6
  %372 = ptrtoint ptr %transact_id377 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %transact_id377, align 4
  %374 = call i32 @llvm.bswap.i32(i32 %373)
  %call378 = call fastcc zeroext i1 @check_log_rec(ptr noundef %366, i32 noundef %371, i32 noundef %374, i32 noundef %cond365)
  br i1 %call378, label %if.end380, label %if.end375.out_crit_edge

if.end375.out_crit_edge:                          ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end380:                                        ; preds = %if.end375
  %redo_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %366, i32 0, i32 2
  %375 = ptrtoint ptr %redo_off to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %redo_off, align 4
  %377 = call i16 @llvm.bswap.i16(i16 %376)
  %conv381 = zext i16 %377 to i32
  %add.ptr382 = getelementptr i8, ptr %366, i32 %conv381
  %sub384 = sub i32 %371, %conv381
  %call385 = call fastcc zeroext i1 @check_rstbl(ptr noundef %add.ptr382, i32 noundef %sub384)
  br i1 %call385, label %if.end387, label %if.end380.out_crit_edge

if.end380.out_crit_edge:                          ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end387:                                        ; preds = %if.end380
  %call388 = call ptr @kmemdup(ptr noundef %add.ptr382, i32 noundef %sub384, i32 noundef 3136) #18
  %378 = ptrtoint ptr %trtbl to i32
  call void @__asan_store4_noabort(i32 %378)
  store ptr %call388, ptr %trtbl, align 4
  %tobool389.not = icmp eq ptr %call388, null
  br i1 %tobool389.not, label %if.end387.out_crit_edge, label %if.end391

if.end387.out_crit_edge:                          ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end391:                                        ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #20
  %379 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %380)
  %381 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr null, ptr %lcb, align 4
  br label %check_dirty_page_table

check_dirty_page_table:                           ; preds = %if.end391, %if.end368.check_dirty_page_table_crit_edge
  %dirty_pages_len = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 9
  %382 = ptrtoint ptr %dirty_pages_len to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %dirty_pages_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool392.not = icmp eq i32 %383, 0
  br i1 %tobool392.not, label %check_dirty_page_table.check_attribute_names_crit_edge, label %if.end394

check_dirty_page_table.check_attribute_names_crit_edge: ; preds = %check_dirty_page_table
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attribute_names

if.end394:                                        ; preds = %check_dirty_page_table
  %dirty_pages_table_lsn = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 5
  %384 = ptrtoint ptr %dirty_pages_table_lsn to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %dirty_pages_table_lsn, align 8
  %386 = call i64 @llvm.bswap.i64(i64 %385)
  %call395 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %386, i32 noundef 1, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395)
  %tobool396.not = icmp eq i32 %call395, 0
  br i1 %tobool396.not, label %if.end398, label %if.end394.out_crit_edge

if.end394.out_crit_edge:                          ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end398:                                        ; preds = %if.end394
  %387 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %lcb, align 4
  %log_rec399 = getelementptr inbounds %struct.lcb, ptr %388, i32 0, i32 1
  %389 = ptrtoint ptr %log_rec399 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %log_rec399, align 4
  %391 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %388, align 4
  %client_data_len401 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %392, i32 0, i32 3
  %393 = ptrtoint ptr %client_data_len401 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %client_data_len401, align 8
  %395 = call i32 @llvm.bswap.i32(i32 %394)
  %transact_id402 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %392, i32 0, i32 6
  %396 = ptrtoint ptr %transact_id402 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %transact_id402, align 4
  %398 = call i32 @llvm.bswap.i32(i32 %397)
  %call403 = call fastcc zeroext i1 @check_log_rec(ptr noundef %390, i32 noundef %395, i32 noundef %398, i32 noundef %cond365)
  br i1 %call403, label %if.end405, label %if.end398.out_crit_edge

if.end398.out_crit_edge:                          ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end405:                                        ; preds = %if.end398
  %redo_off406 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %390, i32 0, i32 2
  %399 = ptrtoint ptr %redo_off406 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %redo_off406, align 4
  %401 = call i16 @llvm.bswap.i16(i16 %400)
  %conv407 = zext i16 %401 to i32
  %add.ptr408 = getelementptr i8, ptr %390, i32 %conv407
  %sub410 = sub i32 %395, %conv407
  %call411 = call fastcc zeroext i1 @check_rstbl(ptr noundef %add.ptr408, i32 noundef %sub410)
  br i1 %call411, label %if.end413, label %if.end405.out_crit_edge

if.end405.out_crit_edge:                          ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end413:                                        ; preds = %if.end405
  %call414 = call ptr @kmemdup(ptr noundef %add.ptr408, i32 noundef %sub410, i32 noundef 3136) #18
  %402 = ptrtoint ptr %dptbl to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %call414, ptr %dptbl, align 4
  %tobool415.not = icmp eq ptr %call414, null
  br i1 %tobool415.not, label %if.end413.out_crit_edge, label %if.end417

if.end413.out_crit_edge:                          ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end417:                                        ; preds = %if.end413
  %403 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %350, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool419.not = icmp eq i32 %404, 0
  br i1 %tobool419.not, label %while.cond.preheader, label %if.end417.end_conv_1_crit_edge

if.end417.end_conv_1_crit_edge:                   ; preds = %if.end417
  call void @__sanitizer_cov_trace_pc() #20
  br label %end_conv_1

while.cond.preheader:                             ; preds = %if.end417
  %call4222494 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call414, ptr noundef null)
  %tobool423.not2495 = icmp eq ptr %call4222494, null
  br i1 %tobool423.not2495, label %while.cond.preheader.end_conv_1_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.end_conv_1_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %end_conv_1

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call4222496 = phi ptr [ %call422, %while.body.while.body_crit_edge ], [ %call4222494, %while.cond.preheader.while.body_crit_edge ]
  %vcn424 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call4222496, i32 0, i32 4
  %vcn_low = getelementptr inbounds %struct.DIR_PAGE_ENTRY_32, ptr %call4222496, i32 0, i32 5
  %lcns_follow = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call4222496, i32 0, i32 3
  %405 = ptrtoint ptr %lcns_follow to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %lcns_follow, align 4
  %407 = call i32 @llvm.bswap.i32(i32 %406)
  %mul425 = shl i32 %407, 3
  %add426 = add i32 %mul425, 16
  %408 = call ptr @memmove(ptr %vcn424, ptr %vcn_low, i32 %add426)
  %call422 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call414, ptr noundef nonnull %call4222496)
  %tobool423.not = icmp eq ptr %call422, null
  br i1 %tobool423.not, label %while.body.end_conv_1_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.body.end_conv_1_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %end_conv_1

end_conv_1:                                       ; preds = %while.body.end_conv_1_crit_edge, %while.cond.preheader.end_conv_1_crit_edge, %if.end417.end_conv_1_crit_edge
  %409 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %410)
  %411 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %411)
  store ptr null, ptr %lcb, align 4
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 3
  %412 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %cluster_size, align 8
  %414 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %page_size14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %413, i32 %415)
  %cmp428.not = icmp ugt i32 %413, %415
  br i1 %cmp428.not, label %while.cond432.preheader, label %end_conv_1.check_attribute_names_crit_edge

end_conv_1.check_attribute_names_crit_edge:       ; preds = %end_conv_1
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attribute_names

while.cond432.preheader:                          ; preds = %end_conv_1
  %call4332497 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call414, ptr noundef null)
  %tobool434.not2498 = icmp eq ptr %call4332497, null
  br i1 %tobool434.not2498, label %while.cond432.preheader.check_attribute_names_crit_edge, label %if.end8.i2328.preheader.lr.ph

while.cond432.preheader.check_attribute_names_crit_edge: ; preds = %while.cond432.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attribute_names

if.end8.i2328.preheader.lr.ph:                    ; preds = %while.cond432.preheader
  %used.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call414, i32 0, i32 1
  %416 = ptrtoint ptr %call414 to i32
  br label %if.end8.i2328.preheader

while.cond432.loopexit:                           ; preds = %if.end458.while.cond432.loopexit_crit_edge, %enum_rstbl.exit.while.cond432.loopexit_crit_edge, %for.inc.i.while.cond432.loopexit_crit_edge, %if.end8.i2328.preheader.while.cond432.loopexit_crit_edge
  %call433 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call414, ptr noundef %call4332499)
  %tobool434.not = icmp eq ptr %call433, null
  br i1 %tobool434.not, label %while.cond432.loopexit.check_attribute_names_crit_edge, label %while.cond432.loopexit.if.end8.i2328.preheader_crit_edge

while.cond432.loopexit.if.end8.i2328.preheader_crit_edge: ; preds = %while.cond432.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i2328.preheader

while.cond432.loopexit.check_attribute_names_crit_edge: ; preds = %while.cond432.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attribute_names

if.end8.i2328.preheader:                          ; preds = %while.cond432.loopexit.if.end8.i2328.preheader_crit_edge, %if.end8.i2328.preheader.lr.ph
  %call4332499 = phi ptr [ %call4332497, %if.end8.i2328.preheader.lr.ph ], [ %call433, %while.cond432.loopexit.if.end8.i2328.preheader_crit_edge ]
  %target_attr440 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call4332499, i32 0, i32 1
  %vcn445 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call4332499, i32 0, i32 4
  %oldest_lsn450 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call4332499, i32 0, i32 5
  %417 = ptrtoint ptr %call414 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %call414, align 4
  %419 = call i16 @llvm.bswap.i16(i16 %418) #18
  %phi.cast.i2621 = zext i16 %419 to i32
  %add.ptr7.i2622 = getelementptr i8, ptr %call4332499, i32 %phi.cast.i2621
  %420 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load2_noabort(i32 %420)
  %421 = load i16, ptr %used.i.i, align 2
  %422 = call i16 @llvm.bswap.i16(i16 %421) #18
  %conv.i.i2623 = zext i16 %422 to i32
  %mul.i.i2624 = mul nuw i32 %phi.cast.i2621, %conv.i.i2623
  %add.i.i2625 = add nuw i32 %mul.i.i2624, 24
  %423 = ptrtoint ptr %add.ptr7.i2622 to i32
  %sub36.i2626 = sub i32 %423, %416
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i2626, i32 %add.i.i2625)
  %cmp37.i2627 = icmp ult i32 %sub36.i2626, %add.i.i2625
  br i1 %cmp37.i2627, label %if.end8.i2328.preheader.for.body.i.preheader_crit_edge, label %if.end8.i2328.preheader.while.cond432.loopexit_crit_edge

if.end8.i2328.preheader.while.cond432.loopexit_crit_edge: ; preds = %if.end8.i2328.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond432.loopexit

if.end8.i2328.preheader.for.body.i.preheader_crit_edge: ; preds = %if.end8.i2328.preheader
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end458.for.body.i.preheader_crit_edge, %if.end8.i2328.preheader.for.body.i.preheader_crit_edge
  %add.i.i2630 = phi i32 [ %add.i.i, %if.end458.for.body.i.preheader_crit_edge ], [ %add.i.i2625, %if.end8.i2328.preheader.for.body.i.preheader_crit_edge ]
  %add.ptr7.i2629 = phi ptr [ %add.ptr7.i, %if.end458.for.body.i.preheader_crit_edge ], [ %add.ptr7.i2622, %if.end8.i2328.preheader.for.body.i.preheader_crit_edge ]
  %phi.cast.i2628 = phi i32 [ %phi.cast.i, %if.end458.for.body.i.preheader_crit_edge ], [ %phi.cast.i2621, %if.end8.i2328.preheader.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %e.138.i = phi ptr [ %add.ptr15.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr7.i2629, %for.body.i.preheader ]
  %424 = ptrtoint ptr %e.138.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %e.138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %425)
  %cmp10.i = icmp eq i32 %425, -1
  br i1 %cmp10.i, label %enum_rstbl.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add.ptr15.i = getelementptr i8, ptr %e.138.i, i32 %phi.cast.i2628
  %426 = ptrtoint ptr %add.ptr15.i to i32
  %sub.i2329 = sub i32 %426, %416
  %cmp.i2330 = icmp ult i32 %sub.i2329, %add.i.i2630
  br i1 %cmp.i2330, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.while.cond432.loopexit_crit_edge

for.inc.i.while.cond432.loopexit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond432.loopexit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

enum_rstbl.exit:                                  ; preds = %for.body.i
  %tobool438.not = icmp eq ptr %e.138.i, null
  br i1 %tobool438.not, label %enum_rstbl.exit.while.cond432.loopexit_crit_edge, label %while.body439

enum_rstbl.exit.while.cond432.loopexit_crit_edge: ; preds = %enum_rstbl.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond432.loopexit

while.body439:                                    ; preds = %enum_rstbl.exit
  %target_attr = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 1
  %427 = ptrtoint ptr %target_attr to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %target_attr, align 4
  %429 = ptrtoint ptr %target_attr440 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %target_attr440, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %428, i32 %430)
  %cmp441 = icmp eq i32 %428, %430
  br i1 %cmp441, label %land.lhs.true443, label %while.body439.if.end458_crit_edge

while.body439.if.end458_crit_edge:                ; preds = %while.body439
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end458

land.lhs.true443:                                 ; preds = %while.body439
  %vcn444 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 4
  %431 = ptrtoint ptr %vcn444 to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %vcn444, align 8
  %433 = ptrtoint ptr %vcn445 to i32
  call void @__asan_load8_noabort(i32 %433)
  %434 = load i64, ptr %vcn445, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %432, i64 %434)
  %cmp446 = icmp eq i64 %432, %434
  br i1 %cmp446, label %if.then448, label %land.lhs.true443.if.end458_crit_edge

land.lhs.true443.if.end458_crit_edge:             ; preds = %land.lhs.true443
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end458

if.then448:                                       ; preds = %land.lhs.true443
  %oldest_lsn449 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 5
  %435 = ptrtoint ptr %oldest_lsn449 to i32
  call void @__asan_load8_noabort(i32 %435)
  %436 = load i64, ptr %oldest_lsn449, align 8
  %437 = call i64 @llvm.bswap.i64(i64 %436)
  %438 = ptrtoint ptr %oldest_lsn450 to i32
  call void @__asan_load8_noabort(i32 %438)
  %439 = load i64, ptr %oldest_lsn450, align 8
  %440 = call i64 @llvm.bswap.i64(i64 %439)
  call void @__sanitizer_cov_trace_cmp8(i64 %437, i64 %440)
  %cmp451 = icmp ult i64 %437, %440
  br i1 %cmp451, label %if.then453, label %if.then448.if.end456_crit_edge

if.then448.if.end456_crit_edge:                   ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end456

if.then453:                                       ; preds = %if.then448
  call void @__sanitizer_cov_trace_pc() #20
  %441 = ptrtoint ptr %oldest_lsn450 to i32
  call void @__asan_store8_noabort(i32 %441)
  store i64 %436, ptr %oldest_lsn450, align 8
  br label %if.end456

if.end456:                                        ; preds = %if.then453, %if.then448.if.end456_crit_edge
  %442 = ptrtoint ptr %e.138.i to i32
  %sub457 = sub i32 %442, %416
  call fastcc void @free_rsttbl_idx(ptr noundef nonnull %call414, i32 noundef %sub457)
  br label %if.end458

if.end458:                                        ; preds = %if.end456, %land.lhs.true443.if.end458_crit_edge, %while.body439.if.end458_crit_edge
  %443 = ptrtoint ptr %call414 to i32
  call void @__asan_load2_noabort(i32 %443)
  %444 = load i16, ptr %call414, align 4
  %445 = call i16 @llvm.bswap.i16(i16 %444) #18
  %phi.cast.i = zext i16 %445 to i32
  %add.ptr7.i = getelementptr i8, ptr %e.138.i, i32 %phi.cast.i
  %446 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %used.i.i, align 2
  %448 = call i16 @llvm.bswap.i16(i16 %447) #18
  %conv.i.i = zext i16 %448 to i32
  %mul.i.i = mul nuw i32 %phi.cast.i, %conv.i.i
  %add.i.i = add nuw i32 %mul.i.i, 24
  %449 = ptrtoint ptr %add.ptr7.i to i32
  %sub36.i = sub i32 %449, %416
  %cmp37.i = icmp ult i32 %sub36.i, %add.i.i
  br i1 %cmp37.i, label %if.end458.for.body.i.preheader_crit_edge, label %if.end458.while.cond432.loopexit_crit_edge

if.end458.while.cond432.loopexit_crit_edge:       ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond432.loopexit

if.end458.for.body.i.preheader_crit_edge:         ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.preheader

check_attribute_names:                            ; preds = %while.cond432.loopexit.check_attribute_names_crit_edge, %while.cond432.preheader.check_attribute_names_crit_edge, %end_conv_1.check_attribute_names_crit_edge, %check_dirty_page_table.check_attribute_names_crit_edge
  %attr_names_len = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 8
  %450 = ptrtoint ptr %attr_names_len to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %attr_names_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %tobool461.not = icmp eq i32 %451, 0
  br i1 %tobool461.not, label %check_attribute_names.check_attr_table_crit_edge, label %if.end463

check_attribute_names.check_attr_table_crit_edge: ; preds = %check_attribute_names
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attr_table

if.end463:                                        ; preds = %check_attribute_names
  %attr_names_lsn = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 4
  %452 = ptrtoint ptr %attr_names_lsn to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %attr_names_lsn, align 8
  %454 = call i64 @llvm.bswap.i64(i64 %453)
  %call464 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %454, i32 noundef 1, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call464)
  %tobool465.not = icmp eq i32 %call464, 0
  br i1 %tobool465.not, label %if.end467, label %if.end463.out_crit_edge

if.end463.out_crit_edge:                          ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end467:                                        ; preds = %if.end463
  %455 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %lcb, align 4
  %log_rec468 = getelementptr inbounds %struct.lcb, ptr %456, i32 0, i32 1
  %457 = ptrtoint ptr %log_rec468 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %log_rec468, align 4
  %459 = ptrtoint ptr %456 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %456, align 4
  %client_data_len470 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %460, i32 0, i32 3
  %461 = ptrtoint ptr %client_data_len470 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %client_data_len470, align 8
  %463 = call i32 @llvm.bswap.i32(i32 %462)
  %transact_id471 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %460, i32 0, i32 6
  %464 = ptrtoint ptr %transact_id471 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %transact_id471, align 4
  %466 = call i32 @llvm.bswap.i32(i32 %465)
  %call472 = call fastcc zeroext i1 @check_log_rec(ptr noundef %458, i32 noundef %463, i32 noundef %466, i32 noundef %cond365)
  br i1 %call472, label %if.end474, label %if.end467.out_crit_edge

if.end467.out_crit_edge:                          ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end474:                                        ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #20
  %lcns_follow.i = getelementptr inbounds %struct.LOG_REC_HDR, ptr %458, i32 0, i32 7
  %467 = ptrtoint ptr %lcns_follow.i to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %lcns_follow.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp.i2332 = icmp eq i16 %468, 0
  %469 = call i16 @llvm.bswap.i16(i16 %468) #18
  %narrow.i = select i1 %cmp.i2332, i16 1, i16 %469
  %cond.i2333 = zext i16 %narrow.i to i32
  %470 = shl nuw nsw i32 %cond.i2333, 3
  %spec.select.i7.i = add nuw nsw i32 %470, 32
  %sub476 = sub i32 %463, %spec.select.i7.i
  %add.ptr477 = getelementptr i8, ptr %458, i32 %spec.select.i7.i
  %call478 = call ptr @kmemdup(ptr noundef %add.ptr477, i32 noundef %sub476, i32 noundef 3136) #18
  %471 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %472)
  %473 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr null, ptr %lcb, align 4
  br label %check_attr_table

check_attr_table:                                 ; preds = %if.end474, %check_attribute_names.check_attr_table_crit_edge
  %attr_names.0 = phi ptr [ %call478, %if.end474 ], [ null, %check_attribute_names.check_attr_table_crit_edge ]
  %open_attr_len = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 7
  %474 = ptrtoint ptr %open_attr_len to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %open_attr_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %475)
  %tobool479.not = icmp eq i32 %475, 0
  br i1 %tobool479.not, label %check_attr_table.check_attribute_names2_crit_edge, label %if.end481

check_attr_table.check_attribute_names2_crit_edge: ; preds = %check_attr_table
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_attribute_names2

if.end481:                                        ; preds = %check_attr_table
  %open_attr_table_lsn = getelementptr inbounds %struct.NTFS_RESTART, ptr %350, i32 0, i32 3
  %476 = ptrtoint ptr %open_attr_table_lsn to i32
  call void @__asan_load8_noabort(i32 %476)
  %477 = load i64, ptr %open_attr_table_lsn, align 8
  %478 = call i64 @llvm.bswap.i64(i64 %477)
  %call482 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %478, i32 noundef 1, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call482)
  %tobool483.not = icmp eq i32 %call482, 0
  br i1 %tobool483.not, label %if.end485, label %if.end481.out_crit_edge

if.end481.out_crit_edge:                          ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end485:                                        ; preds = %if.end481
  %479 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %lcb, align 4
  %log_rec486 = getelementptr inbounds %struct.lcb, ptr %480, i32 0, i32 1
  %481 = ptrtoint ptr %log_rec486 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %log_rec486, align 4
  %483 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %480, align 4
  %client_data_len488 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %484, i32 0, i32 3
  %485 = ptrtoint ptr %client_data_len488 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %client_data_len488, align 8
  %487 = call i32 @llvm.bswap.i32(i32 %486)
  %transact_id489 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %484, i32 0, i32 6
  %488 = ptrtoint ptr %transact_id489 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %transact_id489, align 4
  %490 = call i32 @llvm.bswap.i32(i32 %489)
  %call490 = call fastcc zeroext i1 @check_log_rec(ptr noundef %482, i32 noundef %487, i32 noundef %490, i32 noundef %cond365)
  br i1 %call490, label %if.end492, label %if.end485.out_crit_edge

if.end485.out_crit_edge:                          ; preds = %if.end485
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end492:                                        ; preds = %if.end485
  %redo_off493 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %482, i32 0, i32 2
  %491 = ptrtoint ptr %redo_off493 to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %redo_off493, align 4
  %493 = call i16 @llvm.bswap.i16(i16 %492)
  %conv494 = zext i16 %493 to i32
  %add.ptr495 = getelementptr i8, ptr %482, i32 %conv494
  %sub497 = sub i32 %487, %conv494
  %call498 = call fastcc zeroext i1 @check_rstbl(ptr noundef %add.ptr495, i32 noundef %sub497)
  br i1 %call498, label %if.end500, label %if.end492.out_crit_edge

if.end492.out_crit_edge:                          ; preds = %if.end492
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end500:                                        ; preds = %if.end492
  %call501 = call ptr @kmemdup(ptr noundef %add.ptr495, i32 noundef %sub497, i32 noundef 3136) #18
  %494 = ptrtoint ptr %oatbl to i32
  call void @__asan_store4_noabort(i32 %494)
  store ptr %call501, ptr %oatbl, align 4
  %tobool502.not = icmp eq ptr %call501, null
  br i1 %tobool502.not, label %if.end500.out_crit_edge, label %if.end504

if.end500.out_crit_edge:                          ; preds = %if.end500
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end504:                                        ; preds = %if.end500
  %open_attr_tbl = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 8
  %495 = ptrtoint ptr %open_attr_tbl to i32
  call void @__asan_store4_noabort(i32 %495)
  store ptr %call501, ptr %open_attr_tbl, align 8
  %call5062500 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call501, ptr noundef null)
  %tobool507.not2501 = icmp eq ptr %call5062500, null
  br i1 %tobool507.not2501, label %if.end504.while.end518_crit_edge, label %if.end504.while.body508_crit_edge

if.end504.while.body508_crit_edge:                ; preds = %if.end504
  br label %while.body508

if.end504.while.end518_crit_edge:                 ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end518

while.body508:                                    ; preds = %if.end517.while.body508_crit_edge, %if.end504.while.body508_crit_edge
  %call5062502 = phi ptr [ %call506, %if.end517.while.body508_crit_edge ], [ %call5062500, %if.end504.while.body508_crit_edge ]
  %496 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %350, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %497)
  %tobool510.not = icmp eq i32 %497, 0
  br i1 %tobool510.not, label %if.then511, label %while.body508.if.end517_crit_edge

while.body508.if.end517_crit_edge:                ; preds = %while.body508
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end517

if.then511:                                       ; preds = %while.body508
  call void @__sanitizer_cov_trace_pc() #20
  %oe0.sroa.0.sroa.4.0.call506.sroa_idx = getelementptr inbounds i8, ptr %call5062502, i32 8
  %498 = ptrtoint ptr %oe0.sroa.0.sroa.4.0.call506.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %498)
  %oe0.sroa.0.sroa.4.0.copyload = load i64, ptr %oe0.sroa.0.sroa.4.0.call506.sroa_idx, align 8
  %oe0.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call5062502, i32 16
  %499 = ptrtoint ptr %oe0.sroa.5.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %499)
  %oe0.sroa.5.0.copyload = load i64, ptr %oe0.sroa.5.0..sroa_idx, align 8
  %oe0.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call5062502, i32 24
  %500 = ptrtoint ptr %oe0.sroa.6.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %500)
  %oe0.sroa.6.0.copyload = load i8, ptr %oe0.sroa.6.0..sroa_idx, align 8
  %oe0.sroa.71494.0..sroa_idx = getelementptr inbounds i8, ptr %call5062502, i32 28
  %501 = ptrtoint ptr %oe0.sroa.71494.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %501)
  %oe0.sroa.71494.0.copyload = load i32, ptr %oe0.sroa.71494.0..sroa_idx, align 4
  %oe0.sroa.81495.0..sroa_idx = getelementptr inbounds i8, ptr %call5062502, i32 40
  %502 = ptrtoint ptr %oe0.sroa.81495.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %502)
  %oe0.sroa.81495.0.copyload = load i32, ptr %oe0.sroa.81495.0..sroa_idx, align 8
  %bytes_per_index512 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call5062502, i32 0, i32 1
  %503 = ptrtoint ptr %bytes_per_index512 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 %oe0.sroa.81495.0.copyload, ptr %bytes_per_index512, align 4
  store i32 %oe0.sroa.71494.0.copyload, ptr %oe0.sroa.0.sroa.4.0.call506.sroa_idx, align 8
  %is_dirty_pages514 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call5062502, i32 0, i32 3
  %504 = ptrtoint ptr %is_dirty_pages514 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 %oe0.sroa.6.0.copyload, ptr %is_dirty_pages514, align 4
  %name_len = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call5062502, i32 0, i32 5
  %505 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %name_len, align 2
  store i64 %oe0.sroa.0.sroa.4.0.copyload, ptr %oe0.sroa.5.0..sroa_idx, align 8
  store i64 %oe0.sroa.5.0.copyload, ptr %oe0.sroa.6.0..sroa_idx, align 8
  br label %if.end517

if.end517:                                        ; preds = %if.then511, %while.body508.if.end517_crit_edge
  %is_attr_name = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call5062502, i32 0, i32 4
  %506 = ptrtoint ptr %is_attr_name to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 0, ptr %is_attr_name, align 1
  %ptr = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call5062502, i32 0, i32 9
  %507 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %507)
  store ptr null, ptr %ptr, align 8
  %call506 = call fastcc ptr @enum_rstbl(ptr noundef nonnull %call501, ptr noundef nonnull %call5062502)
  %tobool507.not = icmp eq ptr %call506, null
  br i1 %tobool507.not, label %if.end517.while.end518_crit_edge, label %if.end517.while.body508_crit_edge

if.end517.while.body508_crit_edge:                ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body508

if.end517.while.end518_crit_edge:                 ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end518

while.end518:                                     ; preds = %if.end517.while.end518_crit_edge, %if.end504.while.end518_crit_edge
  %508 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %509)
  %510 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr null, ptr %lcb, align 4
  br label %check_attribute_names2

check_attribute_names2:                           ; preds = %while.end518, %check_attr_table.check_attribute_names2_crit_edge
  %511 = ptrtoint ptr %attr_names_len to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %attr_names_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %512)
  %tobool520.not = icmp eq i32 %512, 0
  br i1 %tobool520.not, label %check_attribute_names2.trace_attribute_table_crit_edge, label %if.end522

check_attribute_names2.trace_attribute_table_crit_edge: ; preds = %check_attribute_names2
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_attribute_table

if.end522:                                        ; preds = %check_attribute_names2
  %513 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %oatbl, align 4
  %tobool523.not = icmp eq ptr %514, null
  br i1 %tobool523.not, label %if.end522.trace_attribute_table_crit_edge, label %while.cond526.preheader

if.end522.trace_attribute_table_crit_edge:        ; preds = %if.end522
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_attribute_table

while.cond526.preheader:                          ; preds = %if.end522
  %515 = ptrtoint ptr %attr_names.0 to i32
  call void @__asan_load2_noabort(i32 %515)
  %516 = load i16, ptr %attr_names.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %516)
  %tobool528.not2503 = icmp eq i16 %516, 0
  br i1 %tobool528.not2503, label %while.cond526.preheader.trace_attribute_table_crit_edge, label %while.cond526.preheader.while.body529_crit_edge

while.cond526.preheader.while.body529_crit_edge:  ; preds = %while.cond526.preheader
  br label %while.body529

while.cond526.preheader.trace_attribute_table_crit_edge: ; preds = %while.cond526.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_attribute_table

while.body529:                                    ; preds = %while.body529.while.body529_crit_edge, %while.cond526.preheader.while.body529_crit_edge
  %517 = phi i16 [ %526, %while.body529.while.body529_crit_edge ], [ %516, %while.cond526.preheader.while.body529_crit_edge ]
  %ane.02504 = phi ptr [ %add.ptr543, %while.body529.while.body529_crit_edge ], [ %attr_names.0, %while.cond526.preheader.while.body529_crit_edge ]
  %518 = call i16 @llvm.bswap.i16(i16 %517)
  %conv531 = zext i16 %518 to i32
  %add.ptr532 = getelementptr i8, ptr %514, i32 %conv531
  %name_bytes533 = getelementptr inbounds %struct.ATTR_NAME_ENTRY, ptr %ane.02504, i32 0, i32 1
  %519 = ptrtoint ptr %name_bytes533 to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %name_bytes533, align 2
  %521 = call i16 @llvm.bswap.i16(i16 %520)
  %conv534 = zext i16 %521 to i32
  %div2225 = lshr i16 %521, 1
  %conv535 = trunc i16 %div2225 to i8
  %name_len536 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr532, i32 0, i32 5
  %522 = ptrtoint ptr %name_len536 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %conv535, ptr %name_len536, align 2
  %name537 = getelementptr inbounds %struct.ATTR_NAME_ENTRY, ptr %ane.02504, i32 0, i32 2
  %ptr539 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr532, i32 0, i32 9
  %523 = ptrtoint ptr %ptr539 to i32
  call void @__asan_store4_noabort(i32 %523)
  store ptr %name537, ptr %ptr539, align 8
  %is_attr_name540 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr532, i32 0, i32 4
  %524 = ptrtoint ptr %is_attr_name540 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 2, ptr %is_attr_name540, align 1
  %add542 = add nuw nsw i32 %conv534, 4
  %add.ptr543 = getelementptr i8, ptr %ane.02504, i32 %add542
  %525 = ptrtoint ptr %add.ptr543 to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %add.ptr543, align 2
  %tobool528.not = icmp eq i16 %526, 0
  br i1 %tobool528.not, label %while.body529.trace_attribute_table_crit_edge, label %while.body529.while.body529_crit_edge

while.body529.while.body529_crit_edge:            ; preds = %while.body529
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body529

while.body529.trace_attribute_table_crit_edge:    ; preds = %while.body529
  call void @__sanitizer_cov_trace_pc() #20
  br label %trace_attribute_table

trace_attribute_table:                            ; preds = %while.body529.trace_attribute_table_crit_edge, %while.cond526.preheader.trace_attribute_table_crit_edge, %if.end522.trace_attribute_table_crit_edge, %check_attribute_names2.trace_attribute_table_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %checkpt_lsn.0)
  %tobool545.not = icmp eq i64 %checkpt_lsn.0, 0
  br i1 %tobool545.not, label %trace_attribute_table.out_crit_edge, label %if.end547

trace_attribute_table.out_crit_edge:              ; preds = %trace_attribute_table
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end547:                                        ; preds = %trace_attribute_table
  %527 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %oatbl, align 4
  %tobool548.not = icmp eq ptr %528, null
  br i1 %tobool548.not, label %if.then549, label %if.end547.if.end555_crit_edge

if.end547.if.end555_crit_edge:                    ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end555

if.then549:                                       ; preds = %if.end547
  %conv550 = trunc i32 %cond365 to i16
  %call551 = call fastcc ptr @init_rsttbl(i16 noundef zeroext %conv550, i16 noundef zeroext 8)
  %529 = ptrtoint ptr %oatbl to i32
  call void @__asan_store4_noabort(i32 %529)
  store ptr %call551, ptr %oatbl, align 4
  %tobool552.not = icmp eq ptr %call551, null
  br i1 %tobool552.not, label %if.then549.out_crit_edge, label %if.then549.if.end555_crit_edge

if.then549.if.end555_crit_edge:                   ; preds = %if.then549
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end555

if.then549.out_crit_edge:                         ; preds = %if.then549
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end555:                                        ; preds = %if.then549.if.end555_crit_edge, %if.end547.if.end555_crit_edge
  %530 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %oatbl, align 4
  %open_attr_tbl556 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 8
  %532 = ptrtoint ptr %open_attr_tbl556 to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr %531, ptr %open_attr_tbl556, align 8
  %533 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_store8_noabort(i32 %533)
  store i64 %checkpt_lsn.0, ptr %rec_lsn, align 8
  %call557 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %checkpt_lsn.0, i32 noundef 2, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool558.not = icmp eq i32 %call557, 0
  br i1 %tobool558.not, label %next_log_record_analyze.preheader, label %if.end555.out_crit_edge

if.end555.out_crit_edge:                          ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

next_log_record_analyze.preheader:                ; preds = %if.end555
  %534 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %lcb, align 4
  %call5612515 = call fastcc i32 @read_next_log_rec(ptr noundef nonnull %call7.i.i, ptr noundef %535, ptr noundef nonnull %rec_lsn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5612515)
  %tobool562.not2516 = icmp eq i32 %call5612515, 0
  br i1 %tobool562.not2516, label %if.end564.lr.ph, label %next_log_record_analyze.preheader.out_crit_edge

next_log_record_analyze.preheader.out_crit_edge:  ; preds = %next_log_record_analyze.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end564.lr.ph:                                  ; preds = %next_log_record_analyze.preheader
  %clst_per_page = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 10
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  br label %if.end564

if.end564:                                        ; preds = %next_log_record_analyze.backedge.if.end564_crit_edge, %if.end564.lr.ph
  %rlsn.02517 = phi i64 [ 0, %if.end564.lr.ph ], [ %spec.select2475, %next_log_record_analyze.backedge.if.end564_crit_edge ]
  %536 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %536)
  %537 = load i64, ptr %rec_lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %537)
  %tobool565.not = icmp eq i64 %537, 0
  %538 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %lcb, align 4
  br i1 %tobool565.not, label %end_log_records_enumerate, label %if.end567

if.end567:                                        ; preds = %if.end564
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %539, align 4
  %transact_id569 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %541, i32 0, i32 6
  %542 = ptrtoint ptr %transact_id569 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %transact_id569, align 4
  %544 = call i32 @llvm.bswap.i32(i32 %543)
  %client_data_len570 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %541, i32 0, i32 3
  %545 = ptrtoint ptr %client_data_len570 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %client_data_len570, align 8
  %547 = call i32 @llvm.bswap.i32(i32 %546)
  %log_rec571 = getelementptr inbounds %struct.lcb, ptr %539, i32 0, i32 1
  %548 = ptrtoint ptr %log_rec571 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %log_rec571, align 4
  %call572 = call fastcc zeroext i1 @check_log_rec(ptr noundef %549, i32 noundef %547, i32 noundef %544, i32 noundef %cond365)
  br i1 %call572, label %if.end574, label %if.end567.out_crit_edge

if.end567.out_crit_edge:                          ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end574:                                        ; preds = %if.end567
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rlsn.02517)
  %tobool575.not = icmp eq i64 %rlsn.02517, 0
  %spec.select2475 = select i1 %tobool575.not, i64 %537, i64 %rlsn.02517
  %record_type = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %541, i32 0, i32 5
  %550 = ptrtoint ptr %record_type to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %record_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %551)
  %cmp578.not = icmp eq i32 %551, 16777216
  br i1 %cmp578.not, label %if.end581, label %if.end574.next_log_record_analyze.backedge_crit_edge

if.end574.next_log_record_analyze.backedge_crit_edge: ; preds = %if.end574
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

if.end581:                                        ; preds = %if.end574
  %552 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %trtbl, align 4
  %tobool582.not = icmp eq ptr %553, null
  br i1 %tobool582.not, label %if.then583, label %if.end581.if.end588_crit_edge

if.end581.if.end588_crit_edge:                    ; preds = %if.end581
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end588

if.then583:                                       ; preds = %if.end581
  %call584 = call fastcc ptr @init_rsttbl(i16 noundef zeroext 40, i16 noundef zeroext 5)
  %554 = ptrtoint ptr %trtbl to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr %call584, ptr %trtbl, align 4
  %tobool585.not = icmp eq ptr %call584, null
  br i1 %tobool585.not, label %if.then583.out_crit_edge, label %if.then583.if.end588_crit_edge

if.then583.if.end588_crit_edge:                   ; preds = %if.then583
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end588

if.then583.out_crit_edge:                         ; preds = %if.then583
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end588:                                        ; preds = %if.then583.if.end588_crit_edge, %if.end581.if.end588_crit_edge
  %555 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %trtbl, align 4
  %used.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %556, i32 0, i32 1
  %557 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %used.i, align 2
  %559 = call i16 @llvm.bswap.i16(i16 %558) #18
  %conv.i2334 = zext i16 %559 to i32
  %560 = ptrtoint ptr %556 to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %556, align 4
  %562 = call i16 @llvm.bswap.i16(i16 %561) #18
  %conv1.i = zext i16 %562 to i32
  %mul.i2335 = mul nuw i32 %conv1.i, %conv.i2334
  %add.i2336 = add nuw i32 %mul.i2335, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %544, i32 %add.i2336)
  %cmp591.not = icmp ult i32 %544, %add.i2336
  br i1 %cmp591.not, label %lor.lhs.false593, label %if.end588.if.then597_crit_edge

if.end588.if.then597_crit_edge:                   ; preds = %if.end588
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then597

lor.lhs.false593:                                 ; preds = %if.end588
  %add.ptr589 = getelementptr i8, ptr %556, i32 %544
  %563 = ptrtoint ptr %add.ptr589 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %add.ptr589, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %564)
  %cmp595.not = icmp eq i32 %564, -1
  br i1 %cmp595.not, label %lor.lhs.false593.if.end602_crit_edge, label %lor.lhs.false593.if.then597_crit_edge

lor.lhs.false593.if.then597_crit_edge:            ; preds = %lor.lhs.false593
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then597

lor.lhs.false593.if.end602_crit_edge:             ; preds = %lor.lhs.false593
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end602

if.then597:                                       ; preds = %lor.lhs.false593.if.then597_crit_edge, %if.end588.if.then597_crit_edge
  %call598 = call fastcc ptr @alloc_rsttbl_from_idx(ptr noundef nonnull %trtbl, i32 noundef %544)
  %tobool599.not = icmp eq ptr %call598, null
  br i1 %tobool599.not, label %if.then597.out_crit_edge, label %if.end601

if.then597.out_crit_edge:                         ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end601:                                        ; preds = %if.then597
  call void @__sanitizer_cov_trace_pc() #20
  %transact_state = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %call598, i32 0, i32 1
  %565 = ptrtoint ptr %transact_state to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 1, ptr %transact_state, align 4
  %566 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %566)
  %567 = load i64, ptr %rec_lsn, align 8
  %568 = call i64 @llvm.bswap.i64(i64 %567)
  %first_lsn = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %call598, i32 0, i32 3
  %569 = ptrtoint ptr %first_lsn to i32
  call void @__asan_store8_noabort(i32 %569)
  store i64 %568, ptr %first_lsn, align 8
  br label %if.end602

if.end602:                                        ; preds = %if.end601, %lor.lhs.false593.if.end602_crit_edge
  %tr.0 = phi ptr [ %call598, %if.end601 ], [ %add.ptr589, %lor.lhs.false593.if.end602_crit_edge ]
  %570 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %570)
  %571 = load i64, ptr %rec_lsn, align 8
  %572 = call i64 @llvm.bswap.i64(i64 %571)
  %undo_next_lsn603 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %tr.0, i32 0, i32 5
  %573 = ptrtoint ptr %undo_next_lsn603 to i32
  call void @__asan_store8_noabort(i32 %573)
  store i64 %572, ptr %undo_next_lsn603, align 8
  %prev_lsn = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %tr.0, i32 0, i32 4
  %574 = ptrtoint ptr %prev_lsn to i32
  call void @__asan_store8_noabort(i32 %574)
  store i64 %572, ptr %prev_lsn, align 8
  %undo_op = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 1
  %575 = ptrtoint ptr %undo_op to i32
  call void @__asan_load2_noabort(i32 %575)
  %576 = load i16, ptr %undo_op, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %576)
  %cmp605 = icmp eq i16 %576, 256
  br i1 %cmp605, label %if.then607, label %if.end602.if.end609_crit_edge

if.end602.if.end609_crit_edge:                    ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end609

if.then607:                                       ; preds = %if.end602
  call void @__sanitizer_cov_trace_pc() #20
  %client_undo_next_lsn = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %541, i32 0, i32 2
  %577 = ptrtoint ptr %client_undo_next_lsn to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %client_undo_next_lsn, align 8
  %579 = ptrtoint ptr %undo_next_lsn603 to i32
  call void @__asan_store8_noabort(i32 %579)
  store i64 %578, ptr %undo_next_lsn603, align 8
  br label %if.end609

if.end609:                                        ; preds = %if.then607, %if.end602.if.end609_crit_edge
  %580 = ptrtoint ptr %549 to i32
  call void @__asan_load2_noabort(i32 %580)
  %581 = load i16, ptr %549, align 8
  %582 = call i16 @llvm.bswap.i16(i16 %581)
  %583 = zext i16 %582 to i64
  call void @__sanitizer_cov_trace_switch(i64 %583, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %582, label %if.end609.next_log_record_analyze.backedge_crit_edge [
    i16 2, label %if.end609.sw.bb611_crit_edge
    i16 3, label %if.end609.sw.bb611_crit_edge2662
    i16 4, label %if.end609.sw.bb611_crit_edge2663
    i16 5, label %if.end609.sw.bb611_crit_edge2664
    i16 6, label %if.end609.sw.bb611_crit_edge2665
    i16 7, label %if.end609.sw.bb611_crit_edge2666
    i16 8, label %if.end609.sw.bb611_crit_edge2667
    i16 9, label %if.end609.sw.bb611_crit_edge2668
    i16 11, label %if.end609.sw.bb611_crit_edge2669
    i16 12, label %if.end609.sw.bb611_crit_edge2670
    i16 13, label %if.end609.sw.bb611_crit_edge2671
    i16 14, label %if.end609.sw.bb611_crit_edge2672
    i16 15, label %if.end609.sw.bb611_crit_edge2673
    i16 16, label %if.end609.sw.bb611_crit_edge2674
    i16 17, label %if.end609.sw.bb611_crit_edge2675
    i16 18, label %if.end609.sw.bb611_crit_edge2676
    i16 19, label %if.end609.sw.bb611_crit_edge2677
    i16 20, label %if.end609.sw.bb611_crit_edge2678
    i16 21, label %if.end609.sw.bb611_crit_edge2679
    i16 22, label %if.end609.sw.bb611_crit_edge2680
    i16 33, label %if.end609.sw.bb611_crit_edge2681
    i16 34, label %if.end609.sw.bb611_crit_edge2682
    i16 37, label %if.end609.sw.bb611_crit_edge2683
    i16 10, label %sw.bb662
    i16 28, label %sw.bb706
    i16 23, label %sw.bb778
    i16 24, label %sw.bb800
    i16 25, label %sw.bb805
    i16 26, label %sw.bb808
    i16 27, label %sw.bb811
  ]

if.end609.sw.bb611_crit_edge2683:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2682:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2681:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2680:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2679:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2678:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2677:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2676:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2675:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2674:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2673:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2672:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2671:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2670:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2669:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2668:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2667:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2666:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2665:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2664:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2663:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge2662:                 ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.sw.bb611_crit_edge:                     ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb611

if.end609.next_log_record_analyze.backedge_crit_edge: ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

sw.bb611:                                         ; preds = %if.end609.sw.bb611_crit_edge, %if.end609.sw.bb611_crit_edge2662, %if.end609.sw.bb611_crit_edge2663, %if.end609.sw.bb611_crit_edge2664, %if.end609.sw.bb611_crit_edge2665, %if.end609.sw.bb611_crit_edge2666, %if.end609.sw.bb611_crit_edge2667, %if.end609.sw.bb611_crit_edge2668, %if.end609.sw.bb611_crit_edge2669, %if.end609.sw.bb611_crit_edge2670, %if.end609.sw.bb611_crit_edge2671, %if.end609.sw.bb611_crit_edge2672, %if.end609.sw.bb611_crit_edge2673, %if.end609.sw.bb611_crit_edge2674, %if.end609.sw.bb611_crit_edge2675, %if.end609.sw.bb611_crit_edge2676, %if.end609.sw.bb611_crit_edge2677, %if.end609.sw.bb611_crit_edge2678, %if.end609.sw.bb611_crit_edge2679, %if.end609.sw.bb611_crit_edge2680, %if.end609.sw.bb611_crit_edge2681, %if.end609.sw.bb611_crit_edge2682, %if.end609.sw.bb611_crit_edge2683
  %target_attr612 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 6
  %584 = ptrtoint ptr %target_attr612 to i32
  call void @__asan_load2_noabort(i32 %584)
  %585 = load i16, ptr %target_attr612, align 4
  %586 = call i16 @llvm.bswap.i16(i16 %585)
  %target_vcn = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 12
  %587 = ptrtoint ptr %target_vcn to i32
  call void @__asan_load8_noabort(i32 %587)
  %588 = load i64, ptr %target_vcn, align 8
  %589 = call i64 @llvm.bswap.i64(i64 %588)
  %590 = ptrtoint ptr %dptbl to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %dptbl, align 4
  %conv613 = zext i16 %586 to i32
  %call614 = call fastcc ptr @find_dp(ptr noundef %591, i32 noundef %conv613, i64 noundef %589)
  %tobool615.not = icmp eq ptr %call614, null
  br i1 %tobool615.not, label %if.end617, label %sw.bb611.copy_lcns_crit_edge

sw.bb611.copy_lcns_crit_edge:                     ; preds = %sw.bb611
  call void @__sanitizer_cov_trace_pc() #20
  br label %copy_lcns

if.end617:                                        ; preds = %sw.bb611
  %tobool618.not = icmp eq ptr %591, null
  br i1 %tobool618.not, label %if.else624, label %if.then619

if.then619:                                       ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #20
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_load2_noabort(i32 %592)
  %593 = load i16, ptr %591, align 4
  %594 = call i16 @llvm.bswap.i16(i16 %593)
  %conv621 = zext i16 %594 to i32
  %sub622 = add nsw i32 %conv621, -32
  %div6232224 = lshr i32 %sub622, 3
  br label %if.end631

if.else624:                                       ; preds = %if.end617
  %595 = ptrtoint ptr %clst_per_page to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %clst_per_page, align 8
  call void @kfree(ptr noundef null) #18
  %597 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %596, i32 8) #18
  %598 = extractvalue { i32, i1 } %597, 1
  %599 = extractvalue { i32, i1 } %597, 0
  %spec.select.i2337 = call i32 @llvm.uadd.sat.i32(i32 %599, i32 32) #18
  %600 = trunc i32 %spec.select.i2337 to i16
  %conv626 = select i1 %598, i16 -1, i16 %600
  %call627 = call fastcc ptr @init_rsttbl(i16 noundef zeroext %conv626, i16 noundef zeroext 32)
  %601 = ptrtoint ptr %dptbl to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %call627, ptr %dptbl, align 4
  %tobool628.not = icmp eq ptr %call627, null
  br i1 %tobool628.not, label %if.else624.out_crit_edge, label %if.else624.if.end631_crit_edge

if.else624.if.end631_crit_edge:                   ; preds = %if.else624
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end631

if.else624.out_crit_edge:                         ; preds = %if.else624
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end631:                                        ; preds = %if.else624.if.end631_crit_edge, %if.then619
  %t32.0 = phi i32 [ %div6232224, %if.then619 ], [ %596, %if.else624.if.end631_crit_edge ]
  %call632 = call fastcc ptr @alloc_rsttbl_idx(ptr noundef nonnull %dptbl)
  %tobool633.not = icmp eq ptr %call632, null
  br i1 %tobool633.not, label %if.end631.out_crit_edge, label %if.end635

if.end631.out_crit_edge:                          ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end635:                                        ; preds = %if.end631
  call void @__sanitizer_cov_trace_pc() #20
  %602 = call i32 @llvm.bswap.i32(i32 %conv613)
  %target_attr637 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call632, i32 0, i32 1
  %603 = ptrtoint ptr %target_attr637 to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 %602, ptr %target_attr637, align 4
  %604 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %cluster_bits, align 8
  %conv638 = zext i8 %605 to i32
  %shl639 = shl i32 %t32.0, %conv638
  %606 = call i32 @llvm.bswap.i32(i32 %shl639)
  %transfer_len = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call632, i32 0, i32 2
  %607 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 %606, ptr %transfer_len, align 8
  %608 = call i32 @llvm.bswap.i32(i32 %t32.0)
  %lcns_follow640 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call632, i32 0, i32 3
  %609 = ptrtoint ptr %lcns_follow640 to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 %608, ptr %lcns_follow640, align 4
  %conv641 = zext i32 %t32.0 to i64
  %neg643 = sub nsw i64 0, %conv641
  %and644 = and i64 %589, %neg643
  %610 = call i64 @llvm.bswap.i64(i64 %and644)
  %vcn645 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call632, i32 0, i32 4
  %611 = ptrtoint ptr %vcn645 to i32
  call void @__asan_store8_noabort(i32 %611)
  store i64 %610, ptr %vcn645, align 8
  %612 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %612)
  %613 = load i64, ptr %rec_lsn, align 8
  %614 = call i64 @llvm.bswap.i64(i64 %613)
  %oldest_lsn646 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call632, i32 0, i32 5
  %615 = ptrtoint ptr %oldest_lsn646 to i32
  call void @__asan_store8_noabort(i32 %615)
  store i64 %614, ptr %oldest_lsn646, align 8
  br label %copy_lcns

copy_lcns:                                        ; preds = %if.end635, %sw.bb611.copy_lcns_crit_edge
  %dp.2 = phi ptr [ %call614, %sw.bb611.copy_lcns_crit_edge ], [ %call632, %if.end635 ]
  %lcns_follow647 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 7
  %616 = ptrtoint ptr %lcns_follow647 to i32
  call void @__asan_load2_noabort(i32 %616)
  %617 = load i16, ptr %lcns_follow647, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %617)
  %cmp6502513.not = icmp eq i16 %617, 0
  br i1 %cmp6502513.not, label %copy_lcns.next_log_record_analyze.backedge_crit_edge, label %for.body.lr.ph

copy_lcns.next_log_record_analyze.backedge_crit_edge: ; preds = %copy_lcns
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

for.body.lr.ph:                                   ; preds = %copy_lcns
  %618 = call i16 @llvm.bswap.i16(i16 %617)
  %vcn653 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %dp.2, i32 0, i32 4
  %619 = call i16 @llvm.umax.i16(i16 %618, i16 1)
  %umax2579 = zext i16 %619 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.02514 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %620 = ptrtoint ptr %target_vcn to i32
  call void @__asan_load8_noabort(i32 %620)
  %621 = load i64, ptr %target_vcn, align 8
  %622 = call i64 @llvm.bswap.i64(i64 %621)
  %623 = ptrtoint ptr %vcn653 to i32
  call void @__asan_load8_noabort(i32 %623)
  %624 = load i64, ptr %vcn653, align 8
  %625 = call i64 @llvm.bswap.i64(i64 %624)
  %sub654 = sub i64 %622, %625
  %conv655 = trunc i64 %sub654 to i32
  %arrayidx656 = getelementptr %struct.LOG_REC_HDR, ptr %549, i32 0, i32 13, i32 %i.02514
  %626 = ptrtoint ptr %arrayidx656 to i32
  call void @__asan_load8_noabort(i32 %626)
  %627 = load i64, ptr %arrayidx656, align 8
  %add658 = add i32 %i.02514, %conv655
  %arrayidx659 = getelementptr %struct.DIR_PAGE_ENTRY, ptr %dp.2, i32 0, i32 6, i32 %add658
  %628 = ptrtoint ptr %arrayidx659 to i32
  call void @__asan_store8_noabort(i32 %628)
  store i64 %627, ptr %arrayidx659, align 8
  %inc = add nuw nsw i32 %i.02514, 1
  %exitcond2580.not = icmp eq i32 %inc, %umax2579
  br i1 %exitcond2580.not, label %for.body.next_log_record_analyze.backedge_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.next_log_record_analyze.backedge_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

sw.bb662:                                         ; preds = %if.end609
  %redo_len = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 3
  %629 = ptrtoint ptr %redo_len to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %redo_len, align 2
  %631 = call i16 @llvm.bswap.i16(i16 %630)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %631)
  %cmp6692510.not = icmp ult i16 %631, 16
  br i1 %cmp6692510.not, label %sw.bb662.next_log_record_analyze.backedge_crit_edge, label %for.body671.lr.ph

sw.bb662.next_log_record_analyze.backedge_crit_edge: ; preds = %sw.bb662
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

for.body671.lr.ph:                                ; preds = %sw.bb662
  %632 = lshr i16 %631, 4
  %redo_off665 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 2
  %633 = ptrtoint ptr %redo_off665 to i32
  call void @__asan_load2_noabort(i32 %633)
  %634 = load i16, ptr %redo_off665, align 4
  %635 = call i16 @llvm.bswap.i16(i16 %634)
  %conv666 = zext i16 %635 to i32
  %add.ptr667 = getelementptr i8, ptr %549, i32 %conv666
  %636 = ptrtoint ptr %dptbl to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %dptbl, align 4
  %umax2577 = zext i16 %632 to i32
  br label %for.body671

for.body671:                                      ; preds = %while.end700.for.body671_crit_edge, %for.body671.lr.ph
  %r.02512 = phi ptr [ %add.ptr667, %for.body671.lr.ph ], [ %incdec.ptr, %while.end700.for.body671_crit_edge ]
  %i.12511 = phi i32 [ 0, %for.body671.lr.ph ], [ %inc702, %while.end700.for.body671_crit_edge ]
  %638 = ptrtoint ptr %r.02512 to i32
  call void @__asan_load8_noabort(i32 %638)
  %639 = load i64, ptr %r.02512, align 8
  %640 = call i64 @llvm.bswap.i64(i64 %639)
  %len = getelementptr inbounds %struct.LCN_RANGE, ptr %r.02512, i32 0, i32 1
  %641 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %641)
  %642 = load i64, ptr %len, align 8
  %643 = call i64 @llvm.bswap.i64(i64 %642)
  %add674 = add i64 %640, -1
  %sub675 = add i64 %add674, %643
  %call6772507 = call fastcc ptr @enum_rstbl(ptr noundef %637, ptr noundef null)
  %tobool678.not2508 = icmp eq ptr %call6772507, null
  br i1 %tobool678.not2508, label %for.body671.while.end700_crit_edge, label %for.body671.while.body679_crit_edge

for.body671.while.body679_crit_edge:              ; preds = %for.body671
  br label %while.body679

for.body671.while.end700_crit_edge:               ; preds = %for.body671
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end700

while.cond676.loopexit:                           ; preds = %for.inc697.while.cond676.loopexit_crit_edge, %while.body679.while.cond676.loopexit_crit_edge
  %call677 = call fastcc ptr @enum_rstbl(ptr noundef %637, ptr noundef %call6772509)
  %tobool678.not = icmp eq ptr %call677, null
  br i1 %tobool678.not, label %while.cond676.loopexit.while.end700_crit_edge, label %while.cond676.loopexit.while.body679_crit_edge

while.cond676.loopexit.while.body679_crit_edge:   ; preds = %while.cond676.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body679

while.cond676.loopexit.while.end700_crit_edge:    ; preds = %while.cond676.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end700

while.body679:                                    ; preds = %while.cond676.loopexit.while.body679_crit_edge, %for.body671.while.body679_crit_edge
  %call6772509 = phi ptr [ %call677, %while.cond676.loopexit.while.body679_crit_edge ], [ %call6772507, %for.body671.while.body679_crit_edge ]
  %lcns_follow681 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call6772509, i32 0, i32 3
  %644 = ptrtoint ptr %lcns_follow681 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %lcns_follow681, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %645)
  %cmp6832505.not = icmp eq i32 %645, 0
  br i1 %cmp6832505.not, label %while.body679.while.cond676.loopexit_crit_edge, label %for.body685.preheader

while.body679.while.cond676.loopexit_crit_edge:   ; preds = %while.body679
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond676.loopexit

for.body685.preheader:                            ; preds = %while.body679
  %646 = call i32 @llvm.bswap.i32(i32 %645)
  %umax = call i32 @llvm.umax.i32(i32 %646, i32 1)
  br label %for.body685

for.body685:                                      ; preds = %for.inc697.for.body685_crit_edge, %for.body685.preheader
  %j680.02506 = phi i32 [ %inc698, %for.inc697.for.body685_crit_edge ], [ 0, %for.body685.preheader ]
  %arrayidx687 = getelementptr %struct.DIR_PAGE_ENTRY, ptr %call6772509, i32 0, i32 6, i32 %j680.02506
  %647 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_load8_noabort(i32 %647)
  %648 = load i64, ptr %arrayidx687, align 8
  %649 = call i64 @llvm.bswap.i64(i64 %648)
  call void @__sanitizer_cov_trace_cmp8(i64 %649, i64 %640)
  %cmp688.not = icmp ult i64 %649, %640
  call void @__sanitizer_cov_trace_cmp8(i64 %649, i64 %sub675)
  %cmp691.not = icmp ugt i64 %649, %sub675
  %or.cond = select i1 %cmp688.not, i1 true, i1 %cmp691.not
  br i1 %or.cond, label %for.body685.for.inc697_crit_edge, label %if.then693

for.body685.for.inc697_crit_edge:                 ; preds = %for.body685
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc697

if.then693:                                       ; preds = %for.body685
  call void @__sanitizer_cov_trace_pc() #20
  %650 = ptrtoint ptr %arrayidx687 to i32
  call void @__asan_store8_noabort(i32 %650)
  store i64 0, ptr %arrayidx687, align 8
  br label %for.inc697

for.inc697:                                       ; preds = %if.then693, %for.body685.for.inc697_crit_edge
  %inc698 = add nuw i32 %j680.02506, 1
  %exitcond.not = icmp eq i32 %inc698, %umax
  br i1 %exitcond.not, label %for.inc697.while.cond676.loopexit_crit_edge, label %for.inc697.for.body685_crit_edge

for.inc697.for.body685_crit_edge:                 ; preds = %for.inc697
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body685

for.inc697.while.cond676.loopexit_crit_edge:      ; preds = %for.inc697
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond676.loopexit

while.end700:                                     ; preds = %while.cond676.loopexit.while.end700_crit_edge, %for.body671.while.end700_crit_edge
  %inc702 = add nuw nsw i32 %i.12511, 1
  %incdec.ptr = getelementptr %struct.LCN_RANGE, ptr %r.02512, i32 1
  %exitcond2578.not = icmp eq i32 %inc702, %umax2577
  br i1 %exitcond2578.not, label %while.end700.next_log_record_analyze.backedge_crit_edge, label %while.end700.for.body671_crit_edge

while.end700.for.body671_crit_edge:               ; preds = %while.end700
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body671

while.end700.next_log_record_analyze.backedge_crit_edge: ; preds = %while.end700
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

sw.bb706:                                         ; preds = %if.end609
  %target_attr707 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 6
  %651 = ptrtoint ptr %target_attr707 to i32
  call void @__asan_load2_noabort(i32 %651)
  %652 = load i16, ptr %target_attr707, align 4
  %653 = call i16 @llvm.bswap.i16(i16 %652)
  %conv708 = zext i16 %653 to i32
  %654 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %oatbl, align 4
  %used.i2339 = getelementptr inbounds %struct.RESTART_TABLE, ptr %655, i32 0, i32 1
  %656 = ptrtoint ptr %used.i2339 to i32
  call void @__asan_load2_noabort(i32 %656)
  %657 = load i16, ptr %used.i2339, align 2
  %658 = call i16 @llvm.bswap.i16(i16 %657) #18
  %conv.i2340 = zext i16 %658 to i32
  %659 = ptrtoint ptr %655 to i32
  call void @__asan_load2_noabort(i32 %659)
  %660 = load i16, ptr %655, align 4
  %661 = call i16 @llvm.bswap.i16(i16 %660) #18
  %conv1.i2341 = zext i16 %661 to i32
  %mul.i2342 = mul nuw i32 %conv1.i2341, %conv.i2340
  %add.i2343 = add nuw i32 %mul.i2342, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i2343, i32 %conv708)
  %cmp710.not = icmp ugt i32 %add.i2343, %conv708
  br i1 %cmp710.not, label %sw.bb706.if.end727_crit_edge, label %if.then712

sw.bb706.if.end727_crit_edge:                     ; preds = %sw.bb706
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end727

if.then712:                                       ; preds = %sw.bb706
  %662 = udiv i16 %653, %661
  %div716 = zext i16 %662 to i32
  %sub718 = sub nsw i32 10, %conv.i2340
  %add719 = add nsw i32 %sub718, %div716
  %call720 = call fastcc ptr @extend_rsttbl(ptr noundef %655, i32 noundef %add719, i32 noundef -1)
  %663 = ptrtoint ptr %oatbl to i32
  call void @__asan_store4_noabort(i32 %663)
  store ptr %call720, ptr %oatbl, align 4
  %664 = ptrtoint ptr %open_attr_tbl556 to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %call720, ptr %open_attr_tbl556, align 8
  %tobool722.not = icmp eq ptr %call720, null
  br i1 %tobool722.not, label %if.then712.out_crit_edge, label %if.then712.if.end727_crit_edge

if.then712.if.end727_crit_edge:                   ; preds = %if.then712
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end727

if.then712.out_crit_edge:                         ; preds = %if.then712
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end727:                                        ; preds = %if.then712.if.end727_crit_edge, %sw.bb706.if.end727_crit_edge
  %call729 = call fastcc ptr @alloc_rsttbl_from_idx(ptr noundef nonnull %oatbl, i32 noundef %conv708)
  %665 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %oatbl, align 4
  %667 = ptrtoint ptr %open_attr_tbl556 to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr %666, ptr %open_attr_tbl556, align 8
  %tobool731.not = icmp eq ptr %call729, null
  br i1 %tobool731.not, label %if.end727.out_crit_edge, label %if.end733

if.end727.out_crit_edge:                          ; preds = %if.end727
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end733:                                        ; preds = %if.end727
  %redo_off734 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 2
  %668 = ptrtoint ptr %redo_off734 to i32
  call void @__asan_load2_noabort(i32 %668)
  %669 = load i16, ptr %redo_off734, align 4
  %670 = call i16 @llvm.bswap.i16(i16 %669)
  %671 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load i32, ptr %350, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %672)
  %tobool736.not = icmp eq i32 %672, 0
  %conv739 = zext i16 %670 to i32
  %add.ptr740 = getelementptr i8, ptr %549, i32 %conv739
  br i1 %tobool736.not, label %if.then737, label %if.else752

if.then737:                                       ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #20
  %bytes_per_index741 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY_32, ptr %add.ptr740, i32 0, i32 11
  %673 = ptrtoint ptr %bytes_per_index741 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %bytes_per_index741, align 8
  %bytes_per_index742 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 1
  %675 = ptrtoint ptr %bytes_per_index742 to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 %674, ptr %bytes_per_index742, align 4
  %type743 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY_32, ptr %add.ptr740, i32 0, i32 7
  %676 = ptrtoint ptr %type743 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %type743, align 4
  %type744 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 2
  %678 = ptrtoint ptr %type744 to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 %677, ptr %type744, align 8
  %is_dirty_pages745 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY_32, ptr %add.ptr740, i32 0, i32 4
  %679 = ptrtoint ptr %is_dirty_pages745 to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %is_dirty_pages745, align 8
  %is_dirty_pages746 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 3
  %681 = ptrtoint ptr %is_dirty_pages746 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 %680, ptr %is_dirty_pages746, align 4
  %name_len747 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 5
  %682 = ptrtoint ptr %name_len747 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 0, ptr %name_len747, align 2
  %ref748 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 7
  %ref749 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY_32, ptr %add.ptr740, i32 0, i32 2
  %683 = ptrtoint ptr %ref749 to i32
  call void @__asan_load8_noabort(i32 %683)
  %684 = load i64, ptr %ref749, align 8
  %685 = ptrtoint ptr %ref748 to i32
  call void @__asan_store8_noabort(i32 %685)
  store i64 %684, ptr %ref748, align 8
  %open_record_lsn750 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY_32, ptr %add.ptr740, i32 0, i32 3
  %686 = ptrtoint ptr %open_record_lsn750 to i32
  call void @__asan_load8_noabort(i32 %686)
  %687 = load i64, ptr %open_record_lsn750, align 8
  %open_record_lsn751 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 8
  %688 = ptrtoint ptr %open_record_lsn751 to i32
  call void @__asan_store8_noabort(i32 %688)
  store i64 %687, ptr %open_record_lsn751, align 8
  br label %if.end755

if.else752:                                       ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #20
  %689 = call ptr @memcpy(ptr %call729, ptr %add.ptr740, i32 %cond365)
  br label %if.end755

if.end755:                                        ; preds = %if.else752, %if.then737
  %undo_len = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 5
  %690 = ptrtoint ptr %undo_len to i32
  call void @__asan_load2_noabort(i32 %690)
  %691 = load i16, ptr %undo_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %691)
  %tobool756.not = icmp eq i16 %691, 0
  br i1 %tobool756.not, label %if.else774, label %if.then757

if.then757:                                       ; preds = %if.end755
  %692 = call i16 @llvm.bswap.i16(i16 %691)
  %conv758 = zext i16 %692 to i32
  %call9.i2262 = call noalias align 128 ptr @__kmalloc(i32 noundef %conv758, i32 noundef 3136) #22
  %ptr760 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 9
  %693 = ptrtoint ptr %ptr760 to i32
  call void @__asan_store4_noabort(i32 %693)
  store ptr %call9.i2262, ptr %ptr760, align 8
  %tobool762.not = icmp eq ptr %call9.i2262, null
  br i1 %tobool762.not, label %if.then757.out_crit_edge, label %if.end764

if.then757.out_crit_edge:                         ; preds = %if.then757
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end764:                                        ; preds = %if.then757
  call void @__sanitizer_cov_trace_pc() #20
  %div7662223 = lshr i16 %692, 1
  %conv767 = trunc i16 %div7662223 to i8
  %name_len768 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 5
  %694 = ptrtoint ptr %name_len768 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 %conv767, ptr %name_len768, align 2
  %undo_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 4
  %695 = ptrtoint ptr %undo_off to i32
  call void @__asan_load2_noabort(i32 %695)
  %696 = load i16, ptr %undo_off, align 8
  %697 = call i16 @llvm.bswap.i16(i16 %696)
  %conv770 = zext i16 %697 to i32
  %add.ptr771 = getelementptr i8, ptr %549, i32 %conv770
  %698 = call ptr @memcpy(ptr %call9.i2262, ptr %add.ptr771, i32 %conv758)
  %is_attr_name773 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 4
  %699 = ptrtoint ptr %is_attr_name773 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 1, ptr %is_attr_name773, align 1
  br label %next_log_record_analyze.backedge

if.else774:                                       ; preds = %if.end755
  call void @__sanitizer_cov_trace_pc() #20
  %ptr775 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 9
  %700 = ptrtoint ptr %ptr775 to i32
  call void @__asan_store4_noabort(i32 %700)
  store ptr null, ptr %ptr775, align 8
  %is_attr_name776 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call729, i32 0, i32 4
  %701 = ptrtoint ptr %is_attr_name776 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 0, ptr %is_attr_name776, align 1
  br label %next_log_record_analyze.backedge

next_log_record_analyze.backedge:                 ; preds = %sw.bb811, %sw.bb808, %sw.bb805, %sw.bb800, %if.then793, %if.then784.next_log_record_analyze.backedge_crit_edge, %sw.bb778.next_log_record_analyze.backedge_crit_edge, %if.else774, %if.end764, %while.end700.next_log_record_analyze.backedge_crit_edge, %sw.bb662.next_log_record_analyze.backedge_crit_edge, %for.body.next_log_record_analyze.backedge_crit_edge, %copy_lcns.next_log_record_analyze.backedge_crit_edge, %if.end609.next_log_record_analyze.backedge_crit_edge, %if.end574.next_log_record_analyze.backedge_crit_edge
  %702 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %lcb, align 4
  %call561 = call fastcc i32 @read_next_log_rec(ptr noundef nonnull %call7.i.i, ptr noundef %703, ptr noundef nonnull %rec_lsn)
  %tobool562.not = icmp eq i32 %call561, 0
  br i1 %tobool562.not, label %next_log_record_analyze.backedge.if.end564_crit_edge, label %next_log_record_analyze.backedge.out_crit_edge

next_log_record_analyze.backedge.out_crit_edge:   ; preds = %next_log_record_analyze.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

next_log_record_analyze.backedge.if.end564_crit_edge: ; preds = %next_log_record_analyze.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end564

sw.bb778:                                         ; preds = %if.end609
  %target_attr779 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 6
  %704 = ptrtoint ptr %target_attr779 to i32
  call void @__asan_load2_noabort(i32 %704)
  %705 = load i16, ptr %target_attr779, align 4
  %706 = call i16 @llvm.bswap.i16(i16 %705)
  %target_vcn780 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 12
  %707 = ptrtoint ptr %target_vcn780 to i32
  call void @__asan_load8_noabort(i32 %707)
  %708 = load i64, ptr %target_vcn780, align 8
  %709 = call i64 @llvm.bswap.i64(i64 %708)
  %710 = ptrtoint ptr %dptbl to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %dptbl, align 4
  %conv781 = zext i16 %706 to i32
  %call782 = call fastcc ptr @find_dp(ptr noundef %711, i32 noundef %conv781, i64 noundef %709)
  %tobool783.not = icmp eq ptr %call782, null
  br i1 %tobool783.not, label %sw.bb778.next_log_record_analyze.backedge_crit_edge, label %if.then784

sw.bb778.next_log_record_analyze.backedge_crit_edge: ; preds = %sw.bb778
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

if.then784:                                       ; preds = %sw.bb778
  %vcn787 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call782, i32 0, i32 4
  %712 = ptrtoint ptr %vcn787 to i32
  call void @__asan_load8_noabort(i32 %712)
  %713 = load i64, ptr %vcn787, align 8
  %714 = call i64 @llvm.bswap.i64(i64 %713)
  %sub788 = sub i64 %709, %714
  %conv789 = trunc i64 %sub788 to i32
  %arrayidx791 = getelementptr %struct.DIR_PAGE_ENTRY, ptr %call782, i32 0, i32 6, i32 %conv789
  %715 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_load8_noabort(i32 %715)
  %716 = load i64, ptr %arrayidx791, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %716)
  %tobool792.not = icmp eq i64 %716, 0
  br i1 %tobool792.not, label %if.then784.next_log_record_analyze.backedge_crit_edge, label %if.then793

if.then784.next_log_record_analyze.backedge_crit_edge: ; preds = %if.then784
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_log_record_analyze.backedge

if.then793:                                       ; preds = %if.then784
  call void @__sanitizer_cov_trace_pc() #20
  %page_lcns794 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %549, i32 0, i32 13
  %717 = ptrtoint ptr %page_lcns794 to i32
  call void @__asan_load8_noabort(i32 %717)
  %718 = load i64, ptr %page_lcns794, align 8
  %719 = ptrtoint ptr %arrayidx791 to i32
  call void @__asan_store8_noabort(i32 %719)
  store i64 %718, ptr %arrayidx791, align 8
  br label %next_log_record_analyze.backedge

sw.bb800:                                         ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  %720 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %trtbl, align 4
  %add.ptr801 = getelementptr i8, ptr %721, i32 %544
  %prev_lsn802 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %add.ptr801, i32 0, i32 4
  %722 = ptrtoint ptr %prev_lsn802 to i32
  call void @__asan_store8_noabort(i32 %722)
  store i64 %572, ptr %prev_lsn802, align 8
  %client_undo_next_lsn803 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %541, i32 0, i32 2
  %723 = ptrtoint ptr %client_undo_next_lsn803 to i32
  call void @__asan_load8_noabort(i32 %723)
  %724 = load i64, ptr %client_undo_next_lsn803, align 8
  %undo_next_lsn804 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %add.ptr801, i32 0, i32 5
  %725 = ptrtoint ptr %undo_next_lsn804 to i32
  call void @__asan_store8_noabort(i32 %725)
  store i64 %724, ptr %undo_next_lsn804, align 8
  br label %next_log_record_analyze.backedge

sw.bb805:                                         ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  %726 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %trtbl, align 4
  %add.ptr806 = getelementptr i8, ptr %727, i32 %544
  %transact_state807 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %add.ptr806, i32 0, i32 1
  %728 = ptrtoint ptr %transact_state807 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 2, ptr %transact_state807, align 4
  br label %next_log_record_analyze.backedge

sw.bb808:                                         ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  %729 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %trtbl, align 4
  %add.ptr809 = getelementptr i8, ptr %730, i32 %544
  %transact_state810 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %add.ptr809, i32 0, i32 1
  %731 = ptrtoint ptr %transact_state810 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 3, ptr %transact_state810, align 4
  br label %next_log_record_analyze.backedge

sw.bb811:                                         ; preds = %if.end609
  call void @__sanitizer_cov_trace_pc() #20
  %732 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %trtbl, align 4
  call fastcc void @free_rsttbl_idx(ptr noundef %733, i32 noundef %544)
  br label %next_log_record_analyze.backedge

end_log_records_enumerate:                        ; preds = %if.end564
  call fastcc void @lcb_put(ptr noundef %539)
  %734 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %734)
  store ptr null, ptr %lcb, align 4
  %735 = ptrtoint ptr %dptbl to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %dptbl, align 4
  %call8152526 = call fastcc ptr @enum_rstbl(ptr noundef %736, ptr noundef null)
  %tobool816.not2527 = icmp eq ptr %call8152526, null
  br i1 %tobool816.not2527, label %end_log_records_enumerate.while.cond826.preheader_crit_edge, label %end_log_records_enumerate.while.body817_crit_edge

end_log_records_enumerate.while.body817_crit_edge: ; preds = %end_log_records_enumerate
  br label %while.body817

end_log_records_enumerate.while.cond826.preheader_crit_edge: ; preds = %end_log_records_enumerate
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond826.preheader

while.cond826.preheader:                          ; preds = %while.body817.while.cond826.preheader_crit_edge, %end_log_records_enumerate.while.cond826.preheader_crit_edge
  %rlsn.2.lcssa = phi i64 [ %rlsn.02517, %end_log_records_enumerate.while.cond826.preheader_crit_edge ], [ %rlsn.3, %while.body817.while.cond826.preheader_crit_edge ]
  %737 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %trtbl, align 4
  %call8272532 = call fastcc ptr @enum_rstbl(ptr noundef %738, ptr noundef null)
  %tobool828.not2533 = icmp eq ptr %call8272532, null
  br i1 %tobool828.not2533, label %while.cond826.preheader.while.end837_crit_edge, label %while.cond826.preheader.while.body829_crit_edge

while.cond826.preheader.while.body829_crit_edge:  ; preds = %while.cond826.preheader
  br label %while.body829

while.cond826.preheader.while.end837_crit_edge:   ; preds = %while.cond826.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end837

while.body817:                                    ; preds = %while.body817.while.body817_crit_edge, %end_log_records_enumerate.while.body817_crit_edge
  %call8152529 = phi ptr [ %call815, %while.body817.while.body817_crit_edge ], [ %call8152526, %end_log_records_enumerate.while.body817_crit_edge ]
  %rlsn.22528 = phi i64 [ %rlsn.3, %while.body817.while.body817_crit_edge ], [ %rlsn.02517, %end_log_records_enumerate.while.body817_crit_edge ]
  %oldest_lsn818 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call8152529, i32 0, i32 5
  %739 = ptrtoint ptr %oldest_lsn818 to i32
  call void @__asan_load8_noabort(i32 %739)
  %740 = load i64, ptr %oldest_lsn818, align 8
  %741 = call i64 @llvm.bswap.i64(i64 %740)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %740)
  %tobool819.not = icmp ne i64 %740, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %741, i64 %rlsn.22528)
  %cmp821 = icmp ult i64 %741, %rlsn.22528
  %or.cond2229 = select i1 %tobool819.not, i1 %cmp821, i1 false
  %rlsn.3 = select i1 %or.cond2229, i64 %741, i64 %rlsn.22528
  %call815 = call fastcc ptr @enum_rstbl(ptr noundef %736, ptr noundef nonnull %call8152529)
  %tobool816.not = icmp eq ptr %call815, null
  br i1 %tobool816.not, label %while.body817.while.cond826.preheader_crit_edge, label %while.body817.while.body817_crit_edge

while.body817.while.body817_crit_edge:            ; preds = %while.body817
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body817

while.body817.while.cond826.preheader_crit_edge:  ; preds = %while.body817
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond826.preheader

while.body829:                                    ; preds = %while.body829.while.body829_crit_edge, %while.cond826.preheader.while.body829_crit_edge
  %call8272535 = phi ptr [ %call827, %while.body829.while.body829_crit_edge ], [ %call8272532, %while.cond826.preheader.while.body829_crit_edge ]
  %rlsn.42534 = phi i64 [ %rlsn.5, %while.body829.while.body829_crit_edge ], [ %rlsn.2.lcssa, %while.cond826.preheader.while.body829_crit_edge ]
  %first_lsn830 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %call8272535, i32 0, i32 3
  %742 = ptrtoint ptr %first_lsn830 to i32
  call void @__asan_load8_noabort(i32 %742)
  %743 = load i64, ptr %first_lsn830, align 8
  %744 = call i64 @llvm.bswap.i64(i64 %743)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %743)
  %tobool831.not = icmp ne i64 %743, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %744, i64 %rlsn.42534)
  %cmp833 = icmp ult i64 %744, %rlsn.42534
  %or.cond2230 = select i1 %tobool831.not, i1 %cmp833, i1 false
  %rlsn.5 = select i1 %or.cond2230, i64 %744, i64 %rlsn.42534
  %call827 = call fastcc ptr @enum_rstbl(ptr noundef %738, ptr noundef nonnull %call8272535)
  %tobool828.not = icmp eq ptr %call827, null
  br i1 %tobool828.not, label %while.body829.while.end837_crit_edge, label %while.body829.while.body829_crit_edge

while.body829.while.body829_crit_edge:            ; preds = %while.body829
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body829

while.body829.while.end837_crit_edge:             ; preds = %while.body829
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end837

while.end837:                                     ; preds = %while.body829.while.end837_crit_edge, %while.cond826.preheader.while.end837_crit_edge
  %rlsn.4.lcssa = phi i64 [ %rlsn.2.lcssa, %while.cond826.preheader.while.end837_crit_edge ], [ %rlsn.5, %while.body829.while.end837_crit_edge ]
  %tobool838.not = icmp eq ptr %736, null
  br i1 %tobool838.not, label %while.end837.land.lhs.true841_crit_edge, label %lor.lhs.false839

while.end837.land.lhs.true841_crit_edge:          ; preds = %while.end837
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true841

lor.lhs.false839:                                 ; preds = %while.end837
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %736, i32 0, i32 2
  %745 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %745)
  %746 = load i16, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %746)
  %tobool840.not = icmp eq i16 %746, 0
  br i1 %tobool840.not, label %lor.lhs.false839.land.lhs.true841_crit_edge, label %lor.lhs.false839.if.end847_crit_edge

lor.lhs.false839.if.end847_crit_edge:             ; preds = %lor.lhs.false839
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end847

lor.lhs.false839.land.lhs.true841_crit_edge:      ; preds = %lor.lhs.false839
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true841

land.lhs.true841:                                 ; preds = %lor.lhs.false839.land.lhs.true841_crit_edge, %while.end837.land.lhs.true841_crit_edge
  %tobool842.not = icmp eq ptr %738, null
  br i1 %tobool842.not, label %land.lhs.true841.end_reply_crit_edge, label %lor.lhs.false843

land.lhs.true841.end_reply_crit_edge:             ; preds = %land.lhs.true841
  call void @__sanitizer_cov_trace_pc() #20
  br label %end_reply

lor.lhs.false843:                                 ; preds = %land.lhs.true841
  %total844 = getelementptr inbounds %struct.RESTART_TABLE, ptr %738, i32 0, i32 2
  %747 = ptrtoint ptr %total844 to i32
  call void @__asan_load2_noabort(i32 %747)
  %748 = load i16, ptr %total844, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %748)
  %tobool845.not = icmp eq i16 %748, 0
  br i1 %tobool845.not, label %lor.lhs.false843.end_reply_crit_edge, label %lor.lhs.false843.if.end847_crit_edge

lor.lhs.false843.if.end847_crit_edge:             ; preds = %lor.lhs.false843
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end847

lor.lhs.false843.end_reply_crit_edge:             ; preds = %lor.lhs.false843
  call void @__sanitizer_cov_trace_pc() #20
  br label %end_reply

if.end847:                                        ; preds = %lor.lhs.false843.if.end847_crit_edge, %lor.lhs.false839.if.end847_crit_edge
  %flags848 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 14
  %749 = ptrtoint ptr %flags848 to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load i32, ptr %flags848, align 8
  %or849 = or i32 %750, 67108864
  store i32 %or849, ptr %flags848, align 8
  br i1 %tobool.i.not, label %next_open_attribute.preheader, label %if.end847.out_crit_edge

if.end847.out_crit_edge:                          ; preds = %if.end847
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

next_open_attribute.preheader:                    ; preds = %if.end847
  %751 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %oatbl, align 4
  %call8532538 = call fastcc ptr @enum_rstbl(ptr noundef %752, ptr noundef null)
  %tobool854.not2539 = icmp eq ptr %call8532538, null
  br i1 %tobool854.not2539, label %next_open_attribute.preheader.next_dirty_page.preheader_crit_edge, label %next_open_attribute.preheader.if.end856_crit_edge

next_open_attribute.preheader.if.end856_crit_edge: ; preds = %next_open_attribute.preheader
  br label %if.end856

next_open_attribute.preheader.next_dirty_page.preheader_crit_edge: ; preds = %next_open_attribute.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.preheader

next_dirty_page.preheader:                        ; preds = %if.end964.next_dirty_page.preheader_crit_edge, %next_open_attribute.preheader.next_dirty_page.preheader_crit_edge
  %call9692543 = call fastcc ptr @enum_rstbl(ptr noundef %736, ptr noundef null)
  %tobool970.not2544 = icmp eq ptr %call9692543, null
  br i1 %tobool970.not2544, label %next_dirty_page.preheader.do_redo_1_crit_edge, label %if.end972.lr.ph

next_dirty_page.preheader.do_redo_1_crit_edge:    ; preds = %next_dirty_page.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do_redo_1

if.end972.lr.ph:                                  ; preds = %next_dirty_page.preheader
  %753 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %oatbl, align 4
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 8
  br label %if.end972

if.end856:                                        ; preds = %if.end964.if.end856_crit_edge, %next_open_attribute.preheader.if.end856_crit_edge
  %call8532540 = phi ptr [ %call853, %if.end964.if.end856_crit_edge ], [ %call8532538, %next_open_attribute.preheader.if.end856_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %755 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i2349 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %755, i32 noundef 3392, i32 noundef 24) #21
  %tobool858.not = icmp eq ptr %call7.i.i2349, null
  br i1 %tobool858.not, label %if.end856.out_crit_edge, label %if.end860

if.end856.out_crit_edge:                          ; preds = %if.end856
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end860:                                        ; preds = %if.end856
  %756 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %1, align 8
  %ref862 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 7
  %call863 = call ptr @ntfs_iget5(ptr noundef %757, ptr noundef %ref862, ptr noundef null) #18
  %cmp.i2352 = icmp ugt ptr %call863, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2352, label %if.end860.fake_attr_crit_edge, label %if.end866

if.end860.fake_attr_crit_edge:                    ; preds = %if.end860
  call void @__sanitizer_cov_trace_pc() #20
  br label %fake_attr

if.end866:                                        ; preds = %if.end860
  %call867 = call zeroext i1 @is_bad_inode(ptr noundef %call863) #18
  br i1 %call867, label %if.then868, label %if.end885

if.then868:                                       ; preds = %if.end866
  call void @__sanitizer_cov_trace_pc() #20
  call void @iput(ptr noundef %call863) #18
  br label %fake_attr

fake_attr:                                        ; preds = %cleanup950, %if.end894.fake_attr_crit_edge, %if.end885.fake_attr_crit_edge, %if.then868, %if.end860.fake_attr_crit_edge
  %ni869 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 3
  %758 = ptrtoint ptr %ni869 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %ni869, align 4
  %tobool870.not = icmp eq ptr %759, null
  br i1 %tobool870.not, label %fake_attr.if.end875_crit_edge, label %if.then871

fake_attr.if.end875_crit_edge:                    ; preds = %fake_attr
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end875

if.then871:                                       ; preds = %fake_attr
  call void @__sanitizer_cov_trace_pc() #20
  %vfs_inode873 = getelementptr inbounds %struct.ntfs_inode, ptr %759, i32 0, i32 11
  call void @iput(ptr noundef %vfs_inode873) #18
  %760 = ptrtoint ptr %ni869 to i32
  call void @__asan_store4_noabort(i32 %760)
  store ptr null, ptr %ni869, align 4
  br label %if.end875

if.end875:                                        ; preds = %if.then871, %fake_attr.if.end875_crit_edge
  %type876 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 2
  %761 = ptrtoint ptr %type876 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load i32, ptr %type876, align 8
  %ptr877 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 9
  %763 = ptrtoint ptr %ptr877 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %ptr877, align 8
  %name_len878 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 5
  %765 = ptrtoint ptr %name_len878 to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %name_len878, align 2
  %conv879 = zext i8 %766 to i32
  %call880 = call fastcc ptr @attr_create_nonres_log(ptr noundef %1, i32 noundef %762, ptr noundef %764, i32 noundef %conv879)
  %tobool881.not = icmp eq ptr %call880, null
  br i1 %tobool881.not, label %if.then882, label %if.end883

if.then882:                                       ; preds = %if.end875
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call7.i.i2349) #18
  br label %out

if.end883:                                        ; preds = %if.end875
  call void @__sanitizer_cov_trace_pc() #20
  %767 = ptrtoint ptr %call7.i.i2349 to i32
  call void @__asan_store4_noabort(i32 %767)
  store ptr %call880, ptr %call7.i.i2349, align 8
  %run0 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 2
  %run1 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 1
  %768 = ptrtoint ptr %run1 to i32
  call void @__asan_store4_noabort(i32 %768)
  store ptr %run0, ptr %run1, align 4
  br label %final_oe

if.end885:                                        ; preds = %if.end866
  %add.ptr.i2353 = getelementptr i8, ptr %call863, i32 -360
  %ni887 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 3
  %769 = ptrtoint ptr %ni887 to i32
  call void @__asan_store4_noabort(i32 %769)
  store ptr %add.ptr.i2353, ptr %ni887, align 4
  %type888 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 2
  %770 = ptrtoint ptr %type888 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load i32, ptr %type888, align 8
  %ptr889 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 9
  %772 = ptrtoint ptr %ptr889 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %ptr889, align 8
  %name_len890 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 5
  %774 = ptrtoint ptr %name_len890 to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %name_len890, align 2
  %call891 = call ptr @ni_find_attr(ptr noundef %add.ptr.i2353, ptr noundef null, ptr noundef null, i32 noundef %771, ptr noundef %773, i8 noundef zeroext %775, ptr noundef null, ptr noundef null) #18
  %tobool892.not = icmp eq ptr %call891, null
  br i1 %tobool892.not, label %if.end885.fake_attr_crit_edge, label %if.end894

if.end885.fake_attr_crit_edge:                    ; preds = %if.end885
  call void @__sanitizer_cov_trace_pc() #20
  br label %fake_attr

if.end894:                                        ; preds = %if.end885
  %size895 = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 1
  %776 = ptrtoint ptr %size895 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %size895, align 4
  %778 = call i32 @llvm.bswap.i32(i32 %777)
  %call896 = call ptr @kmemdup(ptr noundef nonnull %call891, i32 noundef %778, i32 noundef 3136) #18
  %779 = ptrtoint ptr %call7.i.i2349 to i32
  call void @__asan_store4_noabort(i32 %779)
  store ptr %call896, ptr %call7.i.i2349, align 8
  %tobool899.not = icmp eq ptr %call896, null
  br i1 %tobool899.not, label %if.end894.fake_attr_crit_edge, label %if.end901

if.end894.fake_attr_crit_edge:                    ; preds = %if.end894
  call void @__sanitizer_cov_trace_pc() #20
  br label %fake_attr

if.end901:                                        ; preds = %if.end894
  %780 = ptrtoint ptr %call863 to i32
  call void @__asan_load2_noabort(i32 %780)
  %781 = load i16, ptr %call863, align 8
  %782 = and i16 %781, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %782)
  %cmp904 = icmp eq i16 %782, 16384
  %783 = ptrtoint ptr %call891 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %call891, align 8
  br i1 %cmp904, label %if.else916, label %if.then906

if.then906:                                       ; preds = %if.end901
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %784)
  %cmp908 = icmp eq i32 %784, -2147483648
  br i1 %cmp908, label %land.lhs.true910, label %if.then906.if.end932_crit_edge

if.then906.if.end932_crit_edge:                   ; preds = %if.then906
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end932

land.lhs.true910:                                 ; preds = %if.then906
  %name_len911 = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 3
  %785 = ptrtoint ptr %name_len911 to i32
  call void @__asan_load1_noabort(i32 %785)
  %786 = load i8, ptr %name_len911, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %786)
  %tobool912.not = icmp eq i8 %786, 0
  br i1 %tobool912.not, label %if.then913, label %land.lhs.true910.if.end932_crit_edge

land.lhs.true910.if.end932_crit_edge:             ; preds = %land.lhs.true910
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end932

if.then913:                                       ; preds = %land.lhs.true910
  call void @__sanitizer_cov_trace_pc() #20
  %run = getelementptr i8, ptr %call863, i32 -60
  %run1914 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 1
  %787 = ptrtoint ptr %run1914 to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr %run, ptr %run1914, align 4
  br label %final_oe

if.else916:                                       ; preds = %if.end901
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %784)
  %cmp918 = icmp eq i32 %784, -1610612736
  br i1 %cmp918, label %land.lhs.true920, label %if.else916.if.end932_crit_edge

if.else916.if.end932_crit_edge:                   ; preds = %if.else916
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end932

land.lhs.true920:                                 ; preds = %if.else916
  %name_len921 = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 3
  %788 = ptrtoint ptr %name_len921 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %name_len921, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %789)
  %cmp923 = icmp eq i8 %789, 4
  br i1 %cmp923, label %land.lhs.true925, label %land.lhs.true920.if.end932_crit_edge

land.lhs.true920.if.end932_crit_edge:             ; preds = %land.lhs.true920
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end932

land.lhs.true925:                                 ; preds = %land.lhs.true920
  %name_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 4
  %790 = ptrtoint ptr %name_off.i to i32
  call void @__asan_load2_noabort(i32 %790)
  %791 = load i16, ptr %name_off.i, align 2
  %792 = call i16 @llvm.bswap.i16(i16 %791) #18
  %conv.i2354 = zext i16 %792 to i32
  %add.ptr.i2355 = getelementptr i8, ptr %call891, i32 %conv.i2354
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i2355, ptr noundef nonnull dereferenceable(8) @I30_NAME, i32 8) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool928.not = icmp eq i32 %bcmp, 0
  br i1 %tobool928.not, label %if.then929, label %land.lhs.true925.if.end932_crit_edge

land.lhs.true925.if.end932_crit_edge:             ; preds = %land.lhs.true925
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end932

if.then929:                                       ; preds = %land.lhs.true925
  call void @__sanitizer_cov_trace_pc() #20
  %alloc_run = getelementptr i8, ptr %call863, i32 -144
  %run1930 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 1
  %793 = ptrtoint ptr %run1930 to i32
  call void @__asan_store4_noabort(i32 %793)
  store ptr %alloc_run, ptr %run1930, align 4
  br label %final_oe

if.end932:                                        ; preds = %land.lhs.true925.if.end932_crit_edge, %land.lhs.true920.if.end932_crit_edge, %if.else916.if.end932_crit_edge, %land.lhs.true910.if.end932_crit_edge, %if.then906.if.end932_crit_edge
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 2
  %794 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %794)
  %795 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %795)
  %tobool933.not = icmp eq i8 %795, 0
  br i1 %tobool933.not, label %if.end932.if.end954_crit_edge, label %if.then934

if.end932.if.end954_crit_edge:                    ; preds = %if.end932
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end954

if.then934:                                       ; preds = %if.end932
  %796 = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 7
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 7, i32 0, i32 2
  %797 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %797)
  %798 = load i16, ptr %run_off, align 8
  %799 = call i16 @llvm.bswap.i16(i16 %798)
  %800 = ptrtoint ptr %796 to i32
  call void @__asan_load8_noabort(i32 %800)
  %801 = load i64, ptr %796, align 8
  %802 = call i64 @llvm.bswap.i64(i64 %801)
  %conv936 = trunc i64 %802 to i32
  %run0937 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 2
  %i_ino = getelementptr inbounds %struct.inode, ptr %call863, i32 0, i32 11
  %803 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %i_ino, align 8
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call891, i32 0, i32 7, i32 0, i32 1
  %805 = ptrtoint ptr %evcn to i32
  call void @__asan_load8_noabort(i32 %805)
  %806 = load i64, ptr %evcn, align 8
  %807 = call i64 @llvm.bswap.i64(i64 %806)
  %conv938 = trunc i64 %807 to i32
  %conv939 = zext i16 %799 to i32
  %add.ptr940 = getelementptr i8, ptr %call891, i32 %conv939
  %sub942 = sub i32 %778, %conv939
  %call943 = call i32 @run_unpack(ptr noundef %run0937, ptr noundef %1, i32 noundef %804, i32 noundef %conv936, i32 noundef %conv938, i32 noundef %conv936, ptr noundef %add.ptr940, i32 noundef %sub942) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call943)
  %cmp944 = icmp slt i32 %call943, 0
  br i1 %cmp944, label %cleanup950, label %if.then934.if.end954_crit_edge

if.then934.if.end954_crit_edge:                   ; preds = %if.then934
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end954

cleanup950:                                       ; preds = %if.then934
  call void @__sanitizer_cov_trace_pc() #20
  %808 = ptrtoint ptr %call7.i.i2349 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %call7.i.i2349, align 8
  call void @kfree(ptr noundef %809) #18
  %810 = ptrtoint ptr %call7.i.i2349 to i32
  call void @__asan_store4_noabort(i32 %810)
  store ptr null, ptr %call7.i.i2349, align 8
  br label %fake_attr

if.end954:                                        ; preds = %if.then934.if.end954_crit_edge, %if.end932.if.end954_crit_edge
  %run0955 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 2
  %run1956 = getelementptr inbounds %struct.OpenAttr, ptr %call7.i.i2349, i32 0, i32 1
  %811 = ptrtoint ptr %run1956 to i32
  call void @__asan_store4_noabort(i32 %811)
  store ptr %run0955, ptr %run1956, align 4
  %812 = ptrtoint ptr %call7.i.i2349 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %call7.i.i2349, align 8
  br label %final_oe

final_oe:                                         ; preds = %if.end954, %if.then929, %if.then913, %if.end883
  %attr.0 = phi ptr [ %call880, %if.end883 ], [ %813, %if.end954 ], [ %call891, %if.then929 ], [ %call891, %if.then913 ]
  %is_attr_name958 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 4
  %814 = ptrtoint ptr %is_attr_name958 to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %is_attr_name958, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %815)
  %cmp960 = icmp eq i8 %815, 1
  br i1 %cmp960, label %if.then962, label %final_oe.if.end964_crit_edge

final_oe.if.end964_crit_edge:                     ; preds = %final_oe
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end964

if.then962:                                       ; preds = %final_oe
  call void @__sanitizer_cov_trace_pc() #20
  %ptr963 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 9
  %816 = ptrtoint ptr %ptr963 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %ptr963, align 8
  call void @kfree(ptr noundef %817) #18
  br label %if.end964

if.end964:                                        ; preds = %if.then962, %final_oe.if.end964_crit_edge
  %818 = ptrtoint ptr %is_attr_name958 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 0, ptr %is_attr_name958, align 1
  %ptr966 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 9
  %819 = ptrtoint ptr %ptr966 to i32
  call void @__asan_store4_noabort(i32 %819)
  store ptr %call7.i.i2349, ptr %ptr966, align 8
  %name_len967 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 3
  %820 = ptrtoint ptr %name_len967 to i32
  call void @__asan_load1_noabort(i32 %820)
  %821 = load i8, ptr %name_len967, align 1
  %name_len968 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %call8532540, i32 0, i32 5
  %822 = ptrtoint ptr %name_len968 to i32
  call void @__asan_store1_noabort(i32 %822)
  store i8 %821, ptr %name_len968, align 2
  %call853 = call fastcc ptr @enum_rstbl(ptr noundef %752, ptr noundef nonnull %call8532540)
  %tobool854.not = icmp eq ptr %call853, null
  br i1 %tobool854.not, label %if.end964.next_dirty_page.preheader_crit_edge, label %if.end964.if.end856_crit_edge

if.end964.if.end856_crit_edge:                    ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end856

if.end964.next_dirty_page.preheader_crit_edge:    ; preds = %if.end964
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.preheader

if.end972:                                        ; preds = %next_dirty_page.backedge.if.end972_crit_edge, %if.end972.lr.ph
  %call9692545 = phi ptr [ %call9692543, %if.end972.lr.ph ], [ %call969, %next_dirty_page.backedge.if.end972_crit_edge ]
  %target_attr973 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call9692545, i32 0, i32 1
  %823 = ptrtoint ptr %target_attr973 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %target_attr973, align 4
  %825 = call i32 @llvm.bswap.i32(i32 %824)
  %add.ptr974 = getelementptr i8, ptr %754, i32 %825
  %826 = ptrtoint ptr %add.ptr974 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %add.ptr974, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %827)
  %cmp976.not = icmp eq i32 %827, -1
  br i1 %cmp976.not, label %if.end979, label %if.end972.next_dirty_page.backedge_crit_edge

if.end972.next_dirty_page.backedge_crit_edge:     ; preds = %if.end972
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.backedge

next_dirty_page.backedge:                         ; preds = %next_dirty_page_vcn.backedge.next_dirty_page.backedge_crit_edge, %next_dirty_page_vcn.preheader.next_dirty_page.backedge_crit_edge, %if.end979.next_dirty_page.backedge_crit_edge, %if.end972.next_dirty_page.backedge_crit_edge
  %call969 = call fastcc ptr @enum_rstbl(ptr noundef %736, ptr noundef %call9692545)
  %tobool970.not = icmp eq ptr %call969, null
  br i1 %tobool970.not, label %next_dirty_page.backedge.do_redo_1_crit_edge, label %next_dirty_page.backedge.if.end972_crit_edge

next_dirty_page.backedge.if.end972_crit_edge:     ; preds = %next_dirty_page.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end972

next_dirty_page.backedge.do_redo_1_crit_edge:     ; preds = %next_dirty_page.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %do_redo_1

if.end979:                                        ; preds = %if.end972
  %ptr980 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr974, i32 0, i32 9
  %828 = ptrtoint ptr %ptr980 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %ptr980, align 8
  %tobool981.not = icmp eq ptr %829, null
  br i1 %tobool981.not, label %if.end979.next_dirty_page.backedge_crit_edge, label %next_dirty_page_vcn.preheader

if.end979.next_dirty_page.backedge_crit_edge:     ; preds = %if.end979
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.backedge

next_dirty_page_vcn.preheader:                    ; preds = %if.end979
  %lcns_follow985 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call9692545, i32 0, i32 3
  %830 = ptrtoint ptr %lcns_follow985 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %lcns_follow985, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %831)
  %cmp986.not2541.not = icmp eq i32 %831, 0
  br i1 %cmp986.not2541.not, label %next_dirty_page_vcn.preheader.next_dirty_page.backedge_crit_edge, label %if.end989.lr.ph

next_dirty_page_vcn.preheader.next_dirty_page.backedge_crit_edge: ; preds = %next_dirty_page_vcn.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.backedge

if.end989.lr.ph:                                  ; preds = %next_dirty_page_vcn.preheader
  %vcn990 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call9692545, i32 0, i32 4
  %ref1003 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr974, i32 0, i32 7
  %type1013 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr974, i32 0, i32 2
  %run11021 = getelementptr inbounds %struct.OpenAttr, ptr %829, i32 0, i32 1
  br label %if.end989

if.end989:                                        ; preds = %next_dirty_page_vcn.backedge.if.end989_crit_edge, %if.end989.lr.ph
  %add9842542 = phi i32 [ 0, %if.end989.lr.ph ], [ %add984, %next_dirty_page_vcn.backedge.if.end989_crit_edge ]
  %832 = ptrtoint ptr %vcn990 to i32
  call void @__asan_load8_noabort(i32 %832)
  %833 = load i64, ptr %vcn990, align 8
  %834 = call i64 @llvm.bswap.i64(i64 %833)
  %conv991 = zext i32 %add9842542 to i64
  %add992 = add i64 %834, %conv991
  %add993 = add i64 %add992, 1
  %835 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %835)
  %836 = load i8, ptr %cluster_bits, align 8
  %sh_prom996 = zext i8 %836 to i64
  %shl997 = shl i64 %add993, %sh_prom996
  %arrayidx999 = getelementptr %struct.DIR_PAGE_ENTRY, ptr %call9692545, i32 0, i32 6, i32 %add9842542
  %837 = ptrtoint ptr %arrayidx999 to i32
  call void @__asan_load8_noabort(i32 %837)
  %838 = load i64, ptr %arrayidx999, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %838)
  %tobool1000.not = icmp eq i64 %838, 0
  br i1 %tobool1000.not, label %if.end989.next_dirty_page_vcn.backedge_crit_edge, label %if.end1002

if.end989.next_dirty_page_vcn.backedge_crit_edge: ; preds = %if.end989
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page_vcn.backedge

if.end1002:                                       ; preds = %if.end989
  %839 = ptrtoint ptr %ref1003 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load i32, ptr %ref1003, align 4
  %841 = call i32 @llvm.bswap.i32(i32 %840) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %841)
  %cmp1005 = icmp ult i32 %841, 2
  br i1 %cmp1005, label %land.lhs.true1007, label %if.end1002.if.end1017_crit_edge

if.end1002.if.end1017_crit_edge:                  ; preds = %if.end1002
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1017

land.lhs.true1007:                                ; preds = %if.end1002
  %842 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load i32, ptr %record_size, align 8
  %mul1008 = shl i32 %843, 2
  %conv1009 = zext i32 %mul1008 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl997, i64 %conv1009)
  %cmp1010 = icmp ult i64 %shl997, %conv1009
  br i1 %cmp1010, label %land.lhs.true1012, label %land.lhs.true1007.if.end1017_crit_edge

land.lhs.true1007.if.end1017_crit_edge:           ; preds = %land.lhs.true1007
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1017

land.lhs.true1012:                                ; preds = %land.lhs.true1007
  %844 = ptrtoint ptr %type1013 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %type1013, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %845)
  %cmp1014 = icmp eq i32 %845, -2147483648
  br i1 %cmp1014, label %land.lhs.true1012.next_dirty_page_vcn.backedge_crit_edge, label %land.lhs.true1012.if.end1017_crit_edge

land.lhs.true1012.if.end1017_crit_edge:           ; preds = %land.lhs.true1012
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1017

land.lhs.true1012.next_dirty_page_vcn.backedge_crit_edge: ; preds = %land.lhs.true1012
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page_vcn.backedge

if.end1017:                                       ; preds = %land.lhs.true1012.if.end1017_crit_edge, %land.lhs.true1007.if.end1017_crit_edge, %if.end1002.if.end1017_crit_edge
  %846 = call i64 @llvm.bswap.i64(i64 %838)
  %conv1020 = trunc i64 %846 to i32
  %847 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %847)
  store i32 %conv1020, ptr %lcn, align 4
  %848 = ptrtoint ptr %run11021 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %run11021, align 4
  %conv1022 = trunc i64 %add992 to i32
  %call1023 = call zeroext i1 @run_lookup_entry(ptr noundef %849, i32 noundef %conv1022, ptr noundef nonnull %lcn0, ptr noundef nonnull %len0, ptr noundef null) #18
  br i1 %call1023, label %lor.lhs.false1024, label %if.end1017.land.lhs.true1027_crit_edge

if.end1017.land.lhs.true1027_crit_edge:           ; preds = %if.end1017
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true1027

lor.lhs.false1024:                                ; preds = %if.end1017
  %850 = ptrtoint ptr %lcn0 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load i32, ptr %lcn0, align 4
  %852 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %851, i32 %853)
  %cmp1025.not = icmp eq i32 %851, %853
  br i1 %cmp1025.not, label %lor.lhs.false1024.if.end1032_crit_edge, label %lor.lhs.false1024.land.lhs.true1027_crit_edge

lor.lhs.false1024.land.lhs.true1027_crit_edge:    ; preds = %lor.lhs.false1024
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true1027

lor.lhs.false1024.if.end1032_crit_edge:           ; preds = %lor.lhs.false1024
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1032

land.lhs.true1027:                                ; preds = %lor.lhs.false1024.land.lhs.true1027_crit_edge, %if.end1017.land.lhs.true1027_crit_edge
  %854 = ptrtoint ptr %run11021 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %run11021, align 4
  %856 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load i32, ptr %lcn, align 4
  %call1030 = call zeroext i1 @run_add_entry(ptr noundef %855, i32 noundef %conv1022, i32 noundef %857, i32 noundef 1, i1 noundef zeroext false) #18
  br i1 %call1030, label %land.lhs.true1027.if.end1032_crit_edge, label %land.lhs.true1027.out_crit_edge

land.lhs.true1027.out_crit_edge:                  ; preds = %land.lhs.true1027
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

land.lhs.true1027.if.end1032_crit_edge:           ; preds = %land.lhs.true1027
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1032

if.end1032:                                       ; preds = %land.lhs.true1027.if.end1032_crit_edge, %lor.lhs.false1024.if.end1032_crit_edge
  %858 = ptrtoint ptr %829 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %829, align 4
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %859, i32 0, i32 7, i32 0, i32 5
  %860 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %860)
  %861 = load i64, ptr %alloc_size, align 8
  %862 = call i64 @llvm.bswap.i64(i64 %861)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl997, i64 %862)
  %cmp1034 = icmp ugt i64 %shl997, %862
  br i1 %cmp1034, label %if.then1036, label %if.end1032.next_dirty_page_vcn.backedge_crit_edge

if.end1032.next_dirty_page_vcn.backedge_crit_edge: ; preds = %if.end1032
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page_vcn.backedge

if.then1036:                                      ; preds = %if.end1032
  call void @__sanitizer_cov_trace_pc() #20
  %863 = call i64 @llvm.bswap.i64(i64 %shl997)
  %864 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %864)
  store i64 %863, ptr %alloc_size, align 8
  %data_size1038 = getelementptr inbounds %struct.ATTRIB, ptr %859, i32 0, i32 7, i32 0, i32 6
  %865 = ptrtoint ptr %data_size1038 to i32
  call void @__asan_store8_noabort(i32 %865)
  store i64 %863, ptr %data_size1038, align 8
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %859, i32 0, i32 7, i32 0, i32 7
  %866 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %866)
  store i64 %863, ptr %valid_size, align 8
  br label %next_dirty_page_vcn.backedge

next_dirty_page_vcn.backedge:                     ; preds = %if.then1036, %if.end1032.next_dirty_page_vcn.backedge_crit_edge, %land.lhs.true1012.next_dirty_page_vcn.backedge_crit_edge, %if.end989.next_dirty_page_vcn.backedge_crit_edge
  %add984 = add nuw i32 %add9842542, 1
  %867 = ptrtoint ptr %lcns_follow985 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load i32, ptr %lcns_follow985, align 4
  %869 = call i32 @llvm.bswap.i32(i32 %868)
  %cmp986.not = icmp ult i32 %add984, %869
  br i1 %cmp986.not, label %next_dirty_page_vcn.backedge.if.end989_crit_edge, label %next_dirty_page_vcn.backedge.next_dirty_page.backedge_crit_edge

next_dirty_page_vcn.backedge.next_dirty_page.backedge_crit_edge: ; preds = %next_dirty_page_vcn.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_dirty_page.backedge

next_dirty_page_vcn.backedge.if.end989_crit_edge: ; preds = %next_dirty_page_vcn.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end989

do_redo_1:                                        ; preds = %next_dirty_page.backedge.do_redo_1_crit_edge, %next_dirty_page.preheader.do_redo_1_crit_edge
  br i1 %tobool838.not, label %do_redo_1.do_undo_action_crit_edge, label %lor.lhs.false1041

do_redo_1.do_undo_action_crit_edge:               ; preds = %do_redo_1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do_undo_action

lor.lhs.false1041:                                ; preds = %do_redo_1
  %total1042 = getelementptr inbounds %struct.RESTART_TABLE, ptr %736, i32 0, i32 2
  %870 = ptrtoint ptr %total1042 to i32
  call void @__asan_load2_noabort(i32 %870)
  %871 = load i16, ptr %total1042, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %871)
  %tobool1043.not = icmp eq i16 %871, 0
  br i1 %tobool1043.not, label %lor.lhs.false1041.do_undo_action_crit_edge, label %if.end1045

lor.lhs.false1041.do_undo_action_crit_edge:       ; preds = %lor.lhs.false1041
  call void @__sanitizer_cov_trace_pc() #20
  br label %do_undo_action

if.end1045:                                       ; preds = %lor.lhs.false1041
  %872 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_store8_noabort(i32 %872)
  store i64 %rlsn.4.lcssa, ptr %rec_lsn, align 8
  %call1046 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %rlsn.4.lcssa, i32 noundef 2, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1046)
  %tobool1047.not = icmp eq i32 %call1046, 0
  br i1 %tobool1047.not, label %if.end1045.do_action_next_crit_edge, label %if.end1045.out_crit_edge

if.end1045.out_crit_edge:                         ; preds = %if.end1045
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1045.do_action_next_crit_edge:              ; preds = %if.end1045
  br label %do_action_next

do_action_next:                                   ; preds = %land.lhs.true1176.do_action_next_crit_edge, %if.end1045.do_action_next_crit_edge
  %873 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %lcb, align 4
  %875 = ptrtoint ptr %874 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %874, align 4
  %record_type1051 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %876, i32 0, i32 5
  %877 = ptrtoint ptr %record_type1051 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %record_type1051, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %878)
  %cmp1052.not = icmp eq i32 %878, 16777216
  br i1 %cmp1052.not, label %if.end1055, label %do_action_next.read_next_log_do_action_crit_edge

do_action_next.read_next_log_do_action_crit_edge: ; preds = %do_action_next
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1055:                                       ; preds = %do_action_next
  %transact_id1056 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %876, i32 0, i32 6
  %879 = ptrtoint ptr %transact_id1056 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %transact_id1056, align 4
  %881 = call i32 @llvm.bswap.i32(i32 %880)
  %client_data_len1057 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %876, i32 0, i32 3
  %882 = ptrtoint ptr %client_data_len1057 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %client_data_len1057, align 8
  %884 = call i32 @llvm.bswap.i32(i32 %883)
  %log_rec1058 = getelementptr inbounds %struct.lcb, ptr %874, i32 0, i32 1
  %885 = ptrtoint ptr %log_rec1058 to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %log_rec1058, align 4
  %call1059 = call fastcc zeroext i1 @check_log_rec(ptr noundef %886, i32 noundef %884, i32 noundef %881, i32 noundef %cond365)
  br i1 %call1059, label %if.end1061, label %if.end1055.out_crit_edge

if.end1055.out_crit_edge:                         ; preds = %if.end1055
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1061:                                       ; preds = %if.end1055
  %lcns_follow1062 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 7
  %887 = ptrtoint ptr %lcns_follow1062 to i32
  call void @__asan_load2_noabort(i32 %887)
  %888 = load i16, ptr %lcns_follow1062, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %888)
  %tobool1063.not = icmp eq i16 %888, 0
  br i1 %tobool1063.not, label %if.end1061.read_next_log_do_action_crit_edge, label %find_dirty_page

if.end1061.read_next_log_do_action_crit_edge:     ; preds = %if.end1061
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

find_dirty_page:                                  ; preds = %if.end1061
  %target_attr1066 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 6
  %889 = ptrtoint ptr %target_attr1066 to i32
  call void @__asan_load2_noabort(i32 %889)
  %890 = load i16, ptr %target_attr1066, align 4
  %891 = call i16 @llvm.bswap.i16(i16 %890)
  %target_vcn1067 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 12
  %892 = ptrtoint ptr %target_vcn1067 to i32
  call void @__asan_load8_noabort(i32 %892)
  %893 = load i64, ptr %target_vcn1067, align 8
  %894 = call i64 @llvm.bswap.i64(i64 %893)
  %conv1068 = zext i16 %891 to i32
  %call1069 = call fastcc ptr @find_dp(ptr noundef nonnull %736, i32 noundef %conv1068, i64 noundef %894)
  %tobool1070.not = icmp eq ptr %call1069, null
  br i1 %tobool1070.not, label %find_dirty_page.read_next_log_do_action_crit_edge, label %if.end1072

find_dirty_page.read_next_log_do_action_crit_edge: ; preds = %find_dirty_page
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1072:                                       ; preds = %find_dirty_page
  %895 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %895)
  %896 = load i64, ptr %rec_lsn, align 8
  %oldest_lsn1073 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call1069, i32 0, i32 5
  %897 = ptrtoint ptr %oldest_lsn1073 to i32
  call void @__asan_load8_noabort(i32 %897)
  %898 = load i64, ptr %oldest_lsn1073, align 8
  %899 = call i64 @llvm.bswap.i64(i64 %898)
  call void @__sanitizer_cov_trace_cmp8(i64 %896, i64 %899)
  %cmp1074 = icmp ult i64 %896, %899
  br i1 %cmp1074, label %if.end1072.read_next_log_do_action_crit_edge, label %if.end1077

if.end1072.read_next_log_do_action_crit_edge:     ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1077:                                       ; preds = %if.end1072
  %900 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %oatbl, align 4
  %used.i2356 = getelementptr inbounds %struct.RESTART_TABLE, ptr %901, i32 0, i32 1
  %902 = ptrtoint ptr %used.i2356 to i32
  call void @__asan_load2_noabort(i32 %902)
  %903 = load i16, ptr %used.i2356, align 2
  %904 = call i16 @llvm.bswap.i16(i16 %903) #18
  %conv.i2357 = zext i16 %904 to i32
  %905 = ptrtoint ptr %901 to i32
  call void @__asan_load2_noabort(i32 %905)
  %906 = load i16, ptr %901, align 4
  %907 = call i16 @llvm.bswap.i16(i16 %906) #18
  %conv1.i2358 = zext i16 %907 to i32
  %mul.i2359 = mul nuw i32 %conv1.i2358, %conv.i2357
  %add.i2360 = add nuw i32 %mul.i2359, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i2360, i32 %conv1068)
  %cmp1081.not = icmp ugt i32 %add.i2360, %conv1068
  br i1 %cmp1081.not, label %if.end1084, label %if.end1077.out_crit_edge

if.end1077.out_crit_edge:                         ; preds = %if.end1077
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1084:                                       ; preds = %if.end1077
  %add.ptr1086 = getelementptr i8, ptr %901, i32 %conv1068
  %908 = ptrtoint ptr %add.ptr1086 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %add.ptr1086, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %909)
  %cmp1088.not = icmp eq i32 %909, -1
  br i1 %cmp1088.not, label %if.end1091, label %if.end1084.out_crit_edge

if.end1084.out_crit_edge:                         ; preds = %if.end1084
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1091:                                       ; preds = %if.end1084
  %ptr1092 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr1086, i32 0, i32 9
  %910 = ptrtoint ptr %ptr1092 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %ptr1092, align 8
  %tobool1093.not = icmp eq ptr %911, null
  br i1 %tobool1093.not, label %if.end1091.out_crit_edge, label %if.end1095

if.end1091.out_crit_edge:                         ; preds = %if.end1091
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1095:                                       ; preds = %if.end1091
  %run11098 = getelementptr inbounds %struct.OpenAttr, ptr %911, i32 0, i32 1
  %912 = ptrtoint ptr %run11098 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %run11098, align 4
  %conv1099 = trunc i64 %894 to i32
  %call1100 = call zeroext i1 @run_lookup_entry(ptr noundef %913, i32 noundef %conv1099, ptr noundef nonnull %lcn, ptr noundef null, ptr noundef null) #18
  br i1 %call1100, label %lor.lhs.false1101, label %if.end1095.read_next_log_do_action_crit_edge

if.end1095.read_next_log_do_action_crit_edge:     ; preds = %if.end1095
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

lor.lhs.false1101:                                ; preds = %if.end1095
  %914 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %915)
  %cmp1102 = icmp eq i32 %915, -1
  br i1 %cmp1102, label %lor.lhs.false1101.read_next_log_do_action_crit_edge, label %if.end1105

lor.lhs.false1101.read_next_log_do_action_crit_edge: ; preds = %lor.lhs.false1101
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1105:                                       ; preds = %lor.lhs.false1101
  %redo_off1106 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 2
  %916 = ptrtoint ptr %redo_off1106 to i32
  call void @__asan_load2_noabort(i32 %916)
  %917 = load i16, ptr %redo_off1106, align 4
  %918 = call i16 @llvm.bswap.i16(i16 %917)
  %conv1107 = zext i16 %918 to i32
  %add.ptr1108 = getelementptr i8, ptr %886, i32 %conv1107
  %redo_len1109 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 3
  %919 = ptrtoint ptr %redo_len1109 to i32
  call void @__asan_load2_noabort(i32 %919)
  %920 = load i16, ptr %redo_len1109, align 2
  %921 = call i16 @llvm.bswap.i16(i16 %920)
  %conv1110 = zext i16 %921 to i32
  %922 = ptrtoint ptr %lcns_follow1062 to i32
  call void @__asan_load2_noabort(i32 %922)
  %923 = load i16, ptr %lcns_follow1062, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %923)
  %tobool1114.not2546 = icmp eq i16 %923, 0
  br i1 %tobool1114.not2546, label %if.end1105.for.end1158_crit_edge, label %for.body1115.lr.ph

if.end1105.for.end1158_crit_edge:                 ; preds = %if.end1105
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end1158

for.body1115.lr.ph:                               ; preds = %if.end1105
  %924 = call i16 @llvm.bswap.i16(i16 %923)
  %conv1112 = zext i16 %924 to i32
  %925 = ptrtoint ptr %target_vcn1067 to i32
  call void @__asan_load8_noabort(i32 %925)
  %926 = load i64, ptr %target_vcn1067, align 8
  %927 = call i64 @llvm.bswap.i64(i64 %926)
  %vcn1124 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %call1069, i32 0, i32 4
  %928 = ptrtoint ptr %vcn1124 to i32
  call void @__asan_load8_noabort(i32 %928)
  %929 = load i64, ptr %vcn1124, align 8
  %930 = call i64 @llvm.bswap.i64(i64 %929)
  %sub1125 = sub i64 %927, %930
  %conv1126 = trunc i64 %sub1125 to i32
  %record_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 8
  %attr_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 9
  %cluster_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %886, i32 0, i32 10
  br label %for.body1115

for.body1115:                                     ; preds = %if.end1133.for.body1115_crit_edge, %for.body1115.lr.ph
  %saved_len.02549 = phi i32 [ %conv1110, %for.body1115.lr.ph ], [ %spec.store.select, %if.end1133.for.body1115_crit_edge ]
  %dlen.02548 = phi i32 [ %conv1110, %for.body1115.lr.ph ], [ %dlen.2.ph, %if.end1133.for.body1115_crit_edge ]
  %i.32547 = phi i32 [ %conv1112, %for.body1115.lr.ph ], [ %add1128, %if.end1133.for.body1115_crit_edge ]
  %add1128 = add i32 %i.32547, -1
  %sub1129 = add i32 %add1128, %conv1126
  %arrayidx1130 = getelementptr %struct.DIR_PAGE_ENTRY, ptr %call1069, i32 0, i32 6, i32 %sub1129
  %931 = ptrtoint ptr %arrayidx1130 to i32
  call void @__asan_load8_noabort(i32 %931)
  %932 = load i64, ptr %arrayidx1130, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %932)
  %tobool1131.not = icmp eq i64 %932, 0
  br i1 %tobool1131.not, label %if.end1133, label %for.body1115.for.end1158_crit_edge

for.body1115.for.end1158_crit_edge:               ; preds = %for.body1115
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end1158

if.end1133:                                       ; preds = %for.body1115
  %933 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %933)
  %934 = load i16, ptr %record_off, align 8
  %935 = call i16 @llvm.bswap.i16(i16 %934)
  %conv1117 = zext i16 %935 to i32
  %936 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %936)
  %937 = load i16, ptr %attr_off, align 2
  %938 = call i16 @llvm.bswap.i16(i16 %937)
  %conv1118 = zext i16 %938 to i32
  %add1119 = add nuw nsw i32 %conv1118, %conv1117
  %939 = ptrtoint ptr %cluster_off to i32
  call void @__asan_load2_noabort(i32 %939)
  %940 = load i16, ptr %cluster_off, align 4
  %941 = call i16 @llvm.bswap.i16(i16 %940)
  %conv1120 = zext i16 %941 to i32
  %shl1121 = shl nuw nsw i32 %conv1120, 9
  %add1122 = add nuw nsw i32 %add1119, %shl1121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_len.02549)
  %tobool1134.not = icmp eq i32 %saved_len.02549, 0
  %spec.store.select = select i1 %tobool1134.not, i32 1, i32 %saved_len.02549
  %942 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %942)
  %943 = load i8, ptr %cluster_bits, align 8
  %conv1139 = zext i8 %943 to i32
  %shl1140 = shl i32 %add1128, %conv1139
  call void @__sanitizer_cov_trace_cmp4(i32 %shl1140, i32 %add1122)
  %cmp1141.not = icmp ugt i32 %shl1140, %add1122
  %add1145 = add i32 %add1122, %dlen.02548
  call void @__sanitizer_cov_trace_cmp4(i32 %add1145, i32 %shl1140)
  %cmp1146 = icmp ugt i32 %add1145, %shl1140
  %sub1149 = sub i32 %shl1140, %add1122
  %spec.select2232 = select i1 %cmp1146, i32 %sub1149, i32 %dlen.02548
  %dlen.2.ph = select i1 %cmp1141.not, i32 %spec.select2232, i32 0
  %tobool1114.not = icmp eq i32 %add1128, 0
  br i1 %tobool1114.not, label %if.end1133.for.end1158_crit_edge, label %if.end1133.for.body1115_crit_edge

if.end1133.for.body1115_crit_edge:                ; preds = %if.end1133
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body1115

if.end1133.for.end1158_crit_edge:                 ; preds = %if.end1133
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end1158

for.end1158:                                      ; preds = %if.end1133.for.end1158_crit_edge, %for.body1115.for.end1158_crit_edge, %if.end1105.for.end1158_crit_edge
  %dlen.0.lcssa = phi i32 [ %conv1110, %if.end1105.for.end1158_crit_edge ], [ %dlen.02548, %for.body1115.for.end1158_crit_edge ], [ %dlen.2.ph, %if.end1133.for.end1158_crit_edge ]
  %saved_len.0.lcssa = phi i32 [ %conv1110, %if.end1105.for.end1158_crit_edge ], [ %saved_len.02549, %for.body1115.for.end1158_crit_edge ], [ %spec.store.select, %if.end1133.for.end1158_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen.0.lcssa)
  %tobool1159.not = icmp ne i32 %dlen.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %saved_len.0.lcssa)
  %tobool1161.not = icmp eq i32 %saved_len.0.lcssa, 0
  %or.cond2234 = select i1 %tobool1159.not, i1 true, i1 %tobool1161.not
  br i1 %or.cond2234, label %if.end1163, label %for.end1158.read_next_log_do_action_crit_edge

for.end1158.read_next_log_do_action_crit_edge:    ; preds = %for.end1158
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1163:                                       ; preds = %for.end1158
  %944 = ptrtoint ptr %886 to i32
  call void @__asan_load2_noabort(i32 %944)
  %945 = load i16, ptr %886, align 8
  %946 = call i16 @llvm.bswap.i16(i16 %945)
  %conv1165 = zext i16 %946 to i32
  %call1166 = call fastcc zeroext i1 @can_skip_action(i32 noundef %conv1165)
  br i1 %call1166, label %if.end1163.read_next_log_do_action_crit_edge, label %if.end1168

if.end1163.read_next_log_do_action_crit_edge:     ; preds = %if.end1163
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

if.end1168:                                       ; preds = %if.end1163
  %call1170 = call fastcc i32 @do_action(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr1086, ptr noundef %886, i32 noundef %conv1165, ptr noundef %add.ptr1108, i32 noundef %dlen.0.lcssa, i32 noundef %884, ptr noundef nonnull %rec_lsn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1170)
  %tobool1171.not = icmp eq i32 %call1170, 0
  br i1 %tobool1171.not, label %if.end1168.read_next_log_do_action_crit_edge, label %if.end1168.out_crit_edge

if.end1168.out_crit_edge:                         ; preds = %if.end1168
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1168.read_next_log_do_action_crit_edge:     ; preds = %if.end1168
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_do_action

read_next_log_do_action:                          ; preds = %if.end1168.read_next_log_do_action_crit_edge, %if.end1163.read_next_log_do_action_crit_edge, %for.end1158.read_next_log_do_action_crit_edge, %lor.lhs.false1101.read_next_log_do_action_crit_edge, %if.end1095.read_next_log_do_action_crit_edge, %if.end1072.read_next_log_do_action_crit_edge, %find_dirty_page.read_next_log_do_action_crit_edge, %if.end1061.read_next_log_do_action_crit_edge, %do_action_next.read_next_log_do_action_crit_edge
  %947 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %lcb, align 4
  %call1174 = call fastcc i32 @read_next_log_rec(ptr noundef nonnull %call7.i.i, ptr noundef %948, ptr noundef nonnull %rec_lsn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1174)
  %tobool1175.not = icmp eq i32 %call1174, 0
  br i1 %tobool1175.not, label %land.lhs.true1176, label %read_next_log_do_action.if.end1179_crit_edge

read_next_log_do_action.if.end1179_crit_edge:     ; preds = %read_next_log_do_action
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1179

land.lhs.true1176:                                ; preds = %read_next_log_do_action
  %949 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %949)
  %950 = load i64, ptr %rec_lsn, align 8
  %tobool1177.not = icmp eq i64 %950, 0
  br i1 %tobool1177.not, label %land.lhs.true1176.if.end1179_crit_edge, label %land.lhs.true1176.do_action_next_crit_edge

land.lhs.true1176.do_action_next_crit_edge:       ; preds = %land.lhs.true1176
  call void @__sanitizer_cov_trace_pc() #20
  br label %do_action_next

land.lhs.true1176.if.end1179_crit_edge:           ; preds = %land.lhs.true1176
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1179

if.end1179:                                       ; preds = %land.lhs.true1176.if.end1179_crit_edge, %read_next_log_do_action.if.end1179_crit_edge
  %951 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %952)
  %953 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %953)
  store ptr null, ptr %lcb, align 4
  br label %do_undo_action

do_undo_action:                                   ; preds = %if.end1179, %lor.lhs.false1041.do_undo_action_crit_edge, %do_redo_1.do_undo_action_crit_edge
  %call11802558 = call fastcc ptr @enum_rstbl(ptr noundef %738, ptr noundef null)
  %tobool1181.not2559 = icmp eq ptr %call11802558, null
  br i1 %tobool1181.not2559, label %do_undo_action.undo_action_done_crit_edge, label %if.end1183.lr.ph

do_undo_action.undo_action_done_crit_edge:        ; preds = %do_undo_action
  call void @__sanitizer_cov_trace_pc() #20
  br label %undo_action_done

if.end1183.lr.ph:                                 ; preds = %do_undo_action
  %954 = ptrtoint ptr %738 to i32
  %transaction_id = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 9
  %cluster_size1282 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 3
  br label %if.end1183

if.end1183:                                       ; preds = %transaction_table_next.backedge.if.end1183_crit_edge, %if.end1183.lr.ph
  %call11802560 = phi ptr [ %call11802558, %if.end1183.lr.ph ], [ %call1180, %transaction_table_next.backedge.if.end1183_crit_edge ]
  %transact_state1184 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %call11802560, i32 0, i32 1
  %955 = ptrtoint ptr %transact_state1184 to i32
  call void @__asan_load1_noabort(i32 %955)
  %956 = load i8, ptr %transact_state1184, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %956)
  %cmp1186.not = icmp eq i8 %956, 1
  br i1 %cmp1186.not, label %lor.lhs.false1188, label %if.end1183.if.then1191_crit_edge

if.end1183.if.then1191_crit_edge:                 ; preds = %if.end1183
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1191

lor.lhs.false1188:                                ; preds = %if.end1183
  %undo_next_lsn1189 = getelementptr inbounds %struct.TRANSACTION_ENTRY, ptr %call11802560, i32 0, i32 5
  %957 = ptrtoint ptr %undo_next_lsn1189 to i32
  call void @__asan_load8_noabort(i32 %957)
  %958 = load i64, ptr %undo_next_lsn1189, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %958)
  %tobool1190.not = icmp eq i64 %958, 0
  br i1 %tobool1190.not, label %lor.lhs.false1188.if.then1191_crit_edge, label %if.end1193

lor.lhs.false1188.if.then1191_crit_edge:          ; preds = %lor.lhs.false1188
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then1191

if.then1191:                                      ; preds = %lor.lhs.false1188.if.then1191_crit_edge, %if.end1183.if.then1191_crit_edge
  %959 = ptrtoint ptr %call11802560 to i32
  %sub1192 = sub i32 %959, %954
  call fastcc void @free_rsttbl_idx(ptr noundef %738, i32 noundef %sub1192)
  br label %transaction_table_next.backedge

transaction_table_next.backedge:                  ; preds = %commit_undo, %if.then1191
  %call1180 = call fastcc ptr @enum_rstbl(ptr noundef %738, ptr noundef %call11802560)
  %tobool1181.not = icmp eq ptr %call1180, null
  br i1 %tobool1181.not, label %transaction_table_next.backedge.undo_action_done_crit_edge, label %transaction_table_next.backedge.if.end1183_crit_edge

transaction_table_next.backedge.if.end1183_crit_edge: ; preds = %transaction_table_next.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1183

transaction_table_next.backedge.undo_action_done_crit_edge: ; preds = %transaction_table_next.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %undo_action_done

if.end1193:                                       ; preds = %lor.lhs.false1188
  %960 = ptrtoint ptr %call11802560 to i32
  %sub1194 = sub i32 %960, %954
  %961 = ptrtoint ptr %transaction_id to i32
  call void @__asan_store4_noabort(i32 %961)
  store i32 %sub1194, ptr %transaction_id, align 4
  %962 = ptrtoint ptr %undo_next_lsn1189 to i32
  call void @__asan_load8_noabort(i32 %962)
  %963 = load i64, ptr %undo_next_lsn1189, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %963)
  %tobool1196.not = icmp eq i64 %963, 0
  br i1 %tobool1196.not, label %if.end1193.commit_undo_crit_edge, label %if.end1198

if.end1193.commit_undo_crit_edge:                 ; preds = %if.end1193
  call void @__sanitizer_cov_trace_pc() #20
  br label %commit_undo

if.end1198:                                       ; preds = %if.end1193
  %964 = call i64 @llvm.bswap.i64(i64 %963)
  %call1199 = call fastcc i32 @read_log_rec_lcb(ptr noundef nonnull %call7.i.i, i64 noundef %964, i32 noundef 0, ptr noundef nonnull %lcb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1199)
  %tobool1200.not = icmp eq i32 %call1199, 0
  br i1 %tobool1200.not, label %if.end1198.undo_action_next_crit_edge, label %if.end1198.out_crit_edge

if.end1198.out_crit_edge:                         ; preds = %if.end1198
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1198.undo_action_next_crit_edge:            ; preds = %if.end1198
  br label %undo_action_next

undo_action_next:                                 ; preds = %if.end1301.undo_action_next_crit_edge, %if.end1198.undo_action_next_crit_edge
  %965 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %lcb, align 4
  %log_rec1203 = getelementptr inbounds %struct.lcb, ptr %966, i32 0, i32 1
  %967 = ptrtoint ptr %log_rec1203 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %log_rec1203, align 4
  %969 = ptrtoint ptr %966 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %966, align 4
  %transact_id1205 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %970, i32 0, i32 6
  %971 = ptrtoint ptr %transact_id1205 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load i32, ptr %transact_id1205, align 4
  %973 = call i32 @llvm.bswap.i32(i32 %972)
  %client_data_len1206 = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %970, i32 0, i32 3
  %974 = ptrtoint ptr %client_data_len1206 to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load i32, ptr %client_data_len1206, align 8
  %976 = call i32 @llvm.bswap.i32(i32 %975)
  %call1207 = call fastcc zeroext i1 @check_log_rec(ptr noundef %968, i32 noundef %976, i32 noundef %973, i32 noundef %cond365)
  br i1 %call1207, label %if.end1209, label %undo_action_next.out_crit_edge

undo_action_next.out_crit_edge:                   ; preds = %undo_action_next
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1209:                                       ; preds = %undo_action_next
  %undo_op1210 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 1
  %977 = ptrtoint ptr %undo_op1210 to i32
  call void @__asan_load2_noabort(i32 %977)
  %978 = load i16, ptr %undo_op1210, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %978)
  %cmp1212 = icmp eq i16 %978, 0
  br i1 %cmp1212, label %if.end1209.read_next_log_undo_action_crit_edge, label %if.end1215

if.end1209.read_next_log_undo_action_crit_edge:   ; preds = %if.end1209
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_undo_action

if.end1215:                                       ; preds = %if.end1209
  %979 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %oatbl, align 4
  %target_attr1216 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 6
  %981 = ptrtoint ptr %target_attr1216 to i32
  call void @__asan_load2_noabort(i32 %981)
  %982 = load i16, ptr %target_attr1216, align 4
  %983 = call i16 @llvm.bswap.i16(i16 %982)
  %conv1217 = zext i16 %983 to i32
  %add.ptr1218 = getelementptr i8, ptr %980, i32 %conv1217
  %ptr1219 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %add.ptr1218, i32 0, i32 9
  %984 = ptrtoint ptr %ptr1219 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %ptr1219, align 8
  %lcns_follow1220 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 7
  %986 = ptrtoint ptr %lcns_follow1220 to i32
  call void @__asan_load2_noabort(i32 %986)
  %987 = load i16, ptr %lcns_follow1220, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %987)
  %tobool1221.not = icmp eq i16 %987, 0
  br i1 %tobool1221.not, label %if.end1215.for.end1285_crit_edge, label %for.body1256.preheader

if.end1215.for.end1285_crit_edge:                 ; preds = %if.end1215
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end1285

for.body1256.preheader:                           ; preds = %if.end1215
  %988 = call i16 @llvm.bswap.i16(i16 %987)
  %run11224 = getelementptr inbounds %struct.OpenAttr, ptr %985, i32 0, i32 1
  %989 = ptrtoint ptr %run11224 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %run11224, align 4
  %target_vcn1225 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 12
  %991 = ptrtoint ptr %target_vcn1225 to i32
  call void @__asan_load8_noabort(i32 %991)
  %992 = load i64, ptr %target_vcn1225, align 8
  %993 = call i64 @llvm.bswap.i64(i64 %992)
  %conv1226 = trunc i64 %993 to i32
  %call1227 = call zeroext i1 @run_lookup_entry(ptr noundef %990, i32 noundef %conv1226, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #18
  %target_vcn1246 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 12
  %994 = ptrtoint ptr %target_vcn1246 to i32
  call void @__asan_load8_noabort(i32 %994)
  %995 = load i64, ptr %target_vcn1246, align 8
  %996 = call i64 @llvm.bswap.i64(i64 %995)
  %add1247 = add i64 %996, 1
  %997 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %997)
  %998 = load i8, ptr %cluster_bits, align 8
  %sh_prom1250 = zext i8 %998 to i64
  %shl1251 = shl i64 %add1247, %sh_prom1250
  %999 = call i16 @llvm.umax.i16(i16 %988, i16 1)
  %umax2581 = zext i16 %999 to i32
  br label %for.body1256

for.body1256:                                     ; preds = %for.inc1279.for.body1256_crit_edge, %for.body1256.preheader
  %i.42557 = phi i32 [ %inc1280, %for.inc1279.for.body1256_crit_edge ], [ 0, %for.body1256.preheader ]
  %size.02555 = phi i64 [ %add1284, %for.inc1279.for.body1256_crit_edge ], [ %shl1251, %for.body1256.preheader ]
  %1000 = ptrtoint ptr %985 to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load ptr, ptr %985, align 4
  %non_res1258 = getelementptr inbounds %struct.ATTRIB, ptr %1001, i32 0, i32 2
  %1002 = ptrtoint ptr %non_res1258 to i32
  call void @__asan_load1_noabort(i32 %1002)
  %1003 = load i8, ptr %non_res1258, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1003)
  %tobool1259.not = icmp eq i8 %1003, 0
  br i1 %tobool1259.not, label %if.then1260, label %if.else1269

if.then1260:                                      ; preds = %for.body1256
  %1004 = getelementptr inbounds %struct.ATTRIB, ptr %1001, i32 0, i32 7
  %1005 = ptrtoint ptr %1004 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load i32, ptr %1004, align 8
  %1007 = call i32 @llvm.bswap.i32(i32 %1006)
  %conv1262 = zext i32 %1007 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %size.02555, i64 %conv1262)
  %cmp1263 = icmp ugt i64 %size.02555, %conv1262
  br i1 %cmp1263, label %if.then1265, label %if.then1260.for.inc1279_crit_edge

if.then1260.for.inc1279_crit_edge:                ; preds = %if.then1260
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc1279

if.then1265:                                      ; preds = %if.then1260
  call void @__sanitizer_cov_trace_pc() #20
  %conv1266 = trunc i64 %size.02555 to i32
  %1008 = call i32 @llvm.bswap.i32(i32 %conv1266)
  %1009 = ptrtoint ptr %1004 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store i32 %1008, ptr %1004, align 8
  br label %for.inc1279

if.else1269:                                      ; preds = %for.body1256
  %data_size1270 = getelementptr inbounds %struct.ATTRIB, ptr %1001, i32 0, i32 7, i32 0, i32 6
  %1010 = ptrtoint ptr %data_size1270 to i32
  call void @__asan_load8_noabort(i32 %1010)
  %1011 = load i64, ptr %data_size1270, align 8
  %1012 = call i64 @llvm.bswap.i64(i64 %1011)
  call void @__sanitizer_cov_trace_cmp8(i64 %size.02555, i64 %1012)
  %cmp1271 = icmp ugt i64 %size.02555, %1012
  br i1 %cmp1271, label %if.then1273, label %if.else1269.for.inc1279_crit_edge

if.else1269.for.inc1279_crit_edge:                ; preds = %if.else1269
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc1279

if.then1273:                                      ; preds = %if.else1269
  call void @__sanitizer_cov_trace_pc() #20
  %1013 = call i64 @llvm.bswap.i64(i64 %size.02555)
  %alloc_size1274 = getelementptr inbounds %struct.ATTRIB, ptr %1001, i32 0, i32 7, i32 0, i32 5
  %1014 = ptrtoint ptr %alloc_size1274 to i32
  call void @__asan_store8_noabort(i32 %1014)
  store i64 %1013, ptr %alloc_size1274, align 8
  %1015 = ptrtoint ptr %data_size1270 to i32
  call void @__asan_store8_noabort(i32 %1015)
  store i64 %1013, ptr %data_size1270, align 8
  %valid_size1276 = getelementptr inbounds %struct.ATTRIB, ptr %1001, i32 0, i32 7, i32 0, i32 7
  %1016 = ptrtoint ptr %valid_size1276 to i32
  call void @__asan_store8_noabort(i32 %1016)
  store i64 %1013, ptr %valid_size1276, align 8
  br label %for.inc1279

for.inc1279:                                      ; preds = %if.then1273, %if.else1269.for.inc1279_crit_edge, %if.then1265, %if.then1260.for.inc1279_crit_edge
  %inc1280 = add nuw nsw i32 %i.42557, 1
  %1017 = ptrtoint ptr %cluster_size1282 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load i32, ptr %cluster_size1282, align 8
  %conv1283 = zext i32 %1018 to i64
  %add1284 = add i64 %size.02555, %conv1283
  %exitcond2582.not = icmp eq i32 %inc1280, %umax2581
  br i1 %exitcond2582.not, label %for.inc1279.for.end1285_crit_edge, label %for.inc1279.for.body1256_crit_edge

for.inc1279.for.body1256_crit_edge:               ; preds = %for.inc1279
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body1256

for.inc1279.for.end1285_crit_edge:                ; preds = %for.inc1279
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end1285

for.end1285:                                      ; preds = %for.inc1279.for.end1285_crit_edge, %if.end1215.for.end1285_crit_edge
  %1019 = ptrtoint ptr %undo_op1210 to i32
  call void @__asan_load2_noabort(i32 %1019)
  %1020 = load i16, ptr %undo_op1210, align 2
  %1021 = call i16 @llvm.bswap.i16(i16 %1020)
  %conv1287 = zext i16 %1021 to i32
  %call1288 = call fastcc zeroext i1 @can_skip_action(i32 noundef %conv1287)
  br i1 %call1288, label %for.end1285.read_next_log_undo_action_crit_edge, label %if.end1290

for.end1285.read_next_log_undo_action_crit_edge:  ; preds = %for.end1285
  call void @__sanitizer_cov_trace_pc() #20
  br label %read_next_log_undo_action

if.end1290:                                       ; preds = %for.end1285
  call void @__sanitizer_cov_trace_pc() #20
  %undo_off1291 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 4
  %1022 = ptrtoint ptr %undo_off1291 to i32
  call void @__asan_load2_noabort(i32 %1022)
  %1023 = load i16, ptr %undo_off1291, align 8
  %1024 = call i16 @llvm.bswap.i16(i16 %1023)
  %conv1292 = zext i16 %1024 to i32
  %add.ptr1293 = getelementptr i8, ptr %968, i32 %conv1292
  %undo_len1294 = getelementptr inbounds %struct.LOG_REC_HDR, ptr %968, i32 0, i32 5
  %1025 = ptrtoint ptr %undo_len1294 to i32
  call void @__asan_load2_noabort(i32 %1025)
  %1026 = load i16, ptr %undo_len1294, align 2
  %1027 = call i16 @llvm.bswap.i16(i16 %1026)
  %conv1295 = zext i16 %1027 to i32
  %call1297 = call fastcc i32 @do_action(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr1218, ptr noundef %968, i32 noundef %conv1287, ptr noundef %add.ptr1293, i32 noundef %conv1295, i32 noundef %976, ptr noundef null)
  br label %read_next_log_undo_action

read_next_log_undo_action:                        ; preds = %if.end1290, %for.end1285.read_next_log_undo_action_crit_edge, %if.end1209.read_next_log_undo_action_crit_edge
  %1028 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %lcb, align 4
  %call1298 = call fastcc i32 @read_next_log_rec(ptr noundef nonnull %call7.i.i, ptr noundef %1029, ptr noundef nonnull %rec_lsn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1298)
  %tobool1299.not = icmp eq i32 %call1298, 0
  br i1 %tobool1299.not, label %if.end1301, label %read_next_log_undo_action.out_crit_edge

read_next_log_undo_action.out_crit_edge:          ; preds = %read_next_log_undo_action
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1301:                                       ; preds = %read_next_log_undo_action
  %1030 = ptrtoint ptr %rec_lsn to i32
  call void @__asan_load8_noabort(i32 %1030)
  %1031 = load i64, ptr %rec_lsn, align 8
  %tobool1302.not = icmp eq i64 %1031, 0
  br i1 %tobool1302.not, label %if.end1304, label %if.end1301.undo_action_next_crit_edge

if.end1301.undo_action_next_crit_edge:            ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #20
  br label %undo_action_next

if.end1304:                                       ; preds = %if.end1301
  call void @__sanitizer_cov_trace_pc() #20
  %1032 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %lcb, align 4
  call fastcc void @lcb_put(ptr noundef %1033)
  %1034 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %1034)
  store ptr null, ptr %lcb, align 4
  br label %commit_undo

commit_undo:                                      ; preds = %if.end1304, %if.end1193.commit_undo_crit_edge
  %1035 = ptrtoint ptr %transaction_id to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load i32, ptr %transaction_id, align 4
  call fastcc void @free_rsttbl_idx(ptr noundef %738, i32 noundef %1036)
  %1037 = ptrtoint ptr %transaction_id to i32
  call void @__asan_store4_noabort(i32 %1037)
  store i32 0, ptr %transaction_id, align 4
  br label %transaction_table_next.backedge

undo_action_done:                                 ; preds = %transaction_table_next.backedge.undo_action_done_crit_edge, %do_undo_action.undo_action_done_crit_edge
  %call1307 = call i32 @ntfs_update_mftmirr(ptr noundef %1, i32 noundef 0) #18
  %1038 = ptrtoint ptr %flags848 to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load i32, ptr %flags848, align 8
  %and1309 = and i32 %1039, -67108865
  store i32 %and1309, ptr %flags848, align 8
  br label %end_reply

end_reply:                                        ; preds = %undo_action_done, %lor.lhs.false843.end_reply_crit_edge, %land.lhs.true841.end_reply_crit_edge
  br i1 %tobool.i.not, label %if.end8.i.i2387, label %end_reply.out_crit_edge

end_reply.out_crit_edge:                          ; preds = %end_reply
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i.i2387:                                  ; preds = %end_reply
  %1040 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %1040)
  %1041 = load i32, ptr %page_size14, align 8
  %call9.i.i2386 = call noalias align 128 ptr @__kmalloc(i32 noundef %1041, i32 noundef 3392) #22
  %tobool1315.not = icmp eq ptr %call9.i.i2386, null
  br i1 %tobool1315.not, label %if.end8.i.i2387.out_crit_edge, label %if.end1317

if.end8.i.i2387.out_crit_edge:                    ; preds = %if.end8.i.i2387
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end1317:                                       ; preds = %if.end8.i.i2387
  %1042 = ptrtoint ptr %call9.i.i2386 to i32
  call void @__asan_store4_noabort(i32 %1042)
  store i32 1381192786, ptr %call9.i.i2386, align 128
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i2386, i32 0, i32 1
  %1043 = ptrtoint ptr %fix_off to i32
  call void @__asan_store2_noabort(i32 %1043)
  store i16 7680, ptr %fix_off, align 4
  %1044 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load i32, ptr %page_size14, align 8
  %shr1322 = lshr i32 %1045, 9
  %1046 = trunc i32 %shr1322 to i16
  %conv1324 = add i16 %1046, 1
  %1047 = call i16 @llvm.bswap.i16(i16 %conv1324)
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i2386, i32 0, i32 2
  %1048 = ptrtoint ptr %fix_num to i32
  call void @__asan_store2_noabort(i32 %1048)
  store i16 %1047, ptr %fix_num, align 2
  %1049 = call i32 @llvm.bswap.i32(i32 %1045)
  %sys_page_size1327 = getelementptr inbounds %struct.RESTART_HDR, ptr %call9.i.i2386, i32 0, i32 1
  %1050 = ptrtoint ptr %sys_page_size1327 to i32
  call void @__asan_store4_noabort(i32 %1050)
  store i32 %1049, ptr %sys_page_size1327, align 16
  %page_size1329 = getelementptr inbounds %struct.RESTART_HDR, ptr %call9.i.i2386, i32 0, i32 2
  %1051 = ptrtoint ptr %page_size1329 to i32
  call void @__asan_store4_noabort(i32 %1051)
  store i32 %1049, ptr %page_size1329, align 4
  %mul1331 = shl i16 %conv1324, 1
  %add1333 = add i16 %mul1331, 37
  %and1334 = and i16 %add1333, -8
  %1052 = call i16 @llvm.bswap.i16(i16 %and1334)
  %ra_off1336 = getelementptr inbounds %struct.RESTART_HDR, ptr %call9.i.i2386, i32 0, i32 3
  %1053 = ptrtoint ptr %ra_off1336 to i32
  call void @__asan_store2_noabort(i32 %1053)
  store i16 %1052, ptr %ra_off1336, align 8
  %minor_ver1337 = getelementptr inbounds %struct.RESTART_HDR, ptr %call9.i.i2386, i32 0, i32 4
  %1054 = ptrtoint ptr %minor_ver1337 to i32
  call void @__asan_store2_noabort(i32 %1054)
  store i16 256, ptr %minor_ver1337, align 2
  %major_ver1338 = getelementptr inbounds %struct.RESTART_HDR, ptr %call9.i.i2386, i32 0, i32 5
  %1055 = ptrtoint ptr %major_ver1338 to i32
  call void @__asan_store2_noabort(i32 %1055)
  store i16 256, ptr %major_ver1338, align 4
  %conv1339 = zext i16 %and1334 to i32
  %add.ptr1340 = getelementptr i8, ptr %call9.i.i2386, i32 %conv1339
  %1056 = call ptr @memcpy(ptr %add.ptr1340, ptr %ra.0, i32 64)
  %client_idx1341 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr1340, i32 0, i32 2
  %1057 = ptrtoint ptr %client_idx1341 to i32
  call void @__asan_store2_noabort(i32 %1057)
  store i16 0, ptr %client_idx1341, align 2
  %arrayidx1344 = getelementptr [2 x i16], ptr %client_idx1341, i32 0, i32 1
  %1058 = ptrtoint ptr %arrayidx1344 to i32
  call void @__asan_store2_noabort(i32 %1058)
  store i16 -1, ptr %arrayidx1344, align 4
  %flags1345 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr1340, i32 0, i32 3
  %1059 = ptrtoint ptr %flags1345 to i32
  call void @__asan_store2_noabort(i32 %1059)
  store i16 512, ptr %flags1345, align 2
  %open_log_count1346 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr1340, i32 0, i32 11
  %1060 = ptrtoint ptr %open_log_count1346 to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load i32, ptr %open_log_count1346, align 8
  %1062 = call i32 @llvm.bswap.i32(i32 %1061) #18
  %add.i2390 = add i32 %1062, 1
  %1063 = call i32 @llvm.bswap.i32(i32 %add.i2390) #18
  %1064 = ptrtoint ptr %open_log_count1346 to i32
  call void @__asan_store4_noabort(i32 %1064)
  store i32 %1063, ptr %open_log_count1346, align 8
  %call1349 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef nonnull %call9.i.i2386, i32 noundef %1045) #18
  %run1350 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %1065 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load i32, ptr %page_size14, align 8
  %call1352 = call i32 @ntfs_sb_write_run(ptr noundef %1, ptr noundef %run1350, i64 noundef 0, ptr noundef nonnull %call9.i.i2386, i32 noundef %1066, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1352)
  %tobool1353.not = icmp eq i32 %call1352, 0
  br i1 %tobool1353.not, label %if.then1354, label %if.end1317.if.end1361_crit_edge

if.end1317.if.end1361_crit_edge:                  ; preds = %if.end1317
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1361

if.then1354:                                      ; preds = %if.end1317
  call void @__sanitizer_cov_trace_pc() #20
  %1067 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1067)
  %1068 = load ptr, ptr %call7.i.i, align 8
  %run1356 = getelementptr inbounds %struct.ntfs_inode, ptr %1068, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %1069 = ptrtoint ptr %page_size14 to i32
  call void @__asan_load4_noabort(i32 %1069)
  %1070 = load i32, ptr %page_size14, align 8
  %conv1358 = zext i32 %1070 to i64
  %call1360 = call i32 @ntfs_sb_write_run(ptr noundef %1, ptr noundef %run1356, i64 noundef %conv1358, ptr noundef nonnull %call9.i.i2386, i32 noundef %1070, i32 noundef 0) #18
  br label %if.end1361

if.end1361:                                       ; preds = %if.then1354, %if.end1317.if.end1361_crit_edge
  %err.3 = phi i32 [ %call1352, %if.end1317.if.end1361_crit_edge ], [ %call1360, %if.then1354 ]
  call void @kfree(ptr noundef nonnull %call9.i.i2386) #18
  br label %out

out:                                              ; preds = %if.end1361, %if.end8.i.i2387.out_crit_edge, %end_reply.out_crit_edge, %read_next_log_undo_action.out_crit_edge, %undo_action_next.out_crit_edge, %if.end1198.out_crit_edge, %if.end1168.out_crit_edge, %if.end1091.out_crit_edge, %if.end1084.out_crit_edge, %if.end1077.out_crit_edge, %if.end1055.out_crit_edge, %if.end1045.out_crit_edge, %land.lhs.true1027.out_crit_edge, %if.then882, %if.end856.out_crit_edge, %if.end847.out_crit_edge, %next_log_record_analyze.backedge.out_crit_edge, %if.then757.out_crit_edge, %if.end727.out_crit_edge, %if.then712.out_crit_edge, %if.end631.out_crit_edge, %if.else624.out_crit_edge, %if.then597.out_crit_edge, %if.then583.out_crit_edge, %if.end567.out_crit_edge, %next_log_record_analyze.preheader.out_crit_edge, %if.end555.out_crit_edge, %if.then549.out_crit_edge, %trace_attribute_table.out_crit_edge, %if.end500.out_crit_edge, %if.end492.out_crit_edge, %if.end485.out_crit_edge, %if.end481.out_crit_edge, %if.end467.out_crit_edge, %if.end463.out_crit_edge, %if.end413.out_crit_edge, %if.end405.out_crit_edge, %if.end398.out_crit_edge, %if.end394.out_crit_edge, %if.end387.out_crit_edge, %if.end380.out_crit_edge, %if.end375.out_crit_edge, %if.end371.out_crit_edge, %if.end358.out_crit_edge, %for.end.out_crit_edge, %sw.default, %if.end265.out_crit_edge, %if.end221.out_crit_edge, %if.end130.out_crit_edge, %lor.lhs.false124.out_crit_edge, %if.end121.out_crit_edge, %init_log_instance.out_crit_edge, %lor.lhs.false81.out_crit_edge, %cond.end.thread.out_crit_edge, %if.end29.out_crit_edge, %if.then25.out_crit_edge, %if.end13.out_crit_edge, %if.end6.out_crit_edge
  %ra.1 = phi ptr [ null, %if.end13.out_crit_edge ], [ %ra.0, %sw.default ], [ %ra.0, %for.end.out_crit_edge ], [ %ra.0, %if.end371.out_crit_edge ], [ %ra.0, %if.end394.out_crit_edge ], [ %ra.0, %if.end463.out_crit_edge ], [ %ra.0, %if.end481.out_crit_edge ], [ %ra.0, %if.end555.out_crit_edge ], [ %ra.0, %if.end847.out_crit_edge ], [ %ra.0, %if.then882 ], [ %ra.0, %if.end1045.out_crit_edge ], [ %ra.0, %end_reply.out_crit_edge ], [ %ra.0, %if.end1361 ], [ %ra.0, %if.end358.out_crit_edge ], [ %call9.i.i, %if.end265.out_crit_edge ], [ null, %if.end6.out_crit_edge ], [ null, %if.then25.out_crit_edge ], [ null, %if.end29.out_crit_edge ], [ null, %lor.lhs.false124.out_crit_edge ], [ null, %if.end121.out_crit_edge ], [ null, %if.end130.out_crit_edge ], [ null, %if.end221.out_crit_edge ], [ %ra.0, %if.end375.out_crit_edge ], [ %ra.0, %if.end380.out_crit_edge ], [ %ra.0, %if.end387.out_crit_edge ], [ %ra.0, %if.end398.out_crit_edge ], [ %ra.0, %if.end405.out_crit_edge ], [ %ra.0, %if.end413.out_crit_edge ], [ %ra.0, %if.end467.out_crit_edge ], [ %ra.0, %if.end485.out_crit_edge ], [ %ra.0, %if.end492.out_crit_edge ], [ %ra.0, %if.end500.out_crit_edge ], [ %ra.0, %trace_attribute_table.out_crit_edge ], [ %ra.0, %if.then549.out_crit_edge ], [ %ra.0, %if.end8.i.i2387.out_crit_edge ], [ null, %lor.lhs.false81.out_crit_edge ], [ null, %cond.end.thread.out_crit_edge ], [ null, %init_log_instance.out_crit_edge ], [ %ra.0, %next_log_record_analyze.preheader.out_crit_edge ], [ %ra.0, %read_next_log_undo_action.out_crit_edge ], [ %ra.0, %undo_action_next.out_crit_edge ], [ %ra.0, %if.end1198.out_crit_edge ], [ %ra.0, %if.end1168.out_crit_edge ], [ %ra.0, %if.end1055.out_crit_edge ], [ %ra.0, %if.end1077.out_crit_edge ], [ %ra.0, %if.end1084.out_crit_edge ], [ %ra.0, %if.end1091.out_crit_edge ], [ %ra.0, %land.lhs.true1027.out_crit_edge ], [ %ra.0, %if.end856.out_crit_edge ], [ %ra.0, %if.then712.out_crit_edge ], [ %ra.0, %if.then757.out_crit_edge ], [ %ra.0, %if.end727.out_crit_edge ], [ %ra.0, %if.end631.out_crit_edge ], [ %ra.0, %if.else624.out_crit_edge ], [ %ra.0, %if.then597.out_crit_edge ], [ %ra.0, %if.then583.out_crit_edge ], [ %ra.0, %if.end567.out_crit_edge ], [ %ra.0, %next_log_record_analyze.backedge.out_crit_edge ]
  %attr_names.1 = phi ptr [ null, %if.end13.out_crit_edge ], [ null, %sw.default ], [ null, %for.end.out_crit_edge ], [ null, %if.end371.out_crit_edge ], [ null, %if.end394.out_crit_edge ], [ null, %if.end463.out_crit_edge ], [ %attr_names.0, %if.end481.out_crit_edge ], [ %attr_names.0, %if.end555.out_crit_edge ], [ %attr_names.0, %if.end847.out_crit_edge ], [ %attr_names.0, %if.then882 ], [ %attr_names.0, %if.end1045.out_crit_edge ], [ %attr_names.0, %end_reply.out_crit_edge ], [ %attr_names.0, %if.end1361 ], [ null, %if.end358.out_crit_edge ], [ null, %if.end265.out_crit_edge ], [ null, %if.end6.out_crit_edge ], [ null, %if.then25.out_crit_edge ], [ null, %if.end29.out_crit_edge ], [ null, %lor.lhs.false124.out_crit_edge ], [ null, %if.end121.out_crit_edge ], [ null, %if.end130.out_crit_edge ], [ null, %if.end221.out_crit_edge ], [ null, %if.end375.out_crit_edge ], [ null, %if.end380.out_crit_edge ], [ null, %if.end387.out_crit_edge ], [ null, %if.end398.out_crit_edge ], [ null, %if.end405.out_crit_edge ], [ null, %if.end413.out_crit_edge ], [ null, %if.end467.out_crit_edge ], [ %attr_names.0, %if.end485.out_crit_edge ], [ %attr_names.0, %if.end492.out_crit_edge ], [ %attr_names.0, %if.end500.out_crit_edge ], [ %attr_names.0, %trace_attribute_table.out_crit_edge ], [ %attr_names.0, %if.then549.out_crit_edge ], [ %attr_names.0, %if.end8.i.i2387.out_crit_edge ], [ null, %lor.lhs.false81.out_crit_edge ], [ null, %cond.end.thread.out_crit_edge ], [ null, %init_log_instance.out_crit_edge ], [ %attr_names.0, %next_log_record_analyze.preheader.out_crit_edge ], [ %attr_names.0, %read_next_log_undo_action.out_crit_edge ], [ %attr_names.0, %undo_action_next.out_crit_edge ], [ %attr_names.0, %if.end1198.out_crit_edge ], [ %attr_names.0, %if.end1168.out_crit_edge ], [ %attr_names.0, %if.end1055.out_crit_edge ], [ %attr_names.0, %if.end1077.out_crit_edge ], [ %attr_names.0, %if.end1084.out_crit_edge ], [ %attr_names.0, %if.end1091.out_crit_edge ], [ %attr_names.0, %land.lhs.true1027.out_crit_edge ], [ %attr_names.0, %if.end856.out_crit_edge ], [ %attr_names.0, %if.then712.out_crit_edge ], [ %attr_names.0, %if.then757.out_crit_edge ], [ %attr_names.0, %if.end727.out_crit_edge ], [ %attr_names.0, %if.end631.out_crit_edge ], [ %attr_names.0, %if.else624.out_crit_edge ], [ %attr_names.0, %if.then597.out_crit_edge ], [ %attr_names.0, %if.then583.out_crit_edge ], [ %attr_names.0, %if.end567.out_crit_edge ], [ %attr_names.0, %next_log_record_analyze.backedge.out_crit_edge ]
  %err.4 = phi i32 [ %call17, %if.end13.out_crit_edge ], [ -95, %sw.default ], [ %call355, %for.end.out_crit_edge ], [ %call372, %if.end371.out_crit_edge ], [ %call395, %if.end394.out_crit_edge ], [ %call464, %if.end463.out_crit_edge ], [ %call482, %if.end481.out_crit_edge ], [ %call557, %if.end555.out_crit_edge ], [ 0, %if.end847.out_crit_edge ], [ -12, %if.then882 ], [ %call1046, %if.end1045.out_crit_edge ], [ 0, %end_reply.out_crit_edge ], [ %err.3, %if.end1361 ], [ 0, %if.end358.out_crit_edge ], [ %call267, %if.end265.out_crit_edge ], [ -12, %if.end6.out_crit_edge ], [ -22, %if.then25.out_crit_edge ], [ -12, %if.end29.out_crit_edge ], [ -22, %lor.lhs.false124.out_crit_edge ], [ -22, %if.end121.out_crit_edge ], [ -22, %if.end130.out_crit_edge ], [ -12, %if.end221.out_crit_edge ], [ -22, %if.end375.out_crit_edge ], [ -22, %if.end380.out_crit_edge ], [ -12, %if.end387.out_crit_edge ], [ -22, %if.end398.out_crit_edge ], [ -22, %if.end405.out_crit_edge ], [ -12, %if.end413.out_crit_edge ], [ -22, %if.end467.out_crit_edge ], [ -22, %if.end485.out_crit_edge ], [ -22, %if.end492.out_crit_edge ], [ -12, %if.end500.out_crit_edge ], [ 0, %trace_attribute_table.out_crit_edge ], [ -12, %if.then549.out_crit_edge ], [ -12, %if.end8.i.i2387.out_crit_edge ], [ -22, %lor.lhs.false81.out_crit_edge ], [ -22, %cond.end.thread.out_crit_edge ], [ -12, %init_log_instance.out_crit_edge ], [ %call5612515, %next_log_record_analyze.preheader.out_crit_edge ], [ -22, %undo_action_next.out_crit_edge ], [ %call1298, %read_next_log_undo_action.out_crit_edge ], [ %call1199, %if.end1198.out_crit_edge ], [ -22, %if.end1091.out_crit_edge ], [ -22, %if.end1084.out_crit_edge ], [ -22, %if.end1077.out_crit_edge ], [ -22, %if.end1055.out_crit_edge ], [ %call1170, %if.end1168.out_crit_edge ], [ -12, %land.lhs.true1027.out_crit_edge ], [ -12, %if.end856.out_crit_edge ], [ %call561, %next_log_record_analyze.backedge.out_crit_edge ], [ -22, %if.end567.out_crit_edge ], [ -12, %if.then583.out_crit_edge ], [ -12, %if.then597.out_crit_edge ], [ -12, %if.else624.out_crit_edge ], [ -12, %if.end631.out_crit_edge ], [ -12, %if.end727.out_crit_edge ], [ -12, %if.then757.out_crit_edge ], [ -12, %if.then712.out_crit_edge ]
  %1071 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %rst, align 4
  call void @kfree(ptr noundef %1072) #18
  %1073 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load ptr, ptr %lcb, align 4
  %tobool1365.not = icmp eq ptr %1074, null
  br i1 %tobool1365.not, label %out.if.end1367_crit_edge, label %if.then1366

out.if.end1367_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1367

if.then1366:                                      ; preds = %out
  %alloc.i = getelementptr inbounds %struct.lcb, ptr %1074, i32 0, i32 4
  %1075 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load1_noabort(i32 %1075)
  %1076 = load i8, ptr %alloc.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1076)
  %tobool.not.i2391 = icmp eq i8 %1076, 0
  br i1 %tobool.not.i2391, label %if.then1366.lcb_put.exit_crit_edge, label %if.then.i2392

if.then1366.lcb_put.exit_crit_edge:               ; preds = %if.then1366
  call void @__sanitizer_cov_trace_pc() #20
  br label %lcb_put.exit

if.then.i2392:                                    ; preds = %if.then1366
  call void @__sanitizer_cov_trace_pc() #20
  %log_rec.i = getelementptr inbounds %struct.lcb, ptr %1074, i32 0, i32 1
  %1077 = ptrtoint ptr %log_rec.i to i32
  call void @__asan_load4_noabort(i32 %1077)
  %1078 = load ptr, ptr %log_rec.i, align 4
  call void @kfree(ptr noundef %1078) #18
  br label %lcb_put.exit

lcb_put.exit:                                     ; preds = %if.then.i2392, %if.then1366.lcb_put.exit_crit_edge
  %1079 = ptrtoint ptr %1074 to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %1074, align 4
  call void @kfree(ptr noundef %1080) #18
  call void @kfree(ptr noundef nonnull %1074) #18
  br label %if.end1367

if.end1367:                                       ; preds = %lcb_put.exit, %out.if.end1367_crit_edge
  %1081 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %oatbl, align 4
  %tobool.not.i2394 = icmp eq ptr %1082, null
  %total.i2400 = getelementptr inbounds %struct.RESTART_TABLE, ptr %1082, i32 0, i32 2
  %add.ptr.i2403 = getelementptr i8, ptr %1082, i32 24
  %used.i.i2410 = getelementptr inbounds %struct.RESTART_TABLE, ptr %1082, i32 0, i32 1
  %1083 = ptrtoint ptr %1082 to i32
  br label %while.cond1368

while.cond1368:                                   ; preds = %while.cond1368.backedge, %if.end1367
  %oe.2 = phi ptr [ null, %if.end1367 ], [ %e.138.i2418, %while.cond1368.backedge ]
  br i1 %tobool.not.i2394, label %cond.end.i2396, label %cond.end.thread.i2399

cond.end.i2396:                                   ; preds = %while.cond1368
  %tobool2.not.i2395 = icmp eq ptr %oe.2, null
  br i1 %tobool2.not.i2395, label %cond.end.i2396.while.end1398_crit_edge, label %cond.end.i2396.if.else.i2407_crit_edge

cond.end.i2396.if.else.i2407_crit_edge:           ; preds = %cond.end.i2396
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i2407

cond.end.i2396.while.end1398_crit_edge:           ; preds = %cond.end.i2396
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end1398

cond.end.thread.i2399:                            ; preds = %while.cond1368
  %1084 = ptrtoint ptr %1082 to i32
  call void @__asan_load2_noabort(i32 %1084)
  %1085 = load i16, ptr %1082, align 4
  %1086 = call i16 @llvm.bswap.i16(i16 %1085) #18
  %phi.cast.i2397 = zext i16 %1086 to i32
  %tobool2.not30.i2398 = icmp eq ptr %oe.2, null
  br i1 %tobool2.not30.i2398, label %lor.lhs.false.i2402, label %cond.end.thread.i2399.if.else.i2407_crit_edge

cond.end.thread.i2399.if.else.i2407_crit_edge:    ; preds = %cond.end.thread.i2399
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i2407

lor.lhs.false.i2402:                              ; preds = %cond.end.thread.i2399
  %1087 = ptrtoint ptr %total.i2400 to i32
  call void @__asan_load2_noabort(i32 %1087)
  %1088 = load i16, ptr %total.i2400, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1088)
  %tobool4.not.i2401 = icmp eq i16 %1088, 0
  br i1 %tobool4.not.i2401, label %lor.lhs.false.i2402.while.end1398_crit_edge, label %lor.lhs.false.i2402.if.end8.i2417_crit_edge

lor.lhs.false.i2402.if.end8.i2417_crit_edge:      ; preds = %lor.lhs.false.i2402
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i2417

lor.lhs.false.i2402.while.end1398_crit_edge:      ; preds = %lor.lhs.false.i2402
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end1398

if.else.i2407:                                    ; preds = %cond.end.thread.i2399.if.else.i2407_crit_edge, %cond.end.i2396.if.else.i2407_crit_edge
  %cond31.i2405 = phi i32 [ %phi.cast.i2397, %cond.end.thread.i2399.if.else.i2407_crit_edge ], [ 0, %cond.end.i2396.if.else.i2407_crit_edge ]
  %add.ptr7.i2406 = getelementptr i8, ptr %oe.2, i32 %cond31.i2405
  br label %if.end8.i2417

if.end8.i2417:                                    ; preds = %if.else.i2407, %lor.lhs.false.i2402.if.end8.i2417_crit_edge
  %cond32.i2408 = phi i32 [ %cond31.i2405, %if.else.i2407 ], [ %phi.cast.i2397, %lor.lhs.false.i2402.if.end8.i2417_crit_edge ]
  %e.0.i2409 = phi ptr [ %add.ptr7.i2406, %if.else.i2407 ], [ %add.ptr.i2403, %lor.lhs.false.i2402.if.end8.i2417_crit_edge ]
  %1089 = ptrtoint ptr %used.i.i2410 to i32
  call void @__asan_load2_noabort(i32 %1089)
  %1090 = load i16, ptr %used.i.i2410, align 2
  %1091 = call i16 @llvm.bswap.i16(i16 %1090) #18
  %conv.i.i2411 = zext i16 %1091 to i32
  %1092 = ptrtoint ptr %1082 to i32
  call void @__asan_load2_noabort(i32 %1092)
  %1093 = load i16, ptr %1082, align 4
  %1094 = call i16 @llvm.bswap.i16(i16 %1093) #18
  %conv1.i.i2412 = zext i16 %1094 to i32
  %mul.i.i2413 = mul nuw i32 %conv1.i.i2412, %conv.i.i2411
  %add.i.i2414 = add nuw i32 %mul.i.i2413, 24
  %1095 = ptrtoint ptr %e.0.i2409 to i32
  %sub36.i2415 = sub i32 %1095, %1083
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i2415, i32 %add.i.i2414)
  %cmp37.i2416 = icmp ult i32 %sub36.i2415, %add.i.i2414
  br i1 %cmp37.i2416, label %if.end8.i2417.for.body.i2420_crit_edge, label %if.end8.i2417.while.end1398_crit_edge

if.end8.i2417.while.end1398_crit_edge:            ; preds = %if.end8.i2417
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end1398

if.end8.i2417.for.body.i2420_crit_edge:           ; preds = %if.end8.i2417
  br label %for.body.i2420

for.body.i2420:                                   ; preds = %for.inc.i2424.for.body.i2420_crit_edge, %if.end8.i2417.for.body.i2420_crit_edge
  %e.138.i2418 = phi ptr [ %add.ptr15.i2421, %for.inc.i2424.for.body.i2420_crit_edge ], [ %e.0.i2409, %if.end8.i2417.for.body.i2420_crit_edge ]
  %1096 = ptrtoint ptr %e.138.i2418 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load i32, ptr %e.138.i2418, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1097)
  %cmp10.i2419 = icmp eq i32 %1097, -1
  br i1 %cmp10.i2419, label %enum_rstbl.exit2426, label %for.inc.i2424

for.inc.i2424:                                    ; preds = %for.body.i2420
  %add.ptr15.i2421 = getelementptr i8, ptr %e.138.i2418, i32 %cond32.i2408
  %1098 = ptrtoint ptr %add.ptr15.i2421 to i32
  %sub.i2422 = sub i32 %1098, %1083
  %cmp.i2423 = icmp ult i32 %sub.i2422, %add.i.i2414
  br i1 %cmp.i2423, label %for.inc.i2424.for.body.i2420_crit_edge, label %for.inc.i2424.while.end1398_crit_edge

for.inc.i2424.while.end1398_crit_edge:            ; preds = %for.inc.i2424
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end1398

for.inc.i2424.for.body.i2420_crit_edge:           ; preds = %for.inc.i2424
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i2420

enum_rstbl.exit2426:                              ; preds = %for.body.i2420
  %tobool1370.not = icmp eq ptr %e.138.i2418, null
  br i1 %tobool1370.not, label %enum_rstbl.exit2426.while.end1398_crit_edge, label %while.body1371

enum_rstbl.exit2426.while.end1398_crit_edge:      ; preds = %enum_rstbl.exit2426
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end1398

while.body1371:                                   ; preds = %enum_rstbl.exit2426
  %is_attr_name1374 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %e.138.i2418, i32 0, i32 4
  %1099 = ptrtoint ptr %is_attr_name1374 to i32
  call void @__asan_load1_noabort(i32 %1099)
  %1100 = load i8, ptr %is_attr_name1374, align 1
  %1101 = zext i8 %1100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1101, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %1100, label %while.body1371.while.cond1368.backedge_crit_edge [
    i8 1, label %if.then1378
    i8 0, label %if.end1385
  ]

while.body1371.while.cond1368.backedge_crit_edge: ; preds = %while.body1371
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond1368.backedge

if.then1378:                                      ; preds = %while.body1371
  call void @__sanitizer_cov_trace_pc() #20
  %ptr1379 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %e.138.i2418, i32 0, i32 9
  %1102 = ptrtoint ptr %ptr1379 to i32
  call void @__asan_load4_noabort(i32 %1102)
  %1103 = load ptr, ptr %ptr1379, align 8
  call void @kfree(ptr noundef %1103) #18
  %1104 = ptrtoint ptr %ptr1379 to i32
  call void @__asan_store4_noabort(i32 %1104)
  store ptr null, ptr %ptr1379, align 8
  br label %while.cond1368.backedge

while.cond1368.backedge:                          ; preds = %if.end1397, %if.end1385.while.cond1368.backedge_crit_edge, %if.then1378, %while.body1371.while.cond1368.backedge_crit_edge
  br label %while.cond1368

if.end1385:                                       ; preds = %while.body1371
  %ptr1386 = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %e.138.i2418, i32 0, i32 9
  %1105 = ptrtoint ptr %ptr1386 to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load ptr, ptr %ptr1386, align 8
  %tobool1387.not = icmp eq ptr %1106, null
  br i1 %tobool1387.not, label %if.end1385.while.cond1368.backedge_crit_edge, label %if.end1389

if.end1385.while.cond1368.backedge_crit_edge:     ; preds = %if.end1385
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond1368.backedge

if.end1389:                                       ; preds = %if.end1385
  %run01390 = getelementptr inbounds %struct.OpenAttr, ptr %1106, i32 0, i32 2
  %1107 = ptrtoint ptr %run01390 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load ptr, ptr %run01390, align 4
  call void @kvfree(ptr noundef %1108) #18
  %1109 = call ptr @memset(ptr %run01390, i32 0, i32 12)
  %1110 = ptrtoint ptr %1106 to i32
  call void @__asan_load4_noabort(i32 %1110)
  %1111 = load ptr, ptr %1106, align 4
  call void @kfree(ptr noundef %1111) #18
  %ni1392 = getelementptr inbounds %struct.OpenAttr, ptr %1106, i32 0, i32 3
  %1112 = ptrtoint ptr %ni1392 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load ptr, ptr %ni1392, align 4
  %tobool1393.not = icmp eq ptr %1113, null
  br i1 %tobool1393.not, label %if.end1389.if.end1397_crit_edge, label %if.then1394

if.end1389.if.end1397_crit_edge:                  ; preds = %if.end1389
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1397

if.then1394:                                      ; preds = %if.end1389
  call void @__sanitizer_cov_trace_pc() #20
  %vfs_inode1396 = getelementptr inbounds %struct.ntfs_inode, ptr %1113, i32 0, i32 11
  call void @iput(ptr noundef %vfs_inode1396) #18
  br label %if.end1397

if.end1397:                                       ; preds = %if.then1394, %if.end1389.if.end1397_crit_edge
  call void @kfree(ptr noundef nonnull %1106) #18
  br label %while.cond1368.backedge

while.end1398:                                    ; preds = %enum_rstbl.exit2426.while.end1398_crit_edge, %for.inc.i2424.while.end1398_crit_edge, %if.end8.i2417.while.end1398_crit_edge, %lor.lhs.false.i2402.while.end1398_crit_edge, %cond.end.i2396.while.end1398_crit_edge
  %1114 = ptrtoint ptr %trtbl to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load ptr, ptr %trtbl, align 4
  call void @kfree(ptr noundef %1115) #18
  %1116 = ptrtoint ptr %oatbl to i32
  call void @__asan_load4_noabort(i32 %1116)
  %1117 = load ptr, ptr %oatbl, align 4
  call void @kfree(ptr noundef %1117) #18
  %1118 = ptrtoint ptr %dptbl to i32
  call void @__asan_load4_noabort(i32 %1118)
  %1119 = load ptr, ptr %dptbl, align 4
  call void @kfree(ptr noundef %1119) #18
  call void @kfree(ptr noundef %attr_names.1) #18
  %r_page1399 = getelementptr inbounds %struct.restart_info, ptr %rst_info, i32 0, i32 1
  %1120 = ptrtoint ptr %r_page1399 to i32
  call void @__asan_load4_noabort(i32 %1120)
  %1121 = load ptr, ptr %r_page1399, align 8
  call void @kfree(ptr noundef %1121) #18
  call void @kfree(ptr noundef %ra.1) #18
  %1122 = ptrtoint ptr %one_page_buf to i32
  call void @__asan_load4_noabort(i32 %1122)
  %1123 = load ptr, ptr %one_page_buf, align 4
  call void @kfree(ptr noundef %1123) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %cond2236 = icmp eq i32 %err.4, 0
  br i1 %cond2236, label %while.end1398.if.else1409_crit_edge, label %if.then1402

while.end1398.if.else1409_crit_edge:              ; preds = %while.end1398
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else1409

if.then1402:                                      ; preds = %while.end1398
  %flags1403 = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 14
  %1124 = ptrtoint ptr %flags1403 to i32
  call void @__asan_load4_noabort(i32 %1124)
  %1125 = load i32, ptr %flags1403, align 8
  %or1404 = or i32 %1125, 67108864
  store i32 %or1404, ptr %flags1403, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -30, i32 %err.4)
  %cmp1406 = icmp eq i32 %err.4, -30
  br i1 %cmp1406, label %if.then1402.if.end1415_crit_edge, label %if.then1402.if.else1409_crit_edge

if.then1402.if.else1409_crit_edge:                ; preds = %if.then1402
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else1409

if.then1402.if.end1415_crit_edge:                 ; preds = %if.then1402
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1415

if.else1409:                                      ; preds = %if.then1402.if.else1409_crit_edge, %while.end1398.if.else1409_crit_edge
  %set_dirty1410 = getelementptr inbounds %struct.ntfs_log, ptr %call7.i.i, i32 0, i32 25
  %1126 = ptrtoint ptr %set_dirty1410 to i32
  call void @__asan_load1_noabort(i32 %1126)
  %1127 = load i8, ptr %set_dirty1410, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1127)
  %tobool1411.not = icmp eq i8 %1127, 0
  br i1 %tobool1411.not, label %if.else1409.if.end1415_crit_edge, label %if.then1412

if.else1409.if.end1415_crit_edge:                 ; preds = %if.else1409
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end1415

if.then1412:                                      ; preds = %if.else1409
  call void @__sanitizer_cov_trace_pc() #20
  %call1413 = call i32 @ntfs_set_state(ptr noundef %1, i32 noundef 2) #18
  br label %if.end1415

if.end1415:                                       ; preds = %if.then1412, %if.else1409.if.end1415_crit_edge, %if.then1402.if.end1415_crit_edge
  %err.5 = phi i32 [ %err.4, %if.then1412 ], [ %err.4, %if.else1409.if.end1415_crit_edge ], [ 0, %if.then1402.if.end1415_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup1416

cleanup1416:                                      ; preds = %if.end1415, %if.then296.cleanup1416_crit_edge, %if.end.cleanup1416_crit_edge, %entry.cleanup1416_crit_edge
  %retval.0 = phi i32 [ %err.5, %if.end1415 ], [ -22, %entry.cleanup1416_crit_edge ], [ -12, %if.end.cleanup1416_crit_edge ], [ -22, %if.then296.cleanup1416_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcb) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rst) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oatbl) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trtbl) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptbl) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ra_lsn) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rec_lsn) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rst_info2) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rst_info) #18
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @log_read_rst(ptr nocapture noundef readonly %log, i32 noundef %l_size, i1 noundef zeroext %first, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  %r_page = alloca ptr, align 4
  %usa_error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_page) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 4096) #21
  %1 = ptrtoint ptr %r_page to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %r_page, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup85

if.end:                                           ; preds = %entry
  %2 = call ptr @memset(ptr %info, i32 0, i32 24)
  %.113 = select i1 %first, i32 0, i32 512
  call void @__sanitizer_cov_trace_cmp4(i32 %.113, i32 %l_size)
  %cmp146 = icmp ult i32 %.113, %l_size
  br i1 %cmp146, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %. = select i1 %first, i32 512, i32 0
  %valid_page = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 4
  %initialized29 = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 5
  %vbo30 = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vbo.1148 = phi i32 [ %.113, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %skip.1147 = phi i32 [ %., %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usa_error) #18
  %3 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %usa_error, align 1, !annotation !15
  %call4 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %vbo.1148, ptr noundef nonnull %r_page, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %4 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %r_page, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380143684, i32 %7)
  %cmp8 = icmp eq i32 %7, 1380143684
  br i1 %cmp8, label %cleanup, label %if.end10

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128811332, i32 %7)
  %cmp17 = icmp eq i32 %7, 1128811332
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %7, label %if.then25 [
    i32 1381192786, label %if.end10.if.end28_crit_edge
    i32 1128811332, label %if.end10.if.end28_crit_edge164
    i32 -1, label %if.end10.for.inc_crit_edge
  ]

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

if.end10.if.end28_crit_edge164:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end28

if.then25:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %initialized29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %initialized29, align 2
  br label %for.inc

if.end28:                                         ; preds = %if.end10.if.end28_crit_edge, %if.end10.if.end28_crit_edge164
  %10 = ptrtoint ptr %valid_page to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %valid_page, align 1
  %11 = ptrtoint ptr %initialized29 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %initialized29, align 2
  %12 = ptrtoint ptr %vbo30 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %vbo.1148, ptr %vbo30, align 4
  %sys_page_size.i = getelementptr inbounds %struct.RESTART_HDR, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %sys_page_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sys_page_size.i, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14) #18
  %page_size1.i = getelementptr inbounds %struct.RESTART_HDR, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %page_size1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %page_size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %15)
  %cmp.i = icmp ugt i32 %15, 511
  %18 = call i32 @llvm.bswap.i32(i32 %17) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %18)
  %cmp2.i = icmp ugt i32 %18, 511
  %or.cond.i = select i1 %cmp.i, i1 %cmp2.i, i1 false
  %19 = call i32 @llvm.ctpop.i32(i32 %14) #18, !range !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool.not.i = icmp ult i32 %19, 2
  %or.cond63.i = select i1 %or.cond.i, i1 %tobool.not.i, i1 false
  %20 = call i32 @llvm.ctpop.i32(i32 %17) #18, !range !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %tobool7.not.i = icmp ult i32 %20, 2
  %or.cond64.i = select i1 %or.cond63.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond64.i, label %if.end.i, label %if.end28.check_result_crit_edge

if.end28.check_result_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end.i:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vbo.1148)
  %tobool8.not.i = icmp eq i32 %vbo.1148, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %vbo.1148)
  %cmp9.not.i = icmp eq i32 %15, %vbo.1148
  %or.cond65.i = select i1 %tobool8.not.i, i1 true, i1 %cmp9.not.i
  br i1 %or.cond65.i, label %if.end11.i, label %if.end.i.check_result_crit_edge

if.end.i.check_result_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end11.i:                                       ; preds = %if.end.i
  %major_ver.i = getelementptr inbounds %struct.RESTART_HDR, ptr %5, i32 0, i32 5
  %21 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %major_ver.i, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %23)
  %cmp12.i = icmp ult i16 %23, 2
  br i1 %cmp12.i, label %land.lhs.true14.i, label %if.end17.i

land.lhs.true14.i:                                ; preds = %if.end11.i
  %minor_ver.i = getelementptr inbounds %struct.RESTART_HDR, ptr %5, i32 0, i32 4
  %24 = ptrtoint ptr %minor_ver.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %minor_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool15.not.i = icmp eq i16 %25, 0
  br i1 %tobool15.not.i, label %land.lhs.true14.i.check_result_crit_edge, label %land.lhs.true14.i.if.end23.i_crit_edge

land.lhs.true14.i.if.end23.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

land.lhs.true14.i.check_result_crit_edge:         ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %22)
  %cmp20.not.i = icmp eq i16 %22, 512
  br i1 %cmp20.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.end17.i.check_result_crit_edge

if.end17.i.check_result_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end17.i.if.end23.i_crit_edge, %land.lhs.true14.i.if.end23.i_crit_edge
  %ra_off.i = getelementptr inbounds %struct.RESTART_HDR, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %ra_off.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ra_off.i, align 8
  %28 = call i16 @llvm.bswap.i16(i16 %27) #18
  %conv24.i = zext i16 %28 to i32
  %and25.i = and i32 %conv24.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %cmp26.i = icmp ne i32 %and25.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv24.i)
  %cmp30.i = icmp ult i32 %15, %conv24.i
  %or.cond66.i = select i1 %cmp26.i, i1 true, i1 %cmp30.i
  br i1 %or.cond66.i, label %if.end23.i.check_result_crit_edge, label %is_rst_page_hdr_valid.exit

if.end23.i.check_result_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

is_rst_page_hdr_valid.exit:                       ; preds = %if.end23.i
  %29 = lshr i32 %15, 8
  %add.i = and i32 %29, 16777214
  %mul.i = add nuw nsw i32 %add.i, 2
  %fix_off.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %fix_off.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %fix_off.i, align 4
  %32 = call i16 @llvm.bswap.i16(i16 %31) #18
  %conv35.i = zext i16 %32 to i32
  %add36.i = add nuw nsw i32 %mul.i, %conv35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add36.i, i32 %conv24.i)
  %cmp38.i.not = icmp ugt i32 %add36.i, %conv24.i
  br i1 %cmp38.i.not, label %is_rst_page_hdr_valid.exit.check_result_crit_edge, label %if.end33

is_rst_page_hdr_valid.exit.check_result_crit_edge: ; preds = %is_rst_page_hdr_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end33:                                         ; preds = %is_rst_page_hdr_valid.exit
  %33 = ptrtoint ptr %ra_off.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ra_off.i, align 8
  %35 = call i16 @llvm.bswap.i16(i16 %34)
  %conv = zext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %5, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp2(i16 486, i16 %35)
  %cmp.i116 = icmp ugt i16 %35, 486
  br i1 %cmp.i116, label %if.end33.check_result_crit_edge, label %if.end.i117

if.end33.check_result_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end.i117:                                      ; preds = %if.end33
  %log_clients.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 1
  %36 = ptrtoint ptr %log_clients.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %log_clients.i, align 8
  %38 = call i16 @llvm.bswap.i16(i16 %37) #18
  %conv3.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %38)
  %cmp4.i = icmp ugt i16 %38, 1
  br i1 %cmp4.i, label %if.end.i117.check_result_crit_edge, label %if.end7.i

if.end.i117.check_result_crit_edge:               ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end7.i:                                        ; preds = %if.end.i117
  %client_off.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 6
  %39 = ptrtoint ptr %client_off.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %client_off.i, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #18
  %conv8.i = zext i16 %41 to i32
  %and.i = and i32 %conv8.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp ne i32 %and.i, 0
  %add12.i = add nuw nsw i32 %conv8.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %add12.i)
  %cmp13.i = icmp ugt i32 %add12.i, 510
  %or.cond.i118 = select i1 %cmp9.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i118, label %if.end7.i.check_result_crit_edge, label %if.end16.i

if.end7.i.check_result_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end16.i:                                       ; preds = %if.end7.i
  %mul.i119 = mul nuw nsw i32 %conv3.i, 96
  %add18.i = add nuw nsw i32 %mul.i119, %conv8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %15)
  %cmp19.i = icmp ugt i32 %add18.i, %15
  br i1 %cmp19.i, label %if.end16.i.check_result_crit_edge, label %if.end22.i

if.end16.i.check_result_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end22.i:                                       ; preds = %if.end16.i
  %ra_len.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 5
  %42 = ptrtoint ptr %ra_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ra_len.i, align 4
  %44 = call i16 @llvm.bswap.i16(i16 %43) #18
  %conv25.i = zext i16 %44 to i32
  %add26.i = add nuw nsw i32 %conv25.i, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add26.i, i32 %15)
  %cmp27.i = icmp ugt i32 %add26.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %conv25.i)
  %cmp32.i = icmp ugt i32 %add18.i, %conv25.i
  %or.cond118.i = select i1 %cmp27.i, i1 true, i1 %cmp32.i
  br i1 %or.cond118.i, label %if.end22.i.check_result_crit_edge, label %if.end35.i

if.end22.i.check_result_crit_edge:                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end35.i:                                       ; preds = %if.end22.i
  %client_idx.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 2
  %45 = ptrtoint ptr %client_idx.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %client_idx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %46)
  %cmp39.not.i = icmp eq i16 %46, -1
  %47 = call i16 @llvm.bswap.i16(i16 %46) #18
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %38)
  %cmp43.not.i = icmp ult i16 %47, %38
  %or.cond119.i = select i1 %cmp39.not.i, i1 true, i1 %cmp43.not.i
  br i1 %or.cond119.i, label %lor.lhs.false45.i, label %if.end35.i.check_result_crit_edge

if.end35.i.check_result_crit_edge:                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

lor.lhs.false45.i:                                ; preds = %if.end35.i
  %arrayidx37.i = getelementptr [2 x i16], ptr %client_idx.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx37.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #18
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %49)
  %cmp47.not.i = icmp eq i16 %49, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %50, i16 %38)
  %cmp52.not.i = icmp ult i16 %50, %38
  %or.cond120.i = select i1 %cmp47.not.i, i1 true, i1 %cmp52.not.i
  br i1 %or.cond120.i, label %if.end55.i, label %lor.lhs.false45.i.check_result_crit_edge

lor.lhs.false45.i.check_result_crit_edge:         ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end55.i:                                       ; preds = %lor.lhs.false45.i
  %l_size56.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 7
  %51 = ptrtoint ptr %l_size56.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %l_size56.i, align 8
  %53 = call i64 @llvm.bswap.i64(i64 %52) #18
  %conv57.i = trunc i64 %53 to i32
  %seq_num_bits.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 4
  %54 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %seq_num_bits.i, align 8
  %56 = call i32 @llvm.bswap.i32(i32 %55) #18
  %add58.i = sub i32 67, %56
  %shl.i = shl nuw i32 1, %add58.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv57.i)
  %cmp59.not.i = icmp eq i32 %shl.i, %conv57.i
  br i1 %cmp59.not.i, label %if.end55.i.if.end68.i_crit_edge, label %land.lhs.true61.i

if.end55.i.if.end68.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68.i

land.lhs.true61.i:                                ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %conv57.i)
  %cmp62.i = icmp ult i32 %shl.i, %conv57.i
  %div117.i = lshr i32 %shl.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div117.i, i32 %conv57.i)
  %cmp65.i = icmp ugt i32 %div117.i, %conv57.i
  %or.cond121.i = or i1 %cmp62.i, %cmp65.i
  br i1 %or.cond121.i, label %land.lhs.true61.i.check_result_crit_edge, label %land.lhs.true61.i.if.end68.i_crit_edge

land.lhs.true61.i.if.end68.i_crit_edge:           ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end68.i

land.lhs.true61.i.check_result_crit_edge:         ; preds = %land.lhs.true61.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end68.i:                                       ; preds = %land.lhs.true61.i.if.end68.i_crit_edge, %if.end55.i.if.end68.i_crit_edge
  %data_off.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 10
  %57 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %data_off.i, align 2
  %59 = and i16 %58, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp71.i = icmp eq i16 %59, 0
  br i1 %cmp71.i, label %is_rst_area_valid.exit, label %if.end68.i.check_result_crit_edge

if.end68.i.check_result_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

is_rst_area_valid.exit:                           ; preds = %if.end68.i
  %rec_hdr_len.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr, i32 0, i32 9
  %60 = ptrtoint ptr %rec_hdr_len.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rec_hdr_len.i, align 4
  %62 = and i16 %61, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp76.i = icmp eq i16 %62, 0
  br i1 %cmp76.i, label %if.end36, label %is_rst_area_valid.exit.check_result_crit_edge

is_rst_area_valid.exit.check_result_crit_edge:    ; preds = %is_rst_area_valid.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end36:                                         ; preds = %is_rst_area_valid.exit
  br i1 %cmp17, label %if.end36.if.then42_crit_edge, label %lor.lhs.false

if.end36.if.then42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then42

lor.lhs.false:                                    ; preds = %if.end36
  %63 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp40 = icmp eq i16 %64, -1
  br i1 %cmp40, label %lor.lhs.false.if.then42_crit_edge, label %if.end44

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %if.end36.if.then42_crit_edge
  %65 = ptrtoint ptr %valid_page to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %valid_page, align 1
  br label %check_result

if.end44:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %14)
  %cmp46.not = icmp eq i32 %14, 1048576
  br i1 %cmp46.not, label %if.end44.if.end57_crit_edge, label %if.then48

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then48:                                        ; preds = %if.end44
  call void @kfree(ptr noundef %5) #18
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3392) #22
  %66 = ptrtoint ptr %r_page to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call9.i.i, ptr %r_page, align 4
  %tobool50.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool50.not, label %if.then48.cleanup.thread140_crit_edge, label %if.end52

if.then48.cleanup.thread140_crit_edge:            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread140

if.end52:                                         ; preds = %if.then48
  %call53 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %vbo.1148, ptr noundef nonnull %r_page, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end52.if.end57_crit_edge, label %if.then55

if.end52.if.end57_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #20
  %67 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %r_page, align 4
  call void @kfree(ptr noundef %68) #18
  %69 = ptrtoint ptr %r_page to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %r_page, align 4
  br label %for.inc

if.end57:                                         ; preds = %if.end52.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  %70 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %r_page, align 4
  %72 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool58.not = icmp eq i8 %73, 0
  %ra_off.i121 = getelementptr inbounds %struct.RESTART_HDR, ptr %71, i32 0, i32 3
  %74 = ptrtoint ptr %ra_off.i121 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ra_off.i121, align 8
  %76 = call i16 @llvm.bswap.i16(i16 %75) #18
  %conv.i122 = zext i16 %76 to i32
  %add.ptr.i123 = getelementptr i8, ptr %71, i32 %conv.i122
  br i1 %tobool58.not, label %if.end57.if.end.i129_crit_edge, label %land.lhs.true.i

if.end57.if.end.i129_crit_edge:                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i129

land.lhs.true.i:                                  ; preds = %if.end57
  %ra_len1.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i123, i32 0, i32 5
  %77 = ptrtoint ptr %ra_len1.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ra_len1.i, align 4
  %79 = call i16 @llvm.bswap.i16(i16 %78) #18
  %conv3.i124 = zext i16 %79 to i32
  %add.i125 = add nuw nsw i32 %conv3.i124, %conv.i122
  call void @__sanitizer_cov_trace_const_cmp4(i32 510, i32 %add.i125)
  %cmp.i126 = icmp ugt i32 %add.i125, 510
  br i1 %cmp.i126, label %land.lhs.true.i.check_result_crit_edge, label %land.lhs.true.i.if.end.i129_crit_edge

land.lhs.true.i.if.end.i129_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i129

land.lhs.true.i.check_result_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end.i129:                                      ; preds = %land.lhs.true.i.if.end.i129_crit_edge, %if.end57.if.end.i129_crit_edge
  %client_off.i127 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i123, i32 0, i32 6
  %80 = ptrtoint ptr %client_off.i127 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %client_off.i127, align 2
  %82 = call i16 @llvm.bswap.i16(i16 %81) #18
  %conv6.i = zext i16 %82 to i32
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i123, i32 %conv6.i
  %client_idx10.i = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i123, i32 0, i32 2
  %log_clients.i128 = getelementptr inbounds %struct.RESTART_AREA, ptr %add.ptr.i123, i32 0, i32 1
  %83 = ptrtoint ptr %log_clients.i128 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %log_clients.i128, align 8
  %85 = call i16 @llvm.bswap.i16(i16 %84) #18
  %86 = ptrtoint ptr %client_idx10.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %client_idx10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %87)
  %cmp12.not68.i = icmp eq i16 %87, -1
  br i1 %cmp12.not68.i, label %if.end.i129.for.inc.i_crit_edge, label %while.body.preheader.i

if.end.i129.for.inc.i_crit_edge:                  ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

while.body.preheader.i:                           ; preds = %if.end.i129
  %88 = call i16 @llvm.bswap.i16(i16 %87) #18
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %clients.071.i = phi i16 [ %sub.i, %cleanup.i.while.body.i_crit_edge ], [ %85, %while.body.preheader.i ]
  %first_client.0.off070.i = phi i1 [ false, %cleanup.i.while.body.i_crit_edge ], [ true, %while.body.preheader.i ]
  %client_idx.069.i = phi i16 [ %91, %cleanup.i.while.body.i_crit_edge ], [ %88, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %clients.071.i)
  %tobool14.not.i = icmp ne i16 %clients.071.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %client_idx.069.i, i16 %85)
  %cmp18.not.i = icmp ult i16 %client_idx.069.i, %85
  %or.cond.i130 = select i1 %tobool14.not.i, i1 %cmp18.not.i, i1 false
  br i1 %or.cond.i130, label %if.end21.i, label %while.body.i.check_result_crit_edge

while.body.i.check_result_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end21.i:                                       ; preds = %while.body.i
  %conv1172.i = zext i16 %client_idx.069.i to i32
  %sub.i = add i16 %clients.071.i, -1
  %add.ptr25.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr7.i, i32 %conv1172.i
  %next_client.i = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr25.i, i32 0, i32 3
  %89 = ptrtoint ptr %next_client.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %next_client.i, align 2
  %91 = call i16 @llvm.bswap.i16(i16 %90) #18
  br i1 %first_client.0.off070.i, label %if.then27.i, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

if.then27.i:                                      ; preds = %if.end21.i
  %prev_client.i = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr25.i, i32 0, i32 2
  %92 = ptrtoint ptr %prev_client.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %prev_client.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %93)
  %cmp29.not.i = icmp eq i16 %93, -1
  br i1 %cmp29.not.i, label %if.then27.i.cleanup.i_crit_edge, label %if.then27.i.check_result_crit_edge

if.then27.i.check_result_crit_edge:               ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.then27.i.cleanup.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then27.i.cleanup.i_crit_edge, %if.end21.i.cleanup.i_crit_edge
  %cmp12.not.i = icmp eq i16 %90, -1
  br i1 %cmp12.not.i, label %cleanup.i.for.inc.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %if.end.i129.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr [2 x i16], ptr %client_idx10.i, i32 0, i32 1
  %94 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %95)
  %cmp12.not68.1.i = icmp eq i16 %95, -1
  br i1 %cmp12.not68.1.i, label %for.inc.i.if.then60_crit_edge, label %while.body.preheader.1.i

for.inc.i.if.then60_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then60

while.body.preheader.1.i:                         ; preds = %for.inc.i
  %96 = call i16 @llvm.bswap.i16(i16 %95) #18
  br label %while.body.1.i

while.body.1.i:                                   ; preds = %cleanup.1.i.while.body.1.i_crit_edge, %while.body.preheader.1.i
  %clients.071.1.i = phi i16 [ %sub.1.i, %cleanup.1.i.while.body.1.i_crit_edge ], [ %85, %while.body.preheader.1.i ]
  %first_client.0.off070.1.i = phi i1 [ false, %cleanup.1.i.while.body.1.i_crit_edge ], [ true, %while.body.preheader.1.i ]
  %client_idx.069.1.i = phi i16 [ %99, %cleanup.1.i.while.body.1.i_crit_edge ], [ %96, %while.body.preheader.1.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %clients.071.1.i)
  %tobool14.not.1.i = icmp ne i16 %clients.071.1.i, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %client_idx.069.1.i, i16 %85)
  %cmp18.not.1.i = icmp ult i16 %client_idx.069.1.i, %85
  %or.cond.1.i = select i1 %tobool14.not.1.i, i1 %cmp18.not.1.i, i1 false
  br i1 %or.cond.1.i, label %if.end21.1.i, label %while.body.1.i.check_result_crit_edge

while.body.1.i.check_result_crit_edge:            ; preds = %while.body.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.end21.1.i:                                     ; preds = %while.body.1.i
  %conv1172.1.i = zext i16 %client_idx.069.1.i to i32
  %sub.1.i = add i16 %clients.071.1.i, -1
  %add.ptr25.1.i = getelementptr %struct.CLIENT_REC, ptr %add.ptr7.i, i32 %conv1172.1.i
  %next_client.1.i = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr25.1.i, i32 0, i32 3
  %97 = ptrtoint ptr %next_client.1.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %next_client.1.i, align 2
  %99 = call i16 @llvm.bswap.i16(i16 %98) #18
  br i1 %first_client.0.off070.1.i, label %if.then27.1.i, label %if.end21.1.i.cleanup.1.i_crit_edge

if.end21.1.i.cleanup.1.i_crit_edge:               ; preds = %if.end21.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.1.i

if.then27.1.i:                                    ; preds = %if.end21.1.i
  %prev_client.1.i = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr25.1.i, i32 0, i32 2
  %100 = ptrtoint ptr %prev_client.1.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %prev_client.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %101)
  %cmp29.not.1.i = icmp eq i16 %101, -1
  br i1 %cmp29.not.1.i, label %if.then27.1.i.cleanup.1.i_crit_edge, label %if.then27.1.i.check_result_crit_edge

if.then27.1.i.check_result_crit_edge:             ; preds = %if.then27.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_result

if.then27.1.i.cleanup.1.i_crit_edge:              ; preds = %if.then27.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then27.1.i.cleanup.1.i_crit_edge, %if.end21.1.i.cleanup.1.i_crit_edge
  %cmp12.not.1.i = icmp eq i16 %98, -1
  br i1 %cmp12.not.1.i, label %cleanup.1.i.if.then60_crit_edge, label %cleanup.1.i.while.body.1.i_crit_edge

cleanup.1.i.while.body.1.i_crit_edge:             ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.1.i

cleanup.1.i.if.then60_crit_edge:                  ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then60

if.then60:                                        ; preds = %cleanup.1.i.if.then60_crit_edge, %for.inc.i.if.then60_crit_edge
  %102 = ptrtoint ptr %valid_page to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %valid_page, align 1
  %103 = ptrtoint ptr %ra_off.i121 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ra_off.i121, align 8
  %105 = call i16 @llvm.bswap.i16(i16 %104)
  %conv63 = zext i16 %105 to i32
  %add.ptr64 = getelementptr i8, ptr %71, i32 %conv63
  br label %check_result

check_result:                                     ; preds = %if.then60, %if.then27.1.i.check_result_crit_edge, %while.body.1.i.check_result_crit_edge, %if.then27.i.check_result_crit_edge, %while.body.i.check_result_crit_edge, %land.lhs.true.i.check_result_crit_edge, %if.then42, %is_rst_area_valid.exit.check_result_crit_edge, %if.end68.i.check_result_crit_edge, %land.lhs.true61.i.check_result_crit_edge, %lor.lhs.false45.i.check_result_crit_edge, %if.end35.i.check_result_crit_edge, %if.end22.i.check_result_crit_edge, %if.end16.i.check_result_crit_edge, %if.end7.i.check_result_crit_edge, %if.end.i117.check_result_crit_edge, %if.end33.check_result_crit_edge, %is_rst_page_hdr_valid.exit.check_result_crit_edge, %if.end23.i.check_result_crit_edge, %if.end17.i.check_result_crit_edge, %land.lhs.true14.i.check_result_crit_edge, %if.end.i.check_result_crit_edge, %if.end28.check_result_crit_edge
  %ra.0 = phi ptr [ %add.ptr, %if.then42 ], [ %add.ptr64, %if.then60 ], [ %add.ptr, %is_rst_area_valid.exit.check_result_crit_edge ], [ null, %is_rst_page_hdr_valid.exit.check_result_crit_edge ], [ null, %if.end28.check_result_crit_edge ], [ null, %if.end.i.check_result_crit_edge ], [ null, %land.lhs.true14.i.check_result_crit_edge ], [ null, %if.end17.i.check_result_crit_edge ], [ null, %if.end23.i.check_result_crit_edge ], [ %add.ptr, %if.end33.check_result_crit_edge ], [ %add.ptr, %if.end.i117.check_result_crit_edge ], [ %add.ptr, %if.end7.i.check_result_crit_edge ], [ %add.ptr, %if.end16.i.check_result_crit_edge ], [ %add.ptr, %if.end22.i.check_result_crit_edge ], [ %add.ptr, %lor.lhs.false45.i.check_result_crit_edge ], [ %add.ptr, %if.end35.i.check_result_crit_edge ], [ %add.ptr, %land.lhs.true61.i.check_result_crit_edge ], [ %add.ptr, %if.end68.i.check_result_crit_edge ], [ %add.ptr, %land.lhs.true.i.check_result_crit_edge ], [ %add.ptr, %while.body.1.i.check_result_crit_edge ], [ %add.ptr, %if.then27.1.i.check_result_crit_edge ], [ %add.ptr, %while.body.i.check_result_crit_edge ], [ %add.ptr, %if.then27.i.check_result_crit_edge ]
  %106 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %r_page, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %107, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1128811332, i32 %109)
  %cmp68 = icmp eq i32 %109, 1128811332
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %check_result
  call void @__sanitizer_cov_trace_pc() #20
  %chkdsk_was_run = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 3
  %110 = ptrtoint ptr %chkdsk_was_run to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %chkdsk_was_run, align 8
  %lsn = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %107, i32 0, i32 3
  br label %cleanup.thread140.sink.split

if.end73:                                         ; preds = %check_result
  %111 = ptrtoint ptr %valid_page to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %valid_page, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool75.not = icmp eq i8 %112, 0
  br i1 %tobool75.not, label %if.end73.for.inc_crit_edge, label %if.end73.cleanup.thread140.sink.split_crit_edge

if.end73.cleanup.thread140.sink.split_crit_edge:  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.thread140.sink.split

if.end73.for.inc_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

cleanup.thread140.sink.split:                     ; preds = %if.end73.cleanup.thread140.sink.split_crit_edge, %if.then70
  %lsn.sink = phi ptr [ %lsn, %if.then70 ], [ %ra.0, %if.end73.cleanup.thread140.sink.split_crit_edge ]
  %113 = ptrtoint ptr %lsn.sink to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %lsn.sink, align 8
  %115 = call i64 @llvm.bswap.i64(i64 %114)
  %116 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %info, align 8
  %restart = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 6
  %117 = ptrtoint ptr %restart to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %restart, align 1
  %r_page72 = getelementptr inbounds %struct.restart_info, ptr %info, i32 0, i32 1
  %118 = ptrtoint ptr %r_page72 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %107, ptr %r_page72, align 8
  br label %cleanup.thread140

cleanup.thread140:                                ; preds = %cleanup.thread140.sink.split, %if.then48.cleanup.thread140_crit_edge
  %retval.1.ph = phi i32 [ 0, %cleanup.thread140.sink.split ], [ -12, %if.then48.cleanup.thread140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  br label %cleanup85

cleanup:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %119 = ptrtoint ptr %initialized29 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %initialized29, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  br label %for.end

for.inc:                                          ; preds = %if.end73.for.inc_crit_edge, %if.then55, %if.then25, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  %mul = shl i32 %vbo.1148, 1
  %add = add i32 %mul, %skip.1147
  %cmp = icmp ult i32 %add, %l_size
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %if.end.for.end_crit_edge
  %120 = ptrtoint ptr %r_page to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %r_page, align 4
  call void @kfree(ptr noundef %121) #18
  br label %cleanup85

cleanup85:                                        ; preds = %for.end, %cleanup.thread140, %entry.cleanup85_crit_edge
  %retval.2 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup85_crit_edge ], [ %retval.1.ph, %cleanup.thread140 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_page) #18
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_init_pg_hdr(ptr nocapture noundef %log, i32 noundef %sys_page_size, i32 noundef %page_size, i16 noundef zeroext %major_ver, i16 noundef zeroext %minor_ver) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_page_size1 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 2
  %0 = ptrtoint ptr %sys_page_size1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sys_page_size, ptr %sys_page_size1, align 8
  %sub = add i32 %sys_page_size, -1
  %sys_page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %1 = ptrtoint ptr %sys_page_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %sys_page_mask, align 4
  %page_size2 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %2 = ptrtoint ptr %page_size2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %page_size, ptr %page_size2, align 8
  %sub3 = add i32 %page_size, -1
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %3 = ptrtoint ptr %page_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub3, ptr %page_mask, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %size.addr.0.i = phi i32 [ %page_size, %entry ], [ %shr.i, %do.body.i.do.body.i_crit_edge ]
  %bits.0.i = phi i32 [ 8, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i = lshr i32 %size.addr.0.i, 1
  %cmp.i = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv = trunc i32 %inc.i to i8
  %page_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 6
  %4 = ptrtoint ptr %page_bits to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %page_bits, align 8
  %5 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %log, align 8
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sbi, align 4
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 10
  %9 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cluster_bits, align 8
  %conv5 = zext i8 %10 to i32
  %shr = lshr i32 %page_size, %conv5
  %clst_per_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not = icmp eq i32 %shr, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 %shr
  %11 = ptrtoint ptr %clst_per_page to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %clst_per_page, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %major_ver)
  %cmp = icmp ugt i16 %major_ver, 1
  %mul = mul i32 %page_size, 34
  %shl32 = add i32 %page_size, %sys_page_size
  %add = shl i32 %shl32, 1
  %cond = select i1 %cmp, i32 %mul, i32 %add
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %12 = ptrtoint ptr %first_page to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond, ptr %first_page, align 4
  %major_ver11 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 35
  %13 = ptrtoint ptr %major_ver11 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %major_ver, ptr %major_ver11, align 8
  %minor_ver12 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 36
  %14 = ptrtoint ptr %minor_ver12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %minor_ver, ptr %minor_ver12, align 2
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_create(ptr noundef %log, i32 noundef %l_size, i64 noundef %last_lsn, i32 noundef %open_log_count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %l_size2 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %0 = ptrtoint ptr %l_size2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %l_size, ptr %l_size2, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %size.addr.0.i = phi i32 [ %l_size, %entry ], [ %shr.i, %do.body.i.do.body.i_crit_edge ]
  %bits.0.i = phi i32 [ 8, %entry ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i = lshr i32 %size.addr.0.i, 1
  %cmp.i = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %sub = add nsw i32 %bits.0.i, -2
  %file_data_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 20
  %1 = ptrtoint ptr %file_data_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %sub, ptr %file_data_bits, align 4
  %shl = shl i32 8, %sub
  %sub4 = add i32 %shl, -1
  %seq_num_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 21
  %2 = ptrtoint ptr %seq_num_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub4, ptr %seq_num_mask, align 8
  %sub6 = sub nsw i32 66, %bits.0.i
  %seq_num_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %3 = ptrtoint ptr %seq_num_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub6, ptr %seq_num_bits, align 8
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %last_lsn, %sh_prom
  %add = add i64 %shr, 2
  %seq_num = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 18
  %4 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %seq_num, align 8
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %5 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %first_page, align 4
  %next_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 12
  %7 = ptrtoint ptr %next_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %next_page, align 8
  %shl11 = shl i64 %add, %sh_prom
  %oldest_lsn = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 26
  %8 = ptrtoint ptr %oldest_lsn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %shl11, ptr %oldest_lsn, align 8
  %oldest_lsn_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 27
  %9 = ptrtoint ptr %oldest_lsn_off to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %oldest_lsn_off, align 8
  %last_lsn13 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 28
  %10 = ptrtoint ptr %last_lsn13 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %shl11, ptr %last_lsn13, align 8
  %l_flags = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 37
  %11 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %l_flags, align 4
  %or = or i32 %12, 36
  store i32 %or, ptr %l_flags, align 4
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %13 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_size, align 8
  %15 = lshr i32 %14, 8
  %add22 = and i32 %15, 16777214
  %add24 = add nuw nsw i32 %add22, 49
  %and = and i32 %add24, 33554424
  %data_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 14
  %16 = ptrtoint ptr %data_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %data_off, align 8
  %sub27 = sub i32 %14, %and
  %data_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 16
  %17 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub27, ptr %data_size, align 8
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %18 = ptrtoint ptr %record_header_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 48, ptr %record_header_len, align 4
  %sub30 = add i32 %sub27, -48
  %reserved = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 34
  %19 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub30, ptr %reserved, align 4
  %sys_page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 2
  %20 = ptrtoint ptr %sys_page_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sys_page_size, align 8
  %22 = lshr i32 %21, 8
  %add32 = and i32 %22, 16777214
  %add35 = add nuw nsw i32 %add32, 39
  %and36 = and i32 %add35, 33554424
  %ra_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 13
  %23 = ptrtoint ptr %ra_off to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and36, ptr %ra_off, align 4
  %sub39 = sub i32 %21, %and36
  %restart_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 15
  %24 = ptrtoint ptr %restart_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub39, ptr %restart_size, align 4
  %ra_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 23
  %25 = ptrtoint ptr %ra_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 160, ptr %ra_size, align 8
  %current_openlog_count = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 38
  %26 = ptrtoint ptr %current_openlog_count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %open_log_count, ptr %current_openlog_count, align 8
  %sub43 = sub i32 %l_size, %6
  %total_avail_pages = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 30
  %27 = ptrtoint ptr %total_avail_pages to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub43, ptr %total_avail_pages, align 4
  %page_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 6
  %28 = ptrtoint ptr %page_bits to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %page_bits, align 8
  %conv45 = zext i8 %29 to i32
  %shr46 = lshr i32 %sub43, %conv45
  %total_avail = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 29
  %mul49 = mul i32 %shr46, %sub30
  %max_current_avail = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 32
  %30 = ptrtoint ptr %max_current_avail to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul49, ptr %max_current_avail, align 4
  %mul52 = mul i32 %shr46, %sub27
  %31 = ptrtoint ptr %total_avail to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul52, ptr %total_avail, align 8
  %current_avail = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 33
  %32 = ptrtoint ptr %current_avail to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul49, ptr %current_avail, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @log_create_ra(ptr nocapture noundef readonly %log) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 15
  %0 = ptrtoint ptr %restart_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %restart_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3392) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_lsn = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 28
  %2 = ptrtoint ptr %last_lsn to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_lsn, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %5 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %call9.i.i, align 128
  %log_clients = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %log_clients to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 256, ptr %log_clients, align 8
  %arrayidx = getelementptr %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %arrayidx, align 4
  %l_flags = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 37
  %8 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %l_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %flags = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 256, ptr %flags, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %seq_num_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %11 = ptrtoint ptr %seq_num_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq_num_bits, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %seq_num_bits4 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %seq_num_bits4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %seq_num_bits4, align 16
  %ra_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 23
  %15 = ptrtoint ptr %ra_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ra_size, align 8
  %conv = trunc i32 %16 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %ra_len = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ra_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %ra_len, align 4
  %client_off = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %client_off to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16384, ptr %client_off, align 2
  %l_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %20 = ptrtoint ptr %l_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %l_size, align 4
  %conv5 = zext i32 %21 to i64
  %22 = tail call i64 @llvm.bswap.i64(i64 %conv5)
  %l_size6 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %l_size6 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %l_size6, align 8
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %24 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %record_header_len, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %rec_hdr_len = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %rec_hdr_len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %rec_hdr_len, align 4
  %data_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 14
  %28 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_off, align 8
  %conv7 = trunc i32 %29 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %data_off8 = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %data_off8 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %data_off8, align 2
  %current_openlog_count = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 38
  %32 = ptrtoint ptr %current_openlog_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %current_openlog_count, align 8
  %add = add i32 %33, 1
  %34 = tail call i32 @llvm.bswap.i32(i32 %add)
  %open_log_count = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %open_log_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %open_log_count, align 8
  %clients = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 0, i32 13
  %prev_client = getelementptr inbounds %struct.RESTART_AREA, ptr %call9.i.i, i32 1, i32 4
  %36 = ptrtoint ptr %prev_client to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %prev_client, align 16
  %next_client = getelementptr inbounds %struct.CLIENT_REC, ptr %clients, i32 0, i32 3
  %37 = ptrtoint ptr %next_client to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %next_client, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_log_page(ptr nocapture noundef readonly %log, i32 noundef %vbo, ptr nocapture noundef %buffer, ptr noundef writeonly %usa_error) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %page_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 6
  %0 = ptrtoint ptr %page_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %page_bits, align 8
  %conv = zext i8 %1 to i32
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %2 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_mask, align 4
  %and = and i32 %3, %vbo
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size, align 8
  %sub = sub i32 %5, %and
  %6 = shl nsw i32 -1, %conv
  %shl = and i32 %6, %vbo
  %7 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %log, align 8
  %l_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %9 = ptrtoint ptr %l_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %vbo)
  %cmp.not = icmp ugt i32 %10, %vbo
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end8.i, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.end8.i:                                        ; preds = %if.end
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3136) #22
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end8.i.cleanup_crit_edge, label %if.end8

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %buffer, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end.if.end9_crit_edge
  %to_free.0 = phi ptr [ null, %if.end.if.end9_crit_edge ], [ %call9.i, %if.end8 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %one_page_buf = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 7
  %cond.in = select i1 %tobool10.not, ptr %buffer, ptr %one_page_buf
  %14 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond = load ptr, ptr %cond.in, align 4
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi, align 4
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %8, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %conv11 = zext i32 %shl to i64
  %17 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %page_size, align 8
  %call13 = tail call i32 @ntfs_read_run_nb(ptr noundef %16, ptr noundef %run, i64 noundef %conv11, ptr noundef %cond, i32 noundef %18, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end16:                                         ; preds = %if.end9
  %19 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cond, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp17.not = icmp eq i32 %20, -1
  br i1 %cmp17.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  %call21 = tail call i32 @ntfs_fix_post_read(ptr noundef %cond, i32 noundef 4096, i1 noundef zeroext false) #18
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %cmp23.not = icmp eq ptr %cond, %22
  br i1 %cmp23.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %cond, i32 %and
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr, i32 %sub)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %24 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cond, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %25)
  %cmp29 = icmp eq i32 %25, 1111572804
  %tobool31.not = icmp eq ptr %usa_error, null
  br i1 %tobool31.not, label %if.else, label %out.thread

out.thread:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %frombool = zext i1 %cmp29 to i8
  %26 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool, ptr %usa_error, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  %spec.select = select i1 %cmp29, i32 -22, i32 0
  br label %out

out:                                              ; preds = %if.else, %if.end9.out_crit_edge
  %err.0 = phi i32 [ %call13, %if.end9.out_crit_edge ], [ %spec.select, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool39.not = icmp eq i32 %err.0, 0
  %tobool40.not = icmp eq ptr %to_free.0, null
  %or.cond = select i1 %tobool39.not, i1 true, i1 %tobool40.not
  br i1 %or.cond, label %out.cleanup_crit_edge, label %if.then41

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then41:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef nonnull %to_free.0) #18
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %out.cleanup_crit_edge, %out.thread, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ %err.0, %if.then41 ], [ %err.0, %out.cleanup_crit_edge ], [ 0, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @final_log_off(ptr nocapture noundef readonly %log, i64 noundef %lsn, i32 noundef %data_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lsn.tr = trunc i64 %lsn to i32
  %conv = shl i32 %lsn.tr, 3
  %seq_num_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 21
  %0 = ptrtoint ptr %seq_num_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_num_mask, align 8
  %and = and i32 %1, %conv
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %2 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_mask, align 4
  %neg = xor i32 %3, -1
  %and1 = and i32 %and, %neg
  %and3 = and i32 %3, %conv
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %4 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page_size, align 8
  %sub = sub i32 %5, %and3
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %6 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %record_header_len, align 4
  %conv5 = zext i16 %7 to i32
  %add = add i32 %conv5, %data_len
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub)
  %cmp = icmp ugt i32 %add, %sub
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then:                                          ; preds = %entry
  %sub7 = sub i32 %add, %sub
  %data_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 16
  %8 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_size, align 8
  %data_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 14
  %10 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_off, align 8
  %sys_page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %12 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys_page_mask.i, align 4
  %neg.i = xor i32 %13, -1
  %l_size.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %14 = ptrtoint ptr %l_size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %l_size.i, align 4
  %first_page.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %next_page_off.exit.for.cond_crit_edge, %if.then
  %data_len.addr.0 = phi i32 [ %sub7, %if.then ], [ %sub12, %next_page_off.exit.for.cond_crit_edge ]
  %final_log_off.0 = phi i32 [ %and1, %if.then ], [ %cond.i, %next_page_off.exit.for.cond_crit_edge ]
  %and.i = and i32 %final_log_off.0, %neg.i
  %add.i = add i32 %and.i, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %15)
  %cmp.not.i = icmp ult i32 %add.i, %15
  br i1 %cmp.not.i, label %for.cond.next_page_off.exit_crit_edge, label %cond.true.i

for.cond.next_page_off.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit

cond.true.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %first_page.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_page.i, align 4
  br label %next_page_off.exit

next_page_off.exit:                               ; preds = %cond.true.i, %for.cond.next_page_off.exit_crit_edge
  %cond.i = phi i32 [ %17, %cond.true.i ], [ %add.i, %for.cond.next_page_off.exit_crit_edge ]
  %cmp9.not = icmp ugt i32 %data_len.addr.0, %9
  %sub12 = sub i32 %data_len.addr.0, %9
  br i1 %cmp9.not, label %next_page_off.exit.for.cond_crit_edge, label %next_page_off.exit.if.end13_crit_edge

next_page_off.exit.if.end13_crit_edge:            ; preds = %next_page_off.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

next_page_off.exit.for.cond_crit_edge:            ; preds = %next_page_off.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.end13:                                         ; preds = %next_page_off.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  %data_len.addr.1 = phi i32 [ %add, %entry.if.end13_crit_edge ], [ %data_len.addr.0, %next_page_off.exit.if.end13_crit_edge ]
  %final_log_off.1 = phi i32 [ %and1, %entry.if.end13_crit_edge ], [ %cond.i, %next_page_off.exit.if.end13_crit_edge ]
  %page_off.0.in = phi i32 [ %and3, %entry.if.end13_crit_edge ], [ %11, %next_page_off.exit.if.end13_crit_edge ]
  %page_off.0 = add i32 %data_len.addr.1, -1
  %add14 = add i32 %page_off.0, %final_log_off.1
  %add15 = add i32 %add14, %page_off.0.in
  ret i32 %add15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @current_log_avail(ptr nocapture noundef readonly %log) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %l_flags = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 37
  %0 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %max_current_avail = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 32
  %2 = ptrtoint ptr %max_current_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_current_avail, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %4 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_page, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %oldest_lsn_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 27
  %6 = ptrtoint ptr %oldest_lsn_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %oldest_lsn_off, align 8
  %sys_page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %8 = ptrtoint ptr %sys_page_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sys_page_mask, align 4
  %neg = xor i32 %9, -1
  %and4 = and i32 %7, %neg
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %and4, %cond.false ]
  %and6 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %next_page10 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 12
  %10 = ptrtoint ptr %next_page10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_page10, align 8
  br i1 %tobool7.not, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %12 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_size, align 8
  %add = add i32 %13, %11
  br label %cond.end17

cond.false9:                                      ; preds = %cond.end
  %first_page11 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %14 = ptrtoint ptr %first_page11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %first_page11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp = icmp eq i32 %11, %15
  br i1 %cmp, label %cond.true12, label %cond.false9.cond.end17_crit_edge

cond.false9.cond.end17_crit_edge:                 ; preds = %cond.false9
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end17

cond.true12:                                      ; preds = %cond.false9
  call void @__sanitizer_cov_trace_pc() #20
  %l_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %16 = ptrtoint ptr %l_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %l_size, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true12, %cond.false9.cond.end17_crit_edge, %cond.true8
  %cond18 = phi i32 [ %add, %cond.true8 ], [ %17, %cond.true12 ], [ %11, %cond.false9.cond.end17_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond18)
  %cmp19 = icmp eq i32 %cond, %cond18
  br i1 %cmp19, label %cond.end17.cleanup_crit_edge, label %if.end21

cond.end17.cleanup_crit_edge:                     ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end21:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %cond18)
  %cmp22 = icmp ult i32 %cond, %cond18
  br i1 %cmp22, label %cond.true23, label %cond.false25

cond.true23:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %total_avail_pages = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 30
  %18 = ptrtoint ptr %total_avail_pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_avail_pages, align 4
  %sub.neg = sub i32 %cond, %cond18
  %sub24 = add i32 %sub.neg, %19
  br label %cond.end27

cond.false25:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #20
  %sub26 = sub i32 %cond, %cond18
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false25, %cond.true23
  %cond28 = phi i32 [ %sub24, %cond.true23 ], [ %sub26, %cond.false25 ]
  %page_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 6
  %20 = ptrtoint ptr %page_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %page_bits, align 8
  %conv = zext i8 %21 to i32
  %shr = lshr i32 %cond28, %conv
  %reserved = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 34
  %22 = ptrtoint ptr %reserved to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reserved, align 4
  %mul = mul i32 %shr, %23
  br label %cleanup

cleanup:                                          ; preds = %cond.end27, %cond.end17.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %mul, %cond.end27 ], [ 0, %cond.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @last_log_lsn(ptr noundef %log) unnamed_addr #0 align 64 {
entry:
  %usa_error = alloca i8, align 1
  %page = alloca ptr, align 4
  %tst_page = alloca ptr, align 4
  %first_tail = alloca ptr, align 4
  %second_tail = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usa_error) #18
  %0 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %usa_error, align 1
  %l_flags = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 37
  %1 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %l_flags, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %last_lsn = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 28
  %3 = ptrtoint ptr %last_lsn to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %last_lsn, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i64 [ %4, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #18
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tst_page) #18
  %6 = ptrtoint ptr %tst_page to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tst_page, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_tail) #18
  %7 = ptrtoint ptr %first_tail to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %first_tail, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %second_tail) #18
  %8 = ptrtoint ptr %second_tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %second_tail, align 4
  %major_ver = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 35
  %9 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp = icmp sgt i16 %10, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %11 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %page_size, align 8
  %mul = shl i32 %12, 1
  %mul4 = mul i32 %12, 18
  %mul6 = shl i32 %12, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul6, i32 noundef 3136) #22
  %tobool7.not = icmp eq ptr %call9.i, null
  br i1 %tobool7.not, label %if.then.cleanup707_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then.cleanup707_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup707

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %13 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_page, align 4
  %page_size9 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %15 = ptrtoint ptr %page_size9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_size9, align 8
  %sub = sub i32 %14, %16
  %sub11 = sub i32 %sub, %16
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then.if.end12_crit_edge
  %final_off.0 = phi i32 [ %mul, %if.then.if.end12_crit_edge ], [ %sub11, %if.else ]
  %second_off.0 = phi i32 [ %mul4, %if.then.if.end12_crit_edge ], [ %sub, %if.else ]
  %page_bufs.0 = phi ptr [ %call9.i, %if.then.if.end12_crit_edge ], [ null, %if.else ]
  %file_data_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 20
  %seq_num_bits.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %page_size.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  br label %next_tail

next_tail:                                        ; preds = %if.end180.next_tail_crit_edge, %if.end12
  %page_cnt.0 = phi i32 [ 1, %if.end12 ], [ %page_cnt.2, %if.end180.next_tail_crit_edge ]
  %page_pos.0 = phi i32 [ 1, %if.end12 ], [ %page_pos.3, %if.end180.next_tail_crit_edge ]
  %page_off.0 = phi i32 [ 0, %if.end12 ], [ %page_off.2, %if.end180.next_tail_crit_edge ]
  %saved_off.0 = phi i32 [ 0, %if.end12 ], [ %saved_off.1, %if.end180.next_tail_crit_edge ]
  %final_off.1 = phi i32 [ %final_off.0, %if.end12 ], [ %add182, %if.end180.next_tail_crit_edge ]
  %second_off.1 = phi i32 [ %second_off.0, %if.end12 ], [ %add184, %if.end180.next_tail_crit_edge ]
  %final_off_prev.0 = phi i32 [ 0, %if.end12 ], [ %first_file_off.0, %if.end180.next_tail_crit_edge ]
  %second_off_prev.0 = phi i32 [ 0, %if.end12 ], [ %second_file_off.0, %if.end180.next_tail_crit_edge ]
  %tails.0 = phi i32 [ 0, %if.end12 ], [ %tails.1, %if.end180.next_tail_crit_edge ]
  %seq_base.0 = phi i64 [ 0, %if.end12 ], [ %seq_base.2, %if.end180.next_tail_crit_edge ]
  %lsn_base.0 = phi i64 [ 0, %if.end12 ], [ %lsn_base.1, %if.end180.next_tail_crit_edge ]
  %second_tail_prev.0 = phi ptr [ null, %if.end12 ], [ %137, %if.end180.next_tail_crit_edge ]
  %first_tail_prev.0 = phi ptr [ null, %if.end12 ], [ %135, %if.end180.next_tail_crit_edge ]
  %call13 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %second_off.1, ptr noundef nonnull %second_tail, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %next_tail.if.then20_crit_edge

next_tail.if.then20_crit_edge:                    ; preds = %next_tail
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then20

lor.lhs.false:                                    ; preds = %next_tail
  %17 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  br i1 %tobool15.not, label %lor.lhs.false17, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then20

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %second_tail, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380143684, i32 %22)
  %cmp18.not = icmp eq i32 %22, 1380143684
  br i1 %cmp18.not, label %if.else21, label %lor.lhs.false17.if.then20_crit_edge

lor.lhs.false17.if.then20_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false17.if.then20_crit_edge, %lor.lhs.false.if.then20_crit_edge, %next_tail.if.then20_crit_edge
  %23 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %second_tail, align 4
  call void @kfree(ptr noundef %24) #18
  %25 = ptrtoint ptr %second_tail to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %second_tail, align 4
  br label %if.end23

if.else21:                                        ; preds = %lor.lhs.false17
  %26 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %27)
  %cmp.i1095 = icmp slt i16 %27, 2
  br i1 %cmp.i1095, label %if.then.i1096, label %if.end.i1097

if.then.i1096:                                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #20
  %lsn.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %20, i32 0, i32 3
  %28 = ptrtoint ptr %lsn.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %lsn.i, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29) #18
  %conv2.i = trunc i64 %30 to i32
  br label %hdr_file_off.exit

if.end.i1097:                                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #20
  %file_off.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %20, i32 0, i32 6
  %31 = ptrtoint ptr %file_off.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %file_off.i, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32) #18
  br label %hdr_file_off.exit

hdr_file_off.exit:                                ; preds = %if.end.i1097, %if.then.i1096
  %retval.0.i = phi i32 [ %conv2.i, %if.then.i1096 ], [ %33, %if.end.i1097 ]
  %last_end_lsn = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %20, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %last_end_lsn to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %last_end_lsn, align 8
  %36 = call i64 @llvm.bswap.i64(i64 %35)
  br label %if.end23

if.end23:                                         ; preds = %hdr_file_off.exit, %if.then20
  %second_file_off.0 = phi i32 [ 0, %if.then20 ], [ %retval.0.i, %hdr_file_off.exit ]
  %lsn2.0 = phi i64 [ 0, %if.then20 ], [ %36, %hdr_file_off.exit ]
  %call24 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %final_off.1, ptr noundef nonnull %first_tail, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.end23.if.then34_crit_edge

if.end23.if.then34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

lor.lhs.false26:                                  ; preds = %if.end23
  %37 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool27.not = icmp eq i8 %38, 0
  br i1 %tobool27.not, label %lor.lhs.false29, label %lor.lhs.false26.if.then34_crit_edge

lor.lhs.false26.if.then34_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %39 = ptrtoint ptr %first_tail to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %first_tail, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380143684, i32 %42)
  %cmp32.not = icmp eq i32 %42, 1380143684
  br i1 %cmp32.not, label %if.else35, label %lor.lhs.false29.if.then34_crit_edge

lor.lhs.false29.if.then34_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false29.if.then34_crit_edge, %lor.lhs.false26.if.then34_crit_edge, %if.end23.if.then34_crit_edge
  %43 = ptrtoint ptr %first_tail to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %first_tail, align 4
  call void @kfree(ptr noundef %44) #18
  %45 = ptrtoint ptr %first_tail to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %first_tail, align 4
  br label %if.end39

if.else35:                                        ; preds = %lor.lhs.false29
  %46 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %cmp.i1099 = icmp slt i16 %47, 2
  br i1 %cmp.i1099, label %if.then.i1102, label %if.end.i1104

if.then.i1102:                                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #20
  %lsn.i1100 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %40, i32 0, i32 3
  %48 = ptrtoint ptr %lsn.i1100 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lsn.i1100, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49) #18
  %conv2.i1101 = trunc i64 %50 to i32
  br label %hdr_file_off.exit1106

if.end.i1104:                                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #20
  %file_off.i1103 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %40, i32 0, i32 6
  %51 = ptrtoint ptr %file_off.i1103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %file_off.i1103, align 4
  %53 = call i32 @llvm.bswap.i32(i32 %52) #18
  br label %hdr_file_off.exit1106

hdr_file_off.exit1106:                            ; preds = %if.end.i1104, %if.then.i1102
  %retval.0.i1105 = phi i32 [ %conv2.i1101, %if.then.i1102 ], [ %53, %if.end.i1104 ]
  %last_end_lsn38 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %40, i32 0, i32 4, i32 2
  %54 = ptrtoint ptr %last_end_lsn38 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %last_end_lsn38, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55)
  br label %if.end39

if.end39:                                         ; preds = %hdr_file_off.exit1106, %if.then34
  %first_file_off.0 = phi i32 [ 0, %if.then34 ], [ %retval.0.i1105, %hdr_file_off.exit1106 ]
  %lsn1.0 = phi i64 [ 0, %if.then34 ], [ %56, %hdr_file_off.exit1106 ]
  %57 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %58)
  %cmp42 = icmp slt i16 %58, 2
  %59 = ptrtoint ptr %first_tail to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %first_tail, align 4
  br i1 %cmp42, label %if.then44, label %if.end73

if.then44:                                        ; preds = %if.end39
  %61 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %second_tail, align 4
  %tobool46.not = icmp eq ptr %60, null
  %tobool47.not = icmp eq ptr %62, null
  %or.cond = select i1 %tobool46.not, i1 %tobool47.not, i1 false
  br i1 %or.cond, label %if.then44.tail_read_crit_edge, label %if.end49

if.then44.tail_read_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %tail_read

if.end49:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  %brmerge1329 = select i1 %tobool46.not, i1 true, i1 %tobool47.not
  call void @__sanitizer_cov_trace_cmp8(i64 %lsn1.0, i64 %lsn2.0)
  %cmp54 = icmp ult i64 %lsn1.0, %lsn2.0
  %best_page45.0.v = select i1 %brmerge1329, i1 %tobool46.not, i1 %cmp54
  %first_file_off.0.second_file_off.0 = select i1 %best_page45.0.v, i32 %second_file_off.0, i32 %first_file_off.0
  %cond72 = select i1 %best_page45.0.v, i64 %lsn2.0, i64 %lsn1.0
  %63 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom = zext i32 %64 to i64
  %shr = lshr i64 %cond72, %sh_prom
  br label %tail_read

if.end73:                                         ; preds = %if.end39
  %tobool74.not = icmp eq ptr %60, null
  br i1 %tobool74.not, label %cond.end79, label %cond.true75

cond.true75:                                      ; preds = %if.end73
  %conv76 = zext i32 %first_file_off.0 to i64
  %lsn1.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %60, i32 0, i32 3
  %65 = ptrtoint ptr %lsn1.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %lsn1.i, align 8
  %67 = call i64 @llvm.bswap.i64(i64 %66) #18
  %68 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %file_data_bits.i, align 4
  %70 = ptrtoint ptr %seq_num_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %seq_num_bits.i.i, align 8
  %72 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %page_mask.i, align 4
  %rflags.i.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %60, i32 0, i32 1
  %74 = ptrtoint ptr %rflags.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rflags.i.i, align 8
  %and.i.i = and i32 %75, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %cond.true75.cond.false.i_crit_edge, label %land.lhs.true.i

cond.true75.cond.false.i_crit_edge:               ; preds = %cond.true75
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %cond.true75
  %last_end_lsn.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %60, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %last_end_lsn.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %last_end_lsn.i, align 8
  %78 = call i64 @llvm.bswap.i64(i64 %77) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %67, i64 %78)
  %cmp8.not.i = icmp ugt i64 %67, %78
  br i1 %cmp8.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %record_hdr.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %60, i32 0, i32 4
  %79 = ptrtoint ptr %record_hdr.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %record_hdr.i, align 8
  %81 = call i16 @llvm.bswap.i16(i16 %80) #18
  %conv11.i = zext i16 %81 to i32
  br label %cond.end79.thread

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %cond.true75.cond.false.i_crit_edge
  %82 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %page_size.i, align 8
  br label %cond.end79.thread

cond.end79:                                       ; preds = %if.end73
  %84 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %second_tail, align 4
  %tobool81.not = icmp eq ptr %85, null
  br i1 %tobool81.not, label %cond.end79.tail_read_crit_edge, label %cond.end79.cond.true82_crit_edge

cond.end79.cond.true82_crit_edge:                 ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.true82

cond.end79.tail_read_crit_edge:                   ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %tail_read

cond.end79.thread:                                ; preds = %cond.false.i, %cond.true.i
  %cond12.i = phi i32 [ %conv11.i, %cond.true.i ], [ %83, %cond.false.i ]
  %sh_prom.i.i = zext i32 %71 to i64
  %shl.i.i = shl i64 %67, %sh_prom.i.i
  %sub.i.i = add i32 %71, -3
  %sh_prom2.i.i = zext i32 %sub.i.i to i64
  %shr.i.i = lshr i64 %shl.i.i, %sh_prom2.i.i
  %conv.i.i = trunc i64 %shr.i.i to i32
  %sh_prom.i = zext i32 %69 to i64
  %shr.i = lshr i64 %67, %sh_prom.i
  %neg.i = xor i32 %73, -1
  %and.i = and i32 %conv.i.i, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %first_file_off.0)
  %cmp.i1107 = icmp ugt i32 %and.i, %first_file_off.0
  %86 = zext i1 %cmp.i1107 to i64
  %add.i = add i64 %shr.i, %86
  %shl.i = shl i64 %add.i, %sh_prom.i
  %conv13.i = zext i32 %cond12.i to i64
  %add14.i = add nuw nsw i64 %conv13.i, %conv76
  %shr15.i = lshr i64 %add14.i, 3
  %add16.i = add i64 %shr15.i, %shl.i
  %87 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %second_tail, align 4
  %tobool81.not1303 = icmp eq ptr %88, null
  br i1 %tobool81.not1303, label %cond.end79.thread.if.end106_crit_edge, label %cond.end79.thread.cond.true82_crit_edge

cond.end79.thread.cond.true82_crit_edge:          ; preds = %cond.end79.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.true82

cond.end79.thread.if.end106_crit_edge:            ; preds = %cond.end79.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

cond.true82:                                      ; preds = %cond.end79.thread.cond.true82_crit_edge, %cond.end79.cond.true82_crit_edge
  %89 = phi ptr [ %88, %cond.end79.thread.cond.true82_crit_edge ], [ %85, %cond.end79.cond.true82_crit_edge ]
  %cond801304 = phi i64 [ %add16.i, %cond.end79.thread.cond.true82_crit_edge ], [ 0, %cond.end79.cond.true82_crit_edge ]
  %conv83 = zext i32 %second_file_off.0 to i64
  %lsn1.i1108 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %lsn1.i1108 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %lsn1.i1108, align 8
  %92 = call i64 @llvm.bswap.i64(i64 %91) #18
  %93 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %file_data_bits.i, align 4
  %95 = ptrtoint ptr %seq_num_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %seq_num_bits.i.i, align 8
  %97 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %page_mask.i, align 4
  %rflags.i.i1112 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %89, i32 0, i32 1
  %99 = ptrtoint ptr %rflags.i.i1112 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rflags.i.i1112, align 8
  %and.i.i1113 = and i32 %100, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1113)
  %tobool.i.not.i1114 = icmp eq i32 %and.i.i1113, 0
  br i1 %tobool.i.not.i1114, label %cond.true82.cond.false.i1122_crit_edge, label %land.lhs.true.i1117

cond.true82.cond.false.i1122_crit_edge:           ; preds = %cond.true82
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i1122

land.lhs.true.i1117:                              ; preds = %cond.true82
  %last_end_lsn.i1115 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %89, i32 0, i32 4, i32 2
  %101 = ptrtoint ptr %last_end_lsn.i1115 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %last_end_lsn.i1115, align 8
  %103 = call i64 @llvm.bswap.i64(i64 %102) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %92, i64 %103)
  %cmp8.not.i1116 = icmp ugt i64 %92, %103
  br i1 %cmp8.not.i1116, label %land.lhs.true.i1117.cond.false.i1122_crit_edge, label %cond.true.i1120

land.lhs.true.i1117.cond.false.i1122_crit_edge:   ; preds = %land.lhs.true.i1117
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.false.i1122

cond.true.i1120:                                  ; preds = %land.lhs.true.i1117
  call void @__sanitizer_cov_trace_pc() #20
  %record_hdr.i1118 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %89, i32 0, i32 4
  %104 = ptrtoint ptr %record_hdr.i1118 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %record_hdr.i1118, align 8
  %106 = call i16 @llvm.bswap.i16(i16 %105) #18
  %conv11.i1119 = zext i16 %106 to i32
  br label %cond.end86.thread

cond.false.i1122:                                 ; preds = %land.lhs.true.i1117.cond.false.i1122_crit_edge, %cond.true82.cond.false.i1122_crit_edge
  %107 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %page_size.i, align 8
  br label %cond.end86.thread

cond.end86.thread:                                ; preds = %cond.false.i1122, %cond.true.i1120
  %cond12.i1123 = phi i32 [ %conv11.i1119, %cond.true.i1120 ], [ %108, %cond.false.i1122 ]
  %sh_prom.i.i1124 = zext i32 %96 to i64
  %shl.i.i1125 = shl i64 %92, %sh_prom.i.i1124
  %sub.i.i1126 = add i32 %96, -3
  %sh_prom2.i.i1127 = zext i32 %sub.i.i1126 to i64
  %shr.i.i1128 = lshr i64 %shl.i.i1125, %sh_prom2.i.i1127
  %conv.i.i1129 = trunc i64 %shr.i.i1128 to i32
  %sh_prom.i1130 = zext i32 %94 to i64
  %shr.i1131 = lshr i64 %92, %sh_prom.i1130
  %neg.i1132 = xor i32 %98, -1
  %and.i1133 = and i32 %conv.i.i1129, %neg.i1132
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i1133, i32 %second_file_off.0)
  %cmp.i1135 = icmp ugt i32 %and.i1133, %second_file_off.0
  %109 = zext i1 %cmp.i1135 to i64
  %add.i1136 = add i64 %shr.i1131, %109
  %shl.i1137 = shl i64 %add.i1136, %sh_prom.i1130
  %conv13.i1138 = zext i32 %cond12.i1123 to i64
  %add14.i1139 = add nuw nsw i64 %conv13.i1138, %conv83
  %shr15.i1140 = lshr i64 %add14.i1139, 3
  %add16.i1141 = add i64 %shr15.i1140, %shl.i1137
  br i1 %tobool74.not, label %cond.end86.thread.if.end106_crit_edge, label %if.then91

cond.end86.thread.if.end106_crit_edge:            ; preds = %cond.end86.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end106

if.then91:                                        ; preds = %cond.end86.thread
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_cmp8(i64 %cond801304, i64 %add16.i1141)
  %cmp92 = icmp ugt i64 %cond801304, %add16.i1141
  %first_file_off.0.second_file_off.01049 = select i1 %cmp92, i32 %first_file_off.0, i32 %second_file_off.0
  %110 = call i64 @llvm.umax.i64(i64 %cond801304, i64 %add16.i1141)
  %.1050 = select i1 %cmp92, ptr %60, ptr %89
  br label %if.end106

if.end106:                                        ; preds = %if.then91, %cond.end86.thread.if.end106_crit_edge, %cond.end79.thread.if.end106_crit_edge
  %111 = phi ptr [ %89, %if.then91 ], [ %89, %cond.end86.thread.if.end106_crit_edge ], [ null, %cond.end79.thread.if.end106_crit_edge ]
  %this_off.0 = phi i32 [ %first_file_off.0.second_file_off.01049, %if.then91 ], [ %second_file_off.0, %cond.end86.thread.if.end106_crit_edge ], [ %first_file_off.0, %cond.end79.thread.if.end106_crit_edge ]
  %best_lsn.0 = phi i64 [ %110, %if.then91 ], [ %add16.i1141, %cond.end86.thread.if.end106_crit_edge ], [ %add16.i, %cond.end79.thread.if.end106_crit_edge ]
  %best_page.0 = phi ptr [ %.1050, %if.then91 ], [ %89, %cond.end86.thread.if.end106_crit_edge ], [ %60, %cond.end79.thread.if.end106_crit_edge ]
  %page_pos107 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %best_page.0, i32 0, i32 3
  %112 = ptrtoint ptr %page_pos107 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %page_pos107, align 2
  %114 = call i16 @llvm.bswap.i16(i16 %113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tails.0)
  %tobool108.not = icmp eq i32 %tails.0, 0
  br i1 %tobool108.not, label %if.then109, label %if.else124

if.then109:                                       ; preds = %if.end106
  %conv110 = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.0, i32 %conv110)
  %cmp111 = icmp eq i32 %page_pos.0, %conv110
  br i1 %cmp111, label %if.then113, label %if.then109.if.end180_crit_edge

if.then109.if.end180_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end180

if.then113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #20
  %115 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom115 = zext i32 %116 to i64
  %shr116 = lshr i64 %best_lsn.0, %sh_prom115
  %file_off = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %best_page.0, i32 0, i32 6
  %117 = ptrtoint ptr %file_off to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %file_off, align 4
  %119 = call i32 @llvm.bswap.i32(i32 %118)
  %120 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %page_size.i, align 8
  %122 = call ptr @memmove(ptr %page_bufs.0, ptr %best_page.0, i32 %121)
  %page_count = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %best_page.0, i32 0, i32 2
  %123 = ptrtoint ptr %page_count to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %page_count, align 4
  %125 = call i16 @llvm.bswap.i16(i16 %124)
  %conv118 = zext i16 %125 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %125)
  %cmp119 = icmp ugt i16 %125, 1
  %add = zext i1 %cmp119 to i32
  %spec.select = add i32 %page_pos.0, %add
  br label %if.end180

if.else124:                                       ; preds = %if.end106
  %126 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom126 = zext i32 %127 to i64
  %shr127 = lshr i64 %best_lsn.0, %sh_prom126
  call void @__sanitizer_cov_trace_cmp8(i64 %seq_base.0, i64 %shr127)
  %cmp128 = icmp eq i64 %seq_base.0, %shr127
  br i1 %cmp128, label %land.lhs.true130, label %if.else124.if.else178_crit_edge

if.else124.if.else178_crit_edge:                  ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else178

land.lhs.true130:                                 ; preds = %if.else124
  %128 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %page_size.i, align 8
  %add132 = add i32 %129, %saved_off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add132, i32 %this_off.0)
  %cmp133 = icmp eq i32 %add132, %this_off.0
  call void @__sanitizer_cov_trace_cmp8(i64 %lsn_base.0, i64 %best_lsn.0)
  %cmp136 = icmp ult i64 %lsn_base.0, %best_lsn.0
  %or.cond1051 = select i1 %cmp133, i1 %cmp136, i1 false
  br i1 %or.cond1051, label %land.lhs.true138, label %land.lhs.true130.if.else178_crit_edge

land.lhs.true130.if.else178_crit_edge:            ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else178

land.lhs.true138:                                 ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.0, i32 %page_cnt.0)
  %cmp139.not = icmp ne i32 %page_pos.0, %page_cnt.0
  %conv142 = zext i16 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.0, i32 %conv142)
  %cmp143 = icmp eq i32 %page_pos.0, %conv142
  %or.cond1052 = select i1 %cmp139.not, i1 true, i1 %cmp143
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %113)
  %cmp147 = icmp eq i16 %113, 256
  %or.cond1053 = select i1 %or.cond1052, i1 true, i1 %cmp147
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.0, i32 %page_cnt.0)
  %cmp150.not = icmp uge i32 %page_pos.0, %page_cnt.0
  %or.cond1054 = select i1 %cmp150.not, i1 true, i1 %cmp143
  %or.cond1330 = select i1 %or.cond1053, i1 %or.cond1054, i1 false
  br i1 %or.cond1330, label %if.then156, label %land.lhs.true138.if.else178_crit_edge

land.lhs.true138.if.else178_crit_edge:            ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else178

if.then156:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #20
  %page_count157 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %best_page.0, i32 0, i32 2
  %130 = ptrtoint ptr %page_count157 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %page_count157, align 4
  %132 = call i16 @llvm.bswap.i16(i16 %131)
  %mul161 = mul i32 %129, %tails.0
  %add.ptr = getelementptr i8, ptr %page_bufs.0, i32 %mul161
  %133 = call ptr @memmove(ptr %add.ptr, ptr %best_page.0, i32 %129)
  %add163 = add i32 %tails.0, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %113, i16 %131)
  %cmp166.not = icmp eq i16 %113, %131
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %132)
  %cmp171 = icmp ugt i16 %132, 1
  %add174 = zext i1 %cmp171 to i32
  %spec.select1055 = add nuw nsw i32 %add174, %conv142
  %page_cnt.1.shrunk = select i1 %cmp166.not, i16 1, i16 %132
  %page_pos.2 = select i1 %cmp166.not, i32 1, i32 %spec.select1055
  %page_cnt.1 = zext i16 %page_cnt.1.shrunk to i32
  br label %if.end180

if.else178:                                       ; preds = %land.lhs.true138.if.else178_crit_edge, %land.lhs.true130.if.else178_crit_edge, %if.else124.if.else178_crit_edge
  call void @kfree(ptr noundef %60) #18
  call void @kfree(ptr noundef %111) #18
  br label %tail_read

if.end180:                                        ; preds = %if.then156, %if.then113, %if.then109.if.end180_crit_edge
  %page_cnt.2 = phi i32 [ %page_cnt.1, %if.then156 ], [ %conv118, %if.then113 ], [ %page_cnt.0, %if.then109.if.end180_crit_edge ]
  %page_pos.3 = phi i32 [ %page_pos.2, %if.then156 ], [ %spec.select, %if.then113 ], [ %page_pos.0, %if.then109.if.end180_crit_edge ]
  %page_off.2 = phi i32 [ %page_off.0, %if.then156 ], [ %119, %if.then113 ], [ %page_off.0, %if.then109.if.end180_crit_edge ]
  %saved_off.1 = phi i32 [ %this_off.0, %if.then156 ], [ %119, %if.then113 ], [ %saved_off.0, %if.then109.if.end180_crit_edge ]
  %tails.1 = phi i32 [ %add163, %if.then156 ], [ 1, %if.then113 ], [ 0, %if.then109.if.end180_crit_edge ]
  %seq_base.2 = phi i64 [ %seq_base.0, %if.then156 ], [ %shr116, %if.then113 ], [ %seq_base.0, %if.then109.if.end180_crit_edge ]
  %lsn_base.1 = phi i64 [ %best_lsn.0, %if.then156 ], [ %best_lsn.0, %if.then113 ], [ %lsn_base.0, %if.then109.if.end180_crit_edge ]
  call void @kfree(ptr noundef %first_tail_prev.0) #18
  %134 = ptrtoint ptr %first_tail to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %first_tail, align 4
  store ptr null, ptr %first_tail, align 4
  call void @kfree(ptr noundef %second_tail_prev.0) #18
  %136 = ptrtoint ptr %second_tail to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %second_tail, align 4
  store ptr null, ptr %second_tail, align 4
  %138 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %page_size.i, align 8
  %add182 = add i32 %139, %final_off.1
  %add184 = add i32 %139, %second_off.1
  %cmp185 = icmp ult i32 %tails.1, 16
  br i1 %cmp185, label %if.end180.next_tail_crit_edge, label %if.end180.tail_read_crit_edge

if.end180.tail_read_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #20
  br label %tail_read

if.end180.next_tail_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_tail

tail_read:                                        ; preds = %if.end180.tail_read_crit_edge, %if.else178, %cond.end79.tail_read_crit_edge, %if.end49, %if.then44.tail_read_crit_edge
  %page_off.3 = phi i32 [ %page_off.0, %if.else178 ], [ %first_file_off.0.second_file_off.0, %if.end49 ], [ %page_off.0, %if.then44.tail_read_crit_edge ], [ %page_off.0, %cond.end79.tail_read_crit_edge ], [ %page_off.2, %if.end180.tail_read_crit_edge ]
  %saved_off.2 = phi i32 [ %saved_off.0, %if.else178 ], [ %saved_off.0, %if.end49 ], [ %saved_off.0, %if.then44.tail_read_crit_edge ], [ %saved_off.0, %cond.end79.tail_read_crit_edge ], [ %saved_off.1, %if.end180.tail_read_crit_edge ]
  %final_off_prev.1 = phi i32 [ %final_off_prev.0, %if.else178 ], [ %first_file_off.0, %if.end49 ], [ %first_file_off.0, %if.then44.tail_read_crit_edge ], [ %final_off_prev.0, %cond.end79.tail_read_crit_edge ], [ %first_file_off.0, %if.end180.tail_read_crit_edge ]
  %second_off_prev.1 = phi i32 [ %second_off_prev.0, %if.else178 ], [ %second_file_off.0, %if.end49 ], [ %second_file_off.0, %if.then44.tail_read_crit_edge ], [ %second_off_prev.0, %cond.end79.tail_read_crit_edge ], [ %second_file_off.0, %if.end180.tail_read_crit_edge ]
  %tails.2 = phi i32 [ %tails.0, %if.else178 ], [ 1, %if.end49 ], [ 1, %if.then44.tail_read_crit_edge ], [ %tails.0, %cond.end79.tail_read_crit_edge ], [ %tails.1, %if.end180.tail_read_crit_edge ]
  %seq_base.3 = phi i64 [ %seq_base.0, %if.else178 ], [ %shr, %if.end49 ], [ %seq_base.0, %if.then44.tail_read_crit_edge ], [ %seq_base.0, %cond.end79.tail_read_crit_edge ], [ %seq_base.2, %if.end180.tail_read_crit_edge ]
  %second_tail_prev.1 = phi ptr [ %second_tail_prev.0, %if.else178 ], [ %62, %if.end49 ], [ null, %if.then44.tail_read_crit_edge ], [ %second_tail_prev.0, %cond.end79.tail_read_crit_edge ], [ %137, %if.end180.tail_read_crit_edge ]
  %first_tail_prev.1 = phi ptr [ %first_tail_prev.0, %if.else178 ], [ %60, %if.end49 ], [ null, %if.then44.tail_read_crit_edge ], [ %first_tail_prev.0, %cond.end79.tail_read_crit_edge ], [ %135, %if.end180.tail_read_crit_edge ]
  %140 = ptrtoint ptr %first_tail to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %first_tail_prev.1, ptr %first_tail, align 4
  %141 = ptrtoint ptr %second_tail to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %second_tail_prev.1, ptr %second_tail, align 4
  %seq_num = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 18
  %142 = ptrtoint ptr %seq_num to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %seq_num, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %seq_base.3, i64 %143)
  %cmp189 = icmp eq i64 %seq_base.3, %143
  %next_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 12
  %144 = ptrtoint ptr %next_page to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %next_page, align 8
  %146 = call i32 @llvm.umin.i32(i32 %145, i32 %page_off.3)
  %cond201 = select i1 %cmp189, i32 %146, i32 %145
  %first_page202 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %147 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %first_page202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond201, i32 %148)
  %cmp203 = icmp eq i32 %cond201, %148
  br i1 %cmp203, label %land.end, label %tail_read.cond.end216_crit_edge

tail_read.cond.end216_crit_edge:                  ; preds = %tail_read
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end216

land.end:                                         ; preds = %tail_read
  call void @__sanitizer_cov_trace_pc() #20
  %149 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %l_flags, align 4
  %and206 = and i32 %150, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and206)
  %tobool207.not = icmp eq i32 %and206, 0
  %add213 = zext i1 %tobool207.not to i64
  %spec.select1332 = add i64 %143, %add213
  br label %cond.end216

cond.end216:                                      ; preds = %land.end, %tail_read.cond.end216_crit_edge
  %151 = phi i1 [ false, %tail_read.cond.end216_crit_edge ], [ %tobool207.not, %land.end ]
  %cond217 = phi i64 [ %143, %tail_read.cond.end216_crit_edge ], [ %spec.select1332, %land.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %extract.t = icmp ne i32 %and, 0
  %sys_page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %l_size.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tails.2)
  %cmp225 = icmp ugt i32 %tails.2, 1
  %tobool361.not = icmp eq ptr %first_tail_prev.1, null
  %tobool363.not = icmp eq ptr %second_tail_prev.1, null
  %last_end_lsn366 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %second_tail_prev.1, i32 0, i32 4, i32 2
  %last_end_lsn368 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %first_tail_prev.1, i32 0, i32 4, i32 2
  %last_lsn319 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 28
  %ra = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 22
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %next_page332 = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 12
  call void @__sanitizer_cov_trace_cmp4(i32 %final_off_prev.1, i32 %second_off_prev.1)
  %cmp358 = icmp ne i32 %final_off_prev.1, %second_off_prev.1
  %brmerge = select i1 %cmp358, i1 true, i1 %tobool361.not
  %first_tail_prev.1.mux = select i1 %cmp358, ptr %first_tail_prev.1, ptr %second_tail_prev.1
  br label %next_page218

next_page218:                                     ; preds = %next_page_1, %cond.end216
  %reuse_page.0.off0 = phi i1 [ %extract.t, %cond.end216 ], [ false, %next_page_1 ]
  %wrapped_file.0.off0 = phi i1 [ %151, %cond.end216 ], [ %spec.select1060, %next_page_1 ]
  %page_cnt.3 = phi i32 [ 1, %cond.end216 ], [ %page_cnt.4, %next_page_1 ]
  %page_pos.4 = phi i32 [ 1, %cond.end216 ], [ %page_pos.5, %next_page_1 ]
  %page_off1.0 = phi i32 [ 0, %cond.end216 ], [ %page_off1.4, %next_page_1 ]
  %curpage_off.0 = phi i32 [ %cond201, %cond.end216 ], [ %cond.i, %next_page_1 ]
  %expected_seq.0 = phi i64 [ %cond217, %cond.end216 ], [ %spec.select1061, %next_page_1 ]
  %last_ok_lsn.0 = phi i64 [ %cond, %cond.end216 ], [ %last_ok_lsn.3, %next_page_1 ]
  %call219 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %curpage_off.0, ptr noundef nonnull %page, ptr noundef nonnull %usa_error)
  %152 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sys_page_mask.i, align 4
  %neg.i1143 = xor i32 %153, -1
  %and.i1144 = and i32 %curpage_off.0, %neg.i1143
  %154 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %page_size.i, align 8
  %add.i1146 = add i32 %and.i1144, %155
  %156 = ptrtoint ptr %l_size.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %l_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i1146, i32 %157)
  %cmp.not.i = icmp ult i32 %add.i1146, %157
  br i1 %cmp.not.i, label %next_page218.next_page_off.exit_crit_edge, label %cond.true.i1147

next_page218.next_page_off.exit_crit_edge:        ; preds = %next_page218
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit

cond.true.i1147:                                  ; preds = %next_page218
  call void @__sanitizer_cov_trace_pc() #20
  %158 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %first_page202, align 4
  br label %next_page_off.exit

next_page_off.exit:                               ; preds = %cond.true.i1147, %next_page218.next_page_off.exit_crit_edge
  %cond.i = phi i32 [ %159, %cond.true.i1147 ], [ %add.i1146, %next_page218.next_page_off.exit_crit_edge ]
  %160 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %first_page202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %161)
  %cmp222 = icmp eq i32 %cond.i, %161
  br i1 %cmp225, label %if.then227, label %if.end346

if.then227:                                       ; preds = %next_page_off.exit
  %sub228 = sub i32 %curpage_off.0, %page_off.3
  %add.ptr229 = getelementptr i8, ptr %page_bufs.0, i32 %sub228
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %saved_off.2)
  %cmp230 = icmp eq i32 %curpage_off.0, %saved_off.2
  br i1 %cmp230, label %if.then227.use_tail_page_crit_edge, label %if.end233

if.then227.use_tail_page_crit_edge:               ; preds = %if.then227
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_tail_page

if.end233:                                        ; preds = %if.then227
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %page_off.3)
  %cmp234 = icmp uge i32 %curpage_off.0, %page_off.3
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %saved_off.2)
  %cmp237.not = icmp ult i32 %curpage_off.0, %saved_off.2
  %or.cond1056 = select i1 %cmp234, i1 %cmp237.not, i1 false
  br i1 %or.cond1056, label %if.end240, label %if.end233.if.end396_crit_edge

if.end233.if.end396_crit_edge:                    ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end396

if.end240:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_off1.0)
  %tobool241.not = icmp eq i32 %page_off1.0, 0
  br i1 %tobool241.not, label %if.end243, label %if.end240.use_cur_page_crit_edge

if.end240.use_cur_page_crit_edge:                 ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

if.end243:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool244.not = icmp eq i32 %call219, 0
  br i1 %tobool244.not, label %land.lhs.true245, label %if.end243.use_cur_page_crit_edge

if.end243.use_cur_page_crit_edge:                 ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true245:                                 ; preds = %if.end243
  %162 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool246.not = icmp eq i8 %163, 0
  br i1 %tobool246.not, label %land.lhs.true247, label %land.lhs.true245.use_cur_page_crit_edge

land.lhs.true245.use_cur_page_crit_edge:          ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true247:                                 ; preds = %land.lhs.true245
  %164 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %page, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380143684, i32 %167)
  %cmp250 = icmp eq i32 %167, 1380143684
  br i1 %cmp250, label %land.lhs.true252, label %land.lhs.true247.use_cur_page_crit_edge

land.lhs.true247.use_cur_page_crit_edge:          ; preds = %land.lhs.true247
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true252:                                 ; preds = %land.lhs.true247
  %lsn = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr229, i32 0, i32 3
  %168 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %lsn, align 8
  %lsn255 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %165, i32 0, i32 3
  %170 = ptrtoint ptr %lsn255 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %lsn255, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %169, i64 %171)
  %cmp256 = icmp eq i64 %169, %171
  br i1 %cmp256, label %land.lhs.true258, label %land.lhs.true252.use_cur_page_crit_edge

land.lhs.true252.use_cur_page_crit_edge:          ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true258:                                 ; preds = %land.lhs.true252
  %record_hdr259 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %add.ptr229, i32 0, i32 4
  %172 = ptrtoint ptr %record_hdr259 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %record_hdr259, align 8
  %record_hdr261 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %165, i32 0, i32 4
  %174 = ptrtoint ptr %record_hdr261 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %record_hdr261, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %175)
  %cmp264 = icmp eq i16 %173, %175
  br i1 %cmp264, label %land.lhs.true266, label %land.lhs.true258.use_cur_page_crit_edge

land.lhs.true258.use_cur_page_crit_edge:          ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true266:                                 ; preds = %land.lhs.true258
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.4, i32 %page_cnt.3)
  %cmp267 = icmp eq i32 %page_pos.4, %page_cnt.3
  %page_pos270 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %165, i32 0, i32 3
  %176 = ptrtoint ptr %page_pos270 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %page_pos270, align 2
  br i1 %cmp267, label %land.lhs.true269, label %land.lhs.true277

land.lhs.true269:                                 ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %177)
  %cmp272 = icmp eq i16 %177, 256
  br i1 %cmp272, label %land.lhs.true269.lor.lhs.false398_crit_edge, label %land.lhs.true269.use_cur_page_crit_edge

land.lhs.true269.use_cur_page_crit_edge:          ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true269.lor.lhs.false398_crit_edge:      ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false398

land.lhs.true277:                                 ; preds = %land.lhs.true266
  %178 = call i16 @llvm.bswap.i16(i16 %177)
  %conv279 = zext i16 %178 to i32
  %add280 = add i32 %page_pos.4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add280, i32 %conv279)
  %cmp281 = icmp eq i32 %add280, %conv279
  br i1 %cmp281, label %land.lhs.true283, label %land.lhs.true277.use_cur_page_crit_edge

land.lhs.true277.use_cur_page_crit_edge:          ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true283:                                 ; preds = %land.lhs.true277
  %page_count284 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %165, i32 0, i32 2
  %179 = ptrtoint ptr %page_count284 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %page_count284, align 4
  %181 = call i16 @llvm.bswap.i16(i16 %180)
  %conv285 = zext i16 %181 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.3, i32 %conv285)
  %cmp286 = icmp eq i32 %page_cnt.3, %conv285
  br i1 %cmp286, label %land.lhs.true283.lor.lhs.false398_crit_edge, label %land.lhs.true283.use_cur_page_crit_edge

land.lhs.true283.use_cur_page_crit_edge:          ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_cur_page

land.lhs.true283.lor.lhs.false398_crit_edge:      ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false398

use_cur_page:                                     ; preds = %land.lhs.true283.use_cur_page_crit_edge, %land.lhs.true277.use_cur_page_crit_edge, %land.lhs.true269.use_cur_page_crit_edge, %land.lhs.true258.use_cur_page_crit_edge, %land.lhs.true252.use_cur_page_crit_edge, %land.lhs.true247.use_cur_page_crit_edge, %land.lhs.true245.use_cur_page_crit_edge, %if.end243.use_cur_page_crit_edge, %if.end240.use_cur_page_crit_edge
  %page_off1.1 = phi i32 [ %page_off1.0, %if.end240.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true283.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true277.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true258.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true252.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true247.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true245.use_cur_page_crit_edge ], [ %page_off.3, %if.end243.use_cur_page_crit_edge ], [ %page_off.3, %land.lhs.true269.use_cur_page_crit_edge ]
  %lsn291 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr229, i32 0, i32 3
  %182 = ptrtoint ptr %lsn291 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %lsn291, align 8
  %184 = call i64 @llvm.bswap.i64(i64 %183)
  %record_hdr292 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %add.ptr229, i32 0, i32 4
  %last_end_lsn293 = getelementptr inbounds %struct.LFS_RECORD, ptr %record_hdr292, i32 0, i32 2
  %185 = ptrtoint ptr %last_end_lsn293 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %last_end_lsn293, align 8
  %187 = call i64 @llvm.bswap.i64(i64 %186)
  call void @__sanitizer_cov_trace_cmp8(i64 %last_ok_lsn.0, i64 %187)
  %cmp294.not = icmp eq i64 %last_ok_lsn.0, %187
  br i1 %cmp294.not, label %use_cur_page.if.end310_crit_edge, label %land.lhs.true296

use_cur_page.if.end310_crit_edge:                 ; preds = %use_cur_page
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end310

land.lhs.true296:                                 ; preds = %use_cur_page
  %188 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom298 = zext i32 %189 to i64
  %shr299 = lshr i64 %184, %sh_prom298
  %190 = ptrtoint ptr %seq_num_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %seq_num_bits.i.i, align 8
  %sh_prom.i1148 = zext i32 %191 to i64
  %shl.i1149 = shl i64 %184, %sh_prom.i1148
  %sub.i = add i32 %191, -3
  %sh_prom2.i = zext i32 %sub.i to i64
  %shr.i1150 = lshr i64 %shl.i1149, %sh_prom2.i
  %conv.i1151 = trunc i64 %shr.i1150 to i32
  %192 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %page_mask.i, align 4
  %neg = xor i32 %193, -1
  %and301 = and i32 %conv.i1151, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %and301)
  %cmp302 = icmp ult i32 %curpage_off.0, %and301
  %194 = zext i1 %cmp302 to i64
  %add306 = add i64 %shr299, %194
  call void @__sanitizer_cov_trace_cmp8(i64 %add306, i64 %expected_seq.0)
  %cmp307.not = icmp eq i64 %add306, %expected_seq.0
  br i1 %cmp307.not, label %land.lhs.true296.if.end310_crit_edge, label %land.lhs.true296.if.end536.thread_crit_edge

land.lhs.true296.if.end536.thread_crit_edge:      ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end536.thread

land.lhs.true296.if.end310_crit_edge:             ; preds = %land.lhs.true296
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end310

if.end310:                                        ; preds = %land.lhs.true296.if.end310_crit_edge, %use_cur_page.if.end310_crit_edge
  %rflags.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %add.ptr229, i32 0, i32 1
  %195 = ptrtoint ptr %rflags.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %rflags.i, align 8
  %and.i1152 = and i32 %196, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1152)
  %tobool.i.not = icmp eq i32 %and.i1152, 0
  br i1 %tobool.i.not, label %if.end310.next_page_1_crit_edge, label %if.end313

if.end310.next_page_1_crit_edge:                  ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_1

if.end313:                                        ; preds = %if.end310
  %197 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %expected_seq.0, ptr %seq_num, align 8
  %198 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %l_flags, align 4
  %and316 = and i32 %199, -5
  store i32 %and316, ptr %l_flags, align 4
  %200 = ptrtoint ptr %last_end_lsn293 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %last_end_lsn293, align 8
  %202 = call i64 @llvm.bswap.i64(i64 %201)
  %203 = ptrtoint ptr %last_lsn319 to i32
  call void @__asan_store8_noabort(i32 %203)
  store i64 %202, ptr %last_lsn319, align 8
  %204 = ptrtoint ptr %last_end_lsn293 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %last_end_lsn293, align 8
  %206 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ra, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store8_noabort(i32 %208)
  store i64 %205, ptr %207, align 8
  %209 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %record_header_len, align 4
  %conv322 = zext i16 %210 to i32
  %211 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %page_size.i, align 8
  %213 = ptrtoint ptr %record_hdr292 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %record_hdr292, align 8
  %215 = call i16 @llvm.bswap.i16(i16 %214)
  %conv326 = zext i16 %215 to i32
  %sub327 = sub i32 %212, %conv326
  call void @__sanitizer_cov_trace_cmp4(i32 %sub327, i32 %conv322)
  %cmp328.not = icmp ult i32 %sub327, %conv322
  %216 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %l_flags, align 4
  %and335 = and i32 %217, -17
  %masksel = select i1 %cmp328.not, i32 0, i32 16
  %storemerge1512 = or i32 %and335, %masksel
  %storemerge1511 = select i1 %cmp328.not, i32 %cond.i, i32 %curpage_off.0
  store i32 %storemerge1512, ptr %l_flags, align 4
  %218 = ptrtoint ptr %next_page332 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %storemerge1511, ptr %next_page332, align 8
  br i1 %wrapped_file.0.off0, label %if.then339, label %if.end313.next_page_1.sink.split_crit_edge

if.end313.next_page_1.sink.split_crit_edge:       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_1.sink.split

if.then339:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #20
  %219 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %l_flags, align 4
  %or341 = or i32 %220, 1
  store i32 %or341, ptr %l_flags, align 4
  br label %next_page_1.sink.split

if.end346:                                        ; preds = %next_page_off.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.3, i32 %page_pos.4)
  %cmp347 = icmp eq i32 %page_cnt.3, %page_pos.4
  %add350 = add i32 %page_pos.4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.3, i32 %add350)
  %cmp351 = icmp eq i32 %page_cnt.3, %add350
  %or.cond1057 = or i1 %cmp347, %cmp351
  br i1 %or.cond1057, label %if.then353, label %if.end346.if.end396_crit_edge

if.end346.if.end396_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end396

if.then353:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %final_off_prev.1)
  %cmp354 = icmp eq i32 %curpage_off.0, %final_off_prev.1
  br i1 %cmp354, label %if.end357, label %if.end357.thread

if.end357:                                        ; preds = %if.then353
  br i1 %brmerge, label %if.end357.use_tail_page_crit_edge, label %lor.lhs.false362

if.end357.use_tail_page_crit_edge:                ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_tail_page

if.end357.thread:                                 ; preds = %if.then353
  call void @__sanitizer_cov_trace_cmp4(i32 %curpage_off.0, i32 %second_off_prev.1)
  %cmp3581231 = icmp eq i32 %curpage_off.0, %second_off_prev.1
  br i1 %cmp3581231, label %if.end357.thread.use_tail_page_crit_edge, label %if.end357.thread.if.end396_crit_edge

if.end357.thread.if.end396_crit_edge:             ; preds = %if.end357.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end396

if.end357.thread.use_tail_page_crit_edge:         ; preds = %if.end357.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %use_tail_page

lor.lhs.false362:                                 ; preds = %if.end357
  br i1 %tobool363.not, label %lor.lhs.false362.if.then377_crit_edge, label %land.lhs.true364

lor.lhs.false362.if.then377_crit_edge:            ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then377

land.lhs.true364:                                 ; preds = %lor.lhs.false362
  call void @__sanitizer_cov_trace_pc() #20
  %221 = ptrtoint ptr %last_end_lsn366 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %last_end_lsn366, align 8
  %223 = call i64 @llvm.bswap.i64(i64 %222)
  %224 = ptrtoint ptr %last_end_lsn368 to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %last_end_lsn368, align 8
  %226 = call i64 @llvm.bswap.i64(i64 %225)
  call void @__sanitizer_cov_trace_cmp8(i64 %223, i64 %226)
  %cmp369 = icmp ugt i64 %223, %226
  %spec.select1333 = select i1 %cmp369, ptr %second_tail_prev.1, ptr %first_tail_prev.1
  br label %if.then377

use_tail_page:                                    ; preds = %if.end357.thread.use_tail_page_crit_edge, %if.end357.use_tail_page_crit_edge, %if.then227.use_tail_page_crit_edge
  %tail_page.2 = phi ptr [ %first_tail_prev.1.mux, %if.end357.use_tail_page_crit_edge ], [ %add.ptr229, %if.then227.use_tail_page_crit_edge ], [ %second_tail_prev.1, %if.end357.thread.use_tail_page_crit_edge ]
  %tobool376.not = icmp eq ptr %tail_page.2, null
  br i1 %tobool376.not, label %use_tail_page.if.end396_crit_edge, label %use_tail_page.if.then377_crit_edge

use_tail_page.if.then377_crit_edge:               ; preds = %use_tail_page
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then377

use_tail_page.if.end396_crit_edge:                ; preds = %use_tail_page
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end396

if.then377:                                       ; preds = %use_tail_page.if.then377_crit_edge, %land.lhs.true364, %lor.lhs.false362.if.then377_crit_edge
  %tail_page.21245 = phi ptr [ %tail_page.2, %use_tail_page.if.then377_crit_edge ], [ %first_tail_prev.1, %lor.lhs.false362.if.then377_crit_edge ], [ %spec.select1333, %land.lhs.true364 ]
  %last_end_lsn379 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %tail_page.21245, i32 0, i32 4, i32 2
  %227 = ptrtoint ptr %last_end_lsn379 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %last_end_lsn379, align 8
  %229 = call i64 @llvm.bswap.i64(i64 %228)
  call void @__sanitizer_cov_trace_cmp8(i64 %last_ok_lsn.0, i64 %229)
  %cmp380 = icmp ult i64 %last_ok_lsn.0, %229
  br i1 %cmp380, label %if.then382, label %if.else390

if.then382:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #20
  %230 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom384 = zext i32 %231 to i64
  %shr385 = lshr i64 %229, %sh_prom384
  call void @__sanitizer_cov_trace_cmp8(i64 %expected_seq.0, i64 %shr385)
  %cmp386.not = icmp eq i64 %expected_seq.0, %shr385
  %spec.select1058 = select i1 %cmp386.not, ptr %tail_page.21245, ptr null
  br label %if.end396

if.else390:                                       ; preds = %if.then377
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_cmp8(i64 %last_ok_lsn.0, i64 %229)
  %cmp391 = icmp ugt i64 %last_ok_lsn.0, %229
  %spec.select1059 = select i1 %cmp391, ptr null, ptr %tail_page.21245
  br label %if.end396

if.end396:                                        ; preds = %if.else390, %if.then382, %use_tail_page.if.end396_crit_edge, %if.end357.thread.if.end396_crit_edge, %if.end346.if.end396_crit_edge, %if.end233.if.end396_crit_edge
  %tail_page.3 = phi ptr [ null, %use_tail_page.if.end396_crit_edge ], [ %spec.select1058, %if.then382 ], [ %spec.select1059, %if.else390 ], [ null, %if.end346.if.end396_crit_edge ], [ null, %if.end357.thread.if.end396_crit_edge ], [ null, %if.end233.if.end396_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool397.not = icmp eq i32 %call219, 0
  br i1 %tobool397.not, label %if.end396.lor.lhs.false398_crit_edge, label %if.end396.check_tail_crit_edge

if.end396.check_tail_crit_edge:                   ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

if.end396.lor.lhs.false398_crit_edge:             ; preds = %if.end396
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false398

lor.lhs.false398:                                 ; preds = %if.end396.lor.lhs.false398_crit_edge, %land.lhs.true283.lor.lhs.false398_crit_edge, %land.lhs.true269.lor.lhs.false398_crit_edge
  %tail_page.31328 = phi ptr [ %tail_page.3, %if.end396.lor.lhs.false398_crit_edge ], [ null, %land.lhs.true283.lor.lhs.false398_crit_edge ], [ null, %land.lhs.true269.lor.lhs.false398_crit_edge ]
  %page_off1.312381327 = phi i32 [ %page_off1.0, %if.end396.lor.lhs.false398_crit_edge ], [ 0, %land.lhs.true283.lor.lhs.false398_crit_edge ], [ 0, %land.lhs.true269.lor.lhs.false398_crit_edge ]
  %232 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool399.not = icmp eq i8 %233, 0
  br i1 %tobool399.not, label %if.end402, label %lor.lhs.false398.check_tail_crit_edge

lor.lhs.false398.check_tail_crit_edge:            ; preds = %lor.lhs.false398
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

if.end402:                                        ; preds = %lor.lhs.false398
  %234 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %page, align 4
  %lsn404 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %lsn404 to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %lsn404, align 8
  %238 = call i64 @llvm.bswap.i64(i64 %237)
  call void @__sanitizer_cov_trace_cmp8(i64 %last_ok_lsn.0, i64 %238)
  %cmp405.not = icmp eq i64 %last_ok_lsn.0, %238
  br i1 %cmp405.not, label %if.end402.if.end414_crit_edge, label %land.lhs.true407

if.end402.if.end414_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end414

land.lhs.true407:                                 ; preds = %if.end402
  %239 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom409 = zext i32 %240 to i64
  %shr410 = lshr i64 %238, %sh_prom409
  call void @__sanitizer_cov_trace_cmp8(i64 %expected_seq.0, i64 %shr410)
  %cmp411.not = icmp eq i64 %expected_seq.0, %shr410
  br i1 %cmp411.not, label %land.lhs.true407.if.end414_crit_edge, label %land.lhs.true407.check_tail_crit_edge

land.lhs.true407.check_tail_crit_edge:            ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

land.lhs.true407.if.end414_crit_edge:             ; preds = %land.lhs.true407
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end414

if.end414:                                        ; preds = %land.lhs.true407.if.end414_crit_edge, %if.end402.if.end414_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.3, i32 %page_pos.4)
  %cmp415 = icmp eq i32 %page_cnt.3, %page_pos.4
  br i1 %cmp415, label %if.then417, label %if.else433

if.then417:                                       ; preds = %if.end414
  %page_pos418 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 3
  %241 = ptrtoint ptr %page_pos418 to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %page_pos418, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %242)
  %cmp420.not = icmp eq i16 %242, 256
  br i1 %cmp420.not, label %if.then417.if.end446_crit_edge, label %land.lhs.true422

if.then417.if.end446_crit_edge:                   ; preds = %if.then417
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end446

land.lhs.true422:                                 ; preds = %if.then417
  br i1 %reuse_page.0.off0, label %lor.lhs.false424, label %land.lhs.true422.check_tail_crit_edge

land.lhs.true422.check_tail_crit_edge:            ; preds = %land.lhs.true422
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

lor.lhs.false424:                                 ; preds = %land.lhs.true422
  %page_count427 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 2
  %243 = ptrtoint ptr %page_count427 to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %page_count427, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %242, i16 %244)
  %cmp429.not = icmp eq i16 %242, %244
  br i1 %cmp429.not, label %lor.lhs.false424.if.end446_crit_edge, label %lor.lhs.false424.check_tail_crit_edge

lor.lhs.false424.check_tail_crit_edge:            ; preds = %lor.lhs.false424
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

lor.lhs.false424.if.end446_crit_edge:             ; preds = %lor.lhs.false424
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end446

if.else433:                                       ; preds = %if.end414
  %page_count434 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 2
  %245 = ptrtoint ptr %page_count434 to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %page_count434, align 4
  %247 = call i16 @llvm.bswap.i16(i16 %246)
  %conv435 = zext i16 %247 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.3, i32 %conv435)
  %cmp436.not = icmp eq i32 %page_cnt.3, %conv435
  br i1 %cmp436.not, label %lor.lhs.false438, label %if.else433.check_tail_crit_edge

if.else433.check_tail_crit_edge:                  ; preds = %if.else433
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

lor.lhs.false438:                                 ; preds = %if.else433
  %page_pos439 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 3
  %248 = ptrtoint ptr %page_pos439 to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %page_pos439, align 2
  %250 = call i16 @llvm.bswap.i16(i16 %249)
  %conv440 = zext i16 %250 to i32
  %add441 = add i32 %page_pos.4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add441, i32 %conv440)
  %cmp442.not = icmp eq i32 %add441, %conv440
  br i1 %cmp442.not, label %lor.lhs.false438.if.end446_crit_edge, label %lor.lhs.false438.check_tail_crit_edge

lor.lhs.false438.check_tail_crit_edge:            ; preds = %lor.lhs.false438
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_tail

lor.lhs.false438.if.end446_crit_edge:             ; preds = %lor.lhs.false438
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end446

if.end446:                                        ; preds = %lor.lhs.false438.if.end446_crit_edge, %lor.lhs.false424.if.end446_crit_edge, %if.then417.if.end446_crit_edge
  %tobool447.not = icmp eq ptr %tail_page.31328, null
  br i1 %tobool447.not, label %if.end446.if.end454_crit_edge, label %land.lhs.true448

if.end446.if.end454_crit_edge:                    ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end454

land.lhs.true448:                                 ; preds = %if.end446
  %last_end_lsn450 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %tail_page.31328, i32 0, i32 4, i32 2
  %251 = ptrtoint ptr %last_end_lsn450 to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %last_end_lsn450, align 8
  %253 = call i64 @llvm.bswap.i64(i64 %252)
  call void @__sanitizer_cov_trace_cmp8(i64 %253, i64 %238)
  %cmp451 = icmp ugt i64 %253, %238
  br i1 %cmp451, label %land.lhs.true448.if.then502_crit_edge, label %land.lhs.true448.if.end454_crit_edge

land.lhs.true448.if.end454_crit_edge:             ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end454

land.lhs.true448.if.then502_crit_edge:            ; preds = %land.lhs.true448
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then502

if.end454:                                        ; preds = %land.lhs.true448.if.end454_crit_edge, %if.end446.if.end454_crit_edge
  %rflags.i1153 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 1
  %254 = ptrtoint ptr %rflags.i1153 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %rflags.i1153, align 8
  %and.i1154 = and i32 %255, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1154)
  %tobool.i1155.not = icmp eq i32 %and.i1154, 0
  br i1 %tobool.i1155.not, label %if.end454.if.end490_crit_edge, label %if.then456

if.end454.if.end490_crit_edge:                    ; preds = %if.end454
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end490

if.then456:                                       ; preds = %if.end454
  %256 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %256)
  store i64 %expected_seq.0, ptr %seq_num, align 8
  %last_end_lsn459 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 4, i32 2
  %257 = ptrtoint ptr %last_end_lsn459 to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %last_end_lsn459, align 8
  %259 = call i64 @llvm.bswap.i64(i64 %258)
  %260 = ptrtoint ptr %last_lsn319 to i32
  call void @__asan_store8_noabort(i32 %260)
  store i64 %259, ptr %last_lsn319, align 8
  %261 = ptrtoint ptr %last_end_lsn459 to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %last_end_lsn459, align 8
  %263 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ra, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %262, ptr %264, align 8
  %266 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %l_flags, align 4
  %and466 = and i32 %267, -5
  store i32 %and466, ptr %l_flags, align 4
  %268 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %record_header_len, align 4
  %conv468 = zext i16 %269 to i32
  %270 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %page_size.i, align 8
  %record_hdr470 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 4
  %272 = ptrtoint ptr %record_hdr470 to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %record_hdr470, align 8
  %274 = call i16 @llvm.bswap.i16(i16 %273)
  %conv472 = zext i16 %274 to i32
  %sub473 = sub i32 %271, %conv472
  call void @__sanitizer_cov_trace_cmp4(i32 %sub473, i32 %conv468)
  %cmp474.not = icmp ult i32 %sub473, %conv468
  %or478 = or i32 %and466, 16
  %and482 = and i32 %267, -21
  %storemerge1510 = select i1 %cmp474.not, i32 %and482, i32 %or478
  %storemerge1509 = select i1 %cmp474.not, i32 %cond.i, i32 %curpage_off.0
  %275 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %storemerge1510, ptr %l_flags, align 4
  %276 = ptrtoint ptr %next_page332 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %storemerge1509, ptr %next_page332, align 8
  br i1 %wrapped_file.0.off0, label %if.then486, label %if.then456.if.end490_crit_edge

if.then456.if.end490_crit_edge:                   ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end490

if.then486:                                       ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #20
  %277 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %l_flags, align 4
  %or488 = or i32 %278, 1
  store i32 %or488, ptr %l_flags, align 4
  br label %if.end490

if.end490:                                        ; preds = %if.then486, %if.then456.if.end490_crit_edge, %if.end454.if.end490_crit_edge
  %page_count491 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 2
  %279 = ptrtoint ptr %page_count491 to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %page_count491, align 4
  %281 = call i16 @llvm.bswap.i16(i16 %280)
  %conv492 = zext i16 %281 to i32
  %page_pos493 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %235, i32 0, i32 3
  %282 = ptrtoint ptr %page_pos493 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %page_pos493, align 2
  %284 = call i16 @llvm.bswap.i16(i16 %283)
  %conv494 = zext i16 %284 to i32
  br label %next_page_1.sink.split

next_page_1.sink.split:                           ; preds = %if.end490, %if.then339, %if.end313.next_page_1.sink.split_crit_edge
  %last_end_lsn293.sink = phi ptr [ %lsn404, %if.end490 ], [ %last_end_lsn293, %if.then339 ], [ %last_end_lsn293, %if.end313.next_page_1.sink.split_crit_edge ]
  %page_cnt.4.ph = phi i32 [ %conv492, %if.end490 ], [ %page_cnt.3, %if.then339 ], [ %page_cnt.3, %if.end313.next_page_1.sink.split_crit_edge ]
  %page_pos.5.ph = phi i32 [ %conv494, %if.end490 ], [ %page_pos.4, %if.then339 ], [ %page_pos.4, %if.end313.next_page_1.sink.split_crit_edge ]
  %page_off1.4.ph = phi i32 [ %page_off1.312381327, %if.end490 ], [ %page_off1.1, %if.then339 ], [ %page_off1.1, %if.end313.next_page_1.sink.split_crit_edge ]
  %285 = ptrtoint ptr %last_end_lsn293.sink to i32
  call void @__asan_load8_noabort(i32 %285)
  %286 = load i64, ptr %last_end_lsn293.sink, align 8
  %287 = call i64 @llvm.bswap.i64(i64 %286)
  br label %next_page_1

next_page_1:                                      ; preds = %next_page_1.sink.split, %if.end310.next_page_1_crit_edge
  %page_cnt.4 = phi i32 [ %page_cnt.3, %if.end310.next_page_1_crit_edge ], [ %page_cnt.4.ph, %next_page_1.sink.split ]
  %page_pos.5 = phi i32 [ %page_pos.4, %if.end310.next_page_1_crit_edge ], [ %page_pos.5.ph, %next_page_1.sink.split ]
  %page_off1.4 = phi i32 [ %page_off1.1, %if.end310.next_page_1_crit_edge ], [ %page_off1.4.ph, %next_page_1.sink.split ]
  %last_ok_lsn.3 = phi i64 [ %184, %if.end310.next_page_1_crit_edge ], [ %287, %next_page_1.sink.split ]
  %spec.select1060 = select i1 %cmp222, i1 true, i1 %wrapped_file.0.off0
  %add499 = zext i1 %cmp222 to i64
  %spec.select1061 = add i64 %expected_seq.0, %add499
  %288 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %page, align 4
  call void @kfree(ptr noundef %289) #18
  %290 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %page, align 4
  br label %next_page218

check_tail:                                       ; preds = %lor.lhs.false438.check_tail_crit_edge, %if.else433.check_tail_crit_edge, %lor.lhs.false424.check_tail_crit_edge, %land.lhs.true422.check_tail_crit_edge, %land.lhs.true407.check_tail_crit_edge, %lor.lhs.false398.check_tail_crit_edge, %if.end396.check_tail_crit_edge
  %page_pos.4.lcssa1461 = phi i32 [ %page_pos.4, %if.else433.check_tail_crit_edge ], [ %page_pos.4, %lor.lhs.false438.check_tail_crit_edge ], [ %page_cnt.3, %land.lhs.true422.check_tail_crit_edge ], [ %page_cnt.3, %lor.lhs.false424.check_tail_crit_edge ], [ %page_pos.4, %land.lhs.true407.check_tail_crit_edge ], [ %page_pos.4, %if.end396.check_tail_crit_edge ], [ %page_pos.4, %lor.lhs.false398.check_tail_crit_edge ]
  %page_off1.5 = phi i32 [ %page_off1.312381327, %if.else433.check_tail_crit_edge ], [ %page_off1.312381327, %lor.lhs.false438.check_tail_crit_edge ], [ %page_off1.312381327, %land.lhs.true422.check_tail_crit_edge ], [ %page_off1.312381327, %lor.lhs.false424.check_tail_crit_edge ], [ %page_off1.312381327, %land.lhs.true407.check_tail_crit_edge ], [ %page_off1.0, %if.end396.check_tail_crit_edge ], [ %page_off1.312381327, %lor.lhs.false398.check_tail_crit_edge ]
  %tail_page.4 = phi ptr [ %tail_page.31328, %if.else433.check_tail_crit_edge ], [ %tail_page.31328, %lor.lhs.false438.check_tail_crit_edge ], [ %tail_page.31328, %land.lhs.true422.check_tail_crit_edge ], [ %tail_page.31328, %lor.lhs.false424.check_tail_crit_edge ], [ %tail_page.31328, %land.lhs.true407.check_tail_crit_edge ], [ %tail_page.3, %if.end396.check_tail_crit_edge ], [ %tail_page.31328, %lor.lhs.false398.check_tail_crit_edge ]
  %tobool501.not = icmp eq ptr %tail_page.4, null
  br i1 %tobool501.not, label %check_tail.if.end536.thread_crit_edge, label %check_tail.if.then502_crit_edge

check_tail.if.then502_crit_edge:                  ; preds = %check_tail
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then502

check_tail.if.end536.thread_crit_edge:            ; preds = %check_tail
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end536.thread

if.then502:                                       ; preds = %check_tail.if.then502_crit_edge, %land.lhs.true448.if.then502_crit_edge
  %page_pos.41464 = phi i32 [ %page_pos.4.lcssa1461, %check_tail.if.then502_crit_edge ], [ %page_pos.4, %land.lhs.true448.if.then502_crit_edge ]
  %tail_page.41261 = phi ptr [ %tail_page.4, %check_tail.if.then502_crit_edge ], [ %tail_page.31328, %land.lhs.true448.if.then502_crit_edge ]
  %page_off1.51260 = phi i32 [ %page_off1.5, %check_tail.if.then502_crit_edge ], [ %page_off1.312381327, %land.lhs.true448.if.then502_crit_edge ]
  %replace_page.0.off01259 = phi i1 [ false, %check_tail.if.then502_crit_edge ], [ true, %land.lhs.true448.if.then502_crit_edge ]
  %291 = ptrtoint ptr %seq_num to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %expected_seq.0, ptr %seq_num, align 8
  %record_hdr504 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %tail_page.41261, i32 0, i32 4
  %last_end_lsn505 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %tail_page.41261, i32 0, i32 4, i32 2
  %292 = ptrtoint ptr %last_end_lsn505 to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %last_end_lsn505, align 8
  %294 = call i64 @llvm.bswap.i64(i64 %293)
  %295 = ptrtoint ptr %last_lsn319 to i32
  call void @__asan_store8_noabort(i32 %295)
  store i64 %294, ptr %last_lsn319, align 8
  %296 = ptrtoint ptr %last_end_lsn505 to i32
  call void @__asan_load8_noabort(i32 %296)
  %297 = load i64, ptr %last_end_lsn505, align 8
  %298 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %ra, align 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store8_noabort(i32 %300)
  store i64 %297, ptr %299, align 8
  %301 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %l_flags, align 4
  %and512 = and i32 %302, -5
  store i32 %and512, ptr %l_flags, align 4
  %303 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %page_size.i, align 8
  %305 = ptrtoint ptr %record_hdr504 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %record_hdr504, align 8
  %307 = call i16 @llvm.bswap.i16(i16 %306)
  %conv516 = zext i16 %307 to i32
  %sub517 = sub i32 %304, %conv516
  %308 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %record_header_len, align 4
  %conv519 = zext i16 %309 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub517, i32 %conv519)
  %cmp520.not = icmp ult i32 %sub517, %conv519
  %or524 = or i32 %and512, 16
  %and528 = and i32 %302, -21
  %storemerge = select i1 %cmp520.not, i32 %and528, i32 %or524
  %curpage_off.01459.sink = select i1 %cmp520.not, i32 %cond.i, i32 %curpage_off.0
  %310 = ptrtoint ptr %l_flags to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %storemerge, ptr %l_flags, align 4
  %311 = ptrtoint ptr %next_page332 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %curpage_off.01459.sink, ptr %next_page332, align 8
  br i1 %cmp222, label %if.then532, label %if.end536

if.then532:                                       ; preds = %if.then502
  %312 = ptrtoint ptr %l_flags to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %l_flags, align 4
  %or534 = or i32 %313, 1
  store i32 %or534, ptr %l_flags, align 4
  %add5391279 = add i64 %expected_seq.0, 1
  br i1 %replace_page.0.off01259, label %if.then532.check_valid_crit_edge, label %if.then532.lor.lhs.false543_crit_edge

if.then532.lor.lhs.false543_crit_edge:            ; preds = %if.then532
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false543

if.then532.check_valid_crit_edge:                 ; preds = %if.then532
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_valid

if.end536.thread:                                 ; preds = %check_tail.if.end536.thread_crit_edge, %land.lhs.true296.if.end536.thread_crit_edge
  %page_pos.41465 = phi i32 [ %page_pos.4.lcssa1461, %check_tail.if.end536.thread_crit_edge ], [ %page_pos.4, %land.lhs.true296.if.end536.thread_crit_edge ]
  %page_off1.51251.ph = phi i32 [ %page_off1.5, %check_tail.if.end536.thread_crit_edge ], [ %page_off1.1, %land.lhs.true296.if.end536.thread_crit_edge ]
  %add5391267 = zext i1 %cmp222 to i64
  %spec.select10621268 = add i64 %expected_seq.0, %add5391267
  br label %lor.lhs.false543

if.end536:                                        ; preds = %if.then502
  br i1 %replace_page.0.off01259, label %if.end536.check_valid_crit_edge, label %if.end536.lor.lhs.false543_crit_edge

if.end536.lor.lhs.false543_crit_edge:             ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false543

if.end536.check_valid_crit_edge:                  ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_valid

lor.lhs.false543:                                 ; preds = %if.end536.lor.lhs.false543_crit_edge, %if.end536.thread, %if.then532.lor.lhs.false543_crit_edge
  %cmp2221474 = phi i1 [ %cmp222, %if.end536.thread ], [ false, %if.end536.lor.lhs.false543_crit_edge ], [ true, %if.then532.lor.lhs.false543_crit_edge ]
  %page_pos.41463 = phi i32 [ %page_pos.41465, %if.end536.thread ], [ %page_pos.41464, %if.end536.lor.lhs.false543_crit_edge ], [ %page_pos.41464, %if.then532.lor.lhs.false543_crit_edge ]
  %spec.select10621278 = phi i64 [ %spec.select10621268, %if.end536.thread ], [ %expected_seq.0, %if.end536.lor.lhs.false543_crit_edge ], [ %add5391279, %if.then532.lor.lhs.false543_crit_edge ]
  %page_off1.512511277 = phi i32 [ %page_off1.51251.ph, %if.end536.thread ], [ %page_off1.51260, %if.end536.lor.lhs.false543_crit_edge ], [ %page_off1.51260, %if.then532.lor.lhs.false543_crit_edge ]
  %tail_page.412521274 = phi ptr [ null, %if.end536.thread ], [ %tail_page.41261, %if.end536.lor.lhs.false543_crit_edge ], [ %tail_page.41261, %if.then532.lor.lhs.false543_crit_edge ]
  %tobool501.not12531271 = phi i1 [ true, %if.end536.thread ], [ false, %if.end536.lor.lhs.false543_crit_edge ], [ false, %if.then532.lor.lhs.false543_crit_edge ]
  %314 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %ra, align 4
  %flags = getelementptr inbounds %struct.RESTART_AREA, ptr %315, i32 0, i32 3
  %316 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %flags, align 2
  %318 = and i16 %317, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %318)
  %tobool547.not = icmp eq i16 %318, 0
  br i1 %tobool547.not, label %if.end549, label %lor.lhs.false543.check_valid_crit_edge

lor.lhs.false543.check_valid_crit_edge:           ; preds = %lor.lhs.false543
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_valid

if.end549:                                        ; preds = %lor.lhs.false543
  call void @__sanitizer_cov_trace_cmp4(i32 %page_pos.41463, i32 %page_cnt.3)
  %cmp550.not = icmp eq i32 %page_pos.41463, %page_cnt.3
  br i1 %cmp550.not, label %if.end553, label %if.end549.check_valid_crit_edge

if.end549.check_valid_crit_edge:                  ; preds = %if.end549
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_valid

if.end553:                                        ; preds = %if.end549
  br i1 %cmp2221474, label %if.end553.check_valid_crit_edge, label %if.end553.next_test_page_crit_edge

if.end553.next_test_page_crit_edge:               ; preds = %if.end553
  br label %next_test_page

if.end553.check_valid_crit_edge:                  ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_valid

next_test_page:                                   ; preds = %next_page_off.exit1166.next_test_page_crit_edge, %if.end553.next_test_page_crit_edge
  %part_io_count.0 = phi i32 [ %add591, %next_page_off.exit1166.next_test_page_crit_edge ], [ 0, %if.end553.next_test_page_crit_edge ]
  %nextpage_off.0 = phi i32 [ %cond.i1165, %next_page_off.exit1166.next_test_page_crit_edge ], [ %cond.i, %if.end553.next_test_page_crit_edge ]
  %cur_pos.0 = phi i16 [ %add589, %next_page_off.exit1166.next_test_page_crit_edge ], [ 2, %if.end553.next_test_page_crit_edge ]
  %319 = ptrtoint ptr %tst_page to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %tst_page, align 4
  call void @kfree(ptr noundef %320) #18
  %321 = ptrtoint ptr %tst_page to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr null, ptr %tst_page, align 4
  %call557 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %nextpage_off.0, ptr noundef nonnull %tst_page, ptr noundef nonnull %usa_error)
  %322 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool558.not = icmp eq i8 %323, 0
  br i1 %tobool558.not, label %if.end560, label %next_test_page.file_is_valid_crit_edge

next_test_page.file_is_valid_crit_edge:           ; preds = %next_test_page
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

if.end560:                                        ; preds = %next_test_page
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call557)
  %tobool561.not = icmp eq i32 %call557, 0
  br i1 %tobool561.not, label %if.end563, label %next_test_page_1

if.end563:                                        ; preds = %if.end560
  %324 = ptrtoint ptr %tst_page to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %tst_page, align 4
  %page_pos564 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %325, i32 0, i32 3
  %326 = ptrtoint ptr %page_pos564 to i32
  call void @__asan_load2_noabort(i32 %326)
  %327 = load i16, ptr %page_pos564, align 2
  %328 = call i16 @llvm.bswap.i16(i16 %327)
  call void @__sanitizer_cov_trace_cmp2(i16 %328, i16 %cur_pos.0)
  %cmp567 = icmp eq i16 %328, %cur_pos.0
  br i1 %cmp567, label %land.lhs.true569, label %if.end563.file_is_valid_crit_edge

if.end563.file_is_valid_crit_edge:                ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

land.lhs.true569:                                 ; preds = %if.end563
  %call570 = call fastcc zeroext i1 @check_subseq_log_page(ptr noundef %log, ptr noundef %325, i32 noundef %nextpage_off.0, i64 noundef %spec.select10621278)
  br i1 %call570, label %if.then572, label %land.lhs.true569.file_is_valid_crit_edge

land.lhs.true569.file_is_valid_crit_edge:         ; preds = %land.lhs.true569
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

if.then572:                                       ; preds = %land.lhs.true569
  call void @__sanitizer_cov_trace_pc() #20
  %page_count573 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %325, i32 0, i32 2
  %329 = ptrtoint ptr %page_count573 to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %page_count573, align 4
  %331 = call i16 @llvm.bswap.i16(i16 %330)
  %conv574 = zext i16 %331 to i32
  %add575 = add nuw nsw i32 %conv574, 1
  %conv577 = zext i16 %cur_pos.0 to i32
  br label %check_valid

next_test_page_1:                                 ; preds = %if.end560
  %332 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %sys_page_mask.i, align 4
  %neg.i1157 = xor i32 %333, -1
  %and.i1158 = and i32 %curpage_off.0, %neg.i1157
  %334 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %page_size.i, align 8
  %add.i1160 = add i32 %and.i1158, %335
  %336 = ptrtoint ptr %l_size.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %l_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i1160, i32 %337)
  %cmp.not.i1162 = icmp ult i32 %add.i1160, %337
  br i1 %cmp.not.i1162, label %next_test_page_1.next_page_off.exit1166_crit_edge, label %cond.true.i1164

next_test_page_1.next_page_off.exit1166_crit_edge: ; preds = %next_test_page_1
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit1166

cond.true.i1164:                                  ; preds = %next_test_page_1
  call void @__sanitizer_cov_trace_pc() #20
  %338 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %first_page202, align 4
  br label %next_page_off.exit1166

next_page_off.exit1166:                           ; preds = %cond.true.i1164, %next_test_page_1.next_page_off.exit1166_crit_edge
  %cond.i1165 = phi i32 [ %339, %cond.true.i1164 ], [ %add.i1160, %next_test_page_1.next_page_off.exit1166_crit_edge ]
  %340 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %first_page202, align 4
  %cmp581 = icmp eq i32 %cond.i1165, %341
  %add589 = add i16 %cur_pos.0, 1
  %add591 = add i32 %part_io_count.0, 1
  br i1 %cmp581, label %check_valid.loopexit, label %next_page_off.exit1166.next_test_page_crit_edge

next_page_off.exit1166.next_test_page_crit_edge:  ; preds = %next_page_off.exit1166
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_test_page

check_valid.loopexit:                             ; preds = %next_page_off.exit1166
  call void @__sanitizer_cov_trace_pc() #20
  %add586.le = add i64 %spec.select10621278, 1
  br label %check_valid

check_valid:                                      ; preds = %check_valid.loopexit, %if.then572, %if.end553.check_valid_crit_edge, %if.end549.check_valid_crit_edge, %lor.lhs.false543.check_valid_crit_edge, %if.end536.check_valid_crit_edge, %if.then532.check_valid_crit_edge
  %page_off1.512511276 = phi i32 [ %page_off1.512511277, %if.end549.check_valid_crit_edge ], [ %page_off1.512511277, %if.then572 ], [ %page_off1.512511277, %lor.lhs.false543.check_valid_crit_edge ], [ %page_off1.51260, %if.end536.check_valid_crit_edge ], [ %page_off1.512511277, %if.end553.check_valid_crit_edge ], [ %page_off1.51260, %if.then532.check_valid_crit_edge ], [ %page_off1.512511277, %check_valid.loopexit ]
  %tail_page.412521273 = phi ptr [ %tail_page.412521274, %if.end549.check_valid_crit_edge ], [ %tail_page.412521274, %if.then572 ], [ %tail_page.412521274, %lor.lhs.false543.check_valid_crit_edge ], [ %tail_page.41261, %if.end536.check_valid_crit_edge ], [ %tail_page.412521274, %if.end553.check_valid_crit_edge ], [ %tail_page.41261, %if.then532.check_valid_crit_edge ], [ %tail_page.412521274, %check_valid.loopexit ]
  %tobool501.not12531270 = phi i1 [ %tobool501.not12531271, %if.end549.check_valid_crit_edge ], [ %tobool501.not12531271, %if.then572 ], [ %tobool501.not12531271, %lor.lhs.false543.check_valid_crit_edge ], [ false, %if.end536.check_valid_crit_edge ], [ %tobool501.not12531271, %if.end553.check_valid_crit_edge ], [ false, %if.then532.check_valid_crit_edge ], [ %tobool501.not12531271, %check_valid.loopexit ]
  %page_cnt.7 = phi i32 [ %page_cnt.3, %if.end549.check_valid_crit_edge ], [ %add575, %if.then572 ], [ 2, %lor.lhs.false543.check_valid_crit_edge ], [ 2, %if.end536.check_valid_crit_edge ], [ 2, %if.end553.check_valid_crit_edge ], [ 2, %if.then532.check_valid_crit_edge ], [ 2, %check_valid.loopexit ]
  %page_pos.8 = phi i32 [ %page_pos.41463, %if.end549.check_valid_crit_edge ], [ %conv577, %if.then572 ], [ 1, %lor.lhs.false543.check_valid_crit_edge ], [ 1, %if.end536.check_valid_crit_edge ], [ 1, %if.end553.check_valid_crit_edge ], [ 1, %if.then532.check_valid_crit_edge ], [ 1, %check_valid.loopexit ]
  %part_io_count.1 = phi i32 [ 0, %if.end549.check_valid_crit_edge ], [ %part_io_count.0, %if.then572 ], [ 0, %lor.lhs.false543.check_valid_crit_edge ], [ 0, %if.end536.check_valid_crit_edge ], [ 0, %if.end553.check_valid_crit_edge ], [ 0, %if.then532.check_valid_crit_edge ], [ %add591, %check_valid.loopexit ]
  %nextpage_off.1 = phi i32 [ %cond.i, %if.end549.check_valid_crit_edge ], [ %nextpage_off.0, %if.then572 ], [ %cond.i, %lor.lhs.false543.check_valid_crit_edge ], [ %cond.i, %if.end536.check_valid_crit_edge ], [ %cond.i, %if.end553.check_valid_crit_edge ], [ %cond.i, %if.then532.check_valid_crit_edge ], [ %cond.i1165, %check_valid.loopexit ]
  %expected_seq.5 = phi i64 [ %spec.select10621278, %if.end549.check_valid_crit_edge ], [ %spec.select10621278, %if.then572 ], [ %spec.select10621278, %lor.lhs.false543.check_valid_crit_edge ], [ %expected_seq.0, %if.end536.check_valid_crit_edge ], [ %spec.select10621278, %if.end553.check_valid_crit_edge ], [ %add5391279, %if.then532.check_valid_crit_edge ], [ %add586.le, %check_valid.loopexit ]
  %342 = xor i32 %page_pos.8, -1
  %sub596 = add i32 %page_cnt.7, %342
  %add597 = add i32 %part_io_count.1, %sub596
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub596)
  %tobool598.not1429 = icmp eq i32 %sub596, 0
  br i1 %tobool598.not1429, label %check_valid.while.end_crit_edge, label %while.body.lr.ph

check_valid.while.end_crit_edge:                  ; preds = %check_valid
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %check_valid
  %343 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %sys_page_mask.i, align 4
  %neg.i1168 = xor i32 %344, -1
  %and.i1169 = and i32 %curpage_off.0, %neg.i1168
  %345 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %page_size.i, align 8
  %add.i1171 = add i32 %and.i1169, %346
  %347 = ptrtoint ptr %l_size.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %l_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i1171, i32 %348)
  %cmp.not.i1173 = icmp ult i32 %add.i1171, %348
  %349 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %first_page202, align 4
  br label %while.body

while.body:                                       ; preds = %next_page_off.exit1177.while.body_crit_edge, %while.body.lr.ph
  %dec1431.in = phi i32 [ %sub596, %while.body.lr.ph ], [ %dec1431, %next_page_off.exit1177.while.body_crit_edge ]
  %expected_seq.61430 = phi i64 [ %expected_seq.5, %while.body.lr.ph ], [ %spec.select1063, %next_page_off.exit1177.while.body_crit_edge ]
  %dec1431 = add i32 %dec1431.in, -1
  br i1 %cmp.not.i1173, label %while.body.next_page_off.exit1177_crit_edge, label %cond.true.i1175

while.body.next_page_off.exit1177_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit1177

cond.true.i1175:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %351 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %first_page202, align 4
  br label %next_page_off.exit1177

next_page_off.exit1177:                           ; preds = %cond.true.i1175, %while.body.next_page_off.exit1177_crit_edge
  %cond.i1176 = phi i32 [ %352, %cond.true.i1175 ], [ %add.i1171, %while.body.next_page_off.exit1177_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i1176, i32 %350)
  %cmp601 = icmp eq i32 %cond.i1176, %350
  %add606 = zext i1 %cmp601 to i64
  %spec.select1063 = add i64 %expected_seq.61430, %add606
  %tobool598.not = icmp eq i32 %dec1431, 0
  br i1 %tobool598.not, label %next_page_off.exit1177.while.end_crit_edge, label %next_page_off.exit1177.while.body_crit_edge

next_page_off.exit1177.while.body_crit_edge:      ; preds = %next_page_off.exit1177
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

next_page_off.exit1177.while.end_crit_edge:       ; preds = %next_page_off.exit1177
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %next_page_off.exit1177.while.end_crit_edge, %check_valid.while.end_crit_edge
  %nextpage_off.2.lcssa = phi i32 [ %nextpage_off.1, %check_valid.while.end_crit_edge ], [ %cond.i1176, %next_page_off.exit1177.while.end_crit_edge ]
  %expected_seq.6.lcssa = phi i64 [ %expected_seq.5, %check_valid.while.end_crit_edge ], [ %spec.select1063, %next_page_off.exit1177.while.end_crit_edge ]
  %353 = ptrtoint ptr %tst_page to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %tst_page, align 4
  call void @kfree(ptr noundef %354) #18
  %355 = ptrtoint ptr %tst_page to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr null, ptr %tst_page, align 4
  %call608 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %nextpage_off.2.lcssa, ptr noundef nonnull %tst_page, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call608)
  %tobool609.not = icmp eq i32 %call608, 0
  br i1 %tobool609.not, label %land.lhs.true610, label %while.end.file_is_valid_crit_edge

while.end.file_is_valid_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

land.lhs.true610:                                 ; preds = %while.end
  %356 = ptrtoint ptr %usa_error to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %usa_error, align 1, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %357)
  %tobool611.not = icmp eq i8 %357, 0
  br i1 %tobool611.not, label %land.lhs.true612, label %land.lhs.true610.file_is_valid_crit_edge

land.lhs.true610.file_is_valid_crit_edge:         ; preds = %land.lhs.true610
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

land.lhs.true612:                                 ; preds = %land.lhs.true610
  %358 = ptrtoint ptr %tst_page to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %tst_page, align 4
  %lsn2.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %359, i32 0, i32 3
  %360 = ptrtoint ptr %lsn2.i to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %lsn2.i, align 8
  %362 = call i64 @llvm.bswap.i64(i64 %361) #18
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %359, align 8
  %365 = zext i32 %364 to i64
  call void @__sanitizer_cov_trace_switch(i64 %365, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %364, label %if.end.i1181 [
    i32 -1, label %land.lhs.true612.file_is_valid_crit_edge
    i32 0, label %land.lhs.true612.file_is_valid_crit_edge1774
  ]

land.lhs.true612.file_is_valid_crit_edge1774:     ; preds = %land.lhs.true612
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

land.lhs.true612.file_is_valid_crit_edge:         ; preds = %land.lhs.true612
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

if.end.i1181:                                     ; preds = %land.lhs.true612
  %366 = ptrtoint ptr %file_data_bits.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %file_data_bits.i, align 4
  %sh_prom.i1179 = zext i32 %367 to i64
  %shr.i1180 = lshr i64 %362, %sh_prom.i1179
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i1180, i64 %expected_seq.6.lcssa)
  %cmp4.not.i = icmp ult i64 %shr.i1180, %expected_seq.6.lcssa
  br i1 %cmp4.not.i, label %lor.rhs.i, label %if.end.i1181.out_crit_edge

if.end.i1181.out_crit_edge:                       ; preds = %if.end.i1181
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

lor.rhs.i:                                        ; preds = %if.end.i1181
  %sub.i1182 = add i64 %expected_seq.6.lcssa, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i1180, i64 %sub.i1182)
  %cmp5.i = icmp eq i64 %shr.i1180, %sub.i1182
  br i1 %cmp5.i, label %land.lhs.true.i1184, label %lor.rhs.i.file_is_valid_crit_edge

lor.rhs.i.file_is_valid_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

land.lhs.true.i1184:                              ; preds = %lor.rhs.i
  %368 = ptrtoint ptr %first_page202 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %first_page202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %369, i32 %nextpage_off.2.lcssa)
  %cmp6.i = icmp eq i32 %369, %nextpage_off.2.lcssa
  br i1 %cmp6.i, label %check_subseq_log_page.exit, label %land.lhs.true.i1184.file_is_valid_crit_edge

land.lhs.true.i1184.file_is_valid_crit_edge:      ; preds = %land.lhs.true.i1184
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

check_subseq_log_page.exit:                       ; preds = %land.lhs.true.i1184
  %370 = ptrtoint ptr %seq_num_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %seq_num_bits.i.i, align 8
  %sh_prom.i.i1186 = zext i32 %371 to i64
  %shl.i.i1187 = shl i64 %362, %sh_prom.i.i1186
  %sub.i.i1188 = add i32 %371, -3
  %sh_prom2.i.i1189 = zext i32 %sub.i.i1188 to i64
  %shr.i.i1190 = lshr i64 %shl.i.i1187, %sh_prom2.i.i1189
  %conv.i.i1191 = trunc i64 %shr.i.i1190 to i32
  %372 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %page_mask.i, align 4
  %neg.i1193 = xor i32 %373, -1
  %and.i1194 = and i32 %conv.i.i1191, %neg.i1193
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i1194, i32 %nextpage_off.2.lcssa)
  %cmp7.i.not = icmp eq i32 %and.i1194, %nextpage_off.2.lcssa
  br i1 %cmp7.i.not, label %check_subseq_log_page.exit.file_is_valid_crit_edge, label %check_subseq_log_page.exit.out_crit_edge

check_subseq_log_page.exit.out_crit_edge:         ; preds = %check_subseq_log_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_subseq_log_page.exit.file_is_valid_crit_edge: ; preds = %check_subseq_log_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %file_is_valid

file_is_valid:                                    ; preds = %check_subseq_log_page.exit.file_is_valid_crit_edge, %land.lhs.true.i1184.file_is_valid_crit_edge, %lor.rhs.i.file_is_valid_crit_edge, %land.lhs.true612.file_is_valid_crit_edge, %land.lhs.true612.file_is_valid_crit_edge1774, %land.lhs.true610.file_is_valid_crit_edge, %while.end.file_is_valid_crit_edge, %land.lhs.true569.file_is_valid_crit_edge, %if.end563.file_is_valid_crit_edge, %next_test_page.file_is_valid_crit_edge
  %page_off1.512511275 = phi i32 [ %page_off1.512511276, %while.end.file_is_valid_crit_edge ], [ %page_off1.512511276, %land.lhs.true610.file_is_valid_crit_edge ], [ %page_off1.512511276, %check_subseq_log_page.exit.file_is_valid_crit_edge ], [ %page_off1.512511277, %land.lhs.true569.file_is_valid_crit_edge ], [ %page_off1.512511277, %if.end563.file_is_valid_crit_edge ], [ %page_off1.512511276, %land.lhs.true612.file_is_valid_crit_edge ], [ %page_off1.512511276, %land.lhs.true612.file_is_valid_crit_edge1774 ], [ %page_off1.512511276, %land.lhs.true.i1184.file_is_valid_crit_edge ], [ %page_off1.512511276, %lor.rhs.i.file_is_valid_crit_edge ], [ %page_off1.512511277, %next_test_page.file_is_valid_crit_edge ]
  %tail_page.412521272 = phi ptr [ %tail_page.412521273, %while.end.file_is_valid_crit_edge ], [ %tail_page.412521273, %land.lhs.true610.file_is_valid_crit_edge ], [ %tail_page.412521273, %check_subseq_log_page.exit.file_is_valid_crit_edge ], [ %tail_page.412521274, %land.lhs.true569.file_is_valid_crit_edge ], [ %tail_page.412521274, %if.end563.file_is_valid_crit_edge ], [ %tail_page.412521273, %land.lhs.true612.file_is_valid_crit_edge ], [ %tail_page.412521273, %land.lhs.true612.file_is_valid_crit_edge1774 ], [ %tail_page.412521273, %land.lhs.true.i1184.file_is_valid_crit_edge ], [ %tail_page.412521273, %lor.rhs.i.file_is_valid_crit_edge ], [ %tail_page.412521274, %next_test_page.file_is_valid_crit_edge ]
  %tobool501.not12531269 = phi i1 [ %tobool501.not12531270, %while.end.file_is_valid_crit_edge ], [ %tobool501.not12531270, %land.lhs.true610.file_is_valid_crit_edge ], [ %tobool501.not12531270, %check_subseq_log_page.exit.file_is_valid_crit_edge ], [ %tobool501.not12531271, %land.lhs.true569.file_is_valid_crit_edge ], [ %tobool501.not12531271, %if.end563.file_is_valid_crit_edge ], [ %tobool501.not12531270, %land.lhs.true612.file_is_valid_crit_edge ], [ %tobool501.not12531270, %land.lhs.true612.file_is_valid_crit_edge1774 ], [ %tobool501.not12531270, %land.lhs.true.i1184.file_is_valid_crit_edge ], [ %tobool501.not12531270, %lor.rhs.i.file_is_valid_crit_edge ], [ %tobool501.not12531271, %next_test_page.file_is_valid_crit_edge ]
  %err.0 = phi i32 [ %call608, %while.end.file_is_valid_crit_edge ], [ 0, %land.lhs.true610.file_is_valid_crit_edge ], [ 0, %check_subseq_log_page.exit.file_is_valid_crit_edge ], [ 0, %land.lhs.true569.file_is_valid_crit_edge ], [ 0, %if.end563.file_is_valid_crit_edge ], [ 0, %land.lhs.true612.file_is_valid_crit_edge ], [ 0, %land.lhs.true612.file_is_valid_crit_edge1774 ], [ 0, %land.lhs.true.i1184.file_is_valid_crit_edge ], [ 0, %lor.rhs.i.file_is_valid_crit_edge ], [ %call557, %next_test_page.file_is_valid_crit_edge ]
  %part_io_count.2 = phi i32 [ %add597, %while.end.file_is_valid_crit_edge ], [ %add597, %land.lhs.true610.file_is_valid_crit_edge ], [ %add597, %check_subseq_log_page.exit.file_is_valid_crit_edge ], [ %part_io_count.0, %land.lhs.true569.file_is_valid_crit_edge ], [ %part_io_count.0, %if.end563.file_is_valid_crit_edge ], [ %add597, %land.lhs.true612.file_is_valid_crit_edge ], [ %add597, %land.lhs.true612.file_is_valid_crit_edge1774 ], [ %add597, %land.lhs.true.i1184.file_is_valid_crit_edge ], [ %add597, %lor.rhs.i.file_is_valid_crit_edge ], [ %part_io_count.0, %next_test_page.file_is_valid_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_off1.512511275)
  %tobool617.not = icmp eq i32 %page_off1.512511275, 0
  %brmerge.demorgan = and i1 %tobool617.not, %tobool501.not12531269
  br i1 %brmerge.demorgan, label %file_is_valid.if.end696_crit_edge, label %if.then620

file_is_valid.if.end696_crit_edge:                ; preds = %file_is_valid
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end696

if.then620:                                       ; preds = %file_is_valid
  %374 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %log, align 8
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %375, i32 0, i32 1
  %376 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %sbi, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %379, i32 0, i32 10
  %380 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %s_flags.i, align 4
  %and.i1196 = and i32 %381, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1196)
  %tobool.i1197.not = icmp eq i32 %and.i1196, 0
  br i1 %tobool.i1197.not, label %if.end623, label %if.then620.out_crit_edge

if.then620.out_crit_edge:                         ; preds = %if.then620
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end623:                                        ; preds = %if.then620
  br i1 %tobool617.not, label %if.end623.while.body640.preheader_crit_edge, label %if.end636

if.end623.while.body640.preheader_crit_edge:      ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body640.preheader

if.end636:                                        ; preds = %if.end623
  %sub626 = sub i32 %page_off1.512511275, %page_off.3
  %add.ptr627 = getelementptr i8, ptr %page_bufs.0, i32 %sub626
  %382 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %page_size.i, align 8
  %div = udiv i32 %sub626, %383
  %sub633 = sext i1 %tobool501.not12531269 to i32
  %sub630 = add i32 %tails.2, %sub633
  %spec.select1064 = sub i32 %sub630, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1064)
  %tobool639.not1434 = icmp eq i32 %spec.select1064, 0
  br i1 %tobool639.not1434, label %if.end636.if.end696_crit_edge, label %if.end636.while.body640.preheader_crit_edge

if.end636.while.body640.preheader_crit_edge:      ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body640.preheader

if.end636.if.end696_crit_edge:                    ; preds = %if.end636
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end696

while.body640.preheader:                          ; preds = %if.end636.while.body640.preheader_crit_edge, %if.end623.while.body640.preheader_crit_edge
  %dec6381439.in.ph = phi i32 [ 1, %if.end623.while.body640.preheader_crit_edge ], [ %spec.select1064, %if.end636.while.body640.preheader_crit_edge ]
  %tmp_page.11437.ph = phi ptr [ %tail_page.412521272, %if.end623.while.body640.preheader_crit_edge ], [ %add.ptr627, %if.end636.while.body640.preheader_crit_edge ]
  br label %while.body640

while.body640:                                    ; preds = %cleanup690.while.body640_crit_edge, %while.body640.preheader
  %dec6381439.in = phi i32 [ %dec6381439, %cleanup690.while.body640_crit_edge ], [ %dec6381439.in.ph, %while.body640.preheader ]
  %tmp_page.11437 = phi ptr [ %add.ptr689, %cleanup690.while.body640_crit_edge ], [ %tmp_page.11437.ph, %while.body640.preheader ]
  %part_io_count.31436 = phi i32 [ %part_io_count.4, %cleanup690.while.body640_crit_edge ], [ %part_io_count.2, %while.body640.preheader ]
  %second_off.21435 = phi i32 [ %second_off.3, %cleanup690.while.body640_crit_edge ], [ %cond.i, %while.body640.preheader ]
  %dec6381439 = add i32 %dec6381439.in, -1
  %384 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %384)
  %385 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %385)
  %cmp.i1199 = icmp slt i16 %385, 2
  br i1 %cmp.i1199, label %if.then.i1202, label %if.end.i1204

if.then.i1202:                                    ; preds = %while.body640
  call void @__sanitizer_cov_trace_pc() #20
  %lsn.i1200 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %tmp_page.11437, i32 0, i32 3
  %386 = ptrtoint ptr %lsn.i1200 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %lsn.i1200, align 8
  %388 = call i64 @llvm.bswap.i64(i64 %387) #18
  %conv2.i1201 = trunc i64 %388 to i32
  br label %hdr_file_off.exit1206

if.end.i1204:                                     ; preds = %while.body640
  call void @__sanitizer_cov_trace_pc() #20
  %file_off.i1203 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %tmp_page.11437, i32 0, i32 6
  %389 = ptrtoint ptr %file_off.i1203 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %file_off.i1203, align 4
  %391 = call i32 @llvm.bswap.i32(i32 %390) #18
  br label %hdr_file_off.exit1206

hdr_file_off.exit1206:                            ; preds = %if.end.i1204, %if.then.i1202
  %retval.0.i1205 = phi i32 [ %conv2.i1201, %if.then.i1202 ], [ %391, %if.end.i1204 ]
  %conv642 = zext i32 %retval.0.i1205 to i64
  %392 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %page, align 4
  %tobool643.not = icmp eq ptr %393, null
  br i1 %tobool643.not, label %if.end8.i1092, label %hdr_file_off.exit1206.if.end650_crit_edge

hdr_file_off.exit1206.if.end650_crit_edge:        ; preds = %hdr_file_off.exit1206
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end650

if.end8.i1092:                                    ; preds = %hdr_file_off.exit1206
  %394 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %page_size.i, align 8
  %call9.i1091 = call noalias align 128 ptr @__kmalloc(i32 noundef %395, i32 noundef 3136) #22
  %396 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr %call9.i1091, ptr %page, align 4
  %tobool647.not = icmp eq ptr %call9.i1091, null
  br i1 %tobool647.not, label %if.end8.i1092.cleanup707_crit_edge, label %if.end8.i1092.if.end650_crit_edge

if.end8.i1092.if.end650_crit_edge:                ; preds = %if.end8.i1092
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end650

if.end8.i1092.cleanup707_crit_edge:               ; preds = %if.end8.i1092
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup707

if.end650:                                        ; preds = %if.end8.i1092.if.end650_crit_edge, %hdr_file_off.exit1206.if.end650_crit_edge
  %397 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %page, align 4
  %399 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %page_size.i, align 8
  %401 = call ptr @memcpy(ptr %398, ptr %tmp_page.11437, i32 %400)
  %402 = ptrtoint ptr %major_ver to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %major_ver, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %403)
  %cmp654 = icmp slt i16 %403, 2
  br i1 %cmp654, label %if.then656, label %if.else661

if.then656:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #20
  %last_end_lsn658 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %398, i32 0, i32 4, i32 2
  %404 = ptrtoint ptr %last_end_lsn658 to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %last_end_lsn658, align 8
  %lsn660 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %398, i32 0, i32 3
  %406 = ptrtoint ptr %lsn660 to i32
  call void @__asan_store8_noabort(i32 %406)
  store i64 %405, ptr %lsn660, align 8
  br label %if.end663

if.else661:                                       ; preds = %if.end650
  call void @__sanitizer_cov_trace_pc() #20
  %file_off662 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %398, i32 0, i32 6
  %407 = ptrtoint ptr %file_off662 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 0, ptr %file_off662, align 4
  br label %if.end663

if.end663:                                        ; preds = %if.else661, %if.then656
  %page_count664 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %398, i32 0, i32 2
  %408 = ptrtoint ptr %page_count664 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 256, ptr %page_count664, align 4
  %page_pos665 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %398, i32 0, i32 3
  %409 = ptrtoint ptr %page_pos665 to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 256, ptr %page_pos665, align 2
  %410 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %page_size.i, align 8
  %call668 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %398, i32 noundef %411) #18
  %412 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %log, align 8
  %sbi671 = getelementptr inbounds %struct.mft_inode, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %sbi671 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %sbi671, align 4
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %413, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %416 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %page_size.i, align 8
  %call674 = call i32 @ntfs_sb_write_run(ptr noundef %415, ptr noundef %run, i64 noundef %conv642, ptr noundef %398, i32 noundef %417, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call674)
  %tobool675.not = icmp eq i32 %call674, 0
  br i1 %tobool675.not, label %if.end677, label %if.end663.out_crit_edge

if.end663.out_crit_edge:                          ; preds = %if.end663
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end677:                                        ; preds = %if.end663
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %part_io_count.31436)
  %tobool678.not = icmp eq i32 %part_io_count.31436, 0
  br i1 %tobool678.not, label %if.end677.cleanup690_crit_edge, label %land.lhs.true679

if.end677.cleanup690_crit_edge:                   ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup690

land.lhs.true679:                                 ; preds = %if.end677
  call void @__sanitizer_cov_trace_cmp4(i32 %second_off.21435, i32 %retval.0.i1205)
  %cmp681 = icmp eq i32 %second_off.21435, %retval.0.i1205
  br i1 %cmp681, label %if.then683, label %land.lhs.true679.cleanup690_crit_edge

land.lhs.true679.cleanup690_crit_edge:            ; preds = %land.lhs.true679
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup690

if.then683:                                       ; preds = %land.lhs.true679
  call void @__sanitizer_cov_trace_pc() #20
  %418 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %page_size.i, align 8
  %add685 = add i32 %419, %second_off.21435
  %sub686 = add i32 %part_io_count.31436, -1
  br label %cleanup690

cleanup690:                                       ; preds = %if.then683, %land.lhs.true679.cleanup690_crit_edge, %if.end677.cleanup690_crit_edge
  %second_off.3 = phi i32 [ %add685, %if.then683 ], [ %second_off.21435, %land.lhs.true679.cleanup690_crit_edge ], [ %second_off.21435, %if.end677.cleanup690_crit_edge ]
  %part_io_count.4 = phi i32 [ %sub686, %if.then683 ], [ %part_io_count.31436, %land.lhs.true679.cleanup690_crit_edge ], [ 0, %if.end677.cleanup690_crit_edge ]
  %420 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %page_size.i, align 8
  %add.ptr689 = getelementptr i8, ptr %tmp_page.11437, i32 %421
  %tobool639.not = icmp eq i32 %dec6381439, 0
  br i1 %tobool639.not, label %cleanup690.if.end696_crit_edge, label %cleanup690.while.body640_crit_edge

cleanup690.while.body640_crit_edge:               ; preds = %cleanup690
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body640

cleanup690.if.end696_crit_edge:                   ; preds = %cleanup690
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end696

if.end696:                                        ; preds = %cleanup690.if.end696_crit_edge, %if.end636.if.end696_crit_edge, %file_is_valid.if.end696_crit_edge
  %err.4 = phi i32 [ %err.0, %file_is_valid.if.end696_crit_edge ], [ %err.0, %if.end636.if.end696_crit_edge ], [ 0, %cleanup690.if.end696_crit_edge ]
  %part_io_count.7 = phi i32 [ %part_io_count.2, %file_is_valid.if.end696_crit_edge ], [ %part_io_count.2, %if.end636.if.end696_crit_edge ], [ %part_io_count.4, %cleanup690.if.end696_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %part_io_count.7)
  %tobool697.not = icmp eq i32 %part_io_count.7, 0
  br i1 %tobool697.not, label %if.end696.out_crit_edge, label %if.then698

if.end696.out_crit_edge:                          ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then698:                                       ; preds = %if.end696
  call void @__sanitizer_cov_trace_pc() #20
  %422 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %log, align 8
  %sbi701 = getelementptr inbounds %struct.mft_inode, ptr %423, i32 0, i32 1
  %424 = ptrtoint ptr %sbi701 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %sbi701, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %425, align 8
  %s_flags.i1207 = getelementptr inbounds %struct.super_block, ptr %427, i32 0, i32 10
  %428 = ptrtoint ptr %s_flags.i1207 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %s_flags.i1207, align 4
  %and.i1208 = and i32 %429, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1208)
  %tobool.i1209.not = icmp eq i32 %and.i1208, 0
  %spec.select1065 = select i1 %tobool.i1209.not, i32 %err.4, i32 -30
  br label %out

out:                                              ; preds = %if.then698, %if.end696.out_crit_edge, %if.end663.out_crit_edge, %if.then620.out_crit_edge, %check_subseq_log_page.exit.out_crit_edge, %if.end.i1181.out_crit_edge
  %err.5 = phi i32 [ %err.4, %if.end696.out_crit_edge ], [ -22, %check_subseq_log_page.exit.out_crit_edge ], [ %spec.select1065, %if.then698 ], [ -22, %if.end.i1181.out_crit_edge ], [ -30, %if.then620.out_crit_edge ], [ %call674, %if.end663.out_crit_edge ]
  call void @kfree(ptr noundef %second_tail_prev.1) #18
  call void @kfree(ptr noundef %first_tail_prev.1) #18
  %430 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %page, align 4
  call void @kfree(ptr noundef %431) #18
  %432 = ptrtoint ptr %tst_page to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %tst_page, align 4
  call void @kfree(ptr noundef %433) #18
  call void @kfree(ptr noundef %page_bufs.0) #18
  br label %cleanup707

cleanup707:                                       ; preds = %out, %if.end8.i1092.cleanup707_crit_edge, %if.then.cleanup707_crit_edge
  %retval.3 = phi i32 [ %err.5, %out ], [ -12, %if.then.cleanup707_crit_edge ], [ -12, %if.end8.i1092.cleanup707_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %second_tail) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_tail) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tst_page) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_rst_area(ptr nocapture noundef readonly %log, ptr nocapture noundef writeonly %rst_, ptr nocapture noundef writeonly %lsn) unnamed_addr #0 align 64 {
entry:
  %rh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh) #18
  %0 = ptrtoint ptr %rh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rh, align 4
  %ra = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 22
  %1 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ra, align 4
  %client_off = getelementptr inbounds %struct.RESTART_AREA, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %client_off to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %client_off, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  %restart_lsn = getelementptr inbounds %struct.CLIENT_REC, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %restart_lsn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %restart_lsn, align 8
  %8 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %lsn, align 8
  %9 = ptrtoint ptr %rst_ to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rst_, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = tail call i64 @llvm.bswap.i64(i64 %7)
  %seq_num_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %11 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq_num_bits.i, align 8
  %sh_prom.i = zext i32 %12 to i64
  %shl.i = shl i64 %10, %sh_prom.i
  %sub.i = add i32 %12, -3
  %sh_prom2.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %shl.i, %sh_prom2.i
  %conv.i = trunc i64 %shr.i to i32
  %call2 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %conv.i, ptr noundef nonnull %rh, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rh, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %16)
  %cmp.not = icmp eq i64 %7, %16
  br i1 %cmp.not, label %if.end8, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8:                                          ; preds = %if.end5
  %17 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %10, ptr %lsn, align 8
  %client_data_len = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %14, i32 0, i32 3
  %18 = ptrtoint ptr %client_data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client_data_len, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool9.not = icmp eq i32 %19, 0
  br i1 %tobool9.not, label %if.end8.out_crit_edge, label %if.end11

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %20)
  %cmp12 = icmp ult i32 %20, 64
  br i1 %cmp12, label %if.end11.out_crit_edge, label %if.end8.i

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end8.i:                                        ; preds = %if.end11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3136) #22
  %tobool17.not = icmp eq ptr %call9.i, null
  br i1 %tobool17.not, label %if.end8.i.out_crit_edge, label %if.end19

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end19:                                         ; preds = %if.end8.i
  %call20 = tail call fastcc i32 @read_log_rec_buf(ptr noundef %log, ptr noundef %14, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %rst_ to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i, ptr %rst_, align 4
  br label %out

out:                                              ; preds = %if.end23, %if.end19.out_crit_edge, %if.end8.i.out_crit_edge, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %if.end5.out_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.out_crit_edge ], [ 0, %if.end23 ], [ -22, %if.end5.out_crit_edge ], [ 0, %if.end8.out_crit_edge ], [ -22, %if.end11.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ]
  %rst.0 = phi ptr [ %call9.i, %if.end19.out_crit_edge ], [ null, %if.end23 ], [ null, %if.end5.out_crit_edge ], [ null, %if.end8.out_crit_edge ], [ null, %if.end11.out_crit_edge ], [ null, %if.end8.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %14) #18
  tail call void @kfree(ptr noundef %rst.0) #18
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_log_rec_lcb(ptr nocapture noundef readonly %log, i64 noundef %lsn, i32 noundef %ctx_mode, ptr nocapture noundef writeonly %lcb_) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctx_mode)
  %switch = icmp ult i32 %ctx_mode, 3
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %ra = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 22
  %0 = ptrtoint ptr %ra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ra, align 4
  %client_off = getelementptr inbounds %struct.RESTART_AREA, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %client_off to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %client_off, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %lsn)
  %cmp.not.i = icmp ugt i64 %7, %lsn
  br i1 %cmp.not.i, label %sw.epilog.cleanup_crit_edge, label %verify_client_lsn.exit

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

verify_client_lsn.exit:                           ; preds = %sw.epilog
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9) #18
  %11 = add i64 %lsn, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %10)
  %12 = icmp ult i64 %11, %10
  br i1 %12, label %if.end, label %verify_client_lsn.exit.cleanup_crit_edge

verify_client_lsn.exit.cleanup_crit_edge:         ; preds = %verify_client_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %verify_client_lsn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3392, i32 noundef 20) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %client = getelementptr inbounds %struct.lcb, ptr %call7.i.i, i32 0, i32 3
  %client_id = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 39
  %14 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %client_id, align 4
  %16 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %client, align 4
  %ctx_mode5 = getelementptr inbounds %struct.lcb, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctx_mode5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ctx_mode, ptr %ctx_mode5, align 8
  %call6 = tail call fastcc i32 @find_log_rec(ptr noundef %log, i64 noundef %lsn, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup.sink.split_crit_edge, label %out

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

out:                                              ; preds = %if.end4
  %alloc.i = getelementptr inbounds %struct.lcb, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %alloc.i, align 8, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %out.lcb_put.exit_crit_edge, label %if.then.i

out.lcb_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %lcb_put.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  %log_rec.i = getelementptr inbounds %struct.lcb, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %log_rec.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %log_rec.i, align 4
  tail call void @kfree(ptr noundef %21) #18
  br label %lcb_put.exit

lcb_put.exit:                                     ; preds = %if.then.i, %out.lcb_put.exit_crit_edge
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %23) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lcb_put.exit, %if.end4.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ null, %lcb_put.exit ], [ %call7.i.i, %if.end4.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call6, %lcb_put.exit ], [ 0, %if.end4.cleanup.sink.split_crit_edge ]
  %24 = ptrtoint ptr %lcb_ to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.sink, ptr %lcb_, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %verify_client_lsn.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %verify_client_lsn.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @check_log_rec(ptr nocapture noundef readonly %lr, i32 noundef %bytes, i32 noundef %tr, i32 noundef %bytes_per_attr_entry) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bytes)
  %cmp = icmp ult i32 %bytes, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tr)
  %tobool.not = icmp eq i32 %tr, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end2:                                          ; preds = %entry
  %sub = add i32 %tr, -24
  %rem = urem i32 %sub, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool3.not = icmp eq i32 %rem, 0
  br i1 %tobool3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %redo_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lr, i32 0, i32 2
  %0 = ptrtoint ptr %redo_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %redo_off, align 4
  %2 = and i16 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool6.not = icmp eq i16 %2, 0
  br i1 %tobool6.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %undo_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lr, i32 0, i32 4
  %3 = ptrtoint ptr %undo_off to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %undo_off, align 8
  %5 = and i16 %4, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool11.not = icmp eq i16 %5, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %target_attr = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lr, i32 0, i32 6
  %6 = ptrtoint ptr %target_attr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %target_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool14.not = icmp eq i16 %7, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.check_lcns_crit_edge

if.end13.check_lcns_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_lcns

if.end16:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %lr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %lr, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %10)
  %cmp.i = icmp ult i16 %10, 35
  br i1 %cmp.i, label %is_target_required.exit, label %if.end16.if.end18_crit_edge

if.end16.if.end18_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

is_target_required.exit:                          ; preds = %if.end16
  %conv.i = zext i16 %10 to i32
  %11 = lshr i32 %conv.i, 3
  %arrayidx.i = getelementptr [5 x i8], ptr @AttributeRequired, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv3.i = zext i8 %13 to i32
  %and.i = and i32 %conv.i, 7
  %14 = shl nuw nsw i32 1, %and.i
  %15 = and i32 %14, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %is_target_required.exit.if.end18_crit_edge, label %is_target_required.exit.cleanup_crit_edge

is_target_required.exit.cleanup_crit_edge:        ; preds = %is_target_required.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_target_required.exit.if.end18_crit_edge:       ; preds = %is_target_required.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.end18:                                         ; preds = %is_target_required.exit.if.end18_crit_edge, %if.end16.if.end18_crit_edge
  %undo_op = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lr, i32 0, i32 1
  %16 = ptrtoint ptr %undo_op to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %undo_op, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  call void @__sanitizer_cov_trace_const_cmp2(i16 35, i16 %18)
  %cmp.i46 = icmp ult i16 %18, 35
  br i1 %cmp.i46, label %is_target_required.exit53, label %if.end18.check_lcns_crit_edge

if.end18.check_lcns_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_lcns

is_target_required.exit53:                        ; preds = %if.end18
  %conv.i47 = zext i16 %18 to i32
  %19 = lshr i32 %conv.i47, 3
  %arrayidx.i48 = getelementptr [5 x i8], ptr @AttributeRequired, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i48, align 1
  %conv3.i49 = zext i8 %21 to i32
  %and.i50 = and i32 %conv.i47, 7
  %22 = shl nuw nsw i32 1, %and.i50
  %23 = and i32 %22, %conv3.i49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i51.not = icmp eq i32 %23, 0
  br i1 %tobool.i51.not, label %is_target_required.exit53.check_lcns_crit_edge, label %is_target_required.exit53.cleanup_crit_edge

is_target_required.exit53.cleanup_crit_edge:      ; preds = %is_target_required.exit53
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

is_target_required.exit53.check_lcns_crit_edge:   ; preds = %is_target_required.exit53
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_lcns

check_lcns:                                       ; preds = %is_target_required.exit53.check_lcns_crit_edge, %if.end18.check_lcns_crit_edge, %if.end13.check_lcns_crit_edge
  %lcns_follow = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lr, i32 0, i32 7
  %24 = ptrtoint ptr %lcns_follow to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %lcns_follow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool22.not = icmp eq i16 %25, 0
  br i1 %tobool22.not, label %check_lcns.check_length_crit_edge, label %if.end24

check_lcns.check_length_crit_edge:                ; preds = %check_lcns
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_length

if.end24:                                         ; preds = %check_lcns
  %26 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv26 = zext i16 %26 to i32
  %sub27 = add nsw i32 %conv26, -24
  %rem28 = urem i32 %sub27, %bytes_per_attr_entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem28)
  %tobool29.not = icmp eq i32 %rem28, 0
  br i1 %tobool29.not, label %if.end24.check_length_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end24.check_length_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %check_length

check_length:                                     ; preds = %if.end24.check_length_crit_edge, %check_lcns.check_length_crit_edge
  %27 = tail call i16 @llvm.bswap.i16(i16 %25) #18
  %narrow.i = select i1 %tobool22.not, i16 1, i16 %27
  %cond.i = zext i16 %narrow.i to i32
  %28 = shl nuw nsw i32 %cond.i, 3
  %spec.select.i7.i = add nuw nsw i32 %28, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i7.i, i32 %bytes)
  %cmp33 = icmp ule i32 %spec.select.i7.i, %bytes
  br label %cleanup

cleanup:                                          ; preds = %check_length, %if.end24.cleanup_crit_edge, %is_target_required.exit53.cleanup_crit_edge, %is_target_required.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end2.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ false, %if.end8.cleanup_crit_edge ], [ false, %is_target_required.exit.cleanup_crit_edge ], [ false, %is_target_required.exit53.cleanup_crit_edge ], [ false, %if.end24.cleanup_crit_edge ], [ %cmp33, %check_length ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_rstbl(ptr nocapture noundef readonly %rt, i32 noundef %bytes) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rt, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %used = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 1
  %3 = ptrtoint ptr %used to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %used, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 5
  %6 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_free, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %last_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 6
  %9 = ptrtoint ptr %last_free to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_free, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %conv = zext i16 %2 to i32
  %conv1 = zext i16 %5 to i32
  %mul = mul nuw i32 %conv1, %conv
  %add = add nuw i32 %mul, 24
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bytes)
  %cmp = icmp ugt i32 %conv, %bytes
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  %add6 = add nuw nsw i32 %conv, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %bytes)
  %cmp7 = icmp ugt i32 %add6, %bytes
  %or.cond97 = select i1 %or.cond, i1 true, i1 %cmp7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bytes)
  %cmp10 = icmp ugt i32 %add, %bytes
  %or.cond98 = select i1 %or.cond97, i1 true, i1 %cmp10
  br i1 %or.cond98, label %entry.cleanup_crit_edge, label %lor.lhs.false12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false12:                                  ; preds = %entry
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 2
  %12 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %total, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %5)
  %cmp15 = icmp ugt i16 %14, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp18 = icmp ugt i32 %8, %add
  %or.cond99 = select i1 %cmp15, i1 true, i1 %cmp18
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp21 = icmp ugt i32 %11, %add
  %or.cond100 = select i1 %or.cond99, i1 true, i1 %cmp21
  br i1 %or.cond100, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false23

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool24.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %8)
  %cmp25 = icmp ult i32 %8, 24
  %or.cond101 = select i1 %tobool24.not, i1 %cmp25, i1 false
  br i1 %or.cond101, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false27

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false27:                                  ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool28.not = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %cmp30 = icmp ult i32 %11, 24
  %or.cond102 = select i1 %tobool28.not, i1 %cmp30, i1 false
  br i1 %or.cond102, label %lor.lhs.false27.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp33104.not = icmp eq i16 %4, 0
  br i1 %cmp33104.not, label %for.cond.preheader.for.cond50.preheader_crit_edge, label %for.body.preheader

for.cond.preheader.for.cond50.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond50.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %conv1, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0105 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul36 = mul nuw i32 %i.0105, %conv
  %add37 = add nuw i32 %mul36, 24
  %add.ptr = getelementptr i8, ptr %rt, i32 %add37
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %16, label %land.lhs.true42 [
    i32 -1, label %for.body.for.inc_crit_edge
    i32 0, label %for.body.for.inc_crit_edge112
  ]

for.body.for.inc_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

land.lhs.true42:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %17)
  %cmp43 = icmp ult i32 %17, 24
  br i1 %cmp43, label %land.lhs.true42.cleanup_crit_edge, label %lor.lhs.false45

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false45:                                  ; preds = %land.lhs.true42
  %sub = add i32 %17, -24
  %rem = urem i32 %sub, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool47.not = icmp eq i32 %rem, 0
  br i1 %tobool47.not, label %lor.lhs.false45.for.inc_crit_edge, label %lor.lhs.false45.cleanup_crit_edge

lor.lhs.false45.cleanup_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false45.for.inc_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false45.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge112
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.cond50.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.cond50.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.inc.for.cond50.preheader_crit_edge, %for.cond.preheader.for.cond50.preheader_crit_edge
  br label %for.cond50

for.cond50:                                       ; preds = %if.end56, %for.cond50.preheader
  %off.0 = phi i32 [ %22, %if.end56 ], [ %8, %for.cond50.preheader ]
  %19 = zext i32 %off.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %off.0, label %if.end56 [
    i32 0, label %for.cond50.cleanup_crit_edge
    i32 -1, label %cleanup.loopexit
  ]

for.cond50.cleanup_crit_edge:                     ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end56:                                         ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr57 = getelementptr i8, ptr %rt, i32 %off.0
  %20 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr57, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  br label %for.cond50

cleanup.loopexit:                                 ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.cond50.cleanup_crit_edge, %lor.lhs.false45.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %lor.lhs.false27.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false27.cleanup_crit_edge ], [ false, %lor.lhs.false23.cleanup_crit_edge ], [ false, %lor.lhs.false12.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %cleanup.loopexit ], [ true, %for.cond50.cleanup_crit_edge ], [ false, %lor.lhs.false45.cleanup_crit_edge ], [ false, %land.lhs.true42.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lcb_put(ptr noundef %lcb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 4
  %0 = ptrtoint ptr %alloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alloc, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %log_rec = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 1
  %2 = ptrtoint ptr %log_rec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log_rec, align 4
  tail call void @kfree(ptr noundef %3) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lcb, align 4
  tail call void @kfree(ptr noundef %5) #18
  tail call void @kfree(ptr noundef %lcb) #18
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @enum_rstbl(ptr noundef %t, ptr noundef %c) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %tobool2.not = icmp eq ptr %c, null
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.else_crit_edge

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.end.thread:                                  ; preds = %entry
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %t, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %phi.cast = zext i16 %2 to i32
  %tobool2.not30 = icmp eq ptr %c, null
  br i1 %tobool2.not30, label %lor.lhs.false, label %cond.end.thread.if.else_crit_edge

cond.end.thread.if.else_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

lor.lhs.false:                                    ; preds = %cond.end.thread
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %total, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool4.not = icmp eq i16 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %t, i32 24
  br label %if.end8

if.else:                                          ; preds = %cond.end.thread.if.else_crit_edge, %cond.end.if.else_crit_edge
  %cond31 = phi i32 [ %phi.cast, %cond.end.thread.if.else_crit_edge ], [ 0, %cond.end.if.else_crit_edge ]
  %add.ptr7 = getelementptr i8, ptr %c, i32 %cond31
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %cond32 = phi i32 [ %cond31, %if.else ], [ %phi.cast, %if.end ]
  %e.0 = phi ptr [ %add.ptr7, %if.else ], [ %add.ptr, %if.end ]
  %used.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %used.i, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  %conv.i = zext i16 %7 to i32
  %8 = ptrtoint ptr %t to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %t, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #18
  %conv1.i = zext i16 %10 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %add.i = add nuw i32 %mul.i, 24
  %11 = ptrtoint ptr %t to i32
  %12 = ptrtoint ptr %e.0 to i32
  %sub36 = sub i32 %12, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36, i32 %add.i)
  %cmp37 = icmp ult i32 %sub36, %add.i
  br i1 %cmp37, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %e.138 = phi ptr [ %add.ptr15, %for.inc.for.body_crit_edge ], [ %e.0, %if.end8.for.body_crit_edge ]
  %13 = ptrtoint ptr %e.138 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %e.138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp10 = icmp eq i32 %14, -1
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add.ptr15 = getelementptr i8, ptr %e.138, i32 %cond32
  %15 = ptrtoint ptr %add.ptr15 to i32
  %sub = sub i32 %15, %11
  %cmp = icmp ult i32 %sub, %add.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %cond.end.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ %e.138, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @free_rsttbl_idx(ptr nocapture noundef %rt, i32 noundef %off) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %last_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 6
  %0 = ptrtoint ptr %last_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_free, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %off)
  %add.ptr = getelementptr i8, ptr %rt, i32 %off
  %free_goal = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 4
  %3 = ptrtoint ptr %free_goal to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free_goal, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %off)
  %cmp = icmp ugt i32 %5, %off
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 5
  %6 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_free, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %add.ptr, align 4
  store i32 %2, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then2, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end11

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %last_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %2, ptr %last_free, align 4
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = tail call i32 @llvm.bswap.i32(i32 %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  %first_free8 = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 5
  %add.ptr6 = getelementptr i8, ptr %rt, i32 %10
  %first_free8.sink = select i1 %tobool4.not, ptr %first_free8, ptr %add.ptr6
  %11 = ptrtoint ptr %first_free8.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %2, ptr %first_free8.sink, align 4
  %12 = ptrtoint ptr %last_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %2, ptr %last_free, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %add.ptr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then2, %if.then.if.end11_crit_edge
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt, i32 0, i32 2
  %14 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %total, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #18
  %sub.i = add i16 %16, -1
  %17 = tail call i16 @llvm.bswap.i16(i16 %sub.i) #18
  %18 = ptrtoint ptr %total to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %total, align 2
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @init_rsttbl(i16 noundef zeroext %esize, i16 noundef zeroext %used) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i16 %esize to i32
  %conv1 = zext i16 %used to i32
  %mul = mul nuw i32 %conv1, %conv
  %add = add nuw i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3392) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %conv1, -1
  %mul4 = mul i32 %sub, %conv
  %add5 = add i32 %mul4, 24
  %0 = tail call i16 @llvm.bswap.i16(i16 %esize)
  %1 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %call9.i.i, align 128
  %2 = tail call i16 @llvm.bswap.i16(i16 %used)
  %used6 = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %used6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %used6, align 2
  %free_goal = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %free_goal to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %free_goal, align 4
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 402653184, ptr %first_free, align 16
  %6 = tail call i32 @llvm.bswap.i32(i32 %add5)
  %last_free7 = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %last_free7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %last_free7, align 4
  %add.ptr = getelementptr %struct.RESTART_TABLE, ptr %call9.i.i, i32 1
  %add.ptr8 = getelementptr i8, ptr %call9.i.i, i32 %add5
  %cmp40 = icmp ult ptr %add.ptr, %add.ptr8
  br i1 %cmp40, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %add10 = add nuw nsw i32 %conv, 24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %off.042 = phi i32 [ %add15, %for.body.for.body_crit_edge ], [ %add10, %for.body.preheader ]
  %e.041 = phi ptr [ %add.ptr13, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %off.042)
  %9 = ptrtoint ptr %e.041 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %e.041, align 4
  %add.ptr13 = getelementptr i8, ptr %e.041, i32 %conv
  %add15 = add i32 %off.042, %conv
  %cmp = icmp ult ptr %add.ptr13, %add.ptr8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_next_log_rec(ptr nocapture noundef readonly %log, ptr nocapture noundef %lcb, ptr nocapture noundef %lsn) unnamed_addr #0 align 64 {
entry:
  %page.i.i = alloca ptr, align 4
  %hdr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr.i) #18
  %0 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcb, align 4
  %2 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %hdr.i, align 4
  %3 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %lsn, align 8
  %ctx_mode.i = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 2
  %4 = ptrtoint ptr %ctx_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctx_mode.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %entry.find_client_next_lsn.exit.thread_crit_edge [
    i32 2, label %for.cond.preheader.i
    i32 0, label %if.then31.i
    i32 1, label %if.then35.i
  ]

entry.find_client_next_lsn.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_client_next_lsn.exit.thread

for.cond.preheader.i:                             ; preds = %entry
  %seq_num_bits.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %seq_num_mask.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 21
  %page_mask.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %page_size.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %record_header_len.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %sys_page_mask.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %file_data_bits.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 20
  %data_size.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 16
  %data_off.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 14
  %l_size.i.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %first_page.i.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %oldest_lsn.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 26
  %ra.i.i.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 22
  %client15.i = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %for.cond.preheader.i
  %7 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdr.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10) #18
  %12 = ptrtoint ptr %seq_num_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq_num_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i32 %13 to i64
  %shl.i.i.i = shl i64 %11, %sh_prom.i.i.i
  %sub.i.i.i = add i32 %13, -3
  %sh_prom2.i.i.i = zext i32 %sub.i.i.i to i64
  %shr.i.i.i = lshr i64 %shl.i.i.i, %sh_prom2.i.i.i
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %client_data_len.i.i = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %client_data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %client_data_len.i.i, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #18
  %lsn.tr.i.i.i = trunc i64 %11 to i32
  %conv.i53.i.i = shl i32 %lsn.tr.i.i.i, 3
  %17 = ptrtoint ptr %seq_num_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_num_mask.i.i.i, align 8
  %and.i.i.i = and i32 %18, %conv.i53.i.i
  %19 = ptrtoint ptr %page_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %page_mask.i.i.i, align 4
  %neg.i.i.i = xor i32 %20, -1
  %and1.i.i.i = and i32 %and.i.i.i, %neg.i.i.i
  %and3.i.i.i = and i32 %20, %conv.i53.i.i
  %21 = ptrtoint ptr %page_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %page_size.i.i.i, align 8
  %sub.i54.i.i = sub i32 %22, %and3.i.i.i
  %23 = ptrtoint ptr %record_header_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %record_header_len.i.i.i, align 4
  %conv5.i.i.i = zext i16 %24 to i32
  %add.i.i.i = add i32 %16, %conv5.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i54.i.i)
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %sub.i54.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.cond.i.final_log_off.exit.i.i_crit_edge

for.cond.i.final_log_off.exit.i.i_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %final_log_off.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.i
  %sub7.i.i.i = sub i32 %add.i.i.i, %sub.i54.i.i
  %25 = ptrtoint ptr %data_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size.i.i.i, align 8
  %27 = ptrtoint ptr %data_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_off.i.i.i, align 8
  %29 = ptrtoint ptr %sys_page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sys_page_mask.i.i, align 4
  %neg.i.i.i.i = xor i32 %30, -1
  %31 = ptrtoint ptr %l_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %l_size.i.i.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %next_page_off.exit.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i.i
  %data_len.addr.0.i.i.i = phi i32 [ %sub7.i.i.i, %if.then.i.i.i ], [ %sub12.i.i.i, %next_page_off.exit.i.i.i.for.cond.i.i.i_crit_edge ]
  %final_log_off.0.i.i.i = phi i32 [ %and1.i.i.i, %if.then.i.i.i ], [ %cond.i.i.i.i, %next_page_off.exit.i.i.i.for.cond.i.i.i_crit_edge ]
  %and.i.i.i.i = and i32 %final_log_off.0.i.i.i, %neg.i.i.i.i
  %add.i.i.i.i = add i32 %and.i.i.i.i, %22
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %32)
  %cmp.not.i.i.i.i = icmp ult i32 %add.i.i.i.i, %32
  br i1 %cmp.not.i.i.i.i, label %for.cond.i.i.i.next_page_off.exit.i.i.i_crit_edge, label %cond.true.i.i.i.i

for.cond.i.i.i.next_page_off.exit.i.i.i_crit_edge: ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit.i.i.i

cond.true.i.i.i.i:                                ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %first_page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_page.i.i.i.i, align 4
  br label %next_page_off.exit.i.i.i

next_page_off.exit.i.i.i:                         ; preds = %cond.true.i.i.i.i, %for.cond.i.i.i.next_page_off.exit.i.i.i_crit_edge
  %cond.i.i.i.i = phi i32 [ %34, %cond.true.i.i.i.i ], [ %add.i.i.i.i, %for.cond.i.i.i.next_page_off.exit.i.i.i_crit_edge ]
  %cmp9.not.i.i.i = icmp ugt i32 %data_len.addr.0.i.i.i, %26
  %sub12.i.i.i = sub i32 %data_len.addr.0.i.i.i, %26
  br i1 %cmp9.not.i.i.i, label %next_page_off.exit.i.i.i.for.cond.i.i.i_crit_edge, label %next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge

next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge: ; preds = %next_page_off.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %final_log_off.exit.i.i

next_page_off.exit.i.i.i.for.cond.i.i.i_crit_edge: ; preds = %next_page_off.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.i.i

final_log_off.exit.i.i:                           ; preds = %next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge, %for.cond.i.final_log_off.exit.i.i_crit_edge
  %data_len.addr.1.i.i.i = phi i32 [ %add.i.i.i, %for.cond.i.final_log_off.exit.i.i_crit_edge ], [ %data_len.addr.0.i.i.i, %next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge ]
  %final_log_off.1.i.i.i = phi i32 [ %and1.i.i.i, %for.cond.i.final_log_off.exit.i.i_crit_edge ], [ %cond.i.i.i.i, %next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge ]
  %page_off.0.in.i.i.i = phi i32 [ %and3.i.i.i, %for.cond.i.final_log_off.exit.i.i_crit_edge ], [ %28, %next_page_off.exit.i.i.i.final_log_off.exit.i.i_crit_edge ]
  %page_off.0.i.i.i = add i32 %data_len.addr.1.i.i.i, -1
  %add14.i.i.i = add i32 %page_off.0.i.i.i, %final_log_off.1.i.i.i
  %add15.i.i.i = add i32 %add14.i.i.i, %page_off.0.in.i.i.i
  %35 = ptrtoint ptr %sys_page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sys_page_mask.i.i, align 4
  %neg.i.i = xor i32 %36, -1
  %and.i.i = and i32 %add15.i.i.i, %neg.i.i
  %37 = ptrtoint ptr %file_data_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %file_data_bits.i.i, align 4
  %sh_prom.i.i = zext i32 %38 to i64
  %shr.i.i = lshr i64 %11, %sh_prom.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page.i.i) #18
  %39 = ptrtoint ptr %page.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %page.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i.i, i32 %conv.i.i.i)
  %cmp.not.i.i = icmp ule i32 %add15.i.i.i, %conv.i.i.i
  %add.i.i = zext i1 %cmp.not.i.i to i64
  %spec.select.i.i = add i64 %shr.i.i, %add.i.i
  %call3.i.i = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %and.i.i, ptr noundef nonnull %page.i.i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %next_log_lsn.exit.i

if.end5.i.i:                                      ; preds = %final_log_off.exit.i.i
  %40 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page.i.i, align 4
  %lsn6.i.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %lsn6.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lsn6.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %43)
  %cmp7.i.i = icmp eq i64 %10, %43
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  %44 = ptrtoint ptr %sys_page_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sys_page_mask.i.i, align 4
  %neg.i55.i.i = xor i32 %45, -1
  %and.i56.i.i = and i32 %and.i.i, %neg.i55.i.i
  %46 = ptrtoint ptr %page_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %page_size.i.i.i, align 8
  %add.i58.i.i = add i32 %and.i56.i.i, %47
  %48 = ptrtoint ptr %l_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %l_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i58.i.i, i32 %49)
  %cmp.not.i.i.i = icmp ult i32 %add.i58.i.i, %49
  br i1 %cmp.not.i.i.i, label %if.then8.i.i.next_page_off.exit.i.i_crit_edge, label %cond.true.i.i.i

if.then8.i.i.next_page_off.exit.i.i_crit_edge:    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next_page_off.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %50 = ptrtoint ptr %first_page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %first_page.i.i.i.i, align 4
  br label %next_page_off.exit.i.i

next_page_off.exit.i.i:                           ; preds = %cond.true.i.i.i, %if.then8.i.i.next_page_off.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %51, %cond.true.i.i.i ], [ %add.i58.i.i, %if.then8.i.i.next_page_off.exit.i.i_crit_edge ]
  %52 = ptrtoint ptr %first_page.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %first_page.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %53)
  %cmp10.i.i = icmp eq i32 %cond.i.i.i, %53
  %add12.i.i = zext i1 %cmp10.i.i to i64
  %spec.select52.i.i = add i64 %spec.select.i.i, %add12.i.i
  %54 = ptrtoint ptr %data_off.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_off.i.i.i, align 8
  %add14.i.i = add i32 %55, %cond.i.i.i
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %add15.i.i = add i32 %add15.i.i.i, 7
  %and16.i.i = and i32 %add15.i.i, -8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i, %next_page_off.exit.i.i
  %vbo.0.i.i = phi i32 [ %add14.i.i, %next_page_off.exit.i.i ], [ %and16.i.i, %if.else.i.i ]
  %seq.2.i.i = phi i64 [ %spec.select52.i.i, %next_page_off.exit.i.i ], [ %spec.select.i.i, %if.else.i.i ]
  %shr.i59.i.i = lshr i32 %vbo.0.i.i, 3
  %conv.i60.i.i = zext i32 %shr.i59.i.i to i64
  %56 = ptrtoint ptr %file_data_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %file_data_bits.i.i, align 4
  %sh_prom.i61.i.i = zext i32 %57 to i64
  %shl.i62.i.i = shl i64 %seq.2.i.i, %sh_prom.i61.i.i
  %add.i63.i.i = add i64 %shl.i62.i.i, %conv.i60.i.i
  %58 = ptrtoint ptr %oldest_lsn.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %oldest_lsn.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %add.i63.i.i)
  %cmp.not.i64.i.i = icmp ugt i64 %59, %add.i63.i.i
  br i1 %cmp.not.i64.i.i, label %if.end17.i.i.if.end2.thread.i_crit_edge, label %is_lsn_in_file.exit.i.i

if.end17.i.i.if.end2.thread.i_crit_edge:          ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end2.thread.i

is_lsn_in_file.exit.i.i:                          ; preds = %if.end17.i.i
  %60 = ptrtoint ptr %ra.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ra.i.i.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %61, align 8
  %64 = tail call i64 @llvm.bswap.i64(i64 %63) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %add.i63.i.i)
  %cmp1.i.not.i.i = icmp ult i64 %64, %add.i63.i.i
  br i1 %cmp1.i.not.i.i, label %is_lsn_in_file.exit.i.i.if.end2.thread.i_crit_edge, label %if.end2.i

is_lsn_in_file.exit.i.i.if.end2.thread.i_crit_edge: ; preds = %is_lsn_in_file.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end2.thread.i

if.end2.thread.i:                                 ; preds = %is_lsn_in_file.exit.i.i.if.end2.thread.i_crit_edge, %if.end17.i.i.if.end2.thread.i_crit_edge
  tail call void @kfree(ptr noundef %41) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #18
  br label %out.i

next_log_lsn.exit.i:                              ; preds = %final_log_off.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #18
  br label %out.i

if.end2.i:                                        ; preds = %is_lsn_in_file.exit.i.i
  tail call void @kfree(ptr noundef %41) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i63.i.i)
  %tobool3.not.i = icmp eq i64 %add.i63.i.i, 0
  br i1 %tobool3.not.i, label %if.end2.i.out.i_crit_edge, label %if.end5.i

if.end2.i.out.i_crit_edge:                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.end5.i:                                        ; preds = %if.end2.i
  %65 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lcb, align 4
  %cmp7.not.i = icmp eq ptr %8, %66
  br i1 %cmp7.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then8.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef %8) #18
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end5.i.if.end9.i_crit_edge
  %67 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %hdr.i, align 4
  %68 = ptrtoint ptr %seq_num_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seq_num_bits.i.i.i, align 8
  %sh_prom.i84.i = zext i32 %69 to i64
  %shl.i.i = shl i64 %add.i63.i.i, %sh_prom.i84.i
  %sub.i.i = add i32 %69, -3
  %sh_prom2.i.i = zext i32 %sub.i.i to i64
  %shr.i85.i = lshr i64 %shl.i.i, %sh_prom2.i.i
  %conv.i.i = trunc i64 %shr.i85.i to i32
  %call11.i = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %conv.i.i, ptr noundef nonnull %hdr.i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.i

if.end14.i:                                       ; preds = %if.end9.i
  %70 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hdr.i, align 4
  %client.i = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %71, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %client.i, ptr noundef dereferenceable(4) %client15.i, i32 4) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %if.else.i, label %if.end14.i.for.cond.i.backedge_crit_edge

if.end14.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.backedge

if.else.i:                                        ; preds = %if.end14.i
  %record_type.i = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %record_type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %record_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %73)
  %cmp19.i = icmp eq i32 %73, 16777216
  br i1 %cmp19.i, label %cleanup.thread103.i, label %if.else.i.for.cond.i.backedge_crit_edge

if.else.i.for.cond.i.backedge_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %if.else.i.for.cond.i.backedge_crit_edge, %if.end14.i.for.cond.i.backedge_crit_edge
  br label %for.cond.i

cleanup.thread103.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %74 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lcb, align 4
  tail call void @kfree(ptr noundef %75) #18
  br label %find_client_next_lsn.exit.thread.sink.split

out.i:                                            ; preds = %if.end9.i.out.i_crit_edge, %if.end2.i.out.i_crit_edge, %next_log_lsn.exit.i, %if.end2.thread.i
  %err.0.ph.i = phi i32 [ 0, %if.end2.thread.i ], [ %call3.i.i, %next_log_lsn.exit.i ], [ %call11.i, %if.end9.i.out.i_crit_edge ], [ 0, %if.end2.i.out.i_crit_edge ]
  %76 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hdr.i, align 4
  %78 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lcb, align 4
  %cmp26.not.i = icmp eq ptr %77, %79
  br i1 %cmp26.not.i, label %out.i.find_client_next_lsn.exit_crit_edge, label %if.then27.i

out.i.find_client_next_lsn.exit_crit_edge:        ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_client_next_lsn.exit

if.then27.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @kfree(ptr noundef %77) #18
  br label %find_client_next_lsn.exit

if.then31.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %client_undo_next_lsn.i = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %1, i32 0, i32 2
  br label %if.end38.i

if.then35.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %client_prev_lsn.i = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %1, i32 0, i32 1
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.then31.i
  %client_prev_lsn.sink.i = phi ptr [ %client_prev_lsn.i, %if.then35.i ], [ %client_undo_next_lsn.i, %if.then31.i ]
  %80 = ptrtoint ptr %client_prev_lsn.sink.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %client_prev_lsn.sink.i, align 8
  %82 = tail call i64 @llvm.bswap.i64(i64 %81) #18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %81)
  %tobool39.not.i = icmp eq i64 %81, 0
  br i1 %tobool39.not.i, label %if.end38.i.find_client_next_lsn.exit.thread_crit_edge, label %if.end41.i

if.end38.i.find_client_next_lsn.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_client_next_lsn.exit.thread

if.end41.i:                                       ; preds = %if.end38.i
  %ra.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 22
  %83 = ptrtoint ptr %ra.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ra.i, align 4
  %client_off.i = getelementptr inbounds %struct.RESTART_AREA, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %client_off.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %client_off.i, align 2
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #18
  %conv.i = zext i16 %87 to i32
  %add.ptr.i = getelementptr i8, ptr %84, i32 %conv.i
  %88 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %add.ptr.i, align 8
  %90 = tail call i64 @llvm.bswap.i64(i64 %89) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %82)
  %cmp.not.i86.i = icmp ugt i64 %90, %82
  br i1 %cmp.not.i86.i, label %if.end41.i.find_client_next_lsn.exit.thread_crit_edge, label %verify_client_lsn.exit.i

if.end41.i.find_client_next_lsn.exit.thread_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_client_next_lsn.exit.thread

verify_client_lsn.exit.i:                         ; preds = %if.end41.i
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %84, align 8
  %93 = tail call i64 @llvm.bswap.i64(i64 %92) #18
  %94 = add i64 %82, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %93)
  %95 = icmp ult i64 %94, %93
  br i1 %95, label %if.end45.i, label %verify_client_lsn.exit.i.find_client_next_lsn.exit.thread_crit_edge

verify_client_lsn.exit.i.find_client_next_lsn.exit.thread_crit_edge: ; preds = %verify_client_lsn.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %find_client_next_lsn.exit.thread

if.end45.i:                                       ; preds = %verify_client_lsn.exit.i
  %96 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %hdr.i, align 4
  %seq_num_bits.i87.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %97 = ptrtoint ptr %seq_num_bits.i87.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %seq_num_bits.i87.i, align 8
  %sh_prom.i88.i = zext i32 %98 to i64
  %shl.i89.i = shl i64 %82, %sh_prom.i88.i
  %sub.i90.i = add i32 %98, -3
  %sh_prom2.i91.i = zext i32 %sub.i90.i to i64
  %shr.i92.i = lshr i64 %shl.i89.i, %sh_prom2.i91.i
  %conv.i93.i = trunc i64 %shr.i92.i to i32
  %call47.i = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %conv.i93.i, ptr noundef nonnull %hdr.i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %find_client_next_lsn.exit.thread24

find_client_next_lsn.exit.thread24:               ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #18
  br label %cleanup

if.end50.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #20
  %99 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lcb, align 4
  tail call void @kfree(ptr noundef %100) #18
  %101 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hdr.i, align 4
  br label %find_client_next_lsn.exit.thread.sink.split

find_client_next_lsn.exit.thread.sink.split:      ; preds = %if.end50.i, %cleanup.thread103.i
  %.sink51 = phi ptr [ %102, %if.end50.i ], [ %71, %cleanup.thread103.i ]
  %.sink = phi i64 [ %82, %if.end50.i ], [ %add.i63.i.i, %cleanup.thread103.i ]
  %103 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %.sink51, ptr %lcb, align 4
  %104 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %.sink, ptr %lsn, align 8
  br label %find_client_next_lsn.exit.thread

find_client_next_lsn.exit.thread:                 ; preds = %find_client_next_lsn.exit.thread.sink.split, %verify_client_lsn.exit.i.find_client_next_lsn.exit.thread_crit_edge, %if.end41.i.find_client_next_lsn.exit.thread_crit_edge, %if.end38.i.find_client_next_lsn.exit.thread_crit_edge, %entry.find_client_next_lsn.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #18
  br label %if.end

find_client_next_lsn.exit:                        ; preds = %if.then27.i, %out.i.find_client_next_lsn.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.ph.i)
  %tobool.not = icmp eq i32 %err.0.ph.i, 0
  br i1 %tobool.not, label %find_client_next_lsn.exit.if.end_crit_edge, label %find_client_next_lsn.exit.cleanup_crit_edge

find_client_next_lsn.exit.cleanup_crit_edge:      ; preds = %find_client_next_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

find_client_next_lsn.exit.if.end_crit_edge:       ; preds = %find_client_next_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %find_client_next_lsn.exit.if.end_crit_edge, %find_client_next_lsn.exit.thread
  %105 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %lsn, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %106)
  %tobool1.not = icmp eq i64 %106, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %alloc = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 4
  %107 = ptrtoint ptr %alloc to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %alloc, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool4.not = icmp eq i8 %108, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %log_rec = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 1
  %109 = ptrtoint ptr %log_rec to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %log_rec, align 4
  tail call void @kfree(ptr noundef %110) #18
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %log_rec7 = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 1
  %111 = ptrtoint ptr %log_rec7 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %log_rec7, align 4
  %112 = ptrtoint ptr %alloc to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %alloc, align 4
  %113 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %lcb, align 4
  tail call void @kfree(ptr noundef %114) #18
  %115 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %lcb, align 4
  %116 = ptrtoint ptr %lsn to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %lsn, align 8
  %call10 = tail call fastcc i32 @find_log_rec(ptr noundef %log, i64 noundef %117, ptr noundef %lcb)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %find_client_next_lsn.exit.cleanup_crit_edge, %find_client_next_lsn.exit.thread24
  %retval.0 = phi i32 [ %call10, %if.end6 ], [ %err.0.ph.i, %find_client_next_lsn.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call47.i, %find_client_next_lsn.exit.thread24 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_rsttbl_from_idx(ptr nocapture noundef %tbl, i32 noundef %vbo) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %used.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %used.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #18
  %conv.i = zext i16 %4 to i32
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #18
  %conv1.i = zext i16 %7 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %add.i = add nuw i32 %mul.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %vbo)
  %cmp.not = icmp ugt i32 %add.i, %vbo
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  %sub = sub i32 %vbo, %add.i
  %div = udiv i32 %sub, %conv1.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %add.i) #18
  %9 = trunc i32 %div to i16
  %10 = add i16 %4, 1
  %conv3.i = add i16 %10, %9
  %conv1.i44.i = zext i16 %conv3.i to i32
  %mul.i45.i = mul nuw i32 %conv1.i44.i, %conv1.i
  %add.i46.i = add nuw i32 %mul.i45.i, 24
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i46.i, i32 noundef 3392) #22
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %extend_rsttbl.exit.thread, label %if.end.i.i

extend_rsttbl.exit.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tbl, align 4
  br label %cleanup34

if.end.i.i:                                       ; preds = %if.then
  %sub.i.i = add nsw i32 %conv1.i44.i, -1
  %mul4.i.i = mul i32 %sub.i.i, %conv1.i
  %add5.i.i = add i32 %mul4.i.i, 24
  %12 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %6, ptr %call9.i.i.i.i, align 128
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #18
  %used6.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %used6.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %used6.i.i, align 2
  %free_goal.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %free_goal.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %free_goal.i.i, align 4
  %first_free.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 402653184, ptr %first_free.i.i, align 16
  %17 = tail call i32 @llvm.bswap.i32(i32 %add5.i.i) #18
  %last_free7.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %last_free7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_free7.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 1
  %add.ptr8.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %add5.i.i
  %cmp40.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr8.i.i
  br i1 %cmp40.i.i, label %for.body.preheader.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %add10.i.i = add nuw nsw i32 %conv1.i, 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %off.042.i.i = phi i32 [ %add15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add10.i.i, %for.body.preheader.i.i ]
  %e.041.i.i = phi ptr [ %add.ptr13.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %off.042.i.i) #18
  %20 = ptrtoint ptr %e.041.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %e.041.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %e.041.i.i, i32 %conv1.i
  %add15.i.i = add i32 %off.042.i.i, %conv1.i
  %cmp.i.i = icmp ult ptr %add.ptr13.i.i, %add.ptr8.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %add.ptr5.i = getelementptr %struct.RESTART_TABLE, ptr %1, i32 1
  %21 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr5.i, i32 %mul.i)
  %mul9.i = mul i32 %add.i, %conv1.i
  %add10.i = add i32 %mul9.i, 24
  %22 = tail call i32 @llvm.bswap.i32(i32 %add10.i) #18
  %23 = ptrtoint ptr %free_goal.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %free_goal.i.i, align 4
  %first_free.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not.i = icmp eq i32 %25, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %first_free.i.i, align 16
  %last_free.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %last_free.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_free.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #18
  %add.ptr16.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %29
  %30 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %8, ptr %add.ptr16.i, align 4
  br label %extend_rsttbl.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %8, ptr %first_free.i.i, align 16
  br label %extend_rsttbl.exit

extend_rsttbl.exit:                               ; preds = %if.else.i, %if.then13.i
  %total.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %total.i, align 4
  %total19.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %total19.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %total19.i, align 4
  tail call void @kfree(ptr noundef %1) #18
  %35 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i.i.i, ptr %tbl, align 4
  br label %if.end3

if.end3:                                          ; preds = %extend_rsttbl.exit, %entry.if.end3_crit_edge
  %rt.0 = phi ptr [ %call9.i.i.i.i, %extend_rsttbl.exit ], [ %1, %entry.if.end3_crit_edge ]
  %add.ptr = getelementptr i8, ptr %rt.0, i32 %vbo
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp4 = icmp eq i32 %37, -1
  br i1 %cmp4, label %if.end3.cleanup34_crit_edge, label %if.end7

if.end3.cleanup34_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup34

if.end7:                                          ; preds = %if.end3
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt.0, i32 0, i32 5
  %38 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %first_free, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %add.ptr8 = getelementptr i8, ptr %rt.0, i32 %40
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %vbo)
  %cmp9 = icmp eq i32 %40, %vbo
  br i1 %cmp9, label %if.then11, label %if.end7.for.cond_crit_edge

if.end7.for.cond_crit_edge:                       ; preds = %if.end7
  br label %for.cond

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %41 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr8, align 4
  %43 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %first_free, align 4
  br label %skip_looking

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end7.for.cond_crit_edge
  %off.0 = phi i32 [ %46, %for.cond.for.cond_crit_edge ], [ %40, %if.end7.for.cond_crit_edge ]
  %e.0 = phi ptr [ %add.ptr14, %for.cond.for.cond_crit_edge ], [ %add.ptr8, %if.end7.for.cond_crit_edge ]
  %44 = ptrtoint ptr %e.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %e.0, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %add.ptr14 = getelementptr i8, ptr %rt.0, i32 %46
  %cmp15 = icmp eq i32 %46, %vbo
  br i1 %cmp15, label %if.then17, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond

if.then17:                                        ; preds = %for.cond
  %47 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr14, align 4
  %49 = ptrtoint ptr %e.0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %e.0, align 4
  %last_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt.0, i32 0, i32 6
  %50 = ptrtoint ptr %last_free to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %last_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %45)
  %cmp18 = icmp eq i32 %51, %45
  br i1 %cmp18, label %if.then20, label %if.then17.cleanup24.thread_crit_edge

if.then17.cleanup24.thread_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24.thread

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #20
  %52 = tail call i32 @llvm.bswap.i32(i32 %off.0)
  %53 = ptrtoint ptr %last_free to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %last_free, align 4
  br label %cleanup24.thread

cleanup24.thread:                                 ; preds = %if.then20, %if.then17.cleanup24.thread_crit_edge
  %54 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr = load i32, ptr %first_free, align 4
  br label %skip_looking

skip_looking:                                     ; preds = %cleanup24.thread, %if.then11
  %55 = phi i32 [ %.pr, %cleanup24.thread ], [ %42, %if.then11 ]
  %e.1 = phi ptr [ %add.ptr14, %cleanup24.thread ], [ %add.ptr8, %if.then11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool29.not = icmp eq i32 %55, 0
  br i1 %tobool29.not, label %if.then30, label %skip_looking.if.end32_crit_edge

skip_looking.if.end32_crit_edge:                  ; preds = %skip_looking
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end32

if.then30:                                        ; preds = %skip_looking
  call void @__sanitizer_cov_trace_pc() #20
  %last_free31 = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt.0, i32 0, i32 6
  %56 = ptrtoint ptr %last_free31 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %last_free31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %skip_looking.if.end32_crit_edge
  %57 = call ptr @memset(ptr %e.1, i32 0, i32 %conv1.i)
  %58 = ptrtoint ptr %e.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %e.1, align 4
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %rt.0, i32 0, i32 2
  %59 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %total, align 2
  %61 = tail call i16 @llvm.bswap.i16(i16 %60) #18
  %add.i75 = add i16 %61, 1
  %62 = tail call i16 @llvm.bswap.i16(i16 %add.i75) #18
  %63 = ptrtoint ptr %total to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %total, align 2
  br label %cleanup34

cleanup34:                                        ; preds = %if.end32, %if.end3.cleanup34_crit_edge, %extend_rsttbl.exit.thread
  %retval.1 = phi ptr [ %e.1, %if.end32 ], [ %add.ptr, %if.end3.cleanup34_crit_edge ], [ null, %extend_rsttbl.exit.thread ]
  ret ptr %retval.1
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_dp(ptr noundef %dptbl, i32 noundef %target_attr, i64 noundef %vcn) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 @llvm.bswap.i32(i32 %target_attr)
  %tobool.not.i = icmp eq ptr %dptbl, null
  %total.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %dptbl, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %dptbl, i32 24
  %used.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %dptbl, i32 0, i32 1
  %1 = ptrtoint ptr %dptbl to i32
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %dp.0 = phi ptr [ null, %entry ], [ %e.138.i, %while.cond.backedge ]
  br i1 %tobool.not.i, label %cond.end.i, label %cond.end.thread.i

cond.end.i:                                       ; preds = %while.cond
  %tobool2.not.i = icmp eq ptr %dp.0, null
  br i1 %tobool2.not.i, label %cond.end.i.cleanup7_crit_edge, label %cond.end.i.if.else.i_crit_edge

cond.end.i.if.else.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

cond.end.i.cleanup7_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

cond.end.thread.i:                                ; preds = %while.cond
  %2 = ptrtoint ptr %dptbl to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dptbl, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #18
  %phi.cast.i = zext i16 %4 to i32
  %tobool2.not30.i = icmp eq ptr %dp.0, null
  br i1 %tobool2.not30.i, label %lor.lhs.false.i, label %cond.end.thread.i.if.else.i_crit_edge

cond.end.thread.i.if.else.i_crit_edge:            ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

lor.lhs.false.i:                                  ; preds = %cond.end.thread.i
  %5 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool4.not.i = icmp eq i16 %6, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.cleanup7_crit_edge, label %lor.lhs.false.i.if.end8.i_crit_edge

lor.lhs.false.i.if.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

lor.lhs.false.i.cleanup7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

if.else.i:                                        ; preds = %cond.end.thread.i.if.else.i_crit_edge, %cond.end.i.if.else.i_crit_edge
  %cond31.i = phi i32 [ %phi.cast.i, %cond.end.thread.i.if.else.i_crit_edge ], [ 0, %cond.end.i.if.else.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %dp.0, i32 %cond31.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %lor.lhs.false.i.if.end8.i_crit_edge
  %cond32.i = phi i32 [ %cond31.i, %if.else.i ], [ %phi.cast.i, %lor.lhs.false.i.if.end8.i_crit_edge ]
  %e.0.i = phi ptr [ %add.ptr7.i, %if.else.i ], [ %add.ptr.i, %lor.lhs.false.i.if.end8.i_crit_edge ]
  %7 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %used.i.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #18
  %conv.i.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %dptbl to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dptbl, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #18
  %conv1.i.i = zext i16 %12 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i.i
  %add.i.i = add nuw i32 %mul.i.i, 24
  %13 = ptrtoint ptr %e.0.i to i32
  %sub36.i = sub i32 %13, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i, i32 %add.i.i)
  %cmp37.i = icmp ult i32 %sub36.i, %add.i.i
  br i1 %cmp37.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.cleanup7_crit_edge

if.end8.i.cleanup7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %e.138.i = phi ptr [ %add.ptr15.i, %for.inc.i.for.body.i_crit_edge ], [ %e.0.i, %if.end8.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %e.138.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e.138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp10.i = icmp eq i32 %15, -1
  br i1 %cmp10.i, label %enum_rstbl.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add.ptr15.i = getelementptr i8, ptr %e.138.i, i32 %cond32.i
  %16 = ptrtoint ptr %add.ptr15.i to i32
  %sub.i = sub i32 %16, %1
  %cmp.i = icmp ult i32 %sub.i, %add.i.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup7_crit_edge

for.inc.i.cleanup7_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

enum_rstbl.exit:                                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %e.138.i, null
  br i1 %tobool.not, label %enum_rstbl.exit.cleanup7_crit_edge, label %while.body

enum_rstbl.exit.cleanup7_crit_edge:               ; preds = %enum_rstbl.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

while.body:                                       ; preds = %enum_rstbl.exit
  %vcn1 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 4
  %17 = ptrtoint ptr %vcn1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %vcn1, align 8
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %target_attr2 = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 1
  %20 = ptrtoint ptr %target_attr2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target_attr2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %0)
  %cmp = icmp ne i32 %21, %0
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %vcn)
  %cmp3.not = icmp ugt i64 %19, %vcn
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3.not
  br i1 %or.cond, label %while.body.while.cond.backedge_crit_edge, label %land.lhs.true4

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.lhs.true4.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

land.lhs.true4:                                   ; preds = %while.body
  %lcns_follow = getelementptr inbounds %struct.DIR_PAGE_ENTRY, ptr %e.138.i, i32 0, i32 3
  %22 = ptrtoint ptr %lcns_follow to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lcns_follow, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %conv = zext i32 %24 to i64
  %add = add i64 %19, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %vcn)
  %cmp5 = icmp ugt i64 %add, %vcn
  br i1 %cmp5, label %land.lhs.true4.cleanup7_crit_edge, label %land.lhs.true4.while.cond.backedge_crit_edge

land.lhs.true4.while.cond.backedge_crit_edge:     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

land.lhs.true4.cleanup7_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

cleanup7:                                         ; preds = %land.lhs.true4.cleanup7_crit_edge, %enum_rstbl.exit.cleanup7_crit_edge, %for.inc.i.cleanup7_crit_edge, %if.end8.i.cleanup7_crit_edge, %lor.lhs.false.i.cleanup7_crit_edge, %cond.end.i.cleanup7_crit_edge
  %retval.2 = phi ptr [ null, %for.inc.i.cleanup7_crit_edge ], [ %e.138.i, %land.lhs.true4.cleanup7_crit_edge ], [ null, %if.end8.i.cleanup7_crit_edge ], [ null, %cond.end.i.cleanup7_crit_edge ], [ null, %lor.lhs.false.i.cleanup7_crit_edge ], [ null, %enum_rstbl.exit.cleanup7_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_rsttbl_idx(ptr nocapture noundef %tbl) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #18
  %used.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %used.i.i, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #18
  %conv.i.i = zext i16 %9 to i32
  %conv1.i.i = zext i16 %6 to i32
  %mul.i.i = mul nuw i32 %conv.i.i, %conv1.i.i
  %add.i.i = add nuw i32 %mul.i.i, 24
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #18
  %conv3.i = add i16 %9, 16
  %conv1.i44.i = zext i16 %conv3.i to i32
  %mul.i45.i = mul nuw i32 %conv1.i44.i, %conv1.i.i
  %add.i46.i = add nuw i32 %mul.i45.i, 24
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i46.i, i32 noundef 3392) #22
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %extend_rsttbl.exit.thread, label %if.end.i.i

extend_rsttbl.exit.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tbl, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %sub.i.i = add nsw i32 %conv1.i44.i, -1
  %mul4.i.i = mul i32 %sub.i.i, %conv1.i.i
  %add5.i.i = add i32 %mul4.i.i, 24
  %12 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %call9.i.i.i.i, align 128
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #18
  %used6.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %used6.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %used6.i.i, align 2
  %free_goal.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %free_goal.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %free_goal.i.i, align 4
  %first_free.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 402653184, ptr %first_free.i.i, align 16
  %17 = tail call i32 @llvm.bswap.i32(i32 %add5.i.i) #18
  %last_free7.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %last_free7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %last_free7.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 1
  %add.ptr8.i.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %add5.i.i
  %cmp40.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr8.i.i
  br i1 %cmp40.i.i, label %for.body.preheader.i.i, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.preheader.i.i:                           ; preds = %if.end.i.i
  %add10.i.i = add nuw nsw i32 %conv1.i.i, 24
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %off.042.i.i = phi i32 [ %add15.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add10.i.i, %for.body.preheader.i.i ]
  %e.041.i.i = phi ptr [ %add.ptr13.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.preheader.i.i ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %off.042.i.i) #18
  %20 = ptrtoint ptr %e.041.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %e.041.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %e.041.i.i, i32 %conv1.i.i
  %add15.i.i = add i32 %off.042.i.i, %conv1.i.i
  %cmp.i.i = icmp ult ptr %add.ptr13.i.i, %add.ptr8.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end.i_crit_edge

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %add.ptr5.i = getelementptr %struct.RESTART_TABLE, ptr %1, i32 1
  %21 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr5.i, i32 %mul.i.i)
  %22 = ptrtoint ptr %free_goal.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %free_goal.i.i, align 4
  %23 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not.i = icmp eq i32 %24, 0
  br i1 %tobool12.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %first_free.i.i, align 16
  %last_free.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %last_free.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %last_free.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #18
  %add.ptr16.i = getelementptr i8, ptr %call9.i.i.i.i, i32 %28
  %29 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %10, ptr %add.ptr16.i, align 4
  br label %extend_rsttbl.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %10, ptr %first_free.i.i, align 16
  br label %extend_rsttbl.exit

extend_rsttbl.exit:                               ; preds = %if.else.i, %if.then13.i
  %total.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %total.i, align 4
  %total19.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %total19.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %total19.i, align 4
  tail call void @kfree(ptr noundef %1) #18
  %34 = ptrtoint ptr %tbl to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i.i.i, ptr %tbl, align 4
  br label %if.end3

if.end3:                                          ; preds = %extend_rsttbl.exit, %entry.if.end3_crit_edge
  %t.0 = phi ptr [ %1, %entry.if.end3_crit_edge ], [ %call9.i.i.i.i, %extend_rsttbl.exit ]
  %first_free4 = getelementptr inbounds %struct.RESTART_TABLE, ptr %t.0, i32 0, i32 5
  %35 = ptrtoint ptr %first_free4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %first_free4, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %add.ptr = getelementptr i8, ptr %t.0, i32 %37
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 4
  %40 = ptrtoint ptr %first_free4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %first_free4, align 4
  %41 = ptrtoint ptr %t.0 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %t.0, align 4
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv = zext i16 %43 to i32
  %44 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv)
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %first_free4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %first_free4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool7.not = icmp eq i32 %47, 0
  br i1 %tobool7.not, label %if.then8, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %last_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %t.0, i32 0, i32 6
  %48 = ptrtoint ptr %last_free to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %last_free, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end3.if.end9_crit_edge
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %t.0, i32 0, i32 2
  %49 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %total, align 2
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #18
  %add.i = add i16 %51, 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %add.i) #18
  %53 = ptrtoint ptr %total to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %total, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %extend_rsttbl.exit.thread
  %retval.0 = phi ptr [ %add.ptr, %if.end9 ], [ null, %extend_rsttbl.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @extend_rsttbl(ptr noundef %tbl, i32 noundef %add, i32 noundef %free_goal) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tbl, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %used.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %tbl, i32 0, i32 1
  %3 = ptrtoint ptr %used.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %used.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #18
  %conv.i = zext i16 %5 to i32
  %conv1.i = zext i16 %2 to i32
  %mul.i = mul nuw i32 %conv.i, %conv1.i
  %add.i = add nuw i32 %mul.i, 24
  %6 = tail call i32 @llvm.bswap.i32(i32 %add.i)
  %7 = trunc i32 %add to i16
  %conv3 = add i16 %5, %7
  %conv1.i44 = zext i16 %conv3 to i32
  %mul.i45 = mul nuw i32 %conv1.i44, %conv1.i
  %add.i46 = add nuw i32 %mul.i45, 24
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i46, i32 noundef 3392) #22
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %sub.i = add nsw i32 %conv1.i44, -1
  %mul4.i = mul i32 %sub.i, %conv1.i
  %add5.i = add i32 %mul4.i, 24
  %8 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %1, ptr %call9.i.i.i, align 128
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv3) #18
  %used6.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %used6.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %used6.i, align 2
  %free_goal.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %free_goal.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %free_goal.i, align 4
  %first_free.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 402653184, ptr %first_free.i, align 16
  %13 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #18
  %last_free7.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %last_free7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %last_free7.i, align 4
  %add.ptr.i = getelementptr %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 1
  %add.ptr8.i = getelementptr i8, ptr %call9.i.i.i, i32 %add5.i
  %cmp40.i = icmp ult ptr %add.ptr.i, %add.ptr8.i
  br i1 %cmp40.i, label %for.body.preheader.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end.i
  %add10.i = add nuw nsw i32 %conv1.i, 24
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %off.042.i = phi i32 [ %add15.i, %for.body.i.for.body.i_crit_edge ], [ %add10.i, %for.body.preheader.i ]
  %e.041.i = phi ptr [ %add.ptr13.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %15 = tail call i32 @llvm.bswap.i32(i32 %off.042.i) #18
  %16 = ptrtoint ptr %e.041.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %e.041.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %e.041.i, i32 %conv1.i
  %add15.i = add i32 %off.042.i, %conv1.i
  %cmp.i = icmp ult ptr %add.ptr13.i, %add.ptr8.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %add.ptr5 = getelementptr %struct.RESTART_TABLE, ptr %tbl, i32 1
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr5, i32 %mul.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_goal)
  %cmp = icmp eq i32 %free_goal, -1
  %mul9 = mul i32 %conv1.i, %free_goal
  %add10 = add i32 %mul9, 24
  %18 = tail call i32 @llvm.bswap.i32(i32 %add10)
  %cond = select i1 %cmp, i32 -1, i32 %18
  %19 = ptrtoint ptr %free_goal.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %free_goal.i, align 4
  %first_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %tbl, i32 0, i32 5
  %20 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %22 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %first_free.i, align 16
  %last_free = getelementptr inbounds %struct.RESTART_TABLE, ptr %tbl, i32 0, i32 6
  %23 = ptrtoint ptr %last_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_free, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add.ptr16 = getelementptr i8, ptr %call9.i.i.i, i32 %25
  %26 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %6, ptr %add.ptr16, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %6, ptr %first_free.i, align 16
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %total = getelementptr inbounds %struct.RESTART_TABLE, ptr %tbl, i32 0, i32 2
  %28 = ptrtoint ptr %total to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %total, align 4
  %total19 = getelementptr inbounds %struct.RESTART_TABLE, ptr %call9.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %total19 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %total19, align 4
  tail call void @kfree(ptr noundef %tbl) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret ptr %call9.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_iget5(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @attr_create_nonres_log(ptr nocapture noundef readonly %sbi, i32 noundef %type, ptr nocapture noundef readonly %name, i32 noundef %name_len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %name_len, 1
  %add = add i32 %mul, 7
  %and = and i32 %add, -8
  %add4 = add i32 %and, 64
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 3392) #22
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %call9.i.i, align 128
  %1 = tail call i32 @llvm.bswap.i32(i32 %add4)
  %size7 = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %size7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %size7, align 4
  %flags8 = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags8, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %non_res to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %non_res, align 8
  %conv9 = trunc i32 %name_len to i8
  %name_len10 = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name_len10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv9, ptr %name_len10, align 1
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 4
  %6 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %7 to i64
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %8 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %9 to i64
  %shr.i = lshr i64 %conv.i, %sh_prom.i
  %sub = add nsw i64 %shr.i, -1
  %10 = tail call i64 @llvm.bswap.i64(i64 %sub)
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 7, i32 0, i32 1
  %11 = ptrtoint ptr %evcn to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %evcn, align 8
  %12 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cluster_mask.i, align 4
  %conv.i2 = zext i32 %13 to i64
  %cluster_mask_inv.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 5
  %14 = ptrtoint ptr %cluster_mask_inv.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %cluster_mask_inv.i, align 8
  %and.i = and i64 %15, %conv.i2
  %16 = tail call i64 @llvm.bswap.i64(i64 %and.i)
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 7, i32 0, i32 5
  %17 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %alloc_size, align 8
  %data_size = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 7, i32 0, i32 6
  %name_off23 = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 4
  %18 = call ptr @memset(ptr %data_size, i32 0, i32 16)
  %19 = ptrtoint ptr %name_off23 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16384, ptr %name_off23, align 2
  %20 = trunc i32 %and to i16
  %conv25 = add i16 %20, 64
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv25)
  %run_off26 = getelementptr inbounds %struct.ATTRIB, ptr %call9.i.i, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %run_off26 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %run_off26, align 32
  %add.ptr27 = getelementptr i8, ptr %call9.i.i, i32 64
  %23 = call ptr @memcpy(ptr %add.ptr27, ptr %name, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_add_entry(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @can_skip_action(i32 noundef %op) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %op, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 10, label %entry.return_crit_edge1
    i32 23, label %entry.return_crit_edge2
    i32 24, label %entry.return_crit_edge3
    i32 25, label %entry.return_crit_edge4
    i32 26, label %entry.return_crit_edge5
    i32 27, label %entry.return_crit_edge6
    i32 1, label %entry.return_crit_edge7
    i32 28, label %entry.return_crit_edge8
    i32 29, label %entry.return_crit_edge9
    i32 30, label %entry.return_crit_edge10
    i32 31, label %entry.return_crit_edge11
    i32 32, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_action(ptr nocapture noundef %log, ptr nocapture noundef readonly %oe, ptr noundef readonly %lrh, i32 noundef %op, ptr noundef readonly %data, i32 noundef %dlen, i32 noundef %rec_len, ptr noundef readonly %rlsn) unnamed_addr #0 align 64 {
entry:
  %mi2 = alloca ptr, align 4
  %mi2_child = alloca ptr, align 4
  %t64 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %log, align 8
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2) #18
  %4 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %mi2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi2_child) #18
  %5 = ptrtoint ptr %mi2_child to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mi2_child, align 4
  %record_size3 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %record_size3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %record_size3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t64) #18
  %8 = ptrtoint ptr %t64 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %t64, align 8, !annotation !15
  %record_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 8
  %9 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %record_off, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %attr_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 9
  %12 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %attr_off, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %cluster_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 10
  %15 = ptrtoint ptr %cluster_off to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cluster_off, align 4
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  %conv = zext i16 %17 to i64
  %shl = shl nuw nsw i64 %conv, 9
  %target_vcn = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 12
  %18 = ptrtoint ptr %target_vcn to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %target_vcn, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %22 to i64
  %shl5 = shl i64 %20, %sh_prom
  %add = add i64 %shl5, %shl
  %ptr = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %oe, i32 0, i32 9
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ptr, align 8
  %25 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %op, label %do.end [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge1628
    i32 4, label %entry.sw.bb_crit_edge1629
    i32 5, label %entry.sw.bb_crit_edge1630
    i32 6, label %entry.sw.bb_crit_edge1631
    i32 7, label %entry.sw.bb_crit_edge1632
    i32 9, label %entry.sw.bb_crit_edge1633
    i32 11, label %entry.sw.bb_crit_edge1634
    i32 12, label %entry.sw.bb_crit_edge1635
    i32 13, label %entry.sw.bb_crit_edge1636
    i32 17, label %entry.sw.bb_crit_edge1637
    i32 19, label %entry.sw.bb_crit_edge1638
    i32 33, label %entry.sw.bb_crit_edge1639
    i32 37, label %entry.sw.bb_crit_edge1640
    i32 8, label %entry.sw.bb89_crit_edge
    i32 14, label %entry.sw.bb89_crit_edge1641
    i32 15, label %entry.sw.bb89_crit_edge1642
    i32 16, label %entry.sw.bb89_crit_edge1643
    i32 18, label %entry.sw.bb89_crit_edge1644
    i32 20, label %entry.sw.bb89_crit_edge1645
    i32 21, label %entry.sw.bb89_crit_edge1646
    i32 22, label %entry.sw.bb89_crit_edge1647
    i32 34, label %entry.sw.bb89_crit_edge1648
  ]

entry.sw.bb89_crit_edge1648:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1647:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1646:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1645:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1644:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1643:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1642:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge1641:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb89_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb89

entry.sw.bb_crit_edge1640:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1639:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1638:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1637:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1636:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1635:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1634:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1633:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1632:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1631:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1630:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1629:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge1628:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge1628, %entry.sw.bb_crit_edge1629, %entry.sw.bb_crit_edge1630, %entry.sw.bb_crit_edge1631, %entry.sw.bb_crit_edge1632, %entry.sw.bb_crit_edge1633, %entry.sw.bb_crit_edge1634, %entry.sw.bb_crit_edge1635, %entry.sw.bb_crit_edge1636, %entry.sw.bb_crit_edge1637, %entry.sw.bb_crit_edge1638, %entry.sw.bb_crit_edge1639, %entry.sw.bb_crit_edge1640
  %record_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %record_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %record_bits, align 1
  %sh_prom7 = zext i8 %27 to i64
  %shr = lshr i64 %add, %sh_prom7
  %conv8 = trunc i64 %shr to i32
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %call = tail call ptr @ilookup(ptr noundef %29, i32 noundef %conv8) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr i8, ptr %call, i32 -360
  %30 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %mi2, align 4
  br label %if.end26

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp = icmp eq i32 %op, 2
  br i1 %cmp, label %if.then12, label %if.else20

if.then12:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3392, i32 noundef 72) #21
  %32 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %mi2, align 4
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %if.then12.cleanup_crit_edge, label %if.end

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %if.then12
  %call16 = tail call i32 @mi_format_new(ptr noundef nonnull %call7.i.i, ptr noundef %3, i32 noundef %conv8, i16 noundef zeroext 0, i1 noundef zeroext false) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end26.thread, label %if.end.if.else813_crit_edge

if.end.if.else813_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else813

if.end26.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %33 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mi2, align 4
  %mrec1550 = getelementptr inbounds %struct.mft_inode, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %mrec1550 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mrec1550, align 4
  br label %if.end47

if.else20:                                        ; preds = %if.else
  %call21 = call i32 @mi_get(ptr noundef %3, i32 noundef %conv8, ptr noundef nonnull %mi2) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else20.if.end26_crit_edge, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else20.if.end26_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.end26:                                         ; preds = %if.else20.if.end26_crit_edge, %if.then
  %37 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mi2, align 4
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mrec, align 4
  %41 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %op, label %if.then33 [
    i32 3, label %if.end26.sw.bb159_crit_edge
    i32 2, label %if.end26.if.end47_crit_edge
  ]

if.end26.if.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.end26.sw.bb159_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb159

if.then33:                                        ; preds = %if.end26
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %43)
  %cmp34 = icmp eq i32 %43, 1111572804
  br i1 %cmp34, label %if.then33.dirty_vol_crit_edge, label %if.end37

if.then33.dirty_vol_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end37:                                         ; preds = %if.then33
  %tobool.not.i = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i, label %if.end37.if.end42_crit_edge, label %if.end.i1424

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.end.i1424:                                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %43)
  %cmp.i1423 = icmp eq i32 %43, 1213156421
  br i1 %cmp.i1423, label %if.end.i1424.out_crit_edge, label %check_lsn.exit

if.end.i1424.out_crit_edge:                       ; preds = %if.end.i1424
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit:                                   ; preds = %if.end.i1424
  %lsn1.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %40, i32 0, i32 3
  %44 = ptrtoint ptr %lsn1.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %lsn1.i, align 8
  %46 = call i64 @llvm.bswap.i64(i64 %45) #18
  %47 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %46)
  %cmp4.i.not = icmp ugt i64 %48, %46
  br i1 %cmp4.i.not, label %check_lsn.exit.if.end42_crit_edge, label %check_lsn.exit.out_crit_edge

check_lsn.exit.out_crit_edge:                     ; preds = %check_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit.if.end42_crit_edge:                ; preds = %check_lsn.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end42

if.end42:                                         ; preds = %check_lsn.exit.if.end42_crit_edge, %if.end37.if.end42_crit_edge
  %fix_num.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %40, i32 0, i32 2
  %49 = ptrtoint ptr %fix_num.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %fix_num.i, align 2
  %51 = call i16 @llvm.bswap.i16(i16 %50) #18
  %attr_off.i = getelementptr inbounds %struct.MFT_REC, ptr %40, i32 0, i32 3
  %52 = ptrtoint ptr %attr_off.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %attr_off.i, align 4
  %54 = call i16 @llvm.bswap.i16(i16 %53) #18
  %55 = ptrtoint ptr %record_size3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %record_size3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179208773, i32 %43)
  %cmp.not.i = icmp eq i32 %43, 1179208773
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end42.dirty_vol_crit_edge

if.end42.dirty_vol_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false.i:                                  ; preds = %if.end42
  %fix_off.i = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %40, i32 0, i32 1
  %57 = ptrtoint ptr %fix_off.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %fix_off.i, align 4
  %59 = call i16 @llvm.bswap.i16(i16 %58) #18
  %conv.i = zext i16 %59 to i32
  %60 = lshr i32 %56, 8
  %add.i = and i32 %60, 16777214
  %sub.i = sub nsw i32 510, %add.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp3.i = icmp ult i32 %sub.i, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false.i.dirty_vol_crit_edge, label %lor.lhs.false5.i

lor.lhs.false.i.dirty_vol_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i
  %conv6.i = zext i16 %51 to i32
  %sub7.i = shl nuw nsw i32 %conv6.i, 9
  %mul8.i = add nsw i32 %sub7.i, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8.i, i32 %56)
  %cmp9.not.i = icmp eq i32 %mul8.i, %56
  br i1 %cmp9.not.i, label %lor.lhs.false11.i, label %lor.lhs.false5.i.dirty_vol_crit_edge

lor.lhs.false5.i.dirty_vol_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false11.i:                                ; preds = %lor.lhs.false5.i
  %conv12.i = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %54)
  %cmp13.i = icmp ult i16 %54, 42
  %sub18.i = add i32 %56, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %conv12.i)
  %cmp19.i = icmp ult i32 %sub18.i, %conv12.i
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %cmp19.i
  br i1 %or.cond.i, label %lor.lhs.false11.i.dirty_vol_crit_edge, label %lor.lhs.false21.i

lor.lhs.false11.i.dirty_vol_crit_edge:            ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false21.i:                                ; preds = %lor.lhs.false11.i
  %flags.i.i = getelementptr inbounds %struct.MFT_REC, ptr %40, i32 0, i32 4
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags.i.i, align 2
  %63 = and i16 %62, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.i.not.i = icmp eq i16 %63, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false21.i.dirty_vol_crit_edge, label %lor.lhs.false22.i

lor.lhs.false21.i.dirty_vol_crit_edge:            ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false22.i:                                ; preds = %lor.lhs.false21.i
  %total.i = getelementptr inbounds %struct.MFT_REC, ptr %40, i32 0, i32 6
  %64 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %total.i, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %56)
  %cmp23.not.i = icmp eq i32 %66, %56
  br i1 %cmp23.not.i, label %if.end.i1426, label %lor.lhs.false22.i.dirty_vol_crit_edge

lor.lhs.false22.i.dirty_vol_crit_edge:            ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end.i1426:                                     ; preds = %lor.lhs.false22.i
  %add.ptr.i1425 = getelementptr i8, ptr %40, i32 %conv12.i
  %67 = ptrtoint ptr %add.ptr.i1425 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i1425, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %cmp26.not4.i = icmp eq i32 %68, -1
  br i1 %cmp26.not4.i, label %if.end.i1426.if.end45_crit_edge, label %for.body.lr.ph.i

if.end.i1426.if.end45_crit_edge:                  ; preds = %if.end.i1426
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

for.body.lr.ph.i:                                 ; preds = %if.end.i1426
  %69 = ptrtoint ptr %40 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %70 = phi i32 [ %68, %for.body.lr.ph.i ], [ %118, %for.inc.i.for.body.i_crit_edge ]
  %attr.05.i = phi ptr [ %add.ptr.i1425, %for.body.lr.ph.i ], [ %add.ptr31.i, %for.inc.i.for.body.i_crit_edge ]
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 1
  %71 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size.i.i, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #18
  %74 = ptrtoint ptr %record_size3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %record_size3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %75)
  %cmp.not.i.i = icmp ult i32 %73, %75
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.dirty_vol_crit_edge

for.body.i.dirty_vol_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %76 = ptrtoint ptr %attr.05.i to i32
  %sub.i.i = sub i32 %76, %69
  %add.i.i = add i32 %sub.i.i, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %75)
  %cmp2.not.i.i = icmp ult i32 %add.i.i, %75
  br i1 %cmp2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.dirty_vol_crit_edge

lor.lhs.false.i.i.dirty_vol_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %name_len.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 3
  %77 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %name_len.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i1427 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i1427, label %lor.lhs.false3.i.i.if.end.i.i1428_crit_edge, label %land.lhs.true.i.i

lor.lhs.false3.i.i.if.end.i.i1428_crit_edge:      ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i1428

land.lhs.true.i.i:                                ; preds = %lor.lhs.false3.i.i
  %conv.i.i = zext i8 %78 to i32
  %name_off.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 4
  %79 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %name_off.i.i, align 2
  %81 = call i16 @llvm.bswap.i16(i16 %80) #18
  %conv4.i.i = zext i16 %81 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 1
  %add7.i.i = add nuw nsw i32 %mul.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %73)
  %cmp8.i.i = icmp ugt i32 %add7.i.i, %73
  br i1 %cmp8.i.i, label %land.lhs.true.i.i.dirty_vol_crit_edge, label %land.lhs.true.i.i.if.end.i.i1428_crit_edge

land.lhs.true.i.i.if.end.i.i1428_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i1428

land.lhs.true.i.i.dirty_vol_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end.i.i1428:                                   ; preds = %land.lhs.true.i.i.if.end.i.i1428_crit_edge, %lor.lhs.false3.i.i.if.end.i.i1428_crit_edge
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 2
  %82 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %non_res.i.i, align 8
  %84 = zext i8 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %83, label %if.end.i.i1428.dirty_vol_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb20.i.i
  ]

if.end.i.i1428.dirty_vol_crit_edge:               ; preds = %if.end.i.i1428
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb.i.i:                                        ; preds = %if.end.i.i1428
  %85 = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 8
  %88 = call i32 @llvm.bswap.i32(i32 %87) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %73)
  %cmp11.not.i.i = icmp ult i32 %88, %73
  br i1 %cmp11.not.i.i, label %lor.lhs.false13.i.i, label %sw.bb.i.i.dirty_vol_crit_edge

sw.bb.i.i.dirty_vol_crit_edge:                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false13.i.i:                              ; preds = %sw.bb.i.i
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %85, i32 0, i32 1
  %89 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %data_off.i.i, align 4
  %91 = call i16 @llvm.bswap.i16(i16 %90) #18
  %conv14.i.i = zext i16 %91 to i32
  %add15.i.i = add i32 %88, %conv14.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i.i, i32 %73)
  %cmp16.i.i = icmp ugt i32 %add15.i.i, %73
  br i1 %cmp16.i.i, label %lor.lhs.false13.i.i.dirty_vol_crit_edge, label %sw.epilog.i.i

lor.lhs.false13.i.i.dirty_vol_crit_edge:          ; preds = %lor.lhs.false13.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb20.i.i:                                      ; preds = %if.end.i.i1428
  %92 = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7
  %data_size21.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7, i32 0, i32 6
  %93 = ptrtoint ptr %data_size21.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %data_size21.i.i, align 8
  %95 = call i64 @llvm.bswap.i64(i64 %94) #18
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %92, align 8
  %98 = call i64 @llvm.bswap.i64(i64 %97) #18
  %evcn23.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7, i32 0, i32 1
  %99 = ptrtoint ptr %evcn23.i.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %evcn23.i.i, align 8
  %101 = call i64 @llvm.bswap.i64(i64 %100) #18
  %add25.i.i = add i64 %101, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %add25.i.i)
  %cmp26.i.i = icmp ugt i64 %98, %add25.i.i
  br i1 %cmp26.i.i, label %sw.bb20.i.i.dirty_vol_crit_edge, label %lor.lhs.false28.i.i

sw.bb20.i.i.dirty_vol_crit_edge:                  ; preds = %sw.bb20.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false28.i.i:                              ; preds = %sw.bb20.i.i
  %run_off24.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7, i32 0, i32 2
  %102 = ptrtoint ptr %run_off24.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %run_off24.i.i, align 8
  %104 = call i16 @llvm.bswap.i16(i16 %103) #18
  %conv29.i.i = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %conv29.i.i)
  %cmp30.not.i.i = icmp ugt i32 %73, %conv29.i.i
  br i1 %cmp30.not.i.i, label %lor.lhs.false32.i.i, label %lor.lhs.false28.i.i.dirty_vol_crit_edge

lor.lhs.false28.i.i.dirty_vol_crit_edge:          ; preds = %lor.lhs.false28.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false32.i.i:                              ; preds = %lor.lhs.false28.i.i
  %valid_size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7, i32 0, i32 7
  %105 = ptrtoint ptr %valid_size.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %valid_size.i.i, align 8
  %107 = call i64 @llvm.bswap.i64(i64 %106) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %95)
  %cmp33.i.i = icmp ugt i64 %107, %95
  br i1 %cmp33.i.i, label %lor.lhs.false32.i.i.dirty_vol_crit_edge, label %lor.lhs.false35.i.i

lor.lhs.false32.i.i.dirty_vol_crit_edge:          ; preds = %lor.lhs.false32.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false35.i.i:                              ; preds = %lor.lhs.false32.i.i
  %alloc_size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.05.i, i32 0, i32 7, i32 0, i32 5
  %108 = ptrtoint ptr %alloc_size.i.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %alloc_size.i.i, align 8
  %110 = call i64 @llvm.bswap.i64(i64 %109) #18
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %110)
  %cmp36.i.i = icmp ugt i64 %95, %110
  br i1 %cmp36.i.i, label %lor.lhs.false35.i.i.dirty_vol_crit_edge, label %check_attr.exit.i

lor.lhs.false35.i.i.dirty_vol_crit_edge:          ; preds = %lor.lhs.false35.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.epilog.i.i:                                    ; preds = %lor.lhs.false13.i.i
  %111 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %70, label %sw.epilog.i.i.dirty_vol_crit_edge [
    i32 805306368, label %sw.bb50.i.i
    i32 -1879048192, label %sw.bb60.i.i
    i32 268435456, label %sw.bb62.i.i
    i32 536870912, label %sw.epilog.i.i.for.inc.i_crit_edge
    i32 1073741824, label %sw.epilog.i.i.for.inc.i_crit_edge1649
    i32 1342177280, label %sw.epilog.i.i.for.inc.i_crit_edge1650
    i32 1610612736, label %sw.epilog.i.i.for.inc.i_crit_edge1651
    i32 1879048192, label %sw.epilog.i.i.for.inc.i_crit_edge1652
    i32 -2147483648, label %sw.epilog.i.i.for.inc.i_crit_edge1653
    i32 -1610612736, label %sw.epilog.i.i.for.inc.i_crit_edge1654
    i32 -1342177280, label %sw.epilog.i.i.for.inc.i_crit_edge1655
    i32 -1073741824, label %sw.epilog.i.i.for.inc.i_crit_edge1656
    i32 -805306368, label %sw.epilog.i.i.for.inc.i_crit_edge1657
    i32 -536870912, label %sw.epilog.i.i.for.inc.i_crit_edge1658
    i32 -268435456, label %sw.epilog.i.i.for.inc.i_crit_edge1659
    i32 65536, label %sw.epilog.i.i.for.inc.i_crit_edge1660
  ]

sw.epilog.i.i.for.inc.i_crit_edge1660:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1659:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1658:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1657:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1656:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1655:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1654:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1653:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1652:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1651:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1650:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge1649:            ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.for.inc.i_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.epilog.i.i.dirty_vol_crit_edge:                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb50.i.i:                                      ; preds = %sw.epilog.i.i
  %add.ptr53.i.i = getelementptr i8, ptr %attr.05.i, i32 %conv14.i.i
  %name_len.i.i.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr53.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %name_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %name_len.i.i.i, align 8
  %conv.i.i.i = zext i8 %113 to i32
  %mul.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 66
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %add.i.i.i)
  %cmp56.i.i = icmp ult i32 %73, %add.i.i.i
  br i1 %cmp56.i.i, label %sw.bb50.i.i.dirty_vol_crit_edge, label %sw.bb50.i.i.for.inc.i_crit_edge

sw.bb50.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb50.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.bb50.i.i.dirty_vol_crit_edge:                  ; preds = %sw.bb50.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb60.i.i:                                      ; preds = %sw.epilog.i.i
  %call61.i.i = call fastcc zeroext i1 @check_index_root(ptr noundef %attr.05.i, ptr noundef %3) #18
  br i1 %call61.i.i, label %sw.bb60.i.i.for.inc.i_crit_edge, label %sw.bb60.i.i.dirty_vol_crit_edge

sw.bb60.i.i.dirty_vol_crit_edge:                  ; preds = %sw.bb60.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb60.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb60.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

sw.bb62.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %88)
  %cmp63.i.i = icmp ugt i32 %88, 71
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %87)
  %cmp66.not.i.i = icmp eq i32 %87, 805306368
  %or.cond.i.i = select i1 %cmp63.i.i, i1 true, i1 %cmp66.not.i.i
  br i1 %or.cond.i.i, label %sw.bb62.i.i.for.inc.i_crit_edge, label %sw.bb62.i.i.dirty_vol_crit_edge

sw.bb62.i.i.dirty_vol_crit_edge:                  ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

sw.bb62.i.i.for.inc.i_crit_edge:                  ; preds = %sw.bb62.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

check_attr.exit.i:                                ; preds = %lor.lhs.false35.i.i
  %conv40.i.i = trunc i64 %98 to i32
  %conv41.i.i = trunc i64 %101 to i32
  %add.ptr.i.i = getelementptr i8, ptr %attr.05.i, i32 %conv29.i.i
  %sub45.i.i = sub i32 %73, %conv29.i.i
  %call.i.i = call i32 @run_unpack(ptr noundef null, ptr noundef %3, i32 noundef 0, i32 noundef %conv40.i.i, i32 noundef %conv41.i.i, i32 noundef %conv40.i.i, ptr noundef %add.ptr.i.i, i32 noundef %sub45.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp46.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp46.i.i, label %check_attr.exit.i.for.inc.i_crit_edge, label %check_attr.exit.i.dirty_vol_crit_edge

check_attr.exit.i.dirty_vol_crit_edge:            ; preds = %check_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

check_attr.exit.i.for.inc.i_crit_edge:            ; preds = %check_attr.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.inc.i

for.inc.i:                                        ; preds = %check_attr.exit.i.for.inc.i_crit_edge, %sw.bb62.i.i.for.inc.i_crit_edge, %sw.bb60.i.i.for.inc.i_crit_edge, %sw.bb50.i.i.for.inc.i_crit_edge, %sw.epilog.i.i.for.inc.i_crit_edge, %sw.epilog.i.i.for.inc.i_crit_edge1649, %sw.epilog.i.i.for.inc.i_crit_edge1650, %sw.epilog.i.i.for.inc.i_crit_edge1651, %sw.epilog.i.i.for.inc.i_crit_edge1652, %sw.epilog.i.i.for.inc.i_crit_edge1653, %sw.epilog.i.i.for.inc.i_crit_edge1654, %sw.epilog.i.i.for.inc.i_crit_edge1655, %sw.epilog.i.i.for.inc.i_crit_edge1656, %sw.epilog.i.i.for.inc.i_crit_edge1657, %sw.epilog.i.i.for.inc.i_crit_edge1658, %sw.epilog.i.i.for.inc.i_crit_edge1659, %sw.epilog.i.i.for.inc.i_crit_edge1660
  %114 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size.i.i, align 4
  %116 = call i32 @llvm.bswap.i32(i32 %115) #18
  %add.ptr31.i = getelementptr i8, ptr %attr.05.i, i32 %116
  %117 = ptrtoint ptr %add.ptr31.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr31.i, align 8
  %cmp26.not.i = icmp eq i32 %118, -1
  br i1 %cmp26.not.i, label %for.inc.i.if.end45_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.if.end45_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

if.end45:                                         ; preds = %for.inc.i.if.end45_crit_edge, %if.end.i1426.if.end45_crit_edge
  %conv46 = zext i16 %11 to i32
  %add.ptr = getelementptr i8, ptr %40, i32 %conv46
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end26.if.end47_crit_edge, %if.end26.thread
  %119 = phi ptr [ %40, %if.end45 ], [ %40, %if.end26.if.end47_crit_edge ], [ %36, %if.end26.thread ]
  %attr.0 = phi ptr [ %add.ptr, %if.end45 ], [ null, %if.end26.if.end47_crit_edge ], [ null, %if.end26.thread ]
  %parent_ref.i = getelementptr inbounds %struct.MFT_REC, ptr %119, i32 0, i32 7
  %120 = ptrtoint ptr %parent_ref.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %parent_ref.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i1430 = icmp eq i32 %121, 0
  br i1 %tobool.not.i1430, label %land.lhs.true.i, label %if.end47.is_rec_base.exit_crit_edge

if.end47.is_rec_base.exit_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %is_rec_base.exit

land.lhs.true.i:                                  ; preds = %if.end47
  %high.i = getelementptr inbounds %struct.MFT_REC, ptr %119, i32 0, i32 7, i32 1
  %122 = ptrtoint ptr %high.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %high.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool1.not.i = icmp eq i16 %123, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.is_rec_base.exit_crit_edge

land.lhs.true.i.is_rec_base.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %is_rec_base.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %119, i32 0, i32 7, i32 2
  %124 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %seq.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool2.not.i = icmp eq i16 %125, 0
  br label %is_rec_base.exit

is_rec_base.exit:                                 ; preds = %land.rhs.i, %land.lhs.true.i.is_rec_base.exit_crit_edge, %if.end47.is_rec_base.exit_crit_edge
  %126 = phi i1 [ false, %land.lhs.true.i.is_rec_base.exit_crit_edge ], [ false, %if.end47.is_rec_base.exit_crit_edge ], [ %tobool2.not.i, %land.rhs.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %op)
  %cmp50 = icmp eq i32 %op, 2
  %or.cond = or i1 %cmp50, %126
  br i1 %or.cond, label %is_rec_base.exit.sw.epilog_crit_edge, label %if.end53

is_rec_base.exit.sw.epilog_crit_edge:             ; preds = %is_rec_base.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end53:                                         ; preds = %is_rec_base.exit
  %127 = call i32 @llvm.bswap.i32(i32 %121) #18
  %128 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %3, align 8
  %call57 = call ptr @ntfs_iget5(ptr noundef %129, ptr noundef %parent_ref.i, ptr noundef null) #18
  %cmp.i1431 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1431, label %if.end53.sw.epilog_crit_edge, label %if.end60

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.end60:                                         ; preds = %if.end53
  %call61 = call zeroext i1 @is_bad_inode(ptr noundef %call57) #18
  br i1 %call61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  call void @iput(ptr noundef %call57) #18
  br label %sw.epilog

if.end63:                                         ; preds = %if.end60
  %add.ptr.i1432 = getelementptr i8, ptr %call57, i32 -360
  %call65 = call i32 @ni_load_mi_ex(ptr noundef %add.ptr.i1432, i32 noundef %conv8, ptr noundef nonnull %mi2_child) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.else68, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #20
  call void @iput(ptr noundef %call57) #18
  br label %sw.epilog

if.else68:                                        ; preds = %if.end63
  %130 = ptrtoint ptr %mi2_child to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mi2_child, align 4
  %mrec69 = getelementptr inbounds %struct.mft_inode, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %mrec69 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mrec69, align 4
  %134 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mi2, align 4
  %mrec70 = getelementptr inbounds %struct.mft_inode, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %mrec70 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mrec70, align 4
  %cmp71.not = icmp eq ptr %133, %137
  br i1 %cmp71.not, label %if.else68.if.end77_crit_edge, label %if.then73

if.else68.if.end77_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.then73:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #20
  %138 = ptrtoint ptr %record_size3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %record_size3, align 8
  %140 = call ptr @memcpy(ptr %133, ptr %137, i32 %139)
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.else68.if.end77_crit_edge
  br i1 %tobool.not, label %if.else80, label %if.then79

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  call void @iput(ptr noundef nonnull %call) #18
  br label %if.end84

if.else80:                                        ; preds = %if.end77
  %141 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mi2, align 4
  %tobool81.not = icmp eq ptr %142, null
  br i1 %tobool81.not, label %if.else80.if.end84_crit_edge, label %if.then82

if.else80.if.end84_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end84

if.then82:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #20
  call void @mi_put(ptr noundef nonnull %142) #18
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %if.else80.if.end84_crit_edge, %if.then79
  %143 = ptrtoint ptr %mi2_child to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mi2_child, align 4
  %145 = ptrtoint ptr %mi2 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %mi2, align 4
  %mrec85 = getelementptr inbounds %struct.mft_inode, ptr %144, i32 0, i32 2
  %146 = ptrtoint ptr %mrec85 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mrec85, align 4
  %conv86 = zext i16 %11 to i32
  %add.ptr87 = getelementptr i8, ptr %147, i32 %conv86
  br label %sw.epilog

sw.bb89:                                          ; preds = %entry.sw.bb89_crit_edge, %entry.sw.bb89_crit_edge1641, %entry.sw.bb89_crit_edge1642, %entry.sw.bb89_crit_edge1643, %entry.sw.bb89_crit_edge1644, %entry.sw.bb89_crit_edge1645, %entry.sw.bb89_crit_edge1646, %entry.sw.bb89_crit_edge1647, %entry.sw.bb89_crit_edge1648
  %148 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %op)
  %cmp91 = icmp eq i32 %op, 8
  %spec.select = select i1 %cmp91, i32 %dlen, i32 0
  %lcns_follow = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 7
  %150 = ptrtoint ptr %lcns_follow to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %lcns_follow, align 2
  %152 = tail call i16 @llvm.bswap.i16(i16 %151)
  %conv93 = zext i16 %152 to i64
  %shl97 = shl i64 %conv93, %sh_prom
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %149, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %154)
  %cmp98 = icmp eq i32 %154, -1610612736
  br i1 %cmp98, label %if.then100, label %sw.bb89.if.end105_crit_edge

sw.bb89.if.end105_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end105

if.then100:                                       ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #20
  %bytes_per_index = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %oe, i32 0, i32 1
  %155 = ptrtoint ptr %bytes_per_index to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bytes_per_index, align 4
  %157 = tail call i32 @llvm.bswap.i32(i32 %156)
  %158 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 %157)
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %sw.bb89.if.end105_crit_edge
  %bytes.0 = phi i32 [ %spec.select, %sw.bb89.if.end105_crit_edge ], [ %158, %if.then100 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0)
  %tobool106.not = icmp eq i32 %bytes.0, 0
  %sub = sub i64 %shl97, %shl
  %conv108 = trunc i64 %sub to i32
  %bytes.1 = select i1 %tobool106.not, i32 %conv108, i32 %bytes.0
  %conv110 = zext i16 %11 to i32
  %add111 = add i32 %bytes.1, %conv110
  %add116 = add i32 %add111, 511
  %and = and i32 %add116, -512
  %bytes.2 = select i1 %cmp98, i32 %and, i32 %add111
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %bytes.2, i32 noundef 3136) #22
  %tobool119.not = icmp eq ptr %call9.i, null
  br i1 %tobool119.not, label %if.end105.cleanup_crit_edge, label %if.end121

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end121:                                        ; preds = %if.end105
  %run1 = getelementptr inbounds %struct.OpenAttr, ptr %24, i32 0, i32 1
  %159 = ptrtoint ptr %run1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %run1, align 4
  %call122 = tail call i32 @ntfs_read_run_nb(ptr noundef %3, ptr noundef %160, i64 noundef %add, ptr noundef nonnull %call9.i, i32 noundef %bytes.2, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.end121.if.else813_crit_edge

if.end121.if.else813_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else813

if.end125:                                        ; preds = %if.end121
  %161 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %149, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %162)
  %cmp127 = icmp eq i32 %162, -1610612736
  br i1 %cmp127, label %land.lhs.true, label %if.end125.sw.epilog_crit_edge

if.end125.sw.epilog_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end125
  %163 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool129.not = icmp eq i32 %164, 0
  br i1 %tobool129.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then130

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then130:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %call131 = tail call i32 @ntfs_fix_post_read(ptr noundef nonnull %call9.i, i32 noundef %bytes.2, i1 noundef zeroext false) #18
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3202, i32 noundef 9, ptr noundef null) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then130, %land.lhs.true.sw.epilog_crit_edge, %if.end125.sw.epilog_crit_edge, %if.end84, %if.then67, %if.then62, %if.end53.sw.epilog_crit_edge, %is_rec_base.exit.sw.epilog_crit_edge
  %inode.1 = phi ptr [ null, %do.end ], [ null, %if.then130 ], [ null, %land.lhs.true.sw.epilog_crit_edge ], [ null, %if.end125.sw.epilog_crit_edge ], [ %call, %if.end53.sw.epilog_crit_edge ], [ %call, %if.then62 ], [ %call, %if.then67 ], [ %call57, %if.end84 ], [ %call, %is_rec_base.exit.sw.epilog_crit_edge ]
  %rno_base.1 = phi i32 [ 0, %do.end ], [ 0, %if.then130 ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %if.end125.sw.epilog_crit_edge ], [ %127, %if.end53.sw.epilog_crit_edge ], [ %127, %if.then62 ], [ %127, %if.then67 ], [ %127, %if.end84 ], [ %conv8, %is_rec_base.exit.sw.epilog_crit_edge ]
  %rec.1 = phi ptr [ null, %do.end ], [ null, %if.then130 ], [ null, %land.lhs.true.sw.epilog_crit_edge ], [ null, %if.end125.sw.epilog_crit_edge ], [ %119, %if.end53.sw.epilog_crit_edge ], [ %119, %if.then62 ], [ %119, %if.then67 ], [ %147, %if.end84 ], [ %119, %is_rec_base.exit.sw.epilog_crit_edge ]
  %attr.2 = phi ptr [ null, %do.end ], [ %149, %if.then130 ], [ %149, %land.lhs.true.sw.epilog_crit_edge ], [ %149, %if.end125.sw.epilog_crit_edge ], [ %attr.0, %if.end53.sw.epilog_crit_edge ], [ %attr.0, %if.then62 ], [ %attr.0, %if.then67 ], [ %add.ptr87, %if.end84 ], [ %attr.0, %is_rec_base.exit.sw.epilog_crit_edge ]
  %lco.0 = phi i64 [ 0, %do.end ], [ %shl97, %if.then130 ], [ %shl97, %land.lhs.true.sw.epilog_crit_edge ], [ %shl97, %if.end125.sw.epilog_crit_edge ], [ 0, %if.end53.sw.epilog_crit_edge ], [ 0, %if.then62 ], [ 0, %if.then67 ], [ 0, %if.end84 ], [ 0, %is_rec_base.exit.sw.epilog_crit_edge ]
  %buffer_le.0 = phi ptr [ null, %do.end ], [ %call9.i, %if.then130 ], [ %call9.i, %land.lhs.true.sw.epilog_crit_edge ], [ %call9.i, %if.end125.sw.epilog_crit_edge ], [ null, %if.end53.sw.epilog_crit_edge ], [ null, %if.then62 ], [ null, %if.then67 ], [ null, %if.end84 ], [ null, %is_rec_base.exit.sw.epilog_crit_edge ]
  %bytes.3 = phi i32 [ 0, %do.end ], [ %bytes.2, %if.then130 ], [ %bytes.2, %land.lhs.true.sw.epilog_crit_edge ], [ %bytes.2, %if.end125.sw.epilog_crit_edge ], [ 0, %if.end53.sw.epilog_crit_edge ], [ 0, %if.then62 ], [ 0, %if.then67 ], [ 0, %if.end84 ], [ 0, %is_rec_base.exit.sw.epilog_crit_edge ]
  %165 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %op, label %do.end763 [
    i32 2, label %sw.bb150
    i32 3, label %sw.epilog.sw.bb159_crit_edge
    i32 4, label %sw.bb162
    i32 5, label %sw.bb177
    i32 6, label %sw.bb229
    i32 7, label %sw.bb246
    i32 9, label %sw.bb315
    i32 11, label %sw.bb375
    i32 12, label %sw.bb404
    i32 13, label %sw.bb437
    i32 17, label %sw.bb461
    i32 19, label %sw.bb473
    i32 33, label %sw.bb486
    i32 37, label %sw.bb501
    i32 8, label %sw.bb509
    i32 14, label %sw.bb526
    i32 15, label %sw.bb568
    i32 16, label %sw.bb600
    i32 18, label %sw.bb634
    i32 20, label %sw.bb658
    i32 21, label %sw.bb684
    i32 22, label %sw.bb702
    i32 34, label %sw.bb723
  ]

sw.epilog.sw.bb159_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb159

sw.bb150:                                         ; preds = %sw.epilog
  %conv151 = zext i16 %11 to i32
  %add152 = add i32 %conv151, %dlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add152, i32 %7)
  %cmp153 = icmp ugt i32 %add152, %7
  br i1 %cmp153, label %sw.bb150.dirty_vol_crit_edge, label %if.end156

sw.bb150.dirty_vol_crit_edge:                     ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end156:                                        ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr158 = getelementptr i8, ptr %rec.1, i32 %conv151
  %166 = call ptr @memcpy(ptr %add.ptr158, ptr %data, i32 %dlen)
  %167 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mi2, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %dirty, align 4
  br label %sw.epilog777

sw.bb159:                                         ; preds = %sw.epilog.sw.bb159_crit_edge, %if.end26.sw.bb159_crit_edge
  %bytes.31580 = phi i32 [ %bytes.3, %sw.epilog.sw.bb159_crit_edge ], [ 0, %if.end26.sw.bb159_crit_edge ]
  %buffer_le.01578 = phi ptr [ %buffer_le.0, %sw.epilog.sw.bb159_crit_edge ], [ null, %if.end26.sw.bb159_crit_edge ]
  %rec.11575 = phi ptr [ %rec.1, %sw.epilog.sw.bb159_crit_edge ], [ %40, %if.end26.sw.bb159_crit_edge ]
  %inode.11569 = phi ptr [ %inode.1, %sw.epilog.sw.bb159_crit_edge ], [ %call, %if.end26.sw.bb159_crit_edge ]
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %rec.11575, i32 0, i32 4
  %170 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %flags.i, align 2
  %172 = and i16 %171, -257
  store i16 %172, ptr %flags.i, align 2
  %seq = getelementptr inbounds %struct.MFT_REC, ptr %rec.11575, i32 0, i32 1
  %173 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %seq, align 2
  %175 = call i16 @llvm.bswap.i16(i16 %174) #18
  %add.i1433 = add i16 %175, 1
  %176 = call i16 @llvm.bswap.i16(i16 %add.i1433) #18
  %177 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %seq, align 2
  %178 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mi2, align 4
  %dirty161 = getelementptr inbounds %struct.mft_inode, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %dirty161 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %dirty161, align 4
  br label %sw.epilog777

sw.bb162:                                         ; preds = %sw.epilog
  %call163 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call163, label %lor.lhs.false164, label %sw.bb162.dirty_vol_crit_edge

sw.bb162.dirty_vol_crit_edge:                     ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false164:                                 ; preds = %sw.bb162
  %conv165 = zext i16 %11 to i32
  %add166 = add i32 %conv165, %dlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add166, i32 %7)
  %cmp167 = icmp ugt i32 %add166, %7
  br i1 %cmp167, label %lor.lhs.false164.dirty_vol_crit_edge, label %if.end170

lor.lhs.false164.dirty_vol_crit_edge:             ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end170:                                        ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #20
  %181 = call ptr @memmove(ptr %attr.2, ptr %data, i32 %dlen)
  %add173 = add i32 %add166, 7
  %and174 = and i32 %add173, -8
  %182 = call i32 @llvm.bswap.i32(i32 %and174)
  %used175 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %183 = ptrtoint ptr %used175 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %used175, align 8
  %184 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mi2, align 4
  %dirty176 = getelementptr inbounds %struct.mft_inode, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %dirty176 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %dirty176, align 4
  br label %sw.epilog777

sw.bb177:                                         ; preds = %sw.epilog
  %size = getelementptr inbounds %struct.ATTRIB, ptr %data, i32 0, i32 1
  %187 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %size, align 4
  %189 = call i32 @llvm.bswap.i32(i32 %188)
  %used178 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %190 = ptrtoint ptr %used178 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %used178, align 8
  %192 = call i32 @llvm.bswap.i32(i32 %191)
  %call179 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %dlen)
  %cmp181 = icmp ugt i32 %dlen, 23
  %193 = and i1 %cmp181, %call179
  %and184 = and i32 %189, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %cmp185 = icmp ne i32 %and184, 0
  %not. = xor i1 %193, true
  %or.cond1416 = select i1 %not., i1 true, i1 %cmp185
  %add.ptr188 = getelementptr i8, ptr %data, i32 %189
  %add.ptr189 = getelementptr i8, ptr %lrh, i32 %rec_len
  %cmp190 = icmp ugt ptr %add.ptr188, %add.ptr189
  %or.cond1417 = select i1 %or.cond1416, i1 true, i1 %cmp190
  %sub193 = sub i32 %7, %192
  call void @__sanitizer_cov_trace_cmp4(i32 %sub193, i32 %dlen)
  %cmp194 = icmp ult i32 %sub193, %dlen
  %or.cond1418 = select i1 %or.cond1417, i1 true, i1 %cmp194
  br i1 %or.cond1418, label %sw.bb177.dirty_vol_crit_edge, label %if.end197

sw.bb177.dirty_vol_crit_edge:                     ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end197:                                        ; preds = %sw.bb177
  %add.ptr198 = getelementptr i8, ptr %attr.2, i32 %189
  %conv199 = zext i16 %11 to i32
  %sub200 = sub i32 %192, %conv199
  %194 = call ptr @memmove(ptr %add.ptr198, ptr %attr.2, i32 %sub200)
  %195 = call ptr @memcpy(ptr %attr.2, ptr %data, i32 %189)
  %add201 = add i32 %192, %189
  %196 = call i32 @llvm.bswap.i32(i32 %add201)
  %197 = ptrtoint ptr %used178 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %used178, align 8
  %next_attr_id = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 8
  %198 = ptrtoint ptr %next_attr_id to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %next_attr_id, align 8
  %200 = call i16 @llvm.bswap.i16(i16 %199)
  %id203 = getelementptr inbounds %struct.ATTRIB, ptr %data, i32 0, i32 6
  %201 = ptrtoint ptr %id203 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %id203, align 2
  %203 = call i16 @llvm.bswap.i16(i16 %202)
  call void @__sanitizer_cov_trace_cmp2(i16 %200, i16 %203)
  %cmp206.not = icmp ugt i16 %200, %203
  br i1 %cmp206.not, label %if.end197.if.end213_crit_edge, label %if.then208

if.end197.if.end213_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end213

if.then208:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #20
  %add210 = add i16 %203, 1
  %204 = call i16 @llvm.bswap.i16(i16 %add210)
  %205 = ptrtoint ptr %next_attr_id to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %204, ptr %next_attr_id, align 8
  br label %if.end213

if.end213:                                        ; preds = %if.then208, %if.end197.if.end213_crit_edge
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 2
  %206 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool.not.i1434 = icmp eq i8 %207, 0
  br i1 %tobool.not.i1434, label %is_attr_indexed.exit, label %if.end213.if.end216_crit_edge

if.end213.if.end216_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end216

is_attr_indexed.exit:                             ; preds = %if.end213
  %208 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %flags.i1435 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %flags.i1435 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %flags.i1435, align 2
  %211 = and i8 %210, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool1.i.not = icmp eq i8 %211, 0
  br i1 %tobool1.i.not, label %is_attr_indexed.exit.if.end216_crit_edge, label %if.then215

is_attr_indexed.exit.if.end216_crit_edge:         ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end216

if.then215:                                       ; preds = %is_attr_indexed.exit
  call void @__sanitizer_cov_trace_pc() #20
  %hard_links = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 2
  %212 = ptrtoint ptr %hard_links to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %hard_links, align 2
  %214 = call i16 @llvm.bswap.i16(i16 %213) #18
  %add.i1437 = add i16 %214, 1
  %215 = call i16 @llvm.bswap.i16(i16 %add.i1437) #18
  %216 = ptrtoint ptr %hard_links to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %215, ptr %hard_links, align 2
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %is_attr_indexed.exit.if.end216_crit_edge, %if.end213.if.end216_crit_edge
  %call217 = call fastcc ptr @find_loaded_attr(ptr noundef %log, ptr noundef %attr.2, i32 noundef %rno_base.1)
  %tobool218.not = icmp eq ptr %call217, null
  br i1 %tobool218.not, label %if.end216.if.end227_crit_edge, label %if.then219

if.end216.if.end227_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end227

if.then219:                                       ; preds = %if.end216
  %size220 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %217 = ptrtoint ptr %size220 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %size220, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %218)
  %call221 = call ptr @kmemdup(ptr noundef %attr.2, i32 noundef %219, i32 noundef 3136) #18
  %tobool222.not = icmp eq ptr %call221, null
  br i1 %tobool222.not, label %if.then219.if.end227_crit_edge, label %if.then223

if.then219.if.end227_crit_edge:                   ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end227

if.then223:                                       ; preds = %if.then219
  call void @__sanitizer_cov_trace_pc() #20
  %220 = ptrtoint ptr %call217 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %call217, align 4
  call void @kfree(ptr noundef %221) #18
  %222 = ptrtoint ptr %call217 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call221, ptr %call217, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.then223, %if.then219.if.end227_crit_edge, %if.end216.if.end227_crit_edge
  %223 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mi2, align 4
  %dirty228 = getelementptr inbounds %struct.mft_inode, ptr %224, i32 0, i32 5
  %225 = ptrtoint ptr %dirty228 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %dirty228, align 4
  br label %sw.epilog777

sw.bb229:                                         ; preds = %sw.epilog
  %size230 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %226 = ptrtoint ptr %size230 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %size230, align 4
  %228 = call i32 @llvm.bswap.i32(i32 %227)
  %call232 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call232, label %if.end234, label %sw.bb229.dirty_vol_crit_edge

sw.bb229.dirty_vol_crit_edge:                     ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end234:                                        ; preds = %sw.bb229
  %used231 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %229 = ptrtoint ptr %used231 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %used231, align 8
  %231 = call i32 @llvm.bswap.i32(i32 %230)
  %sub235 = sub i32 %231, %228
  %232 = call i32 @llvm.bswap.i32(i32 %sub235)
  %233 = ptrtoint ptr %used231 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %used231, align 8
  %non_res.i1438 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 2
  %234 = ptrtoint ptr %non_res.i1438 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %non_res.i1438, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i1439 = icmp eq i8 %235, 0
  br i1 %tobool.not.i1439, label %is_attr_indexed.exit1443, label %if.end234.if.end240_crit_edge

if.end234.if.end240_crit_edge:                    ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end240

is_attr_indexed.exit1443:                         ; preds = %if.end234
  %236 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %flags.i1440 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %flags.i1440 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %flags.i1440, align 2
  %239 = and i8 %238, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool1.i1441.not = icmp eq i8 %239, 0
  br i1 %tobool1.i1441.not, label %is_attr_indexed.exit1443.if.end240_crit_edge, label %if.then238

is_attr_indexed.exit1443.if.end240_crit_edge:     ; preds = %is_attr_indexed.exit1443
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end240

if.then238:                                       ; preds = %is_attr_indexed.exit1443
  call void @__sanitizer_cov_trace_pc() #20
  %hard_links239 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 2
  %240 = ptrtoint ptr %hard_links239 to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %hard_links239, align 2
  %242 = call i16 @llvm.bswap.i16(i16 %241) #18
  %add.i1444 = add i16 %242, -1
  %243 = call i16 @llvm.bswap.i16(i16 %add.i1444) #18
  %244 = ptrtoint ptr %hard_links239 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %hard_links239, align 2
  br label %if.end240

if.end240:                                        ; preds = %if.then238, %is_attr_indexed.exit1443.if.end240_crit_edge, %if.end234.if.end240_crit_edge
  %add.ptr241 = getelementptr i8, ptr %attr.2, i32 %228
  %conv243 = zext i16 %11 to i32
  %sub244 = sub i32 %sub235, %conv243
  %245 = call ptr @memmove(ptr %attr.2, ptr %add.ptr241, i32 %sub244)
  %246 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mi2, align 4
  %dirty245 = getelementptr inbounds %struct.mft_inode, ptr %247, i32 0, i32 5
  %248 = ptrtoint ptr %dirty245 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %dirty245, align 4
  br label %sw.epilog777

sw.bb246:                                         ; preds = %sw.epilog
  %conv247 = zext i16 %14 to i32
  %add248 = add i32 %conv247, %dlen
  %call249 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call249, label %if.end251, label %sw.bb246.dirty_vol_crit_edge

sw.bb246.dirty_vol_crit_edge:                     ; preds = %sw.bb246
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end251:                                        ; preds = %sw.bb246
  %size252 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %249 = ptrtoint ptr %size252 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %size252, align 4
  %251 = call i32 @llvm.bswap.i32(i32 %250)
  %used253 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %252 = ptrtoint ptr %used253 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %used253, align 8
  %254 = call i32 @llvm.bswap.i32(i32 %253)
  %redo_len = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 3
  %255 = ptrtoint ptr %redo_len to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %redo_len, align 2
  %undo_len = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 5
  %257 = ptrtoint ptr %undo_len to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %undo_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %256, i16 %258)
  %cmp256 = icmp eq i16 %256, %258
  call void @__sanitizer_cov_trace_cmp4(i32 %add248, i32 %251)
  %cmp259 = icmp ugt i32 %add248, %251
  br i1 %cmp256, label %if.then258, label %if.end263

if.then258:                                       ; preds = %if.end251
  br i1 %cmp259, label %if.then258.dirty_vol_crit_edge, label %if.then258.move_data_crit_edge

if.then258.move_data_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #20
  br label %move_data

if.then258.dirty_vol_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end263:                                        ; preds = %if.end251
  br i1 %cmp259, label %land.lhs.true266, label %if.end263.if.end272_crit_edge

if.end263.if.end272_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end272

land.lhs.true266:                                 ; preds = %if.end263
  %sub267 = sub i32 %add248, %251
  %sub268 = sub i32 %7, %254
  call void @__sanitizer_cov_trace_cmp4(i32 %sub267, i32 %sub268)
  %cmp269 = icmp ugt i32 %sub267, %sub268
  br i1 %cmp269, label %land.lhs.true266.dirty_vol_crit_edge, label %land.lhs.true266.if.end272_crit_edge

land.lhs.true266.if.end272_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end272

land.lhs.true266.dirty_vol_crit_edge:             ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end272:                                        ; preds = %land.lhs.true266.if.end272_crit_edge, %if.end263.if.end272_crit_edge
  %add273 = add i32 %add248, 7
  %and274 = and i32 %add273, -8
  %259 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off275 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %259, i32 0, i32 1
  %260 = ptrtoint ptr %data_off275 to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %data_off275, align 4
  %262 = call i16 @llvm.bswap.i16(i16 %261)
  call void @__sanitizer_cov_trace_cmp4(i32 %and274, i32 %251)
  %cmp276 = icmp ult i32 %and274, %251
  br i1 %cmp276, label %if.then278, label %if.end272.if.end281_crit_edge

if.end272.if.end281_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end281

if.then278:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr280 = getelementptr i8, ptr %attr.2, i32 %conv247
  %263 = call ptr @memmove(ptr %add.ptr280, ptr %data, i32 %dlen)
  br label %if.end281

if.end281:                                        ; preds = %if.then278, %if.end272.if.end281_crit_edge
  %data.addr.0 = phi ptr [ null, %if.then278 ], [ %data, %if.end272.if.end281_crit_edge ]
  %add.ptr282 = getelementptr i8, ptr %attr.2, i32 %and274
  %add.ptr283 = getelementptr i8, ptr %attr.2, i32 %251
  %264 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %record_off, align 8
  %266 = call i16 @llvm.bswap.i16(i16 %265)
  %conv285 = zext i16 %266 to i32
  %267 = add i32 %251, %conv285
  %sub287 = sub i32 %254, %267
  %268 = call ptr @memmove(ptr %add.ptr282, ptr %add.ptr283, i32 %sub287)
  %add288 = sub i32 %and274, %251
  %sub289 = add i32 %add288, %254
  %269 = call i32 @llvm.bswap.i32(i32 %sub289)
  %270 = ptrtoint ptr %used253 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %269, ptr %used253, align 8
  %271 = call i32 @llvm.bswap.i32(i32 %and274)
  %272 = ptrtoint ptr %size252 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %size252, align 4
  %conv294 = zext i16 %262 to i32
  %sub295 = sub i32 %add248, %conv294
  %273 = call i32 @llvm.bswap.i32(i32 %sub295)
  %274 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %273, ptr %259, align 8
  br label %move_data

move_data:                                        ; preds = %if.end281, %if.then258.move_data_crit_edge
  %data.addr.1 = phi ptr [ %data, %if.then258.move_data_crit_edge ], [ %data.addr.0, %if.end281 ]
  %tobool296.not = icmp eq ptr %data.addr.1, null
  br i1 %tobool296.not, label %move_data.if.end300_crit_edge, label %if.then297

move_data.if.end300_crit_edge:                    ; preds = %move_data
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end300

if.then297:                                       ; preds = %move_data
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr299 = getelementptr i8, ptr %attr.2, i32 %conv247
  %275 = call ptr @memmove(ptr %add.ptr299, ptr %data.addr.1, i32 %dlen)
  br label %if.end300

if.end300:                                        ; preds = %if.then297, %move_data.if.end300_crit_edge
  %call301 = call fastcc ptr @find_loaded_attr(ptr noundef %log, ptr noundef %attr.2, i32 noundef %rno_base.1)
  %tobool302.not = icmp eq ptr %call301, null
  br i1 %tobool302.not, label %if.end300.if.end313_crit_edge, label %if.then303

if.end300.if.end313_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end313

if.then303:                                       ; preds = %if.end300
  %276 = ptrtoint ptr %size252 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %size252, align 4
  %278 = call i32 @llvm.bswap.i32(i32 %277)
  %call306 = call ptr @kmemdup(ptr noundef %attr.2, i32 noundef %278, i32 noundef 3136) #18
  %tobool307.not = icmp eq ptr %call306, null
  br i1 %tobool307.not, label %if.then303.if.end313_crit_edge, label %if.then308

if.then303.if.end313_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end313

if.then308:                                       ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #20
  %run0 = getelementptr inbounds %struct.OpenAttr, ptr %call301, i32 0, i32 2
  %run1309 = getelementptr inbounds %struct.OpenAttr, ptr %call301, i32 0, i32 1
  %279 = ptrtoint ptr %run1309 to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %run0, ptr %run1309, align 4
  %280 = ptrtoint ptr %call301 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %call301, align 4
  call void @kfree(ptr noundef %281) #18
  %282 = ptrtoint ptr %call301 to i32
  call void @__asan_store4_noabort(i32 %282)
  store ptr %call306, ptr %call301, align 4
  br label %if.end313

if.end313:                                        ; preds = %if.then308, %if.then303.if.end313_crit_edge, %if.end300.if.end313_crit_edge
  %283 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mi2, align 4
  %dirty314 = getelementptr inbounds %struct.mft_inode, ptr %284, i32 0, i32 5
  %285 = ptrtoint ptr %dirty314 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %dirty314, align 4
  br label %sw.epilog777

sw.bb315:                                         ; preds = %sw.epilog
  %conv316 = zext i16 %14 to i32
  %add317 = add i32 %conv316, %dlen
  %size318 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %286 = ptrtoint ptr %size318 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %size318, align 4
  %288 = call i32 @llvm.bswap.i32(i32 %287)
  %used319 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %289 = ptrtoint ptr %used319 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %used319, align 8
  %291 = call i32 @llvm.bswap.i32(i32 %290)
  %call320 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call320, label %lor.lhs.false321, label %sw.bb315.dirty_vol_crit_edge

sw.bb315.dirty_vol_crit_edge:                     ; preds = %sw.bb315
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false321:                                 ; preds = %sw.bb315
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 2
  %292 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool322.not = icmp eq i8 %293, 0
  br i1 %tobool322.not, label %lor.lhs.false321.dirty_vol_crit_edge, label %lor.lhs.false323

lor.lhs.false321.dirty_vol_crit_edge:             ; preds = %lor.lhs.false321
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false323:                                 ; preds = %lor.lhs.false321
  %294 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 2
  %295 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %run_off, align 8
  %297 = call i16 @llvm.bswap.i16(i16 %296)
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %297)
  %cmp326 = icmp ult i16 %14, %297
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %conv316)
  %cmp330 = icmp ult i32 %288, %conv316
  %or.cond1419 = select i1 %cmp326, i1 true, i1 %cmp330
  br i1 %or.cond1419, label %lor.lhs.false323.dirty_vol_crit_edge, label %lor.lhs.false332

lor.lhs.false323.dirty_vol_crit_edge:             ; preds = %lor.lhs.false323
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false332:                                 ; preds = %lor.lhs.false323
  call void @__sanitizer_cov_trace_cmp4(i32 %add317, i32 %288)
  %cmp333 = icmp ugt i32 %add317, %288
  br i1 %cmp333, label %land.lhs.true335, label %lor.lhs.false332.if.end341_crit_edge

lor.lhs.false332.if.end341_crit_edge:             ; preds = %lor.lhs.false332
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end341

land.lhs.true335:                                 ; preds = %lor.lhs.false332
  %sub336 = sub i32 %add317, %288
  %sub337 = sub i32 %7, %291
  call void @__sanitizer_cov_trace_cmp4(i32 %sub336, i32 %sub337)
  %cmp338 = icmp ugt i32 %sub336, %sub337
  br i1 %cmp338, label %land.lhs.true335.dirty_vol_crit_edge, label %land.lhs.true335.if.end341_crit_edge

land.lhs.true335.if.end341_crit_edge:             ; preds = %land.lhs.true335
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end341

land.lhs.true335.dirty_vol_crit_edge:             ; preds = %land.lhs.true335
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end341:                                        ; preds = %land.lhs.true335.if.end341_crit_edge, %lor.lhs.false332.if.end341_crit_edge
  %add342 = add i32 %add317, 7
  %and343 = and i32 %add342, -8
  %add.ptr344 = getelementptr i8, ptr %attr.2, i32 %and343
  %add.ptr345 = getelementptr i8, ptr %attr.2, i32 %288
  %298 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %record_off, align 8
  %300 = call i16 @llvm.bswap.i16(i16 %299)
  %conv347 = zext i16 %300 to i32
  %301 = add i32 %288, %conv347
  %sub349 = sub i32 %291, %301
  %302 = call ptr @memmove(ptr %add.ptr344, ptr %add.ptr345, i32 %sub349)
  %add350 = sub i32 %and343, %288
  %sub351 = add i32 %add350, %291
  %303 = call i32 @llvm.bswap.i32(i32 %sub351)
  %304 = ptrtoint ptr %used319 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 %303, ptr %used319, align 8
  %305 = call i32 @llvm.bswap.i32(i32 %and343)
  %306 = ptrtoint ptr %size318 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %305, ptr %size318, align 4
  %add.ptr355 = getelementptr i8, ptr %attr.2, i32 %conv316
  %307 = call ptr @memmove(ptr %add.ptr355, ptr %data, i32 %dlen)
  %308 = ptrtoint ptr %294 to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %294, align 8
  %310 = call i64 @llvm.bswap.i64(i64 %309)
  %conv356 = trunc i64 %310 to i32
  %311 = ptrtoint ptr %run_off to i32
  call void @__asan_load2_noabort(i32 %311)
  %312 = load i16, ptr %run_off, align 8
  %313 = call i16 @llvm.bswap.i16(i16 %312) #18
  %conv.i1445 = zext i16 %313 to i32
  %add.ptr.i1446 = getelementptr i8, ptr %attr.2, i32 %conv.i1445
  %call358 = call i32 @run_get_highest_vcn(i32 noundef %conv356, ptr noundef %add.ptr.i1446, ptr noundef nonnull %t64) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %if.end361, label %if.end341.dirty_vol_crit_edge

if.end341.dirty_vol_crit_edge:                    ; preds = %if.end341
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end361:                                        ; preds = %if.end341
  %314 = ptrtoint ptr %t64 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %t64, align 8
  %316 = call i64 @llvm.bswap.i64(i64 %315)
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 1
  %317 = ptrtoint ptr %evcn to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %316, ptr %evcn, align 8
  %call362 = call fastcc ptr @find_loaded_attr(ptr noundef %log, ptr noundef %attr.2, i32 noundef %rno_base.1)
  %tobool363.not = icmp eq ptr %call362, null
  br i1 %tobool363.not, label %if.end361.if.end373_crit_edge, label %land.lhs.true364

if.end361.if.end373_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end373

land.lhs.true364:                                 ; preds = %if.end361
  %318 = ptrtoint ptr %call362 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %call362, align 4
  %non_res366 = getelementptr inbounds %struct.ATTRIB, ptr %319, i32 0, i32 2
  %320 = ptrtoint ptr %non_res366 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %non_res366, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool368.not = icmp eq i8 %321, 0
  br i1 %tobool368.not, label %land.lhs.true364.if.end373_crit_edge, label %if.then369

land.lhs.true364.if.end373_crit_edge:             ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end373

if.then369:                                       ; preds = %land.lhs.true364
  call void @__sanitizer_cov_trace_pc() #20
  %evcn372 = getelementptr inbounds %struct.ATTRIB, ptr %319, i32 0, i32 7, i32 0, i32 1
  %322 = ptrtoint ptr %evcn372 to i32
  call void @__asan_store8_noabort(i32 %322)
  store i64 %316, ptr %evcn372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.then369, %land.lhs.true364.if.end373_crit_edge, %if.end361.if.end373_crit_edge
  %323 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mi2, align 4
  %dirty374 = getelementptr inbounds %struct.mft_inode, ptr %324, i32 0, i32 5
  %325 = ptrtoint ptr %dirty374 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %dirty374, align 4
  br label %sw.epilog777

sw.bb375:                                         ; preds = %sw.epilog
  %call376 = call fastcc zeroext i1 @check_if_attr(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call376, label %lor.lhs.false377, label %sw.bb375.dirty_vol_crit_edge

sw.bb375.dirty_vol_crit_edge:                     ; preds = %sw.bb375
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false377:                                 ; preds = %sw.bb375
  %non_res378 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 2
  %326 = ptrtoint ptr %non_res378 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %non_res378, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %327)
  %tobool379.not = icmp eq i8 %327, 0
  br i1 %tobool379.not, label %lor.lhs.false377.dirty_vol_crit_edge, label %if.end381

lor.lhs.false377.dirty_vol_crit_edge:             ; preds = %lor.lhs.false377
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end381:                                        ; preds = %lor.lhs.false377
  %328 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %data, align 8
  %alloc_size382 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 5
  %330 = ptrtoint ptr %alloc_size382 to i32
  call void @__asan_store8_noabort(i32 %330)
  store i64 %329, ptr %alloc_size382, align 8
  %data_size383 = getelementptr inbounds %struct.NEW_ATTRIBUTE_SIZES, ptr %data, i32 0, i32 2
  %331 = ptrtoint ptr %data_size383 to i32
  call void @__asan_load8_noabort(i32 %331)
  %332 = load i64, ptr %data_size383, align 8
  %data_size384 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 6
  %333 = ptrtoint ptr %data_size384 to i32
  call void @__asan_store8_noabort(i32 %333)
  store i64 %332, ptr %data_size384, align 8
  %valid_size = getelementptr inbounds %struct.NEW_ATTRIBUTE_SIZES, ptr %data, i32 0, i32 1
  %334 = ptrtoint ptr %valid_size to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %valid_size, align 8
  %valid_size385 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 7
  %336 = ptrtoint ptr %valid_size385 to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 %335, ptr %valid_size385, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %dlen)
  %cmp386 = icmp ugt i32 %dlen, 31
  br i1 %cmp386, label %if.then388, label %if.end381.if.end390_crit_edge

if.end381.if.end390_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end390

if.then388:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #20
  %total_size = getelementptr inbounds %struct.NEW_ATTRIBUTE_SIZES, ptr %data, i32 0, i32 3
  %337 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %337)
  %338 = load i64, ptr %total_size, align 8
  %total_size389 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7, i32 0, i32 8
  %339 = ptrtoint ptr %total_size389 to i32
  call void @__asan_store8_noabort(i32 %339)
  store i64 %338, ptr %total_size389, align 8
  br label %if.end390

if.end390:                                        ; preds = %if.then388, %if.end381.if.end390_crit_edge
  %call391 = call fastcc ptr @find_loaded_attr(ptr noundef %log, ptr noundef %attr.2, i32 noundef %rno_base.1)
  %tobool392.not = icmp eq ptr %call391, null
  br i1 %tobool392.not, label %if.end390.if.end402_crit_edge, label %if.then393

if.end390.if.end402_crit_edge:                    ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end402

if.then393:                                       ; preds = %if.end390
  %size395 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %340 = ptrtoint ptr %size395 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %size395, align 4
  %342 = call i32 @llvm.bswap.i32(i32 %341)
  %call396 = call ptr @kmemdup(ptr noundef %attr.2, i32 noundef %342, i32 noundef 3136) #18
  %tobool397.not = icmp eq ptr %call396, null
  br i1 %tobool397.not, label %if.then393.if.end402_crit_edge, label %if.then398

if.then393.if.end402_crit_edge:                   ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end402

if.then398:                                       ; preds = %if.then393
  call void @__sanitizer_cov_trace_pc() #20
  %343 = ptrtoint ptr %call391 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %call391, align 4
  call void @kfree(ptr noundef %344) #18
  %345 = ptrtoint ptr %call391 to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %call396, ptr %call391, align 4
  br label %if.end402

if.end402:                                        ; preds = %if.then398, %if.then393.if.end402_crit_edge, %if.end390.if.end402_crit_edge
  %346 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %mi2, align 4
  %dirty403 = getelementptr inbounds %struct.mft_inode, ptr %347, i32 0, i32 5
  %348 = ptrtoint ptr %dirty403 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 1, ptr %dirty403, align 4
  br label %sw.epilog777

sw.bb404:                                         ; preds = %sw.epilog
  %size405 = getelementptr inbounds %struct.NTFS_DE, ptr %data, i32 0, i32 1
  %349 = ptrtoint ptr %size405 to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %size405, align 4
  %351 = call i16 @llvm.bswap.i16(i16 %350)
  %conv406 = zext i16 %351 to i32
  %352 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %352, i32 0, i32 1
  %353 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %data_off.i, align 4
  %355 = call i16 @llvm.bswap.i16(i16 %354) #18
  %conv.i1447 = zext i16 %355 to i32
  %add.ptr.i1448 = getelementptr i8, ptr %attr.2, i32 %conv.i1447
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1448, i32 0, i32 5
  %used408 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1448, i32 0, i32 5, i32 1
  %356 = ptrtoint ptr %used408 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %used408, align 4
  %358 = call i32 @llvm.bswap.i32(i32 %357)
  %call409 = call fastcc zeroext i1 @check_if_index_root(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call409, label %lor.lhs.false410, label %sw.bb404.dirty_vol_crit_edge

sw.bb404.dirty_vol_crit_edge:                     ; preds = %sw.bb404
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false410:                                 ; preds = %sw.bb404
  %call411 = call fastcc zeroext i1 @check_if_root_index(ptr noundef %attr.2, ptr noundef %ihdr, ptr noundef %lrh)
  %call411.not = xor i1 %call411, true
  %add.ptr413 = getelementptr i8, ptr %data, i32 %conv406
  %add.ptr414 = getelementptr i8, ptr %lrh, i32 %rec_len
  %cmp415 = icmp ugt ptr %add.ptr413, %add.ptr414
  %or.cond1420 = select i1 %call411.not, i1 true, i1 %cmp415
  br i1 %or.cond1420, label %lor.lhs.false410.dirty_vol_crit_edge, label %lor.lhs.false417

lor.lhs.false410.dirty_vol_crit_edge:             ; preds = %lor.lhs.false410
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false417:                                 ; preds = %lor.lhs.false410
  %total = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 6
  %359 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %total, align 4
  %361 = call i32 @llvm.bswap.i32(i32 %360)
  %used418 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %362 = ptrtoint ptr %used418 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %used418, align 8
  %364 = call i32 @llvm.bswap.i32(i32 %363)
  %sub419 = sub i32 %361, %364
  call void @__sanitizer_cov_trace_cmp4(i32 %sub419, i32 %conv406)
  %cmp420 = icmp ult i32 %sub419, %conv406
  br i1 %cmp420, label %lor.lhs.false417.dirty_vol_crit_edge, label %if.end423

lor.lhs.false417.dirty_vol_crit_edge:             ; preds = %lor.lhs.false417
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end423:                                        ; preds = %lor.lhs.false417
  call void @__sanitizer_cov_trace_pc() #20
  %365 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %attr_off, align 2
  %367 = call i16 @llvm.bswap.i16(i16 %366)
  %conv425 = zext i16 %367 to i32
  %add.ptr426 = getelementptr i8, ptr %attr.2, i32 %conv425
  %size427 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %368 = ptrtoint ptr %size427 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %size427, align 4
  %370 = call i32 @llvm.bswap.i32(i32 %369)
  %add428 = add i32 %370, %conv406
  %add.ptr.i1450 = getelementptr i8, ptr %attr.2, i32 %370
  %add.ptr2.i = getelementptr i8, ptr %attr.2, i32 %add428
  %371 = ptrtoint ptr %add.ptr.i1450 to i32
  %372 = ptrtoint ptr %rec.1 to i32
  %sub3.neg.i = add i32 %364, %372
  %sub4.i = sub i32 %sub3.neg.i, %371
  %373 = call ptr @memmove(ptr %add.ptr2.i, ptr %add.ptr.i1450, i32 %sub4.i)
  %add.i1451 = add i32 %364, %conv406
  %374 = call i32 @llvm.bswap.i32(i32 %add.i1451) #18
  %375 = ptrtoint ptr %used418 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %374, ptr %used418, align 8
  %376 = call i32 @llvm.bswap.i32(i32 %add428) #18
  %377 = ptrtoint ptr %size427 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %376, ptr %size427, align 4
  %add.ptr429 = getelementptr i8, ptr %add.ptr426, i32 %conv406
  %add.ptr430 = getelementptr i8, ptr %ihdr, i32 %358
  %378 = ptrtoint ptr %add.ptr430 to i32
  %379 = ptrtoint ptr %add.ptr426 to i32
  %sub431 = sub i32 %378, %379
  %380 = call ptr @memmove(ptr %add.ptr429, ptr %add.ptr426, i32 %sub431)
  %381 = call ptr @memmove(ptr %add.ptr426, ptr %data, i32 %conv406)
  %382 = ptrtoint ptr %352 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %352, align 4
  %384 = call i32 @llvm.bswap.i32(i32 %383) #18
  %add.i1452 = add i32 %384, %conv406
  %385 = call i32 @llvm.bswap.i32(i32 %add.i1452) #18
  %386 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %385, ptr %352, align 4
  %add433 = add i32 %358, %conv406
  %387 = call i32 @llvm.bswap.i32(i32 %add433)
  %388 = ptrtoint ptr %used408 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 %387, ptr %used408, align 4
  %total435 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1448, i32 0, i32 5, i32 2
  %389 = ptrtoint ptr %total435 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %total435, align 4
  %391 = call i32 @llvm.bswap.i32(i32 %390) #18
  %add.i1453 = add i32 %391, %conv406
  %392 = call i32 @llvm.bswap.i32(i32 %add.i1453) #18
  %393 = ptrtoint ptr %total435 to i32
  call void @__asan_store4_noabort(i32 %393)
  store i32 %392, ptr %total435, align 4
  %394 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %mi2, align 4
  %dirty436 = getelementptr inbounds %struct.mft_inode, ptr %395, i32 0, i32 5
  %396 = ptrtoint ptr %dirty436 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 1, ptr %dirty436, align 4
  br label %sw.epilog777

sw.bb437:                                         ; preds = %sw.epilog
  %397 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off.i1454 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %397, i32 0, i32 1
  %398 = ptrtoint ptr %data_off.i1454 to i32
  call void @__asan_load2_noabort(i32 %398)
  %399 = load i16, ptr %data_off.i1454, align 4
  %400 = call i16 @llvm.bswap.i16(i16 %399) #18
  %conv.i1455 = zext i16 %400 to i32
  %add.ptr.i1456 = getelementptr i8, ptr %attr.2, i32 %conv.i1455
  %ihdr439 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1456, i32 0, i32 5
  %used440 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1456, i32 0, i32 5, i32 1
  %401 = ptrtoint ptr %used440 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %used440, align 4
  %403 = call i32 @llvm.bswap.i32(i32 %402)
  %call441 = call fastcc zeroext i1 @check_if_index_root(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call441, label %lor.lhs.false442, label %sw.bb437.dirty_vol_crit_edge

sw.bb437.dirty_vol_crit_edge:                     ; preds = %sw.bb437
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false442:                                 ; preds = %sw.bb437
  %call443 = call fastcc zeroext i1 @check_if_root_index(ptr noundef %attr.2, ptr noundef %ihdr439, ptr noundef %lrh)
  br i1 %call443, label %if.end445, label %lor.lhs.false442.dirty_vol_crit_edge

lor.lhs.false442.dirty_vol_crit_edge:             ; preds = %lor.lhs.false442
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end445:                                        ; preds = %lor.lhs.false442
  call void @__sanitizer_cov_trace_pc() #20
  %404 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %404)
  %405 = load i16, ptr %attr_off, align 2
  %406 = call i16 @llvm.bswap.i16(i16 %405)
  %conv447 = zext i16 %406 to i32
  %add.ptr448 = getelementptr i8, ptr %attr.2, i32 %conv447
  %size449 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr448, i32 0, i32 1
  %407 = ptrtoint ptr %size449 to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %size449, align 4
  %409 = call i16 @llvm.bswap.i16(i16 %408)
  %conv450 = zext i16 %409 to i32
  %add.ptr451 = getelementptr i8, ptr %add.ptr448, i32 %conv450
  %add.ptr452 = getelementptr i8, ptr %ihdr439, i32 %403
  %410 = ptrtoint ptr %add.ptr452 to i32
  %411 = ptrtoint ptr %add.ptr451 to i32
  %sub453 = sub i32 %410, %411
  %412 = call ptr @memmove(ptr %add.ptr448, ptr %add.ptr451, i32 %sub453)
  %413 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %397, align 4
  %415 = call i32 @llvm.bswap.i32(i32 %414) #18
  %sub.i1457 = sub i32 %415, %conv450
  %416 = call i32 @llvm.bswap.i32(i32 %sub.i1457) #18
  %417 = ptrtoint ptr %397 to i32
  call void @__asan_store4_noabort(i32 %417)
  store i32 %416, ptr %397, align 4
  %sub455 = sub i32 %403, %conv450
  %418 = call i32 @llvm.bswap.i32(i32 %sub455)
  %419 = ptrtoint ptr %used440 to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 %418, ptr %used440, align 4
  %total457 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1456, i32 0, i32 5, i32 2
  %420 = ptrtoint ptr %total457 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %total457, align 4
  %422 = call i32 @llvm.bswap.i32(i32 %421) #18
  %sub.i1458 = sub i32 %422, %conv450
  %423 = call i32 @llvm.bswap.i32(i32 %sub.i1458) #18
  %424 = ptrtoint ptr %total457 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 %423, ptr %total457, align 4
  %size458 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 1
  %425 = ptrtoint ptr %size458 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %size458, align 4
  %427 = call i32 @llvm.bswap.i32(i32 %426)
  %sub459 = sub i32 %427, %conv450
  %add.ptr.i1461 = getelementptr i8, ptr %attr.2, i32 %427
  %used1.i1462 = getelementptr inbounds %struct.MFT_REC, ptr %rec.1, i32 0, i32 5
  %428 = ptrtoint ptr %used1.i1462 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %used1.i1462, align 8
  %430 = call i32 @llvm.bswap.i32(i32 %429) #18
  %add.ptr2.i1463 = getelementptr i8, ptr %attr.2, i32 %sub459
  %431 = ptrtoint ptr %add.ptr.i1461 to i32
  %432 = ptrtoint ptr %rec.1 to i32
  %sub3.neg.i1464 = add i32 %430, %432
  %sub4.i1465 = sub i32 %sub3.neg.i1464, %431
  %433 = call ptr @memmove(ptr %add.ptr2.i1463, ptr %add.ptr.i1461, i32 %sub4.i1465)
  %add.i1466 = sub i32 %430, %conv450
  %434 = call i32 @llvm.bswap.i32(i32 %add.i1466) #18
  %435 = ptrtoint ptr %used1.i1462 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %434, ptr %used1.i1462, align 8
  %436 = call i32 @llvm.bswap.i32(i32 %sub459) #18
  %437 = ptrtoint ptr %size458 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %size458, align 4
  %438 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %mi2, align 4
  %dirty460 = getelementptr inbounds %struct.mft_inode, ptr %439, i32 0, i32 5
  %440 = ptrtoint ptr %dirty460 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 1, ptr %dirty460, align 4
  br label %sw.epilog777

sw.bb461:                                         ; preds = %sw.epilog
  %call464 = call fastcc zeroext i1 @check_if_index_root(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call464, label %lor.lhs.false465, label %sw.bb461.dirty_vol_crit_edge

sw.bb461.dirty_vol_crit_edge:                     ; preds = %sw.bb461
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false465:                                 ; preds = %sw.bb461
  %441 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off.i1467 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %data_off.i1467 to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %data_off.i1467, align 4
  %444 = call i16 @llvm.bswap.i16(i16 %443) #18
  %conv.i1468 = zext i16 %444 to i32
  %add.ptr.i1469 = getelementptr i8, ptr %attr.2, i32 %conv.i1468
  %ihdr463 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1469, i32 0, i32 5
  %call466 = call fastcc zeroext i1 @check_if_root_index(ptr noundef %attr.2, ptr noundef %ihdr463, ptr noundef %lrh)
  br i1 %call466, label %if.end468, label %lor.lhs.false465.dirty_vol_crit_edge

lor.lhs.false465.dirty_vol_crit_edge:             ; preds = %lor.lhs.false465
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end468:                                        ; preds = %lor.lhs.false465
  call void @__sanitizer_cov_trace_pc() #20
  %445 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %445)
  %446 = load i16, ptr %attr_off, align 2
  %447 = call i16 @llvm.bswap.i16(i16 %446)
  %conv470 = zext i16 %447 to i32
  %add.ptr471 = getelementptr i8, ptr %attr.2, i32 %conv470
  %448 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %448)
  %449 = load i64, ptr %data, align 8
  %size.i1470 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr471, i32 0, i32 1
  %450 = ptrtoint ptr %size.i1470 to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %size.i1470, align 4
  %452 = call i16 @llvm.bswap.i16(i16 %451) #18
  %conv.i1471 = zext i16 %452 to i32
  %sub.i1472 = add nsw i32 %conv.i1471, -8
  %add.ptr.i1473 = getelementptr i8, ptr %add.ptr471, i32 %sub.i1472
  %453 = ptrtoint ptr %add.ptr.i1473 to i32
  call void @__asan_store8_noabort(i32 %453)
  store i64 %449, ptr %add.ptr.i1473, align 8
  %454 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %mi2, align 4
  %dirty472 = getelementptr inbounds %struct.mft_inode, ptr %455, i32 0, i32 5
  %456 = ptrtoint ptr %dirty472 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 1, ptr %dirty472, align 4
  br label %sw.epilog777

sw.bb473:                                         ; preds = %sw.epilog
  %call476 = call fastcc zeroext i1 @check_if_index_root(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call476, label %lor.lhs.false477, label %sw.bb473.dirty_vol_crit_edge

sw.bb473.dirty_vol_crit_edge:                     ; preds = %sw.bb473
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false477:                                 ; preds = %sw.bb473
  %457 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off.i1474 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %457, i32 0, i32 1
  %458 = ptrtoint ptr %data_off.i1474 to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %data_off.i1474, align 4
  %460 = call i16 @llvm.bswap.i16(i16 %459) #18
  %conv.i1475 = zext i16 %460 to i32
  %add.ptr.i1476 = getelementptr i8, ptr %attr.2, i32 %conv.i1475
  %ihdr475 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1476, i32 0, i32 5
  %call478 = call fastcc zeroext i1 @check_if_root_index(ptr noundef %attr.2, ptr noundef %ihdr475, ptr noundef %lrh)
  br i1 %call478, label %if.end480, label %lor.lhs.false477.dirty_vol_crit_edge

lor.lhs.false477.dirty_vol_crit_edge:             ; preds = %lor.lhs.false477
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end480:                                        ; preds = %lor.lhs.false477
  call void @__sanitizer_cov_trace_pc() #20
  %461 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %attr_off, align 2
  %463 = call i16 @llvm.bswap.i16(i16 %462)
  %conv482 = zext i16 %463 to i32
  %add.ptr483 = getelementptr i8, ptr %attr.2, i32 %conv482
  %add.ptr484 = getelementptr %struct.NTFS_DE, ptr %add.ptr483, i32 1
  %dup = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr484, i32 0, i32 1
  %464 = call ptr @memmove(ptr %dup, ptr %data, i32 56)
  %465 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %mi2, align 4
  %dirty485 = getelementptr inbounds %struct.mft_inode, ptr %466, i32 0, i32 5
  %467 = ptrtoint ptr %dirty485 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 1, ptr %dirty485, align 4
  br label %sw.epilog777

sw.bb486:                                         ; preds = %sw.epilog
  %call489 = call fastcc zeroext i1 @check_if_index_root(ptr noundef %rec.1, ptr noundef %lrh)
  br i1 %call489, label %lor.lhs.false490, label %sw.bb486.dirty_vol_crit_edge

sw.bb486.dirty_vol_crit_edge:                     ; preds = %sw.bb486
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false490:                                 ; preds = %sw.bb486
  %468 = getelementptr inbounds %struct.ATTRIB, ptr %attr.2, i32 0, i32 7
  %data_off.i1477 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %468, i32 0, i32 1
  %469 = ptrtoint ptr %data_off.i1477 to i32
  call void @__asan_load2_noabort(i32 %469)
  %470 = load i16, ptr %data_off.i1477, align 4
  %471 = call i16 @llvm.bswap.i16(i16 %470) #18
  %conv.i1478 = zext i16 %471 to i32
  %add.ptr.i1479 = getelementptr i8, ptr %attr.2, i32 %conv.i1478
  %ihdr488 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i1479, i32 0, i32 5
  %call491 = call fastcc zeroext i1 @check_if_root_index(ptr noundef %attr.2, ptr noundef %ihdr488, ptr noundef %lrh)
  br i1 %call491, label %if.end493, label %lor.lhs.false490.dirty_vol_crit_edge

lor.lhs.false490.dirty_vol_crit_edge:             ; preds = %lor.lhs.false490
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end493:                                        ; preds = %lor.lhs.false490
  call void @__sanitizer_cov_trace_pc() #20
  %472 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %attr_off, align 2
  %474 = call i16 @llvm.bswap.i16(i16 %473)
  %conv495 = zext i16 %474 to i32
  %add.ptr496 = getelementptr i8, ptr %attr.2, i32 %conv495
  %475 = ptrtoint ptr %add.ptr496 to i32
  call void @__asan_load2_noabort(i32 %475)
  %476 = load i16, ptr %add.ptr496, align 4
  %477 = call i16 @llvm.bswap.i16(i16 %476)
  %conv498 = zext i16 %477 to i32
  %add.ptr499 = getelementptr i8, ptr %add.ptr496, i32 %conv498
  %478 = call ptr @memmove(ptr %add.ptr499, ptr %data, i32 %dlen)
  %479 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %mi2, align 4
  %dirty500 = getelementptr inbounds %struct.mft_inode, ptr %480, i32 0, i32 5
  %481 = ptrtoint ptr %dirty500 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 1, ptr %dirty500, align 4
  br label %sw.epilog777

sw.bb501:                                         ; preds = %sw.epilog
  %conv502 = zext i16 %11 to i32
  %add503 = add i32 %conv502, %dlen
  call void @__sanitizer_cov_trace_cmp4(i32 %add503, i32 %7)
  %cmp504 = icmp ugt i32 %add503, %7
  br i1 %cmp504, label %sw.bb501.dirty_vol_crit_edge, label %if.end507

sw.bb501.dirty_vol_crit_edge:                     ; preds = %sw.bb501
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end507:                                        ; preds = %sw.bb501
  call void @__sanitizer_cov_trace_pc() #20
  %482 = call ptr @memset(ptr %attr.2, i32 0, i32 %dlen)
  %483 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %mi2, align 4
  %dirty508 = getelementptr inbounds %struct.mft_inode, ptr %484, i32 0, i32 5
  %485 = ptrtoint ptr %dirty508 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 1, ptr %dirty508, align 4
  br label %sw.epilog777

sw.bb509:                                         ; preds = %sw.epilog
  %conv510 = zext i16 %11 to i64
  %conv512 = zext i32 %dlen to i64
  %add511 = add nuw nsw i64 %conv510, %conv512
  %add513 = add nuw nsw i64 %add511, %shl
  call void @__sanitizer_cov_trace_cmp8(i64 %lco.0, i64 %add513)
  %cmp514 = icmp ult i64 %lco.0, %add513
  br i1 %cmp514, label %sw.bb509.dirty_vol_crit_edge, label %if.end517

sw.bb509.dirty_vol_crit_edge:                     ; preds = %sw.bb509
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end517:                                        ; preds = %sw.bb509
  %conv518 = zext i16 %11 to i32
  %add.ptr519 = getelementptr i8, ptr %buffer_le.0, i32 %conv518
  %486 = call ptr @memcpy(ptr %add.ptr519, ptr %data, i32 %dlen)
  %487 = ptrtoint ptr %attr.2 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %attr.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %488)
  %cmp521 = icmp eq i32 %488, -1610612736
  br i1 %cmp521, label %if.then523, label %if.end517.sw.epilog777_crit_edge

if.end517.sw.epilog777_crit_edge:                 ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog777

if.then523:                                       ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #20
  %call524 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %buffer_le.0, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb526:                                         ; preds = %sw.epilog
  %conv527 = zext i16 %11 to i32
  %add.ptr528 = getelementptr i8, ptr %buffer_le.0, i32 %conv527
  %ihdr529 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr528, i32 0, i32 2
  %size530 = getelementptr inbounds %struct.NTFS_DE, ptr %data, i32 0, i32 1
  %489 = ptrtoint ptr %size530 to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %size530, align 4
  %491 = call i16 @llvm.bswap.i16(i16 %490)
  %conv531 = zext i16 %491 to i32
  %conv532 = zext i16 %14 to i32
  %add.ptr533 = getelementptr i8, ptr %add.ptr528, i32 %conv532
  %492 = ptrtoint ptr %add.ptr528 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %add.ptr528, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %493)
  %cmp.i1480.not = icmp eq i32 %493, 1111572804
  br i1 %cmp.i1480.not, label %sw.bb526.dirty_vol_crit_edge, label %if.end538

sw.bb526.dirty_vol_crit_edge:                     ; preds = %sw.bb526
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end538:                                        ; preds = %sw.bb526
  %tobool.not.i1482 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1482, label %if.end538.if.end543_crit_edge, label %if.end.i1484

if.end538.if.end543_crit_edge:                    ; preds = %if.end538
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end543

if.end.i1484:                                     ; preds = %if.end538
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %493)
  %cmp.i1483 = icmp eq i32 %493, 1213156421
  br i1 %cmp.i1483, label %if.end.i1484.out_crit_edge, label %check_lsn.exit1490

if.end.i1484.out_crit_edge:                       ; preds = %if.end.i1484
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1490:                               ; preds = %if.end.i1484
  %lsn1.i1485 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr528, i32 0, i32 3
  %494 = ptrtoint ptr %lsn1.i1485 to i32
  call void @__asan_load8_noabort(i32 %494)
  %495 = load i64, ptr %lsn1.i1485, align 8
  %496 = call i64 @llvm.bswap.i64(i64 %495) #18
  %497 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %497)
  %498 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %498, i64 %496)
  %cmp4.i1486.not = icmp ugt i64 %498, %496
  br i1 %cmp4.i1486.not, label %check_lsn.exit1490.if.end543_crit_edge, label %check_lsn.exit1490.out_crit_edge

check_lsn.exit1490.out_crit_edge:                 ; preds = %check_lsn.exit1490
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1490.if.end543_crit_edge:           ; preds = %check_lsn.exit1490
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end543

if.end543:                                        ; preds = %check_lsn.exit1490.if.end543_crit_edge, %if.end538.if.end543_crit_edge
  %used544 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr529, i32 0, i32 1
  %499 = ptrtoint ptr %used544 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %used544, align 4
  %501 = call i32 @llvm.bswap.i32(i32 %500)
  %call545 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr528, i32 noundef %bytes.3)
  br i1 %call545, label %lor.lhs.false546, label %if.end543.dirty_vol_crit_edge

if.end543.dirty_vol_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false546:                                 ; preds = %if.end543
  %call548 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr529, i32 noundef %conv532)
  %call548.not = xor i1 %call548, true
  %add.ptr550 = getelementptr i8, ptr %data, i32 %conv531
  %add.ptr551 = getelementptr i8, ptr %lrh, i32 %rec_len
  %cmp552 = icmp ugt ptr %add.ptr550, %add.ptr551
  %or.cond1421 = select i1 %call548.not, i1 true, i1 %cmp552
  br i1 %or.cond1421, label %lor.lhs.false546.dirty_vol_crit_edge, label %lor.lhs.false554

lor.lhs.false546.dirty_vol_crit_edge:             ; preds = %lor.lhs.false546
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false554:                                 ; preds = %lor.lhs.false546
  %add555 = add i32 %501, %conv531
  %total556 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr529, i32 0, i32 2
  %502 = ptrtoint ptr %total556 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %total556, align 4
  %504 = call i32 @llvm.bswap.i32(i32 %503)
  call void @__sanitizer_cov_trace_cmp4(i32 %add555, i32 %504)
  %cmp557 = icmp ugt i32 %add555, %504
  br i1 %cmp557, label %lor.lhs.false554.dirty_vol_crit_edge, label %if.end560

lor.lhs.false554.dirty_vol_crit_edge:             ; preds = %lor.lhs.false554
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end560:                                        ; preds = %lor.lhs.false554
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr561 = getelementptr i8, ptr %add.ptr533, i32 %conv531
  %add.ptr562 = getelementptr i8, ptr %ihdr529, i32 %501
  %505 = ptrtoint ptr %add.ptr562 to i32
  %506 = ptrtoint ptr %add.ptr533 to i32
  %sub563 = sub i32 %505, %506
  %507 = call ptr @memmove(ptr %add.ptr561, ptr %add.ptr533, i32 %sub563)
  %508 = call ptr @memcpy(ptr %add.ptr533, ptr %data, i32 %conv531)
  %509 = call i32 @llvm.bswap.i32(i32 %add555)
  %510 = ptrtoint ptr %used544 to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 %509, ptr %used544, align 4
  %call567 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr528, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb568:                                         ; preds = %sw.epilog
  %conv569 = zext i16 %11 to i32
  %add.ptr570 = getelementptr i8, ptr %buffer_le.0, i32 %conv569
  %ihdr571 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr570, i32 0, i32 2
  %conv572 = zext i16 %14 to i32
  %add.ptr573 = getelementptr i8, ptr %add.ptr570, i32 %conv572
  %size574 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr573, i32 0, i32 1
  %511 = ptrtoint ptr %size574 to i32
  call void @__asan_load2_noabort(i32 %511)
  %512 = load i16, ptr %size574, align 4
  %513 = call i16 @llvm.bswap.i16(i16 %512)
  %conv575 = zext i16 %513 to i32
  %514 = ptrtoint ptr %add.ptr570 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %add.ptr570, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %515)
  %cmp.i1491.not = icmp eq i32 %515, 1111572804
  br i1 %cmp.i1491.not, label %sw.bb568.dirty_vol_crit_edge, label %if.end580

sw.bb568.dirty_vol_crit_edge:                     ; preds = %sw.bb568
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end580:                                        ; preds = %sw.bb568
  %tobool.not.i1493 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1493, label %if.end580.if.end585_crit_edge, label %if.end.i1495

if.end580.if.end585_crit_edge:                    ; preds = %if.end580
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end585

if.end.i1495:                                     ; preds = %if.end580
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %515)
  %cmp.i1494 = icmp eq i32 %515, 1213156421
  br i1 %cmp.i1494, label %if.end.i1495.out_crit_edge, label %check_lsn.exit1501

if.end.i1495.out_crit_edge:                       ; preds = %if.end.i1495
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1501:                               ; preds = %if.end.i1495
  %lsn1.i1496 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr570, i32 0, i32 3
  %516 = ptrtoint ptr %lsn1.i1496 to i32
  call void @__asan_load8_noabort(i32 %516)
  %517 = load i64, ptr %lsn1.i1496, align 8
  %518 = call i64 @llvm.bswap.i64(i64 %517) #18
  %519 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %519)
  %520 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %520, i64 %518)
  %cmp4.i1497.not = icmp ugt i64 %520, %518
  br i1 %cmp4.i1497.not, label %check_lsn.exit1501.if.end585_crit_edge, label %check_lsn.exit1501.out_crit_edge

check_lsn.exit1501.out_crit_edge:                 ; preds = %check_lsn.exit1501
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1501.if.end585_crit_edge:           ; preds = %check_lsn.exit1501
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end585

if.end585:                                        ; preds = %check_lsn.exit1501.if.end585_crit_edge, %if.end580.if.end585_crit_edge
  %call586 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr570, i32 noundef %bytes.3)
  br i1 %call586, label %lor.lhs.false587, label %if.end585.dirty_vol_crit_edge

if.end585.dirty_vol_crit_edge:                    ; preds = %if.end585
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false587:                                 ; preds = %if.end585
  %call589 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr571, i32 noundef %conv572)
  br i1 %call589, label %if.end591, label %lor.lhs.false587.dirty_vol_crit_edge

lor.lhs.false587.dirty_vol_crit_edge:             ; preds = %lor.lhs.false587
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end591:                                        ; preds = %lor.lhs.false587
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr592 = getelementptr i8, ptr %add.ptr573, i32 %conv575
  %used593 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr571, i32 0, i32 1
  %521 = ptrtoint ptr %used593 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %used593, align 4
  %523 = call i32 @llvm.bswap.i32(i32 %522)
  %add.ptr594 = getelementptr i8, ptr %ihdr571, i32 %523
  %524 = ptrtoint ptr %add.ptr594 to i32
  %525 = ptrtoint ptr %add.ptr592 to i32
  %sub595 = sub i32 %524, %525
  %526 = call ptr @memmove(ptr %add.ptr573, ptr %add.ptr592, i32 %sub595)
  %sub596 = sub i32 %523, %conv575
  %527 = call i32 @llvm.bswap.i32(i32 %sub596)
  %528 = ptrtoint ptr %used593 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %527, ptr %used593, align 4
  %call599 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr570, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb600:                                         ; preds = %sw.epilog
  %conv601 = zext i16 %11 to i32
  %add.ptr602 = getelementptr i8, ptr %buffer_le.0, i32 %conv601
  %ihdr603 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr602, i32 0, i32 2
  %conv604 = zext i16 %14 to i32
  %add.ptr605 = getelementptr i8, ptr %add.ptr602, i32 %conv604
  %529 = ptrtoint ptr %add.ptr602 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %add.ptr602, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %530)
  %cmp.i1502.not = icmp eq i32 %530, 1111572804
  br i1 %cmp.i1502.not, label %sw.bb600.dirty_vol_crit_edge, label %if.end610

sw.bb600.dirty_vol_crit_edge:                     ; preds = %sw.bb600
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end610:                                        ; preds = %sw.bb600
  %tobool.not.i1504 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1504, label %if.end610.if.end615_crit_edge, label %if.end.i1506

if.end610.if.end615_crit_edge:                    ; preds = %if.end610
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end615

if.end.i1506:                                     ; preds = %if.end610
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %530)
  %cmp.i1505 = icmp eq i32 %530, 1213156421
  br i1 %cmp.i1505, label %if.end.i1506.out_crit_edge, label %check_lsn.exit1512

if.end.i1506.out_crit_edge:                       ; preds = %if.end.i1506
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1512:                               ; preds = %if.end.i1506
  %lsn1.i1507 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr602, i32 0, i32 3
  %531 = ptrtoint ptr %lsn1.i1507 to i32
  call void @__asan_load8_noabort(i32 %531)
  %532 = load i64, ptr %lsn1.i1507, align 8
  %533 = call i64 @llvm.bswap.i64(i64 %532) #18
  %534 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %534)
  %535 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %535, i64 %533)
  %cmp4.i1508.not = icmp ugt i64 %535, %533
  br i1 %cmp4.i1508.not, label %check_lsn.exit1512.if.end615_crit_edge, label %check_lsn.exit1512.out_crit_edge

check_lsn.exit1512.out_crit_edge:                 ; preds = %check_lsn.exit1512
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1512.if.end615_crit_edge:           ; preds = %check_lsn.exit1512
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end615

if.end615:                                        ; preds = %check_lsn.exit1512.if.end615_crit_edge, %if.end610.if.end615_crit_edge
  %call616 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr602, i32 noundef %bytes.3)
  br i1 %call616, label %lor.lhs.false617, label %if.end615.dirty_vol_crit_edge

if.end615.dirty_vol_crit_edge:                    ; preds = %if.end615
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false617:                                 ; preds = %if.end615
  %call619 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr603, i32 noundef %conv604)
  br i1 %call619, label %lor.lhs.false620, label %lor.lhs.false617.dirty_vol_crit_edge

lor.lhs.false617.dirty_vol_crit_edge:             ; preds = %lor.lhs.false617
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false620:                                 ; preds = %lor.lhs.false617
  %add622 = add i32 %conv604, %dlen
  %total623 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr603, i32 0, i32 2
  %536 = ptrtoint ptr %total623 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %total623, align 4
  %538 = call i32 @llvm.bswap.i32(i32 %537)
  %add624 = add i32 %538, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %add622, i32 %add624)
  %cmp625 = icmp ugt i32 %add622, %add624
  br i1 %cmp625, label %lor.lhs.false620.dirty_vol_crit_edge, label %if.end628

lor.lhs.false620.dirty_vol_crit_edge:             ; preds = %lor.lhs.false620
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end628:                                        ; preds = %lor.lhs.false620
  call void @__sanitizer_cov_trace_pc() #20
  %add630 = add i32 %add622, -24
  %539 = call i32 @llvm.bswap.i32(i32 %add630)
  %used631 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr603, i32 0, i32 1
  %540 = ptrtoint ptr %used631 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %539, ptr %used631, align 4
  %541 = call ptr @memmove(ptr %add.ptr605, ptr %data, i32 %dlen)
  %call633 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr602, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb634:                                         ; preds = %sw.epilog
  %conv635 = zext i16 %11 to i32
  %add.ptr636 = getelementptr i8, ptr %buffer_le.0, i32 %conv635
  %ihdr637 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr636, i32 0, i32 2
  %conv638 = zext i16 %14 to i32
  %add.ptr639 = getelementptr i8, ptr %add.ptr636, i32 %conv638
  %542 = ptrtoint ptr %add.ptr636 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %add.ptr636, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %543)
  %cmp.i1513.not = icmp eq i32 %543, 1111572804
  br i1 %cmp.i1513.not, label %sw.bb634.dirty_vol_crit_edge, label %if.end644

sw.bb634.dirty_vol_crit_edge:                     ; preds = %sw.bb634
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end644:                                        ; preds = %sw.bb634
  %tobool.not.i1515 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1515, label %if.end644.if.end649_crit_edge, label %if.end.i1517

if.end644.if.end649_crit_edge:                    ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end649

if.end.i1517:                                     ; preds = %if.end644
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %543)
  %cmp.i1516 = icmp eq i32 %543, 1213156421
  br i1 %cmp.i1516, label %if.end.i1517.out_crit_edge, label %check_lsn.exit1523

if.end.i1517.out_crit_edge:                       ; preds = %if.end.i1517
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1523:                               ; preds = %if.end.i1517
  %lsn1.i1518 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr636, i32 0, i32 3
  %544 = ptrtoint ptr %lsn1.i1518 to i32
  call void @__asan_load8_noabort(i32 %544)
  %545 = load i64, ptr %lsn1.i1518, align 8
  %546 = call i64 @llvm.bswap.i64(i64 %545) #18
  %547 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %547)
  %548 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %548, i64 %546)
  %cmp4.i1519.not = icmp ugt i64 %548, %546
  br i1 %cmp4.i1519.not, label %check_lsn.exit1523.if.end649_crit_edge, label %check_lsn.exit1523.out_crit_edge

check_lsn.exit1523.out_crit_edge:                 ; preds = %check_lsn.exit1523
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1523.if.end649_crit_edge:           ; preds = %check_lsn.exit1523
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end649

if.end649:                                        ; preds = %check_lsn.exit1523.if.end649_crit_edge, %if.end644.if.end649_crit_edge
  %call650 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr636, i32 noundef %bytes.3)
  br i1 %call650, label %lor.lhs.false651, label %if.end649.dirty_vol_crit_edge

if.end649.dirty_vol_crit_edge:                    ; preds = %if.end649
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false651:                                 ; preds = %if.end649
  %call653 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr637, i32 noundef %conv638)
  br i1 %call653, label %if.end655, label %lor.lhs.false651.dirty_vol_crit_edge

lor.lhs.false651.dirty_vol_crit_edge:             ; preds = %lor.lhs.false651
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end655:                                        ; preds = %lor.lhs.false651
  call void @__sanitizer_cov_trace_pc() #20
  %549 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %549)
  %550 = load i64, ptr %data, align 8
  %size.i1524 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr639, i32 0, i32 1
  %551 = ptrtoint ptr %size.i1524 to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %size.i1524, align 4
  %553 = call i16 @llvm.bswap.i16(i16 %552) #18
  %conv.i1525 = zext i16 %553 to i32
  %sub.i1526 = add nsw i32 %conv.i1525, -8
  %add.ptr.i1527 = getelementptr i8, ptr %add.ptr639, i32 %sub.i1526
  %554 = ptrtoint ptr %add.ptr.i1527 to i32
  call void @__asan_store8_noabort(i32 %554)
  store i64 %550, ptr %add.ptr.i1527, align 8
  %call657 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr636, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb658:                                         ; preds = %sw.epilog
  %conv659 = zext i16 %11 to i32
  %add.ptr660 = getelementptr i8, ptr %buffer_le.0, i32 %conv659
  %ihdr661 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr660, i32 0, i32 2
  %conv662 = zext i16 %14 to i32
  %add.ptr663 = getelementptr i8, ptr %add.ptr660, i32 %conv662
  %555 = ptrtoint ptr %add.ptr660 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %add.ptr660, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %556)
  %cmp.i1528.not = icmp eq i32 %556, 1111572804
  br i1 %cmp.i1528.not, label %sw.bb658.dirty_vol_crit_edge, label %if.end668

sw.bb658.dirty_vol_crit_edge:                     ; preds = %sw.bb658
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end668:                                        ; preds = %sw.bb658
  %tobool.not.i1530 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1530, label %if.end668.if.end673_crit_edge, label %if.end.i1532

if.end668.if.end673_crit_edge:                    ; preds = %if.end668
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end673

if.end.i1532:                                     ; preds = %if.end668
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %556)
  %cmp.i1531 = icmp eq i32 %556, 1213156421
  br i1 %cmp.i1531, label %if.end.i1532.out_crit_edge, label %check_lsn.exit1538

if.end.i1532.out_crit_edge:                       ; preds = %if.end.i1532
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1538:                               ; preds = %if.end.i1532
  %lsn1.i1533 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr660, i32 0, i32 3
  %557 = ptrtoint ptr %lsn1.i1533 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %lsn1.i1533, align 8
  %559 = call i64 @llvm.bswap.i64(i64 %558) #18
  %560 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %560)
  %561 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %561, i64 %559)
  %cmp4.i1534.not = icmp ugt i64 %561, %559
  br i1 %cmp4.i1534.not, label %check_lsn.exit1538.if.end673_crit_edge, label %check_lsn.exit1538.out_crit_edge

check_lsn.exit1538.out_crit_edge:                 ; preds = %check_lsn.exit1538
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1538.if.end673_crit_edge:           ; preds = %check_lsn.exit1538
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end673

if.end673:                                        ; preds = %check_lsn.exit1538.if.end673_crit_edge, %if.end668.if.end673_crit_edge
  %call674 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr660, i32 noundef %bytes.3)
  br i1 %call674, label %lor.lhs.false675, label %if.end673.dirty_vol_crit_edge

if.end673.dirty_vol_crit_edge:                    ; preds = %if.end673
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false675:                                 ; preds = %if.end673
  %call677 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr661, i32 noundef %conv662)
  br i1 %call677, label %if.end679, label %lor.lhs.false675.dirty_vol_crit_edge

lor.lhs.false675.dirty_vol_crit_edge:             ; preds = %lor.lhs.false675
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end679:                                        ; preds = %lor.lhs.false675
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr680 = getelementptr %struct.NTFS_DE, ptr %add.ptr663, i32 1
  %dup681 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr680, i32 0, i32 1
  %562 = call ptr @memmove(ptr %dup681, ptr %data, i32 56)
  %call683 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr660, i32 noundef %bytes.3) #18
  br label %sw.epilog777

sw.bb684:                                         ; preds = %sw.epilog
  %563 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %data, align 4
  %565 = call i32 @llvm.bswap.i32(i32 %564)
  %bits = getelementptr inbounds %struct.BITMAP_RANGE, ptr %data, i32 0, i32 1
  %566 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load i32, ptr %bits, align 4
  %568 = call i32 @llvm.bswap.i32(i32 %567)
  %add685 = add i32 %565, 7
  %div1412 = lshr i32 %add685, 3
  %conv686 = zext i32 %div1412 to i64
  %add687 = add nuw nsw i64 %shl, %conv686
  call void @__sanitizer_cov_trace_cmp8(i64 %add687, i64 %lco.0)
  %cmp688 = icmp ugt i64 %add687, %lco.0
  br i1 %cmp688, label %sw.bb684.dirty_vol_crit_edge, label %lor.lhs.false690

sw.bb684.dirty_vol_crit_edge:                     ; preds = %sw.bb684
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false690:                                 ; preds = %sw.bb684
  %add692 = add i32 %add685, %568
  %div6931413 = lshr i32 %add692, 3
  %conv694 = zext i32 %div6931413 to i64
  %add695 = add nuw nsw i64 %shl, %conv694
  call void @__sanitizer_cov_trace_cmp8(i64 %add695, i64 %lco.0)
  %cmp696 = icmp ugt i64 %add695, %lco.0
  br i1 %cmp696, label %lor.lhs.false690.dirty_vol_crit_edge, label %if.end699

lor.lhs.false690.dirty_vol_crit_edge:             ; preds = %lor.lhs.false690
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end699:                                        ; preds = %lor.lhs.false690
  call void @__sanitizer_cov_trace_pc() #20
  %conv700 = zext i16 %11 to i32
  %add.ptr701 = getelementptr i8, ptr %buffer_le.0, i32 %conv700
  call void @__bitmap_set(ptr noundef %add.ptr701, i32 noundef %565, i32 noundef %568) #18
  br label %sw.epilog777

sw.bb702:                                         ; preds = %sw.epilog
  %569 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %data, align 4
  %571 = call i32 @llvm.bswap.i32(i32 %570)
  %bits704 = getelementptr inbounds %struct.BITMAP_RANGE, ptr %data, i32 0, i32 1
  %572 = ptrtoint ptr %bits704 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %bits704, align 4
  %574 = call i32 @llvm.bswap.i32(i32 %573)
  %add705 = add i32 %571, 7
  %div7061410 = lshr i32 %add705, 3
  %conv707 = zext i32 %div7061410 to i64
  %add708 = add nuw nsw i64 %shl, %conv707
  call void @__sanitizer_cov_trace_cmp8(i64 %add708, i64 %lco.0)
  %cmp709 = icmp ugt i64 %add708, %lco.0
  br i1 %cmp709, label %sw.bb702.dirty_vol_crit_edge, label %lor.lhs.false711

sw.bb702.dirty_vol_crit_edge:                     ; preds = %sw.bb702
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false711:                                 ; preds = %sw.bb702
  %add713 = add i32 %add705, %574
  %div7141411 = lshr i32 %add713, 3
  %conv715 = zext i32 %div7141411 to i64
  %add716 = add nuw nsw i64 %shl, %conv715
  call void @__sanitizer_cov_trace_cmp8(i64 %add716, i64 %lco.0)
  %cmp717 = icmp ugt i64 %add716, %lco.0
  br i1 %cmp717, label %lor.lhs.false711.dirty_vol_crit_edge, label %if.end720

lor.lhs.false711.dirty_vol_crit_edge:             ; preds = %lor.lhs.false711
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end720:                                        ; preds = %lor.lhs.false711
  call void @__sanitizer_cov_trace_pc() #20
  %conv721 = zext i16 %11 to i32
  %add.ptr722 = getelementptr i8, ptr %buffer_le.0, i32 %conv721
  call void @__bitmap_clear(ptr noundef %add.ptr722, i32 noundef %571, i32 noundef %574) #18
  br label %sw.epilog777

sw.bb723:                                         ; preds = %sw.epilog
  %conv724 = zext i16 %11 to i32
  %add.ptr725 = getelementptr i8, ptr %buffer_le.0, i32 %conv724
  %ihdr726 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %add.ptr725, i32 0, i32 2
  %conv727 = zext i16 %14 to i32
  %add.ptr728 = getelementptr i8, ptr %add.ptr725, i32 %conv727
  %575 = ptrtoint ptr %add.ptr725 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %add.ptr725, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111572804, i32 %576)
  %cmp.i1539.not = icmp eq i32 %576, 1111572804
  br i1 %cmp.i1539.not, label %sw.bb723.dirty_vol_crit_edge, label %if.end733

sw.bb723.dirty_vol_crit_edge:                     ; preds = %sw.bb723
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end733:                                        ; preds = %sw.bb723
  %tobool.not.i1541 = icmp eq ptr %rlsn, null
  br i1 %tobool.not.i1541, label %if.end733.if.end738_crit_edge, label %if.end.i1543

if.end733.if.end738_crit_edge:                    ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end738

if.end.i1543:                                     ; preds = %if.end733
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213156421, i32 %576)
  %cmp.i1542 = icmp eq i32 %576, 1213156421
  br i1 %cmp.i1542, label %if.end.i1543.out_crit_edge, label %check_lsn.exit1549

if.end.i1543.out_crit_edge:                       ; preds = %if.end.i1543
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1549:                               ; preds = %if.end.i1543
  %lsn1.i1544 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %add.ptr725, i32 0, i32 3
  %577 = ptrtoint ptr %lsn1.i1544 to i32
  call void @__asan_load8_noabort(i32 %577)
  %578 = load i64, ptr %lsn1.i1544, align 8
  %579 = call i64 @llvm.bswap.i64(i64 %578) #18
  %580 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %580)
  %581 = load i64, ptr %rlsn, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %581, i64 %579)
  %cmp4.i1545.not = icmp ugt i64 %581, %579
  br i1 %cmp4.i1545.not, label %check_lsn.exit1549.if.end738_crit_edge, label %check_lsn.exit1549.out_crit_edge

check_lsn.exit1549.out_crit_edge:                 ; preds = %check_lsn.exit1549
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

check_lsn.exit1549.if.end738_crit_edge:           ; preds = %check_lsn.exit1549
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end738

if.end738:                                        ; preds = %check_lsn.exit1549.if.end738_crit_edge, %if.end733.if.end738_crit_edge
  %call739 = call fastcc zeroext i1 @check_index_buffer(ptr noundef %add.ptr725, i32 noundef %bytes.3)
  br i1 %call739, label %lor.lhs.false740, label %if.end738.dirty_vol_crit_edge

if.end738.dirty_vol_crit_edge:                    ; preds = %if.end738
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

lor.lhs.false740:                                 ; preds = %if.end738
  %call742 = call fastcc zeroext i1 @check_if_alloc_index(ptr noundef %ihdr726, i32 noundef %conv727)
  br i1 %call742, label %if.end744, label %lor.lhs.false740.dirty_vol_crit_edge

lor.lhs.false740.dirty_vol_crit_edge:             ; preds = %lor.lhs.false740
  call void @__sanitizer_cov_trace_pc() #20
  br label %dirty_vol

if.end744:                                        ; preds = %lor.lhs.false740
  call void @__sanitizer_cov_trace_pc() #20
  %582 = ptrtoint ptr %add.ptr728 to i32
  call void @__asan_load2_noabort(i32 %582)
  %583 = load i16, ptr %add.ptr728, align 4
  %584 = call i16 @llvm.bswap.i16(i16 %583)
  %conv746 = zext i16 %584 to i32
  %add.ptr747 = getelementptr i8, ptr %add.ptr728, i32 %conv746
  %585 = call ptr @memmove(ptr %add.ptr747, ptr %data, i32 %dlen)
  %call749 = call zeroext i1 @ntfs_fix_pre_write(ptr noundef %add.ptr725, i32 noundef %bytes.3) #18
  br label %sw.epilog777

do.end763:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3689, i32 noundef 9, ptr noundef null) #18
  br label %sw.epilog777

sw.epilog777:                                     ; preds = %do.end763, %if.end744, %if.end720, %if.end699, %if.end679, %if.end655, %if.end628, %if.end591, %if.end560, %if.then523, %if.end517.sw.epilog777_crit_edge, %if.end507, %if.end493, %if.end480, %if.end468, %if.end445, %if.end423, %if.end402, %if.end373, %if.end313, %if.end240, %if.end227, %if.end170, %sw.bb159, %if.end156
  %bytes.31579 = phi i32 [ %bytes.3, %do.end763 ], [ %bytes.3, %if.end744 ], [ %bytes.3, %if.end720 ], [ %bytes.3, %if.end699 ], [ %bytes.3, %if.end679 ], [ %bytes.3, %if.end655 ], [ %bytes.3, %if.end628 ], [ %bytes.3, %if.end591 ], [ %bytes.3, %if.end560 ], [ %bytes.3, %if.then523 ], [ %bytes.3, %if.end517.sw.epilog777_crit_edge ], [ %bytes.3, %if.end507 ], [ %bytes.3, %if.end493 ], [ %bytes.3, %if.end480 ], [ %bytes.3, %if.end468 ], [ %bytes.3, %if.end445 ], [ %bytes.3, %if.end423 ], [ %bytes.3, %if.end402 ], [ %bytes.3, %if.end373 ], [ %bytes.3, %if.end313 ], [ %bytes.3, %if.end240 ], [ %bytes.3, %if.end227 ], [ %bytes.3, %if.end170 ], [ %bytes.31580, %sw.bb159 ], [ %bytes.3, %if.end156 ]
  %buffer_le.01577 = phi ptr [ %buffer_le.0, %do.end763 ], [ %buffer_le.0, %if.end744 ], [ %buffer_le.0, %if.end720 ], [ %buffer_le.0, %if.end699 ], [ %buffer_le.0, %if.end679 ], [ %buffer_le.0, %if.end655 ], [ %buffer_le.0, %if.end628 ], [ %buffer_le.0, %if.end591 ], [ %buffer_le.0, %if.end560 ], [ %buffer_le.0, %if.then523 ], [ %buffer_le.0, %if.end517.sw.epilog777_crit_edge ], [ %buffer_le.0, %if.end507 ], [ %buffer_le.0, %if.end493 ], [ %buffer_le.0, %if.end480 ], [ %buffer_le.0, %if.end468 ], [ %buffer_le.0, %if.end445 ], [ %buffer_le.0, %if.end423 ], [ %buffer_le.0, %if.end402 ], [ %buffer_le.0, %if.end373 ], [ %buffer_le.0, %if.end313 ], [ %buffer_le.0, %if.end240 ], [ %buffer_le.0, %if.end227 ], [ %buffer_le.0, %if.end170 ], [ %buffer_le.01578, %sw.bb159 ], [ %buffer_le.0, %if.end156 ]
  %rec.11574 = phi ptr [ %rec.1, %do.end763 ], [ %rec.1, %if.end744 ], [ %rec.1, %if.end720 ], [ %rec.1, %if.end699 ], [ %rec.1, %if.end679 ], [ %rec.1, %if.end655 ], [ %rec.1, %if.end628 ], [ %rec.1, %if.end591 ], [ %rec.1, %if.end560 ], [ %rec.1, %if.then523 ], [ %rec.1, %if.end517.sw.epilog777_crit_edge ], [ %rec.1, %if.end507 ], [ %rec.1, %if.end493 ], [ %rec.1, %if.end480 ], [ %rec.1, %if.end468 ], [ %rec.1, %if.end445 ], [ %rec.1, %if.end423 ], [ %rec.1, %if.end402 ], [ %rec.1, %if.end373 ], [ %rec.1, %if.end313 ], [ %rec.1, %if.end240 ], [ %rec.1, %if.end227 ], [ %rec.1, %if.end170 ], [ %rec.11575, %sw.bb159 ], [ %rec.1, %if.end156 ]
  %inode.11568 = phi ptr [ %inode.1, %do.end763 ], [ %inode.1, %if.end744 ], [ %inode.1, %if.end720 ], [ %inode.1, %if.end699 ], [ %inode.1, %if.end679 ], [ %inode.1, %if.end655 ], [ %inode.1, %if.end628 ], [ %inode.1, %if.end591 ], [ %inode.1, %if.end560 ], [ %inode.1, %if.then523 ], [ %inode.1, %if.end517.sw.epilog777_crit_edge ], [ %inode.1, %if.end507 ], [ %inode.1, %if.end493 ], [ %inode.1, %if.end480 ], [ %inode.1, %if.end468 ], [ %inode.1, %if.end445 ], [ %inode.1, %if.end423 ], [ %inode.1, %if.end402 ], [ %inode.1, %if.end373 ], [ %inode.1, %if.end313 ], [ %inode.1, %if.end240 ], [ %inode.1, %if.end227 ], [ %inode.1, %if.end170 ], [ %inode.11569, %sw.bb159 ], [ %inode.1, %if.end156 ]
  %ib.0 = phi ptr [ null, %do.end763 ], [ %add.ptr725, %if.end744 ], [ null, %if.end720 ], [ null, %if.end699 ], [ %add.ptr660, %if.end679 ], [ %add.ptr636, %if.end655 ], [ %add.ptr602, %if.end628 ], [ %add.ptr570, %if.end591 ], [ %add.ptr528, %if.end560 ], [ null, %if.then523 ], [ null, %if.end517.sw.epilog777_crit_edge ], [ null, %if.end507 ], [ null, %if.end493 ], [ null, %if.end480 ], [ null, %if.end468 ], [ null, %if.end445 ], [ null, %if.end423 ], [ null, %if.end402 ], [ null, %if.end373 ], [ null, %if.end313 ], [ null, %if.end240 ], [ null, %if.end227 ], [ null, %if.end170 ], [ null, %sw.bb159 ], [ null, %if.end156 ]
  %a_dirty.0.off0 = phi i1 [ false, %do.end763 ], [ true, %if.end744 ], [ true, %if.end720 ], [ true, %if.end699 ], [ true, %if.end679 ], [ true, %if.end655 ], [ true, %if.end628 ], [ true, %if.end591 ], [ true, %if.end560 ], [ true, %if.then523 ], [ true, %if.end517.sw.epilog777_crit_edge ], [ false, %if.end507 ], [ false, %if.end493 ], [ false, %if.end480 ], [ false, %if.end468 ], [ false, %if.end445 ], [ false, %if.end423 ], [ false, %if.end402 ], [ false, %if.end373 ], [ false, %if.end313 ], [ false, %if.end240 ], [ false, %if.end227 ], [ false, %if.end170 ], [ false, %sw.bb159 ], [ false, %if.end156 ]
  %tobool778.not = icmp eq ptr %rlsn, null
  br i1 %tobool778.not, label %sw.epilog777.if.end790_crit_edge, label %if.then779

sw.epilog777.if.end790_crit_edge:                 ; preds = %sw.epilog777
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end790

if.then779:                                       ; preds = %sw.epilog777
  %586 = ptrtoint ptr %rlsn to i32
  call void @__asan_load8_noabort(i32 %586)
  %587 = load i64, ptr %rlsn, align 8
  %588 = call i64 @llvm.bswap.i64(i64 %587)
  %tobool781.not = icmp eq ptr %rec.11574, null
  br i1 %tobool781.not, label %if.then779.if.end784_crit_edge, label %if.then782

if.then779.if.end784_crit_edge:                   ; preds = %if.then779
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end784

if.then782:                                       ; preds = %if.then779
  call void @__sanitizer_cov_trace_pc() #20
  %lsn = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rec.11574, i32 0, i32 3
  %589 = ptrtoint ptr %lsn to i32
  call void @__asan_store8_noabort(i32 %589)
  store i64 %588, ptr %lsn, align 8
  br label %if.end784

if.end784:                                        ; preds = %if.then782, %if.then779.if.end784_crit_edge
  %tobool785.not = icmp eq ptr %ib.0, null
  br i1 %tobool785.not, label %if.end784.if.end790_crit_edge, label %if.then786

if.end784.if.end790_crit_edge:                    ; preds = %if.end784
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end790

if.then786:                                       ; preds = %if.end784
  call void @__sanitizer_cov_trace_pc() #20
  %lsn788 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %ib.0, i32 0, i32 3
  %590 = ptrtoint ptr %lsn788 to i32
  call void @__asan_store8_noabort(i32 %590)
  store i64 %588, ptr %lsn788, align 8
  br label %if.end790

if.end790:                                        ; preds = %if.then786, %if.end784.if.end790_crit_edge, %sw.epilog777.if.end790_crit_edge
  %591 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %mi2, align 4
  %tobool791.not = icmp eq ptr %592, null
  br i1 %tobool791.not, label %if.end790.if.end801_crit_edge, label %land.lhs.true792

if.end790.if.end801_crit_edge:                    ; preds = %if.end790
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end801

land.lhs.true792:                                 ; preds = %if.end790
  %dirty793 = getelementptr inbounds %struct.mft_inode, ptr %592, i32 0, i32 5
  %593 = ptrtoint ptr %dirty793 to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %dirty793, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %tobool794.not = icmp eq i8 %594, 0
  br i1 %tobool794.not, label %land.lhs.true792.if.end801_crit_edge, label %if.then796

land.lhs.true792.if.end801_crit_edge:             ; preds = %land.lhs.true792
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end801

if.then796:                                       ; preds = %land.lhs.true792
  %call797 = call i32 @mi_write(ptr noundef nonnull %592, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call797)
  %tobool798.not = icmp eq i32 %call797, 0
  %595 = and i1 %a_dirty.0.off0, %tobool798.not
  br i1 %595, label %if.then796.if.then803_crit_edge, label %if.then796.out_crit_edge

if.then796.out_crit_edge:                         ; preds = %if.then796
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.then796.if.then803_crit_edge:                  ; preds = %if.then796
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then803

if.end801:                                        ; preds = %land.lhs.true792.if.end801_crit_edge, %if.end790.if.end801_crit_edge
  br i1 %a_dirty.0.off0, label %if.end801.if.then803_crit_edge, label %if.end801.out_crit_edge

if.end801.out_crit_edge:                          ; preds = %if.end801
  call void @__sanitizer_cov_trace_pc() #20
  br label %out

if.end801.if.then803_crit_edge:                   ; preds = %if.end801
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then803

if.then803:                                       ; preds = %if.end801.if.then803_crit_edge, %if.then796.if.then803_crit_edge
  %run1805 = getelementptr inbounds %struct.OpenAttr, ptr %24, i32 0, i32 1
  %596 = ptrtoint ptr %run1805 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %run1805, align 4
  %call806 = call i32 @ntfs_sb_write_run(ptr noundef %3, ptr noundef %597, i64 noundef %add, ptr noundef %buffer_le.01577, i32 noundef %bytes.31579, i32 noundef 0) #18
  br label %out

out:                                              ; preds = %dirty_vol, %if.then803, %if.end801.out_crit_edge, %if.then796.out_crit_edge, %check_lsn.exit1549.out_crit_edge, %if.end.i1543.out_crit_edge, %check_lsn.exit1538.out_crit_edge, %if.end.i1532.out_crit_edge, %check_lsn.exit1523.out_crit_edge, %if.end.i1517.out_crit_edge, %check_lsn.exit1512.out_crit_edge, %if.end.i1506.out_crit_edge, %check_lsn.exit1501.out_crit_edge, %if.end.i1495.out_crit_edge, %check_lsn.exit1490.out_crit_edge, %if.end.i1484.out_crit_edge, %check_lsn.exit.out_crit_edge, %if.end.i1424.out_crit_edge
  %inode.2 = phi ptr [ %inode.11568, %if.then796.out_crit_edge ], [ %inode.11568, %if.then803 ], [ %inode.11568, %if.end801.out_crit_edge ], [ %inode.3, %dirty_vol ], [ %inode.1, %check_lsn.exit1549.out_crit_edge ], [ %inode.1, %check_lsn.exit1538.out_crit_edge ], [ %inode.1, %check_lsn.exit1523.out_crit_edge ], [ %inode.1, %check_lsn.exit1512.out_crit_edge ], [ %inode.1, %check_lsn.exit1501.out_crit_edge ], [ %inode.1, %check_lsn.exit1490.out_crit_edge ], [ %call, %check_lsn.exit.out_crit_edge ], [ %call, %if.end.i1424.out_crit_edge ], [ %inode.1, %if.end.i1484.out_crit_edge ], [ %inode.1, %if.end.i1495.out_crit_edge ], [ %inode.1, %if.end.i1506.out_crit_edge ], [ %inode.1, %if.end.i1517.out_crit_edge ], [ %inode.1, %if.end.i1532.out_crit_edge ], [ %inode.1, %if.end.i1543.out_crit_edge ]
  %err.3 = phi i32 [ %call797, %if.then796.out_crit_edge ], [ %call806, %if.then803 ], [ 0, %if.end801.out_crit_edge ], [ 0, %dirty_vol ], [ 0, %check_lsn.exit1549.out_crit_edge ], [ 0, %check_lsn.exit1538.out_crit_edge ], [ 0, %check_lsn.exit1523.out_crit_edge ], [ 0, %check_lsn.exit1512.out_crit_edge ], [ 0, %check_lsn.exit1501.out_crit_edge ], [ 0, %check_lsn.exit1490.out_crit_edge ], [ 0, %check_lsn.exit.out_crit_edge ], [ 0, %if.end.i1424.out_crit_edge ], [ 0, %if.end.i1484.out_crit_edge ], [ 0, %if.end.i1495.out_crit_edge ], [ 0, %if.end.i1506.out_crit_edge ], [ 0, %if.end.i1517.out_crit_edge ], [ 0, %if.end.i1532.out_crit_edge ], [ 0, %if.end.i1543.out_crit_edge ]
  %buffer_le.1 = phi ptr [ %buffer_le.01577, %if.then796.out_crit_edge ], [ %buffer_le.01577, %if.then803 ], [ %buffer_le.01577, %if.end801.out_crit_edge ], [ %buffer_le.2, %dirty_vol ], [ %buffer_le.0, %check_lsn.exit1549.out_crit_edge ], [ %buffer_le.0, %check_lsn.exit1538.out_crit_edge ], [ %buffer_le.0, %check_lsn.exit1523.out_crit_edge ], [ %buffer_le.0, %check_lsn.exit1512.out_crit_edge ], [ %buffer_le.0, %check_lsn.exit1501.out_crit_edge ], [ %buffer_le.0, %check_lsn.exit1490.out_crit_edge ], [ null, %check_lsn.exit.out_crit_edge ], [ null, %if.end.i1424.out_crit_edge ], [ %buffer_le.0, %if.end.i1484.out_crit_edge ], [ %buffer_le.0, %if.end.i1495.out_crit_edge ], [ %buffer_le.0, %if.end.i1506.out_crit_edge ], [ %buffer_le.0, %if.end.i1517.out_crit_edge ], [ %buffer_le.0, %if.end.i1532.out_crit_edge ], [ %buffer_le.0, %if.end.i1543.out_crit_edge ]
  %tobool811.not = icmp eq ptr %inode.2, null
  br i1 %tobool811.not, label %out.if.else813_crit_edge, label %if.then812

out.if.else813_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else813

if.then812:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #20
  call void @iput(ptr noundef nonnull %inode.2) #18
  br label %if.end818

if.else813:                                       ; preds = %out.if.else813_crit_edge, %if.end121.if.else813_crit_edge, %if.end.if.else813_crit_edge
  %buffer_le.11618 = phi ptr [ %buffer_le.1, %out.if.else813_crit_edge ], [ null, %if.end.if.else813_crit_edge ], [ %call9.i, %if.end121.if.else813_crit_edge ]
  %err.31616 = phi i32 [ %err.3, %out.if.else813_crit_edge ], [ %call16, %if.end.if.else813_crit_edge ], [ %call122, %if.end121.if.else813_crit_edge ]
  %598 = ptrtoint ptr %mi2 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %mi2, align 4
  %600 = ptrtoint ptr %mi2_child to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %mi2_child, align 4
  %cmp814.not = icmp eq ptr %599, %601
  br i1 %cmp814.not, label %if.else813.if.end818_crit_edge, label %if.then816

if.else813.if.end818_crit_edge:                   ; preds = %if.else813
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end818

if.then816:                                       ; preds = %if.else813
  call void @__sanitizer_cov_trace_pc() #20
  call void @mi_put(ptr noundef %599) #18
  br label %if.end818

if.end818:                                        ; preds = %if.then816, %if.else813.if.end818_crit_edge, %if.then812
  %buffer_le.11617 = phi ptr [ %buffer_le.11618, %if.else813.if.end818_crit_edge ], [ %buffer_le.11618, %if.then816 ], [ %buffer_le.1, %if.then812 ]
  %err.31615 = phi i32 [ %err.31616, %if.else813.if.end818_crit_edge ], [ %err.31616, %if.then816 ], [ %err.3, %if.then812 ]
  call void @kfree(ptr noundef %buffer_le.11617) #18
  br label %cleanup

dirty_vol:                                        ; preds = %lor.lhs.false740.dirty_vol_crit_edge, %if.end738.dirty_vol_crit_edge, %sw.bb723.dirty_vol_crit_edge, %lor.lhs.false711.dirty_vol_crit_edge, %sw.bb702.dirty_vol_crit_edge, %lor.lhs.false690.dirty_vol_crit_edge, %sw.bb684.dirty_vol_crit_edge, %lor.lhs.false675.dirty_vol_crit_edge, %if.end673.dirty_vol_crit_edge, %sw.bb658.dirty_vol_crit_edge, %lor.lhs.false651.dirty_vol_crit_edge, %if.end649.dirty_vol_crit_edge, %sw.bb634.dirty_vol_crit_edge, %lor.lhs.false620.dirty_vol_crit_edge, %lor.lhs.false617.dirty_vol_crit_edge, %if.end615.dirty_vol_crit_edge, %sw.bb600.dirty_vol_crit_edge, %lor.lhs.false587.dirty_vol_crit_edge, %if.end585.dirty_vol_crit_edge, %sw.bb568.dirty_vol_crit_edge, %lor.lhs.false554.dirty_vol_crit_edge, %lor.lhs.false546.dirty_vol_crit_edge, %if.end543.dirty_vol_crit_edge, %sw.bb526.dirty_vol_crit_edge, %sw.bb509.dirty_vol_crit_edge, %sw.bb501.dirty_vol_crit_edge, %lor.lhs.false490.dirty_vol_crit_edge, %sw.bb486.dirty_vol_crit_edge, %lor.lhs.false477.dirty_vol_crit_edge, %sw.bb473.dirty_vol_crit_edge, %lor.lhs.false465.dirty_vol_crit_edge, %sw.bb461.dirty_vol_crit_edge, %lor.lhs.false442.dirty_vol_crit_edge, %sw.bb437.dirty_vol_crit_edge, %lor.lhs.false417.dirty_vol_crit_edge, %lor.lhs.false410.dirty_vol_crit_edge, %sw.bb404.dirty_vol_crit_edge, %lor.lhs.false377.dirty_vol_crit_edge, %sw.bb375.dirty_vol_crit_edge, %if.end341.dirty_vol_crit_edge, %land.lhs.true335.dirty_vol_crit_edge, %lor.lhs.false323.dirty_vol_crit_edge, %lor.lhs.false321.dirty_vol_crit_edge, %sw.bb315.dirty_vol_crit_edge, %land.lhs.true266.dirty_vol_crit_edge, %if.then258.dirty_vol_crit_edge, %sw.bb246.dirty_vol_crit_edge, %sw.bb229.dirty_vol_crit_edge, %sw.bb177.dirty_vol_crit_edge, %lor.lhs.false164.dirty_vol_crit_edge, %sw.bb162.dirty_vol_crit_edge, %sw.bb150.dirty_vol_crit_edge, %check_attr.exit.i.dirty_vol_crit_edge, %sw.bb62.i.i.dirty_vol_crit_edge, %sw.bb60.i.i.dirty_vol_crit_edge, %sw.bb50.i.i.dirty_vol_crit_edge, %sw.epilog.i.i.dirty_vol_crit_edge, %lor.lhs.false35.i.i.dirty_vol_crit_edge, %lor.lhs.false32.i.i.dirty_vol_crit_edge, %lor.lhs.false28.i.i.dirty_vol_crit_edge, %sw.bb20.i.i.dirty_vol_crit_edge, %lor.lhs.false13.i.i.dirty_vol_crit_edge, %sw.bb.i.i.dirty_vol_crit_edge, %if.end.i.i1428.dirty_vol_crit_edge, %land.lhs.true.i.i.dirty_vol_crit_edge, %lor.lhs.false.i.i.dirty_vol_crit_edge, %for.body.i.dirty_vol_crit_edge, %lor.lhs.false22.i.dirty_vol_crit_edge, %lor.lhs.false21.i.dirty_vol_crit_edge, %lor.lhs.false11.i.dirty_vol_crit_edge, %lor.lhs.false5.i.dirty_vol_crit_edge, %lor.lhs.false.i.dirty_vol_crit_edge, %if.end42.dirty_vol_crit_edge, %if.then33.dirty_vol_crit_edge
  %inode.3 = phi ptr [ %inode.1, %sw.bb723.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false740.dirty_vol_crit_edge ], [ %inode.1, %if.end738.dirty_vol_crit_edge ], [ %inode.1, %sw.bb702.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false711.dirty_vol_crit_edge ], [ %inode.1, %sw.bb684.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false690.dirty_vol_crit_edge ], [ %inode.1, %sw.bb658.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false675.dirty_vol_crit_edge ], [ %inode.1, %if.end673.dirty_vol_crit_edge ], [ %inode.1, %sw.bb634.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false651.dirty_vol_crit_edge ], [ %inode.1, %if.end649.dirty_vol_crit_edge ], [ %inode.1, %sw.bb600.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false620.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false617.dirty_vol_crit_edge ], [ %inode.1, %if.end615.dirty_vol_crit_edge ], [ %inode.1, %sw.bb568.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false587.dirty_vol_crit_edge ], [ %inode.1, %if.end585.dirty_vol_crit_edge ], [ %inode.1, %sw.bb526.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false554.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false546.dirty_vol_crit_edge ], [ %inode.1, %if.end543.dirty_vol_crit_edge ], [ %inode.1, %sw.bb509.dirty_vol_crit_edge ], [ %inode.1, %sw.bb501.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false490.dirty_vol_crit_edge ], [ %inode.1, %sw.bb486.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false477.dirty_vol_crit_edge ], [ %inode.1, %sw.bb473.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false465.dirty_vol_crit_edge ], [ %inode.1, %sw.bb461.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false442.dirty_vol_crit_edge ], [ %inode.1, %sw.bb437.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false417.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false410.dirty_vol_crit_edge ], [ %inode.1, %sw.bb404.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false377.dirty_vol_crit_edge ], [ %inode.1, %sw.bb375.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false323.dirty_vol_crit_edge ], [ %inode.1, %land.lhs.true335.dirty_vol_crit_edge ], [ %inode.1, %if.end341.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false321.dirty_vol_crit_edge ], [ %inode.1, %sw.bb315.dirty_vol_crit_edge ], [ %inode.1, %if.then258.dirty_vol_crit_edge ], [ %inode.1, %land.lhs.true266.dirty_vol_crit_edge ], [ %inode.1, %sw.bb246.dirty_vol_crit_edge ], [ %inode.1, %sw.bb229.dirty_vol_crit_edge ], [ %inode.1, %sw.bb177.dirty_vol_crit_edge ], [ %inode.1, %lor.lhs.false164.dirty_vol_crit_edge ], [ %inode.1, %sw.bb162.dirty_vol_crit_edge ], [ %inode.1, %sw.bb150.dirty_vol_crit_edge ], [ %call, %if.then33.dirty_vol_crit_edge ], [ %call, %lor.lhs.false22.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false21.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false11.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false5.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false.i.dirty_vol_crit_edge ], [ %call, %if.end42.dirty_vol_crit_edge ], [ %call, %check_attr.exit.i.dirty_vol_crit_edge ], [ %call, %sw.bb60.i.i.dirty_vol_crit_edge ], [ %call, %land.lhs.true.i.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false.i.i.dirty_vol_crit_edge ], [ %call, %for.body.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false13.i.i.dirty_vol_crit_edge ], [ %call, %sw.bb.i.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false35.i.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false32.i.i.dirty_vol_crit_edge ], [ %call, %lor.lhs.false28.i.i.dirty_vol_crit_edge ], [ %call, %sw.bb20.i.i.dirty_vol_crit_edge ], [ %call, %if.end.i.i1428.dirty_vol_crit_edge ], [ %call, %sw.bb50.i.i.dirty_vol_crit_edge ], [ %call, %sw.bb62.i.i.dirty_vol_crit_edge ], [ %call, %sw.epilog.i.i.dirty_vol_crit_edge ]
  %buffer_le.2 = phi ptr [ %buffer_le.0, %sw.bb723.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false740.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end738.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb702.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false711.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb684.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false690.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb658.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false675.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end673.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb634.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false651.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end649.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb600.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false620.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false617.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end615.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb568.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false587.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end585.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb526.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false554.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false546.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end543.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb509.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb501.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false490.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb486.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false477.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb473.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false465.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb461.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false442.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb437.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false417.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false410.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb404.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false377.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb375.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false323.dirty_vol_crit_edge ], [ %buffer_le.0, %land.lhs.true335.dirty_vol_crit_edge ], [ %buffer_le.0, %if.end341.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false321.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb315.dirty_vol_crit_edge ], [ %buffer_le.0, %if.then258.dirty_vol_crit_edge ], [ %buffer_le.0, %land.lhs.true266.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb246.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb229.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb177.dirty_vol_crit_edge ], [ %buffer_le.0, %lor.lhs.false164.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb162.dirty_vol_crit_edge ], [ %buffer_le.0, %sw.bb150.dirty_vol_crit_edge ], [ null, %if.then33.dirty_vol_crit_edge ], [ null, %lor.lhs.false22.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false21.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false11.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false5.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false.i.dirty_vol_crit_edge ], [ null, %if.end42.dirty_vol_crit_edge ], [ null, %check_attr.exit.i.dirty_vol_crit_edge ], [ null, %sw.bb60.i.i.dirty_vol_crit_edge ], [ null, %land.lhs.true.i.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false.i.i.dirty_vol_crit_edge ], [ null, %for.body.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false13.i.i.dirty_vol_crit_edge ], [ null, %sw.bb.i.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false35.i.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false32.i.i.dirty_vol_crit_edge ], [ null, %lor.lhs.false28.i.i.dirty_vol_crit_edge ], [ null, %sw.bb20.i.i.dirty_vol_crit_edge ], [ null, %if.end.i.i1428.dirty_vol_crit_edge ], [ null, %sw.bb50.i.i.dirty_vol_crit_edge ], [ null, %sw.bb62.i.i.dirty_vol_crit_edge ], [ null, %sw.epilog.i.i.dirty_vol_crit_edge ]
  %set_dirty = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 25
  %602 = ptrtoint ptr %set_dirty to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 1, ptr %set_dirty, align 1
  br label %out

cleanup:                                          ; preds = %if.end818, %if.end105.cleanup_crit_edge, %if.else20.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.31615, %if.end818 ], [ -12, %if.then12.cleanup_crit_edge ], [ %call21, %if.else20.cleanup_crit_edge ], [ -12, %if.end105.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t64) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2_child) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi2) #18
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_update_mftmirr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_fix_pre_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sb_write_run(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_run_nb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_fix_post_read(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @check_subseq_log_page(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %rp, i32 noundef %vbo, i64 noundef %seq) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lsn2 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %rp, i32 0, i32 3
  %0 = ptrtoint ptr %lsn2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lsn2, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %3 = ptrtoint ptr %rp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rp, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %4, label %if.end [
    i32 -1, label %entry.cleanup_crit_edge
    i32 0, label %entry.cleanup_crit_edge19
  ]

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %file_data_bits = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 20
  %6 = ptrtoint ptr %file_data_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %file_data_bits, align 4
  %sh_prom = zext i32 %7 to i64
  %shr = lshr i64 %2, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %seq)
  %cmp4.not = icmp ult i64 %shr, %seq
  br i1 %cmp4.not, label %lor.rhs, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.rhs:                                          ; preds = %if.end
  %sub = add i64 %seq, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %sub)
  %cmp5 = icmp eq i64 %shr, %sub
  br i1 %cmp5, label %land.lhs.true, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.rhs
  %first_page = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %8 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %vbo)
  %cmp6 = icmp eq i32 %9, %vbo
  br i1 %cmp6, label %land.rhs, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %seq_num_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %10 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_num_bits.i, align 8
  %sh_prom.i = zext i32 %11 to i64
  %shl.i = shl i64 %2, %sh_prom.i
  %sub.i = add i32 %11, -3
  %sh_prom2.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %shl.i, %sh_prom2.i
  %conv.i = trunc i64 %shr.i to i32
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %12 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %page_mask, align 4
  %neg = xor i32 %13, -1
  %and = and i32 %conv.i, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %vbo)
  %cmp7 = icmp ne i32 %and, %vbo
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %land.lhs.true.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge19
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge19 ], [ true, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %lor.rhs.cleanup_crit_edge ], [ %cmp7, %land.rhs ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_log_rec_buf(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %rh, ptr nocapture noundef writeonly %buffer) unnamed_addr #0 align 64 {
entry:
  %ph = alloca ptr, align 4
  %usa_error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #18
  %0 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ph, align 4
  %1 = ptrtoint ptr %rh to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %rh, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %seq_num_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %4 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_num_bits.i, align 8
  %sh_prom.i = zext i32 %5 to i64
  %shl.i = shl i64 %3, %sh_prom.i
  %sub.i = add i32 %5, -3
  %sh_prom2.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %shl.i, %sh_prom2.i
  %conv.i = trunc i64 %shr.i to i32
  %page_mask = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %6 = ptrtoint ptr %page_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_mask, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %conv.i, %neg
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %8 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %record_header_len, align 4
  %client_data_len = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %rh, i32 0, i32 3
  %10 = ptrtoint ptr %client_data_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %client_data_len, align 8
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usa_error) #18
  %12 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %usa_error, align 1, !annotation !15
  %13 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %page_size, align 8
  %call480 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %and, ptr noundef nonnull %ph, ptr noundef nonnull %usa_error)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call480)
  %tobool.not81 = icmp eq i32 %call480, 0
  br i1 %tobool.not81, label %if.end6.lr.ph, label %entry.cleanup36_crit_edge

entry.cleanup36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup36

if.end6.lr.ph:                                    ; preds = %entry
  %15 = tail call i32 @llvm.bswap.i32(i32 %11)
  %conv.i67 = trunc i64 %3 to i32
  %shl.i68 = shl i32 %conv.i67, 3
  %and.i = and i32 %shl.i68, %7
  %conv = zext i16 %9 to i32
  %add = add i32 %and.i, %conv
  %sub78 = sub i32 %14, %add
  %16 = call i32 @llvm.umin.i32(i32 %sub78, i32 %15)
  %sub379 = sub i32 %15, %16
  %sys_page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 3
  %l_size.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 1
  %first_page.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 11
  %data_off = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 14
  br label %if.end6

if.end6:                                          ; preds = %cleanup.if.end6_crit_edge, %if.end6.lr.ph
  %sub385 = phi i32 [ %sub379, %if.end6.lr.ph ], [ %sub3, %cleanup.if.end6_crit_edge ]
  %17 = phi i32 [ %16, %if.end6.lr.ph ], [ %49, %cleanup.if.end6_crit_edge ]
  %off.084 = phi i32 [ %add, %if.end6.lr.ph ], [ %45, %cleanup.if.end6_crit_edge ]
  %vbo.083 = phi i32 [ %and, %if.end6.lr.ph ], [ %cond.i, %cleanup.if.end6_crit_edge ]
  %buffer.addr.082 = phi ptr [ %buffer, %if.end6.lr.ph ], [ %add.ptr34, %cleanup.if.end6_crit_edge ]
  %18 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ph, align 4
  %lsn7 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %lsn7 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lsn7, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %22)
  %cmp8 = icmp ugt i64 %3, %22
  br i1 %cmp8, label %if.end6.cleanup36_crit_edge, label %if.end11

if.end6.cleanup36_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup36

if.end11:                                         ; preds = %if.end6
  %add.ptr = getelementptr i8, ptr %19, i32 %off.084
  %23 = call ptr @memcpy(ptr %buffer.addr.082, ptr %add.ptr, i32 %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub385)
  %tobool12.not = icmp eq i32 %sub385, 0
  %24 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ph, align 4
  br i1 %tobool12.not, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end11
  %rflags.i = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %rflags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rflags.i, align 8
  %and.i69 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.i.not = icmp eq i32 %and.i69, 0
  br i1 %tobool.i.not, label %if.then13.cleanup36_crit_edge, label %lor.lhs.false

if.then13.cleanup36_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup36

lor.lhs.false:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #20
  %last_end_lsn = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %25, i32 0, i32 4, i32 2
  %28 = ptrtoint ptr %last_end_lsn to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %last_end_lsn, align 8
  %30 = call i64 @llvm.bswap.i64(i64 %29)
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %30)
  %cmp15 = icmp ugt i64 %3, %30
  %spec.select65 = select i1 %cmp15, i32 -22, i32 0
  br label %cleanup36

if.end19:                                         ; preds = %if.end11
  %lsn21 = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %25, i32 0, i32 3
  %31 = ptrtoint ptr %lsn21 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lsn21, align 8
  %last_end_lsn23 = getelementptr inbounds %struct.RECORD_PAGE_HDR, ptr %25, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %last_end_lsn23 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %last_end_lsn23, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp24 = icmp eq i64 %32, %34
  %35 = call i64 @llvm.bswap.i64(i64 %32)
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %35)
  %cmp29 = icmp ugt i64 %3, %35
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp29
  br i1 %or.cond, label %if.end19.cleanup36_crit_edge, label %if.end32

if.end19.cleanup36_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup36

if.end32:                                         ; preds = %if.end19
  %36 = ptrtoint ptr %sys_page_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sys_page_mask.i, align 4
  %neg.i = xor i32 %37, -1
  %and.i70 = and i32 %vbo.083, %neg.i
  %38 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %page_size, align 8
  %add.i = add i32 %and.i70, %39
  %40 = ptrtoint ptr %l_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %l_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %41)
  %cmp.not.i = icmp ult i32 %add.i, %41
  br i1 %cmp.not.i, label %if.end32.cleanup_crit_edge, label %cond.true.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.true.i:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %first_page.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %first_page.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.true.i, %if.end32.cleanup_crit_edge
  %cond.i = phi i32 [ %43, %cond.true.i ], [ %add.i, %if.end32.cleanup_crit_edge ]
  %44 = ptrtoint ptr %data_off to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_off, align 8
  %add.ptr34 = getelementptr i8, ptr %buffer.addr.082, i32 %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %usa_error) #18
  %46 = ptrtoint ptr %usa_error to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %usa_error, align 1, !annotation !15
  %47 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %page_size, align 8
  %sub = sub i32 %48, %45
  %49 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub385)
  %sub3 = sub i32 %sub385, %49
  %call4 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %cond.i, ptr noundef nonnull %ph, ptr noundef nonnull %usa_error)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %cleanup.if.end6_crit_edge, label %cleanup.cleanup36_crit_edge

cleanup.cleanup36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup36

cleanup.if.end6_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

cleanup36:                                        ; preds = %cleanup.cleanup36_crit_edge, %if.end19.cleanup36_crit_edge, %lor.lhs.false, %if.then13.cleanup36_crit_edge, %if.end6.cleanup36_crit_edge, %entry.cleanup36_crit_edge
  %err.0.ph = phi i32 [ -22, %if.then13.cleanup36_crit_edge ], [ %spec.select65, %lor.lhs.false ], [ %call480, %entry.cleanup36_crit_edge ], [ %call4, %cleanup.cleanup36_crit_edge ], [ -22, %if.end6.cleanup36_crit_edge ], [ -22, %if.end19.cleanup36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %usa_error) #18
  %50 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ph, align 4
  call void @kfree(ptr noundef %51) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #18
  ret i32 %err.0.ph
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_log_rec(ptr nocapture noundef readonly %log, i64 noundef %lsn, ptr nocapture noundef %lcb) unnamed_addr #0 align 64 {
entry:
  %rh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rh) #18
  %0 = ptrtoint ptr %lcb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lcb, align 4
  %2 = ptrtoint ptr %rh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %rh, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then:                                          ; preds = %entry
  %seq_num_bits.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 19
  %3 = ptrtoint ptr %seq_num_bits.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %seq_num_bits.i, align 8
  %sh_prom.i = zext i32 %4 to i64
  %shl.i = shl i64 %lsn, %sh_prom.i
  %sub.i = add i32 %4, -3
  %sh_prom2.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %shl.i, %sh_prom2.i
  %conv.i = trunc i64 %shr.i to i32
  %call1 = call fastcc i32 @read_log_page(ptr noundef %log, i32 noundef %conv.i, ptr noundef nonnull %rh, ptr noundef null)
  %5 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rh, align 4
  %7 = ptrtoint ptr %lcb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %lcb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup38_crit_edge

if.then.cleanup38_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %8 = ptrtoint ptr %rh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rh, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %lsn)
  %cmp.not = icmp eq i64 %12, %lsn
  br i1 %cmp.not, label %if.end7, label %if.end5.cleanup38_crit_edge

if.end5.cleanup38_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.end7:                                          ; preds = %if.end5
  %client_data_len = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %client_data_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %client_data_len, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %record_header_len = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 17
  %16 = ptrtoint ptr %record_header_len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %record_header_len, align 4
  %conv = zext i16 %17 to i32
  %add = add i32 %15, %conv
  %total_avail = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 29
  %18 = ptrtoint ptr %total_avail to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_avail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp8.not = icmp ult i32 %add, %19
  br i1 %cmp8.not, label %if.end11, label %if.end7.cleanup38_crit_edge

if.end7.cleanup38_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.end11:                                         ; preds = %if.end7
  %flags = getelementptr inbounds %struct.LFS_RECORD_HDR, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 8
  %22 = and i16 %21, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool13.not = icmp eq i16 %22, 0
  br i1 %tobool13.not, label %if.else, label %if.end8.i

if.end8.i:                                        ; preds = %if.end11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3136) #22
  %tobool16.not = icmp eq ptr %call9.i, null
  br i1 %tobool16.not, label %if.end8.i.cleanup38_crit_edge, label %cleanup

if.end8.i.cleanup38_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

cleanup:                                          ; preds = %if.end8.i
  %log_rec = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 1
  %23 = ptrtoint ptr %log_rec to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i, ptr %log_rec, align 4
  %alloc = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 4
  %24 = ptrtoint ptr %alloc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %alloc, align 4
  %call19 = tail call fastcc i32 @read_log_rec_buf(ptr noundef %log, ptr noundef %9, ptr noundef nonnull %call9.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup.if.end37_crit_edge, label %cleanup.cleanup38_crit_edge

cleanup.cleanup38_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

cleanup.if.end37_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end37

if.else:                                          ; preds = %if.end11
  %conv.i65 = trunc i64 %lsn to i32
  %shl.i66 = shl i32 %conv.i65, 3
  %page_mask.i = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 5
  %25 = ptrtoint ptr %page_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %page_mask.i, align 4
  %and.i = and i32 %26, %shl.i66
  %add27 = add i32 %add, %and.i
  %page_size = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 4
  %27 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %page_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %28)
  %cmp28 = icmp ugt i32 %add27, %28
  br i1 %cmp28, label %if.else.cleanup38_crit_edge, label %if.end31

if.else.cleanup38_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup38

if.end31:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr i8, ptr %9, i32 48
  %log_rec32 = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 1
  %29 = ptrtoint ptr %log_rec32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %log_rec32, align 4
  %alloc33 = getelementptr inbounds %struct.lcb, ptr %lcb, i32 0, i32 4
  %30 = ptrtoint ptr %alloc33 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %alloc33, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end31, %cleanup.if.end37_crit_edge
  br label %cleanup38

cleanup38:                                        ; preds = %if.end37, %if.else.cleanup38_crit_edge, %cleanup.cleanup38_crit_edge, %if.end8.i.cleanup38_crit_edge, %if.end7.cleanup38_crit_edge, %if.end5.cleanup38_crit_edge, %if.then.cleanup38_crit_edge
  %retval.2 = phi i32 [ 0, %if.end37 ], [ %call19, %cleanup.cleanup38_crit_edge ], [ %call1, %if.then.cleanup38_crit_edge ], [ -22, %if.end5.cleanup38_crit_edge ], [ -22, %if.end7.cleanup38_crit_edge ], [ -22, %if.else.cleanup38_crit_edge ], [ -12, %if.end8.i.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rh) #18
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_format_new(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_load_mi_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mi_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_if_attr(ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %lrh) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %record_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 8
  %0 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %record_off, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %attr_off = getelementptr inbounds %struct.MFT_REC, ptr %rec, i32 0, i32 3
  %3 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %attr_off, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %2)
  %cmp31 = icmp ult i16 %5, %2
  br i1 %cmp31, label %while.body.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %rec, i32 %conv
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %attr.033 = phi ptr [ %add.ptr10, %cleanup.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %o.032 = phi i16 [ %conv9, %cleanup.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %6 = ptrtoint ptr %attr.033 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr.033, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end:                                           ; preds = %while.body
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr.033, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %cleanup

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup:                                          ; preds = %if.end
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = trunc i32 %10 to i16
  %conv9 = add i16 %o.032, %11
  %add.ptr10 = getelementptr i8, ptr %attr.033, i32 %10
  %cmp = icmp ult i16 %conv9, %2
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %o.0.lcssa = phi i16 [ %5, %entry.while.end_crit_edge ], [ %o.032, %if.end.while.end_crit_edge ], [ %o.032, %while.body.while.end_crit_edge ], [ %conv9, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %o.0.lcssa, i16 %2)
  %cmp13 = icmp eq i16 %o.0.lcssa, %2
  ret i1 %cmp13
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_loaded_attr(ptr nocapture noundef readonly %log, ptr nocapture noundef readonly %attr, i32 noundef %rno) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %open_attr_tbl = getelementptr inbounds %struct.ntfs_log, ptr %log, i32 0, i32 8
  %0 = ptrtoint ptr %open_attr_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %open_attr_tbl, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %total.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %used.i.i = getelementptr inbounds %struct.RESTART_TABLE, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  %name_len2.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 3
  %name_off.i19.i = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %oe.0 = phi ptr [ null, %entry ], [ %e.138.i, %while.cond.backedge ]
  br i1 %tobool.not.i, label %cond.end.i, label %cond.end.thread.i

cond.end.i:                                       ; preds = %while.cond
  %tobool2.not.i = icmp eq ptr %oe.0, null
  br i1 %tobool2.not.i, label %cond.end.i.cleanup7_crit_edge, label %cond.end.i.if.else.i_crit_edge

cond.end.i.if.else.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

cond.end.i.cleanup7_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

cond.end.thread.i:                                ; preds = %while.cond
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #18
  %phi.cast.i = zext i16 %5 to i32
  %tobool2.not30.i = icmp eq ptr %oe.0, null
  br i1 %tobool2.not30.i, label %lor.lhs.false.i, label %cond.end.thread.i.if.else.i_crit_edge

cond.end.thread.i.if.else.i_crit_edge:            ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i

lor.lhs.false.i:                                  ; preds = %cond.end.thread.i
  %6 = ptrtoint ptr %total.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %total.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not.i = icmp eq i16 %7, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i.cleanup7_crit_edge, label %lor.lhs.false.i.if.end8.i_crit_edge

lor.lhs.false.i.if.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8.i

lor.lhs.false.i.cleanup7_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

if.else.i:                                        ; preds = %cond.end.thread.i.if.else.i_crit_edge, %cond.end.i.if.else.i_crit_edge
  %cond31.i = phi i32 [ %phi.cast.i, %cond.end.thread.i.if.else.i_crit_edge ], [ 0, %cond.end.i.if.else.i_crit_edge ]
  %add.ptr7.i = getelementptr i8, ptr %oe.0, i32 %cond31.i
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %lor.lhs.false.i.if.end8.i_crit_edge
  %cond32.i = phi i32 [ %cond31.i, %if.else.i ], [ %phi.cast.i, %lor.lhs.false.i.if.end8.i_crit_edge ]
  %e.0.i = phi ptr [ %add.ptr7.i, %if.else.i ], [ %add.ptr.i, %lor.lhs.false.i.if.end8.i_crit_edge ]
  %8 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %used.i.i, align 2
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #18
  %conv.i.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #18
  %conv1.i.i = zext i16 %13 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i.i
  %add.i.i = add nuw i32 %mul.i.i, 24
  %14 = ptrtoint ptr %e.0.i to i32
  %sub36.i = sub i32 %14, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36.i, i32 %add.i.i)
  %cmp37.i = icmp ult i32 %sub36.i, %add.i.i
  br i1 %cmp37.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.cleanup7_crit_edge

if.end8.i.cleanup7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %e.138.i = phi ptr [ %add.ptr15.i, %for.inc.i.for.body.i_crit_edge ], [ %e.0.i, %if.end8.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %e.138.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %e.138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp10.i = icmp eq i32 %16, -1
  br i1 %cmp10.i, label %enum_rstbl.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %add.ptr15.i = getelementptr i8, ptr %e.138.i, i32 %cond32.i
  %17 = ptrtoint ptr %add.ptr15.i to i32
  %sub.i = sub i32 %17, %2
  %cmp.i = icmp ult i32 %sub.i, %add.i.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup7_crit_edge

for.inc.i.cleanup7_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

enum_rstbl.exit:                                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %e.138.i, null
  br i1 %tobool.not, label %enum_rstbl.exit.cleanup7_crit_edge, label %while.body

enum_rstbl.exit.cleanup7_crit_edge:               ; preds = %enum_rstbl.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

while.body:                                       ; preds = %enum_rstbl.exit
  %ref = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %e.138.i, i32 0, i32 7
  %18 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %rno)
  %cmp.not = icmp eq i32 %20, %rno
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %ptr = getelementptr inbounds %struct.OPEN_ATTR_ENRTY, ptr %e.138.i, i32 0, i32 9
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptr, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %27 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i = icmp eq i32 %26, %28
  br i1 %cmp.not.i, label %lor.lhs.false.i11, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %cmp_type_and_name.exit.while.cond.backedge_crit_edge, %lor.lhs.false.i11.while.cond.backedge_crit_edge, %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

lor.lhs.false.i11:                                ; preds = %if.end
  %name_len.i = getelementptr inbounds %struct.ATTRIB, ptr %24, i32 0, i32 3
  %29 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name_len.i, align 1
  %31 = ptrtoint ptr %name_len2.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %name_len2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp4.not.i = icmp eq i8 %30, %32
  br i1 %cmp4.not.i, label %lor.rhs.i, label %lor.lhs.false.i11.while.cond.backedge_crit_edge

lor.lhs.false.i11.while.cond.backedge_crit_edge:  ; preds = %lor.lhs.false.i11
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

lor.rhs.i:                                        ; preds = %lor.lhs.false.i11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i12 = icmp eq i8 %30, 0
  br i1 %tobool.not.i12, label %lor.rhs.i.cleanup7_crit_edge, label %cmp_type_and_name.exit

lor.rhs.i.cleanup7_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

cmp_type_and_name.exit:                           ; preds = %lor.rhs.i
  %name_off.i.i = getelementptr inbounds %struct.ATTRIB, ptr %24, i32 0, i32 4
  %33 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %name_off.i.i, align 2
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #18
  %conv.i.i13 = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i13
  %36 = ptrtoint ptr %name_off.i19.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %name_off.i19.i, align 2
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #18
  %conv.i20.i = zext i16 %38 to i32
  %add.ptr.i21.i = getelementptr i8, ptr %attr, i32 %conv.i20.i
  %conv10.i = zext i8 %30 to i32
  %mul.i = shl nuw nsw i32 %conv10.i, 1
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %add.ptr.i21.i, i32 %mul.i) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.i.not, label %cmp_type_and_name.exit.cleanup7_crit_edge, label %cmp_type_and_name.exit.while.cond.backedge_crit_edge

cmp_type_and_name.exit.while.cond.backedge_crit_edge: ; preds = %cmp_type_and_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

cmp_type_and_name.exit.cleanup7_crit_edge:        ; preds = %cmp_type_and_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup7

cleanup7:                                         ; preds = %cmp_type_and_name.exit.cleanup7_crit_edge, %lor.rhs.i.cleanup7_crit_edge, %enum_rstbl.exit.cleanup7_crit_edge, %for.inc.i.cleanup7_crit_edge, %if.end8.i.cleanup7_crit_edge, %lor.lhs.false.i.cleanup7_crit_edge, %cond.end.i.cleanup7_crit_edge
  %retval.2 = phi ptr [ null, %for.inc.i.cleanup7_crit_edge ], [ %22, %lor.rhs.i.cleanup7_crit_edge ], [ %22, %cmp_type_and_name.exit.cleanup7_crit_edge ], [ null, %if.end8.i.cleanup7_crit_edge ], [ null, %cond.end.i.cleanup7_crit_edge ], [ null, %lor.lhs.false.i.cleanup7_crit_edge ], [ null, %enum_rstbl.exit.cleanup7_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_get_highest_vcn(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_if_index_root(ptr nocapture noundef readonly %rec, ptr nocapture noundef readonly %lrh) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %record_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 8
  %0 = ptrtoint ptr %record_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %record_off, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %attr_off = getelementptr inbounds %struct.MFT_REC, ptr %rec, i32 0, i32 3
  %3 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %attr_off, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %rec, i32 %conv
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %2)
  %cmp35 = icmp ult i16 %5, %2
  br i1 %cmp35, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %attr.037 = phi ptr [ %add.ptr10, %cleanup.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %o.036 = phi i16 [ %conv9, %cleanup.while.body_crit_edge ], [ %5, %entry.while.body_crit_edge ]
  %6 = ptrtoint ptr %attr.037 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr.037, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp4 = icmp eq i32 %7, -1
  br i1 %cmp4, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end:                                           ; preds = %while.body
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr.037, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %cleanup

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup:                                          ; preds = %if.end
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = trunc i32 %10 to i16
  %conv9 = add i16 %o.036, %11
  %add.ptr10 = getelementptr i8, ptr %attr.037, i32 %10
  %cmp = icmp ult i16 %conv9, %2
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %o.0.lcssa = phi i16 [ %5, %entry.while.end_crit_edge ], [ %o.036, %if.end.while.end_crit_edge ], [ %o.036, %while.body.while.end_crit_edge ], [ %conv9, %cleanup.while.end_crit_edge ]
  %attr.0.lcssa = phi ptr [ %add.ptr, %entry.while.end_crit_edge ], [ %attr.037, %if.end.while.end_crit_edge ], [ %attr.037, %while.body.while.end_crit_edge ], [ %add.ptr10, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %o.0.lcssa, i16 %2)
  %cmp13 = icmp eq i16 %o.0.lcssa, %2
  br i1 %cmp13, label %land.rhs, label %while.end.land.end_crit_edge

while.end.land.end_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.end

land.rhs:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %attr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %attr.0.lcssa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1879048192, i32 %13)
  %cmp16 = icmp eq i32 %13, -1879048192
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end.land.end_crit_edge
  %14 = phi i1 [ false, %while.end.land.end_crit_edge ], [ %cmp16, %land.rhs ]
  ret i1 %14
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_if_root_index(ptr noundef %attr, ptr noundef %hdr, ptr nocapture noundef readonly %lrh) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %attr_off = getelementptr inbounds %struct.LOG_REC_HDR, ptr %lrh, i32 0, i32 9
  %0 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr_off, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hdr, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %hdr to i32
  %7 = ptrtoint ptr %attr to i32
  %sub = sub i32 %6, %7
  %add = add i32 %sub, %5
  %size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp35 = icmp ult i32 %add, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %10)
  %cmp3.not36 = icmp ult i32 %add, %10
  %or.cond37 = select i1 %cmp35, i1 %cmp3.not36, i1 false
  br i1 %or.cond37, label %if.end.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end.preheader:                                 ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hdr, i32 %5
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.preheader
  %e.039 = phi ptr [ %add.ptr11, %cleanup.if.end_crit_edge ], [ %add.ptr, %if.end.preheader ]
  %o.038 = phi i32 [ %add9, %cleanup.if.end_crit_edge ], [ %add, %if.end.preheader ]
  %size5 = getelementptr inbounds %struct.NTFS_DE, ptr %e.039, i32 0, i32 1
  %11 = ptrtoint ptr %size5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %cleanup

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup:                                          ; preds = %if.end
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv8 = zext i16 %13 to i32
  %add9 = add i32 %o.038, %conv8
  %add.ptr11 = getelementptr i8, ptr %e.039, i32 %conv8
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %conv)
  %cmp = icmp ult i32 %add9, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %10)
  %cmp3.not = icmp ult i32 %add9, %10
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %cleanup.if.end_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %o.0.lcssa = phi i32 [ %add, %entry.while.end_crit_edge ], [ %o.038, %if.end.while.end_crit_edge ], [ %add9, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %o.0.lcssa, i32 %conv)
  %cmp13 = icmp eq i32 %o.0.lcssa, %conv
  ret i1 %cmp13
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_index_buffer(ptr noundef %ib, i32 noundef %bytes) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ib, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1229866072, i32 %1)
  %cmp.not = icmp eq i32 %1, 1229866072
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = lshr i32 %bytes, 8
  %3 = and i32 %2, 65534
  %conv = sub nsw i32 510, %3
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %ib, i32 0, i32 1
  %4 = ptrtoint ptr %fix_off to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fix_off, align 4
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv1 = zext i16 %6 to i32
  %conv2 = and i32 %conv, 65534
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv1)
  %cmp3 = icmp ult i32 %conv2, %conv1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %ib, i32 0, i32 2
  %7 = ptrtoint ptr %fix_num to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fix_num, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv7 = zext i16 %9 to i32
  %sub8 = shl nuw nsw i32 %conv7, 9
  %mul9 = add nsw i32 %sub8, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9, i32 %bytes)
  %cmp10.not = icmp eq i32 %mul9, %bytes
  br i1 %cmp10.not, label %if.end13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2
  %sub14 = add i32 %bytes, -24
  %flags.i.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags.i.i, align 4
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not.i = icmp eq i8 %12, 0
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %.60.i = select i1 %tobool.i.not.i, i32 16, i32 24
  %15 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ihdr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #18
  %used2.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %used2.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #18
  %total3.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %total3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total3.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #18
  %sub.i = sub i32 %sub14, %.60.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub.i)
  %cmp.i = icmp ugt i32 %17, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %sub14)
  %cmp4.i = icmp ugt i32 %20, %sub14
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %sub14)
  %cmp6.i = icmp ugt i32 %23, %sub14
  %or.cond61.i = select i1 %or.cond.i, i1 true, i1 %cmp6.i
  %add.i = add i32 %.60.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %20)
  %cmp8.i = icmp ugt i32 %add.i, %20
  %or.cond62.i = select i1 %or.cond61.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %23)
  %cmp10.i = icmp ugt i32 %20, %23
  %or.cond63.i = select i1 %or.cond62.i, i1 true, i1 %cmp10.i
  br i1 %or.cond63.i, label %if.end13.cleanup_crit_edge, label %if.end12.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12.i:                                       ; preds = %if.end13
  %add.ptr.i = getelementptr i8, ptr %ihdr, i32 %17
  %24 = ptrtoint ptr %ihdr to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end27.i.for.cond.i_crit_edge, %if.end12.i
  %e.0.i = phi ptr [ %add.ptr.i, %if.end12.i ], [ %add.ptr13.i, %if.end27.i.for.cond.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size.i, align 4
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #18
  %conv.i = zext i16 %27 to i32
  %add.ptr13.i = getelementptr i8, ptr %e.0.i, i32 %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.60.i, i32 %conv.i)
  %cmp15.i = icmp ugt i32 %.60.i, %conv.i
  %28 = ptrtoint ptr %add.ptr13.i to i32
  %sub18.i = sub i32 %28, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %20)
  %cmp19.i = icmp ugt i32 %sub18.i, %20
  %or.cond65.i = select i1 %cmp15.i, i1 true, i1 %cmp19.i
  br i1 %or.cond65.i, label %for.cond.i.cleanup_crit_edge, label %lor.lhs.false21.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false21.i:                                ; preds = %for.cond.i
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.0.i, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i, align 4
  %31 = and i16 %30, 256
  %and.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and.i)
  %cmp24.not.i = icmp eq i32 %14, %and.i
  br i1 %cmp24.not.i, label %if.end27.i, label %lor.lhs.false21.i.cleanup_crit_edge

lor.lhs.false21.i.cleanup_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false21.i
  %32 = and i16 %30, 512
  %tobool.i68.not.i = icmp eq i16 %32, 0
  br i1 %tobool.i68.not.i, label %if.end27.i.for.cond.i_crit_edge, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27.i.for.cond.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

cleanup:                                          ; preds = %if.end27.i.cleanup_crit_edge, %lor.lhs.false21.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ false, %if.end13.cleanup_crit_edge ], [ true, %if.end27.i.cleanup_crit_edge ], [ false, %lor.lhs.false21.i.cleanup_crit_edge ], [ false, %for.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_if_alloc_index(ptr nocapture noundef readonly %hdr, i32 noundef %attr_off) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add i32 %2, 24
  %used2 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %used2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %attr_off)
  %cmp34 = icmp ult i32 %add, %attr_off
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp3.not35 = icmp ult i32 %2, %5
  %or.cond36 = select i1 %cmp34, i1 %cmp3.not35, i1 false
  br i1 %or.cond36, label %if.end.preheader, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end.preheader:                                 ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hdr, i32 %2
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.preheader
  %e.039 = phi ptr [ %add.ptr10, %cleanup.if.end_crit_edge ], [ %add.ptr, %if.end.preheader ]
  %o.038 = phi i32 [ %add6, %cleanup.if.end_crit_edge ], [ %add, %if.end.preheader ]
  %de_off.037 = phi i32 [ %add8, %cleanup.if.end_crit_edge ], [ %2, %if.end.preheader ]
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %e.039, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %cleanup

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup:                                          ; preds = %if.end
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv = zext i16 %8 to i32
  %add6 = add i32 %o.038, %conv
  %add8 = add i32 %de_off.037, %conv
  %add.ptr10 = getelementptr i8, ptr %e.039, i32 %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %attr_off)
  %cmp = icmp ult i32 %add6, %attr_off
  call void @__sanitizer_cov_trace_cmp4(i32 %add8, i32 %5)
  %cmp3.not = icmp ult i32 %add8, %5
  %or.cond = select i1 %cmp, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %cleanup.if.end_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %o.0.lcssa = phi i32 [ %add, %entry.while.end_crit_edge ], [ %o.038, %if.end.while.end_crit_edge ], [ %add6, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %o.0.lcssa, i32 %attr_off)
  %cmp11 = icmp eq i32 %o.0.lcssa, %attr_off
  ret i1 %cmp11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_index_root(ptr noundef %attr, ptr nocapture noundef readonly %sbi) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data_off.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #18
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %index_block_size = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 2
  %4 = ptrtoint ptr %index_block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index_block_size, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 3
  %7 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp ult i32 %6, %8
  br i1 %cmp.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %9 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cluster_bits, align 8
  %phi.cast = zext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast, %cond.true ], [ 9, %entry.cond.end_crit_edge ]
  %index_block_clst = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 3
  %11 = ptrtoint ptr %index_block_clst to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index_block_clst, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %0, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp2 = icmp ult i32 %15, 32
  br i1 %cmp2, label %cond.end.cleanup_crit_edge, label %lor.lhs.false

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %cond.end
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %17, label %lor.lhs.false.cleanup_crit_edge [
    i32 805306368, label %land.lhs.true13
    i32 0, label %lor.lhs.false16
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true13:                                  ; preds = %lor.lhs.false
  %rule = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %19 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rule, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %cmp14.not = icmp eq i32 %20, 16777216
  %conv18 = zext i8 %12 to i32
  %shl = shl i32 %conv18, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %shl)
  %cmp20.not = icmp eq i32 %6, %shl
  %or.cond = select i1 %cmp14.not, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %land.lhs.true13.lor.lhs.false22_crit_edge, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true13.lor.lhs.false22_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false22

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %conv18.old = zext i8 %12 to i32
  %shl.old = shl i32 %conv18.old, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %shl.old)
  %cmp20.not.old = icmp eq i32 %6, %shl.old
  br i1 %cmp20.not.old, label %lor.lhs.false16.lor.lhs.false22_crit_edge, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false16.lor.lhs.false22_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #20
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false16.lor.lhs.false22_crit_edge, %land.lhs.true13.lor.lhs.false22_crit_edge
  %21 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %12, label %lor.lhs.false22.cleanup_crit_edge [
    i8 1, label %lor.lhs.false22.if.end_crit_edge
    i8 2, label %lor.lhs.false22.if.end_crit_edge79
    i8 4, label %lor.lhs.false22.if.end_crit_edge80
    i8 8, label %lor.lhs.false22.if.end_crit_edge81
    i8 16, label %lor.lhs.false22.if.end_crit_edge82
    i8 32, label %lor.lhs.false22.if.end_crit_edge83
    i8 64, label %lor.lhs.false22.if.end_crit_edge84
    i8 -128, label %lor.lhs.false22.if.end_crit_edge85
  ]

lor.lhs.false22.if.end_crit_edge85:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge84:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge83:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge82:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge81:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge80:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge79:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.if.end_crit_edge:                 ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false22.if.end_crit_edge, %lor.lhs.false22.if.end_crit_edge79, %lor.lhs.false22.if.end_crit_edge80, %lor.lhs.false22.if.end_crit_edge81, %lor.lhs.false22.if.end_crit_edge82, %lor.lhs.false22.if.end_crit_edge83, %lor.lhs.false22.if.end_crit_edge84, %lor.lhs.false22.if.end_crit_edge85
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 5
  %sub = add i32 %15, -16
  %flags.i.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags.i.i, align 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not.i = icmp eq i8 %24, 0
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %.60.i = select i1 %tobool.i.not.i, i32 16, i32 24
  %27 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ihdr, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #18
  %used2.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 1
  %30 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %used2.i, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  %total3.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 2
  %33 = ptrtoint ptr %total3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %total3.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #18
  %sub.i = sub i32 %sub, %.60.i
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub.i)
  %cmp.i = icmp ugt i32 %29, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %sub)
  %cmp4.i = icmp ugt i32 %32, %sub
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %sub)
  %cmp6.i = icmp ugt i32 %35, %sub
  %or.cond61.i = select i1 %or.cond.i, i1 true, i1 %cmp6.i
  %add.i = add i32 %.60.i, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %32)
  %cmp8.i = icmp ugt i32 %add.i, %32
  %or.cond62.i = select i1 %or.cond61.i, i1 true, i1 %cmp8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %35)
  %cmp10.i = icmp ugt i32 %32, %35
  %or.cond63.i = select i1 %or.cond62.i, i1 true, i1 %cmp10.i
  br i1 %or.cond63.i, label %if.end.cleanup_crit_edge, label %if.end12.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end12.i:                                       ; preds = %if.end
  %add.ptr.i77 = getelementptr i8, ptr %ihdr, i32 %29
  %36 = ptrtoint ptr %ihdr to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end27.i.for.cond.i_crit_edge, %if.end12.i
  %e.0.i = phi ptr [ %add.ptr.i77, %if.end12.i ], [ %add.ptr13.i, %if.end27.i.for.cond.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.0.i, i32 0, i32 1
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #18
  %conv.i78 = zext i16 %39 to i32
  %add.ptr13.i = getelementptr i8, ptr %e.0.i, i32 %conv.i78
  call void @__sanitizer_cov_trace_cmp4(i32 %.60.i, i32 %conv.i78)
  %cmp15.i = icmp ugt i32 %.60.i, %conv.i78
  %40 = ptrtoint ptr %add.ptr13.i to i32
  %sub18.i = sub i32 %40, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %32)
  %cmp19.i = icmp ugt i32 %sub18.i, %32
  %or.cond65.i = select i1 %cmp15.i, i1 true, i1 %cmp19.i
  br i1 %or.cond65.i, label %for.cond.i.cleanup_crit_edge, label %lor.lhs.false21.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false21.i:                                ; preds = %for.cond.i
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.0.i, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags.i, align 4
  %43 = and i16 %42, 256
  %and.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and.i)
  %cmp24.not.i = icmp eq i32 %26, %and.i
  br i1 %cmp24.not.i, label %if.end27.i, label %lor.lhs.false21.i.cleanup_crit_edge

lor.lhs.false21.i.cleanup_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27.i:                                       ; preds = %lor.lhs.false21.i
  %44 = and i16 %42, 512
  %tobool.i68.not.i = icmp eq i16 %44, 0
  br i1 %tobool.i68.not.i, label %if.end27.i.for.cond.i_crit_edge, label %if.end27.i.cleanup_crit_edge

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end27.i.for.cond.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.cond.i

cleanup:                                          ; preds = %if.end27.i.cleanup_crit_edge, %lor.lhs.false21.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false22.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %lor.lhs.false16.cleanup_crit_edge ], [ false, %land.lhs.true13.cleanup_crit_edge ], [ false, %cond.end.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %if.end27.i.cleanup_crit_edge ], [ false, %lor.lhs.false21.i.cleanup_crit_edge ], [ false, %for.cond.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nobuiltin }
attributes #24 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/fslog.c", i32 4074, i32 3}
!2 = !{ptr @AttributeRequired, !3, !"AttributeRequired", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/fslog.c", i32 345, i32 17}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/fslog.c", i32 3202, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{i32 0, i32 33}
