; ModuleID = '/llk/IR_all_yes/fs/ext4/readpage.c_pt.bc'
source_filename = "../fs/ext4/readpage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%union.anon.72 = type { i32 }
%struct.ext4_map_blocks = type { i64, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.bio_post_read_ctx = type { ptr, %struct.work_struct, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.46, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.46 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ext4_bio_post_read_ctx\00", [41 x i8] zeroinitializer }, align 32
@bio_post_read_ctx_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@bio_post_read_ctx_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@bio_post_read_processing.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ctx->work)\00", [34 x i8] zeroinitializer }, align 32
@bio_post_read_processing.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 412, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"bio_post_read_ctx_cache\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 51, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"bio_post_read_ctx_pool\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 52, i32 19 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 1096, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 260, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 698, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 416, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 137, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private constant [22 x i8] c"../fs/ext4/readpage.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 145, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 717, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @bio_post_read_ctx_cache, ptr @bio_post_read_ctx_pool, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bio_post_read_processing.__key, ptr @.str.7, ptr @bio_post_read_processing.__key.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_post_read_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_post_read_ctx_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_post_read_processing.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_post_read_processing.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_mpage_readpages(ptr noundef %inode, ptr noundef %rac, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %blocks = alloca [8 x i64], align 8
  %map = alloca %struct.ext4_map_blocks, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shr = lshr i32 4096, %conv
  %shl = shl nuw i32 1, %conv
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %blocks) #7
  %2 = call ptr @memset(ptr %blocks, i32 255, i32 64)
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 26
  %5 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_bdev, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %map) #7
  %7 = call ptr @memset(ptr %map, i32 255, i32 24)
  %tobool.not = icmp eq ptr %rac, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %m_lblk511 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %m_len512 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %m_flags513 = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  %8 = call ptr @memset(ptr %map, i32 0, i32 20)
  br label %for.body.lr.ph

cond.end:                                         ; preds = %entry
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %9 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %_nr_pages.i, align 4
  %m_lblk = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 1
  %m_len = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 2
  %m_flags = getelementptr inbounds %struct.ext4_map_blocks, ptr %map, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not457 = icmp eq i32 %10, 0
  %11 = call ptr @memset(ptr %map, i32 0, i32 20)
  br i1 %tobool1.not457, label %cond.end.if.end203_crit_edge, label %cond.end.for.body.lr.ph_crit_edge

cond.end.for.body.lr.ph_crit_edge:                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

cond.end.if.end203_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

for.body.lr.ph:                                   ; preds = %cond.end.for.body.lr.ph_crit_edge, %cond.end.thread
  %conv164 = phi i32 [ 0, %cond.end.thread ], [ 524288, %cond.end.for.body.lr.ph_crit_edge ]
  %m_flags518 = phi ptr [ %m_flags513, %cond.end.thread ], [ %m_flags, %cond.end.for.body.lr.ph_crit_edge ]
  %m_len517 = phi ptr [ %m_len512, %cond.end.thread ], [ %m_len, %cond.end.for.body.lr.ph_crit_edge ]
  %m_lblk516 = phi ptr [ %m_lblk511, %cond.end.thread ], [ %m_lblk, %cond.end.for.body.lr.ph_crit_edge ]
  %cond515 = phi i32 [ 1, %cond.end.thread ], [ %10, %cond.end.for.body.lr.ph_crit_edge ]
  %_batch_count.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 5
  %_nr_pages.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %_index.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %mapping.i.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %sub = sub nsw i32 12, %conv
  %sh_prom = zext i32 %sub to i64
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %i_state_flags.i.i.i = getelementptr i8, ptr %inode, i32 -384
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %conv12 = zext i32 %shl to i64
  %add13 = add nsw i64 %conv12, -1
  %sh_prom15 = zext i8 %1 to i64
  %i_verity_info.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 53
  %sub159 = add nsw i32 %conv, -9
  %sh_prom160 = zext i32 %sub159 to i64
  %sub184 = add nsw i32 %shr, -1
  %arrayidx185 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub184
  br label %for.body

for.body:                                         ; preds = %if.end198.for.body_crit_edge, %for.body.lr.ph
  %nr_pages.0468 = phi i32 [ %cond515, %for.body.lr.ph ], [ %dec, %if.end198.for.body_crit_edge ]
  %relative_block.0467 = phi i32 [ 0, %for.body.lr.ph ], [ %relative_block.6, %if.end198.for.body_crit_edge ]
  %last_block_in_bio.0463 = phi i64 [ 0, %for.body.lr.ph ], [ %last_block_in_bio.1, %if.end198.for.body_crit_edge ]
  %bio.0459 = phi ptr [ null, %for.body.lr.ph ], [ %bio.5, %if.end198.for.body_crit_edge ]
  %page.addr.0458 = phi ptr [ %page, %for.body.lr.ph ], [ %page.addr.1, %if.end198.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  %12 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %_batch_count.i.i, align 4
  %14 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %_nr_pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp.i.i = icmp ult i32 %15, %13
  br i1 %cmp.i.i, label %do.body2.i.i, label %do.end7.i.i, !prof !33

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #7, !srcloc !34
  unreachable

do.end7.i.i:                                      ; preds = %if.then
  %sub.i.i331 = sub i32 %15, %13
  %16 = ptrtoint ptr %_nr_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i.i331, ptr %_nr_pages.i.i, align 4
  %17 = ptrtoint ptr %_index.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %_index.i.i, align 4
  %add.i.i = add i32 %18, %13
  store i32 %add.i.i, ptr %_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %tobool12.not.i.i = icmp eq i32 %15, %13
  br i1 %tobool12.not.i.i, label %do.end7.i.i.readahead_page.exit_crit_edge, label %if.end15.i.i

do.end7.i.i.readahead_page.exit_crit_edge:        ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %readahead_page.exit

if.end15.i.i:                                     ; preds = %do.end7.i.i
  %19 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping.i.i, align 4
  %i_pages.i.i = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 1
  %call.i.i = call ptr @xa_load(ptr noundef %i_pages.i.i, i32 noundef %add.i.i) #7
  %21 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !35

if.then.i.i.i.i:                                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.2) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %if.end15.i.i
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call.i.i, align 4
  %and1.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.then27.i.i, label %do.end36.i.i, !prof !33

if.then27.i.i:                                    ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.1) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #7, !srcloc !37
  unreachable

do.end36.i.i:                                     ; preds = %folio_test_locked.exit.i.i
  %26 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !33

if.then.i.i.i.i.i:                                ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !38
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end36.i.i
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call.i.i, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i53.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i53.i.i, label %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %readahead_page.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %compound_nr.i.i.i.i = getelementptr %struct.page, ptr %call.i.i, i32 1, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %compound_nr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %compound_nr.i.i.i.i, align 4
  br label %readahead_page.exit

readahead_page.exit:                              ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge, %do.end7.i.i.readahead_page.exit_crit_edge
  %storemerge.i.i = phi i32 [ 0, %do.end7.i.i.readahead_page.exit_crit_edge ], [ %32, %if.end.i.i.i.i ], [ 1, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %retval.0.i.i332 = phi ptr [ null, %do.end7.i.i.readahead_page.exit_crit_edge ], [ %call.i.i, %if.end.i.i.i.i ], [ %call.i.i, %PageHead.exit.i.i.i.i.readahead_page.exit_crit_edge ]
  %33 = ptrtoint ptr %_batch_count.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i.i, ptr %_batch_count.i.i, align 4
  call void @llvm.prefetch.p0(ptr %retval.0.i.i332, i32 1, i32 3, i32 1)
  br label %if.end

if.end:                                           ; preds = %readahead_page.exit, %for.body.if.end_crit_edge
  %page.addr.1 = phi ptr [ %retval.0.i.i332, %readahead_page.exit ], [ %page.addr.0458, %for.body.if.end_crit_edge ]
  %34 = ptrtoint ptr %page.addr.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page.addr.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !33

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %page.addr.1, ptr noundef nonnull @.str.4) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !39
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %36 = ptrtoint ptr %page.addr.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page.addr.1, align 4
  %38 = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool5.not = icmp eq i32 %38, 0
  br i1 %tobool5.not, label %if.end7, label %PagePrivate.exit.confused_crit_edge

PagePrivate.exit.confused_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %confused

if.end7:                                          ; preds = %PagePrivate.exit
  %index = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1, i32 0, i32 2
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %conv8 = zext i32 %40 to i64
  %shl9 = shl i64 %conv8, %sh_prom
  %mul = mul i32 %nr_pages.0468, %shr
  %conv10 = zext i32 %mul to i64
  %add = add i64 %shl9, %conv10
  %41 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i333 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i333, label %lor.lhs.false.i, label %if.end7.if.then.i334_crit_edge

if.end7.if.then.i334_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i334

lor.lhs.false.i:                                  ; preds = %if.end7
  %43 = ptrtoint ptr %i_state_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %i_state_flags.i.i.i, align 4
  %45 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i.do.body.i.i_crit_edge, label %lor.lhs.false.i.if.then.i334_crit_edge

lor.lhs.false.i.if.then.i334_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i334

lor.lhs.false.i.do.body.i.i_crit_edge:            ; preds = %lor.lhs.false.i
  br label %do.body.i.i

if.then.i334:                                     ; preds = %lor.lhs.false.i.if.then.i334_crit_edge, %if.end7.if.then.i334_crit_edge
  %46 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_sb, align 4
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %s_maxbytes.i, align 8
  br label %ext4_readpage_limit.exit

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %lor.lhs.false.i.do.body.i.i_crit_edge
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !40
  %and.i.i.i.i335 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i335)
  %tobool.not.i.i.i336 = icmp eq i32 %and.i.i.i.i335, 0
  br i1 %tobool.not.i.i.i336, label %if.then.i.i.i337, label %do.body24.critedge.i.i.i

if.then.i.i.i337:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  %51 = call ptr @llvm.returnaddress(i32 0) #7
  %52 = ptrtoint ptr %51 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %52) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %52) #7
  call void @trace_hardirqs_on() #7
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = call ptr @llvm.returnaddress(i32 0) #7
  %54 = ptrtoint ptr %53 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %54) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %54) #7
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i337
  %55 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !41
  %and.i.i.i.i.i338 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i338)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i338, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !33

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #7, !srcloc !42
  %56 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !43
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !44
  %58 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i339 = and i32 %59, 1
  %tobool.not.i.i340 = icmp eq i32 %and.i.i339, 0
  br i1 %tobool.not.i.i340, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %57, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %59, %do.end.i.i.while.end.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  %60 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %i_size18.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  %62 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %63, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %while.end.i.i.ext4_readpage_limit.exit_crit_edge, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

while.end.i.i.ext4_readpage_limit.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_readpage_limit.exit

ext4_readpage_limit.exit:                         ; preds = %while.end.i.i.ext4_readpage_limit.exit_crit_edge, %if.then.i334
  %retval.0.i = phi i64 [ %49, %if.then.i334 ], [ %61, %while.end.i.i.ext4_readpage_limit.exit_crit_edge ]
  %sub14 = add i64 %add13, %retval.0.i
  %shr16 = ashr i64 %sub14, %sh_prom15
  %64 = call i64 @llvm.umin.i64(i64 %add, i64 %shr16)
  %65 = ptrtoint ptr %m_flags518 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %m_flags518, align 8
  %and = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %ext4_readpage_limit.exit.if.end58_crit_edge, label %land.lhs.true

ext4_readpage_limit.exit.if.end58_crit_edge:      ; preds = %ext4_readpage_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true:                                    ; preds = %ext4_readpage_limit.exit
  %67 = ptrtoint ptr %m_lblk516 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %m_lblk516, align 8
  %conv23 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl9, i64 %conv23)
  %cmp24 = icmp ugt i64 %shl9, %conv23
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true26:                                  ; preds = %land.lhs.true
  %69 = ptrtoint ptr %m_len517 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %m_len517, align 4
  %add29 = add i32 %70, %68
  %conv30 = zext i32 %add29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl9, i64 %conv30)
  %cmp31 = icmp ult i64 %shl9, %conv30
  br i1 %cmp31, label %if.then33, label %land.lhs.true26.if.end58_crit_edge

land.lhs.true26.if.end58_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then33:                                        ; preds = %land.lhs.true26
  %71 = trunc i64 %shl9 to i32
  %conv37 = sub i32 %71, %68
  %sub39 = sub i32 %70, %conv37
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv37)
  %cmp41424 = icmp eq i32 %70, %conv37
  br i1 %cmp41424, label %if.then33.if.then43_crit_edge, label %if.end46.lr.ph

if.then33.if.then43_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end46.lr.ph:                                   ; preds = %if.then33
  %conv52 = zext i32 %conv37 to i64
  br label %if.end46

if.then43:                                        ; preds = %if.end50.if.then43_crit_edge, %if.then33.if.then43_crit_edge
  %block_in_file.0.lcssa = phi i64 [ %shl9, %if.then33.if.then43_crit_edge ], [ %inc56, %if.end50.if.then43_crit_edge ]
  %page_block.0.lcssa = phi i32 [ 0, %if.then33.if.then43_crit_edge ], [ %sub39, %if.end50.if.then43_crit_edge ]
  %and45 = and i32 %66, -17
  %72 = ptrtoint ptr %m_flags518 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and45, ptr %m_flags518, align 8
  br label %if.end58

if.end46:                                         ; preds = %if.end50.if.end46_crit_edge, %if.end46.lr.ph
  %relative_block.1427 = phi i32 [ 0, %if.end46.lr.ph ], [ %inc57, %if.end50.if.end46_crit_edge ]
  %block_in_file.0425 = phi i64 [ %shl9, %if.end46.lr.ph ], [ %inc56, %if.end50.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %relative_block.1427, i32 %shr)
  %cmp47 = icmp eq i32 %relative_block.1427, %shr
  br i1 %cmp47, label %if.end46.if.then139_crit_edge, label %if.end50

if.end46.if.then139_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139

if.end50:                                         ; preds = %if.end46
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %map, align 8
  %conv54 = zext i32 %relative_block.1427 to i64
  %add53 = add nuw nsw i64 %conv54, %conv52
  %add55 = add i64 %add53, %74
  %arrayidx = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %relative_block.1427
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add55, ptr %arrayidx, align 8
  %inc57 = add nuw nsw i32 %relative_block.1427, 1
  %inc56 = add i64 %block_in_file.0425, 1
  %cmp41 = icmp eq i32 %inc57, %sub39
  br i1 %cmp41, label %if.end50.if.then43_crit_edge, label %if.end50.if.end46_crit_edge

if.end50.if.end46_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end50.if.then43_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.end58:                                         ; preds = %if.then43, %land.lhs.true26.if.end58_crit_edge, %land.lhs.true.if.end58_crit_edge, %ext4_readpage_limit.exit.if.end58_crit_edge
  %block_in_file.1 = phi i64 [ %shl9, %land.lhs.true26.if.end58_crit_edge ], [ %shl9, %land.lhs.true.if.end58_crit_edge ], [ %shl9, %ext4_readpage_limit.exit.if.end58_crit_edge ], [ %block_in_file.0.lcssa, %if.then43 ]
  %page_block.1 = phi i32 [ 0, %land.lhs.true26.if.end58_crit_edge ], [ 0, %land.lhs.true.if.end58_crit_edge ], [ 0, %ext4_readpage_limit.exit.if.end58_crit_edge ], [ %page_block.0.lcssa, %if.then43 ]
  %relative_block.2 = phi i32 [ %relative_block.0467, %land.lhs.true26.if.end58_crit_edge ], [ %relative_block.0467, %land.lhs.true.if.end58_crit_edge ], [ %relative_block.0467, %ext4_readpage_limit.exit.if.end58_crit_edge ], [ %page_block.0.lcssa, %if.then43 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %page_block.1, i32 %shr)
  %cmp59430448 = icmp ult i32 %page_block.1, %shr
  br i1 %cmp59430448, label %if.end58.while.body.lr.ph_crit_edge, label %if.end58.if.then139_crit_edge

if.end58.if.then139_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139

if.end58.while.body.lr.ph_crit_edge:              ; preds = %if.end58
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %for.end121.while.body.lr.ph_crit_edge, %if.end58.while.body.lr.ph_crit_edge
  %fully_mapped.0.ph452 = phi i32 [ %fully_mapped.0433, %for.end121.while.body.lr.ph_crit_edge ], [ 1, %if.end58.while.body.lr.ph_crit_edge ]
  %relative_block.3.ph451 = phi i32 [ %100, %for.end121.while.body.lr.ph_crit_edge ], [ %relative_block.2, %if.end58.while.body.lr.ph_crit_edge ]
  %page_block.2.ph450 = phi i32 [ %page_block.3.lcssa, %for.end121.while.body.lr.ph_crit_edge ], [ %page_block.1, %if.end58.while.body.lr.ph_crit_edge ]
  %block_in_file.2.ph449 = phi i64 [ %block_in_file.3.lcssa, %for.end121.while.body.lr.ph_crit_edge ], [ %block_in_file.1, %if.end58.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then79.while.body_crit_edge, %while.body.lr.ph
  %first_hole.0434 = phi i32 [ %shr, %while.body.lr.ph ], [ %spec.select303, %if.then79.while.body_crit_edge ]
  %fully_mapped.0433 = phi i32 [ %fully_mapped.0.ph452, %while.body.lr.ph ], [ 0, %if.then79.while.body_crit_edge ]
  %page_block.2432 = phi i32 [ %page_block.2.ph450, %while.body.lr.ph ], [ %inc84, %if.then79.while.body_crit_edge ]
  %block_in_file.2431 = phi i64 [ %block_in_file.2.ph449, %while.body.lr.ph ], [ %inc85, %if.then79.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %block_in_file.2431)
  %cmp61 = icmp ugt i64 %64, %block_in_file.2431
  br i1 %cmp61, label %if.then63, label %while.body.if.end74_crit_edge

while.body.if.end74_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then63:                                        ; preds = %while.body
  %conv64 = trunc i64 %block_in_file.2431 to i32
  %76 = ptrtoint ptr %m_lblk516 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv64, ptr %m_lblk516, align 8
  %sub66 = sub i64 %64, %block_in_file.2431
  %conv67 = trunc i64 %sub66 to i32
  %77 = ptrtoint ptr %m_len517 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv67, ptr %m_len517, align 4
  %call69 = call i32 @ext4_map_blocks(ptr noundef null, ptr noundef %inode, ptr noundef nonnull %map, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then63.set_error_page_crit_edge, label %if.then63.if.end74_crit_edge

if.then63.if.end74_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then63.set_error_page_crit_edge:               ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_error_page

set_error_page:                                   ; preds = %land.lhs.true132.set_error_page_crit_edge, %if.then63.set_error_page_crit_edge
  %78 = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i304, !prof !35

if.then.i304:                                     ; preds = %set_error_page
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %page.addr.1, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !47
  unreachable

do.body7.i:                                       ; preds = %set_error_page
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %78, align 4
  %and.i31.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !35

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %82, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %83, %if.end.i.i ]
  %84 = inttoptr i32 %retval.0.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp.i.not.i305 = icmp eq i32 %86, -1
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %78, align 4
  %and.i32.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i305, label %if.then17.i, label %do.end24.i, !prof !33

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !35

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i34.i = add i32 %88, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %89, %if.end.i36.i ]
  %90 = inttoptr i32 %retval.0.i37.i to ptr
  call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.6) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !35

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i41.i = add i32 %88, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %page.addr.1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %91, %if.end.i43.i ]
  %92 = inttoptr i32 %retval.0.i44.i to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %92) #7
  call void @zero_user_segments(ptr noundef %page.addr.1, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  call void @unlock_page(ptr noundef %page.addr.1) #7
  br label %next_page

if.end74:                                         ; preds = %if.then63.if.end74_crit_edge, %while.body.if.end74_crit_edge
  %93 = ptrtoint ptr %m_flags518 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %m_flags518, align 8
  %and76 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %cmp77 = icmp eq i32 %and76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %first_hole.0434, i32 %shr)
  %cmp80 = icmp eq i32 %first_hole.0434, %shr
  br i1 %cmp77, label %if.then79, label %if.end86

if.then79:                                        ; preds = %if.end74
  %spec.select303 = select i1 %cmp80, i32 %page_block.2432, i32 %first_hole.0434
  %inc84 = add nuw i32 %page_block.2432, 1
  %inc85 = add i64 %block_in_file.2431, 1
  %cmp59 = icmp ult i32 %inc84, %shr
  br i1 %cmp59, label %if.then79.while.body_crit_edge, label %while.end

if.then79.while.body_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end86:                                         ; preds = %if.end74
  br i1 %cmp80, label %if.end90, label %if.end86.confused_crit_edge

if.end86.confused_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %confused

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %page_block.2432)
  %tobool91.not = icmp eq i32 %page_block.2432, 0
  br i1 %tobool91.not, label %if.end90.if.end100_crit_edge, label %land.lhs.true92

if.end90.if.end100_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true92:                                  ; preds = %if.end90
  %sub93 = add i32 %page_block.2432, -1
  %arrayidx94 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %sub93
  %95 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx94, align 8
  %97 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %map, align 8
  %sub96 = add i64 %98, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %96, i64 %sub96)
  %cmp97.not = icmp eq i64 %96, %sub96
  br i1 %cmp97.not, label %land.lhs.true92.if.end100_crit_edge, label %land.lhs.true92.confused_crit_edge

land.lhs.true92.confused_crit_edge:               ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %confused

land.lhs.true92.if.end100_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true92.if.end100_crit_edge, %if.end90.if.end100_crit_edge
  %99 = ptrtoint ptr %m_len517 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %m_len517, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp103441 = icmp eq i32 %100, 0
  br i1 %cmp103441, label %if.end100.for.end121_crit_edge, label %if.end100.if.else_crit_edge

if.end100.if.else_crit_edge:                      ; preds = %if.end100
  br label %if.else

if.end100.for.end121_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121

if.else:                                          ; preds = %if.end112.if.else_crit_edge, %if.end100.if.else_crit_edge
  %relative_block.4444 = phi i32 [ %inc120, %if.end112.if.else_crit_edge ], [ 0, %if.end100.if.else_crit_edge ]
  %page_block.3443 = phi i32 [ %inc117, %if.end112.if.else_crit_edge ], [ %page_block.2432, %if.end100.if.else_crit_edge ]
  %block_in_file.3442 = phi i64 [ %inc118, %if.end112.if.else_crit_edge ], [ %block_in_file.2431, %if.end100.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %page_block.3443, i32 %shr)
  %cmp108 = icmp eq i32 %page_block.3443, %shr
  br i1 %cmp108, label %if.else.if.else137_crit_edge, label %if.end112

if.else.if.else137_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else137

if.end112:                                        ; preds = %if.else
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %map, align 8
  %conv114 = zext i32 %relative_block.4444 to i64
  %add115 = add i64 %102, %conv114
  %arrayidx116 = getelementptr [8 x i64], ptr %blocks, i32 0, i32 %page_block.3443
  %103 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add115, ptr %arrayidx116, align 8
  %inc117 = add i32 %page_block.3443, 1
  %inc118 = add i64 %block_in_file.3442, 1
  %inc120 = add nuw i32 %relative_block.4444, 1
  %cmp103 = icmp eq i32 %inc120, %100
  br i1 %cmp103, label %if.end112.for.end121_crit_edge, label %if.end112.if.else_crit_edge

if.end112.if.else_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end112.for.end121_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end121

for.end121:                                       ; preds = %if.end112.for.end121_crit_edge, %if.end100.for.end121_crit_edge
  %block_in_file.3.lcssa = phi i64 [ %block_in_file.2431, %if.end100.for.end121_crit_edge ], [ %inc118, %if.end112.for.end121_crit_edge ]
  %page_block.3.lcssa = phi i32 [ %page_block.2432, %if.end100.for.end121_crit_edge ], [ %inc117, %if.end112.for.end121_crit_edge ]
  %and107 = and i32 %94, -17
  %104 = ptrtoint ptr %m_flags518 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and107, ptr %m_flags518, align 8
  %cmp59430 = icmp ult i32 %page_block.3.lcssa, %shr
  br i1 %cmp59430, label %for.end121.while.body.lr.ph_crit_edge, label %for.end121.if.else137_crit_edge

for.end121.if.else137_crit_edge:                  ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else137

for.end121.while.body.lr.ph_crit_edge:            ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select303, i32 %shr)
  %cmp122.not = icmp eq i32 %spec.select303, %shr
  br i1 %cmp122.not, label %while.end.if.end141_crit_edge, label %if.then124

while.end.if.end141_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then124:                                       ; preds = %while.end
  %shl125 = shl i32 %spec.select303, %conv
  call void @zero_user_segments(ptr noundef %page.addr.1, i32 noundef %shl125, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select303)
  %cmp126 = icmp eq i32 %spec.select303, 0
  br i1 %cmp126, label %if.then128, label %if.then124.if.end141_crit_edge

if.then124.if.end141_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then128:                                       ; preds = %if.then124
  %105 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %index, align 4
  %107 = ptrtoint ptr %i_verity_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile ptr, ptr %i_verity_info.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %cmp.i.not.i341 = icmp eq ptr %108, null
  br i1 %cmp.i.not.i341, label %if.then128.if.end135_crit_edge, label %ext4_need_verity.exit

if.then128.if.end135_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

ext4_need_verity.exit:                            ; preds = %if.then128
  %conv.i = zext i32 %106 to i64
  %109 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %i_size18.i.i, align 8
  %sub.i = add i64 %110, 4095
  %div.i = sdiv i64 %sub.i, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %div.i, i64 %conv.i)
  %cmp.i = icmp sgt i64 %div.i, %conv.i
  br i1 %cmp.i, label %land.lhs.true132, label %ext4_need_verity.exit.if.end135_crit_edge

ext4_need_verity.exit.if.end135_crit_edge:        ; preds = %ext4_need_verity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

land.lhs.true132:                                 ; preds = %ext4_need_verity.exit
  %call133 = call zeroext i1 @fsverity_verify_page(ptr noundef %page.addr.1) #7
  br i1 %call133, label %land.lhs.true132.if.end135_crit_edge, label %land.lhs.true132.set_error_page_crit_edge

land.lhs.true132.set_error_page_crit_edge:        ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_error_page

land.lhs.true132.if.end135_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.end135:                                        ; preds = %land.lhs.true132.if.end135_crit_edge, %ext4_need_verity.exit.if.end135_crit_edge, %if.then128.if.end135_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %111 = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %111, align 4
  %and.i.i.i.i = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !35

if.then.i.i.i:                                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %page.addr.1, ptr noundef nonnull @.str.2) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 2, ptr noundef %page.addr.1) #7
  call void @unlock_page(ptr noundef %page.addr.1) #7
  br label %next_page

if.else137:                                       ; preds = %for.end121.if.else137_crit_edge, %if.else.if.else137_crit_edge
  %relative_block.3.ph.lcssa393.ph = phi i32 [ %relative_block.4444, %if.else.if.else137_crit_edge ], [ %100, %for.end121.if.else137_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fully_mapped.0433)
  %tobool138.not = icmp eq i32 %fully_mapped.0433, 0
  br i1 %tobool138.not, label %if.else137.if.end141_crit_edge, label %if.else137.if.then139_crit_edge

if.else137.if.then139_crit_edge:                  ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then139

if.else137.if.end141_crit_edge:                   ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then139:                                       ; preds = %if.else137.if.then139_crit_edge, %if.end58.if.then139_crit_edge, %if.end46.if.then139_crit_edge
  %relative_block.3.ph.lcssa393.ph550 = phi i32 [ %relative_block.3.ph.lcssa393.ph, %if.else137.if.then139_crit_edge ], [ %relative_block.2, %if.end58.if.then139_crit_edge ], [ %shr, %if.end46.if.then139_crit_edge ]
  %114 = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %and.i.i306 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i306)
  %tobool.not.i307 = icmp eq i32 %and.i.i306, 0
  br i1 %tobool.not.i307, label %do.body7.i311, label %if.then.i308, !prof !35

if.then.i308:                                     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  call void @dump_page(ptr noundef %page.addr.1, ptr noundef nonnull @.str.5) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #7, !srcloc !51
  unreachable

do.body7.i311:                                    ; preds = %if.then139
  %117 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %114, align 4
  %and.i31.i309 = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i309)
  %tobool.not.i.i310 = icmp eq i32 %and.i31.i309, 0
  br i1 %tobool.not.i.i310, label %if.end.i.i314, label %if.then.i.i313, !prof !35

if.then.i.i313:                                   ; preds = %do.body7.i311
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i312 = add i32 %118, -1
  br label %_compound_head.exit.i319

if.end.i.i314:                                    ; preds = %do.body7.i311
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit.i319

_compound_head.exit.i319:                         ; preds = %if.end.i.i314, %if.then.i.i313
  %retval.0.i.i315 = phi i32 [ %sub.i.i312, %if.then.i.i313 ], [ %119, %if.end.i.i314 ]
  %120 = inttoptr i32 %retval.0.i.i315 to ptr
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %cmp.i.not.i316 = icmp eq i32 %122, -1
  %123 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %114, align 4
  %and.i32.i317 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i317)
  %tobool.not.i33.i318 = icmp eq i32 %and.i32.i317, 0
  br i1 %cmp.i.not.i316, label %if.then17.i320, label %do.end24.i326, !prof !33

if.then17.i320:                                   ; preds = %_compound_head.exit.i319
  br i1 %tobool.not.i33.i318, label %if.end.i36.i323, label %if.then.i35.i322, !prof !35

if.then.i35.i322:                                 ; preds = %if.then17.i320
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i34.i321 = add i32 %124, -1
  br label %_compound_head.exit38.i325

if.end.i36.i323:                                  ; preds = %if.then17.i320
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit38.i325

_compound_head.exit38.i325:                       ; preds = %if.end.i36.i323, %if.then.i35.i322
  %retval.0.i37.i324 = phi i32 [ %sub.i34.i321, %if.then.i35.i322 ], [ %125, %if.end.i36.i323 ]
  %126 = inttoptr i32 %retval.0.i37.i324 to ptr
  call void @dump_page(ptr noundef %126, ptr noundef nonnull @.str.6) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 463, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end24.i326:                                    ; preds = %_compound_head.exit.i319
  br i1 %tobool.not.i33.i318, label %if.end.i43.i329, label %if.then.i42.i328, !prof !35

if.then.i42.i328:                                 ; preds = %do.end24.i326
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i41.i327 = add i32 %124, -1
  br label %SetPageMappedToDisk.exit

if.end.i43.i329:                                  ; preds = %do.end24.i326
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %page.addr.1 to i32
  br label %SetPageMappedToDisk.exit

SetPageMappedToDisk.exit:                         ; preds = %if.end.i43.i329, %if.then.i42.i328
  %retval.0.i44.i330 = phi i32 [ %sub.i41.i327, %if.then.i42.i328 ], [ %127, %if.end.i43.i329 ]
  %128 = inttoptr i32 %retval.0.i44.i330 to ptr
  call void @_set_bit(i32 noundef 17, ptr noundef %128) #7
  br label %if.end141

if.end141:                                        ; preds = %SetPageMappedToDisk.exit, %if.else137.if.end141_crit_edge, %if.then124.if.end141_crit_edge, %while.end.if.end141_crit_edge
  %cmp122.not539 = phi i1 [ true, %if.else137.if.end141_crit_edge ], [ true, %SetPageMappedToDisk.exit ], [ false, %if.then124.if.end141_crit_edge ], [ true, %while.end.if.end141_crit_edge ]
  %first_hole.0.lcssa537 = phi i32 [ %shr, %if.else137.if.end141_crit_edge ], [ %shr, %SetPageMappedToDisk.exit ], [ %spec.select303, %if.then124.if.end141_crit_edge ], [ %spec.select303, %while.end.if.end141_crit_edge ]
  %relative_block.3.ph.lcssa393532 = phi i32 [ %relative_block.3.ph.lcssa393.ph, %if.else137.if.end141_crit_edge ], [ %relative_block.3.ph.lcssa393.ph550, %SetPageMappedToDisk.exit ], [ %relative_block.3.ph451, %if.then124.if.end141_crit_edge ], [ %relative_block.3.ph451, %while.end.if.end141_crit_edge ]
  %tobool142.not = icmp eq ptr %bio.0459, null
  br i1 %tobool142.not, label %if.end141.if.end150_crit_edge, label %land.lhs.true143

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

land.lhs.true143:                                 ; preds = %if.end141
  %129 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %blocks, align 8
  %sub145 = add i64 %130, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %last_block_in_bio.0463, i64 %sub145)
  %cmp146.not = icmp eq i64 %last_block_in_bio.0463, %sub145
  br i1 %cmp146.not, label %lor.lhs.false, label %land.lhs.true143.submit_and_realloc_crit_edge

land.lhs.true143.submit_and_realloc_crit_edge:    ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #9
  br label %submit_and_realloc

lor.lhs.false:                                    ; preds = %land.lhs.true143
  %call148 = call zeroext i1 @fscrypt_mergeable_bio(ptr noundef nonnull %bio.0459, ptr noundef %inode, i64 noundef %shl9) #7
  br i1 %call148, label %lor.lhs.false.if.end150_crit_edge, label %lor.lhs.false.submit_and_realloc_crit_edge

lor.lhs.false.submit_and_realloc_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %submit_and_realloc

lor.lhs.false.if.end150_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150

submit_and_realloc:                               ; preds = %if.end165.submit_and_realloc_crit_edge, %lor.lhs.false.submit_and_realloc_crit_edge, %land.lhs.true143.submit_and_realloc_crit_edge
  %bio.1 = phi ptr [ %bio.3, %if.end165.submit_and_realloc_crit_edge ], [ %bio.0459, %lor.lhs.false.submit_and_realloc_crit_edge ], [ %bio.0459, %land.lhs.true143.submit_and_realloc_crit_edge ]
  call void @submit_bio(ptr noundef %bio.1) #7
  br label %if.end150

if.end150:                                        ; preds = %submit_and_realloc, %lor.lhs.false.if.end150_crit_edge, %if.end141.if.end150_crit_edge
  %bio.2 = phi ptr [ null, %submit_and_realloc ], [ %bio.0459, %lor.lhs.false.if.end150_crit_edge ], [ null, %if.end141.if.end150_crit_edge ]
  %cmp151 = icmp eq ptr %bio.2, null
  br i1 %cmp151, label %if.then153, label %if.end150.if.end165_crit_edge

if.end150.if.end165_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then153:                                       ; preds = %if.end150
  %131 = call i32 @llvm.umin.i32(i32 %nr_pages.0468, i32 256) #7
  %conv155 = trunc i32 %131 to i16
  %call.i = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv155, ptr noundef nonnull @fs_bio_set) #7
  call void @fscrypt_set_bio_crypt_ctx(ptr noundef %call.i, ptr noundef %inode, i64 noundef %shl9, i32 noundef 3264) #7
  %132 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %index, align 4
  %134 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %i_flags.i, align 4
  %and.i.i.i = and i32 %135, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i342 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i342, label %if.then153.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge, label %fscrypt_needs_contents_encryption.exit.i.i

if.then153.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge: ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i

fscrypt_needs_contents_encryption.exit.i.i:       ; preds = %if.then153
  %136 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %inode, align 8
  %138 = and i16 %137, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %138)
  %cmp.i.i.i = icmp eq i16 %138, -32768
  br i1 %cmp.i.i.i, label %fscrypt_inode_uses_fs_layer_crypto.exit.i, label %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge

fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i

fscrypt_inode_uses_fs_layer_crypto.exit.i:        ; preds = %fscrypt_needs_contents_encryption.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %inode) #7
  %spec.select.i = select i1 %call1.i.i, i32 0, i32 2
  br label %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i

fscrypt_inode_uses_fs_layer_crypto.exit.thread.i: ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit.i, %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge, %if.then153.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge
  %139 = phi i32 [ 0, %fscrypt_needs_contents_encryption.exit.i.i.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge ], [ 0, %if.then153.fscrypt_inode_uses_fs_layer_crypto.exit.thread.i_crit_edge ], [ %spec.select.i, %fscrypt_inode_uses_fs_layer_crypto.exit.i ]
  %140 = ptrtoint ptr %i_verity_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile ptr, ptr %i_verity_info.i.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %cmp.i.not.i.i = icmp eq ptr %141, null
  br i1 %cmp.i.not.i.i, label %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i.ext4_need_verity.exit.thread.i_crit_edge, label %ext4_need_verity.exit.i

fscrypt_inode_uses_fs_layer_crypto.exit.thread.i.ext4_need_verity.exit.thread.i_crit_edge: ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_need_verity.exit.thread.i

ext4_need_verity.exit.i:                          ; preds = %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i
  %conv.i.i = zext i32 %133 to i64
  %142 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %i_size18.i.i, align 8
  %sub.i.i343 = add i64 %143, 4095
  %div.i.i = sdiv i64 %sub.i.i343, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %div.i.i, i64 %conv.i.i)
  %cmp.i.i344 = icmp sgt i64 %div.i.i, %conv.i.i
  %or3.i = or i32 %139, 4
  br i1 %cmp.i.i344, label %ext4_need_verity.exit.i.if.then5.i_crit_edge, label %ext4_need_verity.exit.i.ext4_need_verity.exit.thread.i_crit_edge

ext4_need_verity.exit.i.ext4_need_verity.exit.thread.i_crit_edge: ; preds = %ext4_need_verity.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_need_verity.exit.thread.i

ext4_need_verity.exit.i.if.then5.i_crit_edge:     ; preds = %ext4_need_verity.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

ext4_need_verity.exit.thread.i:                   ; preds = %ext4_need_verity.exit.i.ext4_need_verity.exit.thread.i_crit_edge, %fscrypt_inode_uses_fs_layer_crypto.exit.thread.i.ext4_need_verity.exit.thread.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i345 = icmp eq i32 %139, 0
  br i1 %tobool.not.i345, label %ext4_need_verity.exit.thread.i.ext4_set_bio_post_read_ctx.exit_crit_edge, label %ext4_need_verity.exit.thread.i.if.then5.i_crit_edge

ext4_need_verity.exit.thread.i.if.then5.i_crit_edge: ; preds = %ext4_need_verity.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

ext4_need_verity.exit.thread.i.ext4_set_bio_post_read_ctx.exit_crit_edge: ; preds = %ext4_need_verity.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ext4_set_bio_post_read_ctx.exit

if.then5.i:                                       ; preds = %ext4_need_verity.exit.thread.i.if.then5.i_crit_edge, %ext4_need_verity.exit.i.if.then5.i_crit_edge
  %144 = phi i32 [ %139, %ext4_need_verity.exit.thread.i.if.then5.i_crit_edge ], [ %or3.i, %ext4_need_verity.exit.i.if.then5.i_crit_edge ]
  %145 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  %call6.i = call noalias ptr @mempool_alloc(ptr noundef %145, i32 noundef 3136) #7
  %146 = ptrtoint ptr %call6.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call.i, ptr %call6.i, align 4
  %enabled_steps.i = getelementptr inbounds %struct.bio_post_read_ctx, ptr %call6.i, i32 0, i32 3
  %147 = ptrtoint ptr %enabled_steps.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %144, ptr %enabled_steps.i, align 4
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %148 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call6.i, ptr %bi_private.i, align 4
  br label %ext4_set_bio_post_read_ctx.exit

ext4_set_bio_post_read_ctx.exit:                  ; preds = %if.then5.i, %ext4_need_verity.exit.thread.i.ext4_set_bio_post_read_ctx.exit_crit_edge
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %149 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %150, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %151 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %152, %6
  br i1 %cmp.not.i, label %ext4_set_bio_post_read_ctx.exit.bio_set_dev.exit_crit_edge, label %if.then.i346

ext4_set_bio_post_read_ctx.exit.bio_set_dev.exit_crit_edge: ; preds = %ext4_set_bio_post_read_ctx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %bio_set_dev.exit

if.then.i346:                                     ; preds = %ext4_set_bio_post_read_ctx.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i = and i16 %150, -2177
  %153 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i346, %ext4_set_bio_post_read_ctx.exit.bio_set_dev.exit_crit_edge
  %154 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %6, ptr %bi_bdev.i, align 4
  call void @bio_associate_blkg(ptr noundef %call.i) #7
  %155 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %blocks, align 8
  %shl161 = shl i64 %156, %sh_prom160
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %157 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %shl161, ptr %bi_iter, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %158 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @mpage_end_io, ptr %bi_end_io, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %159 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv164, ptr %bi_opf.i, align 8
  br label %if.end165

if.end165:                                        ; preds = %bio_set_dev.exit, %if.end150.if.end165_crit_edge
  %bio.3 = phi ptr [ %call.i, %bio_set_dev.exit ], [ %bio.2, %if.end150.if.end165_crit_edge ]
  %shl166 = shl i32 %first_hole.0.lcssa537, %conv
  %call167 = call i32 @bio_add_page(ptr noundef %bio.3, ptr noundef %page.addr.1, i32 noundef %shl166, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call167, i32 %shl166)
  %cmp168 = icmp slt i32 %call167, %shl166
  br i1 %cmp168, label %if.end165.submit_and_realloc_crit_edge, label %if.end171

if.end165.submit_and_realloc_crit_edge:           ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %submit_and_realloc

if.end171:                                        ; preds = %if.end165
  %160 = ptrtoint ptr %m_flags518 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %m_flags518, align 8
  %and173 = and i32 %161, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %lor.lhs.false179, label %land.lhs.true175

land.lhs.true175:                                 ; preds = %if.end171
  %162 = ptrtoint ptr %m_len517 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %m_len517, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %relative_block.3.ph.lcssa393532, i32 %163)
  %cmp177 = icmp ne i32 %relative_block.3.ph.lcssa393532, %163
  %164 = and i1 %cmp122.not539, %cmp177
  br i1 %164, label %land.lhs.true175.if.else183_crit_edge, label %land.lhs.true175.if.then182_crit_edge

land.lhs.true175.if.then182_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then182

land.lhs.true175.if.else183_crit_edge:            ; preds = %land.lhs.true175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

lor.lhs.false179:                                 ; preds = %if.end171
  br i1 %cmp122.not539, label %lor.lhs.false179.if.else183_crit_edge, label %lor.lhs.false179.if.then182_crit_edge

lor.lhs.false179.if.then182_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then182

lor.lhs.false179.if.else183_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else183

if.then182:                                       ; preds = %lor.lhs.false179.if.then182_crit_edge, %land.lhs.true175.if.then182_crit_edge
  call void @submit_bio(ptr noundef %bio.3) #7
  br label %next_page

if.else183:                                       ; preds = %lor.lhs.false179.if.else183_crit_edge, %land.lhs.true175.if.else183_crit_edge
  %165 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %arrayidx185, align 8
  br label %next_page

confused:                                         ; preds = %land.lhs.true92.confused_crit_edge, %if.end86.confused_crit_edge, %PagePrivate.exit.confused_crit_edge
  %relative_block.5 = phi i32 [ %relative_block.0467, %PagePrivate.exit.confused_crit_edge ], [ %relative_block.3.ph451, %if.end86.confused_crit_edge ], [ %relative_block.3.ph451, %land.lhs.true92.confused_crit_edge ]
  %tobool187.not = icmp eq ptr %bio.0459, null
  br i1 %tobool187.not, label %confused.if.end189_crit_edge, label %if.then188

confused.if.end189_crit_edge:                     ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then188:                                       ; preds = %confused
  call void @__sanitizer_cov_trace_pc() #9
  call void @submit_bio(ptr noundef nonnull %bio.0459) #7
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %confused.if.end189_crit_edge
  %167 = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %167, align 4
  %and.i.i348 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i348)
  %tobool.not.i.i349 = icmp eq i32 %and.i.i348, 0
  br i1 %tobool.not.i.i349, label %if.end.i.i352, label %if.then.i.i351, !prof !35

if.then.i.i351:                                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i350 = add i32 %169, -1
  br label %_compound_head.exit.i356

if.end.i.i352:                                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit.i356

_compound_head.exit.i356:                         ; preds = %if.end.i.i352, %if.then.i.i351
  %retval.0.i.i353 = phi i32 [ %sub.i.i350, %if.then.i.i351 ], [ %170, %if.end.i.i352 ]
  %171 = inttoptr i32 %retval.0.i.i353 to ptr
  %172 = getelementptr inbounds %struct.page, ptr %171, i32 0, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %and.i.i.i.i354 = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i354)
  %tobool.not.i.i.i355 = icmp eq i32 %and.i.i.i.i354, 0
  br i1 %tobool.not.i.i.i355, label %folio_flags.exit.i.i, label %if.then.i.i.i357, !prof !35

if.then.i.i.i357:                                 ; preds = %_compound_head.exit.i356
  call void @__sanitizer_cov_trace_pc() #9
  %175 = inttoptr i32 %retval.0.i.i353 to ptr
  call void @dump_page(ptr noundef %175, ptr noundef nonnull @.str.2) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i356
  %176 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %171, align 4
  %178 = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.i.not.i358 = icmp eq i32 %178, 0
  br i1 %tobool.i.not.i358, label %if.then192, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  call void @unlock_page(ptr noundef %page.addr.1) #7
  br label %next_page

if.then192:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call193 = call i32 @block_read_full_page(ptr noundef %page.addr.1, ptr noundef nonnull @ext4_get_block) #7
  br label %next_page

next_page:                                        ; preds = %if.then192, %PageUptodate.exit, %if.else183, %if.then182, %SetPageUptodate.exit, %SetPageError.exit
  %bio.5 = phi ptr [ null, %PageUptodate.exit ], [ null, %if.then192 ], [ %bio.0459, %SetPageError.exit ], [ %bio.0459, %SetPageUptodate.exit ], [ null, %if.then182 ], [ %bio.3, %if.else183 ]
  %last_block_in_bio.1 = phi i64 [ %last_block_in_bio.0463, %PageUptodate.exit ], [ %last_block_in_bio.0463, %if.then192 ], [ %last_block_in_bio.0463, %SetPageError.exit ], [ %last_block_in_bio.0463, %SetPageUptodate.exit ], [ %last_block_in_bio.0463, %if.then182 ], [ %166, %if.else183 ]
  %relative_block.6 = phi i32 [ %relative_block.5, %PageUptodate.exit ], [ %relative_block.5, %if.then192 ], [ %relative_block.3.ph451, %SetPageError.exit ], [ %relative_block.3.ph451, %SetPageUptodate.exit ], [ %relative_block.3.ph.lcssa393532, %if.then182 ], [ %relative_block.3.ph.lcssa393532, %if.else183 ]
  br i1 %tobool.not, label %next_page.if.end198_crit_edge, label %if.then197

next_page.if.end198_crit_edge:                    ; preds = %next_page
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then197:                                       ; preds = %next_page
  %179 = getelementptr inbounds %struct.page, ptr %page.addr.1, i32 0, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %179, align 4
  %and.i.i360 = and i32 %181, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i360)
  %tobool.not.i.i361 = icmp eq i32 %and.i.i360, 0
  br i1 %tobool.not.i.i361, label %if.end.i.i364, label %if.then.i.i363, !prof !35

if.then.i.i363:                                   ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i362 = add i32 %181, -1
  br label %_compound_head.exit.i366

if.end.i.i364:                                    ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  %182 = ptrtoint ptr %page.addr.1 to i32
  br label %_compound_head.exit.i366

_compound_head.exit.i366:                         ; preds = %if.end.i.i364, %if.then.i.i363
  %retval.0.i.i365 = phi i32 [ %sub.i.i362, %if.then.i.i363 ], [ %182, %if.end.i.i364 ]
  %183 = inttoptr i32 %retval.0.i.i365 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %184 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp.i.i.i.i = icmp eq i32 %185, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i367, label %do.end5.i.i.i.i, !prof !33

if.then.i.i.i.i367:                               ; preds = %_compound_head.exit.i366
  call void @__sanitizer_cov_trace_pc() #9
  %186 = inttoptr i32 %retval.0.i.i365 to ptr
  call void @dump_page(ptr noundef %186, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !54
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i366
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %187 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !56
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %187, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext4_mpage_readpages, %if.then.i.i.i.i.i368)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i368], !srcloc !58

if.then.i.i.i.i.i368:                             ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %183, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i368, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end198_crit_edge

folio_put_testzero.exit.i.i.if.end198_crit_edge:  ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__put_page(ptr noundef %183) #7
  br label %if.end198

if.end198:                                        ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end198_crit_edge, %next_page.if.end198_crit_edge
  %dec = add i32 %nr_pages.0468, -1
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %for.end200, label %if.end198.for.body_crit_edge

if.end198.for.body_crit_edge:                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end200:                                       ; preds = %if.end198
  %tobool201.not = icmp eq ptr %bio.5, null
  br i1 %tobool201.not, label %for.end200.if.end203_crit_edge, label %if.then202

for.end200.if.end203_crit_edge:                   ; preds = %for.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end203

if.then202:                                       ; preds = %for.end200
  call void @__sanitizer_cov_trace_pc() #9
  call void @submit_bio(ptr noundef nonnull %bio.5) #7
  br label %if.end203

if.end203:                                        ; preds = %if.then202, %for.end200.if.end203_crit_edge, %cond.end.if.end203_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %map) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %blocks) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_map_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fsverity_verify_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscrypt_mergeable_bio(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_set_bio_crypt_ctx(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpage_end_io(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %bio_post_read_required.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

bio_post_read_required.exit:                      ; preds = %entry
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.then, label %bio_post_read_required.exit.if.end_crit_edge

bio_post_read_required.exit.if.end_crit_edge:     ; preds = %bio_post_read_required.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %bio_post_read_required.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cur_step = getelementptr inbounds %struct.bio_post_read_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cur_step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_step, align 4
  tail call fastcc void @bio_post_read_processing(ptr noundef nonnull %1)
  br label %return

if.end:                                           ; preds = %bio_post_read_required.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @__read_end_io(ptr noundef %bio)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext4_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext4_init_post_read_processing() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  store ptr %call, ptr @bio_post_read_ctx_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mempool_create(i32 noundef 128, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #7
  store ptr %call.i, ptr @bio_post_read_ctx_pool, align 4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %fail_free_cache, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

fail_free_cache:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @bio_post_read_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #7
  br label %return

return:                                           ; preds = %fail_free_cache, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ -12, %entry.return_crit_edge ], [ -12, %fail_free_cache ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext4_exit_post_read_processing() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #7
  %1 = load ptr, ptr @bio_post_read_ctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bio_post_read_processing(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_step = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %cur_step to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_step, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %cur_step, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb9_crit_edge
  ]

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %enabled_steps = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 3
  %3 = ptrtoint ptr %enabled_steps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enabled_steps, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @bio_post_read_processing.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry4 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @decrypt_work, ptr %func, align 4
  tail call void @fscrypt_enqueue_decrypt_work(ptr noundef %work) #7
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %cur_step to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %cur_step, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %if.end, %entry.sw.bb9_crit_edge
  %enabled_steps10 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %enabled_steps10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enabled_steps10, align 4
  %and11 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end28, label %do.body14

do.body14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %work15 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work15, i32 noundef 0) #7
  %12 = ptrtoint ptr %work15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %work15, align 4
  %lockdep_map21 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.7, ptr noundef nonnull @bio_post_read_processing.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry23 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i48 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry23, ptr %prev.i48, align 4
  %func25 = getelementptr inbounds %struct.bio_post_read_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @verity_work, ptr %func25, align 4
  tail call void @fsverity_enqueue_verify_work(ptr noundef %work15) #7
  br label %sw.epilog

if.end28:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %cur_step to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_step, align 4
  %inc30 = add i32 %17, 1
  store i32 %inc30, ptr %cur_step, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end28, %entry.sw.default_crit_edge
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  tail call fastcc void @__read_end_io(ptr noundef %19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.body14, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__read_end_io(ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i79.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i79.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.082 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.11.081 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select64, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.15.080 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.080)
  %tobool.not.i.i51 = icmp eq i32 %iter_all.sroa.15.080, 0
  br i1 %tobool.not.i.i51, label %if.else.i.i, label %if.then.i.i52

if.then.i.i52:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.082, i32 1
  br label %if.end.i.i56

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.081
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.081, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i53 = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i53
  %and.i.i54 = and i32 %7, 4095
  br label %if.end.i.i56

if.end.i.i56:                                     ; preds = %if.else.i.i, %if.then.i.i52
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i52 ]
  %.sink.i.i = phi i32 [ %and.i.i54, %if.else.i.i ], [ 0, %if.then.i.i52 ]
  %sub.i.i55 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.081, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.15.080
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i55, i32 %sub9.i.i) #7
  %add.i.i = add i32 %10, %iter_all.sroa.15.080
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select64 = add nuw nsw i32 %iter_all.sroa.11.081, %inc.i.i
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.i.i56.if.then_crit_edge

if.end.i.i56.if.then_crit_edge:                   ; preds = %if.end.i.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %if.end.i.i56
  %13 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !35

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %13, align 4
  %and.i16.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !33

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !35

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %21, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %22, %if.end.i20.i ]
  %23 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !35

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %21, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %24, %if.end.i27.i ]
  %25 = inttoptr i32 %retval.0.i28.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not = icmp eq i32 %28, 0
  br i1 %tobool3.not, label %if.else, label %PageError.exit.if.then_crit_edge

PageError.exit.if.then_crit_edge:                 ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %PageError.exit.if.then_crit_edge, %if.end.i.i56.if.then_crit_edge
  %29 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i16 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i16)
  %tobool.not.i = icmp eq i32 %and.i.i16, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i17, !prof !35

if.then.i17:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #7, !srcloc !60
  unreachable

do.body7.i:                                       ; preds = %if.then
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %29, align 4
  %and.i31.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i18 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i18, label %if.end.i.i21, label %if.then.i.i20, !prof !35

if.then.i.i20:                                    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i19 = add i32 %33, -1
  br label %_compound_head.exit.i24

if.end.i.i21:                                     ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i24

_compound_head.exit.i24:                          ; preds = %if.end.i.i21, %if.then.i.i20
  %retval.0.i.i22 = phi i32 [ %sub.i.i19, %if.then.i.i20 ], [ %34, %if.end.i.i21 ]
  %35 = inttoptr i32 %retval.0.i.i22 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i23 = icmp eq i32 %37, -1
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %29, align 4
  %and.i32.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i23, label %if.then17.i, label %do.end24.i, !prof !33

if.then17.i:                                      ; preds = %_compound_head.exit.i24
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !35

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i34.i = add i32 %39, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %40, %if.end.i36.i ]
  %41 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #7, !srcloc !61
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i24
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !35

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i41.i = add i32 %39, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %42, %if.end.i43.i ]
  %43 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %43) #7
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %29, align 4
  %and.i.i25 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.not.i26 = icmp eq i32 %and.i.i25, 0
  br i1 %tobool.not.i26, label %do.body7.i30, label %if.then.i27, !prof !35

if.then.i27:                                      ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.5) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !62
  unreachable

do.body7.i30:                                     ; preds = %ClearPageUptodate.exit
  %46 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %29, align 4
  %and.i31.i28 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i31.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i33, label %if.then.i.i32, !prof !35

if.then.i.i32:                                    ; preds = %do.body7.i30
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i31 = add i32 %47, -1
  br label %_compound_head.exit.i38

if.end.i.i33:                                     ; preds = %do.body7.i30
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i38

_compound_head.exit.i38:                          ; preds = %if.end.i.i33, %if.then.i.i32
  %retval.0.i.i34 = phi i32 [ %sub.i.i31, %if.then.i.i32 ], [ %48, %if.end.i.i33 ]
  %49 = inttoptr i32 %retval.0.i.i34 to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp.i.not.i35 = icmp eq i32 %51, -1
  %52 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %29, align 4
  %and.i32.i36 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i36)
  %tobool.not.i33.i37 = icmp eq i32 %and.i32.i36, 0
  br i1 %cmp.i.not.i35, label %if.then17.i39, label %do.end24.i45, !prof !33

if.then17.i39:                                    ; preds = %_compound_head.exit.i38
  br i1 %tobool.not.i33.i37, label %if.end.i36.i42, label %if.then.i35.i41, !prof !35

if.then.i35.i41:                                  ; preds = %if.then17.i39
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i34.i40 = add i32 %53, -1
  br label %_compound_head.exit38.i44

if.end.i36.i42:                                   ; preds = %if.then17.i39
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit38.i44

_compound_head.exit38.i44:                        ; preds = %if.end.i36.i42, %if.then.i35.i41
  %retval.0.i37.i43 = phi i32 [ %sub.i34.i40, %if.then.i35.i41 ], [ %54, %if.end.i36.i42 ]
  %55 = inttoptr i32 %retval.0.i37.i43 to ptr
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.6) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #7, !srcloc !63
  unreachable

do.end24.i45:                                     ; preds = %_compound_head.exit.i38
  br i1 %tobool.not.i33.i37, label %if.end.i43.i48, label %if.then.i42.i47, !prof !35

if.then.i42.i47:                                  ; preds = %do.end24.i45
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i41.i46 = add i32 %53, -1
  br label %ClearPageError.exit

if.end.i43.i48:                                   ; preds = %do.end24.i45
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %ClearPageError.exit

ClearPageError.exit:                              ; preds = %if.end.i43.i48, %if.then.i42.i47
  %retval.0.i44.i49 = phi i32 [ %sub.i41.i46, %if.then.i42.i47 ], [ %56, %if.end.i43.i48 ]
  %57 = inttoptr i32 %retval.0.i44.i49 to ptr
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %57) #7
  br label %if.end

if.else:                                          ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %13, align 4
  %and.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !35

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

SetPageUptodate.exit:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 2, ptr noundef %iter_all.sroa.0.1) #7
  br label %if.end

if.end:                                           ; preds = %SetPageUptodate.exit, %ClearPageError.exit
  tail call void @unlock_page(ptr noundef %iter_all.sroa.0.1) #7
  %60 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %61 to i32
  %cmp.not.i = icmp ult i32 %spec.select64, %conv.i
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %62 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bi_private, align 4
  %tobool4.not = icmp eq ptr %63, null
  br i1 %tobool4.not, label %for.end.if.end7_crit_edge, label %if.then5

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %64 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %63, ptr noundef %64) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.end.if.end7_crit_edge
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @decrypt_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @fscrypt_decrypt_bio(ptr noundef %1) #7
  tail call fastcc void @bio_post_read_processing(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_enqueue_decrypt_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @verity_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = load ptr, ptr @bio_post_read_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %2) #7
  %bi_private = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bi_private, align 4
  tail call void @fsverity_verify_bio(ptr noundef %1) #7
  tail call fastcc void @__read_end_io(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_enqueue_verify_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_decrypt_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsverity_verify_bio(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext4/readpage.c", i32 412, i32 21}
!2 = !{ptr @bio_post_read_ctx_cache, !3, !"bio_post_read_ctx_cache", i1 false, i1 false}
!3 = !{!"../fs/ext4/readpage.c", i32 51, i32 27}
!4 = !{ptr @bio_post_read_ctx_pool, !5, !"bio_post_read_ctx_pool", i1 false, i1 false}
!5 = !{!"../fs/ext4/readpage.c", i32 52, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bio_post_read_processing.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../fs/ext4/readpage.c", i32 137, i32 4}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bio_post_read_processing.__key.8, !21, !"__key", i1 false, i1 false}
!21 = !{!"../fs/ext4/readpage.c", i32 145, i32 4}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/mm.h", i32 717, i32 2}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2154210215, i64 2154210704, i64 2154210252, i64 2154210308, i64 2154210342, i64 2154210366, i64 2154210407, i64 2154210428, i64 2154210456, i64 2154210490}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2150229601, i64 2150230092, i64 2150229638, i64 2150229694, i64 2150229728, i64 2150229752, i64 2150229793, i64 2150229814, i64 2150229842, i64 2150229876}
!37 = !{i64 2154212061, i64 2154212550, i64 2154212098, i64 2154212154, i64 2154212188, i64 2154212212, i64 2154212253, i64 2154212274, i64 2154212302, i64 2154212336}
!38 = !{i64 2150996387, i64 2150996878, i64 2150996424, i64 2150996480, i64 2150996514, i64 2150996538, i64 2150996579, i64 2150996600, i64 2150996628, i64 2150996662}
!39 = !{i64 2150692368, i64 2150692859, i64 2150692405, i64 2150692461, i64 2150692495, i64 2150692519, i64 2150692560, i64 2150692581, i64 2150692609, i64 2150692643}
!40 = !{i64 611579, i64 611640}
!41 = !{i64 614311}
!42 = !{i64 614596}
!43 = !{i64 2153065185}
!44 = !{i64 2153065027}
!45 = !{i64 2153065355}
!46 = !{i64 2149852464}
!47 = !{i64 2150295252, i64 2150295425, i64 2150295440, i64 2150295492, i64 2150295551, i64 2150295575, i64 2150295616, i64 2150295637, i64 2150295665, i64 2150295697}
!48 = !{i64 2150296127, i64 2150296300, i64 2150296315, i64 2150296367, i64 2150296426, i64 2150296450, i64 2150296491, i64 2150296512, i64 2150296540, i64 2150296572}
!49 = !{i64 2155289573}
!50 = !{i64 2150980564}
!51 = !{i64 2150785712, i64 2150785885, i64 2150785900, i64 2150785952, i64 2150786011, i64 2150786035, i64 2150786076, i64 2150786097, i64 2150786125, i64 2150786157}
!52 = !{i64 2150786587, i64 2150786760, i64 2150786775, i64 2150786827, i64 2150786886, i64 2150786910, i64 2150786951, i64 2150786972, i64 2150787000, i64 2150787032}
!53 = !{i64 2150979493}
!54 = !{i64 2153120599, i64 2153121082, i64 2153120636, i64 2153120692, i64 2153120726, i64 2153120750, i64 2153120791, i64 2153120812, i64 2153120840, i64 2153120874}
!55 = !{i64 2148307550}
!56 = !{i64 2148222283, i64 2148222315, i64 2148222344, i64 2148222378, i64 2148222409, i64 2148222432}
!57 = !{i64 2148307779}
!58 = !{i64 2148700913, i64 2148700918, i64 2148700931, i64 2148700975, i64 2148701009, i64 2148701030}
!59 = !{i64 2150286694, i64 2150287185, i64 2150286731, i64 2150286787, i64 2150286821, i64 2150286845, i64 2150286886, i64 2150286907, i64 2150286935, i64 2150286969}
!60 = !{i64 2150988477, i64 2150988650, i64 2150988665, i64 2150988717, i64 2150988776, i64 2150988800, i64 2150988841, i64 2150988862, i64 2150988890, i64 2150988922}
!61 = !{i64 2150989352, i64 2150989525, i64 2150989540, i64 2150989592, i64 2150989651, i64 2150989675, i64 2150989716, i64 2150989737, i64 2150989765, i64 2150989797}
!62 = !{i64 2150304054, i64 2150304227, i64 2150304242, i64 2150304294, i64 2150304353, i64 2150304377, i64 2150304418, i64 2150304439, i64 2150304467, i64 2150304499}
!63 = !{i64 2150304929, i64 2150305102, i64 2150305117, i64 2150305169, i64 2150305228, i64 2150305252, i64 2150305293, i64 2150305314, i64 2150305342, i64 2150305374}
