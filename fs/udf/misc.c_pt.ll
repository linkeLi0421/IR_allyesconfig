; ModuleID = '/llk/IR_all_yes/fs/udf/misc.c_pt.bc'
source_filename = "../fs/udf/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.extendedAttrHeaderDesc = type { %struct.tag, i32, i32 }
%struct.genericFormat = type { i32, i8, [3 x i8], i32, [0 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.kernel_lb_addr = type { i32, i16 }

@__func__.udf_read_tagged = private unnamed_addr constant [16 x i8] c"udf_read_tagged\00", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"read failed, block=%u, location=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@udf_read_tagged.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.udf_read_tagged, ptr @.str.2, ptr @.str.3, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/udf/misc.c\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s:%d:%s: location mismatch block %u, tag %u != %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"UDF-fs: %s:%d:%s: location mismatch block %u, tag %u != %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"tag checksum failed, block %u: 0x%02x != 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"tag version 0x%04x != 0x0002 || 0x0003, block %u\0A\00", [46 x i8] zeroinitializer }, align 32
@udf_read_tagged.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.udf_read_tagged, ptr @.str.2, ptr @.str.7, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:%s: Crc failure block %u: crc = %u, crclen = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"UDF-fs: %s:%d:%s: Crc failure block %u: crc = %u, crclen = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 512, i64 768]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 221, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 231, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 239, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 247, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [17 x i8] c"../fs/udf/misc.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 259, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_tgetblk(ptr nocapture noundef readonly %sb, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_flags.i, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %shr = lshr i32 %block, 5
  %mul = mul i32 %shr, 39
  %and = and i32 %block, 31
  %add = add i32 %mul, %and
  %block.sink = select i1 %tobool.not, i32 %block, i32 %add
  %conv2 = zext i32 %block.sink to i64
  %s_bdev.i8 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i8, align 4
  %s_blocksize.i9 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i9, align 16
  %call.i10 = tail call ptr @__getblk_gfp(ptr noundef %6, i64 noundef %conv2, i32 noundef %8, i32 noundef 8) #5
  ret ptr %call.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_tread(ptr nocapture noundef readonly %sb, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_flags.i, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %shr = lshr i32 %block, 5
  %mul = mul i32 %shr, 39
  %and = and i32 %block, 31
  %add = add i32 %mul, %and
  %block.sink = select i1 %tobool.not, i32 %block, i32 %add
  %conv2 = zext i32 %block.sink to i64
  %s_bdev.i8 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i8, align 4
  %s_blocksize.i9 = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i9, align 16
  %call.i10 = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %conv2, i32 noundef %8, i32 noundef 8) #5
  ret ptr %call.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_add_extendedattr(ptr nocapture noundef %inode, i32 noundef %size, i32 noundef %type, i8 noundef zeroext %loc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %0 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_data, align 4
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %2 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add = add i32 %size, 24
  %size.addr.0 = select i1 %tobool.not, i32 %add, i32 %size
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize, align 16
  %i_use.i = getelementptr i8, ptr %inode, i32 -192
  %8 = ptrtoint ptr %i_use.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i = load i32, ptr %i_use.i, align 8
  %9 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.udf_file_entry_alloc_offset.exit_crit_edge

entry.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %entry
  %10 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_lenEAttr, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.neg = sub i32 -216, %12
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %add8.i.neg = sub i32 -176, %12
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %entry.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i.neg210 = phi i32 [ %add.i.neg, %if.then5.i ], [ %add8.i.neg, %if.else6.i ], [ -40, %entry.udf_file_entry_alloc_offset.exit_crit_edge ]
  %i_lenAlloc = getelementptr i8, ptr %inode, i32 -220
  %13 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_lenAlloc, align 4
  %15 = and i8 %loc, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %udf_file_entry_alloc_offset.exit.cleanup115_crit_edge, label %land.lhs.true

udf_file_entry_alloc_offset.exit.cleanup115_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup115

land.lhs.true:                                    ; preds = %udf_file_entry_alloc_offset.exit
  %.neg209 = add i32 %retval.0.i.neg210, %7
  %sub4 = sub i32 %.neg209, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %size.addr.0)
  %cmp.not = icmp ult i32 %sub4, %size.addr.0
  br i1 %cmp.not, label %land.lhs.true.cleanup115_crit_edge, label %if.then7

land.lhs.true.cleanup115_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup115

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then10

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %size.addr.0
  %16 = call ptr @memmove(ptr %arrayidx, ptr %add.ptr, i32 %14)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %17 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.else24, label %if.then15

if.then15:                                        ; preds = %if.end12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1537, i16 %20)
  %cmp17.not = icmp eq i16 %20, 1537
  br i1 %cmp17.not, label %lor.lhs.false, label %if.then15.cleanup115_crit_edge

if.then15.cleanup115_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup115

lor.lhs.false:                                    ; preds = %if.then15
  %tagLocation = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %tagLocation to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %tagLocation, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %24 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_location, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp20.not = icmp eq i32 %23, %25
  br i1 %cmp20.not, label %lor.lhs.false.if.end46_crit_edge, label %lor.lhs.false.cleanup115_crit_edge

lor.lhs.false.cleanup115_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup115

lor.lhs.false.if.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.else24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i, align 16
  %sub27 = add i32 %size.addr.0, -24
  %30 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 24, ptr %i_lenEAttr, align 8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 1537, ptr %1, align 1
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %29, i32 0, i32 16
  %32 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %33)
  %cmp33.inv = icmp ult i16 %33, 512
  %spec.select = select i1 %cmp33.inv, i16 512, i16 768
  %34 = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %spec.select, ptr %34, align 1
  %s_serial_number = getelementptr inbounds %struct.udf_sb_info, ptr %29, i32 0, i32 15
  %36 = ptrtoint ptr %s_serial_number to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %s_serial_number, align 8
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  %tagSerialNum = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %tagSerialNum, align 1
  %i_location42 = getelementptr i8, ptr %inode, i32 -240
  %40 = ptrtoint ptr %i_location42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_location42, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %tagLocation45 = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %tagLocation45 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %tagLocation45, align 1
  %impAttrLocation = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %impAttrLocation to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 -1, ptr %impAttrLocation, align 1
  %appAttrLocation = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %appAttrLocation to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 -1, ptr %appAttrLocation, align 1
  br label %if.end46

if.end46:                                         ; preds = %if.else24, %lor.lhs.false.if.end46_crit_edge
  %size.addr.1 = phi i32 [ %size.addr.0, %lor.lhs.false.if.end46_crit_edge ], [ %sub27, %if.else24 ]
  %46 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %type)
  %cmp48 = icmp ult i32 %type, 2048
  br i1 %cmp48, label %if.then50, label %if.else81

if.then50:                                        ; preds = %if.end46
  %appAttrLocation51 = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %appAttrLocation51 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %appAttrLocation51, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %50)
  %cmp53 = icmp ugt i32 %47, %50
  br i1 %cmp53, label %if.then55, label %if.then50.if.end65_crit_edge

if.then50.if.end65_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then55:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %sub57 = sub i32 %47, %50
  %add58 = add i32 %sub57, %size.addr.1
  %arrayidx59 = getelementptr i8, ptr %1, i32 %add58
  %arrayidx60 = getelementptr i8, ptr %1, i32 %50
  %51 = call ptr @memmove(ptr %arrayidx59, ptr %arrayidx60, i32 %sub57)
  %add63 = add i32 %50, %size.addr.1
  %52 = tail call i32 @llvm.bswap.i32(i32 %add63)
  %53 = ptrtoint ptr %appAttrLocation51 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %52, ptr %appAttrLocation51, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then55, %if.then50.if.end65_crit_edge
  %offset.0 = phi i32 [ %sub57, %if.then55 ], [ %47, %if.then50.if.end65_crit_edge ]
  %impAttrLocation66 = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %impAttrLocation66 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %impAttrLocation66, align 1
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp68 = icmp ult i32 %56, %58
  br i1 %cmp68, label %if.then70, label %if.end65.if.end102_crit_edge

if.end65.if.end102_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %sub72 = sub i32 %offset.0, %56
  br label %if.end102.sink.split

if.else81:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %type)
  %cmp82 = icmp ult i32 %type, 65536
  br i1 %cmp82, label %if.then84, label %if.else81.if.end102_crit_edge

if.else81.if.end102_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then84:                                        ; preds = %if.else81
  %appAttrLocation85 = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %appAttrLocation85 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %appAttrLocation85, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %61)
  %cmp87 = icmp ugt i32 %47, %61
  br i1 %cmp87, label %if.then89, label %if.then84.if.end102_crit_edge

if.then84.if.end102_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %sub92 = sub i32 %47, %61
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then89, %if.then70
  %sub92.sink212 = phi i32 [ %sub92, %if.then89 ], [ %sub72, %if.then70 ]
  %.sink211 = phi i32 [ %61, %if.then89 ], [ %56, %if.then70 ]
  %appAttrLocation85.sink = phi ptr [ %appAttrLocation85, %if.then89 ], [ %impAttrLocation66, %if.then70 ]
  %add93 = add i32 %sub92.sink212, %size.addr.1
  %arrayidx94 = getelementptr i8, ptr %1, i32 %add93
  %arrayidx95 = getelementptr i8, ptr %1, i32 %.sink211
  %62 = call ptr @memmove(ptr %arrayidx94, ptr %arrayidx95, i32 %sub92.sink212)
  %add98 = add i32 %.sink211, %size.addr.1
  %63 = tail call i32 @llvm.bswap.i32(i32 %add98)
  %64 = ptrtoint ptr %appAttrLocation85.sink to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %63, ptr %appAttrLocation85.sink, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %if.then84.if.end102_crit_edge, %if.else81.if.end102_crit_edge, %if.end65.if.end102_crit_edge
  %offset.1 = phi i32 [ %offset.0, %if.end65.if.end102_crit_edge ], [ %47, %if.then84.if.end102_crit_edge ], [ %47, %if.else81.if.end102_crit_edge ], [ %sub92.sink212, %if.end102.sink.split ]
  %descCRCLength = getelementptr %struct.tag, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_storeN_noabort(i32 %65, i32 2)
  store i16 2048, ptr %descCRCLength, align 1
  %add.ptr104 = getelementptr i8, ptr %1, i32 16
  %call106 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr104, i32 noundef 8) #5
  %66 = tail call i16 @llvm.bswap.i16(i16 %call106)
  %descCRC = getelementptr %struct.tag, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %descCRC to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %descCRC, align 1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %1, align 1
  %arrayidx.1.i = getelementptr i8, ptr %1, i32 1
  %70 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.1.i, align 1
  %add.1.i = add i8 %71, %69
  %arrayidx.2.i = getelementptr i8, ptr %1, i32 2
  %72 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.2.i, align 1
  %add.2.i = add i8 %add.1.i, %73
  %arrayidx.3.i = getelementptr i8, ptr %1, i32 3
  %74 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.3.i, align 1
  %add.3.i = add i8 %add.2.i, %75
  %arrayidx.5.i = getelementptr i8, ptr %1, i32 5
  %76 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.5.i, align 1
  %add.5.i = add i8 %add.3.i, %77
  %arrayidx.6.i = getelementptr i8, ptr %1, i32 6
  %78 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.6.i, align 1
  %add.6.i = add i8 %add.5.i, %79
  %arrayidx.7.i = getelementptr i8, ptr %1, i32 7
  %80 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.7.i, align 1
  %add.7.i = add i8 %add.6.i, %81
  %82 = lshr i16 %66, 8
  %83 = trunc i16 %82 to i8
  %add.8.i = add i8 %add.7.i, %83
  %84 = trunc i16 %66 to i8
  %add.9.i = add i8 %add.8.i, %84
  %85 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %descCRCLength, align 1
  %add.10.i = add i8 %add.9.i, %86
  %arrayidx.11.i = getelementptr i8, ptr %1, i32 11
  %87 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.11.i, align 1
  %add.11.i = add i8 %add.10.i, %88
  %arrayidx.12.i = getelementptr i8, ptr %1, i32 12
  %89 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.12.i, align 1
  %add.12.i = add i8 %add.11.i, %90
  %arrayidx.13.i = getelementptr i8, ptr %1, i32 13
  %91 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.13.i, align 1
  %add.13.i = add i8 %add.12.i, %92
  %arrayidx.14.i = getelementptr i8, ptr %1, i32 14
  %93 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.14.i, align 1
  %add.14.i = add i8 %add.13.i, %94
  %arrayidx.15.i = getelementptr i8, ptr %1, i32 15
  %95 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.15.i, align 1
  %add.15.i = add i8 %add.14.i, %96
  %tagChecksum = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 2
  %97 = ptrtoint ptr %tagChecksum to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %add.15.i, ptr %tagChecksum, align 1
  %98 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %i_lenEAttr, align 8
  %add112 = add i32 %99, %size.addr.1
  store i32 %add112, ptr %i_lenEAttr, align 8
  %arrayidx113 = getelementptr i8, ptr %1, i32 %offset.1
  br label %cleanup115

cleanup115:                                       ; preds = %if.end102, %lor.lhs.false.cleanup115_crit_edge, %if.then15.cleanup115_crit_edge, %land.lhs.true.cleanup115_crit_edge, %udf_file_entry_alloc_offset.exit.cleanup115_crit_edge
  %retval.1 = phi ptr [ %arrayidx113, %if.end102 ], [ null, %lor.lhs.false.cleanup115_crit_edge ], [ null, %if.then15.cleanup115_crit_edge ], [ null, %land.lhs.true.cleanup115_crit_edge ], [ null, %udf_file_entry_alloc_offset.exit.cleanup115_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @udf_tag_checksum(ptr nocapture noundef readonly %t) local_unnamed_addr #3 align 64 {
for.inc.15:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t, align 1
  %arrayidx.1 = getelementptr i8, ptr %t, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %add.1 = add i8 %3, %1
  %arrayidx.2 = getelementptr i8, ptr %t, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %add.2 = add i8 %5, %add.1
  %arrayidx.3 = getelementptr i8, ptr %t, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %add.3 = add i8 %7, %add.2
  %arrayidx.5 = getelementptr i8, ptr %t, i32 5
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.5, align 1
  %add.5 = add i8 %9, %add.3
  %arrayidx.6 = getelementptr i8, ptr %t, i32 6
  %10 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.6, align 1
  %add.6 = add i8 %11, %add.5
  %arrayidx.7 = getelementptr i8, ptr %t, i32 7
  %12 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.7, align 1
  %add.7 = add i8 %13, %add.6
  %arrayidx.8 = getelementptr i8, ptr %t, i32 8
  %14 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.8, align 1
  %add.8 = add i8 %15, %add.7
  %arrayidx.9 = getelementptr i8, ptr %t, i32 9
  %16 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.9, align 1
  %add.9 = add i8 %17, %add.8
  %arrayidx.10 = getelementptr i8, ptr %t, i32 10
  %18 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.10, align 1
  %add.10 = add i8 %19, %add.9
  %arrayidx.11 = getelementptr i8, ptr %t, i32 11
  %20 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.11, align 1
  %add.11 = add i8 %21, %add.10
  %arrayidx.12 = getelementptr i8, ptr %t, i32 12
  %22 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.12, align 1
  %add.12 = add i8 %23, %add.11
  %arrayidx.13 = getelementptr i8, ptr %t, i32 13
  %24 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.13, align 1
  %add.13 = add i8 %25, %add.12
  %arrayidx.14 = getelementptr i8, ptr %t, i32 14
  %26 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.14, align 1
  %add.14 = add i8 %27, %add.13
  %arrayidx.15 = getelementptr i8, ptr %t, i32 15
  %28 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.15, align 1
  %add.15 = add i8 %29, %add.14
  ret i8 %add.15
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_get_extendedattr(ptr nocapture noundef readonly %inode, i32 noundef %type, i8 noundef zeroext %subtype) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr i8, ptr %inode, i32 -188
  %0 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_data, align 4
  %i_lenEAttr = getelementptr i8, ptr %inode, i32 -224
  %2 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_lenEAttr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.then

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1537, i16 %5)
  %cmp.not = icmp eq i16 %5, 1537
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.cleanup41_crit_edge

if.then.cleanup41_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

lor.lhs.false:                                    ; preds = %if.then
  %tagLocation = getelementptr inbounds %struct.tag, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %tagLocation to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %tagLocation, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %9 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_location, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp3.not = icmp eq i32 %8, %10
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup41_crit_edge

lor.lhs.false.cleanup41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %type)
  %cmp6 = icmp ult i32 %type, 2048
  br i1 %cmp6, label %if.end.if.end14_crit_edge, label %if.else

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %type)
  %cmp9 = icmp ult i32 %type, 65536
  %impAttrLocation = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 1
  %appAttrLocation = getelementptr inbounds %struct.extendedAttrHeaderDesc, ptr %1, i32 0, i32 2
  %impAttrLocation.sink = select i1 %cmp9, ptr %impAttrLocation, ptr %appAttrLocation
  %11 = ptrtoint ptr %impAttrLocation.sink to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %impAttrLocation.sink, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end.if.end14_crit_edge
  %offset.0 = phi i32 [ 24, %if.end.if.end14_crit_edge ], [ %13, %if.else ]
  %add75 = add i32 %offset.0, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %3)
  %cmp1676 = icmp ult i32 %add75, %3
  br i1 %cmp1676, label %if.end14.while.body_crit_edge, label %if.end14.cleanup41_crit_edge

if.end14.cleanup41_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end14.while.body_crit_edge
  %offset.177 = phi i32 [ %add35, %cleanup.while.body_crit_edge ], [ %offset.0, %if.end14.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %1, i32 %offset.177
  %attrLength18 = getelementptr inbounds %struct.genericFormat, ptr %arrayidx, i32 0, i32 3
  %14 = ptrtoint ptr %attrLength18 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %attrLength18, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %16)
  %cmp19 = icmp ult i32 %16, 12
  %sub = sub i32 %3, %offset.177
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub)
  %cmp23 = icmp ugt i32 %16, %sub
  %or.cond = select i1 %cmp19, i1 true, i1 %cmp23
  br i1 %or.cond, label %while.body.cleanup41_crit_edge, label %if.end26

while.body.cleanup41_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

if.end26:                                         ; preds = %while.body
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %arrayidx, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %type)
  %cmp27 = icmp eq i32 %19, %type
  br i1 %cmp27, label %land.lhs.true, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end26
  %attrSubtype = getelementptr inbounds %struct.genericFormat, ptr %arrayidx, i32 0, i32 1
  %20 = ptrtoint ptr %attrSubtype to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %attrSubtype, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %subtype)
  %cmp31 = icmp eq i8 %21, %subtype
  br i1 %cmp31, label %land.lhs.true.cleanup41_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.cleanup41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

cleanup:                                          ; preds = %land.lhs.true.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  %add35 = add i32 %16, %offset.177
  %add = add i32 %add35, 12
  %cmp16 = icmp ult i32 %add, %3
  br i1 %cmp16, label %cleanup.while.body_crit_edge, label %cleanup.cleanup41_crit_edge

cleanup.cleanup41_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup41:                                        ; preds = %cleanup.cleanup41_crit_edge, %land.lhs.true.cleanup41_crit_edge, %while.body.cleanup41_crit_edge, %if.end14.cleanup41_crit_edge, %lor.lhs.false.cleanup41_crit_edge, %if.then.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  %retval.4 = phi ptr [ null, %entry.cleanup41_crit_edge ], [ null, %if.then.cleanup41_crit_edge ], [ null, %lor.lhs.false.cleanup41_crit_edge ], [ null, %if.end14.cleanup41_crit_edge ], [ null, %cleanup.cleanup41_crit_edge ], [ null, %while.body.cleanup41_crit_edge ], [ %arrayidx, %land.lhs.true.cleanup41_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %block, i32 noundef %location, ptr nocapture noundef writeonly %ident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %block)
  %cmp = icmp eq i32 %block, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %s_flags.i.i, align 4
  %4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %shr.i = lshr i32 %block, 5
  %mul.i = mul i32 %shr.i, 39
  %and.i = and i32 %block, 31
  %add.i = add i32 %mul.i, %and.i
  %block.sink.i = select i1 %tobool.not.i, i32 %block, i32 %add.i
  %conv2.i = zext i32 %block.sink.i to i64
  %s_bdev.i8.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev.i8.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev.i8.i, align 4
  %s_blocksize.i9.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %7 = ptrtoint ptr %s_blocksize.i9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_blocksize.i9.i, align 16
  %call.i10.i = tail call ptr @__bread_gfp(ptr noundef %6, i64 noundef %conv2.i, i32 noundef %8, i32 noundef 8) #5
  %tobool.not = icmp eq ptr %call.i10.i, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_read_tagged, ptr noundef nonnull @.str, i32 noundef %block, i32 noundef %location) #5
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i10.i, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %10, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = ptrtoint ptr %ident to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ident, align 2
  %tagLocation = getelementptr %struct.tag, ptr %10, i32 0, i32 7
  %15 = ptrtoint ptr %tagLocation to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %tagLocation, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %location)
  %cmp3.not = icmp eq i32 %17, %location
  br i1 %cmp3.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_tagged.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_tagged, %if.then9)) #5
          to label %brelse.exit [label %if.then9], !srcloc !26

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %tagLocation to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %tagLocation, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_tagged.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 232, ptr noundef nonnull @__func__.udf_read_tagged, i32 noundef %block, i32 noundef %20, i32 noundef %location) #5
  br label %brelse.exit

if.end12:                                         ; preds = %if.end2
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %10, align 1
  %arrayidx.1.i = getelementptr i8, ptr %10, i32 1
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1.i, align 1
  %add.1.i = add i8 %24, %22
  %arrayidx.2.i = getelementptr i8, ptr %10, i32 2
  %25 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2.i, align 1
  %add.2.i = add i8 %add.1.i, %26
  %arrayidx.3.i = getelementptr i8, ptr %10, i32 3
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3.i, align 1
  %add.3.i = add i8 %add.2.i, %28
  %arrayidx.5.i = getelementptr i8, ptr %10, i32 5
  %29 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5.i, align 1
  %add.5.i = add i8 %add.3.i, %30
  %arrayidx.6.i = getelementptr i8, ptr %10, i32 6
  %31 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.6.i, align 1
  %add.6.i = add i8 %add.5.i, %32
  %arrayidx.7.i = getelementptr i8, ptr %10, i32 7
  %33 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.7.i, align 1
  %add.7.i = add i8 %add.6.i, %34
  %arrayidx.8.i = getelementptr i8, ptr %10, i32 8
  %35 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.8.i, align 1
  %add.8.i = add i8 %add.7.i, %36
  %arrayidx.9.i = getelementptr i8, ptr %10, i32 9
  %37 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.9.i, align 1
  %add.9.i = add i8 %add.8.i, %38
  %arrayidx.10.i = getelementptr i8, ptr %10, i32 10
  %39 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.10.i, align 1
  %add.10.i = add i8 %add.9.i, %40
  %arrayidx.11.i = getelementptr i8, ptr %10, i32 11
  %41 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.11.i, align 1
  %add.11.i = add i8 %add.10.i, %42
  %43 = ptrtoint ptr %tagLocation to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tagLocation, align 1
  %add.12.i = add i8 %add.11.i, %44
  %arrayidx.13.i = getelementptr i8, ptr %10, i32 13
  %45 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.13.i, align 1
  %add.13.i = add i8 %add.12.i, %46
  %arrayidx.14.i = getelementptr i8, ptr %10, i32 14
  %47 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.14.i, align 1
  %add.14.i = add i8 %add.13.i, %48
  %arrayidx.15.i = getelementptr i8, ptr %10, i32 15
  %49 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.15.i, align 1
  %add.15.i = add i8 %add.14.i, %50
  %tagChecksum = getelementptr inbounds %struct.tag, ptr %10, i32 0, i32 2
  %51 = ptrtoint ptr %tagChecksum to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tagChecksum, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %add.15.i, i8 %52)
  %cmp15.not = icmp eq i8 %add.15.i, %52
  br i1 %cmp15.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i8 %52 to i32
  %conv = zext i8 %add.15.i to i32
  tail call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_read_tagged, ptr noundef nonnull @.str.5, i32 noundef %block, i32 noundef %conv, i32 noundef %conv14) #5
  br label %brelse.exit

if.end21:                                         ; preds = %if.end12
  %53 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 2)
  %54 = load i16, ptr %arrayidx.2.i, align 1
  %55 = zext i16 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i16 %54, label %if.then29 [
    i16 512, label %if.end21.if.end32_crit_edge
    i16 768, label %if.end21.if.end32_crit_edge104
  ]

if.end21.if.end32_crit_edge104:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %56 = tail call i16 @llvm.bswap.i16(i16 %54)
  %conv31 = zext i16 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @_udf_err(ptr noundef %sb, ptr noundef nonnull @__func__.udf_read_tagged, ptr noundef nonnull @.str.6, i32 noundef %conv31, i32 noundef %block) #5
  br label %brelse.exit

if.end32:                                         ; preds = %if.end21.if.end32_crit_edge, %if.end21.if.end32_crit_edge104
  %57 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx.10.i, align 1
  %59 = tail call i16 @llvm.bswap.i16(i16 %58)
  %conv33 = zext i16 %59 to i32
  %add = add nuw nsw i32 %conv33, 16
  %60 = ptrtoint ptr %s_blocksize.i9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_blocksize.i9.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %61)
  %cmp34 = icmp ugt i32 %add, %61
  br i1 %cmp34, label %if.end32.cleanup_crit_edge, label %lor.lhs.false

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end32
  %62 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %arrayidx.8.i, align 1
  %64 = tail call i16 @llvm.bswap.i16(i16 %63)
  %65 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %66, i32 16
  %call40 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr, i32 noundef %conv33) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %call40)
  %cmp42 = icmp eq i16 %64, %call40
  br i1 %cmp42, label %lor.lhs.false.cleanup_crit_edge, label %do.body46

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body46:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_read_tagged.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_read_tagged, %if.then58)) #5
          to label %brelse.exit [label %if.then58], !srcloc !26

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 2)
  %68 = load i16, ptr %arrayidx.8.i, align 1
  %69 = tail call i16 @llvm.bswap.i16(i16 %68)
  %conv60 = zext i16 %69 to i32
  %70 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %arrayidx.10.i, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %conv62 = zext i16 %72 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_read_tagged.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 261, ptr noundef nonnull @__func__.udf_read_tagged, i32 noundef %block, i32 noundef %conv60, i32 noundef %conv62) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then58, %do.body46, %if.then29, %if.then17, %if.then9, %do.body
  tail call void @__brelse(ptr noundef nonnull %call.i10.i) #5
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit, %lor.lhs.false.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %brelse.exit ], [ null, %if.then1 ], [ null, %entry.cleanup_crit_edge ], [ %call.i10.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i10.i, %if.end32.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_read_ptagged(ptr noundef %sb, ptr nocapture noundef readonly %loc, i32 noundef %offset, ptr nocapture noundef writeonly %ident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loc, align 4
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %loc, i32 0, i32 1
  %2 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %1, i16 noundef zeroext %3, i32 noundef %offset) #5
  %4 = ptrtoint ptr %loc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loc, align 4
  %add = add i32 %5, %offset
  %call1 = tail call ptr @udf_read_tagged(ptr noundef %sb, i32 noundef %call.i, i32 noundef %add, ptr noundef %ident)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_update_tag(ptr noundef %data, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %length, -16
  %conv = trunc i32 %sub to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %descCRCLength = getelementptr %struct.tag, ptr %data, i32 0, i32 6
  %1 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %0, ptr %descCRCLength, align 1
  %add.ptr = getelementptr i8, ptr %data, i32 16
  %call = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr, i32 noundef %sub) #5
  %2 = tail call i16 @llvm.bswap.i16(i16 %call)
  %descCRC = getelementptr %struct.tag, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %descCRC to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %descCRC, align 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %arrayidx.1.i = getelementptr i8, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %add.1.i = add i8 %7, %5
  %arrayidx.2.i = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2.i, align 1
  %add.2.i = add i8 %add.1.i, %9
  %arrayidx.3.i = getelementptr i8, ptr %data, i32 3
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.3.i, align 1
  %add.3.i = add i8 %add.2.i, %11
  %arrayidx.5.i = getelementptr i8, ptr %data, i32 5
  %12 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.5.i, align 1
  %add.5.i = add i8 %add.3.i, %13
  %arrayidx.6.i = getelementptr i8, ptr %data, i32 6
  %14 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.6.i, align 1
  %add.6.i = add i8 %add.5.i, %15
  %arrayidx.7.i = getelementptr i8, ptr %data, i32 7
  %16 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.7.i, align 1
  %add.7.i = add i8 %add.6.i, %17
  %18 = lshr i16 %2, 8
  %19 = trunc i16 %18 to i8
  %add.8.i = add i8 %add.7.i, %19
  %20 = trunc i16 %2 to i8
  %add.9.i = add i8 %add.8.i, %20
  %21 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %descCRCLength, align 1
  %add.10.i = add i8 %add.9.i, %22
  %arrayidx.11.i = getelementptr i8, ptr %data, i32 11
  %23 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.11.i, align 1
  %add.11.i = add i8 %add.10.i, %24
  %arrayidx.12.i = getelementptr i8, ptr %data, i32 12
  %25 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.12.i, align 1
  %add.12.i = add i8 %add.11.i, %26
  %arrayidx.13.i = getelementptr i8, ptr %data, i32 13
  %27 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.13.i, align 1
  %add.13.i = add i8 %add.12.i, %28
  %arrayidx.14.i = getelementptr i8, ptr %data, i32 14
  %29 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.14.i, align 1
  %add.14.i = add i8 %add.13.i, %30
  %arrayidx.15.i = getelementptr i8, ptr %data, i32 15
  %31 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.15.i, align 1
  %add.15.i = add i8 %add.14.i, %32
  %tagChecksum = getelementptr inbounds %struct.tag, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %tagChecksum to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %add.15.i, ptr %tagChecksum, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_new_tag(ptr noundef %data, i16 noundef zeroext %ident, i16 noundef zeroext %version, i16 noundef zeroext %snum, i32 noundef %loc, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 @llvm.bswap.i16(i16 %ident)
  %1 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %1, i32 2)
  store i16 %0, ptr %data, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %version)
  %descVersion = getelementptr %struct.tag, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %descVersion to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %descVersion, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %snum)
  %tagSerialNum = getelementptr %struct.tag, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %4, ptr %tagSerialNum, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %loc)
  %tagLocation = getelementptr %struct.tag, ptr %data, i32 0, i32 7
  %7 = ptrtoint ptr %tagLocation to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %tagLocation, align 1
  %sub.i = add i32 %length, -16
  %conv.i = trunc i32 %sub.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %descCRCLength.i = getelementptr %struct.tag, ptr %data, i32 0, i32 6
  %9 = ptrtoint ptr %descCRCLength.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %descCRCLength.i, align 1
  %add.ptr.i = getelementptr i8, ptr %data, i32 16
  %call.i = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr.i, i32 noundef %sub.i) #5
  %10 = tail call i16 @llvm.bswap.i16(i16 %call.i) #5
  %descCRC.i = getelementptr %struct.tag, ptr %data, i32 0, i32 5
  %11 = ptrtoint ptr %descCRC.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %descCRC.i, align 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data, align 1
  %arrayidx.1.i.i = getelementptr i8, ptr %data, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1.i.i, align 1
  %16 = ptrtoint ptr %descVersion to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %descVersion, align 1
  %arrayidx.3.i.i = getelementptr i8, ptr %data, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %data, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.5.i.i, align 1
  %22 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tagSerialNum, align 1
  %arrayidx.7.i.i = getelementptr i8, ptr %data, i32 7
  %24 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.7.i.i, align 1
  %26 = lshr i16 %10, 8
  %27 = trunc i16 %26 to i8
  %28 = trunc i16 %10 to i8
  %29 = ptrtoint ptr %descCRCLength.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %descCRCLength.i, align 1
  %arrayidx.11.i.i = getelementptr i8, ptr %data, i32 11
  %31 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.11.i.i, align 1
  %33 = ptrtoint ptr %tagLocation to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tagLocation, align 1
  %arrayidx.13.i.i = getelementptr i8, ptr %data, i32 13
  %35 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.13.i.i, align 1
  %arrayidx.14.i.i = getelementptr i8, ptr %data, i32 14
  %37 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.14.i.i, align 1
  %arrayidx.15.i.i = getelementptr i8, ptr %data, i32 15
  %39 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.15.i.i, align 1
  %add.1.i.i = add i8 %13, %28
  %add.2.i.i = add i8 %add.1.i.i, %15
  %add.3.i.i = add i8 %add.2.i.i, %27
  %add.5.i.i = add i8 %add.3.i.i, %17
  %add.6.i.i = add i8 %add.5.i.i, %19
  %add.7.i.i = add i8 %add.6.i.i, %21
  %add.8.i.i = add i8 %add.7.i.i, %23
  %add.9.i.i = add i8 %add.8.i.i, %25
  %add.10.i.i = add i8 %add.9.i.i, %30
  %add.11.i.i = add i8 %add.10.i.i, %32
  %add.12.i.i = add i8 %add.11.i.i, %34
  %add.13.i.i = add i8 %add.12.i.i, %36
  %add.14.i.i = add i8 %add.13.i.i, %38
  %add.15.i.i = add i8 %add.14.i.i, %40
  %tagChecksum.i = getelementptr inbounds %struct.tag, ptr %data, i32 0, i32 2
  %41 = ptrtoint ptr %tagChecksum.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %add.15.i.i, ptr %tagChecksum.i, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__func__.udf_read_tagged, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/misc.c", i32 221, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/udf/misc.c", i32 231, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @udf_read_tagged.__UNIQUE_ID_ddebug234, !4, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!8 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/udf/misc.c", i32 239, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/udf/misc.c", i32 247, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/udf/misc.c", i32 259, i32 2}
!15 = !{ptr @udf_read_tagged.__UNIQUE_ID_ddebug235, !14, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148547598, i64 2148547603, i64 2148547616, i64 2148547660, i64 2148547694, i64 2148547715}
