; ModuleID = '/llk/IR_all_yes/fs/udf/directory.c_pt.bc'
source_filename = "../fs/udf/directory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.udf_fileident_bh = type { ptr, ptr, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
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
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.74 = type { ptr }
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
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.fileIdentDesc = type <{ %struct.tag, i16, i8, i8, %struct.long_ad, i16, [0 x i8] }>
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.long_ad = type { i32, %struct.lb_addr, [6 x i8] }
%struct.lb_addr = type <{ i32, i16 }>

@udf_get_fileident.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udf_get_fileident\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/udf/directory.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:%s: invalidparms, buffer=%p, offset=%p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UDF-fs: %s:%d:%s: invalidparms, buffer=%p, offset=%p\0A\00", [42 x i8] zeroinitializer }, align 32
@udf_get_fileident.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d:%s: 0x%x != TAG_IDENT_FID\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UDF-fs: %s:%d:%s: 0x%x != TAG_IDENT_FID\0A\00", [55 x i8] zeroinitializer }, align 32
@udf_get_fileident.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:%s: offset: %d sizeof: %lu bufsize: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"UDF-fs: %s:%d:%s: offset: %d sizeof: %lu bufsize: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@udf_get_fileshortad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013UDF-fs: %s: invalidparms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"udf_get_fileshortad\00", [44 x i8] zeroinitializer }, align 32
@udf_get_fileshortad._entry_ptr = internal global ptr @udf_get_fileshortad._entry, section ".printk_index", align 4
@udf_get_filelongad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.11, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"udf_get_filelongad\00", [45 x i8] zeroinitializer }, align 32
@udf_get_filelongad._entry_ptr = internal global ptr @udf_get_filelongad._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 166, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 177, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 179, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 205, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [22 x i8] c"../fs/udf/directory.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 227, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @udf_get_filelongad._entry, ptr @udf_get_filelongad._entry_ptr, ptr @udf_get_fileshortad._entry, ptr @udf_get_fileshortad._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_get_fileshortad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_get_filelongad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_fileident_read(ptr noundef %dir, ptr nocapture noundef %nf_pos, ptr noundef %fibh, ptr nocapture noundef %cfi, ptr noundef %epos, ptr noundef %eloc, ptr noundef %elen, ptr nocapture noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %bha = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bha) #5
  %0 = call ptr @memset(ptr %bha, i32 255, i32 64)
  %eoffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %1 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %eoffset, align 4
  %soffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %3 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %soffset, align 4
  %i_alloc_type = getelementptr i8, ptr %dir, i32 -192
  %4 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %i_data = getelementptr i8, ptr %dir, i32 -188
  %5 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_data, align 4
  %7 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond.neg = select i1 %tobool.not, i32 -176, i32 -216
  %add.ptr = getelementptr i8, ptr %6, i32 %cond.neg
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %call4 = tail call ptr @udf_get_fileident(ptr noundef %add.ptr, i32 noundef %11, ptr noundef %eoffset)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then.cleanup209_crit_edge, label %if.end

if.then.cleanup209_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eoffset, align 4
  %14 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soffset, align 4
  %sub = sub i32 %13, %15
  %conv = sext i32 %sub to i64
  %16 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %nf_pos, align 8
  %add = add i64 %17, %conv
  store i64 %add, ptr %nf_pos, align 8
  %18 = call ptr @memcpy(ptr %cfi, ptr %call4, i32 38)
  br label %cleanup209

if.end9:                                          ; preds = %entry
  %i_sb11 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb11, align 4
  %s_blocksize12 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %s_blocksize12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_blocksize12, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %22)
  %cmp13 = icmp eq i32 %2, %22
  br i1 %cmp13, label %if.then15, label %if.else98

if.then15:                                        ; preds = %if.end9
  %offset16 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %23 = ptrtoint ptr %offset16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset16, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %s_blocksize_bits, align 4
  %call18 = tail call signext i8 @udf_next_aext(ptr noundef %dir, ptr noundef %epos, ptr noundef %eloc, ptr noundef %elen, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call18)
  %cmp20.not = icmp eq i8 %call18, 0
  br i1 %cmp20.not, label %if.end23, label %if.then15.cleanup209_crit_edge

if.then15.cleanup209_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end23:                                         ; preds = %if.then15
  %27 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb11, align 4
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset, align 8
  %conv25 = trunc i64 %30 to i32
  %31 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %eloc, align 4
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %33 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = tail call i32 @udf_get_pblock(ptr noundef %28, i32 noundef %32, i16 noundef zeroext %34, i32 noundef %conv25) #5
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %offset, align 8
  %inc = add i64 %36, 1
  store i64 %inc, ptr %offset, align 8
  %conv27 = zext i8 %26 to i32
  %sh_prom = zext i8 %26 to i64
  %shl = shl i64 %inc, %sh_prom
  %37 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %elen, align 4
  %conv28 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv28)
  %cmp29.not = icmp ult i64 %shl, %conv28
  br i1 %cmp29.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 0, ptr %offset, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %offset16 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %24, ptr %offset16, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then31
  %41 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fibh, align 4
  %tobool.not.i = icmp eq ptr %42, null
  br i1 %tobool.not.i, label %if.end33.brelse.exit_crit_edge, label %if.then.i

if.end33.brelse.exit_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %42) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end33.brelse.exit_crit_edge
  %43 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i_sb11, align 4
  %call35 = tail call ptr @udf_tread(ptr noundef %44, i32 noundef %call.i) #5
  %ebh = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %45 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call35, ptr %ebh, align 4
  %46 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call35, ptr %fibh, align 4
  %tobool38.not = icmp eq ptr %call35, null
  br i1 %tobool38.not, label %brelse.exit.cleanup209_crit_edge, label %if.end40

brelse.exit.cleanup209_crit_edge:                 ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end40:                                         ; preds = %brelse.exit
  %47 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %eoffset, align 4
  %48 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %soffset, align 4
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %offset, align 8
  %sub44 = add nsw i32 %conv27, -9
  %shr = lshr i32 16, %sub44
  %sub45 = add nsw i32 %shr, -1
  %conv46 = sext i32 %sub45 to i64
  %and = and i64 %50, %conv46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool47.not = icmp eq i64 %and, 0
  br i1 %tobool47.not, label %if.then48, label %if.end40.if.end108_crit_edge

if.end40.if.end108_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then48:                                        ; preds = %if.end40
  %51 = zext i32 %shr to i64
  %add53 = add i64 %50, %51
  %52 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %elen, align 4
  %shr55 = lshr i32 %53, %conv27
  %conv56 = zext i32 %shr55 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add53, i64 %conv56)
  %cmp57 = icmp ugt i64 %add53, %conv56
  %54 = trunc i64 %50 to i32
  %conv64 = sub i32 %shr55, %54
  %i.0 = select i1 %cmp57, i32 %conv64, i32 %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp66354 = icmp sgt i32 %i.0, 0
  br i1 %cmp66354, label %if.then48.for.body_crit_edge, label %if.then48.if.end108_crit_edge

if.then48.if.end108_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then48.for.body_crit_edge:                     ; preds = %if.then48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then48.for.body_crit_edge
  %num.0356 = phi i32 [ %num.1, %for.inc.for.body_crit_edge ], [ 0, %if.then48.for.body_crit_edge ]
  %i.1355 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %i.0, %if.then48.for.body_crit_edge ]
  %55 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb11, align 4
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %offset, align 8
  %59 = trunc i64 %58 to i32
  %conv71 = add i32 %i.1355, %59
  %60 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %eloc, align 4
  %62 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i342 = tail call i32 @udf_get_pblock(ptr noundef %56, i32 noundef %61, i16 noundef zeroext %63, i32 noundef %conv71) #5
  %64 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb11, align 4
  %call74 = tail call ptr @udf_tgetblk(ptr noundef %65, i32 noundef %call.i342) #5
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %66 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %call74, align 4
  %and1.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool77.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %land.lhs.true.if.then.i344_crit_edge

land.lhs.true.if.then.i344_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i344

land.lhs.true78:                                  ; preds = %land.lhs.true
  %68 = ptrtoint ptr %call74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %call74, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool80.not = icmp eq i32 %70, 0
  br i1 %tobool80.not, label %if.then81, label %land.lhs.true78.if.then.i344_crit_edge

land.lhs.true78.if.then.i344_crit_edge:           ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i344

if.then81:                                        ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #7
  %inc82 = add i32 %num.0356, 1
  %arrayidx = getelementptr [16 x ptr], ptr %bha, i32 0, i32 %num.0356
  %71 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call74, ptr %arrayidx, align 4
  br label %for.inc

if.then.i344:                                     ; preds = %land.lhs.true78.if.then.i344_crit_edge, %land.lhs.true.if.then.i344_crit_edge
  tail call void @__brelse(ptr noundef nonnull %call74) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then.i344, %if.then81, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %inc82, %if.then81 ], [ %num.0356, %for.body.for.inc_crit_edge ], [ %num.0356, %if.then.i344 ]
  %dec = add nsw i32 %i.1355, -1
  %cmp66 = icmp sgt i32 %i.1355, 1
  br i1 %cmp66, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %tobool85.not = icmp eq i32 %num.1, 0
  br i1 %tobool85.not, label %for.end.if.end108_crit_edge, label %if.then86

for.end.if.end108_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then86:                                        ; preds = %for.end
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef %num.1, ptr noundef nonnull %bha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %cmp88357 = icmp sgt i32 %num.1, 0
  br i1 %cmp88357, label %if.then86.for.body90_crit_edge, label %if.then86.if.end108_crit_edge

if.then86.if.end108_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then86.for.body90_crit_edge:                   ; preds = %if.then86
  br label %for.body90

for.body90:                                       ; preds = %brelse.exit348.for.body90_crit_edge, %if.then86.for.body90_crit_edge
  %i.2358 = phi i32 [ %inc93, %brelse.exit348.for.body90_crit_edge ], [ 0, %if.then86.for.body90_crit_edge ]
  %arrayidx91 = getelementptr [16 x ptr], ptr %bha, i32 0, i32 %i.2358
  %72 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx91, align 4
  %tobool.not.i346 = icmp eq ptr %73, null
  br i1 %tobool.not.i346, label %for.body90.brelse.exit348_crit_edge, label %if.then.i347

for.body90.brelse.exit348_crit_edge:              ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit348

if.then.i347:                                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %73) #5
  br label %brelse.exit348

brelse.exit348:                                   ; preds = %if.then.i347, %for.body90.brelse.exit348_crit_edge
  %inc93 = add nuw nsw i32 %i.2358, 1
  %exitcond.not = icmp eq i32 %inc93, %num.1
  br i1 %exitcond.not, label %brelse.exit348.if.end108_crit_edge, label %brelse.exit348.for.body90_crit_edge

brelse.exit348.for.body90_crit_edge:              ; preds = %brelse.exit348
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body90

brelse.exit348.if.end108_crit_edge:               ; preds = %brelse.exit348
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.else98:                                        ; preds = %if.end9
  %74 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fibh, align 4
  %ebh100 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %76 = ptrtoint ptr %ebh100 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ebh100, align 4
  %cmp101.not = icmp eq ptr %75, %77
  br i1 %cmp101.not, label %if.else98.if.end108_crit_edge, label %if.then103

if.else98.if.end108_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then103:                                       ; preds = %if.else98
  %tobool.not.i349 = icmp eq ptr %75, null
  br i1 %tobool.not.i349, label %if.then103.brelse.exit351_crit_edge, label %if.then.i350

if.then103.brelse.exit351_crit_edge:              ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit351

if.then.i350:                                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__brelse(ptr noundef nonnull %75) #5
  br label %brelse.exit351

brelse.exit351:                                   ; preds = %if.then.i350, %if.then103.brelse.exit351_crit_edge
  %78 = ptrtoint ptr %ebh100 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ebh100, align 4
  %80 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %fibh, align 4
  br label %if.end108

if.end108:                                        ; preds = %brelse.exit351, %if.else98.if.end108_crit_edge, %brelse.exit348.if.end108_crit_edge, %if.then86.if.end108_crit_edge, %for.end.if.end108_crit_edge, %if.then48.if.end108_crit_edge, %if.end40.if.end108_crit_edge
  %81 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %fibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data, align 4
  %85 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i_sb11, align 4
  %s_blocksize111 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %s_blocksize111 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_blocksize111, align 16
  %call113 = call ptr @udf_get_fileident(ptr noundef %84, i32 noundef %88, ptr noundef %eoffset)
  %tobool114.not = icmp eq ptr %call113, null
  br i1 %tobool114.not, label %if.end108.cleanup209_crit_edge, label %if.end116

if.end108.cleanup209_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end116:                                        ; preds = %if.end108
  %89 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %eoffset, align 4
  %91 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %soffset, align 4
  %sub119 = sub i32 %90, %92
  %conv120 = sext i32 %sub119 to i64
  %93 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %nf_pos, align 8
  %add121 = add i64 %94, %conv120
  store i64 %add121, ptr %nf_pos, align 8
  %95 = load i32, ptr %eoffset, align 4
  %96 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb11, align 4
  %s_blocksize124 = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %s_blocksize124 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %s_blocksize124, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %99)
  %cmp125.not = icmp ugt i32 %95, %99
  br i1 %cmp125.not, label %if.then134, label %if.then127

if.then127:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %100 = call ptr @memcpy(ptr %cfi, ptr %call113, i32 38)
  br label %if.end204

if.then134:                                       ; preds = %if.end116
  %offset136 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %101 = ptrtoint ptr %offset136 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset136, align 4
  %call137 = call signext i8 @udf_next_aext(ptr noundef %dir, ptr noundef %epos, ptr noundef %eloc, ptr noundef %elen, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call137)
  %cmp139.not = icmp eq i8 %call137, 0
  br i1 %cmp139.not, label %if.end142, label %if.then134.cleanup209_crit_edge

if.then134.cleanup209_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end142:                                        ; preds = %if.then134
  %103 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i_sb11, align 4
  %105 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %offset, align 8
  %conv144 = trunc i64 %106 to i32
  %107 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %eloc, align 4
  %partitionReferenceNum.i352 = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %109 = ptrtoint ptr %partitionReferenceNum.i352 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %partitionReferenceNum.i352, align 4
  %call.i353 = call i32 @udf_get_pblock(ptr noundef %104, i32 noundef %108, i16 noundef zeroext %110, i32 noundef %conv144) #5
  %111 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %offset, align 8
  %inc146 = add i64 %112, 1
  store i64 %inc146, ptr %offset, align 8
  %113 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %i_sb11, align 4
  %s_blocksize_bits148 = getelementptr inbounds %struct.super_block, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %s_blocksize_bits148 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %s_blocksize_bits148, align 4
  %sh_prom150 = zext i8 %116 to i64
  %shl151 = shl i64 %inc146, %sh_prom150
  %117 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %elen, align 4
  %conv152 = zext i32 %118 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl151, i64 %conv152)
  %cmp153.not = icmp ult i64 %shl151, %conv152
  br i1 %cmp153.not, label %if.else156, label %if.then155

if.then155:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %119 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 0, ptr %offset, align 8
  br label %if.end158

if.else156:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %offset136 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %102, ptr %offset136, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.then155
  %121 = ptrtoint ptr %i_sb11 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %i_sb11, align 4
  %s_blocksize160 = getelementptr inbounds %struct.super_block, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %s_blocksize160 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %s_blocksize160, align 16
  %125 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %soffset, align 4
  %sub162 = sub i32 %126, %124
  store i32 %sub162, ptr %soffset, align 4
  %127 = load ptr, ptr %i_sb11, align 4
  %s_blocksize164 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %s_blocksize164 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %s_blocksize164, align 16
  %130 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %eoffset, align 4
  %sub166 = sub i32 %131, %129
  store i32 %sub166, ptr %eoffset, align 4
  %132 = load ptr, ptr %i_sb11, align 4
  %call168 = call ptr @udf_tread(ptr noundef %132, i32 noundef %call.i353) #5
  %ebh169 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %133 = ptrtoint ptr %ebh169 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call168, ptr %ebh169, align 4
  %tobool171.not = icmp eq ptr %call168, null
  br i1 %tobool171.not, label %if.end158.cleanup209_crit_edge, label %if.end173

if.end158.cleanup209_crit_edge:                   ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup209

if.end173:                                        ; preds = %if.end158
  %134 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %soffset, align 4
  %sub175 = sub i32 0, %135
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %sub175)
  %cmp176 = icmp ult i32 %sub175, 38
  br i1 %cmp176, label %if.then178, label %if.else198

if.then178:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  %136 = call ptr @memcpy(ptr %cfi, ptr %call113, i32 %sub175)
  %137 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %soffset, align 4
  %idx.neg182 = sub i32 0, %138
  %add.ptr183 = getelementptr i8, ptr %cfi, i32 %idx.neg182
  %139 = ptrtoint ptr %ebh169 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ebh169, align 4
  %b_data185 = getelementptr inbounds %struct.buffer_head, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %b_data185 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %b_data185, align 4
  %add187 = add i32 %138, 38
  %143 = call ptr @memcpy(ptr %add.ptr183, ptr %142, i32 %add187)
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %144 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %lengthOfImpUse.i, align 1
  %146 = call i16 @llvm.bswap.i16(i16 %145) #5
  %conv.i = zext i16 %146 to i32
  %lengthFileIdent.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %147 = ptrtoint ptr %lengthFileIdent.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %lengthFileIdent.i, align 1
  %conv1.i = zext i8 %148 to i32
  %add2.i = add nuw nsw i32 %conv.i, 41
  %add3.i = add nuw nsw i32 %add2.i, %conv1.i
  %and.i = and i32 %add3.i, 262140
  %149 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %eoffset, align 4
  %151 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %soffset, align 4
  %sub191.neg = sub i32 %152, %150
  %sub192 = add i32 %sub191.neg, %and.i
  %conv193 = sext i32 %sub192 to i64
  %153 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %nf_pos, align 8
  %add194 = add i64 %154, %conv193
  store i64 %add194, ptr %nf_pos, align 8
  %155 = load i32, ptr %soffset, align 4
  %add196 = add i32 %155, %and.i
  store i32 %add196, ptr %eoffset, align 4
  br label %if.end204

if.else198:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #7
  %156 = call ptr @memcpy(ptr %cfi, ptr %call113, i32 38)
  br label %if.end204

if.end204:                                        ; preds = %if.else198, %if.then178, %if.then127
  %157 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %nf_pos, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %159 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %158, i64 %160)
  %cmp205 = icmp sgt i64 %158, %160
  %.call113 = select i1 %cmp205, ptr null, ptr %call113
  br label %cleanup209

cleanup209:                                       ; preds = %if.end204, %if.end158.cleanup209_crit_edge, %if.then134.cleanup209_crit_edge, %if.end108.cleanup209_crit_edge, %brelse.exit.cleanup209_crit_edge, %if.then15.cleanup209_crit_edge, %if.end, %if.then.cleanup209_crit_edge
  %retval.3 = phi ptr [ %call4, %if.end ], [ null, %if.then.cleanup209_crit_edge ], [ null, %if.end108.cleanup209_crit_edge ], [ %.call113, %if.end204 ], [ null, %if.then15.cleanup209_crit_edge ], [ null, %brelse.exit.cleanup209_crit_edge ], [ null, %if.then134.cleanup209_crit_edge ], [ null, %if.end158.cleanup209_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bha) #5
  ret ptr %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_get_fileident(ptr noundef %buffer, i32 noundef %bufsize, ptr noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buffer, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_fileident.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_fileident, %if.then5)) #5
          to label %cleanup [label %if.then5], !srcloc !33

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_fileident.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef nonnull @.str.1, ptr noundef %buffer, ptr noundef %offset) #5
  br label %cleanup

if.end6:                                          ; preds = %entry
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp sgt i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bufsize)
  %cmp7 = icmp slt i32 %1, %bufsize
  %or.cond85 = and i1 %cmp, %cmp7
  %ptr.0.idx = select i1 %or.cond85, i32 %1, i32 0
  %ptr.0 = getelementptr i8, ptr %buffer, i32 %ptr.0.idx
  %2 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ptr.0, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %3)
  %cmp10.not = icmp eq i16 %3, 257
  br i1 %cmp10.not, label %if.end48, label %do.body13

do.body13:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_fileident.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_fileident, %if.then25)) #5
          to label %do.body32 [label %if.then25], !srcloc !33

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ptr.0, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv28 = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_fileident.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 178, ptr noundef nonnull @.str.1, i32 noundef %conv28) #5
  br label %do.body32

do.body32:                                        ; preds = %if.then25, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_fileident.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_fileident, %if.then44)) #5
          to label %cleanup [label %if.then44], !srcloc !33

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_fileident.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef 38, i32 noundef %bufsize) #5
  br label %cleanup

if.end48:                                         ; preds = %if.end6
  %add = add i32 %1, 38
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bufsize)
  %cmp49 = icmp ugt i32 %add, %bufsize
  br i1 %cmp49, label %if.end48.if.end56.thread_crit_edge, label %if.end56

if.end48.if.end56.thread_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.thread

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %lengthFileIdent = getelementptr inbounds %struct.fileIdentDesc, ptr %ptr.0, i32 0, i32 3
  %9 = ptrtoint ptr %lengthFileIdent to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %lengthFileIdent, align 1
  %conv52 = zext i8 %10 to i32
  %add53 = add nuw nsw i32 %conv52, 38
  %lengthOfImpUse = getelementptr inbounds %struct.fileIdentDesc, ptr %ptr.0, i32 0, i32 5
  %11 = ptrtoint ptr %lengthOfImpUse to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %lengthOfImpUse, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv54 = zext i16 %13 to i32
  %add55 = add nuw nsw i32 %add53, %conv54
  %.pre = add i32 %add55, %1
  %phi.bo = and i32 %add55, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %tobool57.not = icmp eq i32 %phi.bo, 0
  %sub = sub nuw nsw i32 4, %phi.bo
  %spec.select = select i1 %tobool57.not, i32 0, i32 %sub
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.end56, %if.end48.if.end56.thread_crit_edge
  %lengthThisIdent.1.pre-phi100 = phi i32 [ %add, %if.end48.if.end56.thread_crit_edge ], [ %.pre, %if.end56 ]
  %14 = phi i32 [ 2, %if.end48.if.end56.thread_crit_edge ], [ %spec.select, %if.end56 ]
  %add61 = add i32 %lengthThisIdent.1.pre-phi100, %14
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add61, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56.thread, %if.then44, %do.body32, %if.then5, %do.body
  %retval.0 = phi ptr [ %ptr.0, %if.end56.thread ], [ null, %if.then5 ], [ null, %if.then44 ], [ null, %do.body ], [ null, %do.body32 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_next_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tgetblk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_get_fileshortad(ptr noundef readonly %ptr, i32 noundef %maxoffset, ptr noundef %offset, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add = add i32 %1, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %maxoffset)
  %cmp = icmp ugt i32 %add, %maxoffset
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool7.not = icmp eq i32 %inc, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ %ptr, %if.then8 ], [ %ptr, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_get_filelongad(ptr noundef readonly %ptr, i32 noundef %maxoffset, ptr noundef %offset, i32 noundef %inc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  %tobool1.not = icmp eq ptr %offset, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add = add i32 %1, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %maxoffset)
  %cmp = icmp ugt i32 %add, %maxoffset
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.else.cleanup_crit_edge, label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool7.not = icmp eq i32 %inc, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.then8

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.else.cleanup_crit_edge ], [ %ptr, %if.then8 ], [ %ptr, %if.end6.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/directory.c", i32 166, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @udf_get_fileident.__UNIQUE_ID_ddebug256, !1, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/udf/directory.c", i32 177, i32 3}
!9 = !{ptr @udf_get_fileident.__UNIQUE_ID_ddebug257, !8, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/udf/directory.c", i32 179, i32 3}
!13 = !{ptr @udf_get_fileident.__UNIQUE_ID_ddebug258, !12, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/udf/directory.c", i32 205, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @udf_get_fileshortad._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @udf_get_fileshortad._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/udf/directory.c", i32 227, i32 3}
!22 = !{ptr @udf_get_filelongad._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @udf_get_filelongad._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148545388, i64 2148545393, i64 2148545406, i64 2148545450, i64 2148545484, i64 2148545505}
