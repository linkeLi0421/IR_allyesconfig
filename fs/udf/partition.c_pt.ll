; ModuleID = '/llk/IR_all_yes/fs/udf/partition.c_pt.bc'
source_filename = "../fs/udf/partition.c"
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
%struct.udf_part_map = type { %union.anon.70, i32, i32, i16, i16, %union.anon.71, ptr, i16, i16 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i32, i32, i32, i16, i16, i32, ptr, ptr, ptr }
%struct.udf_virtual_data = type { i32, i16 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.udf_sparing_data = type { i16, [4 x ptr] }
%struct.sparingTable = type { %struct.tag, %struct.regid, i16, i16, i32, [0 x %struct.sparingEntry] }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.regid = type { i8, [23 x i8], [8 x i8] }
%struct.sparingEntry = type { i32, i32 }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.61 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@udf_get_pblock.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udf_get_pblock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/udf/partition.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:%s: block=%u, partition=%u, offset=%u: invalid partition\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UDF-fs: %s:%d:%s: block=%u, partition=%u, offset=%u: invalid partition\0A\00", [56 x i8] zeroinitializer }, align 32
@udf_get_pblock_virt15.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"udf_get_pblock_virt15\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:%s: Trying to access block beyond end of VAT (%u max %u)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"UDF-fs: %s:%d:%s: Trying to access block beyond end of VAT (%u max %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@udf_get_pblock_virt15.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s:%d:%s: get_pblock(UDF_VIRTUAL_MAP:%p,%u,%u) VAT: %u[%u]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"UDF-fs: %s:%d:%s: get_pblock(UDF_VIRTUAL_MAP:%p,%u,%u) VAT: %u[%u]\0A\00", [60 x i8] zeroinitializer }, align 32
@udf_get_pblock_virt15.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s:%d:%s: recursive call to udf_get_pblock!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"UDF-fs: %s:%d:%s: recursive call to udf_get_pblock!\0A\00", [43 x i8] zeroinitializer }, align 32
@udf_get_pblock_meta25.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"udf_get_pblock_meta25\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s:%d:%s: READING from METADATA\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"UDF-fs: %s:%d:%s: READING from METADATA\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"error reading from METADATA, trying to read from MIRROR\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 35, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 62, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 86, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 97, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 315, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [22 x i8] c"../fs/udf/partition.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 326, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_pblock(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %conv = zext i16 %partition to i32
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_partitions, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %partition)
  %cmp.not = icmp ugt i16 %3, %partition
  br i1 %cmp.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !36

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 36, ptr noundef nonnull @.str.1, i32 noundef %block, i32 noundef %conv, i32 noundef %offset) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %s_partition_func = getelementptr %struct.udf_part_map, ptr %5, i32 %conv, i32 6
  %6 = ptrtoint ptr %s_partition_func to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_partition_func, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 %7(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) #6
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %s_partition_root = getelementptr %struct.udf_part_map, ptr %5, i32 %conv, i32 1
  %8 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_partition_root, align 4
  %add = add i32 %offset, %block
  %add13 = add i32 %add, %9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %if.then6, %do.body
  %retval.0 = phi i32 [ %call12, %if.then10 ], [ %add13, %if.else ], [ -1, %if.then6 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_pblock_virt15(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_vat_inode = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %s_vat_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_vat_inode, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %5, i32 %idxprom, i32 5
  %6 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_type_specific, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %block)
  %cmp = icmp ult i32 %7, %block
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock_virt15, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !36

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_type_specific, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock_virt15.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 63, ptr noundef nonnull @.str.5, i32 noundef %block, i32 noundef %9) #6
  br label %cleanup

if.end7:                                          ; preds = %entry
  %i_alloc_type = getelementptr i8, ptr %3, i32 -192
  %10 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp8 = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %i_data = getelementptr i8, ptr %3, i32 -188
  %11 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_data, align 4
  %s_start_offset = getelementptr inbounds %struct.udf_virtual_data, ptr %s_type_specific, i32 0, i32 1
  %13 = ptrtoint ptr %s_start_offset to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %s_start_offset, align 4
  %conv = zext i16 %14 to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %conv
  %arrayidx10 = getelementptr i32, ptr %add.ptr, i32 %block
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  br label %translate

if.end11:                                         ; preds = %if.end7
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %18 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_blocksize, align 16
  %s_start_offset12 = getelementptr inbounds %struct.udf_virtual_data, ptr %s_type_specific, i32 0, i32 1
  %20 = ptrtoint ptr %s_start_offset12 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %s_start_offset12, align 4
  %conv13 = zext i16 %21 to i32
  %sub = sub i32 %19, %conv13
  %div118 = lshr i32 %sub, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div118, i32 %block)
  %cmp14.not = icmp ugt i32 %div118, %block
  br i1 %cmp14.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub17 = sub i32 %block, %div118
  %div19120 = lshr i32 %19, 2
  %sub17.frozen = freeze i32 %sub17
  %div19120.frozen = freeze i32 %div19120
  %div20 = udiv i32 %sub17.frozen, %div19120.frozen
  %add = add i32 %div20, 1
  %22 = mul i32 %div20, %div19120.frozen
  %rem.decomposed = sub i32 %sub17.frozen, %22
  br label %if.end27

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %div25119 = lshr i32 %conv13, 2
  %add26 = add i32 %div25119, %block
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then16
  %index.0 = phi i32 [ %rem.decomposed, %if.then16 ], [ %add26, %if.else ]
  %newblock.0 = phi i32 [ %add, %if.then16 ], [ 0, %if.else ]
  %block.addr.0 = phi i32 [ %sub17, %if.then16 ], [ %block, %if.else ]
  %conv29 = zext i32 %newblock.0 to i64
  %call30 = tail call i32 @udf_block_map(ptr noundef %3, i64 noundef %conv29) #6
  %conv31 = zext i32 %call30 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %23 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdev.i, align 4
  %25 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_blocksize, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %24, i64 noundef %conv31, i32 noundef %26, i32 noundef 8) #6
  %tobool33.not = icmp eq ptr %call.i, null
  br i1 %tobool33.not, label %do.body35, label %brelse.exit

do.body35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock_virt15, %if.then47)) #6
          to label %cleanup [label %if.then47], !srcloc !36

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock_virt15.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 87, ptr noundef nonnull @.str.5, ptr noundef %sb, i32 noundef %block.addr.0, i32 noundef %idxprom, i32 noundef %call30, i32 noundef %index.0) #6
  br label %cleanup

brelse.exit:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %27 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data, align 4
  %arrayidx53 = getelementptr i32, ptr %28, i32 %index.0
  %29 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx53, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void @__brelse(ptr noundef nonnull %call.i) #6
  br label %translate

translate:                                        ; preds = %brelse.exit, %if.then9
  %loc.0 = phi i32 [ %17, %if.then9 ], [ %31, %brelse.exit ]
  %partitionReferenceNum = getelementptr i8, ptr %3, i32 -236
  %32 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %partitionReferenceNum, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %partition)
  %cmp56 = icmp eq i16 %33, %partition
  br i1 %cmp56, label %do.body59, label %if.end75

do.body59:                                        ; preds = %translate
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock_virt15, %if.then71)) #6
          to label %cleanup [label %if.then71], !srcloc !36

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock_virt15.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 97, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end75:                                         ; preds = %translate
  %34 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i = zext i16 %33 to i32
  %s_partitions.i = getelementptr inbounds %struct.udf_sb_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %s_partitions.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %s_partitions.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %33)
  %cmp.not.i = icmp ugt i16 %37, %33
  br i1 %cmp.not.i, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock_virt15, %if.then6.i)) #6
          to label %cleanup [label %if.then6.i], !srcloc !36

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 36, ptr noundef nonnull @.str.1, i32 noundef %loc.0, i32 noundef %conv.i, i32 noundef %offset) #6
  br label %cleanup

if.end8.i:                                        ; preds = %if.end75
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %s_partition_func.i = getelementptr %struct.udf_part_map, ptr %39, i32 %conv.i, i32 6
  %40 = ptrtoint ptr %s_partition_func.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_partition_func.i, align 4
  %tobool9.not.i = icmp eq ptr %41, null
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 %41(ptr noundef %sb, i32 noundef %loc.0, i16 noundef zeroext %33, i32 noundef %offset) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_partition_root.i = getelementptr %struct.udf_part_map, ptr %39, i32 %conv.i, i32 1
  %42 = ptrtoint ptr %s_partition_root.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_partition_root.i, align 4
  %add.i = add i32 %loc.0, %offset
  %add13.i = add i32 %add.i, %43
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then10.i, %if.then6.i, %do.body.i, %if.then71, %do.body59, %if.then47, %do.body35, %if.then5, %do.body
  %retval.0 = phi i32 [ -1, %if.then5 ], [ -1, %if.then47 ], [ -1, %if.then71 ], [ -1, %do.body ], [ -1, %do.body35 ], [ -1, %do.body59 ], [ %call12.i, %if.then10.i ], [ %add13.i, %if.else.i ], [ -1, %if.then6.i ], [ -1, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_block_map(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_pblock_virt20(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @udf_get_pblock_virt15(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset)
  ret i32 %call
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_pblock_spar15(ptr nocapture noundef readonly %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 5
  %add = add i32 %offset, %block
  %4 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %s_type_specific, align 4
  %conv = zext i16 %5 to i32
  %neg = sub nsw i32 0, %conv
  %and = and i32 %add, %neg
  %arrayidx2 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %cmp3.not = icmp eq ptr %7, null
  br i1 %cmp3.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %entry
  %arrayidx2.1 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.1, align 4
  %cmp3.not.1 = icmp eq ptr %9, null
  br i1 %cmp3.not.1, label %for.cond.1, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx2.2 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.2, align 4
  %cmp3.not.2 = icmp eq ptr %11, null
  br i1 %cmp3.not.2, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx2.3 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2.3, align 4
  %cmp3.not.3 = icmp eq ptr %13, null
  br i1 %cmp3.not.3, label %for.cond.2.if.end38_crit_edge, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2.if.end38_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.end:                                          ; preds = %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %7, %entry.for.end_crit_edge ], [ %9, %for.cond.for.end_crit_edge ], [ %11, %for.cond.1.for.end_crit_edge ], [ %13, %for.cond.2.for.end_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %.lcssa, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.end.if.end38_crit_edge, label %for.cond8.preheader

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.cond8.preheader:                              ; preds = %for.end
  %reallocationTableLen = getelementptr inbounds %struct.sparingTable, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %reallocationTableLen to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %reallocationTableLen, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %conv9 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp1078.not = icmp eq i16 %17, 0
  br i1 %cmp1078.not, label %for.cond8.preheader.if.end38_crit_edge, label %for.cond8.preheader.for.body12_crit_edge

for.cond8.preheader.for.body12_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body12

for.cond8.preheader.if.end38_crit_edge:           ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body12:                                       ; preds = %if.else27.for.body12_crit_edge, %for.cond8.preheader.for.body12_crit_edge
  %i.179 = phi i32 [ %inc36, %if.else27.for.body12_crit_edge ], [ 0, %for.cond8.preheader.for.body12_crit_edge ]
  %arrayidx14 = getelementptr %struct.sparingTable, ptr %15, i32 0, i32 5, i32 %i.179
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %arrayidx14, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %21)
  %cmp15 = icmp ugt i32 %21, -17
  br i1 %cmp15, label %for.body12.if.end38_crit_edge, label %if.else

for.body12.if.end38_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and)
  %cmp18 = icmp eq i32 %21, %and
  br i1 %cmp18, label %cleanup.thread72, label %if.else27

cleanup.thread72:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mappedLocation = getelementptr %struct.sparingTable, ptr %15, i32 0, i32 5, i32 %i.179, i32 1
  %22 = ptrtoint ptr %mappedLocation to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %mappedLocation, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %sub24 = add nsw i32 %conv, -1
  %and25 = and i32 %sub24, %add
  %add26 = add i32 %24, %and25
  br label %cleanup41

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and)
  %cmp28 = icmp ule i32 %21, %and
  %inc36 = add nuw nsw i32 %i.179, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc36, i32 %conv9)
  %cmp10 = icmp ult i32 %inc36, %conv9
  %or.cond = select i1 %cmp28, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.else27.for.body12_crit_edge, label %if.else27.if.end38_crit_edge

if.else27.if.end38_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else27.for.body12_crit_edge:                   ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12

if.end38:                                         ; preds = %if.else27.if.end38_crit_edge, %for.body12.if.end38_crit_edge, %for.cond8.preheader.if.end38_crit_edge, %for.end.if.end38_crit_edge, %for.cond.2.if.end38_crit_edge
  %s_partition_root = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_partition_root, align 4
  %add40 = add i32 %add, %26
  br label %cleanup41

cleanup41:                                        ; preds = %if.end38, %cleanup.thread72
  %retval.2 = phi i32 [ %add40, %if.end38 ], [ %add26, %cleanup.thread72 ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_relocate_blocks(ptr nocapture noundef readonly %sb, i32 noundef %old_block, ptr nocapture noundef writeonly %new_block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #6
  %s_partitions = getelementptr inbounds %struct.udf_sb_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_partitions to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %s_partitions, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp284.not = icmp eq i16 %3, 0
  br i1 %cmp284.not, label %entry.cleanup154_crit_edge, label %for.body.lr.ph

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

for.body.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc144.for.body_crit_edge, %for.body.lr.ph
  %i.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %inc145, %for.inc144.for.body_crit_edge ]
  %s_partition_root = getelementptr %struct.udf_part_map, ptr %5, i32 %i.0285, i32 1
  %6 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_partition_root, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %old_block)
  %cmp2 = icmp ult i32 %7, %old_block
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc144_crit_edge

for.body.for.inc144_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc144

land.lhs.true:                                    ; preds = %for.body
  %s_partition_len = getelementptr %struct.udf_part_map, ptr %5, i32 %i.0285, i32 2
  %8 = ptrtoint ptr %s_partition_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_partition_len, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %old_block)
  %cmp5 = icmp ugt i32 %add, %old_block
  br i1 %cmp5, label %if.then, label %land.lhs.true.for.inc144_crit_edge

land.lhs.true.for.inc144_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc144

if.then:                                          ; preds = %land.lhs.true
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %5, i32 %i.0285, i32 5
  %sub = sub i32 %old_block, %7
  %10 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %s_type_specific, align 4
  %conv8 = zext i16 %11 to i32
  %neg = sub nsw i32 0, %conv8
  %and = and i32 %sub, %neg
  %arrayidx14 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %cmp15.not = icmp eq ptr %13, null
  br i1 %cmp15.not, label %for.inc, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.then
  %arrayidx14.1 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14.1, align 4
  %cmp15.not.1 = icmp eq ptr %15, null
  br i1 %cmp15.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx14.2 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx14.2, align 4
  %cmp15.not.2 = icmp eq ptr %17, null
  br i1 %cmp15.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx14.3 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14.3, align 4
  %cmp15.not.3 = icmp eq ptr %19, null
  br i1 %cmp15.not.3, label %for.inc.2.cleanup154_crit_edge, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.2.cleanup154_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

for.end:                                          ; preds = %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %j.0288.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ]
  %.lcssa = phi ptr [ %13, %if.then.for.end_crit_edge ], [ %15, %for.inc.for.end_crit_edge ], [ %17, %for.inc.1.for.end_crit_edge ], [ %19, %for.inc.2.for.end_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %.lcssa, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %for.end.cleanup154_crit_edge, label %if.end21

for.end.cleanup154_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

if.end21:                                         ; preds = %for.end
  %reallocationTableLen22 = getelementptr inbounds %struct.sparingTable, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %reallocationTableLen22 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %reallocationTableLen22, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv24 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp25289.not = icmp eq i16 %23, 0
  br i1 %cmp25289.not, label %if.end21.for.end81_crit_edge, label %for.body27.preheader

if.end21.for.end81_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.body27.preheader:                             ; preds = %if.end21
  %umax = call i32 @llvm.umax.i32(i32 %conv24, i32 1)
  br label %for.body27

for.body27:                                       ; preds = %for.inc79.for.body27_crit_edge, %for.body27.preheader
  %k.0290 = phi i32 [ %inc80, %for.inc79.for.body27_crit_edge ], [ 0, %for.body27.preheader ]
  %arrayidx30 = getelementptr %struct.sparingTable, ptr %21, i32 0, i32 5, i32 %k.0290
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %arrayidx30, align 1
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp31 = icmp eq i32 %26, -1
  br i1 %cmp31, label %for.body37.lr.ph, label %if.else

for.body37.lr.ph:                                 ; preds = %for.body27
  %28 = tail call i32 @llvm.bswap.i32(i32 %and)
  %mul = shl nuw nsw i32 %conv24, 3
  %add46 = add nuw nsw i32 %mul, 56
  %arrayidx39 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %j.0288.lcssa
  %29 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %30, null
  br i1 %tobool40.not, label %for.body37.lr.ph.cleanup_crit_edge, label %if.end42

for.body37.lr.ph.cleanup_crit_edge:               ; preds = %for.body37.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %for.body37.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %b_data43 = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %b_data43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data43, align 4
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %28, ptr %arrayidx30, align 1
  tail call void @udf_update_tag(ptr noundef %32, i32 noundef %add46) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %30) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %for.body37.lr.ph.cleanup_crit_edge
  %inc48 = add nuw nsw i32 %j.0288.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc48)
  %exitcond324.not = icmp eq i32 %inc48, 4
  br i1 %exitcond324.not, label %cleanup.for.end49_crit_edge, label %for.body37.1

cleanup.for.end49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body37.1:                                     ; preds = %cleanup
  %arrayidx39.1 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc48
  %34 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx39.1, align 4
  %tobool40.not.1 = icmp eq ptr %35, null
  br i1 %tobool40.not.1, label %for.body37.1.cleanup.1_crit_edge, label %if.end42.1

for.body37.1.cleanup.1_crit_edge:                 ; preds = %for.body37.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end42.1:                                       ; preds = %for.body37.1
  call void @__sanitizer_cov_trace_pc() #8
  %b_data43.1 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %b_data43.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data43.1, align 4
  %38 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %28, ptr %arrayidx30, align 1
  tail call void @udf_update_tag(ptr noundef %37, i32 noundef %add46) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %35) #6
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end42.1, %for.body37.1.cleanup.1_crit_edge
  %inc48.1 = add nuw nsw i32 %j.0288.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc48.1)
  %exitcond324.not.1 = icmp eq i32 %inc48.1, 4
  br i1 %exitcond324.not.1, label %cleanup.1.for.end49_crit_edge, label %for.body37.2

cleanup.1.for.end49_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body37.2:                                     ; preds = %cleanup.1
  %arrayidx39.2 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc48.1
  %39 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx39.2, align 4
  %tobool40.not.2 = icmp eq ptr %40, null
  br i1 %tobool40.not.2, label %for.body37.2.cleanup.2_crit_edge, label %if.end42.2

for.body37.2.cleanup.2_crit_edge:                 ; preds = %for.body37.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end42.2:                                       ; preds = %for.body37.2
  call void @__sanitizer_cov_trace_pc() #8
  %b_data43.2 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data43.2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data43.2, align 4
  %43 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %28, ptr %arrayidx30, align 1
  tail call void @udf_update_tag(ptr noundef %42, i32 noundef %add46) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %40) #6
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end42.2, %for.body37.2.cleanup.2_crit_edge
  %inc48.2 = add nuw nsw i32 %j.0288.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc48.2)
  %exitcond324.not.2 = icmp eq i32 %inc48.2, 4
  br i1 %exitcond324.not.2, label %cleanup.2.for.end49_crit_edge, label %for.body37.3

cleanup.2.for.end49_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body37.3:                                     ; preds = %cleanup.2
  %arrayidx39.3 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc48.2
  %44 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx39.3, align 4
  %tobool40.not.3 = icmp eq ptr %45, null
  br i1 %tobool40.not.3, label %for.body37.3.for.end49_crit_edge, label %if.end42.3

for.body37.3.for.end49_crit_edge:                 ; preds = %for.body37.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

if.end42.3:                                       ; preds = %for.body37.3
  call void @__sanitizer_cov_trace_pc() #8
  %b_data43.3 = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %b_data43.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data43.3, align 4
  %48 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %28, ptr %arrayidx30, align 1
  tail call void @udf_update_tag(ptr noundef %47, i32 noundef %add46) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %45) #6
  br label %for.end49

for.end49:                                        ; preds = %if.end42.3, %for.body37.3.for.end49_crit_edge, %cleanup.2.for.end49_crit_edge, %cleanup.1.for.end49_crit_edge, %cleanup.for.end49_crit_edge
  %mappedLocation = getelementptr %struct.sparingTable, ptr %21, i32 0, i32 5, i32 %k.0290, i32 1
  br label %cleanup154.sink.split

if.else:                                          ; preds = %for.body27
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and)
  %cmp57 = icmp eq i32 %27, %and
  br i1 %cmp57, label %if.then59, label %if.else68

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mappedLocation60 = getelementptr %struct.sparingTable, ptr %21, i32 0, i32 5, i32 %k.0290, i32 1
  br label %cleanup154.sink.split

if.else68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and)
  %cmp69 = icmp ugt i32 %27, %and
  br i1 %cmp69, label %if.else68.for.end81_crit_edge, label %for.inc79

if.else68.for.end81_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.inc79:                                        ; preds = %if.else68
  %inc80 = add nuw nsw i32 %k.0290, 1
  %exitcond323.not = icmp eq i32 %inc80, %umax
  br i1 %exitcond323.not, label %for.inc79.for.end81_crit_edge, label %for.inc79.for.body27_crit_edge

for.inc79.for.body27_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

for.inc79.for.end81_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.end81:                                        ; preds = %for.inc79.for.end81_crit_edge, %if.else68.for.end81_crit_edge, %if.end21.for.end81_crit_edge
  %k.0.lcssa = phi i32 [ 0, %if.end21.for.end81_crit_edge ], [ %k.0290, %if.else68.for.end81_crit_edge ], [ %umax, %for.inc79.for.end81_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa, i32 %conv24)
  %cmp84302 = icmp slt i32 %k.0.lcssa, %conv24
  br i1 %cmp84302, label %for.body86.lr.ph, label %for.end81.cleanup154_crit_edge

for.end81.cleanup154_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

for.body86.lr.ph:                                 ; preds = %for.end81
  %49 = tail call i32 @llvm.bswap.i32(i32 %and)
  %add110 = add nuw nsw i32 %k.0.lcssa, 1
  %mul119 = shl nuw nsw i32 %conv24, 3
  %add120 = add nuw nsw i32 %mul119, 56
  br label %for.body86

for.body86:                                       ; preds = %for.inc137.for.body86_crit_edge, %for.body86.lr.ph
  %l.0305 = phi i32 [ %k.0.lcssa, %for.body86.lr.ph ], [ %inc138, %for.inc137.for.body86_crit_edge ]
  %arrayidx89 = getelementptr %struct.sparingTable, ptr %21, i32 0, i32 5, i32 %l.0305
  %50 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp92.not = icmp eq i32 %51, -1
  br i1 %cmp92.not, label %for.body99.lr.ph, label %for.inc137

for.body99.lr.ph:                                 ; preds = %for.body86
  %sub114 = sub nuw nsw i32 %l.0305, %k.0.lcssa
  %mul115 = shl i32 %sub114, 3
  %arrayidx101 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %j.0288.lcssa
  %52 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx101, align 4
  %tobool102.not = icmp eq ptr %53, null
  br i1 %tobool102.not, label %for.body99.lr.ph.for.inc121_crit_edge, label %if.end104

for.body99.lr.ph.for.inc121_crit_edge:            ; preds = %for.body99.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc121

if.end104:                                        ; preds = %for.body99.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %b_data105 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %b_data105 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %b_data105, align 4
  %mapEntry.sroa.6.0.arrayidx107.sroa_idx = getelementptr %struct.sparingTable, ptr %55, i32 0, i32 5, i32 %l.0305, i32 1
  %56 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %mapEntry.sroa.6.0.copyload = load i32, ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx, align 1
  %arrayidx111 = getelementptr %struct.sparingTable, ptr %55, i32 0, i32 5, i32 %add110
  %arrayidx113 = getelementptr %struct.sparingTable, ptr %55, i32 0, i32 5, i32 %k.0.lcssa
  %57 = call ptr @memmove(ptr %arrayidx111, ptr %arrayidx113, i32 %mul115)
  %58 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 4)
  store i32 %49, ptr %arrayidx113, align 1
  %mapEntry.sroa.6.0.arrayidx117.sroa_idx = getelementptr inbounds i8, ptr %arrayidx113, i32 4
  %59 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %59, i32 4)
  store i32 %mapEntry.sroa.6.0.copyload, ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx, align 1
  tail call void @udf_update_tag(ptr noundef %55, i32 noundef %add120) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %53) #6
  br label %for.inc121

for.inc121:                                       ; preds = %if.end104, %for.body99.lr.ph.for.inc121_crit_edge
  %st.9 = phi ptr [ %55, %if.end104 ], [ %21, %for.body99.lr.ph.for.inc121_crit_edge ]
  %inc122 = add nuw nsw i32 %j.0288.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc122)
  %exitcond325.not = icmp eq i32 %inc122, 4
  br i1 %exitcond325.not, label %for.inc121.cleanup134_crit_edge, label %for.body99.1

for.inc121.cleanup134_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

for.body99.1:                                     ; preds = %for.inc121
  %arrayidx101.1 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc122
  %60 = ptrtoint ptr %arrayidx101.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx101.1, align 4
  %tobool102.not.1 = icmp eq ptr %61, null
  br i1 %tobool102.not.1, label %for.body99.1.for.inc121.1_crit_edge, label %if.end104.1

for.body99.1.for.inc121.1_crit_edge:              ; preds = %for.body99.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc121.1

if.end104.1:                                      ; preds = %for.body99.1
  call void @__sanitizer_cov_trace_pc() #8
  %b_data105.1 = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data105.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data105.1, align 4
  %mapEntry.sroa.6.0.arrayidx107.sroa_idx.1 = getelementptr %struct.sparingTable, ptr %63, i32 0, i32 5, i32 %l.0305, i32 1
  %64 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.1 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %mapEntry.sroa.6.0.copyload.1 = load i32, ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.1, align 1
  %arrayidx111.1 = getelementptr %struct.sparingTable, ptr %63, i32 0, i32 5, i32 %add110
  %arrayidx113.1 = getelementptr %struct.sparingTable, ptr %63, i32 0, i32 5, i32 %k.0.lcssa
  %65 = call ptr @memmove(ptr %arrayidx111.1, ptr %arrayidx113.1, i32 %mul115)
  %66 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %49, ptr %arrayidx113.1, align 1
  %mapEntry.sroa.6.0.arrayidx117.sroa_idx.1 = getelementptr inbounds i8, ptr %arrayidx113.1, i32 4
  %67 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.1 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %mapEntry.sroa.6.0.copyload.1, ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.1, align 1
  tail call void @udf_update_tag(ptr noundef %63, i32 noundef %add120) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %61) #6
  br label %for.inc121.1

for.inc121.1:                                     ; preds = %if.end104.1, %for.body99.1.for.inc121.1_crit_edge
  %st.9.1 = phi ptr [ %63, %if.end104.1 ], [ %st.9, %for.body99.1.for.inc121.1_crit_edge ]
  %inc122.1 = add nuw nsw i32 %j.0288.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc122.1)
  %exitcond325.not.1 = icmp eq i32 %inc122.1, 4
  br i1 %exitcond325.not.1, label %for.inc121.1.cleanup134_crit_edge, label %for.body99.2

for.inc121.1.cleanup134_crit_edge:                ; preds = %for.inc121.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

for.body99.2:                                     ; preds = %for.inc121.1
  %arrayidx101.2 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc122.1
  %68 = ptrtoint ptr %arrayidx101.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx101.2, align 4
  %tobool102.not.2 = icmp eq ptr %69, null
  br i1 %tobool102.not.2, label %for.body99.2.for.inc121.2_crit_edge, label %if.end104.2

for.body99.2.for.inc121.2_crit_edge:              ; preds = %for.body99.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc121.2

if.end104.2:                                      ; preds = %for.body99.2
  call void @__sanitizer_cov_trace_pc() #8
  %b_data105.2 = getelementptr inbounds %struct.buffer_head, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %b_data105.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %b_data105.2, align 4
  %mapEntry.sroa.6.0.arrayidx107.sroa_idx.2 = getelementptr %struct.sparingTable, ptr %71, i32 0, i32 5, i32 %l.0305, i32 1
  %72 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.2 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %mapEntry.sroa.6.0.copyload.2 = load i32, ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.2, align 1
  %arrayidx111.2 = getelementptr %struct.sparingTable, ptr %71, i32 0, i32 5, i32 %add110
  %arrayidx113.2 = getelementptr %struct.sparingTable, ptr %71, i32 0, i32 5, i32 %k.0.lcssa
  %73 = call ptr @memmove(ptr %arrayidx111.2, ptr %arrayidx113.2, i32 %mul115)
  %74 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %49, ptr %arrayidx113.2, align 1
  %mapEntry.sroa.6.0.arrayidx117.sroa_idx.2 = getelementptr inbounds i8, ptr %arrayidx113.2, i32 4
  %75 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.2 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %mapEntry.sroa.6.0.copyload.2, ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.2, align 1
  tail call void @udf_update_tag(ptr noundef %71, i32 noundef %add120) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %69) #6
  br label %for.inc121.2

for.inc121.2:                                     ; preds = %if.end104.2, %for.body99.2.for.inc121.2_crit_edge
  %st.9.2 = phi ptr [ %71, %if.end104.2 ], [ %st.9.1, %for.body99.2.for.inc121.2_crit_edge ]
  %inc122.2 = add nuw nsw i32 %j.0288.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc122.2)
  %exitcond325.not.2 = icmp eq i32 %inc122.2, 4
  br i1 %exitcond325.not.2, label %for.inc121.2.cleanup134_crit_edge, label %for.body99.3

for.inc121.2.cleanup134_crit_edge:                ; preds = %for.inc121.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

for.body99.3:                                     ; preds = %for.inc121.2
  %arrayidx101.3 = getelementptr %struct.udf_sparing_data, ptr %s_type_specific, i32 0, i32 1, i32 %inc122.2
  %76 = ptrtoint ptr %arrayidx101.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx101.3, align 4
  %tobool102.not.3 = icmp eq ptr %77, null
  br i1 %tobool102.not.3, label %for.body99.3.cleanup134_crit_edge, label %if.end104.3

for.body99.3.cleanup134_crit_edge:                ; preds = %for.body99.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup134

if.end104.3:                                      ; preds = %for.body99.3
  call void @__sanitizer_cov_trace_pc() #8
  %b_data105.3 = getelementptr inbounds %struct.buffer_head, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %b_data105.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %b_data105.3, align 4
  %mapEntry.sroa.6.0.arrayidx107.sroa_idx.3 = getelementptr %struct.sparingTable, ptr %79, i32 0, i32 5, i32 %l.0305, i32 1
  %80 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.3 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %mapEntry.sroa.6.0.copyload.3 = load i32, ptr %mapEntry.sroa.6.0.arrayidx107.sroa_idx.3, align 1
  %arrayidx111.3 = getelementptr %struct.sparingTable, ptr %79, i32 0, i32 5, i32 %add110
  %arrayidx113.3 = getelementptr %struct.sparingTable, ptr %79, i32 0, i32 5, i32 %k.0.lcssa
  %81 = call ptr @memmove(ptr %arrayidx111.3, ptr %arrayidx113.3, i32 %mul115)
  %82 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %49, ptr %arrayidx113.3, align 1
  %mapEntry.sroa.6.0.arrayidx117.sroa_idx.3 = getelementptr inbounds i8, ptr %arrayidx113.3, i32 4
  %83 = ptrtoint ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.3 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %mapEntry.sroa.6.0.copyload.3, ptr %mapEntry.sroa.6.0.arrayidx117.sroa_idx.3, align 1
  tail call void @udf_update_tag(ptr noundef %79, i32 noundef %add120) #6
  tail call void @mark_buffer_dirty(ptr noundef nonnull %77) #6
  br label %cleanup134

cleanup134:                                       ; preds = %if.end104.3, %for.body99.3.cleanup134_crit_edge, %for.inc121.2.cleanup134_crit_edge, %for.inc121.1.cleanup134_crit_edge, %for.inc121.cleanup134_crit_edge
  %st.9.lcssa = phi ptr [ %st.9, %for.inc121.cleanup134_crit_edge ], [ %st.9.1, %for.inc121.1.cleanup134_crit_edge ], [ %st.9.2, %for.inc121.2.cleanup134_crit_edge ], [ %79, %if.end104.3 ], [ %st.9.2, %for.body99.3.cleanup134_crit_edge ]
  %mappedLocation126 = getelementptr %struct.sparingTable, ptr %st.9.lcssa, i32 0, i32 5, i32 %k.0.lcssa, i32 1
  br label %cleanup154.sink.split

for.inc137:                                       ; preds = %for.body86
  %inc138 = add nuw nsw i32 %l.0305, 1
  %exitcond326.not = icmp eq i32 %inc138, %conv24
  br i1 %exitcond326.not, label %for.inc137.cleanup154_crit_edge, label %for.inc137.for.body86_crit_edge

for.inc137.for.body86_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.inc137.cleanup154_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

for.inc144:                                       ; preds = %land.lhs.true.for.inc144_crit_edge, %for.body.for.inc144_crit_edge
  %inc145 = add nuw nsw i32 %i.0285, 1
  %exitcond.not = icmp eq i32 %inc145, %conv
  br i1 %exitcond.not, label %for.inc144.cleanup154_crit_edge, label %for.inc144.for.body_crit_edge

for.inc144.for.body_crit_edge:                    ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc144.cleanup154_crit_edge:                  ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup154

cleanup154.sink.split:                            ; preds = %cleanup134, %if.then59, %for.end49
  %mappedLocation126.sink = phi ptr [ %mappedLocation126, %cleanup134 ], [ %mappedLocation60, %if.then59 ], [ %mappedLocation, %for.end49 ]
  %84 = ptrtoint ptr %mappedLocation126.sink to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %85 = load i32, ptr %mappedLocation126.sink, align 1
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %s_partition_root to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_partition_root, align 4
  %sub128 = sub i32 %old_block, %88
  %89 = ptrtoint ptr %s_type_specific to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %s_type_specific, align 4
  %conv130 = zext i16 %90 to i32
  %sub131 = add nsw i32 %conv130, -1
  %and132 = and i32 %sub131, %sub128
  %add133 = add i32 %and132, %86
  %91 = ptrtoint ptr %new_block to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add133, ptr %new_block, align 4
  br label %cleanup154

cleanup154:                                       ; preds = %cleanup154.sink.split, %for.inc144.cleanup154_crit_edge, %for.inc137.cleanup154_crit_edge, %for.end81.cleanup154_crit_edge, %for.end.cleanup154_crit_edge, %for.inc.2.cleanup154_crit_edge, %entry.cleanup154_crit_edge
  %ret.7 = phi i32 [ 1, %for.end.cleanup154_crit_edge ], [ 1, %for.end81.cleanup154_crit_edge ], [ 1, %for.inc.2.cleanup154_crit_edge ], [ 1, %entry.cleanup154_crit_edge ], [ 0, %cleanup154.sink.split ], [ 1, %for.inc137.cleanup154_crit_edge ], [ 1, %for.inc144.cleanup154_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #6
  ret i32 %ret.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_update_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_get_pblock_meta25(ptr noundef %sb, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock_meta25.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_get_pblock_meta25, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock_meta25.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, i32 noundef 315, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %idxprom = zext i16 %partition to i32
  %s_type_specific = getelementptr %struct.udf_part_map, ptr %3, i32 %idxprom, i32 5
  %s_metadata_fe = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 7
  %4 = ptrtoint ptr %s_metadata_fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_metadata_fe, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %cond.end, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end:                                         ; preds = %do.end
  %s_mirror_fe = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 8
  %6 = ptrtoint ptr %s_mirror_fe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_mirror_fe, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end7_crit_edge

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %cond.end.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %cond57 = phi ptr [ %7, %cond.end.if.end7_crit_edge ], [ %5, %do.end.if.end7_crit_edge ]
  %call8 = tail call fastcc i32 @udf_try_read_meta(ptr noundef nonnull %cond57, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp = icmp eq i32 %call8, -1
  br i1 %cmp, label %land.lhs.true, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end7
  %8 = ptrtoint ptr %s_metadata_fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_metadata_fe, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  tail call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %sb, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15) #6
  %s_flags = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 6
  %10 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then13, label %if.then11.if.end22_crit_edge

if.then11.if.end22_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %s_mirror_file_loc = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 1
  %12 = ptrtoint ptr %s_mirror_file_loc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_mirror_file_loc, align 4
  %s_phys_partition_ref = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 5
  %14 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_phys_partition_ref, align 2
  %conv = zext i16 %15 to i32
  %call14 = tail call ptr @udf_find_metadata_inode_efe(ptr noundef %sb, i32 noundef %13, i32 noundef %conv) #6
  %s_mirror_fe15 = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 8
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call14
  %16 = ptrtoint ptr %s_mirror_fe15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.store.select, ptr %s_mirror_fe15, align 4
  %17 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_flags, align 4
  %or = or i32 %18, 2
  store i32 %or, ptr %s_flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then13, %if.then11.if.end22_crit_edge
  %s_mirror_fe23 = getelementptr inbounds %struct.udf_meta_data, ptr %s_type_specific, i32 0, i32 8
  %19 = ptrtoint ptr %s_mirror_fe23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_mirror_fe23, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call fastcc i32 @udf_try_read_meta(ptr noundef nonnull %20, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %cond.end.cleanup_crit_edge ], [ -1, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26 ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_try_read_meta(ptr noundef %inode, i32 noundef %block, i16 noundef zeroext %partition, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %ext_offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #6
  %2 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %eloc, align 8, !annotation !37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #6
  %3 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %elen, align 4, !annotation !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ext_offset) #6
  %4 = ptrtoint ptr %ext_offset to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %ext_offset, align 8, !annotation !37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #6
  %5 = call ptr @memset(ptr %epos, i32 0, i32 16)
  %conv = zext i32 %block to i64
  %call = call signext i8 @inode_bmap(ptr noundef %inode, i64 noundef %conv, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %ext_offset) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp.not = icmp eq i8 %call, 0
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %idxprom = zext i16 %partition to i32
  %10 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eloc, align 8
  %s_phys_partition_ref = getelementptr %struct.udf_part_map, ptr %9, i32 %idxprom, i32 5, i32 0, i32 5
  %12 = ptrtoint ptr %s_phys_partition_ref to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %s_phys_partition_ref, align 2
  %14 = ptrtoint ptr %ext_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ext_offset, align 8
  %16 = trunc i64 %15 to i32
  %conv5 = add i32 %16, %offset
  %conv.i = zext i16 %13 to i32
  %s_partitions.i = getelementptr inbounds %struct.udf_sb_info, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %s_partitions.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %s_partitions.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %13)
  %cmp.not.i = icmp ugt i16 %18, %13
  br i1 %cmp.not.i, label %if.end8.i, label %do.body.i

do.body.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_get_pblock.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_try_read_meta, %if.then6.i)) #6
          to label %if.end [label %if.then6.i], !srcloc !36

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_get_pblock.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 36, ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef %conv.i, i32 noundef %conv5) #6
  br label %if.end

if.end8.i:                                        ; preds = %if.else
  %s_partition_func.i = getelementptr %struct.udf_part_map, ptr %9, i32 %conv.i, i32 6
  %19 = ptrtoint ptr %s_partition_func.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_partition_func.i, align 4
  %tobool9.not.i = icmp eq ptr %20, null
  br i1 %tobool9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = call i32 %20(ptr noundef %1, i32 noundef %11, i16 noundef zeroext %13, i32 noundef %conv5) #6
  br label %if.end

if.else.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_partition_root.i = getelementptr %struct.udf_part_map, ptr %9, i32 %conv.i, i32 1
  %21 = ptrtoint ptr %s_partition_root.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_partition_root.i, align 4
  %add.i = add i32 %conv5, %11
  %add13.i = add i32 %add.i, %22
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then10.i, %if.then6.i, %do.body.i, %entry.if.end_crit_edge
  %phyblock.0 = phi i32 [ -1, %entry.if.end_crit_edge ], [ %call12.i, %if.then10.i ], [ %add13.i, %if.else.i ], [ -1, %if.then6.i ], [ -1, %do.body.i ]
  %23 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.brelse.exit_crit_edge, label %if.then.i

if.end.brelse.exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %24) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end.brelse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ext_offset) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #6
  ret i32 %phyblock.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_warn(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_find_metadata_inode_efe(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @inode_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/udf/partition.c", i32 35, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @udf_get_pblock.__UNIQUE_ID_ddebug234, !1, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/udf/partition.c", i32 62, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug235, !8, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/udf/partition.c", i32 86, i32 3}
!14 = !{ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug236, !13, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/udf/partition.c", i32 97, i32 3}
!18 = !{ptr @udf_get_pblock_virt15.__UNIQUE_ID_ddebug237, !17, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/udf/partition.c", i32 315, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @udf_get_pblock_meta25.__UNIQUE_ID_ddebug238, !21, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/udf/partition.c", i32 326, i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 2148548375, i64 2148548380, i64 2148548393, i64 2148548437, i64 2148548471, i64 2148548492}
!37 = !{!"auto-init"}
