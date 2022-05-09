; ModuleID = '/llk/IR_all_yes/fs/ntfs3/index.c_pt.bc'
source_filename = "../fs/ntfs3/index.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.INDEX_NAMES = type { ptr, i8 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.87 }
%union.anon.87 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.77, %struct.anon.78, %struct.anon.79, %struct.anon.80, %struct.anon.81, %struct.anon.82, %struct.anon.83, ptr, %struct.ratelimit_state }
%struct.anon.77 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rb_root = type { ptr }
%struct.anon.78 = type { %struct.wnd_bitmap, i32 }
%struct.anon.79 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.80 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.anon.81 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.82 = type { %struct.ntfs_index, ptr }
%struct.anon.83 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ntfs_fnd = type { i32, [20 x ptr], [20 x ptr], ptr }
%struct.indx_node = type { %struct.ntfs_buffers, ptr }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HDR }
%struct.INDEX_HDR = type { i32, i32, i32, i8, [3 x i8] }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.84, %struct.anon.86, i32, %struct.inode }
%struct.timespec64 = type { i64, i32 }
%union.anon.84 = type { %struct.ntfs_index }
%struct.anon.86 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.71 = type { ptr }
%struct.NTFS_DE = type { %union.anon.88, i16, i16, i16, i16 }
%union.anon.88 = type { %struct.MFT_REF }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.INDEX_BUFFER = type { %struct.NTFS_RECORD_HEADER, i64, %struct.INDEX_HDR }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.bmp_buf = type { ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.SECURITY_KEY = type { i32, i32 }

@s_index_names = internal constant { [6 x %struct.INDEX_NAMES], [48 x i8] } { [6 x %struct.INDEX_NAMES] [%struct.INDEX_NAMES { ptr @I30_NAME, i8 4 }, %struct.INDEX_NAMES { ptr @SII_NAME, i8 4 }, %struct.INDEX_NAMES { ptr @SDH_NAME, i8 4 }, %struct.INDEX_NAMES { ptr @SO_NAME, i8 2 }, %struct.INDEX_NAMES { ptr @SQ_NAME, i8 2 }, %struct.INDEX_NAMES { ptr @SR_NAME, i8 2 }], [48 x i8] zeroinitializer }, align 32
@indx_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&indx->run_lock\00", [16 x i8] zeroinitializer }, align 32
@I30_NAME = external dso_local constant [4 x i16], align 2
@SII_NAME = external dso_local constant [4 x i16], align 2
@SDH_NAME = external dso_local constant [4 x i16], align 2
@SO_NAME = external dso_local constant [2 x i16], align 2
@SQ_NAME = external dso_local constant [2 x i16], align 2
@SR_NAME = external dso_local constant [2 x i16], align 2
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013failed to read volume at offset 0x%llx\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs3/index.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 805306368]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 301989888, i64 318767104]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966741, i64 4294967294]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966741]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"s_index_names\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 20, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 854, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"../fs/ntfs3/ntfs_fs.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 1018, i32 2 }
@___asan_gen_.20 = private constant [20 x i8] c"../fs/ntfs3/index.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1514, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 366, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @s_index_names, ptr @indx_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_index_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indx_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_used_bit(ptr noundef %indx, ptr noundef %ni, ptr noundef %bit) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #16
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  %1 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bit, align 4
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name_len, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1342177280, ptr noundef %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef null) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bit, align 4
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %mul = shl i32 %15, 3
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_off.i, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17) #16
  %conv.i = zext i16 %18 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %call4 = call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %mul, i32 noundef %2) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %mul)
  %cmp = icmp ult i32 %call4, %mul
  br i1 %cmp, label %if.then5, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4, ptr %bit, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  %call7 = call fastcc i32 @scan_nres_bitmap(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef %indx, i32 noundef %2, ptr noundef nonnull @scan_for_used, ptr noundef %bit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end11_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then5, %if.then2.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -2, %entry.cleanup_crit_edge ], [ %call7, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scan_nres_bitmap(ptr noundef %ni, ptr nocapture noundef readonly %bitmap, ptr noundef %indx, i32 noundef %from, ptr nocapture noundef readonly %fn, ptr noundef %ret) unnamed_addr #0 align 64 {
entry:
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %vcn = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %run_lock = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 2
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_blocksize, align 16
  %valid_size4 = getelementptr inbounds %struct.ATTRIB, ptr %bitmap, i32 0, i32 7, i32 0, i32 7
  %6 = ptrtoint ptr %valid_size4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %valid_size4, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  %data_size5 = getelementptr inbounds %struct.ATTRIB, ptr %bitmap, i32 0, i32 7, i32 0, i32 6
  %9 = ptrtoint ptr %data_size5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %data_size5, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %conv.i = zext i32 %5 to i64
  %add.i = add nsw i64 %conv.i, -1
  %sub.i = add i64 %add.i, %11
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %13 to i64
  %shr.i = lshr i64 %sub.i, %sh_prom.i
  %shr = lshr i32 %from, 3
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cluster_mask, align 4
  %conv = zext i8 %13 to i32
  %shr10 = lshr i32 %shr, %conv
  %conv11 = zext i32 %shr10 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #16
  %16 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %lcn, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #16
  %17 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %clen, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #16
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %idx, align 4, !annotation !20
  %19 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ret, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %conv11)
  %cmp.not = icmp ugt i64 %shr.i, %conv11
  br i1 %cmp.not, label %if.end, label %entry.cleanup99_crit_edge

entry.cleanup99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup99

if.end:                                           ; preds = %entry
  %and = and i32 %15, %shr
  %shr6 = lshr i32 %and, %conv
  %conv7 = zext i32 %shr6 to i64
  %mul = shl i32 %5, 3
  %sub = add i32 %mul, -1
  %and13 = and i32 %sub, %from
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cluster_bits, align 8
  %conv14 = zext i8 %21 to i32
  %shr15 = lshr i32 %shr, %conv14
  %22 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr15, ptr %vcn, align 4
  tail call void @down_read(ptr noundef %run_lock) #16
  %call16 = call zeroext i1 @run_lookup_entry(ptr noundef %indx, i32 noundef %shr15, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #16
  call void @up_read(ptr noundef %run_lock) #16
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %blocks_per_cluster = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 7
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 26
  %block_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 6
  %23 = trunc i64 %8 to i32
  br label %next_run

next_run:                                         ; preds = %if.end98, %if.end
  %nbits.0 = phi i32 [ %mul, %if.end ], [ %nbits.1.lcssa, %if.end98 ]
  %blk.0 = phi i64 [ %conv7, %if.end ], [ 0, %if.end98 ]
  %vblock.0 = phi i64 [ %conv11, %if.end ], [ %vblock.1.lcssa, %if.end98 ]
  %ok.0.in = phi i1 [ %call16, %if.end ], [ %69, %if.end98 ]
  %from.addr.0 = phi i32 [ %and13, %if.end ], [ %from.addr.1.lcssa, %if.end98 ]
  br i1 %ok.0.in, label %next_run.if.end29_crit_edge, label %if.then17

next_run.if.end29_crit_edge:                      ; preds = %next_run
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then17:                                        ; preds = %next_run
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  call void @down_write(ptr noundef %run_lock) #16
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %name_len, align 4
  %30 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vcn, align 4
  %call19 = call i32 @attr_load_runs_vcn(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %27, i8 noundef zeroext %29, ptr noundef %indx, i32 noundef %31) #16
  call void @up_write(ptr noundef %run_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %cleanup, label %if.then17.cleanup99_crit_edge

if.then17.cleanup99_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup99

cleanup:                                          ; preds = %if.then17
  call void @down_read(ptr noundef %run_lock) #16
  %32 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vcn, align 4
  %call23 = call zeroext i1 @run_lookup_entry(ptr noundef %indx, i32 noundef %33, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %idx) #16
  call void @up_read(ptr noundef %run_lock) #16
  br i1 %call23, label %cleanup.if.end29_crit_edge, label %cleanup.cleanup99_crit_edge

cleanup.cleanup99_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup99

cleanup.if.end29_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.end29:                                         ; preds = %cleanup.if.end29_crit_edge, %next_run.if.end29_crit_edge
  %34 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clen, align 4
  %conv30 = zext i32 %35 to i64
  %36 = ptrtoint ptr %blocks_per_cluster to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blocks_per_cluster, align 4
  %conv31 = zext i32 %37 to i64
  %mul32 = mul nuw i64 %conv31, %conv30
  %38 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lcn, align 4
  %conv33 = zext i32 %39 to i64
  %mul36 = mul nuw i64 %conv33, %conv31
  call void @__sanitizer_cov_trace_cmp8(i64 %blk.0, i64 %mul32)
  %cmp37201 = icmp ult i64 %blk.0, %mul32
  br i1 %cmp37201, label %if.end29.for.body_crit_edge, label %if.end29.for.end_crit_edge

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  br label %for.body

for.cond:                                         ; preds = %if.end83
  %inc88 = add nuw i64 %blk.1203, 1
  %cmp37 = icmp ult i64 %inc88, %mul32
  br i1 %cmp37, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end29.for.body_crit_edge
  %from.addr.1205 = phi i32 [ 0, %for.cond.for.body_crit_edge ], [ %from.addr.0, %if.end29.for.body_crit_edge ]
  %vblock.1204 = phi i64 [ %inc, %for.cond.for.body_crit_edge ], [ %vblock.0, %if.end29.for.body_crit_edge ]
  %blk.1203 = phi i64 [ %inc88, %for.cond.for.body_crit_edge ], [ %blk.0, %if.end29.for.body_crit_edge ]
  %nbits.1202 = phi i32 [ %nbits.2, %for.cond.for.body_crit_edge ], [ %nbits.0, %if.end29.for.body_crit_edge ]
  %add = add i64 %blk.1203, %mul36
  %40 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_bdev.i.i, align 4
  %42 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize, align 16
  %call.i.i = call ptr @__bread_gfp(ptr noundef %41, i64 noundef %add, i32 noundef %43, i32 noundef 8) #16
  %tobool.not.i = icmp eq ptr %call.i.i, null
  %44 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i186 = zext i8 %45 to i64
  br i1 %tobool.not.i, label %ntfs_bread.exit.thread, label %if.end42

ntfs_bread.exit.thread:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %shl.i = shl i64 %add, %sh_prom.i186
  call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %3, ptr noundef nonnull @.str.1, i64 noundef %shl.i) #16
  br label %cleanup99

if.end42:                                         ; preds = %for.body
  %shl = shl i64 %vblock.1204, %sh_prom.i186
  %conv45 = trunc i64 %shl to i32
  %conv46 = and i64 %shl, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv46, i64 %8)
  %cmp47.not = icmp ult i64 %conv46, %8
  br i1 %cmp47.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data, align 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 %5)
  %.pre = add i32 %5, %conv45
  %.pre216 = zext i32 %.pre to i64
  br label %if.end61

if.else:                                          ; preds = %if.end42
  %add50 = add i32 %5, %conv45
  %conv51 = zext i32 %add50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %conv51)
  %cmp52 = icmp ult i64 %8, %conv51
  br i1 %cmp52, label %if.then54, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %block_mask, align 8
  %conv57 = and i32 %50, %23
  %b_data58 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %b_data58 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data58, align 4
  %add.ptr = getelementptr i8, ptr %52, i32 %conv57
  %sub59 = sub i32 %5, %conv57
  %53 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub59)
  br label %if.end61

if.end61:                                         ; preds = %if.then54, %if.else.if.end61_crit_edge, %if.then49
  %conv63.pre-phi = phi i64 [ %conv51, %if.else.if.end61_crit_edge ], [ %conv51, %if.then54 ], [ %.pre216, %if.then49 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %conv63.pre-phi)
  %cmp64 = icmp ult i64 %11, %conv63.pre-phi
  %sub68 = sub i64 %11, %shl
  %sub68.tr = trunc i64 %sub68 to i32
  %conv70 = shl i32 %sub68.tr, 3
  %nbits.2 = select i1 %cmp64, i32 %conv70, i32 %nbits.1202
  call void @__sanitizer_cov_trace_cmp4(i32 %nbits.2, i32 %from.addr.1205)
  %cmp72 = icmp ugt i32 %nbits.2, %from.addr.1205
  br i1 %cmp72, label %cond.true, label %if.end61.cond.end_crit_edge

if.end61.cond.end_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %b_data74 = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %b_data74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data74, align 4
  %call75 = call zeroext i1 %fn(ptr noundef %55, i32 noundef %from.addr.1205, i32 noundef %nbits.2, ptr noundef %ret) #16, !callees !21
  %conv76 = zext i1 %call75 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end61.cond.end_crit_edge
  %cond = phi i32 [ %conv76, %cond.true ], [ 0, %if.end61.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool77.not = icmp eq i32 %cond, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #16
  %56 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #16, !srcloc !23
  br i1 %tobool77.not, label %if.end83, label %if.then80

if.then80:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv45.le = trunc i64 %shl to i32
  %mul81 = shl i32 %conv45.le, 3
  %57 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ret, align 4
  %add82 = add i32 %58, %mul81
  store i32 %add82, ptr %ret, align 4
  br label %cleanup99

if.end83:                                         ; preds = %cond.end
  %inc = add i64 %vblock.1204, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc, i64 %shr.i)
  %cmp84.not = icmp ult i64 %inc, %shr.i
  br i1 %cmp84.not, label %for.cond, label %if.then86

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %ret, align 4
  br label %cleanup99

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end29.for.end_crit_edge
  %nbits.1.lcssa = phi i32 [ %nbits.0, %if.end29.for.end_crit_edge ], [ %nbits.2, %for.cond.for.end_crit_edge ]
  %vblock.1.lcssa = phi i64 [ %vblock.0, %if.end29.for.end_crit_edge ], [ %inc, %for.cond.for.end_crit_edge ]
  %from.addr.1.lcssa = phi i32 [ %from.addr.0, %if.end29.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %60 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %vcn, align 4
  %62 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clen, align 4
  %add89 = add i32 %63, %61
  call void @down_read(ptr noundef %run_lock) #16
  %64 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %idx, align 4
  %inc90 = add i32 %65, 1
  store i32 %inc90, ptr %idx, align 4
  %call91 = call zeroext i1 @run_get_entry(ptr noundef %indx, i32 noundef %inc90, ptr noundef nonnull %vcn, ptr noundef nonnull %lcn, ptr noundef nonnull %clen) #16
  br i1 %call91, label %land.end, label %for.end.if.then97_crit_edge

for.end.if.then97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then97

land.end:                                         ; preds = %for.end
  %66 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %add89)
  %cmp93 = icmp eq i32 %67, %add89
  br i1 %cmp93, label %land.end.if.end98_crit_edge, label %land.end.if.then97_crit_edge

land.end.if.then97_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then97

land.end.if.end98_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end98

if.then97:                                        ; preds = %land.end.if.then97_crit_edge, %for.end.if.then97_crit_edge
  %68 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add89, ptr %vcn, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %land.end.if.end98_crit_edge
  %69 = phi i1 [ false, %if.then97 ], [ true, %land.end.if.end98_crit_edge ]
  call void @up_read(ptr noundef %run_lock) #16
  br label %next_run

cleanup99:                                        ; preds = %if.then86, %if.then80, %ntfs_bread.exit.thread, %cleanup.cleanup99_crit_edge, %if.then17.cleanup99_crit_edge, %entry.cleanup99_crit_edge
  %retval.3 = phi i32 [ 0, %if.then80 ], [ 0, %if.then86 ], [ 0, %entry.cleanup99_crit_edge ], [ -5, %ntfs_bread.exit.thread ], [ %call19, %if.then17.cleanup99_crit_edge ], [ -22, %cleanup.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #16
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @scan_for_used(ptr noundef %buf, i32 noundef %bit, i32 noundef %bits, ptr nocapture noundef writeonly %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_find_next_bit_be(ptr noundef %buf, i32 noundef %bits, i32 noundef %bit) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bits)
  %cmp.not = icmp ult i32 %call, %bits
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fnd_clear(ptr nocapture noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %i.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %index.i = getelementptr inbounds %struct.indx_node, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %index.i, align 4
  tail call void @kfree(ptr noundef %5) #16
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.put_indx_node.exit_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.put_indx_node.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_indx_node.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %3, i32 0, i32 %i.010.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #16, !srcloc !23
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %7
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %put_indx_node.exit

put_indx_node.exit:                               ; preds = %for.end.i.i, %if.end.i.put_indx_node.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %put_indx_node.exit, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %13 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fnd, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %15 = ptrtoint ptr %fnd to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %fnd, align 4
  %root_de = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %16 = ptrtoint ptr %root_de to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %root_de, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_indx_node(ptr noundef %in) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %in, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.indx_node, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %index, align 4
  tail call void @kfree(ptr noundef %1) #16
  %nbufs1.i = getelementptr inbounds %struct.ntfs_buffers, ptr %in, i32 0, i32 2
  %2 = ptrtoint ptr %nbufs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbufs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.nb_put.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.nb_put.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %nb_put.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr %in, i32 0, i32 %i.010.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #16, !srcloc !23
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %nbufs1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %nbufs1.i, align 4
  br label %nb_put.exit

nb_put.exit:                                      ; preds = %for.end.i, %if.end.nb_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %in) #16
  br label %return

return:                                           ; preds = %nb_put.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @indx_clear(ptr nocapture noundef %indx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %0 = ptrtoint ptr %alloc_run to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alloc_run, align 4
  tail call void @kvfree(ptr noundef %1) #16
  %2 = call ptr @memset(ptr %alloc_run, i32 0, i32 12)
  %3 = ptrtoint ptr %indx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %indx, align 4
  tail call void @kvfree(ptr noundef %4) #16
  %5 = call ptr @memset(ptr %indx, i32 0, i32 12)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_init(ptr noundef %indx, ptr nocapture noundef readonly %sbi, ptr nocapture noundef readonly %attr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %data_off.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #16
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %attr, i32 %conv.i
  %index_block_clst = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 3
  %4 = ptrtoint ptr %index_block_clst to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index_block_clst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %type to i8
  %type1 = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %6 = ptrtoint ptr %type1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %type1, align 1
  %7 = ptrtoint ptr %index_block_clst to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index_block_clst, align 4
  %conv3 = zext i8 %8 to i32
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv3, i1 false) #16, !range !24
  %conv5 = trunc i32 %9 to i8
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %10 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %idx2vbn_bits, align 1
  %index_block_size = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 2
  %11 = ptrtoint ptr %index_block_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index_block_size, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end
  %size.addr.0.i = phi i32 [ %13, %if.end ], [ %shr.i, %do.body.i.do.body.i_crit_edge ]
  %bits.0.i = phi i32 [ 8, %if.end ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %bits.0.i, 1
  %shr.i = lshr i32 %size.addr.0.i, 1
  %cmp.i = icmp ugt i32 %size.addr.0.i, 513
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %blksize_bits.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

blksize_bits.exit:                                ; preds = %do.body.i
  %conv7 = trunc i32 %inc.i to i8
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %14 = ptrtoint ptr %index_bits to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %index_bits, align 4
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 3
  %15 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp = icmp ult i32 %13, %16
  %17 = ptrtoint ptr %index_block_clst to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index_block_clst, align 4
  %conv11 = zext i8 %18 to i32
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %blksize_bits.exit
  %mul = shl nuw nsw i32 %conv11, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul)
  %cmp12.not = icmp eq i32 %13, %mul
  br i1 %cmp12.not, label %if.end15, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %if.then9
  %shr = lshr i32 %16, 9
  %sub = add nuw nsw i32 %conv11, 8388607
  %and = and i32 %sub, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end15.do.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.else:                                          ; preds = %blksize_bits.exit
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 10
  %19 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cluster_bits, align 8
  %conv24 = zext i8 %20 to i32
  %shl = shl i32 %conv11, %conv24
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shl)
  %cmp25.not = icmp eq i32 %13, %shl
  br i1 %cmp25.not, label %if.else.do.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.end15.do.body_crit_edge
  %.sink = phi i8 [ 9, %if.end15.do.body_crit_edge ], [ %20, %if.else.do.body_crit_edge ]
  %vbn2vbo_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 6
  %21 = ptrtoint ptr %vbn2vbo_bits to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %vbn2vbo_bits, align 2
  %run_lock = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 2
  tail call void @__init_rwsem(ptr noundef %run_lock, ptr noundef nonnull @.str, ptr noundef nonnull @indx_init.__key) #16
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.body.sw.epilog7.i_crit_edge [
    i32 805306368, label %sw.bb.i
    i32 0, label %sw.bb1.i
  ]

do.body.sw.epilog7.i_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog7.i

sw.bb.i:                                          ; preds = %do.body
  %rule.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %25 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rule.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %26)
  %cmp.i57 = icmp eq i32 %26, 16777216
  br i1 %cmp.i57, label %sw.bb.i.get_cmp_func.exit_crit_edge, label %sw.bb.i.sw.epilog7.i_crit_edge

sw.bb.i.sw.epilog7.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog7.i

sw.bb.i.get_cmp_func.exit_crit_edge:              ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cmp_func.exit

sw.bb1.i:                                         ; preds = %do.body
  %rule2.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i, i32 0, i32 1
  %27 = ptrtoint ptr %rule2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rule2.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %28, label %sw.bb1.i.sw.epilog7.i_crit_edge [
    i32 268435456, label %sw.bb1.i.get_cmp_func.exit_crit_edge
    i32 301989888, label %sw.bb4.i
    i32 318767104, label %sw.bb5.i
  ]

sw.bb1.i.get_cmp_func.exit_crit_edge:             ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cmp_func.exit

sw.bb1.i.sw.epilog7.i_crit_edge:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog7.i

sw.bb4.i:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cmp_func.exit

sw.bb5.i:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_cmp_func.exit

sw.epilog7.i:                                     ; preds = %sw.bb1.i.sw.epilog7.i_crit_edge, %sw.bb.i.sw.epilog7.i_crit_edge, %do.body.sw.epilog7.i_crit_edge
  br label %get_cmp_func.exit

get_cmp_func.exit:                                ; preds = %sw.epilog7.i, %sw.bb5.i, %sw.bb4.i, %sw.bb1.i.get_cmp_func.exit_crit_edge, %sw.bb.i.get_cmp_func.exit_crit_edge
  %tobool35.not = phi i32 [ 0, %sw.bb.i.get_cmp_func.exit_crit_edge ], [ 0, %sw.bb1.i.get_cmp_func.exit_crit_edge ], [ 0, %sw.bb4.i ], [ 0, %sw.bb5.i ], [ -22, %sw.epilog7.i ]
  %retval.0.i = phi ptr [ @cmp_fnames, %sw.bb.i.get_cmp_func.exit_crit_edge ], [ @cmp_uint, %sw.bb1.i.get_cmp_func.exit_crit_edge ], [ @cmp_sdh, %sw.bb4.i ], [ @cmp_uints, %sw.bb5.i ], [ null, %sw.epilog7.i ]
  %cmp33 = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 3
  %30 = ptrtoint ptr %cmp33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %retval.0.i, ptr %cmp33, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_cmp_func.exit, %if.else.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool35.not, %get_cmp_func.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then9.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @indx_get_root(ptr nocapture noundef readonly %indx, ptr noundef %ni, ptr noundef writeonly %attr, ptr noundef %mi) local_unnamed_addr #0 align 64 {
entry:
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #16
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name_len, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1879048192, ptr noundef %4, i8 noundef zeroext %6, ptr noundef null, ptr noundef %mi) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %attr, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %attr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %if.end3
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11) #16
  %13 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data_off.i, align 4
  %16 = call i16 @llvm.bswap.i16(i16 %15) #16
  %conv.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %conv.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add.i)
  %cmp.i = icmp ult i32 %12, %add.i
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %13, align 8
  %19 = call i32 @llvm.bswap.i32(i32 %18) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp4.i = icmp ult i32 %19, 32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %spec.select.i = select i1 %cmp4.i, ptr null, ptr %add.ptr.i
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ %spec.select.i, %if.end3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %vbn, ptr nocapture noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %run_lock = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 2
  %conv = zext i32 %vbn to i64
  %vbn2vbo_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 6
  %0 = ptrtoint ptr %vbn2vbo_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbn2vbo_bits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %2 = ptrtoint ptr %index_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index_bits, align 4
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw i32 1, %conv2
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3392, i32 noundef 48) #19
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  %nbufs1.i = getelementptr inbounds %struct.ntfs_buffers, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %nbufs1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbufs1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.else.if.end6_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr %5, i32 0, i32 %i.010.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #16, !srcloc !23
  %inc.i = add nuw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %nbufs1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nbufs1.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %for.end.i, %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %in.0 = phi ptr [ %call7.i.i, %if.then.if.end6_crit_edge ], [ %5, %if.else.if.end6_crit_edge ], [ %5, %for.end.i ]
  %index = getelementptr inbounds %struct.indx_node, ptr %in.0, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %index, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end8.i, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end8.i:                                        ; preds = %if.end6
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl3, i32 noundef 3136) #20
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.end8.i.out_crit_edge, label %if.end8.i.if.end13_crit_edge

if.end8.i.if.end13_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end13:                                         ; preds = %if.end8.i.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %ib.0 = phi ptr [ %14, %if.end6.if.end13_crit_edge ], [ %call9.i, %if.end8.i.if.end13_crit_edge ]
  tail call void @down_read(ptr noundef %run_lock) #16
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %15 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sbi, align 4
  %call15 = tail call i32 @ntfs_read_bh(ptr noundef %16, ptr noundef %alloc_run, i64 noundef %shl, ptr noundef nonnull %ib.0, i32 noundef %shl3, ptr noundef %in.0) #16
  tail call void @up_read(ptr noundef %run_lock) #16
  %17 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call15, label %if.end13.out_crit_edge [
    i32 0, label %if.end13.if.end52_crit_edge
    i32 -555, label %if.end13.if.then46_crit_edge
    i32 -2, label %if.end25
  ]

if.end13.if.then46_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

if.end13.if.end52_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end25:                                         ; preds = %if.end13
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  tail call void @down_write(ptr noundef %run_lock) #16
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %22 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %name_len, align 4
  %conv27 = zext i32 %shl3 to i64
  %add = add i64 %shl, %conv27
  %call28 = tail call i32 @attr_load_runs_range(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %21, i8 noundef zeroext %23, ptr noundef %alloc_run, i64 noundef %shl, i64 noundef %add) #16
  tail call void @up_write(ptr noundef %run_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end31:                                         ; preds = %if.end25
  tail call void @down_read(ptr noundef %run_lock) #16
  %24 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sbi, align 4
  %call36 = tail call i32 @ntfs_read_bh(ptr noundef %25, ptr noundef %alloc_run, i64 noundef %shl, ptr noundef nonnull %ib.0, i32 noundef %shl3, ptr noundef %in.0) #16
  tail call void @up_read(ptr noundef %run_lock) #16
  %26 = zext i32 %call36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call36, label %if.end31.out_crit_edge [
    i32 -555, label %if.end31.if.then46_crit_edge
    i32 0, label %if.end31.if.end52_crit_edge
  ]

if.end31.if.end52_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

if.end31.if.then46_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then46

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then46:                                        ; preds = %if.end31.if.then46_crit_edge, %if.end13.if.then46_crit_edge
  %27 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sbi, align 4
  %call51 = tail call i32 @ntfs_write_bh(ptr noundef %28, ptr noundef nonnull %ib.0, ptr noundef %in.0, i32 noundef 0) #16
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %if.end31.if.end52_crit_edge, %if.end13.if.end52_crit_edge
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ib.0, ptr %index, align 4
  %30 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %in.0, ptr %node, align 4
  br label %out

out:                                              ; preds = %if.end52, %if.end31.out_crit_edge, %if.end25.out_crit_edge, %if.end13.out_crit_edge, %if.end8.i.out_crit_edge
  %err.2 = phi i32 [ 0, %if.end52 ], [ %call28, %if.end25.out_crit_edge ], [ -12, %if.end8.i.out_crit_edge ], [ %call15, %if.end13.out_crit_edge ], [ %call36, %if.end31.out_crit_edge ]
  %ib.1 = phi ptr [ %ib.0, %if.end52 ], [ %ib.0, %if.end25.out_crit_edge ], [ null, %if.end8.i.out_crit_edge ], [ %ib.0, %if.end13.out_crit_edge ], [ %ib.0, %if.end31.out_crit_edge ]
  %31 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %index, align 4
  %cmp55.not = icmp eq ptr %ib.1, %32
  br i1 %cmp55.not, label %out.if.end58_crit_edge, label %if.then57

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %ib.1) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %out.if.end58_crit_edge
  %33 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %node, align 4
  %cmp59.not = icmp eq ptr %34, %in.0
  br i1 %cmp59.not, label %if.end58.cleanup_crit_edge, label %if.then61

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then61:                                        ; preds = %if.end58
  %nbufs1.i122 = getelementptr inbounds %struct.ntfs_buffers, ptr %in.0, i32 0, i32 2
  %35 = ptrtoint ptr %nbufs1.i122 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbufs1.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i123 = icmp eq i32 %36, 0
  br i1 %tobool.not.i123, label %if.then61.nb_put.exit132_crit_edge, label %if.then61.for.body.i130_crit_edge

if.then61.for.body.i130_crit_edge:                ; preds = %if.then61
  br label %for.body.i130

if.then61.nb_put.exit132_crit_edge:               ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %nb_put.exit132

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %if.then61.for.body.i130_crit_edge
  %i.010.i124 = phi i32 [ %inc.i128, %for.body.i130.for.body.i130_crit_edge ], [ 0, %if.then61.for.body.i130_crit_edge ]
  %arrayidx.i125 = getelementptr [8 x ptr], ptr %in.0, i32 0, i32 %i.010.i124
  %37 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i125, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i126 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 11
  %call.i.i.i.i127 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i126, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i126, i32 1, i32 3, i32 1) #16
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i126, ptr %b_count.i.i126, i32 1, ptr elementtype(i32) %b_count.i.i126) #16, !srcloc !23
  %inc.i128 = add nuw i32 %i.010.i124, 1
  %exitcond.not.i129 = icmp eq i32 %inc.i128, %36
  br i1 %exitcond.not.i129, label %for.end.i131, label %for.body.i130.for.body.i130_crit_edge

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i130

for.end.i131:                                     ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #18
  %40 = ptrtoint ptr %nbufs1.i122 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %nbufs1.i122, align 4
  br label %nb_put.exit132

nb_put.exit132:                                   ; preds = %for.end.i131, %if.then61.nb_put.exit132_crit_edge
  tail call void @kfree(ptr noundef %in.0) #16
  br label %cleanup

cleanup:                                          ; preds = %nb_put.exit132, %if.end58.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ %err.2, %nb_put.exit132 ], [ %err.2, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_bh(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs_range(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_write_bh(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_find(ptr noundef %indx, ptr noundef %ni, ptr noundef %root, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx, ptr nocapture noundef %diff, ptr nocapture noundef writeonly %entry1, ptr nocapture noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %node = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node) #16
  %tobool.not = icmp eq ptr %root, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %0 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le.i, align 4
  %type.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 7
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i, i32 1
  %5 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1879048192, ptr noundef %4, i8 noundef zeroext %6, ptr noundef null, ptr noundef null) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end.thread87_crit_edge, label %if.end.i

if.then.if.end.thread87_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.thread87

if.end.i:                                         ; preds = %if.then
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end.thread87_crit_edge

if.end.i.if.end.thread87_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.thread87

if.end.i.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size.i.i, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10) #16
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_off.i.i, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #16
  %conv.i.i = zext i16 %15 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %11, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.if.end.thread87_crit_edge, label %if.end3.i.i

if.end.i.i.if.end.thread87_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.thread87

if.end3.i.i:                                      ; preds = %if.end.i.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %12, align 8
  %18 = call i32 @llvm.bswap.i32(i32 %17) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp4.i.i = icmp ult i32 %18, 32
  br i1 %cmp4.i.i, label %if.end3.i.i.if.end.thread87_crit_edge, label %if.end

if.end3.i.i.if.end.thread87_crit_edge:            ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.thread87

if.end.thread87:                                  ; preds = %if.end3.i.i.if.end.thread87_crit_edge, %if.end.i.i.if.end.thread87_crit_edge, %if.end.i.if.end.thread87_crit_edge, %if.then.if.end.thread87_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.end3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  %root.addr.086 = phi ptr [ %add.ptr.i.i, %if.end.if.end4_crit_edge ], [ %root, %entry.if.end4_crit_edge ]
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %root.addr.086, i32 0, i32 5
  %19 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not = icmp eq i32 %20, 0
  %sub = add i32 %20, -1
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %sub
  %root_de = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %cond.in = select i1 %tobool5.not, ptr %root_de, ptr %arrayidx
  %21 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond = load ptr, ptr %cond.in, align 4
  %tobool7.not = icmp eq ptr %cond, null
  br i1 %tobool7.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %cond, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i, align 4
  %24 = and i16 %23, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i.not = icmp eq i16 %24, 0
  br i1 %tobool.i.not, label %land.lhs.true9, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

land.lhs.true9:                                   ; preds = %land.lhs.true
  %cmp = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 3
  %25 = ptrtoint ptr %cmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cmp, align 4
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %cond, i32 1
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %cond, i32 0, i32 2
  %27 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %key_size, align 2
  %29 = call i16 @llvm.bswap.i16(i16 %28)
  %conv = zext i16 %29 to i32
  %call10 = call i32 %26(ptr noundef %key, i32 noundef %key_len, ptr noundef %add.ptr, i32 noundef %conv, ptr noundef %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.end13_crit_edge

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cond, ptr %entry1, align 4
  %31 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %diff, align 4
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  call void @fnd_clear(ptr noundef %fnd)
  %call14 = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %ihdr, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx, ptr noundef %diff)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %32 = ptrtoint ptr %root_de to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call14, ptr %root_de, align 4
  %33 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %node, align 4
  %34 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp1994 = icmp sgt i32 %35, -1
  br i1 %cmp1994, label %if.end17.if.then22_crit_edge, label %if.end17.lor.lhs.false_crit_edge

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  br label %lor.lhs.false

if.end17.if.then22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

lor.lhs.false:                                    ; preds = %fnd_push.exit.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge
  %e.095 = phi ptr [ %call30, %fnd_push.exit.lor.lhs.false_crit_edge ], [ %call14, %if.end17.lor.lhs.false_crit_edge ]
  %flags.i73 = getelementptr inbounds %struct.NTFS_DE, ptr %e.095, i32 0, i32 3
  %36 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i73, align 4
  %38 = and i16 %37, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not.i74 = icmp eq i16 %38, 0
  br i1 %tobool.not.i74, label %lor.lhs.false.if.then22_crit_edge, label %de_has_vcn_ex.exit

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

de_has_vcn_ex.exit:                               ; preds = %lor.lhs.false
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.095, i32 0, i32 1
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size.i, align 4
  %41 = call i16 @llvm.bswap.i16(i16 %40) #16
  %conv1.i = zext i16 %41 to i32
  %sub.i = add nsw i32 %conv1.i, -8
  %add.ptr.i = getelementptr i8, ptr %e.095, i32 %sub.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %cmp.i.not = icmp eq i64 %43, -1
  br i1 %cmp.i.not, label %de_has_vcn_ex.exit.if.then22_crit_edge, label %if.end23

de_has_vcn_ex.exit.if.then22_crit_edge:           ; preds = %de_has_vcn_ex.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

if.then22:                                        ; preds = %fnd_push.exit.if.then22_crit_edge, %de_has_vcn_ex.exit.if.then22_crit_edge, %lor.lhs.false.if.then22_crit_edge, %if.end17.if.then22_crit_edge
  %e.0.lcssa = phi ptr [ %call14, %if.end17.if.then22_crit_edge ], [ %e.095, %lor.lhs.false.if.then22_crit_edge ], [ %e.095, %de_has_vcn_ex.exit.if.then22_crit_edge ], [ %call30, %fnd_push.exit.if.then22_crit_edge ]
  %44 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %e.0.lcssa, ptr %entry1, align 4
  br label %cleanup

if.end23:                                         ; preds = %de_has_vcn_ex.exit
  %45 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %size.i, align 4
  %47 = call i16 @llvm.bswap.i16(i16 %46) #16
  %conv.i = zext i16 %47 to i32
  %sub.i76 = add nsw i32 %conv.i, -8
  %add.ptr.i77 = getelementptr i8, ptr %e.095, i32 %sub.i76
  %48 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.i77, align 8
  %50 = call i64 @llvm.bswap.i64(i64 %49) #16
  %conv1.i78 = trunc i64 %50 to i32
  %call25 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i78, ptr noundef nonnull %node)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %51 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %node, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %index, align 4
  %ihdr29 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %54, i32 0, i32 2
  %call30 = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %ihdr29, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx, ptr noundef %diff)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  %tobool.not.i79 = icmp eq ptr %52, null
  br i1 %tobool.not.i79, label %if.then32.cleanup_crit_edge, label %if.end.i81

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i81:                                       ; preds = %if.then32
  %index.le = getelementptr inbounds %struct.indx_node, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %index.le to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %index.le, align 4
  call void @kfree(ptr noundef %56) #16
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i80 = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i80, label %if.end.i81.nb_put.exit.i_crit_edge, label %if.end.i81.for.body.i.i_crit_edge

if.end.i81.for.body.i.i_crit_edge:                ; preds = %if.end.i81
  br label %for.body.i.i

if.end.i81.nb_put.exit.i_crit_edge:               ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %nb_put.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i81.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i81.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %52, i32 0, i32 %i.010.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #16
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #16, !srcloc !23
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %58
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %nb_put.exit.i

nb_put.exit.i:                                    ; preds = %for.end.i.i, %if.end.i81.nb_put.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %52) #16
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %63 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %64)
  %cmp1.i = icmp ugt i32 %64, 19
  br i1 %cmp1.i, label %if.end33.fnd_push.exit_crit_edge, label %if.end.i83

if.end33.fnd_push.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit

if.end.i83:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i82 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %64
  %65 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %52, ptr %arrayidx.i82, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %64
  %66 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call30, ptr %arrayidx2.i, align 4
  %67 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fnd, align 4
  %add.i = add i32 %68, 1
  store i32 %add.i, ptr %fnd, align 4
  br label %fnd_push.exit

fnd_push.exit:                                    ; preds = %if.end.i83, %if.end33.fnd_push.exit_crit_edge
  %69 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %node, align 4
  %70 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %diff, align 4
  %cmp19 = icmp sgt i32 %71, -1
  br i1 %cmp19, label %fnd_push.exit.if.then22_crit_edge, label %fnd_push.exit.lor.lhs.false_crit_edge

fnd_push.exit.lor.lhs.false_crit_edge:            ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

fnd_push.exit.if.then22_crit_edge:                ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then22

cleanup:                                          ; preds = %nb_put.exit.i, %if.then32.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.then22, %if.end13.cleanup_crit_edge, %if.then12, %if.end.cleanup_crit_edge, %if.end.thread87
  %retval.0 = phi i32 [ 0, %if.then12 ], [ -22, %if.end13.cleanup_crit_edge ], [ 0, %if.then22 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.thread87 ], [ -22, %if.then32.cleanup_crit_edge ], [ -22, %nb_put.exit.i ], [ %call25, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node) #16
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hdr_find_e(ptr nocapture noundef readonly %indx, ptr noundef %hdr, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx, ptr nocapture noundef writeonly %diff) unnamed_addr #0 align 64 {
entry:
  %offs = alloca [128 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp1 = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 3
  %0 = ptrtoint ptr %cmp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmp1, align 4
  %used = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hdr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %offs) #16
  %8 = call ptr @memset(ptr %offs, i32 255, i32 256)
  br label %fill_table.outer

fill_table.outer:                                 ; preds = %if.end28, %entry
  %min_idx.0.ph = phi i32 [ %min_idx.1, %if.end28 ], [ 0, %entry ]
  %mid_idx.0.ph = phi i32 [ %mid_idx.1, %if.end28 ], [ -1, %entry ]
  %table_size.0.ph = phi i32 [ %22, %if.end28 ], [ 8, %entry ]
  %off.0.ph = phi i32 [ %off.1, %if.end28 ], [ %7, %entry ]
  %smax = call i32 @llvm.smax.i32(i32 %table_size.0.ph, i32 1)
  br label %fill_table

fill_table:                                       ; preds = %if.then10.fill_table_crit_edge, %fill_table.outer
  %max_idx.0 = phi i32 [ %inc, %if.then10.fill_table_crit_edge ], [ 0, %fill_table.outer ]
  %off.0 = phi i32 [ %add5, %if.then10.fill_table_crit_edge ], [ %off.0.ph, %fill_table.outer ]
  %add = add i32 %off.0, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %4)
  %cmp2 = icmp ugt i32 %add, %4
  br i1 %cmp2, label %fill_table.cleanup_crit_edge, label %if.end

fill_table.cleanup_crit_edge:                     ; preds = %fill_table
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %fill_table
  %add.ptr = getelementptr i8, ptr %hdr, i32 %off.0
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %11)
  %cmp3 = icmp ult i16 %11, 16
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %conv = zext i16 %11 to i32
  %add5 = add i32 %off.0, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %4)
  %cmp6 = icmp ugt i32 %add5, %4
  br i1 %cmp6, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 4
  %14 = and i16 %13, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not = icmp eq i16 %14, 0
  br i1 %tobool.i.not, label %if.then10, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then10:                                        ; preds = %if.end9
  %conv11 = trunc i32 %off.0 to i16
  %arrayidx = getelementptr [128 x i16], ptr %offs, i32 0, i32 %max_idx.0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv11, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %max_idx.0, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.then10.if.end17_crit_edge, label %if.then10.fill_table_crit_edge

if.then10.fill_table_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %fill_table

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end17:                                         ; preds = %if.then10.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %off.1 = phi i32 [ %off.0, %if.end9.if.end17_crit_edge ], [ %add5, %if.then10.if.end17_crit_edge ]
  br label %binary_search

binary_search:                                    ; preds = %if.end47, %if.end17
  %e.0 = phi ptr [ %add.ptr, %if.end17 ], [ %add.ptr51, %if.end47 ]
  %found.1 = phi ptr [ null, %if.end17 ], [ %found.2, %if.end47 ]
  %min_idx.1 = phi i32 [ %min_idx.0.ph, %if.end17 ], [ %min_idx.2, %if.end47 ]
  %mid_idx.1 = phi i32 [ %mid_idx.0.ph, %if.end17 ], [ %shr, %if.end47 ]
  %max_idx.2 = phi i32 [ %max_idx.0, %if.end17 ], [ %max_idx.4, %if.end47 ]
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %e.0, i32 0, i32 2
  %16 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %key_size, align 2
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv18 = zext i16 %18 to i32
  %add.ptr19 = getelementptr %struct.NTFS_DE, ptr %e.0, i32 1
  %call20 = tail call i32 %1(ptr noundef %key, i32 noundef %key_len, ptr noundef %add.ptr19, i32 noundef %conv18, ptr noundef %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else32

if.then23:                                        ; preds = %binary_search
  %tobool.not = icmp eq ptr %found.1, null
  br i1 %tobool.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  %add25 = add i32 %mid_idx.1, 1
  br label %if.end43

if.else:                                          ; preds = %if.then23
  %flags.i96 = getelementptr inbounds %struct.NTFS_DE, ptr %e.0, i32 0, i32 3
  %19 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i96, align 4
  %21 = and i16 %20, 512
  %tobool.i97.not = icmp eq i16 %21, 0
  br i1 %tobool.i97.not, label %if.end28, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %mul = shl i32 %table_size.0.ph, 1
  %22 = tail call i32 @llvm.smin.i32(i32 %mul, i32 128)
  br label %fill_table.outer

if.else32:                                        ; preds = %binary_search
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp33 = icmp slt i32 %call20, 0
  br i1 %cmp33, label %if.then35, label %if.else32.cleanup.sink.split_crit_edge

if.else32.cleanup.sink.split_crit_edge:           ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.then35:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #18
  %tobool36.not = icmp eq ptr %found.1, null
  %max_idx.2.mid_idx.1 = select i1 %tobool36.not, i32 %max_idx.2, i32 %mid_idx.1
  %max_idx.3 = add i32 %max_idx.2.mid_idx.1, -1
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.then24
  %found.2 = phi ptr [ %found.1, %if.then24 ], [ %e.0, %if.then35 ]
  %min_idx.2 = phi i32 [ %add25, %if.then24 ], [ %min_idx.1, %if.then35 ]
  %max_idx.4 = phi i32 [ %max_idx.2, %if.then24 ], [ %max_idx.3, %if.then35 ]
  %cmp44 = icmp sgt i32 %min_idx.2, %max_idx.4
  br i1 %cmp44, label %if.end43.cleanup.sink.split_crit_edge, label %if.end47

if.end43.cleanup.sink.split_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  %add48 = add i32 %max_idx.4, %min_idx.2
  %shr = ashr i32 %add48, 1
  %arrayidx49 = getelementptr [128 x i16], ptr %offs, i32 0, i32 %shr
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx49, align 2
  %conv50 = zext i16 %24 to i32
  %add.ptr51 = getelementptr i8, ptr %hdr, i32 %conv50
  br label %binary_search

cleanup.sink.split:                               ; preds = %if.end43.cleanup.sink.split_crit_edge, %if.else32.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.else32.cleanup.sink.split_crit_edge ], [ -1, %if.end43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %e.0, %if.else32.cleanup.sink.split_crit_edge ], [ %found.2, %if.end43.cleanup.sink.split_crit_edge ]
  %25 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %diff, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %fill_table.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.ph, %cleanup.sink.split ], [ null, %fill_table.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %offs) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_find_sort(ptr noundef %indx, ptr noundef %ni, ptr noundef %root, ptr nocapture noundef %entry1, ptr noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %n, align 4
  %1 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fnd, align 4
  %3 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5
  %5 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ihdr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #16
  %used2.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used2.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  %add.ptr.i = getelementptr i8, ptr %ihdr, i32 %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp.not.i = icmp ult i32 %7, %10
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %total.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %13)
  %cmp3.not.i = icmp ult i32 %7, %13
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size.i, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %16)
  %cmp4.i = icmp ult i16 %16, 16
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i = zext i16 %16 to i32
  %add.i = add i32 %7, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %10)
  %cmp8.i = icmp ugt i32 %add.i, %10
  %tobool3.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool3.not, %cmp8.i
  br i1 %or.cond, label %lor.lhs.false6.i.cleanup_crit_edge, label %if.end

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @fnd_clear(ptr noundef %fnd)
  %root_de = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %17 = ptrtoint ptr %root_de to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %root_de, align 4
  br label %next_iter

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.else18

if.then6:                                         ; preds = %if.else
  %root_de7 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %18 = ptrtoint ptr %root_de7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root_de7, align 4
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 4
  %22 = and i16 %21, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.i.not = icmp eq i16 %22, 0
  br i1 %tobool.i.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %entry1, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %ihdr11 = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5
  %24 = ptrtoint ptr %19 to i32
  %25 = ptrtoint ptr %ihdr11 to i32
  %sub.i = sub i32 %24, %25
  %used1.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %28)
  %cmp.not.i153 = icmp ult i32 %sub.i, %28
  br i1 %cmp.not.i153, label %if.end.i155, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i155:                                      ; preds = %if.end10
  %size.i154 = getelementptr inbounds %struct.NTFS_DE, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %size.i154 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %size.i154, align 4
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %31)
  %cmp2.i = icmp ult i16 %31, 16
  br i1 %cmp2.i, label %if.end.i155.cleanup_crit_edge, label %lor.lhs.false.i160

if.end.i155.cleanup_crit_edge:                    ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i160:                               ; preds = %if.end.i155
  %conv.i156 = zext i16 %31 to i32
  %add.i157 = add i32 %sub.i, 16
  %add5.i = add i32 %add.i157, %conv.i156
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %28)
  %cmp6.i = icmp ugt i32 %add5.i, %28
  %add.ptr.i158 = getelementptr i8, ptr %19, i32 %conv.i156
  %tobool14.not = icmp eq ptr %add.ptr.i158, null
  %or.cond223 = select i1 %cmp6.i, i1 true, i1 %tobool14.not
  br i1 %or.cond223, label %lor.lhs.false.i160.cleanup_crit_edge, label %if.end16

lor.lhs.false.i160.cleanup_crit_edge:             ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.i160
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %root_de7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i158, ptr %root_de7, align 4
  br label %next_iter

if.else18:                                        ; preds = %if.else
  %sub = add i32 %2, -1
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %35 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %n, align 4
  %arrayidx20 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %sub
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx20, align 4
  %flags.i162 = getelementptr inbounds %struct.NTFS_DE, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %flags.i162 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i162, align 4
  %40 = and i16 %39, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i163.not = icmp eq i16 %40, 0
  br i1 %tobool.i163.not, label %if.end23, label %if.else18.pop_level_crit_edge

if.else18.pop_level_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #18
  br label %pop_level

if.end23:                                         ; preds = %if.else18
  %index = getelementptr inbounds %struct.indx_node, ptr %34, i32 0, i32 1
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %index, align 4
  %ihdr24 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %37 to i32
  %44 = ptrtoint ptr %ihdr24 to i32
  %sub.i164 = sub i32 %43, %44
  %used1.i165 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %42, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %used1.i165 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %used1.i165, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i164, i32 %47)
  %cmp.not.i166 = icmp ult i32 %sub.i164, %47
  br i1 %cmp.not.i166, label %if.end.i169, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i169:                                      ; preds = %if.end23
  %size.i167 = getelementptr inbounds %struct.NTFS_DE, ptr %37, i32 0, i32 1
  %48 = ptrtoint ptr %size.i167 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size.i167, align 4
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %50)
  %cmp2.i168 = icmp ult i16 %50, 16
  br i1 %cmp2.i168, label %if.end.i169.cleanup_crit_edge, label %lor.lhs.false.i176

if.end.i169.cleanup_crit_edge:                    ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i176:                               ; preds = %if.end.i169
  %conv.i170 = zext i16 %50 to i32
  %add.i171 = add i32 %sub.i164, 16
  %add5.i172 = add i32 %add.i171, %conv.i170
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i172, i32 %47)
  %cmp6.i173 = icmp ugt i32 %add5.i172, %47
  %add.ptr.i174 = getelementptr i8, ptr %37, i32 %conv.i170
  %tobool26.not = icmp eq ptr %add.ptr.i174, null
  %or.cond224 = select i1 %cmp6.i173, i1 true, i1 %tobool26.not
  br i1 %or.cond224, label %lor.lhs.false.i176.cleanup_crit_edge, label %if.end28

lor.lhs.false.i176.cleanup_crit_edge:             ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false.i176
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i174, ptr %arrayidx20, align 4
  br label %next_iter

next_iter.loopexit:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %102, ptr %n, align 4
  br label %next_iter

next_iter:                                        ; preds = %next_iter.loopexit, %if.end28, %if.end16, %if.end
  %e.0 = phi ptr [ %add.ptr.i174, %if.end28 ], [ %add.ptr.i158, %if.end16 ], [ %add.ptr.i, %if.end ], [ %e.3, %next_iter.loopexit ]
  %iter.0 = phi i32 [ 0, %if.end28 ], [ 0, %if.end16 ], [ 0, %if.end ], [ %iter.1, %next_iter.loopexit ]
  %inc = add i32 %iter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %iter.0)
  %cmp = icmp ugt i32 %iter.0, 999
  br i1 %cmp, label %next_iter.cleanup_crit_edge, label %while.cond.preheader

next_iter.cleanup_crit_edge:                      ; preds = %next_iter
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond.preheader:                             ; preds = %next_iter
  %flags.i179232 = getelementptr inbounds %struct.NTFS_DE, ptr %e.0, i32 0, i32 3
  %53 = ptrtoint ptr %flags.i179232 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags.i179232, align 4
  %55 = and i16 %54, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i233 = icmp eq i16 %55, 0
  br i1 %tobool.not.i233, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.de_has_vcn_ex.exit_crit_edge

while.cond.preheader.de_has_vcn_ex.exit_crit_edge: ; preds = %while.cond.preheader
  br label %de_has_vcn_ex.exit

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

de_has_vcn_ex.exit:                               ; preds = %fnd_push.exit.de_has_vcn_ex.exit_crit_edge, %while.cond.preheader.de_has_vcn_ex.exit_crit_edge
  %e.1234 = phi ptr [ %add.ptr.i190, %fnd_push.exit.de_has_vcn_ex.exit_crit_edge ], [ %e.0, %while.cond.preheader.de_has_vcn_ex.exit_crit_edge ]
  %size.i180 = getelementptr inbounds %struct.NTFS_DE, ptr %e.1234, i32 0, i32 1
  %56 = ptrtoint ptr %size.i180 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %size.i180, align 4
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #16
  %conv1.i = zext i16 %58 to i32
  %sub.i181 = add nsw i32 %conv1.i, -8
  %add.ptr.i182 = getelementptr i8, ptr %e.1234, i32 %sub.i181
  %59 = ptrtoint ptr %add.ptr.i182 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr.i182, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %60)
  %cmp.i.not = icmp eq i64 %60, -1
  br i1 %cmp.i.not, label %de_has_vcn_ex.exit.while.end_crit_edge, label %while.body

de_has_vcn_ex.exit.while.end_crit_edge:           ; preds = %de_has_vcn_ex.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %de_has_vcn_ex.exit
  %61 = ptrtoint ptr %size.i180 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %size.i180, align 4
  %63 = tail call i16 @llvm.bswap.i16(i16 %62)
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %63)
  %cmp37 = icmp ult i16 %63, 24
  br i1 %cmp37, label %if.then39, label %if.end44

if.then39:                                        ; preds = %while.body
  %64 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %n, align 4
  %tobool40.not = icmp eq ptr %65, null
  br i1 %tobool40.not, label %if.then39.cleanup_crit_edge, label %if.then41

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  %66 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fnd, align 4
  %sub.i183 = add i32 %67, -1
  %arrayidx.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub.i183
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %arrayidx.i, align 4
  store i32 %sub.i183, ptr %fnd, align 4
  tail call void @kfree(ptr noundef nonnull %65) #16
  br label %cleanup

if.end44:                                         ; preds = %while.body
  %conv.i185 = zext i16 %63 to i32
  %sub.i186 = add nsw i32 %conv.i185, -8
  %add.ptr.i187 = getelementptr i8, ptr %e.1234, i32 %sub.i186
  %69 = ptrtoint ptr %add.ptr.i187 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr.i187, align 8
  %71 = tail call i64 @llvm.bswap.i64(i64 %70) #16
  %conv1.i188 = trunc i64 %71 to i32
  %call46 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i188, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %if.end44
  %72 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %n, align 4
  %index50 = getelementptr inbounds %struct.indx_node, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %index50 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %index50, align 4
  %ihdr51 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %ihdr51 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ihdr51, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #16
  %used2.i189 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %75, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %used2.i189 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %used2.i189, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #16
  %add.ptr.i190 = getelementptr i8, ptr %ihdr51, i32 %78
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %81)
  %cmp.not.i191 = icmp ult i32 %78, %81
  br i1 %cmp.not.i191, label %lor.lhs.false.i194, label %if.end49.if.then54_crit_edge

if.end49.if.then54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false.i194:                               ; preds = %if.end49
  %total.i192 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %75, i32 0, i32 2, i32 2
  %82 = ptrtoint ptr %total.i192 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %total.i192, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %84)
  %cmp3.not.i193 = icmp ult i32 %78, %84
  br i1 %cmp3.not.i193, label %if.end.i197, label %lor.lhs.false.i194.if.then54_crit_edge

lor.lhs.false.i194.if.then54_crit_edge:           ; preds = %lor.lhs.false.i194
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

if.end.i197:                                      ; preds = %lor.lhs.false.i194
  %size.i195 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i190, i32 0, i32 1
  %85 = ptrtoint ptr %size.i195 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %size.i195, align 4
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %87)
  %cmp4.i196 = icmp ult i16 %87, 16
  br i1 %cmp4.i196, label %if.end.i197.if.then54_crit_edge, label %lor.lhs.false6.i202

if.end.i197.if.then54_crit_edge:                  ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false6.i202:                              ; preds = %if.end.i197
  %conv.i198 = zext i16 %87 to i32
  %add.i199 = add i32 %78, %conv.i198
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i199, i32 %81)
  %cmp8.i200 = icmp ugt i32 %add.i199, %81
  %tobool53.not = icmp eq ptr %add.ptr.i190, null
  %or.cond225 = or i1 %tobool53.not, %cmp8.i200
  br i1 %or.cond225, label %lor.lhs.false6.i202.if.then54_crit_edge, label %if.end55

lor.lhs.false6.i202.if.then54_crit_edge:          ; preds = %lor.lhs.false6.i202
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false6.i202.if.then54_crit_edge, %if.end.i197.if.then54_crit_edge, %lor.lhs.false.i194.if.then54_crit_edge, %if.end49.if.then54_crit_edge
  tail call void @kfree(ptr noundef %73) #16
  br label %cleanup

if.end55:                                         ; preds = %lor.lhs.false6.i202
  %88 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %89)
  %cmp1.i = icmp ugt i32 %89, 19
  br i1 %cmp1.i, label %if.end55.fnd_push.exit_crit_edge, label %if.end.i207

if.end55.fnd_push.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit

if.end.i207:                                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i205 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %89
  %90 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %73, ptr %arrayidx.i205, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %89
  %91 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i190, ptr %arrayidx2.i, align 4
  %92 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fnd, align 4
  %add.i206 = add i32 %93, 1
  store i32 %add.i206, ptr %fnd, align 4
  br label %fnd_push.exit

fnd_push.exit:                                    ; preds = %if.end.i207, %if.end55.fnd_push.exit_crit_edge
  %flags.i179 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i190, i32 0, i32 3
  %94 = ptrtoint ptr %flags.i179 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags.i179, align 4
  %96 = and i16 %95, 256
  %tobool.not.i = icmp eq i16 %96, 0
  br i1 %tobool.not.i, label %fnd_push.exit.while.end_crit_edge, label %fnd_push.exit.de_has_vcn_ex.exit_crit_edge

fnd_push.exit.de_has_vcn_ex.exit_crit_edge:       ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %de_has_vcn_ex.exit

fnd_push.exit.while.end_crit_edge:                ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %fnd_push.exit.while.end_crit_edge, %de_has_vcn_ex.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %e.1.lcssa = phi ptr [ %e.0, %while.cond.preheader.while.end_crit_edge ], [ %add.ptr.i190, %fnd_push.exit.while.end_crit_edge ], [ %e.1234, %de_has_vcn_ex.exit.while.end_crit_edge ]
  %size57 = getelementptr inbounds %struct.NTFS_DE, ptr %e.1.lcssa, i32 0, i32 1
  %97 = ptrtoint ptr %size57 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %size57, align 4
  %99 = tail call i16 @llvm.bswap.i16(i16 %98)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %99)
  %cmp59 = icmp ugt i16 %99, 16
  br i1 %cmp59, label %if.then61, label %while.end.pop_level_crit_edge

while.end.pop_level_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %pop_level

if.then61:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  %100 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %e.1.lcssa, ptr %entry1, align 4
  br label %cleanup

pop_level:                                        ; preds = %while.end.pop_level_crit_edge, %if.else18.pop_level_crit_edge
  %e.2 = phi ptr [ %37, %if.else18.pop_level_crit_edge ], [ %e.1.lcssa, %while.end.pop_level_crit_edge ]
  %iter.1 = phi i32 [ 0, %if.else18.pop_level_crit_edge ], [ %inc, %while.end.pop_level_crit_edge ]
  %101 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %101)
  %n.promoted = load ptr, ptr %n, align 4
  %root_de80 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end87.for.cond_crit_edge, %pop_level
  %102 = phi ptr [ %n.promoted, %pop_level ], [ %119, %if.end87.for.cond_crit_edge ]
  %e.3 = phi ptr [ %e.2, %pop_level ], [ %e.4, %if.end87.for.cond_crit_edge ]
  %flags.i208 = getelementptr inbounds %struct.NTFS_DE, ptr %e.3, i32 0, i32 3
  %103 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags.i208, align 4
  %105 = and i16 %104, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool.i209.not = icmp eq i16 %105, 0
  br i1 %tobool.i209.not, label %next_iter.loopexit, label %if.end65

if.end65:                                         ; preds = %for.cond
  %tobool66.not = icmp eq ptr %102, null
  br i1 %tobool66.not, label %if.end65.if.end69_crit_edge, label %if.then67

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  %106 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fnd, align 4
  %sub.i210 = add i32 %107, -1
  %arrayidx.i211 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub.i210
  %108 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %arrayidx.i211, align 4
  store i32 %sub.i210, ptr %fnd, align 4
  tail call void @kfree(ptr noundef nonnull %102) #16
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end65.if.end69_crit_edge
  %109 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool71.not = icmp eq i32 %110, 0
  br i1 %tobool71.not, label %if.else79, label %if.then72

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #18
  %sub74 = add i32 %110, -1
  %arrayidx75 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub74
  %111 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx75, align 4
  %arrayidx78 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %sub74
  %113 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx78, align 4
  br label %if.end87

if.else79:                                        ; preds = %if.end69
  %115 = ptrtoint ptr %root_de80 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %root_de80, align 4
  %tobool81.not = icmp eq ptr %116, null
  br i1 %tobool81.not, label %if.else85, label %if.then82

if.then82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #18
  %117 = ptrtoint ptr %root_de80 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %root_de80, align 4
  br label %if.end87

if.else85:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #18
  %118 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %entry1, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then82, %if.then72
  %119 = phi ptr [ %112, %if.then72 ], [ null, %if.then82 ]
  %e.4 = phi ptr [ %114, %if.then72 ], [ %116, %if.then82 ]
  %size88 = getelementptr inbounds %struct.NTFS_DE, ptr %e.4, i32 0, i32 1
  %120 = ptrtoint ptr %size88 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %size88, align 4
  %122 = tail call i16 @llvm.bswap.i16(i16 %121)
  %cmp90 = icmp ugt i16 %122, 16
  br i1 %cmp90, label %if.then92, label %if.end87.for.cond_crit_edge

if.end87.for.cond_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.then92:                                        ; preds = %if.end87
  %123 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %e.4, ptr %entry1, align 4
  %124 = ptrtoint ptr %root_de80 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %root_de80, align 4
  %tobool94.not = icmp eq ptr %125, null
  br i1 %tobool94.not, label %if.then95, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #18
  %126 = ptrtoint ptr %root_de80 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %e.4, ptr %root_de80, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.then92.cleanup_crit_edge, %if.else85, %if.then61, %if.then54, %if.end44.cleanup_crit_edge, %if.then41, %if.then39.cleanup_crit_edge, %next_iter.cleanup_crit_edge, %lor.lhs.false.i176.cleanup_crit_edge, %if.end.i169.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %lor.lhs.false.i160.cleanup_crit_edge, %if.end.i155.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then9, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else85 ], [ -22, %if.then54 ], [ 0, %if.then61 ], [ 0, %if.then9 ], [ -22, %next_iter.cleanup_crit_edge ], [ -22, %if.then41 ], [ -22, %if.then39.cleanup_crit_edge ], [ 0, %if.then95 ], [ 0, %if.then92.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %lor.lhs.false6.i.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end.i155.cleanup_crit_edge ], [ -22, %lor.lhs.false.i160.cleanup_crit_edge ], [ -22, %if.end23.cleanup_crit_edge ], [ -22, %if.end.i169.cleanup_crit_edge ], [ -22, %lor.lhs.false.i176.cleanup_crit_edge ], [ %call46, %if.end44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @hdr_first_de(ptr noundef readonly %hdr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %used2 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %used2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %add.ptr = getelementptr i8, ptr %hdr, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp.not = icmp ult i32 %2, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %total = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp3.not = icmp ult i32 %2, %8
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %11)
  %cmp4 = icmp ult i16 %11, 16
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %lor.lhs.false6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i16 %11 to i32
  %add = add i32 %2, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp8 = icmp ugt i32 %add, %5
  %spec.select = select i1 %cmp8, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false6 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_find_raw(ptr noundef %indx, ptr noundef %ni, ptr noundef %root, ptr nocapture noundef %entry1, ptr nocapture noundef %off, ptr nocapture noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  %n = alloca ptr, align 4
  %bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %n, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #16
  %1 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bit, align 4, !annotation !20
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %2 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sbi, align 4
  %record_size2 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %record_size2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %record_size2, align 8
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entry1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5
  %8 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ihdr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #16
  %used2.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %used2.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #16
  %add.ptr.i = getelementptr i8, ptr %ihdr, i32 %10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %13)
  %cmp.not.i = icmp ult i32 %10, %13
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then
  %total.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp3.not.i = icmp ult i32 %10, %16
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %size.i, align 4
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %19)
  %cmp4.i = icmp ult i16 %19, 16
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i = zext i16 %19 to i32
  %add.i = add i32 %10, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp8.i = icmp ugt i32 %add.i, %13
  %tobool3.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool3.not, %cmp8.i
  br i1 %or.cond, label %lor.lhs.false6.i.cleanup_crit_edge, label %if.end

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6.i
  tail call void @fnd_clear(ptr noundef %fnd)
  %root_de = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %20 = ptrtoint ptr %root_de to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %root_de, align 4
  %21 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %off, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %5)
  %cmp.not = icmp ult i32 %22, %5
  br i1 %cmp.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %22, %5
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %23 = ptrtoint ptr %index_bits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index_bits, align 4
  %conv = zext i8 %24 to i32
  %shr = lshr i32 %sub, %conv
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %25 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %idx2vbn_bits, align 1
  %conv6 = zext i8 %26 to i32
  %shl = shl i32 %shr, %conv6
  br label %nextthread-pre-split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %off, align 4
  br label %for.cond.preheader

if.else:                                          ; preds = %entry
  %root_de8 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %28 = ptrtoint ptr %root_de8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %root_de8, align 4
  %tobool9.not = icmp eq ptr %29, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %if.else.for.cond.preheader_crit_edge

if.else.for.cond.preheader_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %fnd_push.exit.for.cond.preheader_crit_edge, %if.else.for.cond.preheader_crit_edge, %if.end7
  %e.1.ph = phi ptr [ %retval.0.i201, %fnd_push.exit.for.cond.preheader_crit_edge ], [ null, %if.else.for.cond.preheader_crit_edge ], [ %add.ptr.i, %if.end7 ]
  %30 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %30)
  %n.promoted = load ptr, ptr %n, align 4
  %root_de21 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %ihdr24 = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5
  %31 = ptrtoint ptr %ihdr24 to i32
  %used1.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5, i32 1
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.end44, %for.cond.preheader
  %.ph = phi ptr [ %53, %if.end44 ], [ %n.promoted, %for.cond.preheader ]
  %e.1.ph246 = phi ptr [ %add.ptr.i180, %if.end44 ], [ %e.1.ph, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %if.end29, %for.cond.outer
  %e.1 = phi ptr [ %add.ptr.i164, %if.end29 ], [ %e.1.ph246, %for.cond.outer ]
  %tobool13.not = icmp eq ptr %e.1, null
  br i1 %tobool13.not, label %for.cond.if.end18_crit_edge, label %land.lhs.true

for.cond.if.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

land.lhs.true:                                    ; preds = %for.cond
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %e.1, i32 0, i32 1
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %34)
  %cmp15 = icmp ugt i16 %34, 16
  br i1 %cmp15, label %ok, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %for.cond.if.end18_crit_edge
  %35 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not = icmp eq i32 %36, 0
  br i1 %tobool19.not, label %if.then20, label %if.else32

if.then20:                                        ; preds = %if.end18
  %37 = ptrtoint ptr %root_de21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %root_de21, align 4
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %flags.i, align 4
  %41 = and i16 %40, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.i.not = icmp eq i16 %41, 0
  br i1 %tobool.i.not, label %if.then23, label %next.loopexit

if.then23:                                        ; preds = %if.then20
  %42 = ptrtoint ptr %38 to i32
  %sub.i = sub i32 %42, %31
  %43 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %used1.i, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %45)
  %cmp.not.i159 = icmp ult i32 %sub.i, %45
  br i1 %cmp.not.i159, label %if.end.i161, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i161:                                      ; preds = %if.then23
  %size.i160 = getelementptr inbounds %struct.NTFS_DE, ptr %38, i32 0, i32 1
  %46 = ptrtoint ptr %size.i160 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %size.i160, align 4
  %48 = call i16 @llvm.bswap.i16(i16 %47) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %48)
  %cmp2.i = icmp ult i16 %48, 16
  br i1 %cmp2.i, label %if.end.i161.cleanup_crit_edge, label %lor.lhs.false.i166

if.end.i161.cleanup_crit_edge:                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i166:                               ; preds = %if.end.i161
  %conv.i162 = zext i16 %48 to i32
  %add.i163 = add i32 %sub.i, 16
  %add5.i = add i32 %add.i163, %conv.i162
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %45)
  %cmp6.i = icmp ugt i32 %add5.i, %45
  %add.ptr.i164 = getelementptr i8, ptr %38, i32 %conv.i162
  %tobool27.not = icmp eq ptr %add.ptr.i164, null
  %or.cond214 = select i1 %cmp6.i, i1 true, i1 %tobool27.not
  br i1 %or.cond214, label %lor.lhs.false.i166.cleanup_crit_edge, label %if.end29

lor.lhs.false.i166.cleanup_crit_edge:             ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false.i166
  call void @__sanitizer_cov_trace_pc() #18
  %49 = ptrtoint ptr %root_de21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i164, ptr %root_de21, align 4
  br label %for.cond

if.else32:                                        ; preds = %if.end18
  %sub34 = add i32 %36, -1
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %sub34
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %arrayidx37 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub34
  %52 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx37, align 4
  %flags.i168 = getelementptr inbounds %struct.NTFS_DE, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %flags.i168 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags.i168, align 4
  %56 = and i16 %55, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool.i169.not = icmp eq i16 %56, 0
  br i1 %tobool.i169.not, label %if.then39, label %if.end49

if.then39:                                        ; preds = %if.else32
  %index = getelementptr inbounds %struct.indx_node, ptr %53, i32 0, i32 1
  %57 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %index, align 4
  %ihdr40 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %51 to i32
  %60 = ptrtoint ptr %ihdr40 to i32
  %sub.i170 = sub i32 %59, %60
  %used1.i171 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %58, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %used1.i171 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %used1.i171, align 4
  %63 = call i32 @llvm.bswap.i32(i32 %62) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i170, i32 %63)
  %cmp.not.i172 = icmp ult i32 %sub.i170, %63
  br i1 %cmp.not.i172, label %if.end.i175, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i175:                                      ; preds = %if.then39
  %size.i173 = getelementptr inbounds %struct.NTFS_DE, ptr %51, i32 0, i32 1
  %64 = ptrtoint ptr %size.i173 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size.i173, align 4
  %66 = call i16 @llvm.bswap.i16(i16 %65) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %66)
  %cmp2.i174 = icmp ult i16 %66, 16
  br i1 %cmp2.i174, label %if.end.i175.cleanup_crit_edge, label %lor.lhs.false.i182

if.end.i175.cleanup_crit_edge:                    ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i182:                               ; preds = %if.end.i175
  %conv.i176 = zext i16 %66 to i32
  %add.i177 = add i32 %sub.i170, 16
  %add5.i178 = add i32 %add.i177, %conv.i176
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i178, i32 %63)
  %cmp6.i179 = icmp ugt i32 %add5.i178, %63
  %add.ptr.i180 = getelementptr i8, ptr %51, i32 %conv.i176
  %tobool42.not = icmp eq ptr %add.ptr.i180, null
  %or.cond215 = select i1 %cmp6.i179, i1 true, i1 %tobool42.not
  br i1 %or.cond215, label %lor.lhs.false.i182.cleanup_crit_edge, label %if.end44

lor.lhs.false.i182.cleanup_crit_edge:             ; preds = %lor.lhs.false.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end44:                                         ; preds = %lor.lhs.false.i182
  call void @__sanitizer_cov_trace_pc() #18
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i180, ptr %arrayidx, align 4
  br label %for.cond.outer

if.end49:                                         ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #18
  %68 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %53, ptr %n, align 4
  %index50 = getelementptr inbounds %struct.indx_node, ptr %53, i32 0, i32 1
  %69 = ptrtoint ptr %index50 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %index50, align 4
  %vbn = getelementptr inbounds %struct.INDEX_BUFFER, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %vbn to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %vbn, align 8
  %73 = call i64 @llvm.bswap.i64(i64 %72)
  %index_block_clst = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 3
  %74 = ptrtoint ptr %index_block_clst to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %index_block_clst, align 4
  %conv51 = zext i8 %75 to i64
  %add = add i64 %73, %conv51
  %conv52 = trunc i64 %add to i32
  br label %nextthread-pre-split

next.loopexit:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #18
  %76 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %.ph, ptr %n, align 4
  br label %next

nextthread-pre-split:                             ; preds = %if.end49, %if.then5
  %next_vbn.0.ph = phi i32 [ %shl, %if.then5 ], [ %conv52, %if.end49 ]
  %77 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load ptr, ptr %n, align 4
  br label %next

next:                                             ; preds = %nextthread-pre-split, %next.loopexit
  %78 = phi ptr [ %.pr, %nextthread-pre-split ], [ %.ph, %next.loopexit ]
  %next_vbn.0 = phi i32 [ %next_vbn.0.ph, %nextthread-pre-split ], [ 0, %next.loopexit ]
  %tobool54.not = icmp eq ptr %78, null
  br i1 %tobool54.not, label %next.if.end57_crit_edge, label %if.end.i186

next.if.end57_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.end.i186:                                      ; preds = %next
  %79 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %fnd, align 4
  %sub.i185 = add i32 %80, -1
  %arrayidx.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %sub.i185
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %arrayidx.i, align 4
  store i32 %sub.i185, ptr %fnd, align 4
  %index.i = getelementptr inbounds %struct.indx_node, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %index.i, align 4
  call void @kfree(ptr noundef %83) #16
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %78, i32 0, i32 2
  %84 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i.i, label %if.end.i186.put_indx_node.exit_crit_edge, label %if.end.i186.for.body.i.i_crit_edge

if.end.i186.for.body.i.i_crit_edge:               ; preds = %if.end.i186
  br label %for.body.i.i

if.end.i186.put_indx_node.exit_crit_edge:         ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_indx_node.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i186.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i186.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %78, i32 0, i32 %i.010.i.i
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %87, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #16
  %88 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #16, !srcloc !23
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %85
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %89 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %put_indx_node.exit

put_indx_node.exit:                               ; preds = %for.end.i.i, %if.end.i186.put_indx_node.exit_crit_edge
  call void @kfree(ptr noundef nonnull %78) #16
  %90 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %n, align 4
  br label %if.end57

if.end57:                                         ; preds = %put_indx_node.exit, %next.if.end57_crit_edge
  %idx2vbn_bits58 = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %91 = ptrtoint ptr %idx2vbn_bits58 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %idx2vbn_bits58, align 1
  %conv59 = zext i8 %92 to i32
  %shr60 = lshr i32 %next_vbn.0, %conv59
  %93 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shr60, ptr %bit, align 4
  %call61 = call i32 @indx_used_bit(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %bit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call61)
  %cmp62 = icmp eq i32 %call61, -2
  br i1 %cmp62, label %if.end57.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end57.cleanup.sink.split_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end57
  %94 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %95)
  %cmp64 = icmp eq i32 %95, -1
  br i1 %cmp64, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end67

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.sink.split

if.end67:                                         ; preds = %lor.lhs.false
  %96 = ptrtoint ptr %idx2vbn_bits58 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %idx2vbn_bits58, align 1
  %conv69 = zext i8 %97 to i32
  %shl70 = shl i32 %95, %conv69
  %call71 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %shl70, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end67.cleanup_crit_edge

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end74:                                         ; preds = %if.end67
  %98 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %n, align 4
  %index75 = getelementptr inbounds %struct.indx_node, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %index75 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %index75, align 4
  %ihdr76 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %ihdr76 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ihdr76, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #16
  %used2.i187 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %101, i32 0, i32 2, i32 1
  %105 = ptrtoint ptr %used2.i187 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %used2.i187, align 4
  %107 = call i32 @llvm.bswap.i32(i32 %106) #16
  %add.ptr.i188 = getelementptr i8, ptr %ihdr76, i32 %104
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %107)
  %cmp.not.i189 = icmp ult i32 %104, %107
  br i1 %cmp.not.i189, label %lor.lhs.false.i192, label %if.end74.hdr_first_de.exit202_crit_edge

if.end74.hdr_first_de.exit202_crit_edge:          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit202

lor.lhs.false.i192:                               ; preds = %if.end74
  %total.i190 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %101, i32 0, i32 2, i32 2
  %108 = ptrtoint ptr %total.i190 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %total.i190, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %110)
  %cmp3.not.i191 = icmp ult i32 %104, %110
  br i1 %cmp3.not.i191, label %if.end.i195, label %lor.lhs.false.i192.hdr_first_de.exit202_crit_edge

lor.lhs.false.i192.hdr_first_de.exit202_crit_edge: ; preds = %lor.lhs.false.i192
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit202

if.end.i195:                                      ; preds = %lor.lhs.false.i192
  %size.i193 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i188, i32 0, i32 1
  %111 = ptrtoint ptr %size.i193 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %size.i193, align 4
  %113 = call i16 @llvm.bswap.i16(i16 %112) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %113)
  %cmp4.i194 = icmp ult i16 %113, 16
  br i1 %cmp4.i194, label %if.end.i195.hdr_first_de.exit202_crit_edge, label %lor.lhs.false6.i200

if.end.i195.hdr_first_de.exit202_crit_edge:       ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit202

lor.lhs.false6.i200:                              ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i196 = zext i16 %113 to i32
  %add.i197 = add i32 %104, %conv.i196
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i197, i32 %107)
  %cmp8.i198 = icmp ugt i32 %add.i197, %107
  %spec.select.i199 = select i1 %cmp8.i198, ptr null, ptr %add.ptr.i188
  br label %hdr_first_de.exit202

hdr_first_de.exit202:                             ; preds = %lor.lhs.false6.i200, %if.end.i195.hdr_first_de.exit202_crit_edge, %lor.lhs.false.i192.hdr_first_de.exit202_crit_edge, %if.end74.hdr_first_de.exit202_crit_edge
  %retval.0.i201 = phi ptr [ null, %lor.lhs.false.i192.hdr_first_de.exit202_crit_edge ], [ null, %if.end74.hdr_first_de.exit202_crit_edge ], [ null, %if.end.i195.hdr_first_de.exit202_crit_edge ], [ %spec.select.i199, %lor.lhs.false6.i200 ]
  %114 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %115)
  %cmp1.i = icmp ugt i32 %115, 19
  br i1 %cmp1.i, label %hdr_first_de.exit202.fnd_push.exit_crit_edge, label %if.end.i205

hdr_first_de.exit202.fnd_push.exit_crit_edge:     ; preds = %hdr_first_de.exit202
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit

if.end.i205:                                      ; preds = %hdr_first_de.exit202
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i203 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %115
  %116 = ptrtoint ptr %arrayidx.i203 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %99, ptr %arrayidx.i203, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %115
  %117 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %retval.0.i201, ptr %arrayidx2.i, align 4
  %118 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fnd, align 4
  %add.i204 = add i32 %119, 1
  store i32 %add.i204, ptr %fnd, align 4
  br label %fnd_push.exit

fnd_push.exit:                                    ; preds = %if.end.i205, %hdr_first_de.exit202.fnd_push.exit_crit_edge
  %tobool79.not = icmp eq ptr %retval.0.i201, null
  br i1 %tobool79.not, label %fnd_push.exit.cleanup_crit_edge, label %fnd_push.exit.for.cond.preheader_crit_edge

fnd_push.exit.for.cond.preheader_crit_edge:       ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.preheader

fnd_push.exit.cleanup_crit_edge:                  ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ok:                                               ; preds = %land.lhs.true
  %tobool82.not = icmp eq ptr %.ph, null
  br i1 %tobool82.not, label %if.then83, label %if.else86

if.then83:                                        ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #18
  %120 = ptrtoint ptr %e.1 to i32
  %sub85 = sub i32 %120, %31
  br label %if.end99

if.else86:                                        ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #18
  %index87 = getelementptr inbounds %struct.indx_node, ptr %.ph, i32 0, i32 1
  %121 = ptrtoint ptr %index87 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %index87, align 4
  %vbn88 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %vbn88 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %vbn88, align 8
  %125 = call i64 @llvm.bswap.i64(i64 %124)
  %vbn2vbo_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 6
  %126 = ptrtoint ptr %vbn2vbo_bits to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %vbn2vbo_bits, align 2
  %sh_prom = zext i8 %127 to i64
  %shl90 = shl i64 %125, %sh_prom
  %128 = ptrtoint ptr %e.1 to i32
  %ihdr94 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %122, i32 0, i32 2
  %129 = ptrtoint ptr %ihdr94 to i32
  %130 = trunc i64 %shl90 to i32
  %131 = add i32 %5, %128
  %sub95 = sub i32 %131, %129
  %conv98 = add i32 %sub95, %130
  br label %if.end99

if.end99:                                         ; preds = %if.else86, %if.then83
  %storemerge = phi i32 [ %sub85, %if.then83 ], [ %conv98, %if.else86 ]
  %132 = ptrtoint ptr %off to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %storemerge, ptr %off, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end99, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end57.cleanup.sink.split_crit_edge
  %e.1.lcssa.sink = phi ptr [ %e.1, %if.end99 ], [ null, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ null, %if.end57.cleanup.sink.split_crit_edge ]
  %133 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %e.1.lcssa.sink, ptr %entry1, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %fnd_push.exit.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %lor.lhs.false.i182.cleanup_crit_edge, %if.end.i175.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %lor.lhs.false.i166.cleanup_crit_edge, %if.end.i161.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else.cleanup_crit_edge ], [ %call71, %if.end67.cleanup_crit_edge ], [ -22, %fnd_push.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %lor.lhs.false6.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %if.then39.cleanup_crit_edge ], [ -22, %if.end.i175.cleanup_crit_edge ], [ -22, %lor.lhs.false.i182.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ -22, %if.end.i161.cleanup_crit_edge ], [ -22, %lor.lhs.false.i166.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_insert_entry(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %ctx, ptr noundef %fnd, i1 noundef zeroext %undo) local_unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %diff = alloca i32, align 4
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #16
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #16
  %tobool.not = icmp eq ptr %fnd, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 168) #19
  %tobool1.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not, label %if.then.out1_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then.out1_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %out1

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %fnd.addr.0 = phi ptr [ %fnd, %entry.if.end3_crit_edge ], [ %call7.i.i.i, %if.then.if.end3_crit_edge ]
  %fnd_a.0 = phi ptr [ null, %entry.if.end3_crit_edge ], [ %call7.i.i.i, %if.then.if.end3_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %2 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %le.i, align 4
  %type.i = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i, i32 1
  %7 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1879048192, ptr noundef %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef null) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end3.indx_get_root.exit.thread_crit_edge, label %if.end.i

if.end3.indx_get_root.exit.thread_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i:                                         ; preds = %if.end3
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.indx_get_root.exit.thread_crit_edge

if.end.i.indx_get_root.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i.i, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12) #16
  %14 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data_off.i.i, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16) #16
  %conv.i.i = zext i16 %17 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %13, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.indx_get_root.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.indx_get_root.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %14, align 8
  %20 = call i32 @llvm.bswap.i32(i32 %19) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp4.i.i = icmp ult i32 %20, 32
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  br i1 %cmp4.i.i, label %if.end3.i.i.indx_get_root.exit.thread_crit_edge, label %indx_get_root.exit

if.end3.i.i.indx_get_root.exit.thread_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

indx_get_root.exit.thread:                        ; preds = %if.end3.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.indx_get_root.exit.thread_crit_edge, %if.end3.indx_get_root.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %out

indx_get_root.exit:                               ; preds = %if.end3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  %tobool5.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool5.not, label %indx_get_root.exit.out_crit_edge, label %if.end7

indx_get_root.exit.out_crit_edge:                 ; preds = %indx_get_root.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %indx_get_root.exit
  %21 = ptrtoint ptr %fnd.addr.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fnd.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i54 = icmp eq i32 %22, 0
  %sub.i = add i32 %22, -1
  %arrayidx.i55 = getelementptr %struct.ntfs_fnd, ptr %fnd.addr.0, i32 0, i32 2, i32 %sub.i
  %root_de.i = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd.addr.0, i32 0, i32 3
  %retval.0.in.in.i = select i1 %tobool.not.i54, ptr %root_de.i, ptr %arrayidx.i55
  %23 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.in.i = load ptr, ptr %retval.0.in.in.i, align 4
  %retval.0.i56 = icmp eq ptr %retval.0.in.i, null
  br i1 %retval.0.i56, label %if.then9, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.then9:                                         ; preds = %if.end7
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %new_de, i32 1
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 2
  %24 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %key_size, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %conv = zext i16 %26 to i32
  %call10 = call i32 @indx_find(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %add.ptr.i.i, ptr noundef %add.ptr, i32 noundef %conv, ptr noundef %ctx, ptr noundef nonnull %diff, ptr noundef nonnull %e, ptr noundef nonnull %fnd.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end13:                                         ; preds = %if.then9
  %27 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.end13.out_crit_edge, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end17:                                         ; preds = %if.end13.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %29 = ptrtoint ptr %fnd.addr.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fnd.addr.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool18.not = icmp eq i32 %30, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %root_de.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root_de.i, align 4
  %call21 = call fastcc i32 @indx_insert_into_root(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %32, ptr noundef %ctx, ptr noundef nonnull %fnd.addr.0, i1 noundef zeroext %undo)
  br label %out

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %30, -1
  %call26 = call fastcc i32 @indx_insert_into_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %ctx, i32 noundef %sub, ptr noundef nonnull %fnd.addr.0)
  br label %out

out:                                              ; preds = %if.else, %if.then19, %if.end13.out_crit_edge, %if.then9.out_crit_edge, %indx_get_root.exit.out_crit_edge, %indx_get_root.exit.thread
  %err.0 = phi i32 [ %call10, %if.then9.out_crit_edge ], [ %call26, %if.else ], [ %call21, %if.then19 ], [ -22, %indx_get_root.exit.out_crit_edge ], [ -17, %if.end13.out_crit_edge ], [ -22, %indx_get_root.exit.thread ]
  %tobool.not.i57 = icmp eq ptr %fnd_a.0, null
  br i1 %tobool.not.i57, label %out.out1_crit_edge, label %if.then.i

out.out1_crit_edge:                               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %out1

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @fnd_clear(ptr noundef nonnull %fnd_a.0) #16
  call void @kfree(ptr noundef nonnull %fnd_a.0) #16
  br label %out1

out1:                                             ; preds = %if.then.i, %out.out1_crit_edge, %if.then.out1_crit_edge
  %err.1 = phi i32 [ -12, %if.then.out1_crit_edge ], [ %err.0, %out.out1_crit_edge ], [ %err.0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #16
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indx_insert_into_root(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %root_de, ptr noundef %ctx, ptr noundef %fnd, i1 noundef zeroext %undo) unnamed_addr #0 align 64 {
entry:
  %le.i311 = alloca ptr, align 4
  %bitmap.i = alloca ptr, align 4
  %alloc.i = alloca ptr, align 4
  %alen.i = alloca i32, align 4
  %run.i = alloca %struct.runs_tree, align 4
  %diff.i = alloca i32, align 4
  %le.i = alloca ptr, align 4
  %mi = alloca ptr, align 4
  %new_vbn = alloca i32, align 4
  %t_vbn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #16
  %0 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_vbn) #16
  %1 = ptrtoint ptr %new_vbn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %new_vbn, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t_vbn) #16
  %2 = ptrtoint ptr %t_vbn to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %t_vbn, align 8, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %3 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %le.i, align 4
  %type.i = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %5 to i32
  %arrayidx.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i, i32 1
  %8 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1879048192, ptr noundef %7, i8 noundef zeroext %9, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.indx_get_root.exit.thread_crit_edge, label %if.end.i

entry.indx_get_root.exit.thread_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i:                                         ; preds = %entry
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.indx_get_root.exit.thread_crit_edge

if.end.i.indx_get_root.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #16
  %15 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_off.i.i, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17) #16
  %conv.i.i = zext i16 %18 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %14, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.indx_get_root.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.indx_get_root.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %15, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp4.i.i = icmp ult i32 %21, 32
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  br i1 %cmp4.i.i, label %if.end3.i.i.indx_get_root.exit.thread_crit_edge, label %indx_get_root.exit

if.end3.i.i.indx_get_root.exit.thread_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

indx_get_root.exit.thread:                        ; preds = %if.end3.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.indx_get_root.exit.thread_crit_edge, %entry.indx_get_root.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %cleanup

indx_get_root.exit:                               ; preds = %if.end3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %indx_get_root.exit.cleanup_crit_edge, label %if.end

indx_get_root.exit.cleanup_crit_edge:             ; preds = %indx_get_root.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %indx_get_root.exit
  %ihdr = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 0, i32 5
  %sbi2 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %22 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sbi2, align 4
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %25)
  %used = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %used, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %total = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %total, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.i.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %15, align 8
  %38 = call i32 @llvm.bswap.i32(i32 %37)
  %conv = zext i16 %26 to i32
  %add = add i32 %29, %conv
  %sub = sub i32 %add, %32
  br i1 %undo, label %if.end.land.lhs.true_crit_edge, label %lor.lhs.false

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end
  %add6 = add i32 %35, %sub
  %max_bytes_per_attr = getelementptr inbounds %struct.ntfs_sb_info, ptr %23, i32 0, i32 16
  %39 = ptrtoint ptr %max_bytes_per_attr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_bytes_per_attr, align 8
  %conv7 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add6, i32 %conv7)
  %cmp = icmp ult i32 %add6, %conv7
  br i1 %cmp, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %41 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mi, align 4
  %call9 = call zeroext i1 @mi_resize_attr(ptr noundef %42, ptr noundef nonnull %call.i, i32 noundef %sub) #16
  br i1 %call9, label %if.then11, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then11:                                        ; preds = %land.lhs.true
  %43 = call i32 @llvm.bswap.i32(i32 %add)
  %44 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %total, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #16
  %45 = ptrtoint ptr %root_de to i32
  %46 = ptrtoint ptr %ihdr to i32
  %sub.i = sub i32 %45, %46
  %used1.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 1
  %47 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %used1.i, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #16
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %size, align 4
  %52 = call i16 @llvm.bswap.i16(i16 %51) #16
  %conv.i = zext i16 %52 to i32
  %add.i = add i32 %49, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add)
  %cmp.i = icmp ugt i32 %add.i, %add
  br i1 %cmp.i, label %if.then11.do.end_crit_edge, label %if.end.i256

if.then11.do.end_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end.i256:                                      ; preds = %if.then11
  %tobool.not.i255 = icmp eq ptr %root_de, null
  br i1 %tobool.not.i255, label %if.end17.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %49)
  %cmp5.not.i = icmp ult i32 %sub.i, %49
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.then4.i.do.end_crit_edge

if.then4.i.do.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %53 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ihdr, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %55)
  %cmp7.i = icmp ult i32 %sub.i, %55
  br i1 %cmp7.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %size10.i = getelementptr inbounds %struct.NTFS_DE, ptr %root_de, i32 0, i32 1
  %56 = ptrtoint ptr %size10.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %size10.i, align 4
  %58 = call i16 @llvm.bswap.i16(i16 %57) #16
  %conv11.i = zext i16 %58 to i32
  %add12.i = add i32 %sub.i, %conv11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %add)
  %cmp13.i = icmp ugt i32 %add12.i, %add
  br i1 %cmp13.i, label %lor.lhs.false9.i.do.end_crit_edge, label %lor.lhs.false9.i.hdr_insert_de.exit_crit_edge

lor.lhs.false9.i.hdr_insert_de.exit_crit_edge:    ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_de.exit

lor.lhs.false9.i.do.end_crit_edge:                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end17.i:                                       ; preds = %if.end.i256
  %add.ptr.i = getelementptr %struct.NTFS_DE, ptr %new_de, i32 1
  %key_size.i = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 2
  %59 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %key_size.i, align 2
  %61 = call i16 @llvm.bswap.i16(i16 %60) #16
  %conv18.i = zext i16 %61 to i32
  %call.i257 = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %ihdr, ptr noundef %add.ptr.i, i32 noundef %conv18.i, ptr noundef %ctx, ptr noundef nonnull %diff.i) #16
  %tobool19.not.i = icmp eq ptr %call.i257, null
  br i1 %tobool19.not.i, label %if.end17.i.do.end_crit_edge, label %if.end21.i

if.end17.i.do.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %62 = ptrtoint ptr %call.i257 to i32
  %sub22.i = sub i32 %62, %46
  br label %hdr_insert_de.exit

hdr_insert_de.exit:                               ; preds = %if.end21.i, %lor.lhs.false9.i.hdr_insert_de.exit_crit_edge
  %before.addr.0.i = phi ptr [ %root_de, %lor.lhs.false9.i.hdr_insert_de.exit_crit_edge ], [ %call.i257, %if.end21.i ]
  %off.0.i = phi i32 [ %sub.i, %lor.lhs.false9.i.hdr_insert_de.exit_crit_edge ], [ %sub22.i, %if.end21.i ]
  %add.ptr24.i = getelementptr i8, ptr %before.addr.0.i, i32 %conv.i
  %sub25.i = sub i32 %49, %off.0.i
  %63 = call ptr @memmove(ptr %add.ptr24.i, ptr %before.addr.0.i, i32 %sub25.i)
  %64 = call i32 @llvm.bswap.i32(i32 %add.i) #16
  %65 = ptrtoint ptr %used1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %used1.i, align 4
  %66 = call ptr @memcpy(ptr %before.addr.0.i, ptr %new_de, i32 %conv.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #16
  br label %if.end31

do.end:                                           ; preds = %if.end17.i.do.end_crit_edge, %lor.lhs.false9.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %if.then4.i.do.end_crit_edge, %if.then11.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1514, i32 noundef 9, ptr noundef null) #16
  br label %if.end31

if.end31:                                         ; preds = %do.end, %hdr_insert_de.exit
  %retval.0.i258352 = phi ptr [ null, %do.end ], [ %before.addr.0.i, %hdr_insert_de.exit ]
  call void @fnd_clear(ptr noundef %fnd)
  %root_de38 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %67 = ptrtoint ptr %root_de38 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i258352, ptr %root_de38, align 4
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %call40 = call ptr @kmemdup(ptr noundef nonnull %call.i, i32 noundef %35, i32 noundef 3136) #16
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %68 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ihdr, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69) #16
  %used2.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 1
  %71 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %used2.i, align 4
  %73 = call i32 @llvm.bswap.i32(i32 %72) #16
  %add.ptr.i259 = getelementptr i8, ptr %ihdr, i32 %70
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %73)
  %cmp.not.i = icmp ult i32 %70, %73
  br i1 %cmp.not.i, label %lor.lhs.false.i260, label %if.end43.out_free_root_crit_edge

if.end43.out_free_root_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

lor.lhs.false.i260:                               ; preds = %if.end43
  %total.i = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 2
  %74 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %total.i, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %76)
  %cmp3.not.i = icmp ult i32 %70, %76
  br i1 %cmp3.not.i, label %if.end.i262, label %lor.lhs.false.i260.out_free_root_crit_edge

lor.lhs.false.i260.out_free_root_crit_edge:       ; preds = %lor.lhs.false.i260
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

if.end.i262:                                      ; preds = %lor.lhs.false.i260
  %size.i261 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i259, i32 0, i32 1
  %77 = ptrtoint ptr %size.i261 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %size.i261, align 4
  %79 = call i16 @llvm.bswap.i16(i16 %78) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %79)
  %cmp4.i = icmp ult i16 %79, 16
  br i1 %cmp4.i, label %if.end.i262.out_free_root_crit_edge, label %lor.lhs.false6.i

if.end.i262.out_free_root_crit_edge:              ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

lor.lhs.false6.i:                                 ; preds = %if.end.i262
  %conv.i263 = zext i16 %79 to i32
  %add.i264 = add i32 %70, %conv.i263
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i264, i32 %73)
  %cmp8.i = icmp ugt i32 %add.i264, %73
  %tobool45.not360 = icmp eq ptr %add.ptr.i259, null
  %or.cond = select i1 %cmp8.i, i1 true, i1 %tobool45.not360
  br i1 %or.cond, label %lor.lhs.false6.i.out_free_root_crit_edge, label %if.end47.lr.ph

lor.lhs.false6.i.out_free_root_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

if.end47.lr.ph:                                   ; preds = %lor.lhs.false6.i
  %80 = ptrtoint ptr %ihdr to i32
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false.i275.if.end47_crit_edge, %if.end47.lr.ph
  %to_move.0362 = phi i32 [ 0, %if.end47.lr.ph ], [ %add53, %lor.lhs.false.i275.if.end47_crit_edge ]
  %e.0361 = phi ptr [ %add.ptr.i259, %if.end47.lr.ph ], [ %add.ptr.i273, %lor.lhs.false.i275.if.end47_crit_edge ]
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.0361, i32 0, i32 3
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags.i, align 4
  %83 = and i16 %82, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.i.not = icmp eq i16 %83, 0
  br i1 %tobool.i.not, label %if.end50, label %for.end

if.end50:                                         ; preds = %if.end47
  %size51 = getelementptr inbounds %struct.NTFS_DE, ptr %e.0361, i32 0, i32 1
  %84 = ptrtoint ptr %size51 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %size51, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85)
  %87 = ptrtoint ptr %e.0361 to i32
  %sub.i266 = sub i32 %87, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i266, i32 %73)
  %cmp.not.i268 = icmp uge i32 %sub.i266, %73
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %86)
  %cmp2.i = icmp ult i16 %86, 16
  %or.cond374 = select i1 %cmp.not.i268, i1 true, i1 %cmp2.i
  br i1 %or.cond374, label %if.end50.out_free_root_crit_edge, label %lor.lhs.false.i275

if.end50.out_free_root_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

lor.lhs.false.i275:                               ; preds = %if.end50
  %conv52 = zext i16 %86 to i32
  %add53 = add i32 %to_move.0362, %conv52
  %add.i272 = add i32 %sub.i266, 16
  %add5.i = add i32 %add.i272, %conv52
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %73)
  %cmp6.i = icmp ugt i32 %add5.i, %73
  %add.ptr.i273 = getelementptr i8, ptr %e.0361, i32 %conv52
  %tobool45.not = icmp eq ptr %add.ptr.i273, null
  %or.cond375 = select i1 %cmp6.i, i1 true, i1 %tobool45.not
  br i1 %or.cond375, label %lor.lhs.false.i275.out_free_root_crit_edge, label %lor.lhs.false.i275.if.end47_crit_edge

lor.lhs.false.i275.if.end47_crit_edge:            ; preds = %lor.lhs.false.i275
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end47

lor.lhs.false.i275.out_free_root_crit_edge:       ; preds = %lor.lhs.false.i275
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

for.end:                                          ; preds = %if.end47
  %flags.i.le = getelementptr inbounds %struct.NTFS_DE, ptr %e.0361, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_move.0362)
  %tobool55.not = icmp eq i32 %to_move.0362, 0
  br i1 %tobool55.not, label %for.end.if.end61_crit_edge, label %if.else

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.else:                                          ; preds = %for.end
  %call57 = call ptr @kmemdup(ptr noundef nonnull %add.ptr.i259, i32 noundef %to_move.0362, i32 noundef 3136) #16
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.else.out_free_root_crit_edge, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.else.out_free_root_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_root

if.end61:                                         ; preds = %if.else.if.end61_crit_edge, %for.end.if.end61_crit_edge
  %re.0 = phi ptr [ %call57, %if.else.if.end61_crit_edge ], [ null, %for.end.if.end61_crit_edge ]
  %88 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags.i.le, align 4
  %90 = and i16 %89, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.i278.not = icmp eq i16 %90, 0
  br i1 %tobool.i278.not, label %if.end61.if.end65_crit_edge, label %if.then63

if.end61.if.end65_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end65

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  %size.i279 = getelementptr inbounds %struct.NTFS_DE, ptr %e.0361, i32 0, i32 1
  %91 = ptrtoint ptr %size.i279 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %size.i279, align 4
  %93 = call i16 @llvm.bswap.i16(i16 %92) #16
  %conv.i280 = zext i16 %93 to i32
  %sub.i281 = add nsw i32 %conv.i280, -8
  %add.ptr.i282 = getelementptr i8, ptr %e.0361, i32 %sub.i281
  %94 = ptrtoint ptr %add.ptr.i282 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %add.ptr.i282, align 8
  %96 = ptrtoint ptr %t_vbn to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %t_vbn, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end61.if.end65_crit_edge
  %sub_vbn.0 = phi ptr [ %t_vbn, %if.then63 ], [ null, %if.end61.if.end65_crit_edge ]
  %sub66.neg = add i32 %38, -56
  %sub66 = sub i32 56, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub66)
  %cmp67 = icmp sgt i32 %sub66, 0
  br i1 %cmp67, label %land.lhs.true69, label %if.end65.if.end76_crit_edge

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

land.lhs.true69:                                  ; preds = %if.end65
  %add70 = add i32 %sub66, %35
  %max_bytes_per_attr71 = getelementptr inbounds %struct.ntfs_sb_info, ptr %23, i32 0, i32 16
  %97 = ptrtoint ptr %max_bytes_per_attr71 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %max_bytes_per_attr71, align 8
  %conv72 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add70, i32 %conv72)
  %cmp73 = icmp ugt i32 %add70, %conv72
  br i1 %cmp73, label %land.lhs.true69.out_free_re_crit_edge, label %land.lhs.true69.if.end76_crit_edge

land.lhs.true69.if.end76_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end76

land.lhs.true69.out_free_re_crit_edge:            ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_free_re

if.end76:                                         ; preds = %land.lhs.true69.if.end76_crit_edge, %if.end65.if.end76_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 939524096, i32 %37)
  %tobool77.not = icmp eq i32 %37, 939524096
  br i1 %tobool77.not, label %if.end76.if.end80_crit_edge, label %if.then78

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #18
  %99 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mi, align 4
  %call79 = call zeroext i1 @mi_resize_attr(ptr noundef %100, ptr noundef nonnull %call.i, i32 noundef %sub66) #16
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end76.if.end80_crit_edge
  %add.ptr = getelementptr %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 1
  %101 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  %size81 = getelementptr %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 1, i32 2
  %102 = ptrtoint ptr %size81 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 6144, ptr %size81, align 4
  %flags = getelementptr %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 1, i32 3
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 768, ptr %flags, align 4
  %flags82 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 0, i32 5, i32 3
  %104 = ptrtoint ptr %flags82 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %flags82, align 4
  %105 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 671088640, ptr %total, align 4
  %106 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 671088640, ptr %used, align 4
  %107 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ihdr, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #16
  %add.ptr.i284 = getelementptr i8, ptr %ihdr, i32 %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %109)
  %cmp.not.i285 = icmp ult i32 %109, 40
  br i1 %cmp.not.i285, label %lor.lhs.false.i288, label %if.end80.hdr_first_de.exit298_crit_edge

if.end80.hdr_first_de.exit298_crit_edge:          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit298

lor.lhs.false.i288:                               ; preds = %if.end80
  %total.i286 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr, i32 0, i32 2
  %110 = ptrtoint ptr %total.i286 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %total.i286, align 4
  %112 = call i32 @llvm.bswap.i32(i32 %111) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %112)
  %cmp3.not.i287 = icmp ult i32 %109, %112
  br i1 %cmp3.not.i287, label %if.end.i291, label %lor.lhs.false.i288.hdr_first_de.exit298_crit_edge

lor.lhs.false.i288.hdr_first_de.exit298_crit_edge: ; preds = %lor.lhs.false.i288
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit298

if.end.i291:                                      ; preds = %lor.lhs.false.i288
  %size.i289 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i284, i32 0, i32 1
  %113 = ptrtoint ptr %size.i289 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %size.i289, align 4
  %115 = call i16 @llvm.bswap.i16(i16 %114) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %115)
  %cmp4.i290 = icmp ult i16 %115, 16
  br i1 %cmp4.i290, label %if.end.i291.hdr_first_de.exit298_crit_edge, label %lor.lhs.false6.i296

if.end.i291.hdr_first_de.exit298_crit_edge:       ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit298

lor.lhs.false6.i296:                              ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i292 = zext i16 %115 to i32
  %add.i293 = add nuw nsw i32 %109, %conv.i292
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add.i293)
  %cmp8.i294 = icmp ugt i32 %add.i293, 40
  %spec.select.i295 = select i1 %cmp8.i294, ptr null, ptr %add.ptr.i284
  br label %hdr_first_de.exit298

hdr_first_de.exit298:                             ; preds = %lor.lhs.false6.i296, %if.end.i291.hdr_first_de.exit298_crit_edge, %lor.lhs.false.i288.hdr_first_de.exit298_crit_edge, %if.end80.hdr_first_de.exit298_crit_edge
  %retval.0.i297 = phi ptr [ null, %lor.lhs.false.i288.hdr_first_de.exit298_crit_edge ], [ null, %if.end80.hdr_first_de.exit298_crit_edge ], [ null, %if.end.i291.hdr_first_de.exit298_crit_edge ], [ %spec.select.i295, %lor.lhs.false6.i296 ]
  %root_de87 = getelementptr inbounds %struct.ntfs_fnd, ptr %fnd, i32 0, i32 3
  %116 = ptrtoint ptr %root_de87 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %retval.0.i297, ptr %root_de87, align 4
  %117 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %dirty, align 4
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %count.i = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1, i32 1
  %120 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i299 = icmp eq i32 %121, 0
  br i1 %tobool.not.i299, label %cond.true, label %cond.false

cond.true:                                        ; preds = %hdr_first_de.exit298
  %122 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sbi2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.i) #16
  %124 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr inttoptr (i32 -1 to ptr), ptr %bitmap.i, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alloc.i) #16
  %125 = ptrtoint ptr %alloc.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr inttoptr (i32 -1 to ptr), ptr %alloc.i, align 4, !annotation !20
  %index_bits.i = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %126 = ptrtoint ptr %index_bits.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %index_bits.i, align 4
  %conv.i300 = zext i8 %127 to i32
  %shl.i = shl nuw i32 1, %conv.i300
  %conv2.i = zext i32 %shl.i to i64
  %cluster_mask.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %123, i32 0, i32 4
  %128 = ptrtoint ptr %cluster_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %cluster_mask.i.i, align 4
  %conv.i.i301 = zext i32 %129 to i64
  %add.i.i302 = add nuw nsw i64 %conv2.i, %conv.i.i301
  %cluster_mask_inv.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %123, i32 0, i32 5
  %130 = ptrtoint ptr %cluster_mask_inv.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %cluster_mask_inv.i.i, align 8
  %and.i.i = and i64 %add.i.i302, %131
  %conv3.i = trunc i64 %and.i.i to i32
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %123, i32 0, i32 10
  %132 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cluster_bits.i, align 8
  %conv4.i = zext i8 %133 to i32
  %shr.i = lshr i32 %conv3.i, %conv4.i
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %type.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen.i) #16
  %136 = ptrtoint ptr %alen.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %alen.i, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %run.i) #16
  %137 = getelementptr inbounds %struct.runs_tree, ptr %run.i, i32 0, i32 1
  %138 = getelementptr inbounds %struct.runs_tree, ptr %run.i, i32 0, i32 2
  %139 = ptrtoint ptr %run.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %run.i, align 4
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %137, align 4
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %138, align 4
  %call5.i = call i32 @attr_allocate_clusters(ptr noundef %123, ptr noundef nonnull %run.i, i32 noundef 0, i32 noundef 0, i32 noundef %shr.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %alen.i, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i304 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i304, label %if.end.i308, label %cond.true.indx_create_allocate.exit_crit_edge

cond.true.indx_create_allocate.exit_crit_edge:    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_create_allocate.exit

if.end.i308:                                      ; preds = %cond.true
  %idxprom.i305 = zext i8 %135 to i32
  %arrayidx.i306 = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i305
  %142 = ptrtoint ptr %arrayidx.i306 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i306, align 4
  %name_len.i307 = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i305, i32 1
  %144 = ptrtoint ptr %name_len.i307 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %name_len.i307, align 4
  %call6.i = call i32 @ni_insert_nonresident(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %143, i8 noundef zeroext %145, ptr noundef nonnull %run.i, i32 noundef 0, i32 noundef %shr.i, i16 noundef zeroext 0, ptr noundef nonnull %alloc.i, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i308.out1.i_crit_edge

if.end.i308.out1.i_crit_edge:                     ; preds = %if.end.i308
  call void @__sanitizer_cov_trace_pc() #18
  br label %out1.i

if.end9.i:                                        ; preds = %if.end.i308
  %146 = call i64 @llvm.bswap.i64(i64 %conv2.i) #16
  %147 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %alloc.i, align 4
  %data_size11.i = getelementptr inbounds %struct.ATTRIB, ptr %148, i32 0, i32 7, i32 0, i32 6
  %149 = ptrtoint ptr %data_size11.i to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %146, ptr %data_size11.i, align 8
  %valid_size.i = getelementptr inbounds %struct.ATTRIB, ptr %148, i32 0, i32 7, i32 0, i32 7
  %150 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %146, ptr %valid_size.i, align 8
  %call15.i = call i32 @ni_insert_resident(ptr noundef %ni, i32 noundef 8, i32 noundef -1342177280, ptr noundef %143, i8 noundef zeroext %145, ptr noundef nonnull %bitmap.i, ptr noundef null, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %out2.i

if.end18.i:                                       ; preds = %if.end9.i
  %cmp.i309 = icmp eq ptr %143, @I30_NAME
  br i1 %cmp.i309, label %if.then21.i, label %if.end18.i.if.end25.i_crit_edge

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #18
  %vfs_inode.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_size.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 14
  %151 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %conv2.i, ptr %i_size.i, align 8
  %conv24.i = and i64 %and.i.i, 4294967295
  call void @inode_set_bytes(ptr noundef %vfs_inode.i, i64 noundef %conv24.i) #16
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end25.i_crit_edge
  %152 = call ptr @memcpy(ptr %alloc_run, ptr %run.i, i32 12)
  %153 = ptrtoint ptr %new_vbn to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %new_vbn, align 4
  br label %indx_create_allocate.exit

out2.i:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  %154 = ptrtoint ptr %alloc.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %alloc.i, align 4
  %call27.i = call zeroext i1 @mi_remove_attr(ptr noundef null, ptr noundef %ni, ptr noundef %155) #16
  br label %out1.i

out1.i:                                           ; preds = %out2.i, %if.end.i308.out1.i_crit_edge
  %err.0.i = phi i32 [ %call6.i, %if.end.i308.out1.i_crit_edge ], [ %call15.i, %out2.i ]
  %call28.i = call i32 @run_deallocate(ptr noundef %123, ptr noundef nonnull %run.i, i1 noundef zeroext false) #16
  br label %indx_create_allocate.exit

indx_create_allocate.exit:                        ; preds = %out1.i, %if.end25.i, %cond.true.indx_create_allocate.exit_crit_edge
  %retval.0.i310 = phi i32 [ 0, %if.end25.i ], [ %call5.i, %cond.true.indx_create_allocate.exit_crit_edge ], [ %err.0.i, %out1.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %run.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alloc.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.i) #16
  br label %cond.end

cond.false:                                       ; preds = %hdr_first_de.exit298
  call void @__sanitizer_cov_trace_pc() #18
  %call91 = call fastcc i32 @indx_add_allocate(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %new_vbn)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %indx_create_allocate.exit
  %cond = phi i32 [ %retval.0.i310, %indx_create_allocate.exit ], [ %call91, %cond.false ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i311) #16
  %156 = ptrtoint ptr %le.i311 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %le.i311, align 4
  %157 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %type.i, align 1
  %idxprom.i313 = zext i8 %158 to i32
  %arrayidx.i314 = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i313
  %159 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i314, align 4
  %name_len.i315 = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i313, i32 1
  %161 = ptrtoint ptr %name_len.i315 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %name_len.i315, align 4
  %call.i316 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i311, i32 noundef -1879048192, ptr noundef %160, i8 noundef zeroext %162, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool.not.i317 = icmp eq ptr %call.i316, null
  br i1 %tobool.not.i317, label %cond.end.indx_get_root.exit332.thread_crit_edge, label %if.end.i318

cond.end.indx_get_root.exit332.thread_crit_edge:  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit332.thread

if.end.i318:                                      ; preds = %cond.end
  %non_res.i.i319 = getelementptr inbounds %struct.ATTRIB, ptr %call.i316, i32 0, i32 2
  %163 = ptrtoint ptr %non_res.i.i319 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %non_res.i.i319, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i.i320 = icmp eq i8 %164, 0
  br i1 %tobool.not.i.i320, label %if.end.i.i326, label %if.end.i318.indx_get_root.exit332.thread_crit_edge

if.end.i318.indx_get_root.exit332.thread_crit_edge: ; preds = %if.end.i318
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit332.thread

if.end.i.i326:                                    ; preds = %if.end.i318
  %size.i.i321 = getelementptr inbounds %struct.ATTRIB, ptr %call.i316, i32 0, i32 1
  %165 = ptrtoint ptr %size.i.i321 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %size.i.i321, align 4
  %167 = call i32 @llvm.bswap.i32(i32 %166) #16
  %168 = getelementptr inbounds %struct.ATTRIB, ptr %call.i316, i32 0, i32 7
  %data_off.i.i322 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %data_off.i.i322 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %data_off.i.i322, align 4
  %171 = call i16 @llvm.bswap.i16(i16 %170) #16
  %conv.i.i323 = zext i16 %171 to i32
  %add.i.i324 = add nuw nsw i32 %conv.i.i323, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %add.i.i324)
  %cmp.i.i325 = icmp ult i32 %167, %add.i.i324
  br i1 %cmp.i.i325, label %if.end.i.i326.indx_get_root.exit332.thread_crit_edge, label %if.end3.i.i330

if.end.i.i326.indx_get_root.exit332.thread_crit_edge: ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit332.thread

if.end3.i.i330:                                   ; preds = %if.end.i.i326
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %168, align 8
  %174 = call i32 @llvm.bswap.i32(i32 %173) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %174)
  %cmp4.i.i327 = icmp ult i32 %174, 32
  %add.ptr.i.i328 = getelementptr i8, ptr %call.i316, i32 %conv.i.i323
  br i1 %cmp4.i.i327, label %if.end3.i.i330.indx_get_root.exit332.thread_crit_edge, label %indx_get_root.exit332

if.end3.i.i330.indx_get_root.exit332.thread_crit_edge: ; preds = %if.end3.i.i330
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit332.thread

indx_get_root.exit332.thread:                     ; preds = %if.end3.i.i330.indx_get_root.exit332.thread_crit_edge, %if.end.i.i326.indx_get_root.exit332.thread_crit_edge, %if.end.i318.indx_get_root.exit332.thread_crit_edge, %cond.end.indx_get_root.exit332.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i311) #16
  br label %if.then94

indx_get_root.exit332:                            ; preds = %if.end3.i.i330
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i311) #16
  %tobool93.not = icmp eq ptr %add.ptr.i.i328, null
  br i1 %tobool93.not, label %indx_get_root.exit332.if.then94_crit_edge, label %if.end96

indx_get_root.exit332.if.then94_crit_edge:        ; preds = %indx_get_root.exit332
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then94

if.then94:                                        ; preds = %indx_get_root.exit332.if.then94_crit_edge, %indx_get_root.exit332.thread
  %call95 = call i32 @ntfs_set_state(ptr noundef %23, i32 noundef 2) #16
  br label %out_free_re

if.end96:                                         ; preds = %indx_get_root.exit332
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool97.not = icmp eq i32 %cond, 0
  br i1 %tobool97.not, label %if.end105, label %if.then98

if.then98:                                        ; preds = %if.end96
  %175 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mi, align 4
  %call100 = call zeroext i1 @mi_resize_attr(ptr noundef %176, ptr noundef nonnull %call.i316, i32 noundef %sub66.neg) #16
  br i1 %call100, label %if.then101, label %if.else102

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #18
  %177 = call ptr @memcpy(ptr %call.i316, ptr %call40, i32 %35)
  br label %out_free_re

if.else102:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #18
  %call103 = call i32 @ntfs_set_state(ptr noundef %23, i32 noundef 2) #16
  br label %out_free_re

if.end105:                                        ; preds = %if.end96
  %178 = ptrtoint ptr %new_vbn to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %new_vbn, align 4
  %conv107 = zext i32 %179 to i64
  %180 = call i64 @llvm.bswap.i64(i64 %conv107)
  %add.ptr108 = getelementptr %struct.INDEX_ROOT, ptr %add.ptr.i.i328, i32 1, i32 5
  %181 = ptrtoint ptr %add.ptr108 to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %add.ptr108, align 8
  %182 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mi, align 4
  %dirty109 = getelementptr inbounds %struct.mft_inode, ptr %183, i32 0, i32 5
  %184 = ptrtoint ptr %dirty109 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %dirty109, align 4
  %call110 = call fastcc ptr @indx_new(ptr noundef %indx, ptr noundef %ni, i32 noundef %179, ptr noundef %sub_vbn.0)
  %cmp.i333 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then112, label %if.end114

if.then112:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  %185 = ptrtoint ptr %call110 to i32
  br label %out_free_re

if.end114:                                        ; preds = %if.end105
  %index = getelementptr inbounds %struct.indx_node, ptr %call110, i32 0, i32 1
  %186 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %index, align 4
  %ihdr115 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %187, i32 0, i32 2
  %used116 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %187, i32 0, i32 2, i32 1
  %188 = ptrtoint ptr %used116 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %used116, align 4
  %190 = call i32 @llvm.bswap.i32(i32 %189)
  %total117 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %187, i32 0, i32 2, i32 2
  %191 = ptrtoint ptr %total117 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %total117, align 4
  %193 = call i32 @llvm.bswap.i32(i32 %192)
  call fastcc void @hdr_insert_head(ptr noundef %ihdr115, ptr noundef %re.0, i32 noundef %to_move.0362)
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %194 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %idx2vbn_bits, align 1
  %conv119 = zext i8 %195 to i32
  %shr = lshr i32 %179, %conv119
  call fastcc void @indx_mark_used(ptr noundef %indx, ptr noundef %ni, i32 noundef %shr)
  %add122 = add i32 %190, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add122, i32 %193)
  %cmp123 = icmp ugt i32 %add122, %193
  br i1 %cmp123, label %if.then125, label %if.end129

if.then125:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef %re.0) #16
  %196 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %index, align 4
  %198 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sbi2, align 4
  %call.i334 = call i32 @ntfs_write_bh(ptr noundef %199, ptr noundef %197, ptr noundef %call110, i32 noundef 0) #16
  call fastcc void @put_indx_node(ptr noundef %call110)
  call void @fnd_clear(ptr noundef %fnd)
  %call128 = call i32 @indx_insert_entry(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %ctx, ptr noundef %fnd, i1 noundef zeroext %undo)
  br label %out_free_root

if.end129:                                        ; preds = %if.end114
  %call130 = call fastcc ptr @hdr_insert_de(ptr noundef %indx, ptr noundef %ihdr115, ptr noundef %new_de, ptr noundef null, ptr noundef %ctx)
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.end129.out_put_n_crit_edge, label %if.end133

if.end129.out_put_n_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_put_n

if.end133:                                        ; preds = %if.end129
  %200 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %201)
  %cmp1.i = icmp ugt i32 %201, 19
  br i1 %cmp1.i, label %if.end133.fnd_push.exit_crit_edge, label %if.end.i337

if.end133.fnd_push.exit_crit_edge:                ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit

if.end.i337:                                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i335 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %201
  %202 = ptrtoint ptr %arrayidx.i335 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %call110, ptr %arrayidx.i335, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %201
  %203 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call130, ptr %arrayidx2.i, align 4
  %204 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %fnd, align 4
  %add.i336 = add i32 %205, 1
  store i32 %add.i336, ptr %fnd, align 4
  br label %fnd_push.exit

fnd_push.exit:                                    ; preds = %if.end.i337, %if.end133.fnd_push.exit_crit_edge
  %206 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %index, align 4
  %208 = ptrtoint ptr %sbi2 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sbi2, align 4
  %call.i340 = call i32 @ntfs_write_bh(ptr noundef %209, ptr noundef %207, ptr noundef %call110, i32 noundef 0) #16
  br label %out_put_n

out_put_n:                                        ; preds = %fnd_push.exit, %if.end129.out_put_n_crit_edge
  %err.0 = phi i32 [ 0, %fnd_push.exit ], [ -22, %if.end129.out_put_n_crit_edge ]
  %n.0 = phi ptr [ null, %fnd_push.exit ], [ %call110, %if.end129.out_put_n_crit_edge ]
  call fastcc void @put_indx_node(ptr noundef %n.0)
  br label %out_free_re

out_free_re:                                      ; preds = %out_put_n, %if.then112, %if.else102, %if.then101, %if.then94, %land.lhs.true69.out_free_re_crit_edge
  %err.1 = phi i32 [ %cond, %if.then101 ], [ %cond, %if.else102 ], [ %185, %if.then112 ], [ %err.0, %out_put_n ], [ -22, %if.then94 ], [ -95, %land.lhs.true69.out_free_re_crit_edge ]
  call void @kfree(ptr noundef %re.0) #16
  br label %out_free_root

out_free_root:                                    ; preds = %out_free_re, %if.then125, %if.else.out_free_root_crit_edge, %lor.lhs.false.i275.out_free_root_crit_edge, %if.end50.out_free_root_crit_edge, %lor.lhs.false6.i.out_free_root_crit_edge, %if.end.i262.out_free_root_crit_edge, %lor.lhs.false.i260.out_free_root_crit_edge, %if.end43.out_free_root_crit_edge
  %err.2 = phi i32 [ %err.1, %out_free_re ], [ %call128, %if.then125 ], [ -12, %if.else.out_free_root_crit_edge ], [ -22, %lor.lhs.false.i260.out_free_root_crit_edge ], [ -22, %if.end43.out_free_root_crit_edge ], [ -22, %if.end.i262.out_free_root_crit_edge ], [ -22, %lor.lhs.false6.i.out_free_root_crit_edge ], [ -22, %if.end50.out_free_root_crit_edge ], [ -22, %lor.lhs.false.i275.out_free_root_crit_edge ]
  call void @kfree(ptr noundef nonnull %call40) #16
  br label %cleanup

cleanup:                                          ; preds = %out_free_root, %if.end39.cleanup_crit_edge, %if.end31, %indx_get_root.exit.cleanup_crit_edge, %indx_get_root.exit.thread
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %err.2, %out_free_root ], [ -22, %indx_get_root.exit.cleanup_crit_edge ], [ -12, %if.end39.cleanup_crit_edge ], [ -22, %indx_get_root.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t_vbn) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_vbn) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indx_insert_into_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef %new_de, ptr noundef %ctx, i32 noundef %level, ptr noundef %fnd) unnamed_addr #0 align 64 {
entry:
  %bbuf.i = alloca %struct.bmp_buf, align 8
  %diff.i45 = alloca i32, align 4
  %diff.i = alloca i32, align 4
  %new_vbn = alloca i32, align 4
  %t_vbn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %level
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %index, align 4
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %3, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_vbn) #16
  %4 = ptrtoint ptr %new_vbn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %new_vbn, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t_vbn) #16
  %5 = ptrtoint ptr %t_vbn to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %t_vbn, align 8, !annotation !20
  %6 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fnd, align 4
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx2 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %level
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i) #16
  %10 = ptrtoint ptr %cond to i32
  %11 = ptrtoint ptr %ihdr to i32
  %sub.i = sub i32 %10, %11
  %used1.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used1.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  %total2.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %3, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %total2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total2.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 1
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size.i, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #16
  %conv.i = zext i16 %20 to i32
  %add.i = add i32 %14, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp.i1 = icmp ugt i32 %add.i, %17
  br i1 %cmp.i1, label %cond.end.if.end_crit_edge, label %if.end.i2

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i2:                                        ; preds = %cond.end
  %tobool.not.i = icmp eq ptr %cond, null
  br i1 %tobool.not.i, label %if.end17.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %14)
  %cmp5.not.i = icmp ult i32 %sub.i, %14
  br i1 %cmp5.not.i, label %lor.lhs.false.i, label %if.then4.i.if.end_crit_edge

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then4.i
  %21 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ihdr, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %23)
  %cmp7.i = icmp ult i32 %sub.i, %23
  br i1 %cmp7.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false9.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %size10.i = getelementptr inbounds %struct.NTFS_DE, ptr %cond, i32 0, i32 1
  %24 = ptrtoint ptr %size10.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size10.i, align 4
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #16
  %conv11.i = zext i16 %26 to i32
  %add12.i = add i32 %sub.i, %conv11.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %17)
  %cmp13.i = icmp ugt i32 %add12.i, %17
  br i1 %cmp13.i, label %lor.lhs.false9.i.if.end_crit_edge, label %lor.lhs.false9.i.if.then_crit_edge

lor.lhs.false9.i.if.then_crit_edge:               ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false9.i.if.end_crit_edge:                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end17.i:                                       ; preds = %if.end.i2
  %add.ptr.i = getelementptr %struct.NTFS_DE, ptr %new_de, i32 1
  %key_size.i = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 2
  %27 = ptrtoint ptr %key_size.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %key_size.i, align 2
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #16
  %conv18.i = zext i16 %29 to i32
  %call.i = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %ihdr, ptr noundef %add.ptr.i, i32 noundef %conv18.i, ptr noundef %ctx, ptr noundef nonnull %diff.i) #16
  %tobool19.not.i = icmp eq ptr %call.i, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end_crit_edge, label %if.end21.i

if.end17.i.if.end_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end21.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %call.i to i32
  %sub22.i = sub i32 %30, %11
  br label %if.then

if.then:                                          ; preds = %if.end21.i, %lor.lhs.false9.i.if.then_crit_edge
  %before.addr.0.i = phi ptr [ %cond, %lor.lhs.false9.i.if.then_crit_edge ], [ %call.i, %if.end21.i ]
  %off.0.i = phi i32 [ %sub.i, %lor.lhs.false9.i.if.then_crit_edge ], [ %sub22.i, %if.end21.i ]
  %add.ptr24.i = getelementptr i8, ptr %before.addr.0.i, i32 %conv.i
  %sub25.i = sub i32 %14, %off.0.i
  %31 = call ptr @memmove(ptr %add.ptr24.i, ptr %before.addr.0.i, i32 %sub25.i)
  %32 = tail call i32 @llvm.bswap.i32(i32 %add.i) #16
  %33 = ptrtoint ptr %used1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %used1.i, align 4
  %34 = call ptr @memcpy(ptr %before.addr.0.i, ptr %new_de, i32 %conv.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #16
  %arrayidx4 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %level
  %35 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %before.addr.0.i, ptr %arrayidx4, align 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %index, align 4
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %38 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sbi.i, align 4
  %call.i3 = tail call i32 @ntfs_write_bh(ptr noundef %39, ptr noundef %37, ptr noundef %1, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %if.end17.i.if.end_crit_edge, %lor.lhs.false9.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then4.i.if.end_crit_edge, %cond.end.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i) #16
  %arrayidx484 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %level
  %40 = ptrtoint ptr %arrayidx484 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx484, align 4
  %41 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ihdr, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #16
  %44 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %used1.i, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #16
  %add.ptr.i.i = getelementptr i8, ptr %ihdr, i32 %43
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %46)
  %cmp.not.i.i = icmp ult i32 %43, %46
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end
  %47 = ptrtoint ptr %total2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %total2.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %49)
  %cmp3.not.i.i = icmp ult i32 %43, %49
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %size.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %size.i.i, align 4
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %52)
  %cmp4.i.i = icmp ult i16 %52, 16
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i.i:                               ; preds = %if.end.i.i
  %conv.i.i = zext i16 %52 to i32
  %add.i.i = add i32 %43, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %46)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %46
  br i1 %cmp8.i.i, label %lor.lhs.false6.i.i.cleanup_crit_edge, label %hdr_first_de.exit.i

lor.lhs.false6.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

hdr_first_de.exit.i:                              ; preds = %lor.lhs.false6.i.i
  %shr.i = lshr i32 %46, 1
  %tobool.not.i4 = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i4, label %hdr_first_de.exit.i.cleanup_crit_edge, label %lor.lhs.false.i5

hdr_first_de.exit.i.cleanup_crit_edge:            ; preds = %hdr_first_de.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i5:                                 ; preds = %hdr_first_de.exit.i
  %flags.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %flags.i.i, align 4
  %55 = and i16 %54, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.i.not.i = icmp eq i16 %55, 0
  br i1 %tobool.i.not.i, label %if.end.i8, label %lor.lhs.false.i5.cleanup_crit_edge

lor.lhs.false.i5.cleanup_crit_edge:               ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i8:                                        ; preds = %lor.lhs.false.i5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %shr.i)
  %cmp32.i = icmp ult i32 %add.i.i, %shr.i
  br i1 %cmp32.i, label %for.body.i.preheader, label %if.end.i8.if.end9_crit_edge

if.end.i8.if.end9_crit_edge:                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

for.body.i.preheader:                             ; preds = %if.end.i8
  %add.ptr.i993 = getelementptr i8, ptr %ihdr, i32 %add.i.i
  %flags.i25.i94 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i993, i32 0, i32 3
  %56 = ptrtoint ptr %flags.i25.i94 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags.i25.i94, align 4
  %58 = and i16 %57, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.i26.not.i95 = icmp eq i16 %58, 0
  br i1 %tobool.i26.not.i95, label %for.body.i.preheader.for.inc.i_crit_edge, label %for.body.i.preheader.if.end9_crit_edge

for.body.i.preheader.if.end9_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

for.body.i:                                       ; preds = %for.inc.i
  %add.ptr.i9 = getelementptr i8, ptr %ihdr, i32 %add8.i
  %flags.i25.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i9, i32 0, i32 3
  %59 = ptrtoint ptr %flags.i25.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags.i25.i, align 4
  %61 = and i16 %60, 512
  %tobool.i26.not.i = icmp eq i16 %61, 0
  br i1 %tobool.i26.not.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.hdr_find_split.exit_crit_edge

for.body.i.hdr_find_split.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_find_split.exit

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %add.ptr.i997 = phi ptr [ %add.ptr.i9, %for.body.i.for.inc.i_crit_edge ], [ %add.ptr.i993, %for.body.i.preheader.for.inc.i_crit_edge ]
  %o.033.i96 = phi i32 [ %add8.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i.i, %for.body.i.preheader.for.inc.i_crit_edge ]
  %size6.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i997, i32 0, i32 1
  %62 = ptrtoint ptr %size6.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size6.i, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %63) #16
  %conv7.i = zext i16 %64 to i32
  %add8.i = add i32 %o.033.i96, %conv7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add8.i, i32 %shr.i)
  %cmp.i10 = icmp ult i32 %add8.i, %shr.i
  br i1 %cmp.i10, label %for.body.i, label %for.inc.i.hdr_find_split.exit_crit_edge

for.inc.i.hdr_find_split.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_find_split.exit

hdr_find_split.exit:                              ; preds = %for.inc.i.hdr_find_split.exit_crit_edge, %for.body.i.hdr_find_split.exit_crit_edge
  %tobool7.not = icmp eq ptr %add.ptr.i997, null
  br i1 %tobool7.not, label %hdr_find_split.exit.cleanup_crit_edge, label %hdr_find_split.exit.if.end9_crit_edge

hdr_find_split.exit.if.end9_crit_edge:            ; preds = %hdr_find_split.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

hdr_find_split.exit.cleanup_crit_edge:            ; preds = %hdr_find_split.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %hdr_find_split.exit.if.end9_crit_edge, %for.body.i.preheader.if.end9_crit_edge, %if.end.i8.if.end9_crit_edge
  %retval.2.i91 = phi ptr [ %add.ptr.i997, %hdr_find_split.exit.if.end9_crit_edge ], [ %add.ptr.i.i, %if.end.i8.if.end9_crit_edge ], [ %add.ptr.i.i, %for.body.i.preheader.if.end9_crit_edge ]
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %retval.2.i91, i32 0, i32 1
  %65 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %size, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %66)
  %conv = zext i16 %67 to i32
  %add = add nuw nsw i32 %conv, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #20
  %tobool11.not = icmp eq ptr %call9.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %68 = call ptr @memcpy(ptr %call9.i, ptr %retval.2.i91, i32 %conv)
  %flags = getelementptr inbounds %struct.INDEX_BUFFER, ptr %3, i32 0, i32 2, i32 3
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool15.not = icmp eq i8 %70, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %flags17 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 3
  %71 = ptrtoint ptr %flags17 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags17, align 4
  %73 = or i16 %72, 256
  store i16 %73, ptr %flags17, align 4
  %conv22 = trunc i32 %add to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %size23 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 1
  %75 = ptrtoint ptr %size23 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %size23, align 8
  br label %if.end25

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  %size.i11 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 1
  %76 = ptrtoint ptr %size.i11 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %size.i11, align 8
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #16
  %conv.i12 = zext i16 %78 to i32
  %sub.i13 = add nsw i32 %conv.i12, -8
  %add.ptr.i14 = getelementptr i8, ptr %call9.i, i32 %sub.i13
  %79 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %add.ptr.i14, align 8
  %81 = ptrtoint ptr %t_vbn to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %t_vbn, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  %sub_vbn.0 = phi ptr [ %t_vbn, %if.else ], [ null, %if.then16 ]
  %call26 = call fastcc i32 @indx_add_allocate(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %new_vbn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end29:                                         ; preds = %if.end25
  %82 = ptrtoint ptr %new_vbn to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %new_vbn, align 4
  %call30 = call fastcc ptr @indx_new(ptr noundef %indx, ptr noundef %ni, i32 noundef %83, ptr noundef %sub_vbn.0)
  %cmp.i15 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %84 = ptrtoint ptr %call30 to i32
  br label %out

if.end34:                                         ; preds = %if.end29
  %index35 = getelementptr inbounds %struct.indx_node, ptr %call30, i32 0, i32 1
  %85 = ptrtoint ptr %index35 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %index35, align 4
  %ihdr36 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %86, i32 0, i32 2
  %size.i16 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 1
  %87 = ptrtoint ptr %size.i16 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %size.i16, align 8
  %89 = call i16 @llvm.bswap.i16(i16 %88) #16
  %conv.i17 = zext i16 %89 to i32
  %sub.i18 = add nsw i32 %conv.i17, -8
  %add.ptr.i19 = getelementptr i8, ptr %call9.i, i32 %sub.i18
  %conv1.i = zext i32 %83 to i64
  %90 = call i64 @llvm.bswap.i64(i64 %conv1.i) #16
  %91 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %add.ptr.i19, align 8
  %92 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ihdr, align 4
  %94 = call i32 @llvm.bswap.i32(i32 %93) #16
  %95 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %used1.i, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #16
  %add.ptr.i20 = getelementptr i8, ptr %ihdr, i32 %94
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %97)
  %cmp.not.i = icmp ult i32 %94, %97
  br i1 %cmp.not.i, label %lor.lhs.false.i21, label %if.end34.hdr_first_de.exit_crit_edge

if.end34.hdr_first_de.exit_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

lor.lhs.false.i21:                                ; preds = %if.end34
  %98 = ptrtoint ptr %total2.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %total2.i, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %100)
  %cmp3.not.i = icmp ult i32 %94, %100
  br i1 %cmp3.not.i, label %if.end.i23, label %lor.lhs.false.i21.hdr_first_de.exit_crit_edge

lor.lhs.false.i21.hdr_first_de.exit_crit_edge:    ; preds = %lor.lhs.false.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

if.end.i23:                                       ; preds = %lor.lhs.false.i21
  %size.i22 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i20, i32 0, i32 1
  %101 = ptrtoint ptr %size.i22 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %size.i22, align 4
  %103 = call i16 @llvm.bswap.i16(i16 %102) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %103)
  %cmp4.i = icmp ult i16 %103, 16
  br i1 %cmp4.i, label %if.end.i23.hdr_first_de.exit_crit_edge, label %lor.lhs.false6.i

if.end.i23.hdr_first_de.exit_crit_edge:           ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

lor.lhs.false6.i:                                 ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i24 = zext i16 %103 to i32
  %add.i25 = add i32 %94, %conv.i24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i25, i32 %97)
  %cmp8.i = icmp ugt i32 %add.i25, %97
  %spec.select.i = select i1 %cmp8.i, ptr null, ptr %add.ptr.i20
  br label %hdr_first_de.exit

hdr_first_de.exit:                                ; preds = %lor.lhs.false6.i, %if.end.i23.hdr_first_de.exit_crit_edge, %lor.lhs.false.i21.hdr_first_de.exit_crit_edge, %if.end34.hdr_first_de.exit_crit_edge
  %retval.0.i26 = phi ptr [ null, %lor.lhs.false.i21.hdr_first_de.exit_crit_edge ], [ null, %if.end34.hdr_first_de.exit_crit_edge ], [ null, %if.end.i23.hdr_first_de.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false6.i ]
  %104 = ptrtoint ptr %retval.2.i91 to i32
  %105 = ptrtoint ptr %retval.0.i26 to i32
  %sub38 = sub i32 %104, %105
  %106 = ptrtoint ptr %ihdr36 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ihdr36, align 4
  %108 = call i32 @llvm.bswap.i32(i32 %107) #16
  %used2.i.i27 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %86, i32 0, i32 2, i32 1
  %109 = ptrtoint ptr %used2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %used2.i.i27, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #16
  %add.ptr.i.i28 = getelementptr i8, ptr %ihdr36, i32 %108
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %108)
  %cmp.not.i.i29 = icmp ugt i32 %111, %108
  br i1 %cmp.not.i.i29, label %lor.lhs.false.i.i32, label %hdr_first_de.exit.hdr_insert_head.exit_crit_edge

hdr_first_de.exit.hdr_insert_head.exit_crit_edge: ; preds = %hdr_first_de.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_head.exit

lor.lhs.false.i.i32:                              ; preds = %hdr_first_de.exit
  %total.i.i30 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %86, i32 0, i32 2, i32 2
  %112 = ptrtoint ptr %total.i.i30 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %total.i.i30, align 4
  %114 = call i32 @llvm.bswap.i32(i32 %113) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %114)
  %cmp3.not.i.i31 = icmp ult i32 %108, %114
  br i1 %cmp3.not.i.i31, label %if.end.i.i35, label %lor.lhs.false.i.i32.hdr_insert_head.exit_crit_edge

lor.lhs.false.i.i32.hdr_insert_head.exit_crit_edge: ; preds = %lor.lhs.false.i.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_head.exit

if.end.i.i35:                                     ; preds = %lor.lhs.false.i.i32
  %size.i.i33 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i28, i32 0, i32 1
  %115 = ptrtoint ptr %size.i.i33 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %size.i.i33, align 4
  %117 = call i16 @llvm.bswap.i16(i16 %116) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %117)
  %cmp4.i.i34 = icmp ult i16 %117, 16
  br i1 %cmp4.i.i34, label %if.end.i.i35.hdr_insert_head.exit_crit_edge, label %lor.lhs.false6.i.i40

if.end.i.i35.hdr_insert_head.exit_crit_edge:      ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_head.exit

lor.lhs.false6.i.i40:                             ; preds = %if.end.i.i35
  %conv.i.i36 = zext i16 %117 to i32
  %add.i.i37 = add i32 %108, %conv.i.i36
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i37, i32 %111)
  %cmp8.i.i38 = icmp ugt i32 %add.i.i37, %111
  %tobool.not.i39 = icmp eq ptr %add.ptr.i.i28, null
  %or.cond.i = or i1 %tobool.not.i39, %cmp8.i.i38
  br i1 %or.cond.i, label %lor.lhs.false6.i.i40.hdr_insert_head.exit_crit_edge, label %if.end.i44

lor.lhs.false6.i.i40.hdr_insert_head.exit_crit_edge: ; preds = %lor.lhs.false6.i.i40
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_head.exit

if.end.i44:                                       ; preds = %lor.lhs.false6.i.i40
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i41 = sub i32 %111, %108
  %add.ptr.i42 = getelementptr i8, ptr %add.ptr.i.i28, i32 %sub38
  %118 = call ptr @memmove(ptr %add.ptr.i42, ptr %add.ptr.i.i28, i32 %sub.i41)
  %119 = call ptr @memcpy(ptr %add.ptr.i.i28, ptr %retval.0.i26, i32 %sub38)
  %add.i43 = add i32 %111, %sub38
  %120 = call i32 @llvm.bswap.i32(i32 %add.i43) #16
  %121 = ptrtoint ptr %used2.i.i27 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %used2.i.i27, align 4
  br label %hdr_insert_head.exit

hdr_insert_head.exit:                             ; preds = %if.end.i44, %lor.lhs.false6.i.i40.hdr_insert_head.exit_crit_edge, %if.end.i.i35.hdr_insert_head.exit_crit_edge, %lor.lhs.false.i.i32.hdr_insert_head.exit_crit_edge, %hdr_first_de.exit.hdr_insert_head.exit_crit_edge
  %122 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %used1.i, align 4
  %124 = call i32 @llvm.bswap.i32(i32 %123)
  %125 = add i32 %sub38, %conv
  %sub43 = sub i32 %124, %125
  %add.ptr = getelementptr i8, ptr %retval.2.i91, i32 %conv
  %126 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ihdr, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127)
  %sub45 = sub i32 %sub43, %128
  %129 = call ptr @memmove(ptr %retval.0.i26, ptr %add.ptr, i32 %sub45)
  %130 = call i32 @llvm.bswap.i32(i32 %sub43)
  %131 = ptrtoint ptr %used1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %used1.i, align 4
  %cmp47 = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 3
  %132 = ptrtoint ptr %cmp47 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmp47, align 4
  %add.ptr48 = getelementptr %struct.NTFS_DE, ptr %new_de, i32 1
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %new_de, i32 0, i32 2
  %134 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %key_size, align 2
  %136 = call i16 @llvm.bswap.i16(i16 %135)
  %conv49 = zext i16 %136 to i32
  %add.ptr50 = getelementptr %struct.NTFS_DE, ptr %call9.i, i32 1
  %key_size51 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 2
  %137 = ptrtoint ptr %key_size51 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %key_size51, align 2
  %139 = call i16 @llvm.bswap.i16(i16 %138)
  %conv52 = zext i16 %139 to i32
  %call53 = call i32 %133(ptr noundef %add.ptr48, i32 noundef %conv49, ptr noundef %add.ptr50, i32 noundef %conv52, ptr noundef %ctx) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  %ihdr36.ihdr = select i1 %cmp54, ptr %ihdr36, ptr %ihdr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff.i45) #16
  %140 = ptrtoint ptr %ihdr36.ihdr to i32
  %used1.i47 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr36.ihdr, i32 0, i32 1
  %141 = ptrtoint ptr %used1.i47 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %used1.i47, align 4
  %143 = call i32 @llvm.bswap.i32(i32 %142) #16
  %total2.i48 = getelementptr inbounds %struct.INDEX_HDR, ptr %ihdr36.ihdr, i32 0, i32 2
  %144 = ptrtoint ptr %total2.i48 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %total2.i48, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145) #16
  %147 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %size.i, align 4
  %149 = call i16 @llvm.bswap.i16(i16 %148) #16
  %conv.i50 = zext i16 %149 to i32
  %add.i51 = add i32 %143, %conv.i50
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i51, i32 %146)
  %cmp.i52 = icmp ugt i32 %add.i51, %146
  br i1 %cmp.i52, label %hdr_insert_head.exit.hdr_insert_de.exit68_crit_edge, label %if.end.i53

hdr_insert_head.exit.hdr_insert_de.exit68_crit_edge: ; preds = %hdr_insert_head.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_de.exit68

if.end.i53:                                       ; preds = %hdr_insert_head.exit
  %150 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %key_size, align 2
  %152 = call i16 @llvm.bswap.i16(i16 %151) #16
  %conv18.i56 = zext i16 %152 to i32
  %call.i57 = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %ihdr36.ihdr, ptr noundef %add.ptr48, i32 noundef %conv18.i56, ptr noundef %ctx, ptr noundef nonnull %diff.i45) #16
  %tobool19.not.i58 = icmp eq ptr %call.i57, null
  br i1 %tobool19.not.i58, label %if.end.i53.hdr_insert_de.exit68_crit_edge, label %if.end21.i61

if.end.i53.hdr_insert_de.exit68_crit_edge:        ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_insert_de.exit68

if.end21.i61:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #18
  %153 = ptrtoint ptr %call.i57 to i32
  %add.ptr24.i64 = getelementptr i8, ptr %call.i57, i32 %conv.i50
  %sub22.i60.neg = add i32 %143, %140
  %sub25.i65 = sub i32 %sub22.i60.neg, %153
  %154 = call ptr @memmove(ptr %add.ptr24.i64, ptr %call.i57, i32 %sub25.i65)
  %155 = call i32 @llvm.bswap.i32(i32 %add.i51) #16
  %156 = ptrtoint ptr %used1.i47 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %used1.i47, align 4
  %157 = call ptr @memcpy(ptr %call.i57, ptr %new_de, i32 %conv.i50)
  br label %hdr_insert_de.exit68

hdr_insert_de.exit68:                             ; preds = %if.end21.i61, %if.end.i53.hdr_insert_de.exit68_crit_edge, %hdr_insert_head.exit.hdr_insert_de.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff.i45) #16
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %158 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %idx2vbn_bits, align 1
  %conv61 = zext i8 %159 to i32
  %shr = lshr i32 %83, %conv61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bbuf.i) #16
  %160 = call ptr @memset(ptr %bbuf.i, i32 255, i32 32)
  %call.i69 = call fastcc i32 @bmp_buf_get(ptr noundef %indx, ptr noundef %ni, i32 noundef %shr, ptr noundef nonnull %bbuf.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %hdr_insert_de.exit68.indx_mark_used.exit_crit_edge

hdr_insert_de.exit68.indx_mark_used.exit_crit_edge: ; preds = %hdr_insert_de.exit68
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_mark_used.exit

if.end.i73:                                       ; preds = %hdr_insert_de.exit68
  call void @__sanitizer_cov_trace_pc() #18
  %161 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf.i, i32 0, i32 4
  %162 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf.i, i32 0, i32 3
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %161, align 8
  %sub.i71 = sub i32 %shr, %164
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %162, align 4
  %rem.i.i = and i32 %sub.i71, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i71, 5
  %add.ptr.i.i72 = getelementptr i32, ptr %166, i32 %div2.i.i
  %167 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %add.ptr.i.i72, align 4
  %or.i.i = or i32 %shl.i.i, %168
  store i32 %or.i.i, ptr %add.ptr.i.i72, align 4
  call fastcc void @bmp_buf_put(ptr noundef nonnull %bbuf.i) #16
  br label %indx_mark_used.exit

indx_mark_used.exit:                              ; preds = %if.end.i73, %hdr_insert_de.exit68.indx_mark_used.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bbuf.i) #16
  %169 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %index, align 4
  %sbi.i75 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %171 = ptrtoint ptr %sbi.i75 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sbi.i75, align 4
  %call.i76 = call i32 @ntfs_write_bh(ptr noundef %172, ptr noundef %170, ptr noundef %1, i32 noundef 0) #16
  %173 = ptrtoint ptr %index35 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %index35, align 4
  %175 = ptrtoint ptr %sbi.i75 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sbi.i75, align 4
  %call.i79 = call i32 @ntfs_write_bh(ptr noundef %176, ptr noundef %174, ptr noundef %call30, i32 noundef 0) #16
  %tobool.not.i80 = icmp eq ptr %call30, null
  br i1 %tobool.not.i80, label %indx_mark_used.exit.put_indx_node.exit_crit_edge, label %if.end.i82

indx_mark_used.exit.put_indx_node.exit_crit_edge: ; preds = %indx_mark_used.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_indx_node.exit

if.end.i82:                                       ; preds = %indx_mark_used.exit
  %177 = ptrtoint ptr %index35 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %index35, align 4
  call void @kfree(ptr noundef %178) #16
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %call30, i32 0, i32 2
  %179 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool.not.i.i = icmp eq i32 %180, 0
  br i1 %tobool.not.i.i, label %if.end.i82.nb_put.exit.i_crit_edge, label %if.end.i82.for.body.i.i_crit_edge

if.end.i82.for.body.i.i_crit_edge:                ; preds = %if.end.i82
  br label %for.body.i.i

if.end.i82.nb_put.exit.i_crit_edge:               ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %nb_put.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i82.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i82.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %call30, i32 0, i32 %i.010.i.i
  %181 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %182, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #16
  %183 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #16, !srcloc !23
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %180
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %184 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %nb_put.exit.i

nb_put.exit.i:                                    ; preds = %for.end.i.i, %if.end.i82.nb_put.exit.i_crit_edge
  call void @kfree(ptr noundef nonnull %call30) #16
  br label %put_indx_node.exit

put_indx_node.exit:                               ; preds = %nb_put.exit.i, %indx_mark_used.exit.put_indx_node.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %tobool65.not = icmp eq i32 %level, 0
  br i1 %tobool65.not, label %if.then66, label %if.else71

if.then66:                                        ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call67 = call fastcc i32 @indx_insert_into_root(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %call9.i, ptr noundef null, ptr noundef %ctx, ptr noundef %fnd, i1 noundef zeroext false)
  br label %out

if.else71:                                        ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub72 = add i32 %level, -1
  %call73 = call fastcc i32 @indx_insert_into_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %call9.i, ptr noundef %ctx, i32 noundef %sub72, ptr noundef %fnd)
  br label %out

out:                                              ; preds = %if.else71, %if.then66, %if.then32, %if.end25.out_crit_edge
  %err.0 = phi i32 [ %call26, %if.end25.out_crit_edge ], [ %84, %if.then32 ], [ %call73, %if.else71 ], [ %call67, %if.then66 ]
  call void @kfree(ptr noundef nonnull %call9.i) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %hdr_find_split.exit.cleanup_crit_edge, %lor.lhs.false.i5.cleanup_crit_edge, %hdr_first_de.exit.i.cleanup_crit_edge, %lor.lhs.false6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %out ], [ -22, %hdr_find_split.exit.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -22, %lor.lhs.false.i5.cleanup_crit_edge ], [ -22, %hdr_first_de.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %lor.lhs.false6.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t_vbn) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_vbn) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_delete_entry(ptr noundef %indx, ptr noundef %ni, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %diff = alloca i32, align 4
  %e = alloca ptr, align 4
  %re = alloca ptr, align 4
  %attr = alloca ptr, align 4
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #16
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #16
  %1 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %re) #16
  %2 = ptrtoint ptr %re to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %re, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %attr) #16
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %attr, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #16
  %4 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3392, i32 noundef 168) #19
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup303_crit_edge, label %if.end

entry.cleanup303_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup303

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i509 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3392, i32 noundef 168) #19
  %tobool2.not = icmp eq ptr %call7.i.i.i509, null
  br i1 %tobool2.not, label %if.end.fnd_put.exit629_crit_edge, label %if.end4

if.end.fnd_put.exit629_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit629

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %7 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %le.i, align 4
  %type.i = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i, i32 1
  %12 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1879048192, ptr noundef %11, i8 noundef zeroext %13, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.indx_get_root.exit.thread_crit_edge, label %if.end.i

if.end4.indx_get_root.exit.thread_crit_edge:      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i:                                         ; preds = %if.end4
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %attr, align 4
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.indx_get_root.exit.thread_crit_edge

if.end.i.indx_get_root.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18) #16
  %20 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %data_off.i.i, align 4
  %23 = call i16 @llvm.bswap.i16(i16 %22) #16
  %conv.i.i = zext i16 %23 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %19, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.indx_get_root.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.indx_get_root.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %20, align 8
  %26 = call i32 @llvm.bswap.i32(i32 %25) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp4.i.i = icmp ult i32 %26, 32
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  br i1 %cmp4.i.i, label %if.end3.i.i.indx_get_root.exit.thread_crit_edge, label %indx_get_root.exit

if.end3.i.i.indx_get_root.exit.thread_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

indx_get_root.exit.thread:                        ; preds = %if.end3.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.indx_get_root.exit.thread_crit_edge, %if.end4.indx_get_root.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %fnd_put.exit

indx_get_root.exit:                               ; preds = %if.end3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  %tobool6.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool6.not, label %indx_get_root.exit.fnd_put.exit_crit_edge, label %if.end8

indx_get_root.exit.fnd_put.exit_crit_edge:        ; preds = %indx_get_root.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end8:                                          ; preds = %indx_get_root.exit
  %call9 = call i32 @indx_find(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %add.ptr.i.i, ptr noundef %key, i32 noundef %key_len, ptr noundef %ctx, ptr noundef nonnull %diff, ptr noundef nonnull %e, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.fnd_put.exit_crit_edge

if.end8.fnd_put.exit_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end12:                                         ; preds = %if.end8
  %27 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %e, align 4
  %tobool13.not = icmp eq ptr %28, null
  br i1 %tobool13.not, label %if.end12.fnd_put.exit_crit_edge, label %lor.lhs.false

if.end12.fnd_put.exit_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

lor.lhs.false:                                    ; preds = %if.end12
  %29 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false.fnd_put.exit_crit_edge

lor.lhs.false.fnd_put.exit_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end16:                                         ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool18.not = icmp eq i32 %32, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %32, -1
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %arrayidx21 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 2, i32 %sub
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx21, align 4
  %37 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %e, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %index, align 4
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %39, i32 0, i32 2
  br label %if.end23

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  %ihdr22 = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr.i.i, i32 0, i32 5
  %root_de = getelementptr inbounds %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %root_de to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %root_de, align 4
  %42 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %e, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then19
  %hdr.0 = phi ptr [ %ihdr, %if.then19 ], [ %ihdr22, %if.else ]
  %ib.0 = phi ptr [ %39, %if.then19 ], [ inttoptr (i32 -1 to ptr), %if.else ]
  %n.0 = phi ptr [ %34, %if.then19 ], [ null, %if.else ]
  %43 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %e, align 4
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %size, align 4
  %47 = call i16 @llvm.bswap.i16(i16 %46)
  %conv = zext i16 %47 to i32
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %44, i32 0, i32 3
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 4
  %50 = and i16 %49, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i510 = icmp eq i16 %50, 0
  br i1 %tobool.not.i510, label %if.end23.if.then25_crit_edge, label %de_has_vcn_ex.exit

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

de_has_vcn_ex.exit:                               ; preds = %if.end23
  %sub.i = add nsw i32 %conv, -8
  %add.ptr.i = getelementptr i8, ptr %44, i32 %sub.i
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp.i.not = icmp eq i64 %52, -1
  br i1 %cmp.i.not, label %de_has_vcn_ex.exit.if.then25_crit_edge, label %if.else41

de_has_vcn_ex.exit.if.then25_crit_edge:           ; preds = %de_has_vcn_ex.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then25

if.then25:                                        ; preds = %de_has_vcn_ex.exit.if.then25_crit_edge, %if.end23.if.then25_crit_edge
  %call26 = call fastcc ptr @hdr_delete_de(ptr noundef %hdr.0, ptr noundef %44)
  br i1 %tobool18.not, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %used = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr.0, i32 0, i32 1
  %53 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %used, align 4
  %total = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr.0, i32 0, i32 2
  %55 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %total, align 4
  %56 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mi, align 4
  %58 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %attr, align 4
  %sub29 = sub nsw i32 0, %conv
  %call30 = call zeroext i1 @mi_resize_attr(ptr noundef %57, ptr noundef %59, i32 noundef %sub29) #16
  br label %fnd_put.exit

if.end31:                                         ; preds = %if.then25
  %index.i = getelementptr inbounds %struct.indx_node, ptr %n.0, i32 0, i32 1
  %60 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %index.i, align 4
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %62 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sbi.i, align 4
  %call.i511 = call i32 @ntfs_write_bh(ptr noundef %63, ptr noundef %61, ptr noundef %n.0, i32 noundef 0) #16
  %flags.i512 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib.0, i32 0, i32 2, i32 3
  %64 = ptrtoint ptr %flags.i512 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags.i512, align 4
  %66 = and i8 %65, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i513 = icmp eq i8 %66, 0
  br i1 %tobool.not.i513, label %land.lhs.true, label %if.end31.lor.lhs.false75thread-pre-split_crit_edge

if.end31.lor.lhs.false75thread-pre-split_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false75thread-pre-split

land.lhs.true:                                    ; preds = %if.end31
  %call35 = call fastcc zeroext i1 @ib_is_empty(ptr noundef %ib.0)
  br i1 %call35, label %if.then37, label %land.lhs.true.lor.lhs.false75thread-pre-split_crit_edge

land.lhs.true.lor.lhs.false75thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false75thread-pre-split

if.then37:                                        ; preds = %land.lhs.true
  %67 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call7.i.i.i, align 8
  %sub.i514 = add i32 %68, -1
  %arrayidx.i515 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %sub.i514
  %69 = ptrtoint ptr %arrayidx.i515 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx.i515, align 4
  store i32 %sub.i514, ptr %call7.i.i.i, align 8
  %70 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call7.i.i.i509, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %71)
  %cmp1.i = icmp ugt i32 %71, 19
  br i1 %cmp1.i, label %if.then37.if.end79_crit_edge, label %if.end.i517

if.then37.if.end79_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

if.end.i517:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %e, align 4
  %arrayidx.i516 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i509, i32 0, i32 1, i32 %71
  %74 = ptrtoint ptr %arrayidx.i516 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %n.0, ptr %arrayidx.i516, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i509, i32 0, i32 2, i32 %71
  %75 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %arrayidx2.i, align 4
  %76 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %call7.i.i.i509, align 8
  %add.i = add i32 %77, 1
  store i32 %add.i, ptr %call7.i.i.i509, align 8
  br label %lor.lhs.false75

if.else41:                                        ; preds = %de_has_vcn_ex.exit
  %add.ptr.i519 = getelementptr i8, ptr %44, i32 %conv
  %call43 = call fastcc i32 @indx_get_entry_to_replace(ptr noundef %indx, ptr noundef %ni, ptr noundef %add.ptr.i519, ptr noundef nonnull %re, ptr noundef nonnull %call7.i.i.i509)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.else41.fnd_put.exit_crit_edge

if.else41.fnd_put.exit_crit_edge:                 ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end46:                                         ; preds = %if.else41
  %78 = ptrtoint ptr %re to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %re, align 4
  %tobool47.not = icmp eq ptr %79, null
  br i1 %tobool47.not, label %if.else59, label %if.then48

if.then48:                                        ; preds = %if.end46
  %80 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %e, align 4
  %size.i520 = getelementptr inbounds %struct.NTFS_DE, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %size.i520 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %size.i520, align 4
  %84 = call i16 @llvm.bswap.i16(i16 %83) #16
  %conv.i521 = zext i16 %84 to i32
  %sub.i522 = add nsw i32 %conv.i521, -8
  %add.ptr.i523 = getelementptr i8, ptr %81, i32 %sub.i522
  %85 = ptrtoint ptr %add.ptr.i523 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %add.ptr.i523, align 8
  %size.i524 = getelementptr inbounds %struct.NTFS_DE, ptr %79, i32 0, i32 1
  %87 = ptrtoint ptr %size.i524 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %size.i524, align 4
  %89 = call i16 @llvm.bswap.i16(i16 %88) #16
  %conv.i525 = zext i16 %89 to i32
  %sub.i526 = add nsw i32 %conv.i525, -8
  %add.ptr.i527 = getelementptr i8, ptr %79, i32 %sub.i526
  %90 = ptrtoint ptr %add.ptr.i527 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %86, ptr %add.ptr.i527, align 8
  %call50 = call fastcc ptr @hdr_delete_de(ptr noundef %hdr.0, ptr noundef %81)
  br i1 %tobool18.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  %91 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call7.i.i.i, align 8
  %sub53 = add i32 %92, -1
  %call54 = call fastcc i32 @indx_insert_into_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %79, ptr noundef %ctx, i32 noundef %sub53, ptr noundef nonnull %call7.i.i.i)
  br label %cond.end

cond.false:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  %93 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %e, align 4
  %call55 = call fastcc i32 @indx_insert_into_root(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %79, ptr noundef %94, ptr noundef %ctx, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call54, %cond.true ], [ %call55, %cond.false ]
  call void @kfree(ptr noundef nonnull %79) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool56.not = icmp eq i32 %cond, 0
  br i1 %tobool56.not, label %cond.end.lor.lhs.false75thread-pre-split_crit_edge, label %cond.end.fnd_put.exit_crit_edge

cond.end.fnd_put.exit_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

cond.end.lor.lhs.false75thread-pre-split_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false75thread-pre-split

if.else59:                                        ; preds = %if.end46
  call fastcc void @indx_free_children(ptr noundef %indx, ptr noundef %ni, ptr noundef %add.ptr.i519, i1 noundef zeroext true)
  %95 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %e, align 4
  %size.i528 = getelementptr inbounds %struct.NTFS_DE, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %size.i528 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %size.i528, align 4
  %99 = call i16 @llvm.bswap.i16(i16 %98) #16
  %conv.i529 = zext i16 %99 to i32
  %sub.i530 = add nsw i32 %conv.i529, -8
  %add.ptr.i531 = getelementptr i8, ptr %96, i32 %sub.i530
  %100 = ptrtoint ptr %add.ptr.i531 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %add.ptr.i531, align 8
  %size.i532 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i519, i32 0, i32 1
  %102 = ptrtoint ptr %size.i532 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %size.i532, align 4
  %104 = call i16 @llvm.bswap.i16(i16 %103) #16
  %conv.i533 = zext i16 %104 to i32
  %sub.i534 = add nsw i32 %conv.i533, -8
  %add.ptr.i535 = getelementptr i8, ptr %add.ptr.i519, i32 %sub.i534
  %105 = ptrtoint ptr %add.ptr.i535 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %101, ptr %add.ptr.i535, align 8
  %call62 = call fastcc ptr @hdr_delete_de(ptr noundef %hdr.0, ptr noundef %96)
  br i1 %tobool18.not, label %if.else66, label %if.then64

if.then64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  %index.i536 = getelementptr inbounds %struct.indx_node, ptr %n.0, i32 0, i32 1
  %106 = ptrtoint ptr %index.i536 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %index.i536, align 4
  %sbi.i537 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %108 = ptrtoint ptr %sbi.i537 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sbi.i537, align 4
  %call.i538 = call i32 @ntfs_write_bh(ptr noundef %109, ptr noundef %107, ptr noundef %n.0, i32 noundef 0) #16
  br label %lor.lhs.false75thread-pre-split

if.else66:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #18
  %used67 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr.0, i32 0, i32 1
  %110 = ptrtoint ptr %used67 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %used67, align 4
  %total68 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr.0, i32 0, i32 2
  %112 = ptrtoint ptr %total68 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %total68, align 4
  %113 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mi, align 4
  %115 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %attr, align 4
  %sub69 = sub nsw i32 0, %conv
  %call70 = call zeroext i1 @mi_resize_attr(ptr noundef %114, ptr noundef %116, i32 noundef %sub69) #16
  br label %lor.lhs.false75thread-pre-split

lor.lhs.false75thread-pre-split:                  ; preds = %if.else66, %if.then64, %cond.end.lor.lhs.false75thread-pre-split_crit_edge, %land.lhs.true.lor.lhs.false75thread-pre-split_crit_edge, %if.end31.lor.lhs.false75thread-pre-split_crit_edge
  %117 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr = load i32, ptr %call7.i.i.i509, align 8
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %lor.lhs.false75thread-pre-split, %if.end.i517
  %118 = phi i32 [ %.pr, %lor.lhs.false75thread-pre-split ], [ %add.i, %if.end.i517 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool77.not = icmp eq i32 %118, 0
  br i1 %tobool77.not, label %lor.lhs.false75.fnd_put.exit_crit_edge, label %lor.lhs.false75.if.end79_crit_edge

lor.lhs.false75.if.end79_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

lor.lhs.false75.fnd_put.exit_crit_edge:           ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end79:                                         ; preds = %lor.lhs.false75.if.end79_crit_edge, %if.then37.if.end79_crit_edge
  %call80 = call ptr @indx_get_root(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %attr, ptr noundef nonnull %mi)
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.end79.fnd_put.exit_crit_edge, label %if.end83

if.end79.fnd_put.exit_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end83:                                         ; preds = %if.end79
  %nodes84 = getelementptr inbounds %struct.ntfs_fnd, ptr %call7.i.i.i509, i32 0, i32 1
  %119 = ptrtoint ptr %nodes84 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %nodes84, align 4
  %index86 = getelementptr inbounds %struct.indx_node, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %index86 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %index86, align 4
  %vbn = getelementptr inbounds %struct.INDEX_BUFFER, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %vbn to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %vbn, align 8
  %125 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool88.not = icmp eq i32 %126, 0
  br i1 %tobool88.not, label %cond.false95, label %cond.true89

cond.true89:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  %sub91 = add i32 %126, -1
  %arrayidx92 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %sub91
  %127 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx92, align 4
  %index93 = getelementptr inbounds %struct.indx_node, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %index93 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %index93, align 4
  %ihdr94 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %130, i32 0, i32 2
  br label %cond.end97

cond.false95:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #18
  %ihdr96 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call80, i32 0, i32 5
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false95, %cond.true89
  %cond98 = phi ptr [ %ihdr94, %cond.true89 ], [ %ihdr96, %cond.false95 ]
  %call99 = call fastcc ptr @hdr_first_de(ptr noundef %cond98)
  %tobool100.not666 = icmp eq ptr %call99, null
  br i1 %tobool100.not666, label %cond.end97.fnd_put.exit.loopexit651_crit_edge, label %if.end102.lr.ph

cond.end97.fnd_put.exit.loopexit651_crit_edge:    ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit.loopexit651

if.end102.lr.ph:                                  ; preds = %cond.end97
  %131 = ptrtoint ptr %cond98 to i32
  %used1.i = getelementptr inbounds %struct.INDEX_HDR, ptr %cond98, i32 0, i32 1
  br label %if.end102

if.end102:                                        ; preds = %lor.lhs.false.i.if.end102_crit_edge, %if.end102.lr.ph
  %storemerge667 = phi ptr [ %call99, %if.end102.lr.ph ], [ %add.ptr.i551, %lor.lhs.false.i.if.end102_crit_edge ]
  %flags.i539 = getelementptr inbounds %struct.NTFS_DE, ptr %storemerge667, i32 0, i32 3
  %132 = ptrtoint ptr %flags.i539 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %flags.i539, align 4
  %134 = and i16 %133, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %tobool.i.not = icmp eq i16 %134, 0
  br i1 %tobool.i.not, label %if.end102.if.end109_crit_edge, label %land.lhs.true105

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

land.lhs.true105:                                 ; preds = %if.end102
  %size.i540 = getelementptr inbounds %struct.NTFS_DE, ptr %storemerge667, i32 0, i32 1
  %135 = ptrtoint ptr %size.i540 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %size.i540, align 4
  %137 = call i16 @llvm.bswap.i16(i16 %136) #16
  %conv.i541 = zext i16 %137 to i32
  %sub.i542 = add nsw i32 %conv.i541, -8
  %add.ptr.i543 = getelementptr i8, ptr %storemerge667, i32 %sub.i542
  %138 = ptrtoint ptr %add.ptr.i543 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %add.ptr.i543, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %139)
  %cmp = icmp eq i64 %124, %139
  br i1 %cmp, label %for.end, label %land.lhs.true105.if.end109_crit_edge

land.lhs.true105.if.end109_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end109

if.end109:                                        ; preds = %land.lhs.true105.if.end109_crit_edge, %if.end102.if.end109_crit_edge
  %140 = and i16 %133, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %140)
  %tobool.i545.not = icmp eq i16 %140, 0
  br i1 %tobool.i545.not, label %for.inc, label %if.then115

for.inc:                                          ; preds = %if.end109
  %141 = ptrtoint ptr %storemerge667 to i32
  %sub.i546 = sub i32 %141, %131
  %142 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %used1.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %143) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i546, i32 %144)
  %cmp.not.i = icmp ult i32 %sub.i546, %144
  br i1 %cmp.not.i, label %if.end.i548, label %for.inc.fnd_put.exit.loopexit651_crit_edge

for.inc.fnd_put.exit.loopexit651_crit_edge:       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit.loopexit651

if.end.i548:                                      ; preds = %for.inc
  %size.i547 = getelementptr inbounds %struct.NTFS_DE, ptr %storemerge667, i32 0, i32 1
  %145 = ptrtoint ptr %size.i547 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %size.i547, align 4
  %147 = call i16 @llvm.bswap.i16(i16 %146) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %147)
  %cmp2.i = icmp ult i16 %147, 16
  br i1 %cmp2.i, label %if.end.i548.fnd_put.exit.loopexit651_crit_edge, label %lor.lhs.false.i

if.end.i548.fnd_put.exit.loopexit651_crit_edge:   ; preds = %if.end.i548
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit.loopexit651

lor.lhs.false.i:                                  ; preds = %if.end.i548
  %conv.i549 = zext i16 %147 to i32
  %add.i550 = add i32 %sub.i546, 16
  %add5.i = add i32 %add.i550, %conv.i549
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %144)
  %cmp6.i = icmp ugt i32 %add5.i, %144
  %add.ptr.i551 = getelementptr i8, ptr %storemerge667, i32 %conv.i549
  %tobool100.not = icmp eq ptr %add.ptr.i551, null
  %or.cond = select i1 %cmp6.i, i1 true, i1 %tobool100.not
  br i1 %or.cond, label %lor.lhs.false.i.fnd_put.exit.loopexit651_crit_edge, label %lor.lhs.false.i.if.end102_crit_edge

lor.lhs.false.i.if.end102_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

lor.lhs.false.i.fnd_put.exit.loopexit651_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit.loopexit651

for.end:                                          ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  %148 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %storemerge667, ptr %e, align 4
  br label %if.end126

if.then115:                                       ; preds = %if.end109
  %149 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %e, align 4
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i)
  %call117 = call fastcc ptr @indx_find_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %call80, i64 noundef %124, ptr noundef null)
  %cmp.i553 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i553, label %cleanup, label %if.end121

if.end121:                                        ; preds = %if.then115
  %tobool122.not = icmp eq ptr %call117, null
  br i1 %tobool122.not, label %if.end121.if.end126_crit_edge, label %if.then123

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

if.then123:                                       ; preds = %if.end121
  %150 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %151)
  %cmp1.i554 = icmp ugt i32 %151, 19
  br i1 %cmp1.i554, label %if.then123.if.end126_crit_edge, label %if.end.i558

if.then123.if.end126_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end126

if.end.i558:                                      ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i555 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %151
  %152 = ptrtoint ptr %arrayidx.i555 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call117, ptr %arrayidx.i555, align 4
  %arrayidx2.i556 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 2, i32 %151
  %153 = ptrtoint ptr %arrayidx2.i556 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %arrayidx2.i556, align 4
  %154 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %call7.i.i.i, align 8
  %add.i557 = add i32 %155, 1
  store i32 %add.i557, ptr %call7.i.i.i, align 8
  br label %if.end126

cleanup:                                          ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #18
  %156 = ptrtoint ptr %call117 to i32
  br label %fnd_put.exit

if.end126:                                        ; preds = %if.end.i558, %if.then123.if.end126_crit_edge, %if.end121.if.end126_crit_edge, %for.end
  %157 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %call7.i.i.i509, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp129668 = icmp sgt i32 %158, 0
  br i1 %cmp129668, label %if.end126.for.body_crit_edge, label %if.end126.for.end139_crit_edge

if.end126.for.end139_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end139

if.end126.for.body_crit_edge:                     ; preds = %if.end126
  br label %for.body

for.body:                                         ; preds = %fnd_push.exit565.for.body_crit_edge, %if.end126.for.body_crit_edge
  %level.0669 = phi i32 [ %inc, %fnd_push.exit565.for.body_crit_edge ], [ 0, %if.end126.for.body_crit_edge ]
  %arrayidx132 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i509, i32 0, i32 1, i32 %level.0669
  %159 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %160)
  %cmp1.i560 = icmp ugt i32 %160, 19
  br i1 %cmp1.i560, label %for.body.fnd_push.exit565_crit_edge, label %if.end.i564

for.body.fnd_push.exit565_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit565

if.end.i564:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx134 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i509, i32 0, i32 2, i32 %level.0669
  %161 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx134, align 4
  %163 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx132, align 4
  %arrayidx.i561 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %160
  %165 = ptrtoint ptr %arrayidx.i561 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %164, ptr %arrayidx.i561, align 4
  %arrayidx2.i562 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 2, i32 %160
  %166 = ptrtoint ptr %arrayidx2.i562 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %162, ptr %arrayidx2.i562, align 4
  %167 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %call7.i.i.i, align 8
  %add.i563 = add i32 %168, 1
  store i32 %add.i563, ptr %call7.i.i.i, align 8
  br label %fnd_push.exit565

fnd_push.exit565:                                 ; preds = %if.end.i564, %for.body.fnd_push.exit565_crit_edge
  %169 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %arrayidx132, align 4
  %inc = add nuw nsw i32 %level.0669, 1
  %170 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %call7.i.i.i509, align 8
  %cmp129 = icmp slt i32 %inc, %171
  br i1 %cmp129, label %fnd_push.exit565.for.body_crit_edge, label %fnd_push.exit565.for.end139_crit_edge

fnd_push.exit565.for.end139_crit_edge:            ; preds = %fnd_push.exit565
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end139

fnd_push.exit565.for.body_crit_edge:              ; preds = %fnd_push.exit565
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end139:                                       ; preds = %fnd_push.exit565.for.end139_crit_edge, %if.end126.for.end139_crit_edge
  %172 = ptrtoint ptr %call7.i.i.i509 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %call7.i.i.i509, align 8
  %173 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool143.not671 = icmp eq i32 %174, 0
  br i1 %tobool143.not671, label %for.end139.for.end160_crit_edge, label %for.end139.for.body144_crit_edge

for.end139.for.body144_crit_edge:                 ; preds = %for.end139
  br label %for.body144

for.end139.for.end160_crit_edge:                  ; preds = %for.end139
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end160

for.body144:                                      ; preds = %for.inc159.for.body144_crit_edge, %for.end139.for.body144_crit_edge
  %level.1673 = phi i32 [ %sub147, %for.inc159.for.body144_crit_edge ], [ %174, %for.end139.for.body144_crit_edge ]
  %sub_vbn.0672 = phi i64 [ %195, %for.inc159.for.body144_crit_edge ], [ %124, %for.end139.for.body144_crit_edge ]
  %sub147 = add i32 %level.1673, -1
  %arrayidx148 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %sub147
  %175 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx148, align 4
  %index149 = getelementptr inbounds %struct.indx_node, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %index149 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %index149, align 4
  %ihdr.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %ihdr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ihdr.i, align 4
  %181 = call i32 @llvm.bswap.i32(i32 %180) #16
  %used2.i.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %178, i32 0, i32 2, i32 1
  %182 = ptrtoint ptr %used2.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %used2.i.i, align 4
  %184 = call i32 @llvm.bswap.i32(i32 %183) #16
  %add.ptr.i.i566 = getelementptr i8, ptr %ihdr.i, i32 %181
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %184)
  %cmp.not.i.i = icmp ult i32 %181, %184
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body144.for.inc159_crit_edge

for.body144.for.inc159_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc159

lor.lhs.false.i.i:                                ; preds = %for.body144
  %total.i.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %178, i32 0, i32 2, i32 2
  %185 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %total.i.i, align 4
  %187 = call i32 @llvm.bswap.i32(i32 %186) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %181, i32 %187)
  %cmp3.not.i.i = icmp ult i32 %181, %187
  br i1 %cmp3.not.i.i, label %if.end.i.i569, label %lor.lhs.false.i.i.for.inc159_crit_edge

lor.lhs.false.i.i.for.inc159_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc159

if.end.i.i569:                                    ; preds = %lor.lhs.false.i.i
  %size.i.i567 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i566, i32 0, i32 1
  %188 = ptrtoint ptr %size.i.i567 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %size.i.i567, align 4
  %190 = call i16 @llvm.bswap.i16(i16 %189) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %190)
  %cmp4.i.i568 = icmp ult i16 %190, 16
  br i1 %cmp4.i.i568, label %if.end.i.i569.for.inc159_crit_edge, label %lor.lhs.false6.i.i

if.end.i.i569.for.inc159_crit_edge:               ; preds = %if.end.i.i569
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc159

lor.lhs.false6.i.i:                               ; preds = %if.end.i.i569
  %conv.i.i570 = zext i16 %190 to i32
  %add.i.i571 = add i32 %181, %conv.i.i570
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i571, i32 %184)
  %cmp8.i.i = icmp ugt i32 %add.i.i571, %184
  %tobool.not.i572 = icmp eq ptr %add.ptr.i.i566, null
  %or.cond.i = or i1 %tobool.not.i572, %cmp8.i.i
  br i1 %or.cond.i, label %lor.lhs.false6.i.i.for.inc159_crit_edge, label %ib_is_empty.exit

lor.lhs.false6.i.i.for.inc159_crit_edge:          ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc159

ib_is_empty.exit:                                 ; preds = %lor.lhs.false6.i.i
  %flags.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i566, i32 0, i32 3
  %191 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %flags.i.i, align 4
  %193 = and i16 %192, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %193)
  %tobool.i.i.not = icmp eq i16 %193, 0
  br i1 %tobool.i.i.not, label %ib_is_empty.exit.for.end160_crit_edge, label %ib_is_empty.exit.for.inc159_crit_edge

ib_is_empty.exit.for.inc159_crit_edge:            ; preds = %ib_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc159

ib_is_empty.exit.for.end160_crit_edge:            ; preds = %ib_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end160

for.inc159:                                       ; preds = %ib_is_empty.exit.for.inc159_crit_edge, %lor.lhs.false6.i.i.for.inc159_crit_edge, %if.end.i.i569.for.inc159_crit_edge, %lor.lhs.false.i.i.for.inc159_crit_edge, %for.body144.for.inc159_crit_edge
  %vbn152 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %178, i32 0, i32 1
  %194 = ptrtoint ptr %vbn152 to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %vbn152, align 8
  %tobool143.not = icmp eq i32 %sub147, 0
  br i1 %tobool143.not, label %for.inc159.for.end160_crit_edge, label %for.inc159.for.body144_crit_edge

for.inc159.for.body144_crit_edge:                 ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body144

for.inc159.for.end160_crit_edge:                  ; preds = %for.inc159
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end160

for.end160:                                       ; preds = %for.inc159.for.end160_crit_edge, %ib_is_empty.exit.for.end160_crit_edge, %for.end139.for.end160_crit_edge
  %sub_vbn.0.lcssa = phi i64 [ %124, %for.end139.for.end160_crit_edge ], [ %sub_vbn.0672, %ib_is_empty.exit.for.end160_crit_edge ], [ %195, %for.inc159.for.end160_crit_edge ]
  %level.1.lcssa = phi i32 [ 0, %for.end139.for.end160_crit_edge ], [ %level.1673, %ib_is_empty.exit.for.end160_crit_edge ], [ 0, %for.inc159.for.end160_crit_edge ]
  %hdr.3 = phi ptr [ null, %for.end139.for.end160_crit_edge ], [ %ihdr.i, %ib_is_empty.exit.for.end160_crit_edge ], [ null, %for.inc159.for.end160_crit_edge ]
  %n2d.2 = phi ptr [ null, %for.end139.for.end160_crit_edge ], [ %176, %ib_is_empty.exit.for.end160_crit_edge ], [ null, %for.inc159.for.end160_crit_edge ]
  %tobool161.not = icmp eq ptr %hdr.3, null
  %ihdr163 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call80, i32 0, i32 5
  %spec.select = select i1 %tobool161.not, ptr %ihdr163, ptr %hdr.3
  %call165 = call fastcc ptr @hdr_first_de(ptr noundef %spec.select)
  %196 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call165, ptr %e, align 4
  %tobool166.not = icmp eq ptr %call165, null
  br i1 %tobool166.not, label %for.end160.fnd_put.exit_crit_edge, label %if.end168

for.end160.fnd_put.exit_crit_edge:                ; preds = %for.end160
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end168:                                        ; preds = %for.end160
  %cmp170.not = icmp eq ptr %spec.select, %ihdr163
  br i1 %cmp170.not, label %lor.lhs.false172, label %if.end168.if.then174_crit_edge

if.end168.if.then174_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then174

lor.lhs.false172:                                 ; preds = %if.end168
  %flags.i573 = getelementptr inbounds %struct.NTFS_DE, ptr %call165, i32 0, i32 3
  %197 = ptrtoint ptr %flags.i573 to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %flags.i573, align 4
  %199 = and i16 %198, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %tobool.i574.not = icmp eq i16 %199, 0
  br i1 %tobool.i574.not, label %lor.lhs.false172.if.then174_crit_edge, label %if.else268

lor.lhs.false172.if.then174_crit_edge:            ; preds = %lor.lhs.false172
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then174

if.then174:                                       ; preds = %lor.lhs.false172.if.then174_crit_edge, %if.end168.if.then174_crit_edge
  %200 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %200)
  %e.promoted = load ptr, ptr %e, align 4
  %flags.i575684 = getelementptr inbounds %struct.NTFS_DE, ptr %e.promoted, i32 0, i32 3
  %201 = ptrtoint ptr %flags.i575684 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %flags.i575684, align 4
  %203 = and i16 %202, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %203)
  %tobool.i576.not685 = icmp eq i16 %203, 0
  br i1 %tobool.i576.not685, label %while.body.lr.ph, label %if.then174.while.end_crit_edge

if.then174.while.end_crit_edge:                   ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then174
  %204 = ptrtoint ptr %spec.select to i32
  %used1.i584 = getelementptr inbounds %struct.INDEX_HDR, ptr %spec.select, i32 0, i32 1
  br label %while.body

while.cond:                                       ; preds = %hdr_next_de.exit597
  %flags.i575 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i593, i32 0, i32 3
  %205 = ptrtoint ptr %flags.i575 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %flags.i575, align 4
  %207 = and i16 %206, 512
  %tobool.i576.not = icmp eq i16 %207, 0
  br i1 %tobool.i576.not, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %208 = phi i16 [ %202, %while.body.lr.ph ], [ %206, %while.cond.while.body_crit_edge ]
  %prev.0687 = phi ptr [ null, %while.body.lr.ph ], [ %add.ptr.i593683686, %while.cond.while.body_crit_edge ]
  %add.ptr.i593683686 = phi ptr [ %e.promoted, %while.body.lr.ph ], [ %add.ptr.i593, %while.cond.while.body_crit_edge ]
  %209 = and i16 %208, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool.i578.not = icmp eq i16 %209, 0
  br i1 %tobool.i578.not, label %while.body.if.end183_crit_edge, label %land.lhs.true178

while.body.if.end183_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end183

land.lhs.true178:                                 ; preds = %while.body
  %size.i579 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i593683686, i32 0, i32 1
  %210 = ptrtoint ptr %size.i579 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %size.i579, align 4
  %212 = call i16 @llvm.bswap.i16(i16 %211) #16
  %conv.i580 = zext i16 %212 to i32
  %sub.i581 = add nsw i32 %conv.i580, -8
  %add.ptr.i582 = getelementptr i8, ptr %add.ptr.i593683686, i32 %sub.i581
  %213 = ptrtoint ptr %add.ptr.i582 to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %add.ptr.i582, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub_vbn.0.lcssa, i64 %214)
  %cmp180 = icmp eq i64 %sub_vbn.0.lcssa, %214
  br i1 %cmp180, label %land.lhs.true178.while.end_crit_edge, label %land.lhs.true178.if.end183_crit_edge

land.lhs.true178.if.end183_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end183

land.lhs.true178.while.end_crit_edge:             ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

if.end183:                                        ; preds = %land.lhs.true178.if.end183_crit_edge, %while.body.if.end183_crit_edge
  %215 = ptrtoint ptr %add.ptr.i593683686 to i32
  %sub.i583 = sub i32 %215, %204
  %216 = ptrtoint ptr %used1.i584 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %used1.i584, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %217) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i583, i32 %218)
  %cmp.not.i585 = icmp ult i32 %sub.i583, %218
  br i1 %cmp.not.i585, label %if.end.i588, label %if.end183.hdr_next_de.exit597.thread_crit_edge

if.end183.hdr_next_de.exit597.thread_crit_edge:   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_next_de.exit597.thread

if.end.i588:                                      ; preds = %if.end183
  %size.i586 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i593683686, i32 0, i32 1
  %219 = ptrtoint ptr %size.i586 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %size.i586, align 4
  %221 = call i16 @llvm.bswap.i16(i16 %220) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %221)
  %cmp2.i587 = icmp ult i16 %221, 16
  br i1 %cmp2.i587, label %if.end.i588.hdr_next_de.exit597.thread_crit_edge, label %lor.lhs.false.i595

if.end.i588.hdr_next_de.exit597.thread_crit_edge: ; preds = %if.end.i588
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_next_de.exit597.thread

lor.lhs.false.i595:                               ; preds = %if.end.i588
  %conv.i589 = zext i16 %221 to i32
  %add.i590 = add i32 %sub.i583, 16
  %add5.i591 = add i32 %add.i590, %conv.i589
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i591, i32 %218)
  %cmp6.i592 = icmp ugt i32 %add5.i591, %218
  br i1 %cmp6.i592, label %lor.lhs.false.i595.hdr_next_de.exit597.thread_crit_edge, label %hdr_next_de.exit597

lor.lhs.false.i595.hdr_next_de.exit597.thread_crit_edge: ; preds = %lor.lhs.false.i595
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_next_de.exit597.thread

hdr_next_de.exit597.thread:                       ; preds = %lor.lhs.false.i595.hdr_next_de.exit597.thread_crit_edge, %if.end.i588.hdr_next_de.exit597.thread_crit_edge, %if.end183.hdr_next_de.exit597.thread_crit_edge
  %222 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %e, align 4
  br label %fnd_put.exit

hdr_next_de.exit597:                              ; preds = %lor.lhs.false.i595
  %add.ptr.i593 = getelementptr i8, ptr %add.ptr.i593683686, i32 %conv.i589
  %223 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %add.ptr.i593, ptr %e, align 4
  %tobool185.not = icmp eq ptr %add.ptr.i593, null
  br i1 %tobool185.not, label %hdr_next_de.exit597.fnd_put.exit_crit_edge, label %while.cond

hdr_next_de.exit597.fnd_put.exit_crit_edge:       ; preds = %hdr_next_de.exit597
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

while.end:                                        ; preds = %land.lhs.true178.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.then174.while.end_crit_edge
  %.lcssa682 = phi ptr [ %e.promoted, %if.then174.while.end_crit_edge ], [ %add.ptr.i593683686, %land.lhs.true178.while.end_crit_edge ], [ %add.ptr.i593, %while.cond.while.end_crit_edge ]
  %prev.0.lcssa = phi ptr [ null, %if.then174.while.end_crit_edge ], [ %prev.0687, %land.lhs.true178.while.end_crit_edge ], [ %add.ptr.i593683686, %while.cond.while.end_crit_edge ]
  %.lcssa = phi i16 [ %202, %if.then174.while.end_crit_edge ], [ %208, %land.lhs.true178.while.end_crit_edge ], [ %206, %while.cond.while.end_crit_edge ]
  %tobool.i576.not.lcssa = phi i1 [ false, %if.then174.while.end_crit_edge ], [ true, %land.lhs.true178.while.end_crit_edge ], [ false, %while.cond.while.end_crit_edge ]
  %flags.i575.le = getelementptr inbounds %struct.NTFS_DE, ptr %.lcssa682, i32 0, i32 3
  %size.i598 = getelementptr inbounds %struct.NTFS_DE, ptr %.lcssa682, i32 0, i32 1
  %224 = ptrtoint ptr %size.i598 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %size.i598, align 4
  %226 = call i16 @llvm.bswap.i16(i16 %225) #16
  %conv.i599 = zext i16 %226 to i32
  %sub.i600 = add nsw i32 %conv.i599, -8
  %add.ptr.i601 = getelementptr i8, ptr %.lcssa682, i32 %sub.i600
  %227 = ptrtoint ptr %add.ptr.i601 to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %add.ptr.i601, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub_vbn.0.lcssa, i64 %228)
  %cmp189.not = icmp eq i64 %sub_vbn.0.lcssa, %228
  br i1 %cmp189.not, label %if.end192, label %while.end.fnd_put.exit_crit_edge

while.end.fnd_put.exit_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end192:                                        ; preds = %while.end
  br i1 %tobool.i576.not.lcssa, label %if.end192.if.end210_crit_edge, label %if.then194

if.end192.if.end210_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end210

if.then194:                                       ; preds = %if.end192
  %tobool195.not = icmp eq ptr %prev.0.lcssa, null
  br i1 %tobool195.not, label %if.then194.fnd_put.exit_crit_edge, label %if.end197

if.then194.fnd_put.exit_crit_edge:                ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end197:                                        ; preds = %if.then194
  %flags.i604 = getelementptr inbounds %struct.NTFS_DE, ptr %prev.0.lcssa, i32 0, i32 3
  %229 = ptrtoint ptr %flags.i604 to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %flags.i604, align 4
  %231 = and i16 %230, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool.i605.not = icmp eq i16 %231, 0
  br i1 %tobool.i605.not, label %if.else201, label %if.then199

if.then199:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #18
  %size.i606 = getelementptr inbounds %struct.NTFS_DE, ptr %prev.0.lcssa, i32 0, i32 1
  %232 = ptrtoint ptr %size.i606 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %size.i606, align 4
  %234 = call i16 @llvm.bswap.i16(i16 %233) #16
  %conv.i607 = zext i16 %234 to i32
  %sub.i608 = add nsw i32 %conv.i607, -8
  %add.ptr.i609 = getelementptr i8, ptr %prev.0.lcssa, i32 %sub.i608
  %235 = ptrtoint ptr %add.ptr.i609 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %add.ptr.i609, align 8
  %237 = ptrtoint ptr %add.ptr.i601 to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %236, ptr %add.ptr.i601, align 8
  br label %if.end209

if.else201:                                       ; preds = %if.end197
  %238 = and i16 %.lcssa, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %tobool.i615.not = icmp eq i16 %238, 0
  br i1 %tobool.i615.not, label %if.else201.if.end209_crit_edge, label %if.then203

if.else201.if.end209_crit_edge:                   ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end209

if.then203:                                       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i616 = add i16 %226, -8
  %239 = call i16 @llvm.bswap.i16(i16 %sub.i616) #16
  %240 = ptrtoint ptr %size.i598 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %239, ptr %size.i598, align 2
  %241 = and i16 %.lcssa, -257
  %242 = ptrtoint ptr %flags.i575.le to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %241, ptr %flags.i575.le, align 4
  %used207 = getelementptr inbounds %struct.INDEX_HDR, ptr %spec.select, i32 0, i32 1
  %243 = ptrtoint ptr %used207 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %used207, align 4
  %245 = call i32 @llvm.bswap.i32(i32 %244) #16
  %sub.i617 = add i32 %245, -8
  %246 = call i32 @llvm.bswap.i32(i32 %sub.i617) #16
  %247 = ptrtoint ptr %used207 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %246, ptr %used207, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then203, %if.else201.if.end209_crit_edge, %if.then199
  %248 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %prev.0.lcssa, ptr %e, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.end209, %if.end192.if.end210_crit_edge
  %249 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %e, align 4
  %size211 = getelementptr inbounds %struct.NTFS_DE, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %size211 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %size211, align 4
  %253 = call i16 @llvm.bswap.i16(i16 %252)
  %conv212 = zext i16 %253 to i32
  %call213 = call ptr @kmemdup(ptr noundef %250, i32 noundef %conv212, i32 noundef 3136) #16
  %tobool214.not = icmp eq ptr %call213, null
  br i1 %tobool214.not, label %if.end210.fnd_put.exit_crit_edge, label %if.end216

if.end210.fnd_put.exit_crit_edge:                 ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end216:                                        ; preds = %if.end210
  %flags.i618 = getelementptr inbounds %struct.NTFS_DE, ptr %call213, i32 0, i32 3
  %254 = ptrtoint ptr %flags.i618 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %flags.i618, align 4
  %256 = and i16 %255, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %256)
  %tobool.i619.not = icmp eq i16 %256, 0
  br i1 %tobool.i619.not, label %if.end216.if.end224_crit_edge, label %if.then218

if.end216.if.end224_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end224

if.then218:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #18
  %257 = and i16 %255, -257
  %258 = ptrtoint ptr %flags.i618 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %257, ptr %flags.i618, align 4
  %size223 = getelementptr inbounds %struct.NTFS_DE, ptr %call213, i32 0, i32 1
  %259 = ptrtoint ptr %size223 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %size223, align 2
  %261 = call i16 @llvm.bswap.i16(i16 %260) #16
  %sub.i620 = add i16 %261, -8
  %262 = call i16 @llvm.bswap.i16(i16 %sub.i620) #16
  %263 = ptrtoint ptr %size223 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %262, ptr %size223, align 2
  br label %if.end224

if.end224:                                        ; preds = %if.then218, %if.end216.if.end224_crit_edge
  %264 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %e, align 4
  %call225 = call fastcc ptr @hdr_delete_de(ptr noundef %spec.select, ptr noundef %265)
  br i1 %cmp170.not, label %if.then229, label %if.else234

if.then229:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #18
  %used230 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call80, i32 0, i32 5, i32 1
  %266 = ptrtoint ptr %used230 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %used230, align 4
  %total231 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call80, i32 0, i32 5, i32 2
  %268 = ptrtoint ptr %total231 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %total231, align 4
  %269 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mi, align 4
  %271 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %attr, align 4
  %sub232 = sub nsw i32 0, %conv212
  %call233 = call zeroext i1 @mi_resize_attr(ptr noundef %270, ptr noundef %272, i32 noundef %sub232) #16
  br label %if.end236

if.else234:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #18
  %index.i621 = getelementptr inbounds %struct.indx_node, ptr %n2d.2, i32 0, i32 1
  %273 = ptrtoint ptr %index.i621 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %index.i621, align 4
  %sbi.i622 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %275 = ptrtoint ptr %sbi.i622 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %sbi.i622, align 4
  %call.i623 = call i32 @ntfs_write_bh(ptr noundef %276, ptr noundef %274, ptr noundef %n2d.2, i32 noundef 0) #16
  br label %if.end236

if.end236:                                        ; preds = %if.else234, %if.then229
  %level.2 = phi i32 [ 0, %if.then229 ], [ %level.1.lcssa, %if.else234 ]
  %277 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %level.2, i32 %278)
  %cmp239699 = icmp slt i32 %level.2, %278
  br i1 %cmp239699, label %for.body241.lr.ph, label %if.end236.for.end258_crit_edge

if.end236.for.end258_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end258

for.body241.lr.ph:                                ; preds = %if.end236
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  br label %for.body241

for.body241:                                      ; preds = %for.inc256.for.body241_crit_edge, %for.body241.lr.ph
  %trim_bit.0701 = phi i32 [ -1, %for.body241.lr.ph ], [ %trim_bit.2, %for.inc256.for.body241_crit_edge ]
  %level.3700 = phi i32 [ %level.2, %for.body241.lr.ph ], [ %inc257, %for.inc256.for.body241_crit_edge ]
  %arrayidx243 = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %level.3700
  %279 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %arrayidx243, align 4
  %index244 = getelementptr inbounds %struct.indx_node, ptr %280, i32 0, i32 1
  %281 = ptrtoint ptr %index244 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %index244, align 4
  %call245 = call fastcc zeroext i1 @ib_is_empty(ptr noundef %282)
  br i1 %call245, label %if.then246, label %for.body241.for.inc256_crit_edge

for.body241.for.inc256_crit_edge:                 ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc256

if.then246:                                       ; preds = %for.body241
  call void @__sanitizer_cov_trace_pc() #18
  %vbn247 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %vbn247 to i32
  call void @__asan_load8_noabort(i32 %283)
  %284 = load i64, ptr %vbn247, align 8
  %285 = call i64 @llvm.bswap.i64(i64 %284)
  %286 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %idx2vbn_bits, align 1
  %sh_prom = zext i8 %287 to i64
  %shr = lshr i64 %285, %sh_prom
  %conv249 = trunc i64 %shr to i32
  call fastcc void @indx_mark_free(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv249)
  %288 = call i32 @llvm.umin.i32(i32 %trim_bit.0701, i32 %conv249)
  br label %for.inc256

for.inc256:                                       ; preds = %if.then246, %for.body241.for.inc256_crit_edge
  %trim_bit.2 = phi i32 [ %288, %if.then246 ], [ %trim_bit.0701, %for.body241.for.inc256_crit_edge ]
  %inc257 = add nsw i32 %level.3700, 1
  %289 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %call7.i.i.i, align 8
  %cmp239 = icmp slt i32 %inc257, %290
  br i1 %cmp239, label %for.inc256.for.body241_crit_edge, label %for.inc256.for.end258_crit_edge

for.inc256.for.end258_crit_edge:                  ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end258

for.inc256.for.body241_crit_edge:                 ; preds = %for.inc256
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body241

for.end258:                                       ; preds = %for.inc256.for.end258_crit_edge, %if.end236.for.end258_crit_edge
  %trim_bit.0.lcssa = phi i32 [ -1, %if.end236.for.end258_crit_edge ], [ %trim_bit.2, %for.inc256.for.end258_crit_edge ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i)
  %call259 = call i32 @indx_insert_entry(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %call213, ptr noundef %ctx, ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext false)
  call void @kfree(ptr noundef nonnull %call213) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call259)
  %tobool260.not = icmp eq i32 %call259, 0
  br i1 %tobool260.not, label %if.end262, label %for.end258.fnd_put.exit_crit_edge

for.end258.fnd_put.exit_crit_edge:                ; preds = %for.end258
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end262:                                        ; preds = %for.end258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %trim_bit.0.lcssa)
  %cmp263.not = icmp eq i32 %trim_bit.0.lcssa, -1
  br i1 %cmp263.not, label %if.end262.fnd_put.exit_crit_edge, label %if.then265

if.end262.fnd_put.exit_crit_edge:                 ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.then265:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @indx_shrink(ptr noundef %indx, ptr noundef %ni, i32 noundef %trim_bit.0.lcssa)
  br label %fnd_put.exit

if.else268:                                       ; preds = %lor.lhs.false172
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i)
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i509)
  %291 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %type.i, align 1
  %idxprom = zext i8 %292 to i32
  %arrayidx269 = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  %293 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx269, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %295 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %name_len, align 4
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %call270 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %294, i8 noundef zeroext %296, ptr noundef %alloc_run, i64 noundef 0, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #16
  %conv273 = zext i8 %296 to i32
  %call274 = call i32 @ni_remove_attr(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %294, i32 noundef %conv273, i1 noundef zeroext false, ptr noundef null) #16
  %297 = ptrtoint ptr %alloc_run to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %alloc_run, align 4
  call void @kvfree(ptr noundef %298) #16
  %299 = call ptr @memset(ptr %alloc_run, i32 0, i32 12)
  %call278 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %294, i8 noundef zeroext %296, ptr noundef %indx, i64 noundef 0, ptr noundef null, i1 noundef zeroext false, ptr noundef null) #16
  %call282 = call i32 @ni_remove_attr(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %294, i32 noundef %conv273, i1 noundef zeroext false, ptr noundef null) #16
  %300 = ptrtoint ptr %indx to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %indx, align 4
  call void @kvfree(ptr noundef %301) #16
  %302 = call ptr @memset(ptr %indx, i32 0, i32 12)
  %call284 = call ptr @indx_get_root(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %attr, ptr noundef nonnull %mi)
  %tobool285.not = icmp eq ptr %call284, null
  br i1 %tobool285.not, label %if.else268.fnd_put.exit_crit_edge, label %if.end287

if.else268.fnd_put.exit_crit_edge:                ; preds = %if.else268
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end287:                                        ; preds = %if.else268
  %303 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %attr, align 4
  %305 = getelementptr inbounds %struct.ATTRIB, ptr %304, i32 0, i32 7
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %305, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %307)
  %cmp288.not = icmp eq i32 %307, 805306368
  br i1 %cmp288.not, label %if.end287.if.end294_crit_edge, label %land.lhs.true290

if.end287.if.end294_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end294

land.lhs.true290:                                 ; preds = %if.end287
  %308 = call i32 @llvm.bswap.i32(i32 %307)
  %309 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mi, align 4
  %sub291 = sub i32 48, %308
  %call292 = call zeroext i1 @mi_resize_attr(ptr noundef %310, ptr noundef %304, i32 noundef %sub291) #16
  br i1 %call292, label %land.lhs.true290.if.end294_crit_edge, label %land.lhs.true290.fnd_put.exit_crit_edge

land.lhs.true290.fnd_put.exit_crit_edge:          ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

land.lhs.true290.if.end294_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end294

if.end294:                                        ; preds = %land.lhs.true290.if.end294_crit_edge, %if.end287.if.end294_crit_edge
  %add.ptr = getelementptr %struct.INDEX_ROOT, ptr %call284, i32 1
  %311 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %add.ptr, ptr %e, align 4
  %312 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %add.ptr, align 4
  %313 = load ptr, ptr %e, align 4
  %high = getelementptr inbounds %struct.MFT_REF, ptr %313, i32 0, i32 1
  %314 = ptrtoint ptr %high to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 0, ptr %high, align 4
  %seq = getelementptr inbounds %struct.MFT_REF, ptr %313, i32 0, i32 2
  %315 = ptrtoint ptr %seq to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 0, ptr %seq, align 2
  %size295 = getelementptr inbounds %struct.NTFS_DE, ptr %313, i32 0, i32 1
  %316 = ptrtoint ptr %size295 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 4096, ptr %size295, align 4
  %flags296 = getelementptr inbounds %struct.NTFS_DE, ptr %313, i32 0, i32 3
  %317 = ptrtoint ptr %flags296 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 512, ptr %flags296, align 4
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %313, i32 0, i32 2
  %318 = ptrtoint ptr %key_size to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 0, ptr %key_size, align 2
  %res = getelementptr inbounds %struct.NTFS_DE, ptr %313, i32 0, i32 4
  %319 = ptrtoint ptr %res to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %res, align 2
  %flags298 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call284, i32 0, i32 5, i32 3
  %320 = ptrtoint ptr %flags298 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %flags298, align 4
  %total300 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call284, i32 0, i32 5, i32 2
  %321 = ptrtoint ptr %total300 to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 536870912, ptr %total300, align 4
  %used301 = getelementptr inbounds %struct.INDEX_ROOT, ptr %call284, i32 0, i32 5, i32 1
  %322 = ptrtoint ptr %used301 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 536870912, ptr %used301, align 4
  %323 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %324, i32 0, i32 5
  %325 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 1, ptr %dirty, align 4
  br label %fnd_put.exit

fnd_put.exit.loopexit651:                         ; preds = %lor.lhs.false.i.fnd_put.exit.loopexit651_crit_edge, %if.end.i548.fnd_put.exit.loopexit651_crit_edge, %for.inc.fnd_put.exit.loopexit651_crit_edge, %cond.end97.fnd_put.exit.loopexit651_crit_edge
  %326 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr null, ptr %e, align 4
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %fnd_put.exit.loopexit651, %if.end294, %land.lhs.true290.fnd_put.exit_crit_edge, %if.else268.fnd_put.exit_crit_edge, %if.then265, %if.end262.fnd_put.exit_crit_edge, %for.end258.fnd_put.exit_crit_edge, %if.end210.fnd_put.exit_crit_edge, %if.then194.fnd_put.exit_crit_edge, %while.end.fnd_put.exit_crit_edge, %hdr_next_de.exit597.fnd_put.exit_crit_edge, %hdr_next_de.exit597.thread, %for.end160.fnd_put.exit_crit_edge, %cleanup, %if.end79.fnd_put.exit_crit_edge, %lor.lhs.false75.fnd_put.exit_crit_edge, %cond.end.fnd_put.exit_crit_edge, %if.else41.fnd_put.exit_crit_edge, %if.then28, %lor.lhs.false.fnd_put.exit_crit_edge, %if.end12.fnd_put.exit_crit_edge, %if.end8.fnd_put.exit_crit_edge, %indx_get_root.exit.fnd_put.exit_crit_edge, %indx_get_root.exit.thread
  %err.2 = phi i32 [ %call9, %if.end8.fnd_put.exit_crit_edge ], [ %call43, %if.else41.fnd_put.exit_crit_edge ], [ %cond, %cond.end.fnd_put.exit_crit_edge ], [ %call259, %for.end258.fnd_put.exit_crit_edge ], [ 0, %if.then265 ], [ 0, %if.end262.fnd_put.exit_crit_edge ], [ %call282, %if.end294 ], [ %156, %cleanup ], [ 0, %lor.lhs.false75.fnd_put.exit_crit_edge ], [ 0, %if.then28 ], [ -22, %indx_get_root.exit.fnd_put.exit_crit_edge ], [ -2, %lor.lhs.false.fnd_put.exit_crit_edge ], [ -2, %if.end12.fnd_put.exit_crit_edge ], [ -22, %if.end79.fnd_put.exit_crit_edge ], [ -22, %for.end160.fnd_put.exit_crit_edge ], [ -22, %while.end.fnd_put.exit_crit_edge ], [ -22, %if.then194.fnd_put.exit_crit_edge ], [ -12, %if.end210.fnd_put.exit_crit_edge ], [ -22, %if.else268.fnd_put.exit_crit_edge ], [ -22, %land.lhs.true290.fnd_put.exit_crit_edge ], [ -22, %indx_get_root.exit.thread ], [ -22, %hdr_next_de.exit597.thread ], [ -22, %fnd_put.exit.loopexit651 ], [ -22, %hdr_next_de.exit597.fnd_put.exit_crit_edge ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i509) #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i509) #16
  br label %fnd_put.exit629

fnd_put.exit629:                                  ; preds = %fnd_put.exit, %if.end.fnd_put.exit629_crit_edge
  %err.3 = phi i32 [ %err.2, %fnd_put.exit ], [ -12, %if.end.fnd_put.exit629_crit_edge ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup303

cleanup303:                                       ; preds = %fnd_put.exit629, %entry.cleanup303_crit_edge
  %err.4 = phi i32 [ %err.3, %fnd_put.exit629 ], [ -12, %entry.cleanup303_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %attr) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %re) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #16
  ret i32 %err.4
}

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc ptr @hdr_delete_de(ptr noundef %hdr, ptr noundef %re) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %used1 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %used1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %re, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %size, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %re to i32
  %7 = ptrtoint ptr %hdr to i32
  %sub = sub i32 %6, %7
  %conv = zext i16 %5 to i32
  %8 = add i32 %sub, %conv
  %sub2 = sub i32 %2, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %2)
  %cmp.not = icmp uge i32 %sub, %2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp5 = icmp ult i16 %5, 16
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub2)
  %cmp8 = icmp ult i32 %sub2, 16
  %or.cond30 = select i1 %or.cond, i1 true, i1 %cmp8
  br i1 %or.cond30, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %sub11 = sub i32 %2, %conv
  %9 = tail call i32 @llvm.bswap.i32(i32 %sub11)
  %10 = ptrtoint ptr %used1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %used1, align 4
  %add.ptr = getelementptr i8, ptr %re, i32 %conv
  %11 = call ptr @memmove(ptr %re, ptr %add.ptr, i32 %sub2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %re, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mi_resize_attr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @ib_is_empty(ptr noundef readonly %ib) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2
  %0 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ihdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #16
  %used2.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used2.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  %add.ptr.i = getelementptr i8, ptr %ihdr, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp.not.i = icmp ult i32 %2, %5
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false.i:                                  ; preds = %entry
  %total.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %ib, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp3.not.i = icmp ult i32 %2, %8
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.lor.end_crit_edge

lor.lhs.false.i.lor.end_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %11)
  %cmp4.i = icmp ult i16 %11, 16
  br i1 %cmp4.i, label %if.end.i.lor.end_crit_edge, label %lor.lhs.false6.i

if.end.i.lor.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i = zext i16 %11 to i32
  %add.i = add i32 %2, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp8.i = icmp ugt i32 %add.i, %5
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %cmp8.i
  br i1 %or.cond, label %lor.lhs.false6.i.lor.end_crit_edge, label %lor.rhs

lor.lhs.false6.i.lor.end_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 4
  %14 = and i16 %13, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i = icmp ne i16 %14, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false6.i.lor.end_crit_edge, %if.end.i.lor.end_crit_edge, %lor.lhs.false.i.lor.end_crit_edge, %entry.lor.end_crit_edge
  %15 = phi i1 [ %tobool.i, %lor.rhs ], [ true, %lor.lhs.false.i.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ true, %if.end.i.lor.end_crit_edge ], [ true, %lor.lhs.false6.i.lor.end_crit_edge ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indx_get_entry_to_replace(ptr noundef %indx, ptr noundef %ni, ptr nocapture noundef readonly %de_next, ptr nocapture noundef writeonly %de_to_replace, ptr nocapture noundef %fnd) unnamed_addr #0 align 64 {
entry:
  %n = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %de_to_replace to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %de_to_replace, align 4
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %de_next, i32 0, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %size.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #16
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -8
  %add.ptr.i = getelementptr i8, ptr %de_next, i32 %sub.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #16
  %conv1.i = trunc i64 %6 to i32
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %n, align 4
  %call1119 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1119)
  %tobool.not120 = icmp eq i32 %call1119, 0
  br i1 %tobool.not120, label %entry.if.end_crit_edge, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end10.if.end_crit_edge, %entry.if.end_crit_edge
  %level.0121 = phi i32 [ %level.1, %if.end10.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %n, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %index, align 4
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ihdr, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #16
  %used2.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %11, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %used2.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #16
  %add.ptr.i75 = getelementptr i8, ptr %ihdr, i32 %14
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %17)
  %cmp.not.i = icmp ult i32 %14, %17
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.hdr_first_de.exit_crit_edge

if.end.hdr_first_de.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %total.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %11, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %20)
  %cmp3.not.i = icmp ult i32 %14, %20
  br i1 %cmp3.not.i, label %if.end.i77, label %lor.lhs.false.i.hdr_first_de.exit_crit_edge

lor.lhs.false.i.hdr_first_de.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

if.end.i77:                                       ; preds = %lor.lhs.false.i
  %size.i76 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i75, i32 0, i32 1
  %21 = ptrtoint ptr %size.i76 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size.i76, align 4
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %23)
  %cmp4.i = icmp ult i16 %23, 16
  br i1 %cmp4.i, label %if.end.i77.hdr_first_de.exit_crit_edge, label %lor.lhs.false6.i

if.end.i77.hdr_first_de.exit_crit_edge:           ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit

lor.lhs.false6.i:                                 ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i78 = zext i16 %23 to i32
  %add.i = add i32 %14, %conv.i78
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %17)
  %cmp8.i = icmp ugt i32 %add.i, %17
  %spec.select.i = select i1 %cmp8.i, ptr null, ptr %add.ptr.i75
  br label %hdr_first_de.exit

hdr_first_de.exit:                                ; preds = %lor.lhs.false6.i, %if.end.i77.hdr_first_de.exit_crit_edge, %lor.lhs.false.i.hdr_first_de.exit_crit_edge, %if.end.hdr_first_de.exit_crit_edge
  %retval.0.i = phi ptr [ null, %lor.lhs.false.i.hdr_first_de.exit_crit_edge ], [ null, %if.end.hdr_first_de.exit_crit_edge ], [ null, %if.end.i77.hdr_first_de.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false6.i ]
  %24 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fnd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %25)
  %cmp1.i = icmp ugt i32 %25, 19
  br i1 %cmp1.i, label %hdr_first_de.exit.fnd_push.exit_crit_edge, label %if.end.i80

hdr_first_de.exit.fnd_push.exit_crit_edge:        ; preds = %hdr_first_de.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_push.exit

if.end.i80:                                       ; preds = %hdr_first_de.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %9, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %25
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i, ptr %arrayidx2.i, align 4
  %28 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fnd, align 4
  %add.i79 = add i32 %29, 1
  store i32 %add.i79, ptr %fnd, align 4
  br label %fnd_push.exit

fnd_push.exit:                                    ; preds = %if.end.i80, %hdr_first_de.exit.fnd_push.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %retval.0.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 4
  %32 = and i16 %31, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.i.not = icmp eq i16 %32, 0
  br i1 %tobool.i.not, label %if.then5, label %fnd_push.exit.if.end7_crit_edge

fnd_push.exit.if.end7_crit_edge:                  ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.then5:                                         ; preds = %fnd_push.exit
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %fnd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fnd, align 4
  %sub = add i32 %34, -1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %fnd_push.exit.if.end7_crit_edge
  %level.1 = phi i32 [ %level.0121, %fnd_push.exit.if.end7_crit_edge ], [ %sub, %if.then5 ]
  %35 = and i16 %31, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.i82.not = icmp eq i16 %35, 0
  br i1 %tobool.i82.not, label %for.end, label %if.end10

if.end10:                                         ; preds = %if.end7
  %size.i83 = getelementptr inbounds %struct.NTFS_DE, ptr %retval.0.i, i32 0, i32 1
  %36 = ptrtoint ptr %size.i83 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size.i83, align 4
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #16
  %conv.i84 = zext i16 %38 to i32
  %sub.i85 = add nsw i32 %conv.i84, -8
  %add.ptr.i86 = getelementptr i8, ptr %retval.0.i, i32 %sub.i85
  %39 = ptrtoint ptr %add.ptr.i86 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.i86, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #16
  %conv1.i87 = trunc i64 %41 to i32
  %42 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %n, align 4
  %call1 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i87, ptr noundef nonnull %n)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10.if.end_crit_edge, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end10.if.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.end:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %level.1)
  %cmp = icmp eq i32 %level.1, -1
  br i1 %cmp, label %for.end.out_crit_edge, label %if.end13

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end13:                                         ; preds = %for.end
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 1, i32 %level.1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %n, align 4
  %index14 = getelementptr inbounds %struct.indx_node, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %index14, align 4
  %ihdr15 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %ihdr15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ihdr15, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #16
  %used2.i88 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %47, i32 0, i32 2, i32 1
  %51 = ptrtoint ptr %used2.i88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %used2.i88, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #16
  %add.ptr.i89 = getelementptr i8, ptr %ihdr15, i32 %50
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %53)
  %cmp.not.i90 = icmp ult i32 %50, %53
  br i1 %cmp.not.i90, label %lor.lhs.false.i93, label %if.end13.hdr_first_de.exit103_crit_edge

if.end13.hdr_first_de.exit103_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit103

lor.lhs.false.i93:                                ; preds = %if.end13
  %total.i91 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %47, i32 0, i32 2, i32 2
  %54 = ptrtoint ptr %total.i91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %total.i91, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %56)
  %cmp3.not.i92 = icmp ult i32 %50, %56
  br i1 %cmp3.not.i92, label %if.end.i96, label %lor.lhs.false.i93.hdr_first_de.exit103_crit_edge

lor.lhs.false.i93.hdr_first_de.exit103_crit_edge: ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit103

if.end.i96:                                       ; preds = %lor.lhs.false.i93
  %size.i94 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i89, i32 0, i32 1
  %57 = ptrtoint ptr %size.i94 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %size.i94, align 4
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %59)
  %cmp4.i95 = icmp ult i16 %59, 16
  br i1 %cmp4.i95, label %if.end.i96.hdr_first_de.exit103_crit_edge, label %lor.lhs.false6.i101

if.end.i96.hdr_first_de.exit103_crit_edge:        ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_first_de.exit103

lor.lhs.false6.i101:                              ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i97 = zext i16 %59 to i32
  %add.i98 = add i32 %50, %conv.i97
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98, i32 %53)
  %cmp8.i99 = icmp ugt i32 %add.i98, %53
  %spec.select.i100 = select i1 %cmp8.i99, ptr null, ptr %add.ptr.i89
  br label %hdr_first_de.exit103

hdr_first_de.exit103:                             ; preds = %lor.lhs.false6.i101, %if.end.i96.hdr_first_de.exit103_crit_edge, %lor.lhs.false.i93.hdr_first_de.exit103_crit_edge, %if.end13.hdr_first_de.exit103_crit_edge
  %retval.0.i102 = phi ptr [ null, %lor.lhs.false.i93.hdr_first_de.exit103_crit_edge ], [ null, %if.end13.hdr_first_de.exit103_crit_edge ], [ null, %if.end.i96.hdr_first_de.exit103_crit_edge ], [ %spec.select.i100, %lor.lhs.false6.i101 ]
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %retval.0.i102, i32 0, i32 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %size, align 4
  %62 = tail call i16 @llvm.bswap.i16(i16 %61)
  %conv = zext i16 %62 to i32
  %add = add nuw nsw i32 %conv, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3136) #20
  %tobool18.not = icmp eq ptr %call9.i, null
  br i1 %tobool18.not, label %hdr_first_de.exit103.out_crit_edge, label %if.end20

hdr_first_de.exit103.out_crit_edge:               ; preds = %hdr_first_de.exit103
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end20:                                         ; preds = %hdr_first_de.exit103
  %63 = ptrtoint ptr %de_to_replace to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call9.i, ptr %de_to_replace, align 4
  %64 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size, align 4
  %66 = tail call i16 @llvm.bswap.i16(i16 %65)
  %conv22 = zext i16 %66 to i32
  %67 = call ptr @memcpy(ptr %call9.i, ptr %retval.0.i102, i32 %conv22)
  %flags.i104 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 3
  %68 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %flags.i104, align 4
  %70 = and i16 %69, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool.i105.not = icmp eq i16 %70, 0
  br i1 %tobool.i105.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %size25 = getelementptr inbounds %struct.NTFS_DE, ptr %call9.i, i32 0, i32 1
  %71 = ptrtoint ptr %size25 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %size25, align 8
  %73 = tail call i16 @llvm.bswap.i16(i16 %72) #16
  %add.i106 = add i16 %73, 8
  %74 = tail call i16 @llvm.bswap.i16(i16 %add.i106) #16
  %75 = ptrtoint ptr %size25 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %size25, align 8
  %76 = or i16 %69, 256
  %77 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %flags.i104, align 4
  br label %if.end29

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @indx_free_children(ptr noundef %indx, ptr noundef %ni, ptr noundef %retval.0.i102, i1 noundef zeroext true)
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  %78 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %index14, align 4
  %ihdr31 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %79, i32 0, i32 2
  %used1.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %79, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %used1.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #16
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %size, align 4
  %85 = tail call i16 @llvm.bswap.i16(i16 %84) #16
  %86 = ptrtoint ptr %retval.0.i102 to i32
  %87 = ptrtoint ptr %ihdr31 to i32
  %sub.i108 = sub i32 %86, %87
  %conv.i109 = zext i16 %85 to i32
  %88 = add i32 %sub.i108, %conv.i109
  %sub2.i = sub i32 %82, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i108, i32 %82)
  %cmp.not.i110 = icmp uge i32 %sub.i108, %82
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %85)
  %cmp5.i = icmp ult i16 %85, 16
  %or.cond.i = select i1 %cmp.not.i110, i1 true, i1 %cmp5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub2.i)
  %cmp8.i111 = icmp ult i32 %sub2.i, 16
  %or.cond30.i = select i1 %or.cond.i, i1 true, i1 %cmp8.i111
  br i1 %or.cond30.i, label %if.end29.hdr_delete_de.exit_crit_edge, label %if.end.i113

if.end29.hdr_delete_de.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %hdr_delete_de.exit

if.end.i113:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %sub11.i = sub i32 %82, %conv.i109
  %89 = tail call i32 @llvm.bswap.i32(i32 %sub11.i) #16
  %90 = ptrtoint ptr %used1.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %used1.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %retval.0.i102, i32 %conv.i109
  %91 = call ptr @memmove(ptr %retval.0.i102, ptr %add.ptr.i112, i32 %sub2.i)
  br label %hdr_delete_de.exit

hdr_delete_de.exit:                               ; preds = %if.end.i113, %if.end29.hdr_delete_de.exit_crit_edge
  %retval.0.i114 = phi ptr [ %retval.0.i102, %if.end.i113 ], [ null, %if.end29.hdr_delete_de.exit_crit_edge ]
  %arrayidx33 = getelementptr %struct.ntfs_fnd, ptr %fnd, i32 0, i32 2, i32 %level.1
  %92 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %retval.0.i114, ptr %arrayidx33, align 4
  %93 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %index14, align 4
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %95 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sbi.i, align 4
  %call.i = tail call i32 @ntfs_write_bh(ptr noundef %96, ptr noundef %94, ptr noundef %44, i32 noundef 0) #16
  %flags.i115 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %79, i32 0, i32 2, i32 3
  %97 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags.i115, align 4
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i = icmp eq i8 %99, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %hdr_delete_de.exit.out_crit_edge

hdr_delete_de.exit.out_crit_edge:                 ; preds = %hdr_delete_de.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

land.lhs.true:                                    ; preds = %hdr_delete_de.exit
  %100 = ptrtoint ptr %ihdr31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ihdr31, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #16
  %103 = ptrtoint ptr %used1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %used1.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #16
  %add.ptr.i.i = getelementptr i8, ptr %ihdr31, i32 %102
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %105)
  %cmp.not.i.i = icmp ult i32 %102, %105
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %land.lhs.true
  %total.i.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %79, i32 0, i32 2, i32 2
  %106 = ptrtoint ptr %total.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %total.i.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %108)
  %cmp3.not.i.i = icmp ult i32 %102, %108
  br i1 %cmp3.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %size.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i, i32 0, i32 1
  %109 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %size.i.i, align 4
  %111 = tail call i16 @llvm.bswap.i16(i16 %110) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %111)
  %cmp4.i.i = icmp ult i16 %111, 16
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false6.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i.i:                               ; preds = %if.end.i.i
  %conv.i.i = zext i16 %111 to i32
  %add.i.i = add i32 %102, %conv.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %105)
  %cmp8.i.i = icmp ugt i32 %add.i.i, %105
  %tobool.not.i116 = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i117 = or i1 %tobool.not.i116, %cmp8.i.i
  br i1 %or.cond.i117, label %lor.lhs.false6.i.i.cleanup_crit_edge, label %ib_is_empty.exit

lor.lhs.false6.i.i.cleanup_crit_edge:             ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ib_is_empty.exit:                                 ; preds = %lor.lhs.false6.i.i
  %flags.i.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %flags.i.i, align 4
  %114 = and i16 %113, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool.i.i.not = icmp eq i16 %114, 0
  br i1 %tobool.i.i.not, label %ib_is_empty.exit.out_crit_edge, label %ib_is_empty.exit.cleanup_crit_edge

ib_is_empty.exit.cleanup_crit_edge:               ; preds = %ib_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ib_is_empty.exit.out_crit_edge:                   ; preds = %ib_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %ib_is_empty.exit.out_crit_edge, %hdr_delete_de.exit.out_crit_edge, %hdr_first_de.exit103.out_crit_edge, %for.end.out_crit_edge, %if.end10.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %for.end.out_crit_edge ], [ 0, %ib_is_empty.exit.out_crit_edge ], [ 0, %hdr_delete_de.exit.out_crit_edge ], [ -12, %hdr_first_de.exit103.out_crit_edge ], [ %call1119, %entry.out_crit_edge ], [ %call1, %if.end10.out_crit_edge ]
  tail call void @fnd_clear(ptr noundef %fnd)
  br label %cleanup

cleanup:                                          ; preds = %out, %ib_is_empty.exit.cleanup_crit_edge, %lor.lhs.false6.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %ib_is_empty.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %lor.lhs.false6.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @indx_free_children(ptr noundef %indx, ptr noundef %ni, ptr nocapture noundef readonly %e, i1 noundef zeroext %trim) unnamed_addr #0 align 64 {
entry:
  %bbuf.i = alloca %struct.bmp_buf, align 8
  %n = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #16
  %0 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %n, align 4, !annotation !20
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %size.i, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #16
  %conv.i = zext i16 %3 to i32
  %sub.i = add nsw i32 %conv.i, -8
  %add.ptr.i = getelementptr i8, ptr %e, i32 %sub.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #16
  %conv1.i = trunc i64 %6 to i32
  %call1 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i, ptr noundef nonnull %n)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %n, align 4
  %index = getelementptr inbounds %struct.indx_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %index, align 4
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %10, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %10, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags.i, align 4
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not = icmp eq i8 %13, 0
  br i1 %tobool.i.not, label %if.end.if.end11_crit_edge, label %if.then3

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %14 = ptrtoint ptr %ihdr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ihdr, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #16
  %used2.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %10, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %used2.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #16
  %add.ptr.i1 = getelementptr i8, ptr %ihdr, i32 %16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %19)
  %cmp.not.i = icmp ult i32 %16, %19
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

lor.lhs.false.i:                                  ; preds = %if.then3
  %total.i = getelementptr inbounds %struct.INDEX_BUFFER, ptr %10, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %total.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %22)
  %cmp3.not.i = icmp ult i32 %16, %22
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.if.end11_crit_edge

lor.lhs.false.i.if.end11_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i2 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i1, i32 0, i32 1
  %23 = ptrtoint ptr %size.i2 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size.i2, align 4
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %25)
  %cmp4.i = icmp ult i16 %25, 16
  br i1 %cmp4.i, label %if.end.i.if.end11_crit_edge, label %lor.lhs.false6.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i3 = zext i16 %25 to i32
  %add.i = add i32 %16, %conv.i3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %19)
  %cmp8.i = icmp ugt i32 %add.i, %19
  %tobool5.not20 = icmp eq ptr %add.ptr.i1, null
  %or.cond27 = select i1 %cmp8.i, i1 true, i1 %tobool5.not20
  br i1 %or.cond27, label %lor.lhs.false6.i.if.end11_crit_edge, label %for.body.lr.ph

lor.lhs.false6.i.if.end11_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.body.lr.ph:                                   ; preds = %lor.lhs.false6.i
  %26 = ptrtoint ptr %ihdr to i32
  br label %for.body

for.body:                                         ; preds = %lor.lhs.false.i14.for.body_crit_edge, %for.body.lr.ph
  %e.addr.021 = phi ptr [ %add.ptr.i1, %for.body.lr.ph ], [ %add.ptr.i12, %lor.lhs.false.i14.for.body_crit_edge ]
  tail call fastcc void @indx_free_children(ptr noundef %indx, ptr noundef %ni, ptr noundef nonnull %e.addr.021, i1 noundef zeroext false)
  %flags.i4 = getelementptr inbounds %struct.NTFS_DE, ptr %e.addr.021, i32 0, i32 3
  %27 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i4, align 4
  %29 = and i16 %28, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.i5.not = icmp eq i16 %29, 0
  br i1 %tobool.i5.not, label %for.inc, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

for.inc:                                          ; preds = %for.body
  %30 = ptrtoint ptr %e.addr.021 to i32
  %sub.i6 = sub i32 %30, %26
  %31 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %used2.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i6, i32 %33)
  %cmp.not.i7 = icmp ult i32 %sub.i6, %33
  br i1 %cmp.not.i7, label %if.end.i9, label %for.inc.if.end11_crit_edge

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end.i9:                                        ; preds = %for.inc
  %size.i8 = getelementptr inbounds %struct.NTFS_DE, ptr %e.addr.021, i32 0, i32 1
  %34 = ptrtoint ptr %size.i8 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %size.i8, align 4
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %36)
  %cmp2.i = icmp ult i16 %36, 16
  br i1 %cmp2.i, label %if.end.i9.if.end11_crit_edge, label %lor.lhs.false.i14

if.end.i9.if.end11_crit_edge:                     ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

lor.lhs.false.i14:                                ; preds = %if.end.i9
  %conv.i10 = zext i16 %36 to i32
  %add.i11 = add i32 %sub.i6, 16
  %add5.i = add i32 %add.i11, %conv.i10
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %33)
  %cmp6.i = icmp ugt i32 %add5.i, %33
  %add.ptr.i12 = getelementptr i8, ptr %e.addr.021, i32 %conv.i10
  %tobool5.not = icmp eq ptr %add.ptr.i12, null
  %or.cond = or i1 %cmp6.i, %tobool5.not
  br i1 %or.cond, label %lor.lhs.false.i14.if.end11_crit_edge, label %lor.lhs.false.i14.for.body_crit_edge

lor.lhs.false.i14.for.body_crit_edge:             ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

lor.lhs.false.i14.if.end11_crit_edge:             ; preds = %lor.lhs.false.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %lor.lhs.false.i14.if.end11_crit_edge, %if.end.i9.if.end11_crit_edge, %for.inc.if.end11_crit_edge, %for.body.if.end11_crit_edge, %lor.lhs.false6.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge, %lor.lhs.false.i.if.end11_crit_edge, %if.then3.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end11.put_indx_node.exit_crit_edge, label %if.end.i16

if.end11.put_indx_node.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_indx_node.exit

if.end.i16:                                       ; preds = %if.end11
  %37 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %index, align 4
  tail call void @kfree(ptr noundef %38) #16
  %nbufs1.i.i = getelementptr inbounds %struct.ntfs_buffers, ptr %8, i32 0, i32 2
  %39 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbufs1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.end.i16.nb_put.exit.i_crit_edge, label %if.end.i16.for.body.i.i_crit_edge

if.end.i16.for.body.i.i_crit_edge:                ; preds = %if.end.i16
  br label %for.body.i.i

if.end.i16.nb_put.exit.i_crit_edge:               ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %nb_put.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i16.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i16.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %8, i32 0, i32 %i.010.i.i
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #16
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #16, !srcloc !23
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %40
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %nbufs1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %nbufs1.i.i, align 4
  br label %nb_put.exit.i

nb_put.exit.i:                                    ; preds = %for.end.i.i, %if.end.i16.nb_put.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %8) #16
  br label %put_indx_node.exit

put_indx_node.exit:                               ; preds = %nb_put.exit.i, %if.end11.put_indx_node.exit_crit_edge
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %45 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %idx2vbn_bits, align 1
  %conv = zext i8 %46 to i32
  %shr = lshr i32 %conv1.i, %conv
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bbuf.i) #16
  %47 = call ptr @memset(ptr %bbuf.i, i32 255, i32 32)
  %call.i = call fastcc i32 @bmp_buf_get(ptr noundef %indx, ptr noundef %ni, i32 noundef %shr, ptr noundef nonnull %bbuf.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %if.end.i19, label %put_indx_node.exit.indx_mark_free.exit_crit_edge

put_indx_node.exit.indx_mark_free.exit_crit_edge: ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_mark_free.exit

if.end.i19:                                       ; preds = %put_indx_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  %48 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf.i, i32 0, i32 4
  %49 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf.i, i32 0, i32 3
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %48, align 8
  %sub.i18 = sub i32 %shr, %51
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %49, align 4
  %rem.i.i = and i32 %sub.i18, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %sub.i18, 5
  %add.ptr.i.i = getelementptr i32, ptr %53, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %54 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %55, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  call fastcc void @bmp_buf_put(ptr noundef nonnull %bbuf.i) #16
  br label %indx_mark_free.exit

indx_mark_free.exit:                              ; preds = %if.end.i19, %put_indx_node.exit.indx_mark_free.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bbuf.i) #16
  br i1 %trim, label %if.end15, label %indx_mark_free.exit.cleanup_crit_edge

indx_mark_free.exit.cleanup_crit_edge:            ; preds = %indx_mark_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15:                                         ; preds = %indx_mark_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add = add i32 %shr, 1
  call fastcc void @indx_shrink(ptr noundef %indx, ptr noundef %ni, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %indx_mark_free.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @indx_find_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef %root, i64 noundef %vbn, ptr noundef %n) unnamed_addr #0 align 64 {
entry:
  %n.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %n.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %n, ptr %n.addr, align 4
  %tobool.not = icmp eq ptr %n, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %index = getelementptr inbounds %struct.indx_node, ptr %n, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %index, align 4
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %2, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ihdr1 = getelementptr inbounds %struct.INDEX_ROOT, ptr %root, i32 0, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %ihdr, %cond.true ], [ %ihdr1, %cond.false ]
  %3 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cond, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  %used2.i = getelementptr inbounds %struct.INDEX_HDR, ptr %cond, i32 0, i32 1
  %6 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used2.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  %add.ptr.i = getelementptr i8, ptr %cond, i32 %5
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %8)
  %cmp.not.i = icmp ult i32 %5, %8
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %cond.end
  %total.i = getelementptr inbounds %struct.INDEX_HDR, ptr %cond, i32 0, i32 2
  %9 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp3.not.i = icmp ult i32 %5, %11
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %14)
  %cmp4.i = icmp ult i16 %14, 16
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i = zext i16 %14 to i32
  %add.i = add i32 %5, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %8)
  %cmp8.i = icmp ugt i32 %add.i, %8
  %tobool2.not80 = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %cmp8.i, %tobool2.not80
  br i1 %or.cond, label %lor.lhs.false6.i.cleanup_crit_edge, label %if.end.lr.ph

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.lr.ph:                                     ; preds = %lor.lhs.false6.i
  %15 = ptrtoint ptr %cond to i32
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false.i65.if.end_crit_edge, %if.end.lr.ph
  %e.081 = phi ptr [ %add.ptr.i, %if.end.lr.ph ], [ %add.ptr.i63, %lor.lhs.false.i65.if.end_crit_edge ]
  %flags.i = getelementptr inbounds %struct.NTFS_DE, ptr %e.081, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 4
  %18 = and i16 %17, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i.not = icmp eq i16 %18, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %size.i52 = getelementptr inbounds %struct.NTFS_DE, ptr %e.081, i32 0, i32 1
  %19 = ptrtoint ptr %size.i52 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.i52, align 4
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #16
  %conv.i53 = zext i16 %21 to i32
  %sub.i = add nsw i32 %conv.i53, -8
  %add.ptr.i54 = getelementptr i8, ptr %e.081, i32 %sub.i
  %22 = ptrtoint ptr %add.ptr.i54 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %vbn)
  %cmp = icmp eq i64 %23, %vbn
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %24 = and i16 %17, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i56.not = icmp eq i16 %24, 0
  br i1 %tobool.i56.not, label %for.inc, label %if.end7.for.cond12_crit_edge

if.end7.for.cond12_crit_edge:                     ; preds = %if.end7
  br label %for.cond12

for.inc:                                          ; preds = %if.end7
  %25 = ptrtoint ptr %e.081 to i32
  %sub.i57 = sub i32 %25, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i57, i32 %8)
  %cmp.not.i58 = icmp ult i32 %sub.i57, %8
  br i1 %cmp.not.i58, label %if.end.i60, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i60:                                       ; preds = %for.inc
  %size.i59 = getelementptr inbounds %struct.NTFS_DE, ptr %e.081, i32 0, i32 1
  %26 = ptrtoint ptr %size.i59 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size.i59, align 4
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %28)
  %cmp2.i = icmp ult i16 %28, 16
  br i1 %cmp2.i, label %if.end.i60.cleanup_crit_edge, label %lor.lhs.false.i65

if.end.i60.cleanup_crit_edge:                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i65:                                ; preds = %if.end.i60
  %conv.i61 = zext i16 %28 to i32
  %add.i62 = add i32 %sub.i57, 16
  %add5.i = add i32 %add.i62, %conv.i61
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %8)
  %cmp6.i = icmp ugt i32 %add5.i, %8
  %add.ptr.i63 = getelementptr i8, ptr %e.081, i32 %conv.i61
  %tobool2.not = icmp eq ptr %add.ptr.i63, null
  %or.cond92 = select i1 %cmp6.i, i1 true, i1 %tobool2.not
  br i1 %or.cond92, label %lor.lhs.false.i65.cleanup_crit_edge, label %lor.lhs.false.i65.if.end_crit_edge

lor.lhs.false.i65.if.end_crit_edge:               ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

lor.lhs.false.i65.cleanup_crit_edge:              ; preds = %lor.lhs.false.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond12:                                       ; preds = %if.end28, %if.end7.for.cond12_crit_edge
  %e.1 = phi ptr [ %add.ptr29, %if.end28 ], [ %add.ptr.i, %if.end7.for.cond12_crit_edge ]
  %flags.i67 = getelementptr inbounds %struct.NTFS_DE, ptr %e.1, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i67, align 4
  %31 = and i16 %30, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i, label %for.cond12.if.end25_crit_edge, label %de_has_vcn_ex.exit

for.cond12.if.end25_crit_edge:                    ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

de_has_vcn_ex.exit:                               ; preds = %for.cond12
  %size.i68 = getelementptr inbounds %struct.NTFS_DE, ptr %e.1, i32 0, i32 1
  %32 = ptrtoint ptr %size.i68 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %size.i68, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #16
  %conv1.i = zext i16 %34 to i32
  %sub.i69 = add nsw i32 %conv1.i, -8
  %add.ptr.i70 = getelementptr i8, ptr %e.1, i32 %sub.i69
  %35 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %36)
  %cmp.i.not = icmp eq i64 %36, -1
  br i1 %cmp.i.not, label %de_has_vcn_ex.exit.if.end25_crit_edge, label %if.then14

de_has_vcn_ex.exit.if.end25_crit_edge:            ; preds = %de_has_vcn_ex.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.then14:                                        ; preds = %de_has_vcn_ex.exit
  %37 = ptrtoint ptr %size.i68 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %size.i68, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #16
  %conv.i72 = zext i16 %39 to i32
  %sub.i73 = add nsw i32 %conv.i72, -8
  %add.ptr.i74 = getelementptr i8, ptr %e.1, i32 %sub.i73
  %40 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.i74, align 8
  %42 = tail call i64 @llvm.bswap.i64(i64 %41) #16
  %conv1.i75 = trunc i64 %42 to i32
  %call16 = call i32 @indx_read(ptr noundef %indx, ptr noundef %ni, i32 noundef %conv1.i75, ptr noundef nonnull %n.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %43 = inttoptr i32 %call16 to ptr
  br label %cleanup

if.end20:                                         ; preds = %if.then14
  %44 = ptrtoint ptr %n.addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %n.addr, align 4
  %call21 = tail call fastcc ptr @indx_find_buffer(ptr noundef %indx, ptr noundef %ni, ptr noundef %root, i64 noundef %vbn, ptr noundef %45)
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end25

if.end25:                                         ; preds = %if.end20.if.end25_crit_edge, %de_has_vcn_ex.exit.if.end25_crit_edge, %for.cond12.if.end25_crit_edge
  %46 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags.i67, align 4
  %48 = and i16 %47, 512
  %tobool.i77.not = icmp eq i16 %48, 0
  br i1 %tobool.i77.not, label %if.end28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %e.1, i32 0, i32 1
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %size, align 4
  %51 = tail call i16 @llvm.bswap.i16(i16 %50)
  %conv = zext i16 %51 to i32
  %add.ptr29 = getelementptr i8, ptr %e.1, i32 %conv
  br label %for.cond12

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then18, %lor.lhs.false.i65.cleanup_crit_edge, %if.end.i60.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %43, %if.then18 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false6.i.cleanup_crit_edge ], [ null, %if.end25.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.i65.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i60.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.cleanup_crit_edge ], [ %n, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @indx_mark_free(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit) unnamed_addr #0 align 64 {
entry:
  %bbuf = alloca %struct.bmp_buf, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bbuf) #16
  %0 = call ptr @memset(ptr %bbuf, i32 255, i32 32)
  %call = call fastcc i32 @bmp_buf_get(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit, ptr noundef nonnull %bbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 4
  %2 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %sub = sub i32 %bit, %4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %6, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %8, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  call fastcc void @bmp_buf_put(ptr noundef nonnull %bbuf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bbuf) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @indx_shrink(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit) unnamed_addr #0 align 64 {
entry:
  %bpb = alloca i64, align 8
  %new_data = alloca i64, align 8
  %le = alloca ptr, align 4
  %used = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bpb) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_data) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #16
  %0 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %le, align 4
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %5 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %name_len, align 4
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1342177280, ptr noundef %4, i8 noundef zeroext %6, ptr noundef null, ptr noundef null) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool1.not = icmp eq i8 %8, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %9 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %mul = shl i32 %12, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %bit)
  %cmp.not = icmp ugt i32 %mul, %bit
  br i1 %cmp.not, label %if.end5, label %if.then2.cleanup48_crit_edge

if.then2.cleanup48_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end5:                                          ; preds = %if.then2
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data_off.i, align 4
  %15 = call i16 @llvm.bswap.i16(i16 %14) #16
  %conv.i = zext i16 %15 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %call6 = call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef %mul, i32 noundef %bit) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %mul)
  %cmp7.not = icmp ult i32 %call6, %mul
  br i1 %cmp7.not, label %if.end5.cleanup48_crit_edge, label %if.end5.if.end28_crit_edge

if.end5.if.end28_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end5.cleanup48_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used) #16
  %16 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %used, align 4
  %data_size11 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %17 = ptrtoint ptr %data_size11 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data_size11, align 8
  %19 = call i64 @llvm.bswap.i64(i64 %18)
  %.tr = trunc i64 %19 to i32
  %conv = shl i32 %.tr, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %bit)
  %cmp13.not = icmp ugt i32 %conv, %bit
  br i1 %cmp13.not, label %if.end16, label %cleanup48.critedge2

if.end16:                                         ; preds = %if.else
  %call17 = call fastcc i32 @scan_nres_bitmap(ptr noundef %ni, ptr noundef nonnull %call, ptr noundef %indx, i32 noundef %bit, ptr noundef nonnull @scan_for_used, ptr noundef nonnull %used)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %cleanup48.critedge3

if.end20:                                         ; preds = %if.end16
  %20 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp21.not = icmp eq i32 %21, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used) #16
  br i1 %cmp21.not, label %if.end20.if.end28_crit_edge, label %if.end20.cleanup48_crit_edge

if.end20.cleanup48_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end28

if.end28:                                         ; preds = %if.end20.if.end28_crit_edge, %if.end5.if.end28_crit_edge
  %nbits.0 = phi i32 [ %conv, %if.end20.if.end28_crit_edge ], [ %mul, %if.end5.if.end28_crit_edge ]
  %conv29 = zext i32 %bit to i64
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %22 = ptrtoint ptr %index_bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index_bits, align 4
  %sh_prom = zext i8 %23 to i64
  %shl = shl i64 %conv29, %sh_prom
  %24 = ptrtoint ptr %new_data to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shl, ptr %new_data, align 8
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %call33 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %4, i8 noundef zeroext %6, ptr noundef %alloc_run, i64 noundef %shl, ptr noundef nonnull %new_data, i1 noundef zeroext false, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end28.cleanup48_crit_edge

if.end28.cleanup48_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end36:                                         ; preds = %if.end28
  %add.i = add i32 %bit, 7
  %shr.i = lshr i32 %add.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add1.i, 1073741816
  %conv38 = zext i32 %and.i to i64
  %25 = ptrtoint ptr %bpb to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv38, ptr %bpb, align 8
  %mul39 = shl nuw nsw i64 %conv38, 3
  %conv40 = zext i32 %nbits.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul39, i64 %conv40)
  %cmp41 = icmp eq i64 %mul39, %conv40
  br i1 %cmp41, label %if.end36.cleanup48_crit_edge, label %if.end44

if.end36.cleanup48_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup48

if.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %call47 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %4, i8 noundef zeroext %6, ptr noundef %indx, i64 noundef %conv38, ptr noundef nonnull %bpb, i1 noundef zeroext false, ptr noundef null) #16
  br label %cleanup48

cleanup48.critedge2:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used) #16
  br label %cleanup48

cleanup48.critedge3:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used) #16
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.critedge3, %cleanup48.critedge2, %if.end44, %if.end36.cleanup48_crit_edge, %if.end28.cleanup48_crit_edge, %if.end20.cleanup48_crit_edge, %if.end5.cleanup48_crit_edge, %if.then2.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_data) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bpb) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_remove_attr(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @indx_update_dup(ptr noundef %ni, ptr noundef %sbi, ptr noundef %fname, ptr nocapture noundef readonly %dup, i32 noundef %sync) local_unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %diff = alloca i32, align 4
  %e = alloca ptr, align 4
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #16
  %0 = ptrtoint ptr %diff to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %diff, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #16
  %1 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %e, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #16
  %2 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !20
  %3 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 168) #19
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %5 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %le.i, align 4
  %type.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 8, i32 0, i32 7
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom.i, i32 1
  %10 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1879048192, ptr noundef %9, i8 noundef zeroext %11, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.indx_get_root.exit.thread_crit_edge, label %if.end.i

if.end.indx_get_root.exit.thread_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i:                                         ; preds = %if.end
  %non_res.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %non_res.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %non_res.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.indx_get_root.exit.thread_crit_edge

if.end.i.indx_get_root.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end.i.i:                                       ; preds = %if.end.i
  %size.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i.i, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #16
  %17 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data_off.i.i, align 4
  %20 = call i16 @llvm.bswap.i16(i16 %19) #16
  %conv.i.i = zext i16 %20 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %16, %add.i.i
  br i1 %cmp.i.i, label %if.end.i.i.indx_get_root.exit.thread_crit_edge, label %if.end3.i.i

if.end.i.i.indx_get_root.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

if.end3.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %23)
  %cmp4.i.i = icmp ult i32 %23, 32
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  br i1 %cmp4.i.i, label %if.end3.i.i.indx_get_root.exit.thread_crit_edge, label %indx_get_root.exit

if.end3.i.i.indx_get_root.exit.thread_crit_edge:  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_get_root.exit.thread

indx_get_root.exit.thread:                        ; preds = %if.end3.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.i.indx_get_root.exit.thread_crit_edge, %if.end.i.indx_get_root.exit.thread_crit_edge, %if.end.indx_get_root.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %fnd_put.exit

indx_get_root.exit:                               ; preds = %if.end3.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %indx_get_root.exit.fnd_put.exit_crit_edge, label %if.end4

indx_get_root.exit.fnd_put.exit_crit_edge:        ; preds = %indx_get_root.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end4:                                          ; preds = %indx_get_root.exit
  %name_len.i57 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %fname, i32 0, i32 2
  %24 = ptrtoint ptr %name_len.i57 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %name_len.i57, align 8
  %conv.i = zext i8 %25 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 66
  %call6 = call i32 @indx_find(ptr noundef %3, ptr noundef %ni, ptr noundef nonnull %add.ptr.i.i, ptr noundef %fname, i32 noundef %add.i, ptr noundef %sbi, ptr noundef nonnull %diff, ptr noundef nonnull %e, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.fnd_put.exit_crit_edge

if.end4.fnd_put.exit_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end9:                                          ; preds = %if.end4
  %26 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %e, align 4
  %tobool10.not = icmp eq ptr %27, null
  br i1 %tobool10.not, label %if.end9.fnd_put.exit_crit_edge, label %if.end12

if.end9.fnd_put.exit_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end12:                                         ; preds = %if.end9
  %28 = ptrtoint ptr %diff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %diff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool13.not = icmp eq i32 %29, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.fnd_put.exit_crit_edge

if.end12.fnd_put.exit_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end15:                                         ; preds = %if.end12
  %dup16 = getelementptr %struct.NTFS_DE, ptr %27, i32 1, i32 1
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(56) %dup16, ptr noundef dereferenceable(56) %dup, i32 56) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %if.end15.fnd_put.exit_crit_edge, label %if.end20

if.end15.fnd_put.exit_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %fnd_put.exit

if.end20:                                         ; preds = %if.end15
  %30 = call ptr @memcpy(ptr %dup16, ptr %dup, i32 56)
  %31 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not = icmp eq i32 %32, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %32, -1
  %arrayidx = getelementptr %struct.ntfs_fnd, ptr %call7.i.i.i, i32 0, i32 1, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %index.i = getelementptr inbounds %struct.indx_node, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %index.i, align 4
  %sbi.i = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %37 = ptrtoint ptr %sbi.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sbi.i, align 4
  %call.i58 = call i32 @ntfs_write_bh(ptr noundef %38, ptr noundef %36, ptr noundef %34, i32 noundef %sync) #16
  br label %fnd_put.exit

if.else:                                          ; preds = %if.end20
  %39 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mi, align 4
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %dirty, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sync)
  %tobool26.not = icmp eq i32 %sync, 0
  br i1 %tobool26.not, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %call28 = call i32 @mi_write(ptr noundef %40, i32 noundef 1) #16
  br label %fnd_put.exit

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #16
  br label %fnd_put.exit

fnd_put.exit:                                     ; preds = %if.else29, %if.then27, %if.then23, %if.end15.fnd_put.exit_crit_edge, %if.end12.fnd_put.exit_crit_edge, %if.end9.fnd_put.exit_crit_edge, %if.end4.fnd_put.exit_crit_edge, %indx_get_root.exit.fnd_put.exit_crit_edge, %indx_get_root.exit.thread
  %err.0 = phi i32 [ %call6, %if.end4.fnd_put.exit_crit_edge ], [ %call.i58, %if.then23 ], [ %call28, %if.then27 ], [ 0, %if.else29 ], [ 0, %if.end15.fnd_put.exit_crit_edge ], [ -22, %indx_get_root.exit.fnd_put.exit_crit_edge ], [ -22, %if.end9.fnd_put.exit_crit_edge ], [ -22, %if.end12.fnd_put.exit_crit_edge ], [ -22, %indx_get_root.exit.thread ]
  call void @fnd_clear(ptr noundef nonnull %call7.i.i.i) #16
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %fnd_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %fnd_put.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_lookup_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_load_runs_vcn(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_get_entry(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_fnames(ptr noundef %key1, i32 noundef %l1, ptr noundef %key2, i32 noundef %l2, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %l2)
  %cmp = icmp ult i32 %l2, 67
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %name_len.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %key2, i32 0, i32 2
  %0 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name_len.i, align 8
  %conv.i = zext i8 %1 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 66
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %l2)
  %cmp1 = icmp ugt i32 %add.i, %l2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %key2, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp6 = icmp ne i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l1)
  %tobool.not = icmp eq i32 %l1, 0
  br i1 %tobool.not, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %upcase = getelementptr inbounds %struct.ntfs_sb_info, ptr %data, i32 0, i32 26
  %4 = ptrtoint ptr %upcase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %upcase, align 4
  %call10 = tail call i32 @ntfs_cmp_names_cpu(ptr noundef %key1, ptr noundef %name_len.i, ptr noundef %5, i1 noundef zeroext %cmp6) #16
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %name = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %key1, i32 0, i32 4
  %name_len12 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %key1, i32 0, i32 2
  %6 = ptrtoint ptr %name_len12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %name_len12, align 8
  %conv13 = zext i8 %7 to i32
  %name14 = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %key2, i32 0, i32 4
  %upcase18 = getelementptr inbounds %struct.ntfs_sb_info, ptr %data, i32 0, i32 26
  %8 = ptrtoint ptr %upcase18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %upcase18, align 4
  %call20 = tail call i32 @ntfs_cmp_names(ptr noundef %name, i32 noundef %conv13, ptr noundef %name14, i32 noundef %conv.i, ptr noundef %9, i1 noundef zeroext %cmp6) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end11 ], [ %call10, %if.then8 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_uint(ptr nocapture noundef readonly %key1, i32 noundef %l1, ptr nocapture noundef readonly %key2, i32 noundef %l2, ptr nocapture noundef readnone %data) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %l2)
  %cmp = icmp ult i32 %l2, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key1, align 4
  %2 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp ult i32 %1, %3
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ugt i32 %1, %3
  %. = zext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_sdh(ptr nocapture noundef readonly %key1, i32 noundef %l1, ptr nocapture noundef readonly %key2, i32 noundef %l2, ptr noundef readnone %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %l2)
  %cmp = icmp ult i32 %l2, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %key1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key1, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %key2, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp2 = icmp ult i32 %2, %5
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp5 = icmp ugt i32 %2, %5
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %if.end7.if.end16_crit_edge, label %if.then8

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then8:                                         ; preds = %if.end7
  %sec_id = getelementptr inbounds %struct.SECURITY_KEY, ptr %key1, i32 0, i32 1
  %6 = ptrtoint ptr %sec_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sec_id, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %sec_id9 = getelementptr inbounds %struct.SECURITY_KEY, ptr %key2, i32 0, i32 1
  %9 = ptrtoint ptr %sec_id9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sec_id9, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp10 = icmp ult i32 %8, %11
  br i1 %cmp10, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %11)
  %cmp13 = icmp ugt i32 %8, %11
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end7.if.end16_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 1, %if.end4.cleanup_crit_edge ], [ -1, %if.then8.cleanup_crit_edge ], [ 1, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_uints(ptr nocapture noundef readonly %key1, i32 noundef %l1, ptr nocapture noundef readonly %key2, i32 noundef %l2, ptr noundef readnone %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %data, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i32, ptr %key1, i32 1
  %add.ptr1 = getelementptr i32, ptr %key2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %l2)
  %cmp2 = icmp ult i32 %l2, 5
  br i1 %cmp2, label %if.then.cleanup28_crit_edge, label %if.end

if.then.cleanup28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %l1)
  %cmp4 = icmp ult i32 %l1, 5
  br i1 %cmp4, label %if.end.cleanup28_crit_edge, label %if.end6

if.end.cleanup28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %sub = add i32 %l2, -4
  %sub7 = add i32 %l1, -4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %l2.addr.0 = phi i32 [ %sub, %if.end6 ], [ %l2, %entry.if.end8_crit_edge ]
  %l1.addr.0 = phi i32 [ %sub7, %if.end6 ], [ %l1, %entry.if.end8_crit_edge ]
  %k1.0 = phi ptr [ %add.ptr, %if.end6 ], [ %key1, %entry.if.end8_crit_edge ]
  %k2.0 = phi ptr [ %add.ptr1, %if.end6 ], [ %key2, %entry.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %l2.addr.0)
  %cmp9 = icmp ult i32 %l2.addr.0, 4
  br i1 %cmp9, label %if.end8.cleanup28_crit_edge, label %if.end11

if.end8.cleanup28_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %l1.addr.0, i32 %l2.addr.0)
  %cmp12 = icmp ult i32 %l1.addr.0, %l2.addr.0
  %0 = tail call i32 @llvm.umin.i32(i32 %l1.addr.0, i32 %l2.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp13.not54 = icmp ult i32 %0, 4
  br i1 %cmp13.not54, label %if.end11.for.end_crit_edge, label %for.body.preheader

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.preheader:                               ; preds = %if.end11
  %shr = lshr i32 %0, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %count.057 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %shr, %for.body.preheader ]
  %k2.156 = phi ptr [ %incdec.ptr21, %for.inc.for.body_crit_edge ], [ %k2.0, %for.body.preheader ]
  %k1.155 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %k1.0, %for.body.preheader ]
  %1 = ptrtoint ptr %k1.155 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %k1.155, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %k2.156 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %k2.156, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp14 = icmp ugt i32 %3, %6
  br i1 %cmp14, label %for.body.cleanup28_crit_edge, label %cleanup

for.body.cleanup28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %6)
  %cmp17 = icmp ult i32 %3, %6
  br i1 %cmp17, label %cleanup.cleanup28_crit_edge, label %for.inc

cleanup.cleanup28_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup28

for.inc:                                          ; preds = %cleanup
  %dec = add i32 %count.057, -1
  %incdec.ptr = getelementptr i32, ptr %k1.155, i32 1
  %incdec.ptr21 = getelementptr i32, ptr %k2.156, i32 1
  %cmp13.not = icmp eq i32 %dec, 0
  br i1 %cmp13.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %l1.addr.0, i32 %l2.addr.0)
  %cmp22 = icmp ugt i32 %l1.addr.0, %l2.addr.0
  %.51 = sext i1 %cmp12 to i32
  %spec.select = select i1 %cmp22, i32 1, i32 %.51
  br label %cleanup28

cleanup28:                                        ; preds = %for.end, %cleanup.cleanup28_crit_edge, %for.body.cleanup28_crit_edge, %if.end8.cleanup28_crit_edge, %if.end.cleanup28_crit_edge, %if.then.cleanup28_crit_edge
  %retval.2 = phi i32 [ -1, %if.then.cleanup28_crit_edge ], [ 1, %if.end.cleanup28_crit_edge ], [ -1, %if.end8.cleanup28_crit_edge ], [ %spec.select, %for.end ], [ 1, %for.body.cleanup28_crit_edge ], [ -1, %cleanup.cleanup28_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names_cpu(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @hdr_insert_de(ptr nocapture noundef readonly %indx, ptr noundef %hdr, ptr noundef %de, ptr noundef %before, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %diff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %diff) #16
  %0 = ptrtoint ptr %before to i32
  %1 = ptrtoint ptr %hdr to i32
  %sub = sub i32 %0, %1
  %used1 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %used1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %total2 = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 2
  %5 = ptrtoint ptr %total2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %de, i32 0, i32 1
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %add = add i32 %4, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp = icmp ugt i32 %add, %7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %before, null
  br i1 %tobool.not, label %if.end17, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp5.not = icmp ult i32 %sub, %4
  br i1 %cmp5.not, label %lor.lhs.false, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %11 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hdr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp7 = icmp ult i32 %sub, %13
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %size10 = getelementptr inbounds %struct.NTFS_DE, ptr %before, i32 0, i32 1
  %14 = ptrtoint ptr %size10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %size10, align 4
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv11 = zext i16 %16 to i32
  %add12 = add i32 %sub, %conv11
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %7)
  %cmp13 = icmp ugt i32 %add12, %7
  br i1 %cmp13, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false9.ok_crit_edge

lor.lhs.false9.ok_crit_edge:                      ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %ok

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.NTFS_DE, ptr %de, i32 1
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %de, i32 0, i32 2
  %17 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %key_size, align 2
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %conv18 = zext i16 %19 to i32
  %call = call fastcc ptr @hdr_find_e(ptr noundef %indx, ptr noundef %hdr, ptr noundef %add.ptr, i32 noundef %conv18, ptr noundef %ctx, ptr noundef nonnull %diff)
  %tobool19.not = icmp eq ptr %call, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %call to i32
  %sub22 = sub i32 %20, %1
  br label %ok

ok:                                               ; preds = %if.end21, %lor.lhs.false9.ok_crit_edge
  %before.addr.0 = phi ptr [ %before, %lor.lhs.false9.ok_crit_edge ], [ %call, %if.end21 ]
  %off.0 = phi i32 [ %sub, %lor.lhs.false9.ok_crit_edge ], [ %sub22, %if.end21 ]
  %add.ptr24 = getelementptr i8, ptr %before.addr.0, i32 %conv
  %sub25 = sub i32 %4, %off.0
  %21 = call ptr @memmove(ptr %add.ptr24, ptr %before.addr.0, i32 %sub25)
  %22 = tail call i32 @llvm.bswap.i32(i32 %add)
  %23 = ptrtoint ptr %used1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %used1, align 4
  %24 = call ptr @memcpy(ptr %before.addr.0, ptr %de, i32 %conv)
  br label %cleanup

cleanup:                                          ; preds = %ok, %if.end17.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %before.addr.0, %ok ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false9.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then4.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %diff) #16
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @indx_add_allocate(ptr noundef %indx, ptr noundef %ni, ptr nocapture noundef writeonly %vbn) unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %bit = alloca i32, align 4
  %data_size = alloca i64, align 8
  %bmp_size_v = alloca i64, align 8
  %mi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data_size) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bmp_size_v) #16
  %0 = ptrtoint ptr %bmp_size_v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %bmp_size_v, align 8, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mi) #16
  %1 = ptrtoint ptr %mi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %mi, align 4, !annotation !20
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #16
  %4 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %le.i, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %name_len.i = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %name_len.i, align 4
  %call.i = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le.i, i32 noundef -1342177280, ptr noundef %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef null) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.indx_find_free.exit.thread_crit_edge, label %if.end.i

entry.indx_find_free.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_find_free.exit.thread

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %bit, align 4
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not.i = icmp eq i8 %11, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %12 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14) #16
  %mul.i = shl i32 %15, 3
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %data_off.i.i, align 4
  %18 = call i16 @llvm.bswap.i16(i16 %17) #16
  %conv.i.i = zext i16 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %conv.i.i
  %call4.i = call i32 @_find_next_zero_bit_be(ptr noundef %add.ptr.i.i, i32 noundef %mul.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %mul.i)
  %cmp.i = icmp ult i32 %call4.i, %mul.i
  br i1 %cmp.i, label %if.end.thread, label %if.then2.i.if.end_crit_edge

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.thread:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4.i, ptr %bit, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %if.end9

if.else.i:                                        ; preds = %if.end.i
  %call7.i = call fastcc i32 @scan_nres_bitmap(ptr noundef %ni, ptr noundef nonnull %call.i, ptr noundef %indx, i32 noundef 0, ptr noundef nonnull @scan_for_free, ptr noundef nonnull %bit) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end_crit_edge, label %if.else.i.indx_find_free.exit.thread_crit_edge

if.else.i.indx_find_free.exit.thread_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %indx_find_free.exit.thread

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

indx_find_free.exit.thread:                       ; preds = %if.else.i.indx_find_free.exit.thread_crit_edge, %entry.indx_find_free.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call7.i, %if.else.i.indx_find_free.exit.thread_crit_edge ], [ -2, %entry.indx_find_free.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.else.i.if.end_crit_edge, %if.then2.i.if.end_crit_edge
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %bit, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp.not = icmp eq i32 %.pr, -1
  br i1 %cmp.not, label %if.else, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.else:                                          ; preds = %if.end
  %21 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not = icmp eq i8 %22, 0
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %data_size4 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 6
  %23 = ptrtoint ptr %data_size4 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data_size4, align 8
  %25 = call i64 @llvm.bswap.i64(i64 %24)
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7, i32 0, i32 7
  %26 = ptrtoint ptr %valid_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %valid_size, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  br label %if.end7

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %29 = getelementptr inbounds %struct.ATTRIB, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %conv = zext i32 %32 to i64
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  %storemerge = phi i64 [ %conv, %if.else5 ], [ %28, %if.then3 ]
  %bmp_size.0 = phi i64 [ %conv, %if.else5 ], [ %25, %if.then3 ]
  %33 = ptrtoint ptr %bmp_size_v to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %storemerge, ptr %bmp_size_v, align 8
  %bmp_size.0.tr = trunc i64 %bmp_size.0 to i32
  %conv8 = shl i32 %bmp_size.0.tr, 3
  %34 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv8, ptr %bit, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge, %if.end.thread
  %bmp.1 = phi i1 [ false, %if.end7 ], [ true, %if.end.thread ], [ true, %if.end.if.end9_crit_edge ]
  %bmp_size.1 = phi i64 [ %bmp_size.0, %if.end7 ], [ -1, %if.end.thread ], [ -1, %if.end.if.end9_crit_edge ]
  %35 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bit, align 4
  %add = add i32 %36, 1
  %conv10 = zext i32 %add to i64
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %37 = ptrtoint ptr %index_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %index_bits, align 4
  %sh_prom = zext i8 %38 to i64
  %shl12 = shl i64 %conv10, %sh_prom
  %39 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %shl12, ptr %data_size, align 8
  br i1 %bmp.1, label %if.end22, label %if.then14

if.then14:                                        ; preds = %if.end9
  %add.i = add i32 %36, 8
  %shr.i = lshr i32 %add.i, 3
  %add1.i = add nuw nsw i32 %shr.i, 7
  %and.i = and i32 %add1.i, 1073741816
  %conv17 = zext i32 %and.i to i64
  %call18 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %6, i8 noundef zeroext %8, ptr noundef %indx, i64 noundef %conv17, ptr noundef null, i1 noundef zeroext true, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22.thread, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %call25 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -1610612736, ptr noundef %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end22.cleanup_crit_edge, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end22.thread:                                  ; preds = %if.then14
  %call2584 = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef null, i32 noundef -1610612736, ptr noundef %6, i8 noundef zeroext %8, ptr noundef null, ptr noundef nonnull %mi) #16
  %tobool26.not85 = icmp eq ptr %call2584, null
  br i1 %tobool26.not85, label %if.end22.thread.out2_crit_edge, label %if.end22.thread.if.end31_crit_edge

if.end22.thread.if.end31_crit_edge:               ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end31

if.end22.thread.out2_crit_edge:                   ; preds = %if.end22.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %out2

if.end31:                                         ; preds = %if.end22.thread.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %40 = ptrtoint ptr %data_size to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %data_size, align 8
  %call34 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1610612736, ptr noundef %6, i8 noundef zeroext %8, ptr noundef %alloc_run, i64 noundef %41, ptr noundef nonnull %data_size, i1 noundef zeroext true, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %if.then36

if.then36:                                        ; preds = %if.end31
  br i1 %bmp.1, label %if.then36.cleanup_crit_edge, label %if.then36.out2_crit_edge

if.then36.out2_crit_edge:                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %out2

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %42 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bit, align 4
  %idx2vbn_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 5
  %44 = ptrtoint ptr %idx2vbn_bits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %idx2vbn_bits, align 1
  %conv41 = zext i8 %45 to i32
  %shl42 = shl i32 %43, %conv41
  %46 = ptrtoint ptr %vbn to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl42, ptr %vbn, align 4
  br label %cleanup

out2:                                             ; preds = %if.then36.out2_crit_edge, %if.end22.thread.out2_crit_edge
  %err.0 = phi i32 [ %call34, %if.then36.out2_crit_edge ], [ -22, %if.end22.thread.out2_crit_edge ]
  %call46 = call i32 @attr_set_size(ptr noundef %ni, i32 noundef -1342177280, ptr noundef %6, i8 noundef zeroext %8, ptr noundef %indx, i64 noundef %bmp_size.1, ptr noundef nonnull %bmp_size_v, i1 noundef zeroext false, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end40, %if.then36.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %indx_find_free.exit.thread
  %retval.0 = phi i32 [ 0, %if.end40 ], [ %call18, %if.then14.cleanup_crit_edge ], [ %err.0, %out2 ], [ %call34, %if.then36.cleanup_crit_edge ], [ %retval.0.i.ph, %indx_find_free.exit.thread ], [ -22, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mi) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bmp_size_v) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data_size) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @indx_new(ptr noundef %indx, ptr nocapture noundef readonly %ni, i32 noundef %vbn, ptr noundef readonly %sub_vbn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %vbn to i64
  %vbn2vbo_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 6
  %0 = ptrtoint ptr %vbn2vbo_bits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vbn2vbo_bits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %conv, %sh_prom
  %index_bits = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 4
  %2 = ptrtoint ptr %index_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index_bits, align 4
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw i32 1, %conv2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 48) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl3, i32 noundef 3392) #20
  %tobool6.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i.i
  %sbi = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %5 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sbi, align 4
  %alloc_run = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 1
  %call10 = tail call i32 @ntfs_get_bh(ptr noundef %6, ptr noundef %alloc_run, i64 noundef %shl, i32 noundef %shl3, ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  %7 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1229866072, ptr %call9.i.i, align 128
  %fix_off = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fix_off to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 10240, ptr %fix_off, align 4
  %shr = lshr i32 %shl3, 9
  %10 = trunc i32 %shr to i16
  %conv16 = add i16 %10, 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %fix_num = getelementptr inbounds %struct.NTFS_RECORD_HEADER, ptr %call9.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %fix_num to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %fix_num, align 2
  %13 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %vbn19 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %call9.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %vbn19 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %vbn19, align 16
  %ihdr = getelementptr inbounds %struct.INDEX_BUFFER, ptr %call9.i.i, i32 0, i32 2
  %conv20 = zext i16 %conv16 to i32
  %mul = shl nuw nsw i32 %conv20, 1
  %add22 = add nuw nsw i32 %mul, 47
  %and = and i32 %add22, 262136
  %15 = tail call i32 @llvm.bswap.i32(i32 %and)
  %16 = ptrtoint ptr %ihdr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ihdr, align 8
  %add.ptr = getelementptr i8, ptr %ihdr, i32 %and
  %tobool23.not = icmp eq ptr %sub_vbn, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 3
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 768, ptr %flags, align 4
  %size = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 1
  %18 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 6144, ptr %size, align 8
  %add26 = add nuw nsw i32 %and, 24
  %19 = tail call i32 @llvm.bswap.i32(i32 %add26)
  %20 = ptrtoint ptr %sub_vbn to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sub_vbn, align 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 16
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %add.ptr.i, align 8
  %flags27 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %call9.i.i, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %flags27 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %flags27, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  %size28 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 1
  %24 = ptrtoint ptr %size28 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4096, ptr %size28, align 8
  %add29 = add nuw nsw i32 %and, 16
  %25 = tail call i32 @llvm.bswap.i32(i32 %add29)
  %flags31 = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr, i32 0, i32 3
  %26 = ptrtoint ptr %flags31 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 512, ptr %flags31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then24
  %.sink = phi i32 [ %25, %if.else ], [ %19, %if.then24 ]
  %27 = getelementptr inbounds %struct.INDEX_BUFFER, ptr %call9.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink, ptr %27, align 4
  %sub = add i32 %shl3, -24
  %29 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %total = getelementptr inbounds %struct.INDEX_BUFFER, ptr %call9.i.i, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %total, align 32
  %index33 = getelementptr inbounds %struct.indx_node, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %index33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call9.i.i, ptr %index33, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then12, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then12 ], [ %call7.i.i, %if.end32 ], [ inttoptr (i32 -12 to ptr), %if.then7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @hdr_insert_head(ptr noundef %hdr, ptr nocapture noundef readonly %ins, i32 noundef %ins_bytes) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hdr, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #16
  %used2.i = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 1
  %3 = ptrtoint ptr %used2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %used2.i, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #16
  %add.ptr.i = getelementptr i8, ptr %hdr, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %2)
  %cmp.not.i = icmp ugt i32 %5, %2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %total.i = getelementptr inbounds %struct.INDEX_HDR, ptr %hdr, i32 0, i32 2
  %6 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %8)
  %cmp3.not.i = icmp ult i32 %2, %8
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %size.i = getelementptr inbounds %struct.NTFS_DE, ptr %add.ptr.i, i32 0, i32 1
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size.i, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %11)
  %cmp4.i = icmp ult i16 %11, 16
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false6.i:                                 ; preds = %if.end.i
  %conv.i = zext i16 %11 to i32
  %add.i = add i32 %2, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp8.i = icmp ugt i32 %add.i, %5
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %cmp8.i
  br i1 %or.cond, label %lor.lhs.false6.i.cleanup_crit_edge, label %if.end

lor.lhs.false6.i.cleanup_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %5, %2
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %ins_bytes
  %12 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr.i, i32 %sub)
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %ins, i32 %ins_bytes)
  %add = add i32 %5, %ins_bytes
  %14 = tail call i32 @llvm.bswap.i32(i32 %add)
  %15 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %used2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @indx_mark_used(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit) unnamed_addr #0 align 64 {
entry:
  %bbuf = alloca %struct.bmp_buf, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bbuf) #16
  %0 = call ptr @memset(ptr %bbuf, i32 255, i32 32)
  %call = call fastcc i32 @bmp_buf_get(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit, ptr noundef nonnull %bbuf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 4
  %2 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %1, align 8
  %sub = sub i32 %bit, %4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %6, i32 %div2.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %8
  store i32 %or.i, ptr %add.ptr.i, align 4
  call fastcc void @bmp_buf_put(ptr noundef nonnull %bbuf)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bbuf) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_allocate_clusters(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_insert_nonresident(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_insert_resident(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mi_remove_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_deallocate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @scan_for_free(ptr noundef %buf, i32 noundef %bit, i32 noundef %bits, ptr nocapture noundef writeonly %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %buf, i32 noundef %bits, i32 noundef %bit) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %bits)
  %cmp.not = icmp ult i32 %call, %bits
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_bh(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bmp_buf_get(ptr noundef %indx, ptr noundef %ni, i32 noundef %bit, ptr noundef %bbuf) unnamed_addr #0 align 64 {
entry:
  %vcn = alloca i32, align 4
  %le = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %bit, 3
  %sbi1 = getelementptr inbounds %struct.mft_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #16
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cluster_bits, align 8
  %conv = zext i8 %3 to i32
  %shr2 = lshr i32 %shr, %conv
  %4 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr2, ptr %vcn, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le) #16
  %5 = ptrtoint ptr %le to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %le, align 4
  %type = getelementptr inbounds %struct.ntfs_index, ptr %indx, i32 0, i32 7
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom
  %bh3 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 2
  %8 = ptrtoint ptr %bh3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %bh3, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %name_len = getelementptr [6 x %struct.INDEX_NAMES], ptr @s_index_names, i32 0, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %name_len, align 4
  %mi4 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 1
  %call = call ptr @ni_find_attr(ptr noundef %ni, ptr noundef null, ptr noundef nonnull %le, i32 noundef -1342177280, ptr noundef %10, i8 noundef zeroext %12, ptr noundef nonnull %vcn, ptr noundef %mi4) #16
  %13 = ptrtoint ptr %bbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call, ptr %bbuf, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.then7, label %if.end14

if.then7:                                         ; preds = %if.end
  %16 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %19)
  %cmp.not = icmp ult i32 %shr, %19
  br i1 %cmp.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data_off.i, align 4
  %22 = call i16 @llvm.bswap.i16(i16 %21) #16
  %conv.i = zext i16 %22 to i32
  %add.ptr.i = getelementptr i8, ptr %call, i32 %conv.i
  %buf = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %buf, align 4
  %bit13 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 4
  %24 = ptrtoint ptr %bit13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bit13, align 8
  %mul = shl i32 %19, 3
  %nbits = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 5
  %25 = ptrtoint ptr %nbits to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %nbits, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %data_size15 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 6
  %26 = ptrtoint ptr %data_size15 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data_size15, align 8
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  %conv16 = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv16)
  %cmp17.not = icmp ult i32 %shr, %conv16
  br i1 %cmp17.not, label %if.end42, label %do.end, !prof !25

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 239, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end42:                                         ; preds = %if.end14
  %valid_size43 = getelementptr inbounds %struct.ATTRIB, ptr %call, i32 0, i32 7, i32 0, i32 7
  %29 = ptrtoint ptr %valid_size43 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %valid_size43, align 8
  %31 = call i64 @llvm.bswap.i64(i64 %30)
  %conv44 = trunc i64 %31 to i32
  %conv45 = zext i32 %shr to i64
  %call46 = call ptr @ntfs_bread_run(ptr noundef %1, ptr noundef %indx, i64 noundef %conv45) #16
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %if.end49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #18
  %32 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %33 = ptrtoint ptr %bh3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call46, ptr %bh3, align 8
  %34 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %call46, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool56.not = icmp eq i32 %36, 0
  br i1 %tobool56.not, label %if.end53.if.end58_crit_edge, label %if.then57

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  call void @__wait_on_buffer(ptr noundef nonnull %call46) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end53.if.end58_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 366) #16
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call46, i32 noundef 4) #16
  %37 = ptrtoint ptr %call46 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %call46, align 4
  %and.i.i.i.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end58.if.then.i_crit_edge

if.end58.if.then.i_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end58
  call void @llvm.prefetch.p0(ptr nonnull %call46, i32 1, i32 3, i32 1) #16
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call46, ptr nonnull %call46, i32 4, ptr nonnull elementtype(i32) %call46) #16, !srcloc !26
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !27
  %40 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end58.if.then.i_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call46) #16
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %s_blocksize, align 16
  %block_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %block_mask, align 8
  %neg = xor i32 %46, -1
  %and = and i32 %shr, %neg
  %add = add i32 %and, %44
  %conv60 = zext i32 %add to i64
  %new_valid = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 6
  %47 = ptrtoint ptr %new_valid to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv60, ptr %new_valid, align 8
  %conv62 = and i64 %31, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv62, i64 %conv60)
  %cmp63.not = icmp ult i64 %conv62, %conv60
  br i1 %cmp63.not, label %if.else, label %lock_buffer.exit.if.end75.sink.split_crit_edge

lock_buffer.exit.if.end75.sink.split_crit_edge:   ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.sink.split

if.else:                                          ; preds = %lock_buffer.exit
  %conv68 = and i64 %28, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv68, i64 %conv60)
  %cmp69 = icmp ult i64 %conv68, %conv60
  br i1 %cmp69, label %if.else.if.end75.sink.split_crit_edge, label %if.else.if.end75_crit_edge

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75

if.else.if.end75.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.else.if.end75.sink.split_crit_edge, %lock_buffer.exit.if.end75.sink.split_crit_edge
  %conv68.sink = phi i64 [ 0, %lock_buffer.exit.if.end75.sink.split_crit_edge ], [ %conv68, %if.else.if.end75.sink.split_crit_edge ]
  %48 = ptrtoint ptr %new_valid to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv68.sink, ptr %new_valid, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.else.if.end75_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv44)
  %cmp76.not = icmp ult i32 %and, %conv44
  br i1 %cmp76.not, label %if.else79, label %if.then78

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call46, i32 0, i32 5
  %49 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_data, align 4
  %51 = call ptr @memset(ptr %50, i32 0, i32 %44)
  br label %if.end88

if.else79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv44)
  %cmp81 = icmp ugt i32 %add, %conv44
  br i1 %cmp81, label %if.then83, label %if.else79.if.end88_crit_edge

if.else79.if.end88_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end88

if.then83:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #18
  %52 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %block_mask, align 8
  %and85 = and i32 %53, %conv44
  %b_data86 = getelementptr inbounds %struct.buffer_head, ptr %call46, i32 0, i32 5
  %54 = ptrtoint ptr %b_data86 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data86, align 4
  %add.ptr = getelementptr i8, ptr %55, i32 %and85
  %sub = sub i32 %44, %and85
  %56 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %if.else79.if.end88_crit_edge, %if.then78
  %b_data89 = getelementptr inbounds %struct.buffer_head, ptr %call46, i32 0, i32 5
  %57 = ptrtoint ptr %b_data89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data89, align 4
  %buf90 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 3
  %59 = ptrtoint ptr %buf90 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %buf90, align 4
  %60 = ptrtoint ptr %block_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %block_mask, align 8
  %neg92 = xor i32 %61, -1
  %and93 = and i32 %shr, %neg92
  %mul94 = shl nuw i32 %and93, 3
  %bit95 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 4
  %62 = ptrtoint ptr %bit95 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul94, ptr %bit95, align 8
  %mul96 = shl i32 %44, 3
  %nbits97 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 5
  %63 = ptrtoint ptr %nbits97 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mul96, ptr %nbits97, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %if.then51, %if.end42.cleanup_crit_edge, %do.end, %if.end11, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %32, %if.then51 ], [ 0, %if.end88 ], [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -5, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bmp_buf_put(ptr nocapture noundef readonly %bbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %bh1 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 2
  %0 = ptrtoint ptr %bh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bh1, align 8
  %2 = ptrtoint ptr %bbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bbuf, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.then7, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %mi = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 1
  %6 = ptrtoint ptr %mi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mi, align 4
  %dirty8 = getelementptr inbounds %struct.mft_inode, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %dirty8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %dirty8, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %new_valid = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 6
  %9 = ptrtoint ptr %new_valid to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %new_valid, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool13.not = icmp eq i64 %10, 0
  br i1 %tobool13.not, label %if.end12.if.end18_crit_edge, label %if.then14

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %valid_size = getelementptr inbounds %struct.ATTRIB, ptr %3, i32 0, i32 7, i32 0, i32 7
  %12 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %valid_size, align 8
  %mi16 = getelementptr inbounds %struct.bmp_buf, ptr %bbuf, i32 0, i32 1
  %13 = ptrtoint ptr %mi16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mi16, align 4
  %dirty17 = getelementptr inbounds %struct.mft_inode, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %dirty17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %dirty17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end12.if.end18_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %1, align 4
  %and1.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end18.set_buffer_uptodate.exit_crit_edge

if.end18.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %1) #16
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.end18.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %1) #16
  tail call void @unlock_buffer(ptr noundef nonnull %1) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !22
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #16, !srcloc !23
  br label %cleanup

cleanup:                                          ; preds = %set_buffer_uptodate.exit, %if.then7, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_bread_run(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @indx_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/index.c", i32 854, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @s_index_names, !4, !"s_index_names", i1 false, i1 false}
!4 = !{!"../fs/ntfs3/index.c", i32 20, i32 3}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ntfs3/ntfs_fs.h", i32 1018, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ntfs3/index.c", i32 1514, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
!21 = !{ptr @scan_for_free, ptr @scan_for_used}
!22 = !{i64 2154420874}
!23 = !{i64 2148514581, i64 2148514607, i64 2148514636, i64 2148514670, i64 2148514701, i64 2148514724}
!24 = !{i32 0, i32 33}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148520974, i64 2148521006, i64 2148521035, i64 2148521069, i64 2148521100, i64 2148521123}
!27 = !{i64 2148610055}
