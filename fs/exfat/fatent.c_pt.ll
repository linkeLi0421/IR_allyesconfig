; ModuleID = '/llk/IR_all_yes/fs/exfat/fatent.c_pt.bc'
source_filename = "../fs/exfat/fatent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.exfat_sb_info = type { i64, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.exfat_mount_options, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.callback_head }
%struct.exfat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, ptr, i32, i8, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.exfat_chain = type { i32, i32, i8 }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid access to FAT (entry 0x%08x)\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to access to FAT (entry 0x%08x, err:%d)\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"invalid access to FAT free cluster (entry 0x%08x)\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid access to FAT bad cluster (entry 0x%08x)\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"invalid access to FAT (entry 0x%08x) bogus content (0x%08x)\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bogus directory size (clus : ondisk(%d) != counted(%d))\00", [40 x i8] zeroinitializer }, align 32
@__func__.exfat_zeroed_cluster = private unnamed_addr constant [21 x i8] c"exfat_zeroed_cluster\00", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: out of range(sect:%llu len:%u)\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed zeroed sect %llu\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.exfat_alloc_cluster = private unnamed_addr constant [20 x i8] c"exfat_alloc_cluster\00", align 1
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: invalid used clusters(t:%u,u:%u)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sbi->clu_srch_ptr is invalid (%u)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hint_cluster is invalid (%u)\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid start cluster (%u)\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967287, i64 4294967295]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 97, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 104, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 111, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 118, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 125, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 263, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 286, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 314, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 332, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 347, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 361, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [21 x i8] c"../fs/exfat/fatent.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 173, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_ent_set(ptr nocapture noundef readonly %sb, i32 noundef %loc, i32 noundef %content) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %FAT1_start_sector = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %FAT1_start_sector to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %FAT1_start_sector, align 8
  %conv = zext i32 %loc to i64
  %shl = shl nuw nsw i64 %conv, 2
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %4 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %shl, %sh_prom
  %add = add i64 %shr, %3
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call ptr @__bread_gfp(ptr noundef %9, i64 noundef %add, i32 noundef %7, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl2 = shl i32 %loc, 2
  %sub = add i32 %7, -1
  %and = and i32 %sub, %shl2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 %and
  %12 = tail call i32 @llvm.bswap.i32(i32 %content)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 10
  %14 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_flags, align 4
  %and4 = and i32 %15, 16
  tail call void @exfat_update_bh(ptr noundef nonnull %call.i, i32 noundef %and4) #5
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %FAT2_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %FAT2_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %FAT2_start_sector.i, align 8
  %FAT1_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %17, i32 0, i32 6
  %20 = ptrtoint ptr %FAT1_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %FAT1_start_sector.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %21)
  %cmp.not.i = icmp eq i64 %19, %21
  br i1 %cmp.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  %sub.i = add i64 %19, %add
  %add.i = sub i64 %sub.i, %21
  %22 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_bdev.i, align 4
  %24 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_blocksize, align 16
  %call.i.i = tail call ptr @__getblk_gfp(ptr noundef %23, i64 noundef %add.i, i32 noundef %25, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i.brelse.exit_crit_edge, label %if.end.i

if.then.i.brelse.exit_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.end.i:                                         ; preds = %if.then.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data.i, align 4
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  %30 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize, align 16
  %32 = call ptr @memcpy(ptr %27, ptr %29, i32 %31)
  %33 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.set_buffer_uptodate.exit.i_crit_edge

if.end.i.set_buffer_uptodate.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_buffer_uptodate.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call.i.i) #5
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i.i, %if.end.i.set_buffer_uptodate.exit.i_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef nonnull %call.i.i) #5
  %35 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_flags, align 4
  %and.i = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %set_buffer_uptodate.exit.i.brelse.exit.i_crit_edge, label %if.then7.i

set_buffer_uptodate.exit.i.brelse.exit.i_crit_edge: ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.i

if.then7.i:                                       ; preds = %set_buffer_uptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @sync_dirty_buffer(ptr noundef nonnull %call.i.i) #5
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then7.i, %set_buffer_uptodate.exit.i.brelse.exit.i_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %brelse.exit.i, %if.then.i.brelse.exit_crit_edge, %if.end.brelse.exit_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %brelse.exit ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_update_bh(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %loc, ptr nocapture noundef %content) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loc)
  %cmp.i = icmp ugt i32 %loc, 1
  br i1 %cmp.i, label %is_valid_cluster.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

is_valid_cluster.exit:                            ; preds = %entry
  %num_clusters.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clusters.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %loc)
  %cmp1.i = icmp ugt i32 %3, %loc
  br i1 %cmp1.i, label %if.end, label %is_valid_cluster.exit.if.then_crit_edge

is_valid_cluster.exit.if.then_crit_edge:          ; preds = %is_valid_cluster.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %is_valid_cluster.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %loc) #8
  br label %cleanup

if.end:                                           ; preds = %is_valid_cluster.exit
  %FAT1_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %FAT1_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %FAT1_start_sector.i, align 8
  %conv.i = zext i32 %loc to i64
  %shl.i = shl nuw nsw i64 %conv.i, 2
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %7 to i64
  %shr.i = lshr i64 %shl.i, %sh_prom.i
  %add.i = add i64 %shr.i, %5
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %8 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_blocksize.i, align 16
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i.i, align 4
  %call.i.i = tail call ptr @__bread_gfp(ptr noundef %11, i64 noundef %add.i, i32 noundef %9, i32 noundef 8) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %loc, i32 noundef -5) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %shl2.i = shl i32 %loc, 2
  %sub.i = add i32 %9, -1
  %and.i = and i32 %sub.i, %shl2.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %13, i32 %and.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %16)
  %cmp.i35 = icmp ugt i32 %16, -9
  %spec.select.i = select i1 %cmp.i35, i32 -1, i32 %16
  %17 = ptrtoint ptr %content to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %content, align 4
  tail call void @__brelse(ptr noundef nonnull %call.i.i) #5
  %18 = ptrtoint ptr %content to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %content, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %land.lhs.true [
    i32 0, label %if.then5
    i32 -9, label %if.then8
    i32 -1, label %if.end4.cleanup_crit_edge
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %loc) #8
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %loc) #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i36 = icmp ugt i32 %19, 1
  br i1 %cmp.i36, label %is_valid_cluster.exit40, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

is_valid_cluster.exit40:                          ; preds = %land.lhs.true
  %21 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clusters.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp1.i38 = icmp ugt i32 %22, %19
  br i1 %cmp1.i38, label %is_valid_cluster.exit40.cleanup_crit_edge, label %is_valid_cluster.exit40.if.then12_crit_edge

is_valid_cluster.exit40.if.then12_crit_edge:      ; preds = %is_valid_cluster.exit40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

is_valid_cluster.exit40.cleanup_crit_edge:        ; preds = %is_valid_cluster.exit40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %is_valid_cluster.exit40.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %loc, i32 noundef %19) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %is_valid_cluster.exit40.cleanup_crit_edge, %if.then8, %if.then5, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ -5, %if.then3 ], [ -5, %if.then5 ], [ -5, %if.then8 ], [ -5, %if.then12 ], [ -5, %if.then ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %is_valid_cluster.exit40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @__exfat_fs_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_chain_cont_cluster(ptr nocapture noundef readonly %sb, i32 noundef %chain, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %len, label %entry.while.body_crit_edge [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.while.end_crit_edge
  ]

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add i32 %len.addr.017, -1
  %cmp = icmp ugt i32 %dec, 1
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %len.addr.017 = phi i32 [ %dec, %while.cond.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %chain.addr.016 = phi i32 [ %add, %while.cond.while.body_crit_edge ], [ %chain, %entry.while.body_crit_edge ]
  %add = add i32 %chain.addr.016, 1
  %call = tail call i32 @exfat_ent_set(ptr noundef %sb, i32 noundef %chain.addr.016, i32 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond, label %while.body.return_crit_edge

while.body.return_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %chain.addr.0.lcssa = phi i32 [ %chain, %entry.while.end_crit_edge ], [ %add, %while.cond.while.end_crit_edge ]
  %call4 = tail call i32 @exfat_ent_set(ptr noundef %sb, i32 noundef %chain.addr.0.lcssa, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool5.not, i32 0, i32 -5
  br label %return

return:                                           ; preds = %while.end, %while.body.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %len, %entry.return_crit_edge ], [ %., %while.end ], [ -5, %while.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_free_cluster(ptr noundef %inode, ptr nocapture noundef readonly %p_chain) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %bitmap_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #5
  %call1 = tail call fastcc i32 @__exfat_free_cluster(ptr noundef %inode, ptr noundef %p_chain)
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i7 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i7, align 16
  %bitmap_lock4 = getelementptr inbounds %struct.exfat_sb_info, ptr %7, i32 0, i32 22
  tail call void @mutex_unlock(ptr noundef %bitmap_lock4) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__exfat_free_cluster(ptr noundef %inode, ptr nocapture noundef readonly %p_chain) unnamed_addr #0 align 64 {
entry:
  %n_clu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_chain, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %5, label %lor.lhs.false3 [
    i32 0, label %entry.cleanup92_crit_edge
    i32 -1, label %entry.cleanup92_crit_edge155
  ]

entry.cleanup92_crit_edge155:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

lor.lhs.false3:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5 = icmp ult i32 %5, 2
  br i1 %cmp5, label %lor.lhs.false3.cleanup92_crit_edge, label %if.end

lor.lhs.false3.cleanup92_crit_edge:               ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.end:                                           ; preds = %lor.lhs.false3
  %size = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.end.cleanup92_crit_edge, label %is_valid_cluster.exit

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

is_valid_cluster.exit:                            ; preds = %if.end
  %num_clusters.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_clusters.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp1.i = icmp ugt i32 %10, %5
  br i1 %cmp1.i, label %if.end13, label %if.then11

if.then11:                                        ; preds = %is_valid_cluster.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, i32 noundef %5) #8
  br label %cleanup92

if.end13:                                         ; preds = %is_valid_cluster.exit
  %sub = add i32 %5, -2
  %div139 = lshr i32 %sub, 3
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s_blocksize_bits, align 4
  %conv = zext i8 %12 to i32
  %shr = lshr i32 %div139, %conv
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp16 = icmp eq i8 %14, 3
  br i1 %cmp16, label %if.then18, label %do.body48.preheader

do.body48.preheader:                              ; preds = %if.end13
  %i_flags75 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %do.body48

if.then18:                                        ; preds = %if.end13
  %add = add i32 %5, -1
  %sub21 = add i32 %add, %8
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %land.end.do.body_crit_edge, %if.then18
  %cur_cmap_i.0 = phi i32 [ %shr, %if.then18 ], [ %cur_cmap_i.1, %land.end.do.body_crit_edge ]
  %next_cmap_i.0 = phi i32 [ %shr, %if.then18 ], [ %next_cmap_i.1, %land.end.do.body_crit_edge ]
  %num_clusters.0 = phi i32 [ 0, %if.then18 ], [ %inc44, %land.end.do.body_crit_edge ]
  %clu.0 = phi i32 [ %5, %if.then18 ], [ %inc, %land.end.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %clu.0, i32 %sub21)
  %cmp22 = icmp ult i32 %clu.0, %sub21
  br i1 %cmp22, label %if.then24, label %do.body.if.end31_crit_edge

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub26 = add i32 %clu.0, -1
  %div27141 = lshr i32 %sub26, 3
  %15 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %s_blocksize_bits, align 4
  %conv29 = zext i8 %16 to i32
  %shr30 = lshr i32 %div27141, %conv29
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %do.body.if.end31_crit_edge
  %next_cmap_i.1 = phi i32 [ %shr30, %if.then24 ], [ %next_cmap_i.0, %do.body.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %clu.0, i32 %sub21)
  %cmp32 = icmp ne i32 %clu.0, %sub21
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_cmap_i.0, i32 %next_cmap_i.1)
  %cmp35.not = icmp eq i32 %cur_cmap_i.0, %next_cmap_i.1
  %or.cond = select i1 %cmp32, i1 %cmp35.not, i1 false
  %cur_cmap_i.1 = select i1 %or.cond, i32 %cur_cmap_i.0, i32 %next_cmap_i.1
  br i1 %or.cond, label %if.end31.land.end_crit_edge, label %land.rhs

if.end31.land.end_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %if.end31
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_flags, align 4
  %and = and i32 %20, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %lor.rhs, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_flags, align 4
  %and42 = and i32 %22, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43 = icmp ne i32 %and42, 0
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %if.end31.land.end_crit_edge
  %23 = phi i1 [ false, %if.end31.land.end_crit_edge ], [ true, %land.rhs.land.end_crit_edge ], [ %tobool43, %lor.rhs ]
  tail call void @exfat_clear_bitmap(ptr noundef %inode, i32 noundef %clu.0, i1 noundef zeroext %23) #5
  %inc = add i32 %clu.0, 1
  %inc44 = add nuw i32 %num_clusters.0, 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %cmp46 = icmp ult i32 %inc44, %25
  br i1 %cmp46, label %land.end.do.body_crit_edge, label %land.end.dec_used_clus_crit_edge

land.end.dec_used_clus_crit_edge:                 ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dec_used_clus

land.end.do.body_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body48:                                        ; preds = %land.end79.do.body48_crit_edge, %do.body48.preheader
  %cur_cmap_i.2 = phi i32 [ %next_cmap_i.3150, %land.end79.do.body48_crit_edge ], [ %shr, %do.body48.preheader ]
  %num_clusters.1 = phi i32 [ %inc80, %land.end79.do.body48_crit_edge ], [ 0, %do.body48.preheader ]
  %clu.1 = phi i32 [ %39, %land.end79.do.body48_crit_edge ], [ %5, %do.body48.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_clu) #5
  %26 = ptrtoint ptr %n_clu to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %clu.1, ptr %n_clu, align 4
  %call50 = call i32 @exfat_ent_get(ptr noundef %1, i32 noundef %clu.1, ptr noundef nonnull %n_clu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false52, label %do.body48.land.rhs69_crit_edge

do.body48.land.rhs69_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs69

lor.lhs.false52:                                  ; preds = %do.body48
  %27 = ptrtoint ptr %n_clu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_clu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp53 = icmp eq i32 %28, -1
  br i1 %cmp53, label %lor.lhs.false52.land.rhs69_crit_edge, label %if.end62

lor.lhs.false52.land.rhs69_crit_edge:             ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs69

if.end62:                                         ; preds = %lor.lhs.false52
  %sub57 = add i32 %28, -2
  %div58140 = lshr i32 %sub57, 3
  %29 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits, align 4
  %conv60 = zext i8 %30 to i32
  %shr61 = lshr i32 %div58140, %conv60
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_cmap_i.2, i32 %shr61)
  %cmp63.not.not = icmp eq i32 %cur_cmap_i.2, %shr61
  br i1 %cmp63.not.not, label %if.end62.land.end79_crit_edge, label %if.end62.land.rhs69_crit_edge

if.end62.land.rhs69_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs69

if.end62.land.end79_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end79

land.rhs69:                                       ; preds = %if.end62.land.rhs69_crit_edge, %lor.lhs.false52.land.rhs69_crit_edge, %do.body48.land.rhs69_crit_edge
  %next_cmap_i.3151 = phi i32 [ %shr61, %if.end62.land.rhs69_crit_edge ], [ %cur_cmap_i.2, %lor.lhs.false52.land.rhs69_crit_edge ], [ %cur_cmap_i.2, %do.body48.land.rhs69_crit_edge ]
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %s_flags71 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %s_flags71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_flags71, align 4
  %and72 = and i32 %34, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %lor.rhs74, label %land.rhs69.land.end79_crit_edge

land.rhs69.land.end79_crit_edge:                  ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end79

lor.rhs74:                                        ; preds = %land.rhs69
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %i_flags75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_flags75, align 4
  %and76 = and i32 %36, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77 = icmp ne i32 %and76, 0
  br label %land.end79

land.end79:                                       ; preds = %lor.rhs74, %land.rhs69.land.end79_crit_edge, %if.end62.land.end79_crit_edge
  %next_cmap_i.3150 = phi i32 [ %shr61, %if.end62.land.end79_crit_edge ], [ %next_cmap_i.3151, %land.rhs69.land.end79_crit_edge ], [ %next_cmap_i.3151, %lor.rhs74 ]
  %37 = phi i1 [ false, %if.end62.land.end79_crit_edge ], [ true, %land.rhs69.land.end79_crit_edge ], [ %tobool77, %lor.rhs74 ]
  tail call void @exfat_clear_bitmap(ptr noundef %inode, i32 noundef %clu.1, i1 noundef zeroext %37) #5
  %38 = ptrtoint ptr %n_clu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_clu, align 4
  %inc80 = add i32 %num_clusters.1, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_clu) #5
  %tobool51.not.not = xor i1 %tobool51.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp87.not = icmp eq i32 %39, -1
  %or.cond143 = select i1 %tobool51.not.not, i1 true, i1 %cmp87.not
  br i1 %or.cond143, label %land.end79.dec_used_clus_crit_edge, label %land.end79.do.body48_crit_edge

land.end79.do.body48_crit_edge:                   ; preds = %land.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body48

land.end79.dec_used_clus_crit_edge:               ; preds = %land.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %dec_used_clus

dec_used_clus:                                    ; preds = %land.end79.dec_used_clus_crit_edge, %land.end.dec_used_clus_crit_edge
  %num_clusters.2 = phi i32 [ %inc44, %land.end.dec_used_clus_crit_edge ], [ %inc80, %land.end79.dec_used_clus_crit_edge ]
  %used_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 20
  %40 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %used_clusters, align 4
  %sub91 = sub i32 %41, %num_clusters.2
  store i32 %sub91, ptr %used_clusters, align 4
  br label %cleanup92

cleanup92:                                        ; preds = %dec_used_clus, %if.then11, %if.end.cleanup92_crit_edge, %lor.lhs.false3.cleanup92_crit_edge, %entry.cleanup92_crit_edge, %entry.cleanup92_crit_edge155
  %retval.0 = phi i32 [ 0, %dec_used_clus ], [ -5, %if.then11 ], [ 0, %entry.cleanup92_crit_edge ], [ 0, %entry.cleanup92_crit_edge155 ], [ 0, %lor.lhs.false3.cleanup92_crit_edge ], [ 0, %if.end.cleanup92_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_find_last_cluster(ptr noundef %sb, ptr nocapture noundef readonly %p_chain, ptr nocapture noundef writeonly %ret_clu) local_unnamed_addr #0 align 64 {
entry:
  %next = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %next) #5
  %0 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p_chain, align 4
  %2 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %next, align 4
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp eq i8 %4, 3
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %7 = ptrtoint ptr %ret_clu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %ret_clu, align 4
  br label %cleanup

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %count.0 = phi i32 [ %inc, %do.cond.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %8 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %next, align 4
  %call = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %9, ptr noundef nonnull %next)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %inc = add i32 %count.0, 1
  %10 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next, align 4
  %cmp4.not = icmp eq i32 %11, -1
  br i1 %cmp4.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.cond
  %size6 = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 1
  %12 = ptrtoint ptr %size6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %inc)
  %cmp7.not = icmp eq i32 %13, %inc
  br i1 %cmp7.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %sb, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %inc) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ret_clu to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %ret_clu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -5, %if.then9 ], [ 0, %if.end11 ], [ -5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %next) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_zeroed_cluster(ptr nocapture noundef readonly %dir, i32 noundef %clu) local_unnamed_addr #0 align 64 {
entry:
  %bhs = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #5
  %sub.i = add i32 %clu, -2
  %conv.i = zext i32 %sub.i to i64
  %sect_per_clus_bits.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 5
  %4 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  %5 = ptrtoint ptr %sect_per_clus_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sect_per_clus_bits.i, align 8
  %sh_prom.i = zext i32 %6 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %data_start_sector.i = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %data_start_sector.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data_start_sector.i, align 8
  %add.i = add i64 %shl.i, %8
  %sect_per_clus = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %sect_per_clus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sect_per_clus, align 4
  %conv = zext i32 %10 to i64
  %add = add i64 %add.i, %conv
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %12)
  %cmp = icmp ule i64 %add, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp4.not = icmp eq i64 %12, 0
  %or.cond = or i1 %cmp4.not, %cmp
  br i1 %or.cond, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %add)
  %cmp9102 = icmp ult i64 %add.i, %add
  br i1 %cmp9102, label %for.cond.preheader.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.lr.ph:                         ; preds = %while.cond.preheader
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %i_flags = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 4
  %arrayidx.1 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 1
  %arrayidx.2 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 2
  %arrayidx.3 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 3
  %arrayidx.4 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 4
  %arrayidx.5 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 5
  %arrayidx.6 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 6
  %arrayidx.7 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 7
  %arrayidx33.1 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 1
  %arrayidx33.2 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 2
  %arrayidx33.3 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 3
  %arrayidx33.4 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 4
  %arrayidx33.5 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 5
  %arrayidx33.6 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 6
  %arrayidx33.7 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 7
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ratelimit = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 25
  %call7 = tail call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef nonnull @__func__.exfat_zeroed_cluster) #5
  %13 = ptrtoint ptr %sect_per_clus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sect_per_clus, align 4
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef %call7, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.exfat_zeroed_cluster, i64 noundef %add.i, i32 noundef %14) #8
  br label %cleanup

while.cond.loopexit:                              ; preds = %if.then.i.7, %for.body32.7.while.cond.loopexit_crit_edge, %brelse.exit.6.while.cond.loopexit_crit_edge, %brelse.exit.5.while.cond.loopexit_crit_edge, %brelse.exit.4.while.cond.loopexit_crit_edge, %brelse.exit.3.while.cond.loopexit_crit_edge, %brelse.exit.2.while.cond.loopexit_crit_edge, %brelse.exit.1.while.cond.loopexit_crit_edge, %brelse.exit.while.cond.loopexit_crit_edge, %for.cond29.preheader.while.cond.loopexit_crit_edge
  %cmp9 = icmp ult i64 %blknr.1.lcssa, %add
  br i1 %cmp9, label %while.cond.loopexit.for.cond.preheader_crit_edge, label %while.cond.loopexit.cleanup_crit_edge

while.cond.loopexit.cleanup_crit_edge:            ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.cond.loopexit.for.cond.preheader_crit_edge: ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond.loopexit.for.cond.preheader_crit_edge, %for.cond.preheader.lr.ph
  %blknr.0103 = phi i64 [ %add.i, %for.cond.preheader.lr.ph ], [ %blknr.1.lcssa, %while.cond.loopexit.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %blknr.0103, i64 %add)
  %cmp1395 = icmp ult i64 %blknr.0103, %add
  br i1 %cmp1395, label %for.body, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond.preheader
  %15 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_bdev.i, align 4
  %17 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i, align 16
  %call.i = call ptr @__getblk_gfp(ptr noundef %16, i64 noundef %blknr.0103, i32 noundef %18, i32 noundef 8) #5
  %19 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %bhs, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.release_bhs_crit_edge, label %if.end18

for.body.release_bhs_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18:                                         ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %22 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize.i, align 16
  %24 = call ptr @memset(ptr %21, i32 0, i32 %23)
  %inc20 = add nuw i64 %blknr.0103, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20, i64 %add)
  %cmp13 = icmp ult i64 %inc20, %add
  br i1 %cmp13, label %for.body.1, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.1:                                       ; preds = %if.end18
  %25 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_bdev.i, align 4
  %27 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s_blocksize.i, align 16
  %call.i.1 = call ptr @__getblk_gfp(ptr noundef %26, i64 noundef %inc20, i32 noundef %28, i32 noundef 8) #5
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.1, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %for.body.1.release_bhs_crit_edge, label %if.end18.1

for.body.1.release_bhs_crit_edge:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.1:                                       ; preds = %for.body.1
  %b_data.1 = getelementptr inbounds %struct.buffer_head, ptr %call.i.1, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.1, align 4
  %32 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize.i, align 16
  %34 = call ptr @memset(ptr %31, i32 0, i32 %33)
  %inc20.1 = add nuw i64 %blknr.0103, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.1, i64 %add)
  %cmp13.1 = icmp ult i64 %inc20.1, %add
  br i1 %cmp13.1, label %for.body.2, label %if.end18.1.for.end_crit_edge

if.end18.1.for.end_crit_edge:                     ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.2:                                       ; preds = %if.end18.1
  %35 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i, align 4
  %37 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_blocksize.i, align 16
  %call.i.2 = call ptr @__getblk_gfp(ptr noundef %36, i64 noundef %inc20.1, i32 noundef %38, i32 noundef 8) #5
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.2, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %call.i.2, null
  br i1 %tobool.not.2, label %for.body.2.release_bhs_crit_edge, label %if.end18.2

for.body.2.release_bhs_crit_edge:                 ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.2:                                       ; preds = %for.body.2
  %b_data.2 = getelementptr inbounds %struct.buffer_head, ptr %call.i.2, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.2, align 4
  %42 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_blocksize.i, align 16
  %44 = call ptr @memset(ptr %41, i32 0, i32 %43)
  %inc20.2 = add nuw i64 %blknr.0103, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.2, i64 %add)
  %cmp13.2 = icmp ult i64 %inc20.2, %add
  br i1 %cmp13.2, label %for.body.3, label %if.end18.2.for.end_crit_edge

if.end18.2.for.end_crit_edge:                     ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.3:                                       ; preds = %if.end18.2
  %45 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %s_bdev.i, align 4
  %47 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize.i, align 16
  %call.i.3 = call ptr @__getblk_gfp(ptr noundef %46, i64 noundef %inc20.2, i32 noundef %48, i32 noundef 8) #5
  %49 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.3, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %call.i.3, null
  br i1 %tobool.not.3, label %for.body.3.release_bhs_crit_edge, label %if.end18.3

for.body.3.release_bhs_crit_edge:                 ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.3:                                       ; preds = %for.body.3
  %b_data.3 = getelementptr inbounds %struct.buffer_head, ptr %call.i.3, i32 0, i32 5
  %50 = ptrtoint ptr %b_data.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data.3, align 4
  %52 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %s_blocksize.i, align 16
  %54 = call ptr @memset(ptr %51, i32 0, i32 %53)
  %inc20.3 = add nuw i64 %blknr.0103, 4
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.3, i64 %add)
  %cmp13.3 = icmp ult i64 %inc20.3, %add
  br i1 %cmp13.3, label %for.body.4, label %if.end18.3.for.end_crit_edge

if.end18.3.for.end_crit_edge:                     ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.4:                                       ; preds = %if.end18.3
  %55 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bdev.i, align 4
  %57 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_blocksize.i, align 16
  %call.i.4 = call ptr @__getblk_gfp(ptr noundef %56, i64 noundef %inc20.3, i32 noundef %58, i32 noundef 8) #5
  %59 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.4, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %call.i.4, null
  br i1 %tobool.not.4, label %for.body.4.release_bhs_crit_edge, label %if.end18.4

for.body.4.release_bhs_crit_edge:                 ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.4:                                       ; preds = %for.body.4
  %b_data.4 = getelementptr inbounds %struct.buffer_head, ptr %call.i.4, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.4, align 4
  %62 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %s_blocksize.i, align 16
  %64 = call ptr @memset(ptr %61, i32 0, i32 %63)
  %inc20.4 = add nuw i64 %blknr.0103, 5
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.4, i64 %add)
  %cmp13.4 = icmp ult i64 %inc20.4, %add
  br i1 %cmp13.4, label %for.body.5, label %if.end18.4.for.end_crit_edge

if.end18.4.for.end_crit_edge:                     ; preds = %if.end18.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.5:                                       ; preds = %if.end18.4
  %65 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev.i, align 4
  %67 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize.i, align 16
  %call.i.5 = call ptr @__getblk_gfp(ptr noundef %66, i64 noundef %inc20.4, i32 noundef %68, i32 noundef 8) #5
  %69 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.5, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %call.i.5, null
  br i1 %tobool.not.5, label %for.body.5.release_bhs_crit_edge, label %if.end18.5

for.body.5.release_bhs_crit_edge:                 ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.5:                                       ; preds = %for.body.5
  %b_data.5 = getelementptr inbounds %struct.buffer_head, ptr %call.i.5, i32 0, i32 5
  %70 = ptrtoint ptr %b_data.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data.5, align 4
  %72 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %s_blocksize.i, align 16
  %74 = call ptr @memset(ptr %71, i32 0, i32 %73)
  %inc20.5 = add nuw i64 %blknr.0103, 6
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.5, i64 %add)
  %cmp13.5 = icmp ult i64 %inc20.5, %add
  br i1 %cmp13.5, label %for.body.6, label %if.end18.5.for.end_crit_edge

if.end18.5.for.end_crit_edge:                     ; preds = %if.end18.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.6:                                       ; preds = %if.end18.5
  %75 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %s_bdev.i, align 4
  %77 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_blocksize.i, align 16
  %call.i.6 = call ptr @__getblk_gfp(ptr noundef %76, i64 noundef %inc20.5, i32 noundef %78, i32 noundef 8) #5
  %79 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i.6, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %call.i.6, null
  br i1 %tobool.not.6, label %for.body.6.release_bhs_crit_edge, label %if.end18.6

for.body.6.release_bhs_crit_edge:                 ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.6:                                       ; preds = %for.body.6
  %b_data.6 = getelementptr inbounds %struct.buffer_head, ptr %call.i.6, i32 0, i32 5
  %80 = ptrtoint ptr %b_data.6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %b_data.6, align 4
  %82 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_blocksize.i, align 16
  %84 = call ptr @memset(ptr %81, i32 0, i32 %83)
  %inc20.6 = add nuw i64 %blknr.0103, 7
  call void @__sanitizer_cov_trace_cmp8(i64 %inc20.6, i64 %add)
  %cmp13.6 = icmp ult i64 %inc20.6, %add
  br i1 %cmp13.6, label %for.body.7, label %if.end18.6.for.end_crit_edge

if.end18.6.for.end_crit_edge:                     ; preds = %if.end18.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.7:                                       ; preds = %if.end18.6
  %85 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_bdev.i, align 4
  %87 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_blocksize.i, align 16
  %call.i.7 = call ptr @__getblk_gfp(ptr noundef %86, i64 noundef %inc20.6, i32 noundef %88, i32 noundef 8) #5
  %89 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.7, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %call.i.7, null
  br i1 %tobool.not.7, label %for.body.7.release_bhs_crit_edge, label %if.end18.7

for.body.7.release_bhs_crit_edge:                 ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

if.end18.7:                                       ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #7
  %b_data.7 = getelementptr inbounds %struct.buffer_head, ptr %call.i.7, i32 0, i32 5
  %90 = ptrtoint ptr %b_data.7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %b_data.7, align 4
  %92 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %s_blocksize.i, align 16
  %94 = call ptr @memset(ptr %91, i32 0, i32 %93)
  %inc20.7 = add nuw i64 %blknr.0103, 8
  br label %for.end

for.end:                                          ; preds = %if.end18.7, %if.end18.6.for.end_crit_edge, %if.end18.5.for.end_crit_edge, %if.end18.4.for.end_crit_edge, %if.end18.3.for.end_crit_edge, %if.end18.2.for.end_crit_edge, %if.end18.1.for.end_crit_edge, %if.end18.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %blknr.1.lcssa = phi i64 [ %blknr.0103, %for.cond.preheader.for.end_crit_edge ], [ %inc20, %if.end18.for.end_crit_edge ], [ %inc20.1, %if.end18.1.for.end_crit_edge ], [ %inc20.2, %if.end18.2.for.end_crit_edge ], [ %inc20.3, %if.end18.3.for.end_crit_edge ], [ %inc20.4, %if.end18.4.for.end_crit_edge ], [ %inc20.5, %if.end18.5.for.end_crit_edge ], [ %inc20.6, %if.end18.6.for.end_crit_edge ], [ %inc20.7, %if.end18.7 ]
  %n.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %if.end18.for.end_crit_edge ], [ 2, %if.end18.1.for.end_crit_edge ], [ 3, %if.end18.2.for.end_crit_edge ], [ 4, %if.end18.3.for.end_crit_edge ], [ 5, %if.end18.4.for.end_crit_edge ], [ 6, %if.end18.5.for.end_crit_edge ], [ 7, %if.end18.6.for.end_crit_edge ], [ 8, %if.end18.7 ]
  %95 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %s_flags, align 4
  %and = and i32 %98, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %lor.rhs, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %i_flags, align 4
  %and23 = and i32 %100, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24 = icmp ne i32 %and23, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge
  %101 = phi i1 [ true, %for.end.lor.end_crit_edge ], [ %tobool24, %lor.rhs ]
  %lor.ext = zext i1 %101 to i32
  %call25 = call i32 @exfat_update_bhs(ptr noundef nonnull %bhs, i32 noundef %n.0.lcssa, i32 noundef %lor.ext) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond29.preheader, label %lor.end.release_bhs_crit_edge

lor.end.release_bhs_crit_edge:                    ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %release_bhs

for.cond29.preheader:                             ; preds = %lor.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa)
  %cmp30100.not = icmp eq i32 %n.0.lcssa, 0
  br i1 %cmp30100.not, label %for.cond29.preheader.while.cond.loopexit_crit_edge, label %for.body32

for.cond29.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32:                                       ; preds = %for.cond29.preheader
  %102 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bhs, align 4
  %tobool.not.i = icmp eq ptr %103, null
  br i1 %tobool.not.i, label %for.body32.brelse.exit_crit_edge, label %if.then.i

for.body32.brelse.exit_crit_edge:                 ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %103) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %for.body32.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.0.lcssa)
  %exitcond.not = icmp eq i32 %n.0.lcssa, 1
  br i1 %exitcond.not, label %brelse.exit.while.cond.loopexit_crit_edge, label %for.body32.1

brelse.exit.while.cond.loopexit_crit_edge:        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.1:                                     ; preds = %brelse.exit
  %104 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx33.1, align 4
  %tobool.not.i.1 = icmp eq ptr %105, null
  br i1 %tobool.not.i.1, label %for.body32.1.brelse.exit.1_crit_edge, label %if.then.i.1

for.body32.1.brelse.exit.1_crit_edge:             ; preds = %for.body32.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.1

if.then.i.1:                                      ; preds = %for.body32.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %105) #5
  br label %brelse.exit.1

brelse.exit.1:                                    ; preds = %if.then.i.1, %for.body32.1.brelse.exit.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.0.lcssa)
  %exitcond.not.1 = icmp eq i32 %n.0.lcssa, 2
  br i1 %exitcond.not.1, label %brelse.exit.1.while.cond.loopexit_crit_edge, label %for.body32.2

brelse.exit.1.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.2:                                     ; preds = %brelse.exit.1
  %106 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx33.2, align 4
  %tobool.not.i.2 = icmp eq ptr %107, null
  br i1 %tobool.not.i.2, label %for.body32.2.brelse.exit.2_crit_edge, label %if.then.i.2

for.body32.2.brelse.exit.2_crit_edge:             ; preds = %for.body32.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.2

if.then.i.2:                                      ; preds = %for.body32.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %107) #5
  br label %brelse.exit.2

brelse.exit.2:                                    ; preds = %if.then.i.2, %for.body32.2.brelse.exit.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n.0.lcssa)
  %exitcond.not.2 = icmp eq i32 %n.0.lcssa, 3
  br i1 %exitcond.not.2, label %brelse.exit.2.while.cond.loopexit_crit_edge, label %for.body32.3

brelse.exit.2.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.3:                                     ; preds = %brelse.exit.2
  %108 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx33.3, align 4
  %tobool.not.i.3 = icmp eq ptr %109, null
  br i1 %tobool.not.i.3, label %for.body32.3.brelse.exit.3_crit_edge, label %if.then.i.3

for.body32.3.brelse.exit.3_crit_edge:             ; preds = %for.body32.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.3

if.then.i.3:                                      ; preds = %for.body32.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %109) #5
  br label %brelse.exit.3

brelse.exit.3:                                    ; preds = %if.then.i.3, %for.body32.3.brelse.exit.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n.0.lcssa)
  %exitcond.not.3 = icmp eq i32 %n.0.lcssa, 4
  br i1 %exitcond.not.3, label %brelse.exit.3.while.cond.loopexit_crit_edge, label %for.body32.4

brelse.exit.3.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.4:                                     ; preds = %brelse.exit.3
  %110 = ptrtoint ptr %arrayidx33.4 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx33.4, align 4
  %tobool.not.i.4 = icmp eq ptr %111, null
  br i1 %tobool.not.i.4, label %for.body32.4.brelse.exit.4_crit_edge, label %if.then.i.4

for.body32.4.brelse.exit.4_crit_edge:             ; preds = %for.body32.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.4

if.then.i.4:                                      ; preds = %for.body32.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %111) #5
  br label %brelse.exit.4

brelse.exit.4:                                    ; preds = %if.then.i.4, %for.body32.4.brelse.exit.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %n.0.lcssa)
  %exitcond.not.4 = icmp eq i32 %n.0.lcssa, 5
  br i1 %exitcond.not.4, label %brelse.exit.4.while.cond.loopexit_crit_edge, label %for.body32.5

brelse.exit.4.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.5:                                     ; preds = %brelse.exit.4
  %112 = ptrtoint ptr %arrayidx33.5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx33.5, align 4
  %tobool.not.i.5 = icmp eq ptr %113, null
  br i1 %tobool.not.i.5, label %for.body32.5.brelse.exit.5_crit_edge, label %if.then.i.5

for.body32.5.brelse.exit.5_crit_edge:             ; preds = %for.body32.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.5

if.then.i.5:                                      ; preds = %for.body32.5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %113) #5
  br label %brelse.exit.5

brelse.exit.5:                                    ; preds = %if.then.i.5, %for.body32.5.brelse.exit.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %n.0.lcssa)
  %exitcond.not.5 = icmp eq i32 %n.0.lcssa, 6
  br i1 %exitcond.not.5, label %brelse.exit.5.while.cond.loopexit_crit_edge, label %for.body32.6

brelse.exit.5.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.6:                                     ; preds = %brelse.exit.5
  %114 = ptrtoint ptr %arrayidx33.6 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx33.6, align 4
  %tobool.not.i.6 = icmp eq ptr %115, null
  br i1 %tobool.not.i.6, label %for.body32.6.brelse.exit.6_crit_edge, label %if.then.i.6

for.body32.6.brelse.exit.6_crit_edge:             ; preds = %for.body32.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit.6

if.then.i.6:                                      ; preds = %for.body32.6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %115) #5
  br label %brelse.exit.6

brelse.exit.6:                                    ; preds = %if.then.i.6, %for.body32.6.brelse.exit.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %n.0.lcssa)
  %exitcond.not.6 = icmp eq i32 %n.0.lcssa, 7
  br i1 %exitcond.not.6, label %brelse.exit.6.while.cond.loopexit_crit_edge, label %for.body32.7

brelse.exit.6.while.cond.loopexit_crit_edge:      ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body32.7:                                     ; preds = %brelse.exit.6
  %116 = ptrtoint ptr %arrayidx33.7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx33.7, align 4
  %tobool.not.i.7 = icmp eq ptr %117, null
  br i1 %tobool.not.i.7, label %for.body32.7.while.cond.loopexit_crit_edge, label %if.then.i.7

for.body32.7.while.cond.loopexit_crit_edge:       ; preds = %for.body32.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

if.then.i.7:                                      ; preds = %for.body32.7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %117) #5
  br label %while.cond.loopexit

release_bhs:                                      ; preds = %lor.end.release_bhs_crit_edge, %for.body.7.release_bhs_crit_edge, %for.body.6.release_bhs_crit_edge, %for.body.5.release_bhs_crit_edge, %for.body.4.release_bhs_crit_edge, %for.body.3.release_bhs_crit_edge, %for.body.2.release_bhs_crit_edge, %for.body.1.release_bhs_crit_edge, %for.body.release_bhs_crit_edge
  %blknr.194 = phi i64 [ %blknr.0103, %for.body.release_bhs_crit_edge ], [ %inc20, %for.body.1.release_bhs_crit_edge ], [ %inc20.1, %for.body.2.release_bhs_crit_edge ], [ %inc20.2, %for.body.3.release_bhs_crit_edge ], [ %inc20.3, %for.body.4.release_bhs_crit_edge ], [ %inc20.4, %for.body.5.release_bhs_crit_edge ], [ %inc20.5, %for.body.6.release_bhs_crit_edge ], [ %inc20.6, %for.body.7.release_bhs_crit_edge ], [ %blknr.1.lcssa, %lor.end.release_bhs_crit_edge ]
  %n.092 = phi i32 [ 0, %for.body.release_bhs_crit_edge ], [ 1, %for.body.1.release_bhs_crit_edge ], [ 2, %for.body.2.release_bhs_crit_edge ], [ 3, %for.body.3.release_bhs_crit_edge ], [ 4, %for.body.4.release_bhs_crit_edge ], [ 5, %for.body.5.release_bhs_crit_edge ], [ 6, %for.body.6.release_bhs_crit_edge ], [ 7, %for.body.7.release_bhs_crit_edge ], [ %n.0.lcssa, %lor.end.release_bhs_crit_edge ]
  %err.0 = phi i32 [ -12, %for.body.7.release_bhs_crit_edge ], [ -12, %for.body.6.release_bhs_crit_edge ], [ -12, %for.body.5.release_bhs_crit_edge ], [ -12, %for.body.4.release_bhs_crit_edge ], [ -12, %for.body.3.release_bhs_crit_edge ], [ -12, %for.body.2.release_bhs_crit_edge ], [ -12, %for.body.1.release_bhs_crit_edge ], [ -12, %for.body.release_bhs_crit_edge ], [ %call25, %lor.end.release_bhs_crit_edge ]
  call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i64 noundef %blknr.194) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.092)
  %cmp38104.not = icmp eq i32 %n.092, 0
  br i1 %cmp38104.not, label %release_bhs.cleanup_crit_edge, label %for.body40

release_bhs.cleanup_crit_edge:                    ; preds = %release_bhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40:                                       ; preds = %release_bhs
  %118 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bhs, align 4
  %tobool.not.i87 = icmp eq ptr %119, null
  br i1 %tobool.not.i87, label %for.body40.bforget.exit_crit_edge, label %if.then.i88

for.body40.bforget.exit_crit_edge:                ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit

if.then.i88:                                      ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %119) #5
  br label %bforget.exit

bforget.exit:                                     ; preds = %if.then.i88, %for.body40.bforget.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n.092)
  %exitcond113.not = icmp eq i32 %n.092, 1
  br i1 %exitcond113.not, label %bforget.exit.cleanup_crit_edge, label %for.body40.1

bforget.exit.cleanup_crit_edge:                   ; preds = %bforget.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.1:                                     ; preds = %bforget.exit
  %arrayidx41.1 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx41.1, align 4
  %tobool.not.i87.1 = icmp eq ptr %121, null
  br i1 %tobool.not.i87.1, label %for.body40.1.bforget.exit.1_crit_edge, label %if.then.i88.1

for.body40.1.bforget.exit.1_crit_edge:            ; preds = %for.body40.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.1

if.then.i88.1:                                    ; preds = %for.body40.1
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %121) #5
  br label %bforget.exit.1

bforget.exit.1:                                   ; preds = %if.then.i88.1, %for.body40.1.bforget.exit.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n.092)
  %exitcond113.not.1 = icmp eq i32 %n.092, 2
  br i1 %exitcond113.not.1, label %bforget.exit.1.cleanup_crit_edge, label %for.body40.2

bforget.exit.1.cleanup_crit_edge:                 ; preds = %bforget.exit.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.2:                                     ; preds = %bforget.exit.1
  %arrayidx41.2 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 2
  %122 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx41.2, align 4
  %tobool.not.i87.2 = icmp eq ptr %123, null
  br i1 %tobool.not.i87.2, label %for.body40.2.bforget.exit.2_crit_edge, label %if.then.i88.2

for.body40.2.bforget.exit.2_crit_edge:            ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.2

if.then.i88.2:                                    ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %123) #5
  br label %bforget.exit.2

bforget.exit.2:                                   ; preds = %if.then.i88.2, %for.body40.2.bforget.exit.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n.092)
  %exitcond113.not.2 = icmp eq i32 %n.092, 3
  br i1 %exitcond113.not.2, label %bforget.exit.2.cleanup_crit_edge, label %for.body40.3

bforget.exit.2.cleanup_crit_edge:                 ; preds = %bforget.exit.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.3:                                     ; preds = %bforget.exit.2
  %arrayidx41.3 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 3
  %124 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx41.3, align 4
  %tobool.not.i87.3 = icmp eq ptr %125, null
  br i1 %tobool.not.i87.3, label %for.body40.3.bforget.exit.3_crit_edge, label %if.then.i88.3

for.body40.3.bforget.exit.3_crit_edge:            ; preds = %for.body40.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.3

if.then.i88.3:                                    ; preds = %for.body40.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %125) #5
  br label %bforget.exit.3

bforget.exit.3:                                   ; preds = %if.then.i88.3, %for.body40.3.bforget.exit.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n.092)
  %exitcond113.not.3 = icmp eq i32 %n.092, 4
  br i1 %exitcond113.not.3, label %bforget.exit.3.cleanup_crit_edge, label %for.body40.4

bforget.exit.3.cleanup_crit_edge:                 ; preds = %bforget.exit.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.4:                                     ; preds = %bforget.exit.3
  %arrayidx41.4 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 4
  %126 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx41.4, align 4
  %tobool.not.i87.4 = icmp eq ptr %127, null
  br i1 %tobool.not.i87.4, label %for.body40.4.bforget.exit.4_crit_edge, label %if.then.i88.4

for.body40.4.bforget.exit.4_crit_edge:            ; preds = %for.body40.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.4

if.then.i88.4:                                    ; preds = %for.body40.4
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %127) #5
  br label %bforget.exit.4

bforget.exit.4:                                   ; preds = %if.then.i88.4, %for.body40.4.bforget.exit.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %n.092)
  %exitcond113.not.4 = icmp eq i32 %n.092, 5
  br i1 %exitcond113.not.4, label %bforget.exit.4.cleanup_crit_edge, label %for.body40.5

bforget.exit.4.cleanup_crit_edge:                 ; preds = %bforget.exit.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.5:                                     ; preds = %bforget.exit.4
  %arrayidx41.5 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx41.5, align 4
  %tobool.not.i87.5 = icmp eq ptr %129, null
  br i1 %tobool.not.i87.5, label %for.body40.5.bforget.exit.5_crit_edge, label %if.then.i88.5

for.body40.5.bforget.exit.5_crit_edge:            ; preds = %for.body40.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.5

if.then.i88.5:                                    ; preds = %for.body40.5
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %129) #5
  br label %bforget.exit.5

bforget.exit.5:                                   ; preds = %if.then.i88.5, %for.body40.5.bforget.exit.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %n.092)
  %exitcond113.not.5 = icmp eq i32 %n.092, 6
  br i1 %exitcond113.not.5, label %bforget.exit.5.cleanup_crit_edge, label %for.body40.6

bforget.exit.5.cleanup_crit_edge:                 ; preds = %bforget.exit.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.6:                                     ; preds = %bforget.exit.5
  %arrayidx41.6 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 6
  %130 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx41.6, align 4
  %tobool.not.i87.6 = icmp eq ptr %131, null
  br i1 %tobool.not.i87.6, label %for.body40.6.bforget.exit.6_crit_edge, label %if.then.i88.6

for.body40.6.bforget.exit.6_crit_edge:            ; preds = %for.body40.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %bforget.exit.6

if.then.i88.6:                                    ; preds = %for.body40.6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %131) #5
  br label %bforget.exit.6

bforget.exit.6:                                   ; preds = %if.then.i88.6, %for.body40.6.bforget.exit.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %n.092)
  %exitcond113.not.6 = icmp eq i32 %n.092, 7
  br i1 %exitcond113.not.6, label %bforget.exit.6.cleanup_crit_edge, label %for.body40.7

bforget.exit.6.cleanup_crit_edge:                 ; preds = %bforget.exit.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body40.7:                                     ; preds = %bforget.exit.6
  %arrayidx41.7 = getelementptr inbounds [8 x ptr], ptr %bhs, i32 0, i32 7
  %132 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx41.7, align 4
  %tobool.not.i87.7 = icmp eq ptr %133, null
  br i1 %tobool.not.i87.7, label %for.body40.7.cleanup_crit_edge, label %if.then.i88.7

for.body40.7.cleanup_crit_edge:                   ; preds = %for.body40.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i88.7:                                    ; preds = %for.body40.7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__bforget(ptr noundef nonnull %133) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i88.7, %for.body40.7.cleanup_crit_edge, %bforget.exit.6.cleanup_crit_edge, %bforget.exit.5.cleanup_crit_edge, %bforget.exit.4.cleanup_crit_edge, %bforget.exit.3.cleanup_crit_edge, %bforget.exit.2.cleanup_crit_edge, %bforget.exit.1.cleanup_crit_edge, %bforget.exit.cleanup_crit_edge, %release_bhs.cleanup_crit_edge, %while.cond.loopexit.cleanup_crit_edge, %if.then, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then ], [ %err.0, %release_bhs.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %err.0, %for.body40.7.cleanup_crit_edge ], [ %err.0, %if.then.i88.7 ], [ %err.0, %bforget.exit.6.cleanup_crit_edge ], [ %err.0, %bforget.exit.5.cleanup_crit_edge ], [ %err.0, %bforget.exit.4.cleanup_crit_edge ], [ %err.0, %bforget.exit.3.cleanup_crit_edge ], [ %err.0, %bforget.exit.2.cleanup_crit_edge ], [ %err.0, %bforget.exit.1.cleanup_crit_edge ], [ %err.0, %bforget.exit.cleanup_crit_edge ], [ 0, %while.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_update_bhs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @exfat_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_alloc_cluster(ptr noundef %inode, i32 noundef %num_alloc, ptr nocapture noundef %p_chain, i1 noundef zeroext %sync_bmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %num_clusters1 = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clusters1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clusters1, align 8
  %sub = add i32 %5, -2
  %used_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used_clusters, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp = icmp ult i32 %sub, %7
  br i1 %cmp, label %if.then, label %if.end, !prof !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ratelimit = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 25
  %call4 = tail call i32 @___ratelimit(ptr noundef %ratelimit, ptr noundef nonnull @__func__.exfat_alloc_cluster) #5
  %8 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used_clusters, align 4
  tail call void (ptr, i32, ptr, ...) @__exfat_fs_error(ptr noundef %1, i32 noundef %call4, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.exfat_alloc_cluster, i32 noundef %sub, i32 noundef %9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub7 = sub i32 %sub, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %num_alloc)
  %cmp8 = icmp ult i32 %sub7, %num_alloc
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %bitmap_lock = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #5
  %10 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp11 = icmp eq i32 %11, -1
  br i1 %cmp11, label %if.then12, label %if.end10.if.end23_crit_edge

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then12:                                        ; preds = %if.end10
  %clu_srch_ptr = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %clu_srch_ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clu_srch_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp13 = icmp ult i32 %13, 2
  br i1 %cmp13, label %if.then14, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.10, i32 noundef %13) #8
  %14 = ptrtoint ptr %clu_srch_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %clu_srch_ptr, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then12.if.end17_crit_edge
  %15 = ptrtoint ptr %clu_srch_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clu_srch_ptr, align 8
  %call19 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp20 = icmp eq i32 %call19, -1
  br i1 %cmp20, label %if.end17.unlock_crit_edge, label %if.end17.if.end23_crit_edge

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end17.unlock_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %hint_clu.0 = phi i32 [ %call19, %if.end17.if.end23_crit_edge ], [ %11, %if.end10.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hint_clu.0)
  %cmp.i = icmp ugt i32 %hint_clu.0, 1
  br i1 %cmp.i, label %is_valid_cluster.exit, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

is_valid_cluster.exit:                            ; preds = %if.end23
  %17 = ptrtoint ptr %num_clusters1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_clusters1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %hint_clu.0)
  %cmp1.i = icmp ugt i32 %18, %hint_clu.0
  br i1 %cmp1.i, label %is_valid_cluster.exit.if.end36_crit_edge, label %is_valid_cluster.exit.if.then25_crit_edge

is_valid_cluster.exit.if.then25_crit_edge:        ; preds = %is_valid_cluster.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

is_valid_cluster.exit.if.end36_crit_edge:         ; preds = %is_valid_cluster.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then25:                                        ; preds = %is_valid_cluster.exit.if.then25_crit_edge, %if.end23.if.then25_crit_edge
  tail call void (ptr, ptr, ptr, ...) @exfat_msg(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11, i32 noundef %hint_clu.0) #8
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 2
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp26 = icmp eq i8 %20, 3
  br i1 %cmp26, label %if.end33, label %if.then25.if.end36_crit_edge

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end33:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.then25.if.end36_crit_edge, %is_valid_cluster.exit.if.end36_crit_edge
  %hint_clu.1 = phi i32 [ %hint_clu.0, %is_valid_cluster.exit.if.end36_crit_edge ], [ 2, %if.end33 ], [ 2, %if.then25.if.end36_crit_edge ]
  %22 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %p_chain, align 4
  %call38225 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %hint_clu.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call38225)
  %cmp39.not226 = icmp eq i32 %call38225, -1
  br i1 %cmp39.not226, label %if.end36.unlock_crit_edge, label %while.body.lr.ph

if.end36.unlock_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

while.body.lr.ph:                                 ; preds = %if.end36
  %flags43 = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end111.while.body_crit_edge, %while.body.lr.ph
  %call38231 = phi i32 [ %call38225, %while.body.lr.ph ], [ %call38, %if.end111.while.body_crit_edge ]
  %last_clu.0230 = phi i32 [ -1, %while.body.lr.ph ], [ %call38231, %if.end111.while.body_crit_edge ]
  %hint_clu.2229 = phi i32 [ %hint_clu.1, %while.body.lr.ph ], [ %hint_clu.3, %if.end111.while.body_crit_edge ]
  %num_clusters.0228 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end111.while.body_crit_edge ]
  %num_alloc.addr.0227 = phi i32 [ %num_alloc, %while.body.lr.ph ], [ %dec, %if.end111.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call38231, i32 %hint_clu.2229)
  %cmp41.not = icmp eq i32 %call38231, %hint_clu.2229
  br i1 %cmp41.not, label %while.body.if.end54_crit_edge, label %land.lhs.true

while.body.if.end54_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

land.lhs.true:                                    ; preds = %while.body
  %23 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp45 = icmp eq i8 %24, 3
  br i1 %cmp45, label %if.then47, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then47:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_chain, align 4
  %27 = zext i32 %num_clusters.0228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %num_clusters.0228, label %if.then47.while.body.i_crit_edge [
    i32 0, label %if.then47.if.end52_crit_edge
    i32 1, label %if.then47.while.end.i_crit_edge
  ]

if.then47.while.end.i_crit_edge:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then47.while.body.i_crit_edge:                 ; preds = %if.then47
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add i32 %len.addr.017.i, -1
  %cmp.i192 = icmp ugt i32 %dec.i, 1
  br i1 %cmp.i192, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.then47.while.body.i_crit_edge
  %len.addr.017.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %num_clusters.0228, %if.then47.while.body.i_crit_edge ]
  %chain.addr.016.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ %26, %if.then47.while.body.i_crit_edge ]
  %add.i = add i32 %chain.addr.016.i, 1
  %call.i = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %chain.addr.016.i, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %while.cond.i, label %while.body.i.free_cluster_crit_edge

while.body.i.free_cluster_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

while.end.i:                                      ; preds = %while.cond.i.while.end.i_crit_edge, %if.then47.while.end.i_crit_edge
  %chain.addr.0.lcssa.i = phi i32 [ %26, %if.then47.while.end.i_crit_edge ], [ %add.i, %while.cond.i.while.end.i_crit_edge ]
  %call4.i = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %chain.addr.0.lcssa.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %while.end.i.if.end52_crit_edge, label %while.end.i.free_cluster_crit_edge

while.end.i.free_cluster_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

while.end.i.if.end52_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.end52:                                         ; preds = %while.end.i.if.end52_crit_edge, %if.then47.if.end52_crit_edge
  %28 = ptrtoint ptr %flags43 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %flags43, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %land.lhs.true.if.end54_crit_edge, %while.body.if.end54_crit_edge
  %call56 = tail call i32 @exfat_set_bitmap(ptr noundef %inode, i32 noundef %call38231, i1 noundef zeroext %sync_bmap) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.free_cluster_crit_edge

if.end54.free_cluster_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

if.end59:                                         ; preds = %if.end54
  %inc = add i32 %num_clusters.0228, 1
  %29 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp62 = icmp eq i8 %30, 1
  br i1 %cmp62, label %if.then64, label %if.end59.if.end69_crit_edge

if.end59.if.end69_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then64:                                        ; preds = %if.end59
  %call65 = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %call38231, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.free_cluster_crit_edge

if.then64.free_cluster_crit_edge:                 ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end59.if.end69_crit_edge
  %31 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p_chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp71 = icmp eq i32 %32, -1
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %p_chain to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call38231, ptr %p_chain, align 4
  br label %if.end85

if.else:                                          ; preds = %if.end69
  %34 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp77 = icmp eq i8 %35, 1
  br i1 %cmp77, label %if.then79, label %if.else.if.end85_crit_edge

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then79:                                        ; preds = %if.else
  %call80 = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %last_clu.0230, i32 noundef %call38231)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.if.end85_crit_edge, label %if.then79.free_cluster_crit_edge

if.then79.free_cluster_crit_edge:                 ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

if.then79.if.end85_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.end85:                                         ; preds = %if.then79.if.end85_crit_edge, %if.else.if.end85_crit_edge, %if.then73
  %dec = add i32 %num_alloc.addr.0227, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp86 = icmp eq i32 %dec, 0
  br i1 %cmp86, label %if.then88, label %if.end93

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %clu_srch_ptr89 = getelementptr inbounds %struct.exfat_sb_info, ptr %3, i32 0, i32 19
  %36 = ptrtoint ptr %clu_srch_ptr89 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %hint_clu.2229, ptr %clu_srch_ptr89, align 8
  %37 = ptrtoint ptr %used_clusters to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %used_clusters, align 4
  %add = add i32 %38, %num_alloc
  store i32 %add, ptr %used_clusters, align 4
  %size = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 1
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %add91 = add i32 %40, %num_alloc
  store i32 %add91, ptr %size, align 4
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #5
  br label %cleanup

if.end93:                                         ; preds = %if.end85
  %add94 = add i32 %call38231, 1
  %41 = ptrtoint ptr %num_clusters1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_clusters1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add94, i32 %42)
  %cmp96.not = icmp ult i32 %add94, %42
  br i1 %cmp96.not, label %if.end93.if.end111_crit_edge, label %if.then98

if.end93.if.end111_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then98:                                        ; preds = %if.end93
  %43 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flags43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %cmp101 = icmp eq i8 %44, 3
  br i1 %cmp101, label %if.then103, label %if.then98.if.end111_crit_edge

if.then98.if.end111_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

if.then103:                                       ; preds = %if.then98
  %45 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %p_chain, align 4
  %47 = zext i32 %num_clusters.0228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %num_clusters.0228, label %if.then103.while.body.i201_crit_edge [
    i32 -1, label %if.then103.if.end108_crit_edge
    i32 0, label %if.then103.while.end.i206_crit_edge
  ]

if.then103.while.end.i206_crit_edge:              ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i206

if.then103.if.end108_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then103.while.body.i201_crit_edge:             ; preds = %if.then103
  br label %while.body.i201

while.cond.i195:                                  ; preds = %while.body.i201
  %dec.i193 = add i32 %len.addr.017.i196, -1
  %cmp.i194 = icmp ugt i32 %dec.i193, 1
  br i1 %cmp.i194, label %while.cond.i195.while.body.i201_crit_edge, label %while.cond.i195.while.end.i206_crit_edge

while.cond.i195.while.end.i206_crit_edge:         ; preds = %while.cond.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i206

while.cond.i195.while.body.i201_crit_edge:        ; preds = %while.cond.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i201

while.body.i201:                                  ; preds = %while.cond.i195.while.body.i201_crit_edge, %if.then103.while.body.i201_crit_edge
  %len.addr.017.i196 = phi i32 [ %dec.i193, %while.cond.i195.while.body.i201_crit_edge ], [ %inc, %if.then103.while.body.i201_crit_edge ]
  %chain.addr.016.i197 = phi i32 [ %add.i198, %while.cond.i195.while.body.i201_crit_edge ], [ %46, %if.then103.while.body.i201_crit_edge ]
  %add.i198 = add i32 %chain.addr.016.i197, 1
  %call.i199 = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %chain.addr.016.i197, i32 noundef %add.i198) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i199)
  %tobool1.not.i200 = icmp eq i32 %call.i199, 0
  br i1 %tobool1.not.i200, label %while.cond.i195, label %while.body.i201.free_cluster_crit_edge

while.body.i201.free_cluster_crit_edge:           ; preds = %while.body.i201
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

while.end.i206:                                   ; preds = %while.cond.i195.while.end.i206_crit_edge, %if.then103.while.end.i206_crit_edge
  %chain.addr.0.lcssa.i202 = phi i32 [ %46, %if.then103.while.end.i206_crit_edge ], [ %add.i198, %while.cond.i195.while.end.i206_crit_edge ]
  %call4.i203 = tail call i32 @exfat_ent_set(ptr noundef %1, i32 noundef %chain.addr.0.lcssa.i202, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i203)
  %tobool5.not.i204 = icmp eq i32 %call4.i203, 0
  br i1 %tobool5.not.i204, label %while.end.i206.if.end108_crit_edge, label %while.end.i206.free_cluster_crit_edge

while.end.i206.free_cluster_crit_edge:            ; preds = %while.end.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

while.end.i206.if.end108_crit_edge:               ; preds = %while.end.i206
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.end108:                                        ; preds = %while.end.i206.if.end108_crit_edge, %if.then103.if.end108_crit_edge
  %48 = ptrtoint ptr %flags43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %flags43, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end108, %if.then98.if.end111_crit_edge, %if.end93.if.end111_crit_edge
  %hint_clu.3 = phi i32 [ 2, %if.end108 ], [ 2, %if.then98.if.end111_crit_edge ], [ %add94, %if.end93.if.end111_crit_edge ]
  %call38 = tail call i32 @exfat_find_free_bitmap(ptr noundef %1, i32 noundef %hint_clu.3) #5
  %cmp39.not = icmp eq i32 %call38, -1
  br i1 %cmp39.not, label %if.end111.free_cluster_crit_edge, label %if.end111.while.body_crit_edge

if.end111.while.body_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end111.free_cluster_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_cluster

free_cluster:                                     ; preds = %if.end111.free_cluster_crit_edge, %while.end.i206.free_cluster_crit_edge, %while.body.i201.free_cluster_crit_edge, %if.then79.free_cluster_crit_edge, %if.then64.free_cluster_crit_edge, %if.end54.free_cluster_crit_edge, %while.end.i.free_cluster_crit_edge, %while.body.i.free_cluster_crit_edge
  %ret.0 = phi i32 [ -5, %while.body.i201.free_cluster_crit_edge ], [ -5, %while.body.i.free_cluster_crit_edge ], [ -28, %if.end111.free_cluster_crit_edge ], [ -5, %if.end54.free_cluster_crit_edge ], [ -5, %if.then64.free_cluster_crit_edge ], [ -5, %if.then79.free_cluster_crit_edge ], [ -5, %while.end.i.free_cluster_crit_edge ], [ -5, %while.end.i206.free_cluster_crit_edge ]
  %num_clusters.1 = phi i32 [ %inc, %while.body.i201.free_cluster_crit_edge ], [ %num_clusters.0228, %while.body.i.free_cluster_crit_edge ], [ %inc, %if.end111.free_cluster_crit_edge ], [ %num_clusters.0228, %if.end54.free_cluster_crit_edge ], [ %inc, %if.then64.free_cluster_crit_edge ], [ %inc, %if.then79.free_cluster_crit_edge ], [ %num_clusters.0228, %while.end.i.free_cluster_crit_edge ], [ %inc, %while.end.i206.free_cluster_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clusters.1)
  %tobool112.not = icmp eq i32 %num_clusters.1, 0
  br i1 %tobool112.not, label %free_cluster.unlock_crit_edge, label %if.then113

free_cluster.unlock_crit_edge:                    ; preds = %free_cluster
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.then113:                                       ; preds = %free_cluster
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = tail call fastcc i32 @__exfat_free_cluster(ptr noundef %inode, ptr noundef %p_chain)
  br label %unlock

unlock:                                           ; preds = %if.then113, %free_cluster.unlock_crit_edge, %if.end36.unlock_crit_edge, %if.end17.unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then113 ], [ %ret.0, %free_cluster.unlock_crit_edge ], [ -28, %if.end17.unlock_crit_edge ], [ -28, %if.end36.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then88, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -5, %if.then ], [ %ret.1, %unlock ], [ 0, %if.then88 ], [ -28, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_find_free_bitmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exfat_set_bitmap(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @exfat_count_num_clusters(ptr noundef %sb, ptr nocapture noundef readonly %p_chain, ptr nocapture noundef writeonly %ret_count) local_unnamed_addr #0 align 64 {
entry:
  %clu = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clu) #5
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %p_chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_chain, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %if.end [
    i32 0, label %entry.cleanup.sink.split_crit_edge
    i32 -1, label %entry.cleanup.sink.split_crit_edge34
  ]

entry.cleanup.sink.split_crit_edge34:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp2 = icmp eq i8 %6, 3
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %size = getelementptr inbounds %struct.exfat_chain, ptr %p_chain, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %clu to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %clu, align 4
  %num_clusters = getelementptr inbounds %struct.exfat_sb_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_clusters, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp730 = icmp ugt i32 %11, 2
  br i1 %cmp730, label %if.end5.for.body_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

for.cond:                                         ; preds = %if.end12
  %inc17 = add nuw i32 %i.031, 1
  %12 = ptrtoint ptr %num_clusters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_clusters, align 8
  %cmp7 = icmp ult i32 %inc17, %13
  br i1 %cmp7, label %for.cond.for.body_crit_edge, label %for.cond.cleanup.sink.split_crit_edge

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end5.for.body_crit_edge
  %count.032 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %i.031 = phi i32 [ %inc17, %for.cond.for.body_crit_edge ], [ 2, %if.end5.for.body_crit_edge ]
  %14 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clu, align 4
  %call9 = call i32 @exfat_ent_get(ptr noundef %sb, i32 noundef %15, ptr noundef nonnull %clu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %inc = add nuw i32 %count.032, 1
  %16 = ptrtoint ptr %clu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp13 = icmp eq i32 %17, -1
  br i1 %cmp13, label %if.end12.cleanup.sink.split_crit_edge, label %for.cond

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge, %if.then4, %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge34
  %count.1.sink = phi i32 [ %8, %if.then4 ], [ 0, %entry.cleanup.sink.split_crit_edge ], [ 0, %entry.cleanup.sink.split_crit_edge34 ], [ 0, %if.end5.cleanup.sink.split_crit_edge ], [ %inc, %for.cond.cleanup.sink.split_crit_edge ], [ %inc, %if.end12.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %ret_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %count.1.sink, ptr %ret_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ -5, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clu) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_dirty_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @exfat_clear_bitmap(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bforget(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/exfat/fatent.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/exfat/fatent.c", i32 104, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/exfat/fatent.c", i32 111, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/exfat/fatent.c", i32 118, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/exfat/fatent.c", i32 125, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/exfat/fatent.c", i32 263, i32 3}
!12 = !{ptr @__func__.exfat_zeroed_cluster, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/exfat/fatent.c", i32 286, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/exfat/fatent.c", i32 314, i32 2}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__func__.exfat_alloc_cluster, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/exfat/fatent.c", i32 332, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/exfat/fatent.c", i32 347, i32 4}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/exfat/fatent.c", i32 361, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/exfat/fatent.c", i32 173, i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
