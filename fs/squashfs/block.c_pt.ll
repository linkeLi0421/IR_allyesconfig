; ModuleID = '/llk/IR_all_yes/fs/squashfs/block.c_pt.bc'
source_filename = "../fs/squashfs/block.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.bvec_iter_all = type { %struct.bio_vec, i32, i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.squashfs_page_actor = type { ptr, i32, i32, i32 }
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.34, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.34 = type { ptr }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }

@squashfs_read_data.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"squashfs_read_data\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/squashfs/block.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"SQUASHFS: Block @ 0x%llx, %scompressed size %d, src size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@squashfs_read_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@squashfs_read_data.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@squashfs_read_data.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SQUASHFS: Block @ 0x%llx, %scompressed size %d\0A\00", [48 x i8] zeroinitializer }, align 32
@squashfs_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013SQUASHFS error: Failed to read block 0x%llx: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@squashfs_read_data._entry_ptr = internal global ptr @squashfs_read_data._entry, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"squashfs read failed\00", [43 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bvec_virt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@copy_bio_to_actor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 156, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 198, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 229, i32 3 }
@___asan_gen_.42 = private constant [23 x i8] c"../fs/squashfs/block.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 231, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 240, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @squashfs_read_data._entry, ptr @squashfs_read_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @squashfs_read_data(ptr nocapture noundef readonly %sb, i64 noundef %index, i32 noundef %length, ptr noundef writeonly %next_index, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  %bio = alloca ptr, align 4
  %offset = alloca i32, align 4
  %iter_all = alloca %struct.bvec_iter_all, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bio) #8
  %2 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bio, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %offset, align 4, !annotation !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %and = and i32 %length, 16777216
  %and.lobit = lshr exact i32 %and, 24
  %and2 = and i32 %length, -16777217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_data.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_data, %if.then9)) #8
          to label %if.end178 [label %if.then9], !srcloc !39

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool1.not, ptr @.str.4, ptr @.str.5
  %length11 = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 2
  %4 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_data.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.3, i64 noundef %index, ptr noundef nonnull %cond, i32 noundef %and2, i32 noundef %5) #8
  br label %if.end178

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iter_all) #8
  %done.i = getelementptr inbounds %struct.bvec_iter_all, ptr %iter_all, i32 0, i32 2
  %idx.i = getelementptr inbounds %struct.bvec_iter_all, ptr %iter_all, i32 0, i32 1
  %add = add i64 %index, 2
  %bytes_used = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 19
  %6 = getelementptr inbounds i8, ptr %iter_all, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %8 = ptrtoint ptr %bytes_used to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bytes_used, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %9)
  %cmp = icmp ugt i64 %add, %9
  br i1 %cmp, label %if.else.cleanup.thread293_crit_edge, label %if.end14

if.else.cleanup.thread293_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread293

if.end14:                                         ; preds = %if.else
  %call15 = call fastcc i32 @squashfs_bio_read(ptr noundef %sb, i64 noundef %index, i32 noundef 2, ptr noundef nonnull %bio, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup.thread293_crit_edge

if.end14.cleanup.thread293_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread293

if.end18:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bio, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.not = icmp eq i16 %13, 0
  br i1 %cmp.not.i.not, label %land.rhs, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end18
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bi_io_vec.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %19, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %17, i32 %shr.i.i
  %20 = ptrtoint ptr %iter_all to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i, ptr %iter_all, align 4
  %and.i.i = and i32 %19, 4095
  %21 = getelementptr inbounds %struct.bio_vec, ptr %iter_all, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i.i, ptr %21, align 4
  %sub.i.i = sub nuw nsw i32 4096, %and.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_len.i.i, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %24) #8
  %bv_len10.i.i = getelementptr inbounds %struct.bio_vec, ptr %iter_all, i32 0, i32 1
  %26 = ptrtoint ptr %bv_len10.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %bv_len10.i.i, align 4
  %27 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %done.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub.i.i)
  %cmp15.i.i.not = icmp ugt i32 %24, %sub.i.i
  br i1 %cmp15.i.i.not, label %if.end.i.i.if.end73_crit_edge, label %if.then16.i.i

if.end.i.i.if.end73_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %idx.i, align 4
  %29 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %done.i, align 4
  br label %if.end73

land.rhs:                                         ; preds = %if.end18
  %.b277 = load i1, ptr @squashfs_read_data.__already_done, align 1
  br i1 %.b277, label %land.rhs.cleanup.thread_crit_edge, label %land.rhs.cleanup.thread.sink.split_crit_edge, !prof !40

land.rhs.cleanup.thread.sink.split_crit_edge:     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

land.rhs.cleanup.thread_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end73:                                         ; preds = %if.then16.i.i, %if.end.i.i.if.end73_crit_edge
  %30 = ptrtoint ptr %iter_all to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iter_all, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %shr.i.i284 = lshr i32 %33, 30
  %34 = zext i32 %shr.i.i284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i284, label %if.end73.bvec_virt.exit_crit_edge [
    i32 2, label %if.end73.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end73.land.rhs.i_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.end73.bvec_virt.exit_crit_edge:                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %35 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp2.i.not.i = icmp eq i32 %35, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %if.end73.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !40

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 240, i32 noundef 9, ptr noundef null) #8
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %if.end73.bvec_virt.exit_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %31) #8
  %36 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %21, align 4
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %37
  %38 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset, align 4
  %arrayidx = getelementptr i8, ptr %add.ptr.i, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %41 to i32
  %42 = ptrtoint ptr %bv_len10.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_len10.i.i, align 4
  %sub = add i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %sub)
  %cmp75 = icmp ult i32 %39, %sub
  br i1 %cmp75, label %if.then77, label %if.else81

if.then77:                                        ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add78 = add nuw i32 %39, 1
  %arrayidx79 = getelementptr i8, ptr %add.ptr.i, i32 %add78
  br label %if.end147

if.else81:                                        ; preds = %bvec_virt.exit
  %call83 = call fastcc zeroext i1 @bio_next_segment(ptr noundef %11, ptr noundef nonnull %iter_all)
  br i1 %call83, label %if.end141, label %land.rhs93

land.rhs93:                                       ; preds = %if.else81
  %.b275276 = load i1, ptr @squashfs_read_data.__already_done.6, align 1
  br i1 %.b275276, label %land.rhs93.cleanup.thread_crit_edge, label %land.rhs93.cleanup.thread.sink.split_crit_edge, !prof !40

land.rhs93.cleanup.thread.sink.split_crit_edge:   ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

land.rhs93.cleanup.thread_crit_edge:              ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end141:                                        ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %call142 = call fastcc ptr @bvec_virt(ptr noundef nonnull %iter_all)
  br label %if.end147

if.end147:                                        ; preds = %if.end141, %if.then77
  %shl.pn.in.in.in = phi ptr [ %arrayidx79, %if.then77 ], [ %call142, %if.end141 ]
  %44 = ptrtoint ptr %shl.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %44)
  %shl.pn.in.in = load i8, ptr %shl.pn.in.in.in, align 1
  %shl.pn.in = zext i8 %shl.pn.in.in to i32
  %shl.pn = shl nuw nsw i32 %shl.pn.in, 8
  tail call void @bio_free_pages(ptr noundef %11) #8
  tail call void @bio_put(ptr noundef %11) #8
  %and148 = and i32 %shl.pn, 32768
  %and148.lobit = lshr exact i32 %and148, 15
  %shl.pn.masked = and i32 %shl.pn, 32512
  %and152 = or i32 %shl.pn.masked, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  %spec.select = select i1 %tobool153.not, i32 32768, i32 %and152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_data.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_data, %if.then169)) #8
          to label %if.end178.thread [label %if.then169], !srcloc !39

if.then169:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %cond172 = select i1 %tobool149.not, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_data.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.7, i64 noundef %index, ptr noundef nonnull %cond172, i32 noundef %spec.select) #8
  br label %if.end178.thread

cleanup.thread.sink.split:                        ; preds = %land.rhs93.cleanup.thread.sink.split_crit_edge, %land.rhs.cleanup.thread.sink.split_crit_edge
  %squashfs_read_data.__already_done.sink = phi ptr [ @squashfs_read_data.__already_done, %land.rhs.cleanup.thread.sink.split_crit_edge ], [ @squashfs_read_data.__already_done.6, %land.rhs93.cleanup.thread.sink.split_crit_edge ]
  %.sink = phi i32 [ 174, %land.rhs.cleanup.thread.sink.split_crit_edge ], [ 184, %land.rhs93.cleanup.thread.sink.split_crit_edge ]
  %45 = ptrtoint ptr %squashfs_read_data.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %45)
  store i1 true, ptr %squashfs_read_data.__already_done.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %land.rhs93.cleanup.thread_crit_edge, %land.rhs.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter_all) #8
  br label %out_free_bio

cleanup.thread293:                                ; preds = %if.end14.cleanup.thread293_crit_edge, %if.else.cleanup.thread293_crit_edge
  %res.0.ph = phi i32 [ %call15, %if.end14.cleanup.thread293_crit_edge ], [ -5, %if.else.cleanup.thread293_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter_all) #8
  br label %out

if.end178.thread:                                 ; preds = %if.then169, %if.end147
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iter_all) #8
  br label %lor.lhs.false

if.end178:                                        ; preds = %if.then9, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp179 = icmp slt i32 %and2, 0
  br i1 %cmp179, label %if.end178.do.end215_crit_edge, label %if.end178.lor.lhs.false_crit_edge

if.end178.lor.lhs.false_crit_edge:                ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end178.do.end215_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215

lor.lhs.false:                                    ; preds = %if.end178.lor.lhs.false_crit_edge, %if.end178.thread
  %index.addr.1305 = phi i64 [ %add, %if.end178.thread ], [ %index, %if.end178.lor.lhs.false_crit_edge ]
  %length.addr.2304 = phi i32 [ %spec.select, %if.end178.thread ], [ %and2, %if.end178.lor.lhs.false_crit_edge ]
  %compressed.1303.in = phi i32 [ %and148.lobit, %if.end178.thread ], [ %and.lobit, %if.end178.lor.lhs.false_crit_edge ]
  %length181 = getelementptr inbounds %struct.squashfs_page_actor, ptr %output, i32 0, i32 2
  %46 = ptrtoint ptr %length181 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length181, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %length.addr.2304, i32 %47)
  %cmp182 = icmp sgt i32 %length.addr.2304, %47
  br i1 %cmp182, label %lor.lhs.false.do.end215_crit_edge, label %lor.lhs.false184

lor.lhs.false.do.end215_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215

lor.lhs.false184:                                 ; preds = %lor.lhs.false
  %conv185 = sext i32 %length.addr.2304 to i64
  %add186 = add i64 %index.addr.1305, %conv185
  %bytes_used187 = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 19
  %48 = ptrtoint ptr %bytes_used187 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %bytes_used187, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add186, i64 %49)
  %cmp188 = icmp ugt i64 %add186, %49
  br i1 %cmp188, label %lor.lhs.false184.do.end215_crit_edge, label %if.end191

lor.lhs.false184.do.end215_crit_edge:             ; preds = %lor.lhs.false184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215

if.end191:                                        ; preds = %lor.lhs.false184
  %tobool192.not = icmp eq ptr %next_index, null
  br i1 %tobool192.not, label %if.end191.if.end196_crit_edge, label %if.then193

if.end191.if.end196_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end196

if.then193:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %next_index to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add186, ptr %next_index, align 8
  br label %if.end196

if.end196:                                        ; preds = %if.then193, %if.end191.if.end196_crit_edge
  %call197 = call fastcc i32 @squashfs_bio_read(ptr noundef %sb, i64 noundef %index.addr.1305, i32 noundef %length.addr.2304, ptr noundef nonnull %bio, ptr noundef nonnull %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %if.end200, label %if.end196.out_crit_edge

if.end196.out_crit_edge:                          ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end200:                                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %compressed.1303.in)
  %tobool201.not = icmp eq i32 %compressed.1303.in, 1
  br i1 %tobool201.not, label %if.else207, label %if.then202

if.then202:                                       ; preds = %if.end200
  %stream = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %stream, align 8
  %tobool203.not = icmp eq ptr %52, null
  br i1 %tobool203.not, label %if.then202.out_free_bio_crit_edge, label %if.end205

if.then202.out_free_bio_crit_edge:                ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bio

if.end205:                                        ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bio, align 4
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset, align 4
  %call206 = tail call i32 @squashfs_decompress(ptr noundef %1, ptr noundef %54, i32 noundef %56, i32 noundef %length.addr.2304, ptr noundef %output) #8
  br label %out_free_bio

if.else207:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bio, align 4
  %59 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset, align 4
  %call208 = tail call fastcc i32 @copy_bio_to_actor(ptr noundef %58, ptr noundef %output, i32 noundef %60, i32 noundef %length.addr.2304)
  br label %out_free_bio

out_free_bio:                                     ; preds = %if.else207, %if.end205, %if.then202.out_free_bio_crit_edge, %cleanup.thread
  %res.1 = phi i32 [ %call206, %if.end205 ], [ %call208, %if.else207 ], [ -5, %if.then202.out_free_bio_crit_edge ], [ -5, %cleanup.thread ]
  %index.addr.2 = phi i64 [ %index.addr.1305, %if.end205 ], [ %index.addr.1305, %if.else207 ], [ %index.addr.1305, %if.then202.out_free_bio_crit_edge ], [ %index, %cleanup.thread ]
  %61 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bio, align 4
  tail call void @bio_free_pages(ptr noundef %62) #8
  tail call void @bio_put(ptr noundef %62) #8
  br label %out

out:                                              ; preds = %out_free_bio, %if.end196.out_crit_edge, %cleanup.thread293
  %res.2 = phi i32 [ %call197, %if.end196.out_crit_edge ], [ %res.1, %out_free_bio ], [ %res.0.ph, %cleanup.thread293 ]
  %index.addr.3 = phi i64 [ %index.addr.1305, %if.end196.out_crit_edge ], [ %index.addr.2, %out_free_bio ], [ %index, %cleanup.thread293 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2)
  %cmp210 = icmp slt i32 %res.2, 0
  br i1 %cmp210, label %out.do.end215_crit_edge, label %out.cleanup222_crit_edge

out.cleanup222_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup222

out.do.end215_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215

do.end215:                                        ; preds = %out.do.end215_crit_edge, %lor.lhs.false184.do.end215_crit_edge, %lor.lhs.false.do.end215_crit_edge, %if.end178.do.end215_crit_edge
  %index.addr.3311 = phi i64 [ %index.addr.3, %out.do.end215_crit_edge ], [ %index, %if.end178.do.end215_crit_edge ], [ %index.addr.1305, %lor.lhs.false.do.end215_crit_edge ], [ %index.addr.1305, %lor.lhs.false184.do.end215_crit_edge ]
  %res.2309 = phi i32 [ %res.2, %out.do.end215_crit_edge ], [ -5, %if.end178.do.end215_crit_edge ], [ -5, %lor.lhs.false.do.end215_crit_edge ], [ -5, %lor.lhs.false184.do.end215_crit_edge ]
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %index.addr.3311, i32 noundef %res.2309) #11
  %panic_on_errors = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 24
  %63 = ptrtoint ptr %panic_on_errors to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %panic_on_errors, align 8, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool218.not = icmp eq i8 %64, 0
  br i1 %tobool218.not, label %do.end215.cleanup222_crit_edge, label %if.then219

do.end215.cleanup222_crit_edge:                   ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup222

if.then219:                                       ; preds = %do.end215
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.9) #12
  unreachable

cleanup222:                                       ; preds = %do.end215.cleanup222_crit_edge, %out.cleanup222_crit_edge
  %res.2310 = phi i32 [ %res.2, %out.cleanup222_crit_edge ], [ %res.2309, %do.end215.cleanup222_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bio) #8
  ret i32 %res.2310
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @squashfs_bio_read(ptr nocapture noundef readonly %sb, i64 noundef %index, i32 noundef %length, ptr nocapture noundef writeonly %biop, ptr nocapture noundef writeonly %block_offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %devblksize = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devblksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devblksize, align 4
  %sub = add i32 %3, -1
  %conv = sext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %index
  %devblksize_log2 = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %devblksize_log2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devblksize_log2, align 8
  %sh_prom = zext i32 %5 to i64
  %shr = lshr i64 %and, %sh_prom
  %conv1 = sext i32 %length to i64
  %add = add i64 %index, -1
  %sub2 = add i64 %add, %conv1
  %or = or i64 %sub2, %conv
  %add6 = add i64 %or, 1
  %shr9 = lshr i64 %add6, %sh_prom
  %and10 = and i64 %index, 4294963200
  %sub11 = sub i64 %and, %and10
  %conv12 = trunc i64 %sub11 to i32
  %sub13 = sub i64 %shr9, %shr
  %shl = shl i64 %sub13, %sh_prom
  %conv16 = trunc i64 %shl to i32
  %add17 = add i32 %conv12, 4095
  %sub19 = add i32 %add17, %conv16
  %div98 = lshr i32 %sub19, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052672, i32 %sub19)
  %cmp = icmp ult i32 %sub19, 1052672
  %conv21 = trunc i32 %div98 to i16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv21, ptr noundef nonnull @fs_bio_set) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call ptr @bio_kmalloc(i32 noundef 3072, i16 noundef zeroext %conv21) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bio.0 = phi ptr [ %call.i, %if.then ], [ %call23, %if.else ]
  %tobool.not = icmp eq ptr %bio.0, null
  br i1 %tobool.not, label %if.end.cleanup54_crit_edge, label %if.end25

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end25:                                         ; preds = %if.end
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %6 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_bdev, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 3
  %8 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %9, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 1
  %10 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %11, %7
  br i1 %cmp.not.i, label %if.end25.bio_set_dev.exit_crit_edge, label %if.then.i

if.end25.bio_set_dev.exit_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i = and i16 %9, -2177
  %12 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end25.bio_set_dev.exit_crit_edge
  %13 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %bio.0) #8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 2
  %14 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %bi_opf, align 8
  %15 = ptrtoint ptr %devblksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devblksize, align 4
  %shr27 = ashr i32 %16, 9
  %conv28 = sext i32 %shr27 to i64
  %mul = mul i64 %shr, %conv28
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.0, i32 0, i32 8
  %17 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul, ptr %bi_iter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub19)
  %cmp29104.not = icmp ult i32 %sub19, 4096
  br i1 %cmp29104.not, label %bio_set_dev.exit.for.end_crit_edge, label %for.body.preheader

bio_set_dev.exit.for.end_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %bio_set_dev.exit
  %umax = call i32 @llvm.umax.i32(i32 %div98, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0107 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %total_len.0106 = phi i32 [ %sub42, %for.inc.for.body_crit_edge ], [ %conv16, %for.body.preheader ]
  %offset.0105 = phi i32 [ 0, %for.inc.for.body_crit_edge ], [ %conv12, %for.body.preheader ]
  %sub31 = sub i32 4096, %offset.0105
  %18 = tail call i32 @llvm.umin.i32(i32 %sub31, i32 %total_len.0106)
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3072, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %tobool35.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool35.not, label %for.body.out_free_bio_crit_edge, label %if.end37

for.body.out_free_bio_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bio

if.end37:                                         ; preds = %for.body
  %call38 = tail call i32 @bio_add_page(ptr noundef nonnull %bio.0, ptr noundef nonnull %call38.i.i.i, i32 noundef %18, i32 noundef %offset.0105) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.out_free_bio_crit_edge, label %for.inc

if.end37.out_free_bio_crit_edge:                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bio

for.inc:                                          ; preds = %if.end37
  %sub42 = sub i32 %total_len.0106, %18
  %inc = add nuw nsw i32 %i.0107, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %bio_set_dev.exit.for.end_crit_edge
  %call44 = tail call i32 @submit_bio_wait(ptr noundef nonnull %bio.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %for.end.out_free_bio_crit_edge

for.end.out_free_bio_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_bio

if.end47:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bio.0, ptr %biop, align 4
  %20 = ptrtoint ptr %devblksize_log2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devblksize_log2, align 8
  %notmask = shl nsw i32 -1, %21
  %sub50 = xor i32 %notmask, -1
  %22 = trunc i64 %index to i32
  %conv53 = and i32 %sub50, %22
  %23 = ptrtoint ptr %block_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv53, ptr %block_offset, align 4
  br label %cleanup54

out_free_bio:                                     ; preds = %for.end.out_free_bio_crit_edge, %if.end37.out_free_bio_crit_edge, %for.body.out_free_bio_crit_edge
  %error.2 = phi i32 [ %call44, %for.end.out_free_bio_crit_edge ], [ -12, %for.body.out_free_bio_crit_edge ], [ -5, %if.end37.out_free_bio_crit_edge ]
  tail call void @bio_free_pages(ptr noundef nonnull %bio.0) #8
  tail call void @bio_put(ptr noundef nonnull %bio.0) #8
  br label %cleanup54

cleanup54:                                        ; preds = %out_free_bio, %if.end47, %if.end.cleanup54_crit_edge
  %retval.0 = phi i32 [ %error.2, %out_free_bio ], [ 0, %if.end47 ], [ -12, %if.end.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @bio_next_segment(ptr nocapture noundef readonly %bio, ptr nocapture noundef %iter) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %idx = getelementptr inbounds %struct.bvec_iter_all, ptr %iter, i32 0, i32 1
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %2 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_vcnt, align 8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp slt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %4 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_io_vec, align 8
  %done.i = getelementptr inbounds %struct.bvec_iter_all, ptr %iter, i32 0, i32 2
  %6 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iter, align 4
  %incdec.ptr.i = getelementptr %struct.page, ptr %9, i32 1
  store ptr %incdec.ptr.i, ptr %iter, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.bio_vec, ptr %5, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %bv_offset3.i = getelementptr %struct.bio_vec, ptr %5, i32 %1, i32 2
  %12 = ptrtoint ptr %bv_offset3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bv_offset3.i, align 4
  %shr.i = lshr i32 %13, 12
  %add.ptr.i = getelementptr %struct.page, ptr %11, i32 %shr.i
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %iter, align 4
  %15 = load i32, ptr %bv_offset3.i, align 4
  %and.i = and i32 %15, 4095
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ %and.i, %if.else.i ], [ 0, %if.then.i ]
  %16 = getelementptr inbounds %struct.bio_vec, ptr %iter, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink.i, ptr %16, align 4
  %sub.i = sub nuw nsw i32 4096, %.sink.i
  %bv_len.i = getelementptr %struct.bio_vec, ptr %5, i32 %1, i32 1
  %18 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len.i, align 4
  %sub9.i = sub i32 %19, %7
  %20 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %sub9.i) #8
  %bv_len10.i = getelementptr inbounds %struct.bio_vec, ptr %iter, i32 0, i32 1
  %21 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bv_len10.i, align 4
  %add.i = add i32 %20, %7
  %22 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %done.i, align 4
  %23 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp15.i = icmp eq i32 %add.i, %24
  br i1 %cmp15.i, label %if.then16.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nsw i32 %1, 1
  %25 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %inc.i, ptr %idx, align 4
  %26 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %done.i, align 4
  br label %return

return:                                           ; preds = %if.then16.i, %if.end.i.return_crit_edge, %entry.return_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bvec_virt(ptr nocapture noundef readonly %bvec) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bvec, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i, label %entry.if.end29_crit_edge [
    i32 2, label %entry.land.rhs_crit_edge
    i32 3, label %is_highmem_idx.exit
  ]

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

is_highmem_idx.exit:                              ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not = icmp eq i32 %5, 2
  br i1 %cmp2.i.not, label %is_highmem_idx.exit.land.rhs_crit_edge, label %is_highmem_idx.exit.if.end29_crit_edge

is_highmem_idx.exit.if.end29_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

is_highmem_idx.exit.land.rhs_crit_edge:           ; preds = %is_highmem_idx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %is_highmem_idx.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b43 = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !40

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 240, i32 noundef 9, ptr noundef null) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %is_highmem_idx.exit.if.end29_crit_edge, %entry.if.end29_crit_edge
  %6 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bvec, align 4
  %call38 = tail call ptr @page_address(ptr noundef %7) #8
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %bvec, i32 0, i32 2
  %8 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_offset, align 4
  %add.ptr = getelementptr i8, ptr %call38, i32 %9
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_decompress(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_bio_to_actor(ptr nocapture noundef readonly %bio, ptr nocapture noundef %actor, i32 noundef %offset, i32 noundef %req_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_page.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %actor, i32 0, i32 3
  %0 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %next_page.i, align 4
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %1 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.not.i.not = icmp eq i16 %2, 0
  br i1 %cmp.not.i.not, label %land.rhs, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_length)
  %cmp166 = icmp sgt i32 %req_length, 0
  br i1 %cmp166, label %while.body.lr.ph, label %if.end.i.i.cleanup69_crit_edge

if.end.i.i.cleanup69_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

while.body.lr.ph:                                 ; preds = %if.end.i.i
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %3 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bi_io_vec.i, align 8
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bv_len.i.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bv_offset3.i.i, align 4
  %and.i.i = and i32 %8, 4095
  %sub.i.i = sub nuw nsw i32 4096, %and.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.i.i)
  %cmp15.i.i.not = icmp ugt i32 %6, %sub.i.i
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %6) #8
  %spec.select163 = select i1 %cmp15.i.i.not, i32 %9, i32 0
  %not.cmp15.i.i.not = xor i1 %cmp15.i.i.not, true
  %spec.select = zext i1 %not.cmp15.i.i.not to i32
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %shr.i.i = lshr i32 %8, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %11, i32 %shr.i.i
  %12 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %actor, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %pages.i = getelementptr inbounds %struct.squashfs_page_actor, ptr %actor, i32 0, i32 1
  br label %while.body

land.rhs:                                         ; preds = %entry
  %.b100 = load i1, ptr @copy_bio_to_actor.__already_done, align 1
  br i1 %.b100, label %land.rhs.cleanup69_crit_edge, label %if.then, !prof !40

land.rhs.cleanup69_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @copy_bio_to_actor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef null) #8
  br label %cleanup69

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0175 = phi i32 [ %offset, %while.body.lr.ph ], [ %offset.addr.2, %cleanup.while.body_crit_edge ]
  %actor_addr.0174 = phi ptr [ %15, %while.body.lr.ph ], [ %actor_addr.1, %cleanup.while.body_crit_edge ]
  %actor_offset.0173 = phi i32 [ 0, %while.body.lr.ph ], [ %actor_offset.1, %cleanup.while.body_crit_edge ]
  %copied_bytes.0172 = phi i32 [ 0, %while.body.lr.ph ], [ %add53, %cleanup.while.body_crit_edge ]
  %iter_all.sroa.23.1171 = phi i32 [ %spec.select163, %while.body.lr.ph ], [ %iter_all.sroa.23.4, %cleanup.while.body_crit_edge ]
  %iter_all.sroa.18.1170 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %iter_all.sroa.18.4, %cleanup.while.body_crit_edge ]
  %iter_all.sroa.15.1169 = phi i32 [ %and.i.i, %while.body.lr.ph ], [ %iter_all.sroa.15.4, %cleanup.while.body_crit_edge ]
  %iter_all.sroa.11.1168 = phi i32 [ %9, %while.body.lr.ph ], [ %iter_all.sroa.11.4, %cleanup.while.body_crit_edge ]
  %iter_all.sroa.0.2167 = phi ptr [ %add.ptr.i.i, %while.body.lr.ph ], [ %iter_all.sroa.0.6, %cleanup.while.body_crit_edge ]
  %sub = sub i32 %iter_all.sroa.11.1168, %offset.addr.0175
  %sub41 = sub nuw nsw i32 4096, %actor_offset.0173
  %16 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %sub41)
  %sub44 = sub i32 %req_length, %copied_bytes.0172
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %sub44)
  %add.ptr = getelementptr i8, ptr %actor_addr.0174, i32 %actor_offset.0173
  %18 = ptrtoint ptr %iter_all.sroa.0.2167 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iter_all.sroa.0.2167, align 4
  %shr.i.i103 = lshr i32 %19, 30
  %20 = zext i32 %shr.i.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i103, label %while.body.bvec_virt.exit_crit_edge [
    i32 2, label %while.body.land.rhs.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.bvec_virt.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

is_highmem_idx.exit.i:                            ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not.i = icmp eq i32 %21, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.land.rhs.i_crit_edge, label %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge

is_highmem_idx.exit.i.bvec_virt.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

is_highmem_idx.exit.i.land.rhs.i_crit_edge:       ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %is_highmem_idx.exit.i.land.rhs.i_crit_edge, %while.body.land.rhs.i_crit_edge
  %.b43.i = load i1, ptr @bvec_virt.__already_done, align 1
  br i1 %.b43.i, label %land.rhs.i.bvec_virt.exit_crit_edge, label %if.then.i, !prof !40

land.rhs.i.bvec_virt.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bvec_virt.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bvec_virt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 240, i32 noundef 9, ptr noundef null) #8
  br label %bvec_virt.exit

bvec_virt.exit:                                   ; preds = %if.then.i, %land.rhs.i.bvec_virt.exit_crit_edge, %is_highmem_idx.exit.i.bvec_virt.exit_crit_edge, %while.body.bvec_virt.exit_crit_edge
  %call38.i = tail call ptr @page_address(ptr noundef %iter_all.sroa.0.2167) #8
  %add.ptr.i = getelementptr i8, ptr %call38.i, i32 %iter_all.sroa.15.1169
  %add.ptr52 = getelementptr i8, ptr %add.ptr.i, i32 %offset.addr.0175
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr52, i32 %17)
  %add = add i32 %17, %actor_offset.0173
  %add53 = add i32 %17, %copied_bytes.0172
  %add54 = add i32 %17, %offset.addr.0175
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp55 = icmp ugt i32 %add, 4095
  br i1 %cmp55, label %if.then56, label %bvec_virt.exit.if.end61_crit_edge

bvec_virt.exit.if.end61_crit_edge:                ; preds = %bvec_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then56:                                        ; preds = %bvec_virt.exit
  %23 = ptrtoint ptr %next_page.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_page.i, align 4
  %25 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i = icmp eq i32 %24, %26
  br i1 %cmp.i, label %if.then56.cleanup69_crit_edge, label %squashfs_next_page.exit

if.then56.cleanup69_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

squashfs_next_page.exit:                          ; preds = %if.then56
  %27 = ptrtoint ptr %actor to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %actor, align 4
  %inc.i = add i32 %24, 1
  %29 = ptrtoint ptr %next_page.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %next_page.i, align 4
  %arrayidx.i105 = getelementptr ptr, ptr %28, i32 %24
  %30 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i105, align 4
  %tobool58.not = icmp eq ptr %31, null
  br i1 %tobool58.not, label %squashfs_next_page.exit.cleanup69_crit_edge, label %squashfs_next_page.exit.if.end61_crit_edge

squashfs_next_page.exit.if.end61_crit_edge:       ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

squashfs_next_page.exit.cleanup69_crit_edge:      ; preds = %squashfs_next_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end61:                                         ; preds = %squashfs_next_page.exit.if.end61_crit_edge, %bvec_virt.exit.if.end61_crit_edge
  %actor_offset.1 = phi i32 [ %add, %bvec_virt.exit.if.end61_crit_edge ], [ 0, %squashfs_next_page.exit.if.end61_crit_edge ]
  %actor_addr.1 = phi ptr [ %actor_addr.0174, %bvec_virt.exit.if.end61_crit_edge ], [ %31, %squashfs_next_page.exit.if.end61_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %iter_all.sroa.11.1168)
  %cmp63.not = icmp ult i32 %add54, %iter_all.sroa.11.1168
  br i1 %cmp63.not, label %if.end61.cleanup_crit_edge, label %if.then64

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %if.end61
  %32 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i108 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %iter_all.sroa.18.1170, i32 %conv.i108)
  %cmp.not.i109 = icmp slt i32 %iter_all.sroa.18.1170, %conv.i108
  br i1 %cmp.not.i109, label %if.end.i113, label %if.then64.cleanup69_crit_edge

if.then64.cleanup69_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end.i113:                                      ; preds = %if.then64
  %34 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.23.1171)
  %tobool.not.i.i112 = icmp eq i32 %iter_all.sroa.23.1171, 0
  br i1 %tobool.not.i.i112, label %if.else.i.i121, label %if.then.i.i115

if.then.i.i115:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr.i.i114 = getelementptr %struct.page, ptr %iter_all.sroa.0.2167, i32 1
  br label %if.end.i.i129

if.else.i.i121:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i116 = getelementptr %struct.bio_vec, ptr %35, i32 %iter_all.sroa.18.1170
  %36 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i116, align 4
  %bv_offset3.i.i117 = getelementptr %struct.bio_vec, ptr %35, i32 %iter_all.sroa.18.1170, i32 2
  %38 = ptrtoint ptr %bv_offset3.i.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_offset3.i.i117, align 4
  %shr.i.i118 = lshr i32 %39, 12
  %add.ptr.i.i119 = getelementptr %struct.page, ptr %37, i32 %shr.i.i118
  %and.i.i120 = and i32 %39, 4095
  br label %if.end.i.i129

if.end.i.i129:                                    ; preds = %if.else.i.i121, %if.then.i.i115
  %iter_all.sroa.0.3 = phi ptr [ %add.ptr.i.i119, %if.else.i.i121 ], [ %incdec.ptr.i.i114, %if.then.i.i115 ]
  %.sink.i.i122 = phi i32 [ %and.i.i120, %if.else.i.i121 ], [ 0, %if.then.i.i115 ]
  %sub.i.i123 = sub nuw nsw i32 4096, %.sink.i.i122
  %bv_len.i.i124 = getelementptr %struct.bio_vec, ptr %35, i32 %iter_all.sroa.18.1170, i32 1
  %40 = ptrtoint ptr %bv_len.i.i124 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len.i.i124, align 4
  %sub9.i.i125 = sub i32 %41, %iter_all.sroa.23.1171
  %42 = tail call i32 @llvm.umin.i32(i32 %sub.i.i123, i32 %sub9.i.i125) #8
  %add.i.i127 = add i32 %42, %iter_all.sroa.23.1171
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i127, i32 %41)
  %cmp15.i.i128 = icmp eq i32 %add.i.i127, %41
  %inc.i.i130 = zext i1 %cmp15.i.i128 to i32
  %spec.select164 = add nsw i32 %iter_all.sroa.18.1170, %inc.i.i130
  %spec.select165 = select i1 %cmp15.i.i128, i32 0, i32 %add.i.i127
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i129, %if.end61.cleanup_crit_edge
  %iter_all.sroa.0.6 = phi ptr [ %iter_all.sroa.0.2167, %if.end61.cleanup_crit_edge ], [ %iter_all.sroa.0.3, %if.end.i.i129 ]
  %iter_all.sroa.11.4 = phi i32 [ %iter_all.sroa.11.1168, %if.end61.cleanup_crit_edge ], [ %42, %if.end.i.i129 ]
  %iter_all.sroa.15.4 = phi i32 [ %iter_all.sroa.15.1169, %if.end61.cleanup_crit_edge ], [ %.sink.i.i122, %if.end.i.i129 ]
  %iter_all.sroa.18.4 = phi i32 [ %iter_all.sroa.18.1170, %if.end61.cleanup_crit_edge ], [ %spec.select164, %if.end.i.i129 ]
  %iter_all.sroa.23.4 = phi i32 [ %iter_all.sroa.23.1171, %if.end61.cleanup_crit_edge ], [ %spec.select165, %if.end.i.i129 ]
  %offset.addr.2 = phi i32 [ %add54, %if.end61.cleanup_crit_edge ], [ 0, %if.end.i.i129 ]
  %cmp = icmp slt i32 %add53, %req_length
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.cleanup69_crit_edge

cleanup.cleanup69_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup69:                                        ; preds = %cleanup.cleanup69_crit_edge, %if.then64.cleanup69_crit_edge, %squashfs_next_page.exit.cleanup69_crit_edge, %if.then56.cleanup69_crit_edge, %if.then, %land.rhs.cleanup69_crit_edge, %if.end.i.i.cleanup69_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %land.rhs.cleanup69_crit_edge ], [ 0, %if.end.i.i.cleanup69_crit_edge ], [ %add53, %if.then56.cleanup69_crit_edge ], [ %add53, %if.then64.cleanup69_crit_edge ], [ %add53, %squashfs_next_page.exit.cleanup69_crit_edge ], [ %add53, %cleanup.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !26}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/block.c", i32 156, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @squashfs_read_data.__UNIQUE_ID_ddebug275, !1, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../fs/squashfs/block.c", i32 174, i32 7}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../fs/squashfs/block.c", i32 184, i32 8}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/squashfs/block.c", i32 198, i32 3}
!14 = !{ptr @squashfs_read_data.__UNIQUE_ID_ddebug276, !13, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/squashfs/block.c", i32 229, i32 3}
!17 = !{ptr @squashfs_read_data._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @squashfs_read_data._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/squashfs/block.c", i32 231, i32 10}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/bvec.h", i32 240, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/squashfs/block.c", i32 43, i32 6}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2148276431, i64 2148276436, i64 2148276449, i64 2148276493, i64 2148276527, i64 2148276548}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i8 0, i8 2}
